;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyz 
; TEXCOORD                 5   xyz         4     NONE   float   xyz 
; TEXCOORD                 8   xyzw        5     NONE   float       
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
; shader hash: 613da807cacbd470ff36aae347c6ecbc
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
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32          2d      T2     t37,space2     1
;                                   texture    byte         r/o      T3             t0     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t1     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture     f32          1d      T9     t30,space2     1
;                                   texture     f32          3d     T10     t44,space2     1
;                                   texture     f32          3d     T11     t45,space2     1
;                                   texture     f32     2darray     T12     t47,space2     1
;                                   textureunorm_f32     2darray     T13     t85,space2     1
;                                   texture     f32          2d     T14     t83,space2     1
;                                   texture     f32          2d     T15     t86,space2     1
;                                   texture    byte         r/o     T16             t2     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 17, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 18, 24 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = alloca [3 x float], align 4
  %40 = alloca [3 x float], align 4
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = fmul fast float %44, %35
  %46 = fmul fast float %44, %36
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 3
  %50 = fmul fast float %45, 2.000000e+00
  %51 = fmul fast float %50, %48
  %52 = fmul fast float %46, 2.000000e+00
  %53 = fmul fast float %52, %49
  %54 = fsub fast float 1.000000e+00, %51
  %55 = fsub fast float 1.000000e+00, %53
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %60 = fmul fast float %54, %57
  %61 = fmul fast float %54, %58
  %62 = fmul fast float %54, %59
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %66 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %67 = fmul fast float %55, %64
  %68 = fmul fast float %55, %65
  %69 = fmul fast float %55, %66
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %74 = fadd fast float %67, %71
  %75 = fadd fast float %74, %60
  %76 = fadd fast float %68, %72
  %77 = fadd fast float %76, %61
  %78 = fadd fast float %69, %73
  %79 = fadd fast float %78, %62
  %80 = fmul fast float %75, %38
  %81 = fmul fast float %77, %38
  %82 = fmul fast float %79, %38
  %83 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.i32 %83, 3
  %85 = and i32 %84, 3
  %86 = icmp ne i32 %85, 0
  %87 = and i32 %84, 4
  %88 = icmp ne i32 %87, 0
  %89 = and i1 %86, %88
  br i1 %89, label %90, label %99

; <label>:90                                      ; preds = %0
  %91 = fmul fast float %49, %46
  %92 = fmul fast float %48, %45
  %93 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %92, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = fsub fast float 1.000000e+00, %94
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = fcmp fast olt float %95, %97
  br label %102

; <label>:99                                      ; preds = %0
  %100 = icmp eq i32 %87, 0
  %101 = and i1 %86, %100
  br label %102

; <label>:102                                     ; preds = %99, %90
  %103 = phi i1 [ %98, %90 ], [ %101, %99 ]
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %107 = fmul fast float %105, %45
  %108 = fmul fast float %106, %46
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 0
  %111 = and i32 %110, 114688
  %112 = icmp ne i32 %111, 0
  %113 = select i1 %112, float %107, float 0.000000e+00
  %114 = select i1 %112, float %108, float 0.000000e+00
  %115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %113, float %114, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = fmul fast float %116, 2.550000e+02
  %118 = fptoui float %117 to i32
  %119 = select i1 %112, i32 %118, i32 0
  %120 = mul i32 %22, 208
  %121 = add i32 %120, 188
  %122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %121, i32 undef)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.i32 %122, 0
  %124 = and i32 %84, 114688
  %125 = and i32 %84, 8
  %126 = icmp ne i32 %125, 0
  %127 = or i1 %103, %126
  %128 = select i1 %127, i32 %124, i32 16384
  %129 = and i32 %128, %123
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

; <label>:131                                     ; preds = %102
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %132

; <label>:132                                     ; preds = %131, %102
  %133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.i32 %133, 0
  %135 = add i32 %134, 0
  %136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %135, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = add i32 %138, 0
  %140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %140, %dx.types.Handle %17, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = extractvalue %dx.types.ResRet.f32 %141, 1
  %144 = extractvalue %dx.types.ResRet.f32 %141, 2
  %145 = fmul fast float %142, 2.000000e+00
  %146 = fmul fast float %143, 2.000000e+00
  %147 = fadd fast float %145, -1.000000e+00
  %148 = fadd fast float %146, -1.000000e+00
  %149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %136, %dx.types.Handle %17, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = extractvalue %dx.types.ResRet.f32 %149, 3
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = extractvalue %dx.types.ResRet.i32 %152, 1
  %155 = bitcast i32 %153 to float
  %156 = bitcast i32 %154 to float
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 3
  %159 = fmul fast float %156, 5.000000e-01
  %160 = fadd fast float %158, %151
  %161 = fadd fast float %160, %159
  %162 = fdiv fast float %160, %156
  %163 = fdiv fast float %161, %156
  %164 = fsub fast float -0.000000e+00, %162
  %165 = fsub fast float -0.000000e+00, %163
  %166 = fcmp fast oge float %162, %164
  %167 = fcmp fast oge float %163, %165
  %168 = call float @dx.op.unary.f32(i32 6, float %162)  ; FAbs(value)
  %169 = call float @dx.op.unary.f32(i32 6, float %163)  ; FAbs(value)
  %170 = call float @dx.op.unary.f32(i32 22, float %168)  ; Frc(value)
  %171 = call float @dx.op.unary.f32(i32 22, float %169)  ; Frc(value)
  %172 = fsub fast float -0.000000e+00, %170
  %173 = fsub fast float -0.000000e+00, %171
  %174 = select i1 %166, float %170, float %172
  %175 = select i1 %167, float %171, float %173
  %176 = fmul fast float %174, %156
  %177 = fmul fast float %175, %156
  %178 = fmul fast float %155, %144
  %179 = fmul fast float %178, %147
  %180 = fmul fast float %178, %148
  %181 = fmul fast float %176, %179
  %182 = fmul fast float %176, %180
  %183 = fmul fast float %177, %179
  %184 = fmul fast float %177, %180
  %185 = fsub fast float %29, %181
  %186 = fsub fast float %30, %182
  %187 = fsub fast float %29, %183
  %188 = fsub fast float %30, %184
  %189 = fsub fast float 5.000000e-01, %174
  %190 = fmul fast float %189, %156
  %191 = call float @dx.op.unary.f32(i32 6, float %190)  ; FAbs(value)
  %192 = fdiv fast float %191, %159
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = fmul fast float %150, %34
  %195 = and i32 %123, 16
  %196 = icmp ne i32 %195, 0
  %197 = select i1 %196, float 1.000000e+00, float %194
  %198 = icmp eq i32 %195, 0
  br i1 %198, label %218, label %199, !dx.controlflow.hints !62

; <label>:199                                     ; preds = %132
  %200 = add i32 %120, 64
  %201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = fadd fast float %202, 1.000000e+00
  %204 = fmul fast float %203, %194
  %205 = fsub fast float %204, %202
  %206 = fsub fast float %203, %205
  %207 = call float @dx.op.unary.f32(i32 7, float %206)  ; Saturate(value)
  %208 = fsub fast float 1.000000e+00, %204
  %209 = call float @dx.op.unary.f32(i32 7, float %208)  ; Saturate(value)
  %210 = fsub fast float %207, %209
  %211 = fsub fast float %197, %209
  %212 = fdiv fast float %211, %210
  %213 = call float @dx.op.unary.f32(i32 7, float %212)  ; Saturate(value)
  %214 = fmul fast float %213, 2.000000e+00
  %215 = fsub fast float 3.000000e+00, %214
  %216 = fmul fast float %213, %213
  %217 = fmul fast float %216, %215
  br label %218

; <label>:218                                     ; preds = %199, %132
  %219 = phi float [ %217, %199 ], [ %197, %132 ]
  %220 = fcmp fast ogt float %219, 0.000000e+00
  br i1 %220, label %222, label %221

; <label>:221                                     ; preds = %218
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %222

; <label>:222                                     ; preds = %221, %218
  %223 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  %224 = fmul fast float %45, 5.000000e-01
  %225 = fmul fast float %46, 5.000000e-01
  %226 = fptosi float %224 to i32
  %227 = fptosi float %225 to i32
  %228 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %226, i32 %227, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = lshr i32 %229, 18
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F4C00EBA0000000
  %233 = call float @dx.op.unary.f32(i32 21, float %232)  ; Exp(value)
  %234 = fadd fast float %233, -1.000000e+00
  %235 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %236 = extractvalue %dx.types.Dimensions %235, 0
  %237 = sitofp i32 %236 to float
  %238 = extractvalue %dx.types.Dimensions %235, 1
  %239 = sitofp i32 %238 to float
  %240 = fcmp fast oge float %224, %237
  %241 = fcmp fast oge float %225, %239
  %242 = or i1 %240, %241
  %243 = select i1 %242, float 0x4197782600000000, float %234
  %244 = fsub fast float %243, %38
  %245 = fcmp fast ogt float %244, 0.000000e+00
  %246 = and i32 %119, -2
  %247 = icmp eq i32 %246, 2
  %248 = and i1 %247, %245
  %249 = xor i1 %245, true
  %250 = icmp eq i32 %119, 1
  %251 = and i1 %250, %249
  %252 = or i1 %248, %251
  %253 = and i32 %123, 262144
  %254 = icmp ne i32 %253, 0
  %255 = and i1 %254, %252
  %256 = xor i1 %252, true
  %257 = and i32 %123, 131072
  %258 = icmp ne i32 %257, 0
  %259 = and i1 %258, %256
  %260 = or i1 %255, %259
  br i1 %260, label %261, label %262

; <label>:261                                     ; preds = %222
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %262

; <label>:262                                     ; preds = %261, %222
  %263 = and i32 %123, 32
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %504, label %265, !dx.controlflow.hints !63

; <label>:265                                     ; preds = %262
  %266 = add i32 %120, 80
  %267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = extractvalue %dx.types.ResRet.f32 %267, 1
  %270 = extractvalue %dx.types.ResRet.f32 %267, 2
  %271 = extractvalue %dx.types.ResRet.f32 %267, 3
  %272 = add i32 %120, 96
  %273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = add i32 %120, 112
  %278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = extractvalue %dx.types.ResRet.f32 %278, 1
  %281 = extractvalue %dx.types.ResRet.f32 %278, 2
  %282 = extractvalue %dx.types.ResRet.f32 %278, 3
  %283 = add i32 %120, 128
  %284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = extractvalue %dx.types.ResRet.f32 %284, 1
  %287 = extractvalue %dx.types.ResRet.f32 %284, 2
  %288 = extractvalue %dx.types.ResRet.f32 %284, 3
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %121, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 4096
  %292 = icmp ne i32 %291, 0
  %293 = fcmp fast une float %276, 0.000000e+00
  %294 = and i32 %290, 64
  %295 = icmp ne i32 %294, 0
  %296 = and i32 %290, 128
  %297 = icmp eq i32 %296, 0
  %298 = and i32 %290, 2048
  %299 = icmp eq i32 %298, 0
  %300 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %301 = extractvalue %dx.types.Dimensions %300, 0
  %302 = sitofp i32 %301 to float
  %303 = extractvalue %dx.types.Dimensions %300, 1
  %304 = sitofp i32 %303 to float
  %305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %306 = extractvalue %dx.types.CBufRet.f32 %305, 2
  %307 = extractvalue %dx.types.CBufRet.f32 %305, 3
  %308 = fmul fast float %306, %45
  %309 = fmul fast float %307, %46
  %310 = fmul fast float %308, %302
  %311 = fmul fast float %309, %304
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 1
  %314 = fsub fast float -0.000000e+00, %313
  %315 = fptoui float %314 to i32
  %316 = fptoui float %310 to i32
  %317 = fptoui float %311 to i32
  %318 = and i32 %315, 31
  %319 = lshr i32 %316, %318
  %320 = lshr i32 %317, %318
  %321 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %315, i32 %319, i32 %320, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %322 = extractvalue %dx.types.ResRet.f32 %321, 0
  %323 = fcmp fast ogt float %322, -1.000000e+00
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 1
  %326 = select i1 %323, float %325, float 1.000000e+00
  %327 = fadd fast float %322, 1.000000e+00
  %328 = fmul fast float %326, %327
  %329 = call float @dx.op.unary.f32(i32 6, float %328)  ; FAbs(value)
  %330 = extractvalue %dx.types.CBufRet.f32 %324, 3
  %331 = fcmp fast oge float %329, %330
  %332 = select i1 %331, float 0x4197782600000000, float %329
  br i1 %299, label %403, label %333, !dx.controlflow.hints !64

; <label>:333                                     ; preds = %265
  %334 = fmul fast float %50, %306
  %335 = fmul fast float %52, %307
  %336 = fsub fast float 1.000000e+00, %334
  %337 = fsub fast float 1.000000e+00, %335
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %340 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %341 = extractvalue %dx.types.CBufRet.f32 %338, 2
  %342 = fmul fast float %336, %339
  %343 = fmul fast float %336, %340
  %344 = fmul fast float %336, %341
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %347 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %348 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %349 = fmul fast float %337, %346
  %350 = fmul fast float %337, %347
  %351 = fmul fast float %337, %348
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %354 = extractvalue %dx.types.CBufRet.f32 %352, 1
  %355 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %356 = fadd fast float %349, %353
  %357 = fadd fast float %356, %342
  %358 = fadd fast float %350, %354
  %359 = fadd fast float %358, %343
  %360 = fadd fast float %351, %355
  %361 = fadd fast float %360, %344
  %362 = fmul fast float %357, %332
  %363 = fmul fast float %359, %332
  %364 = fmul fast float %361, %332
  %365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.f32 %365, 0
  %367 = extractvalue %dx.types.CBufRet.f32 %365, 1
  %368 = extractvalue %dx.types.CBufRet.f32 %365, 2
  %369 = fadd fast float %362, %366
  %370 = fadd fast float %363, %367
  %371 = fadd fast float %364, %368
  %372 = call float @dx.op.dot3.f32(i32 55, float %369, float %370, float %371, float %369, float %370, float %371)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = fsub fast float 1.000000e+00, %372
  %374 = fcmp fast olt float %373, %275
  %375 = fcmp fast ogt float %373, %274
  %376 = or i1 %374, %375
  %377 = select i1 %376, float 0.000000e+00, float %373
  %378 = fsub fast float %274, %275
  %379 = fsub fast float %377, %275
  %380 = fdiv fast float %379, %378
  %381 = call float @dx.op.unary.f32(i32 7, float %380)  ; Saturate(value)
  %382 = fmul fast float %381, 2.000000e+00
  %383 = fsub fast float 3.000000e+00, %382
  %384 = fmul fast float %381, %381
  %385 = fmul fast float %384, %383
  %386 = fmul fast float %279, %31
  %387 = fmul fast float %280, %32
  %388 = fmul fast float %281, %33
  %389 = fsub fast float %386, %285
  %390 = fsub fast float %387, %286
  %391 = fsub fast float %388, %287
  %392 = fsub fast float %282, %288
  %393 = fmul fast float %385, %389
  %394 = fmul fast float %385, %390
  %395 = fmul fast float %385, %391
  %396 = fmul fast float %385, %392
  %397 = fadd fast float %393, %285
  %398 = fadd fast float %394, %286
  %399 = fadd fast float %395, %287
  %400 = fadd fast float %396, %288
  %401 = fmul fast float %268, %268
  %402 = fmul fast float %401, %377
  br label %494

; <label>:403                                     ; preds = %265
  %404 = and i32 %290, 256
  %405 = icmp eq i32 %404, 0
  %406 = fsub fast float %332, %38
  br i1 %405, label %455, label %407

; <label>:407                                     ; preds = %403
  %408 = fadd fast float %274, %38
  %409 = fcmp fast olt float %332, %38
  %410 = fcmp fast ogt float %332, %408
  %411 = or i1 %409, %410
  %412 = select i1 %411, float 0.000000e+00, float %406
  %413 = call float @dx.op.unary.f32(i32 83, float %332)  ; DerivCoarseX(value)
  %414 = call float @dx.op.unary.f32(i32 84, float %332)  ; DerivCoarseY(value)
  %415 = fmul fast float %413, %413
  %416 = fmul fast float %414, %414
  %417 = fadd fast float %416, %415
  %418 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %419 = extractvalue %dx.types.CBufRet.f32 %312, 2
  %420 = fmul fast float %419, %418
  %421 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %422 = fmul fast float %421, %275
  %423 = fdiv fast float %406, %422
  %424 = call float @dx.op.unary.f32(i32 7, float %423)  ; Saturate(value)
  %425 = fmul fast float %424, 2.000000e+00
  %426 = fsub fast float 3.000000e+00, %425
  %427 = fmul fast float %424, %424
  %428 = fmul fast float %427, %426
  %429 = fsub fast float %332, %408
  %430 = fadd fast float %429, %422
  %431 = fdiv fast float %430, %422
  %432 = call float @dx.op.unary.f32(i32 7, float %431)  ; Saturate(value)
  %433 = fmul fast float %432, 2.000000e+00
  %434 = fsub fast float 3.000000e+00, %433
  %435 = fmul fast float %432, %432
  %436 = fmul fast float %435, %434
  %437 = fsub fast float %428, %436
  %438 = fmul fast float %279, %31
  %439 = fmul fast float %280, %32
  %440 = fmul fast float %281, %33
  %441 = fsub fast float %438, %285
  %442 = fsub fast float %439, %286
  %443 = fsub fast float %440, %287
  %444 = fsub fast float %282, %288
  %445 = fmul fast float %437, %441
  %446 = fmul fast float %437, %442
  %447 = fmul fast float %437, %443
  %448 = fmul fast float %437, %444
  %449 = fadd fast float %445, %285
  %450 = fadd fast float %446, %286
  %451 = fadd fast float %447, %287
  %452 = fadd fast float %448, %288
  %453 = fmul fast float %412, %268
  %454 = call float @dx.op.unary.f32(i32 6, float %453)  ; FAbs(value)
  br label %494

; <label>:455                                     ; preds = %403
  br i1 %293, label %456, label %467

; <label>:456                                     ; preds = %455
  %457 = select i1 %295, float 5.000000e+01, float 1.000000e+00
  %458 = fmul fast float %457, %268
  %459 = fmul fast float %185, 2.000000e+00
  %460 = fmul fast float %186, 2.000000e+00
  %461 = fadd fast float %459, -1.000000e+00
  %462 = fadd fast float %460, -1.000000e+00
  %463 = call float @dx.op.dot2.f32(i32 54, float %461, float %462, float %461, float %462)  ; Dot2(ax,ay,bx,by)
  %464 = fmul fast float %463, %276
  %465 = fsub fast float %406, %464
  %466 = fmul fast float %458, %465
  br label %494

; <label>:467                                     ; preds = %455
  br i1 %297, label %487, label %468

; <label>:468                                     ; preds = %467
  %469 = select i1 %295, float 0x3F947AE140000000, float 1.000000e+00
  %470 = fdiv fast float 1.000000e+00, %469
  %471 = fmul fast float %469, %269
  %472 = fmul fast float %469, %270
  %473 = fmul fast float %470, %271
  %474 = call float @dx.op.unary.f32(i32 6, float %406)  ; FAbs(value)
  %475 = fcmp fast olt float %474, %471
  br i1 %475, label %476, label %480, !dx.controlflow.hints !65

; <label>:476                                     ; preds = %468
  %477 = fmul fast float %470, %268
  %478 = fmul fast float %477, %474
  %479 = call float @dx.op.unary.f32(i32 6, float %478)  ; FAbs(value)
  br label %494

; <label>:480                                     ; preds = %468
  %481 = fcmp fast ogt float %474, %472
  br i1 %481, label %482, label %494

; <label>:482                                     ; preds = %480
  %483 = fsub fast float %474, %472
  %484 = fmul fast float %473, %483
  %485 = call float @dx.op.unary.f32(i32 6, float %484)  ; FAbs(value)
  %486 = fsub fast float 1.000000e+00, %485
  br label %494

; <label>:487                                     ; preds = %467
  %488 = select i1 %295, float 5.000000e+01, float 1.000000e+00
  %489 = fmul fast float %488, %268
  %490 = call float @dx.op.unary.f32(i32 6, float %244)  ; FAbs(value)
  %491 = select i1 %292, float %490, float 0x47EFFFFFE0000000
  %492 = call float @dx.op.binary.f32(i32 36, float %406, float %491)  ; FMin(a,b)
  %493 = fmul fast float %489, %492
  br label %494

; <label>:494                                     ; preds = %487, %482, %480, %476, %456, %407, %333
  %495 = phi float [ %402, %333 ], [ %454, %407 ], [ %466, %456 ], [ %493, %487 ], [ %479, %476 ], [ %486, %482 ], [ %474, %480 ]
  %496 = phi float [ %397, %333 ], [ %449, %407 ], [ %31, %456 ], [ %31, %487 ], [ %31, %476 ], [ %31, %482 ], [ %31, %480 ]
  %497 = phi float [ %398, %333 ], [ %450, %407 ], [ %32, %456 ], [ %32, %487 ], [ %32, %476 ], [ %32, %482 ], [ %32, %480 ]
  %498 = phi float [ %399, %333 ], [ %451, %407 ], [ %33, %456 ], [ %33, %487 ], [ %33, %476 ], [ %33, %482 ], [ %33, %480 ]
  %499 = phi float [ %400, %333 ], [ %452, %407 ], [ 1.000000e+00, %456 ], [ 1.000000e+00, %487 ], [ 1.000000e+00, %476 ], [ 1.000000e+00, %482 ], [ 1.000000e+00, %480 ]
  %500 = call float @dx.op.unary.f32(i32 7, float %495)  ; Saturate(value)
  %501 = fmul fast float %500, %34
  %502 = fmul fast float %499, %223
  %503 = fmul fast float %502, %500
  br label %504

; <label>:504                                     ; preds = %494, %262
  %505 = phi float [ %496, %494 ], [ %31, %262 ]
  %506 = phi float [ %497, %494 ], [ %32, %262 ]
  %507 = phi float [ %498, %494 ], [ %33, %262 ]
  %508 = phi float [ %503, %494 ], [ %223, %262 ]
  %509 = phi float [ %501, %494 ], [ %34, %262 ]
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %512 = fptosi float %38 to i32
  %513 = sitofp i32 %512 to float
  %514 = fadd fast float %511, %513
  %515 = fmul fast float %514, 0x3FE3C6EF40000000
  %516 = frem fast float %45, 2.560000e+02
  %517 = frem fast float %46, 2.560000e+02
  %518 = fptoui float %516 to i32
  %519 = fptoui float %517 to i32
  %520 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %518, i32 %519, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = fadd fast float %521, %515
  %523 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %524 = and i32 %123, 1
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %583, label %526, !dx.controlflow.hints !66

; <label>:526                                     ; preds = %504
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 2
  %529 = extractvalue %dx.types.ResRet.f32 %527, 3
  %530 = add i32 %120, 16
  %531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = extractvalue %dx.types.ResRet.f32 %531, 1
  %534 = extractvalue %dx.types.ResRet.f32 %531, 2
  %535 = add i32 %120, 32
  %536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = extractvalue %dx.types.ResRet.f32 %536, 1
  %539 = extractvalue %dx.types.ResRet.f32 %536, 2
  %540 = and i32 %123, 2
  %541 = icmp eq i32 %540, 0
  %542 = call float @dx.op.dot3.f32(i32 55, float %26, float %27, float %28, float %26, float %27, float %28)  ; Dot3(ax,ay,az,bx,by,bz)
  %543 = call float @dx.op.unary.f32(i32 25, float %542)  ; Rsqrt(value)
  %544 = fmul fast float %543, %26
  %545 = fmul fast float %543, %27
  %546 = fmul fast float %543, %28
  %547 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %548 = call float @dx.op.unary.f32(i32 25, float %547)  ; Rsqrt(value)
  %549 = fmul fast float %548, %80
  %550 = fmul fast float %548, %81
  %551 = fmul fast float %548, %82
  %552 = call float @dx.op.dot3.f32(i32 55, float %549, float %550, float %551, float %544, float %545, float %546)  ; Dot3(ax,ay,az,bx,by,bz)
  %553 = fmul fast float %552, %552
  %554 = fmul fast float %553, %528
  %555 = fadd fast float %554, %529
  %556 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  br i1 %541, label %557, label %567, !dx.controlflow.hints !67

; <label>:557                                     ; preds = %526
  %558 = extractvalue %dx.types.ResRet.f32 %527, 1
  %559 = extractvalue %dx.types.ResRet.f32 %527, 0
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 3
  %562 = fmul fast float %561, %547
  %563 = fsub fast float %559, %562
  %564 = fmul fast float %563, %558
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %566 = fmul fast float %565, %556
  br label %567

; <label>:567                                     ; preds = %557, %526
  %568 = phi float [ %566, %557 ], [ %556, %526 ]
  %569 = fsub fast float %532, %537
  %570 = fsub fast float %533, %538
  %571 = fsub fast float %534, %539
  %572 = fmul fast float %568, %569
  %573 = fmul fast float %568, %570
  %574 = fmul fast float %568, %571
  %575 = fadd fast float %572, %537
  %576 = fadd fast float %573, %538
  %577 = fadd fast float %574, %539
  %578 = fmul fast float %575, %505
  %579 = fmul fast float %576, %506
  %580 = fmul fast float %577, %507
  %581 = fmul fast float %568, %508
  %582 = fmul fast float %568, %509
  br label %583

; <label>:583                                     ; preds = %567, %504
  %584 = phi float [ %578, %567 ], [ %505, %504 ]
  %585 = phi float [ %579, %567 ], [ %506, %504 ]
  %586 = phi float [ %580, %567 ], [ %507, %504 ]
  %587 = phi float [ %581, %567 ], [ %508, %504 ]
  %588 = phi float [ %582, %567 ], [ %509, %504 ]
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = add i32 %590, 0
  %592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %592, %dx.types.Handle %41, float %185, float %186, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = extractvalue %dx.types.ResRet.f32 %593, 2
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %598, 255
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %600, 0x3F70101020000000
  %602 = lshr i32 %598, 8
  %603 = and i32 %602, 255
  %604 = uitofp i32 %603 to float
  %605 = fmul fast float %604, 0x3F70101020000000
  %606 = lshr i32 %598, 16
  %607 = and i32 %606, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = fmul fast float %601, %601
  %611 = fmul fast float %610, %594
  %612 = fmul fast float %605, %605
  %613 = fmul fast float %612, %595
  %614 = fmul fast float %609, %609
  %615 = fmul fast float %614, %596
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = add i32 %617, 0
  %619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %619, %dx.types.Handle %41, float %187, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = and i32 %625, 255
  %627 = uitofp i32 %626 to float
  %628 = fmul fast float %627, 0x3F70101020000000
  %629 = lshr i32 %625, 8
  %630 = and i32 %629, 255
  %631 = uitofp i32 %630 to float
  %632 = fmul fast float %631, 0x3F70101020000000
  %633 = lshr i32 %625, 16
  %634 = and i32 %633, 255
  %635 = uitofp i32 %634 to float
  %636 = fmul fast float %635, 0x3F70101020000000
  %637 = fmul fast float %628, %628
  %638 = fmul fast float %637, %621
  %639 = fmul fast float %632, %632
  %640 = fmul fast float %639, %622
  %641 = fmul fast float %636, %636
  %642 = fmul fast float %641, %623
  %643 = fsub fast float %638, %611
  %644 = fsub fast float %640, %613
  %645 = fsub fast float %642, %615
  %646 = fmul fast float %643, %193
  %647 = fmul fast float %644, %193
  %648 = fmul fast float %645, %193
  %649 = fadd fast float %646, %611
  %650 = fadd fast float %647, %613
  %651 = fadd fast float %648, %615
  %652 = fmul fast float %649, %584
  %653 = fmul fast float %650, %585
  %654 = fmul fast float %651, %586
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = and i32 %656, 255
  %658 = uitofp i32 %657 to float
  %659 = fmul fast float %658, 0x3F70101020000000
  %660 = fmul fast float %659, %659
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = add i32 %662, 0
  %664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %665 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %664, %dx.types.Handle %42, float %185, float %186, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = fmul fast float %660, %666
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = fmul fast float %671, 0x3F70101020000000
  %673 = fmul fast float %672, %672
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = add i32 %675, 0
  %677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %678 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %677, %dx.types.Handle %42, float %187, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  %680 = fmul fast float %673, %679
  %681 = fsub fast float %680, %667
  %682 = fmul fast float %681, %193
  %683 = fadd fast float %682, %667
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 0
  %686 = fmul fast float %652, %685
  %687 = fmul fast float %653, %685
  %688 = fmul fast float %654, %685
  %689 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = and i32 %691, 255
  %693 = uitofp i32 %692 to float
  %694 = lshr i32 %691, 8
  %695 = and i32 %694, 255
  %696 = uitofp i32 %695 to float
  %697 = fmul fast float %696, %689
  %698 = fadd fast float %697, %693
  %699 = fmul fast float %698, 0x3F70101020000000
  %700 = call float @dx.op.unary.f32(i32 7, float %699)  ; Saturate(value)
  %701 = and i32 %123, 8192
  %702 = icmp eq i32 %701, 0
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 0
  br i1 %702, label %711, label %705, !dx.controlflow.hints !68

; <label>:705                                     ; preds = %583
  %706 = add i32 %120, 176
  %707 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = fcmp fast oge float %708, 0.000000e+00
  %710 = select i1 %709, float %708, float %704
  br label %717

; <label>:711                                     ; preds = %583
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = bitcast i32 %713 to float
  %715 = fcmp fast oge float %714, 0.000000e+00
  %716 = select i1 %715, float %714, float %704
  br label %717

; <label>:717                                     ; preds = %711, %705
  %718 = phi float [ %710, %705 ], [ %716, %711 ]
  %719 = fsub fast float 1.000000e+00, %683
  %720 = fmul fast float %719, %588
  %721 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %226, i32 %227, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = lshr i32 %722, 18
  %724 = uitofp i32 %723 to float
  %725 = fmul fast float %724, 0x3F4C00EBA0000000
  %726 = call float @dx.op.unary.f32(i32 21, float %725)  ; Exp(value)
  %727 = fadd fast float %726, -1.000000e+00
  %728 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %729 = extractvalue %dx.types.Dimensions %728, 0
  %730 = sitofp i32 %729 to float
  %731 = extractvalue %dx.types.Dimensions %728, 1
  %732 = sitofp i32 %731 to float
  %733 = fcmp fast oge float %224, %730
  %734 = fcmp fast oge float %225, %732
  %735 = or i1 %733, %734
  %736 = select i1 %735, float 0x4197782600000000, float %727
  %737 = fmul fast float %587, %23
  %738 = fmul fast float %587, %24
  %739 = fmul fast float %587, %25
  %740 = fadd fast float %683, -1.000000e+00
  %741 = fmul fast float %740, %587
  %742 = fadd fast float %741, 1.000000e+00
  %743 = call float @dx.op.dot3.f32(i32 55, float %742, float %742, float %742, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %744 = fsub fast float 1.000000e+00, %743
  %745 = fmul fast float %718, %700
  %746 = fsub fast float 1.000000e+00, %700
  %747 = fsub fast float %746, %720
  %748 = call float @dx.op.unary.f32(i32 7, float %747)  ; Saturate(value)
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 3
  %751 = fmul fast float %750, %748
  %752 = fadd fast float %751, %745
  %753 = and i32 %123, 2097152
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %759, label %755, !dx.controlflow.hints !69

; <label>:755                                     ; preds = %717
  %756 = add i32 %120, 192
  %757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  br label %762

; <label>:759                                     ; preds = %717
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 3
  br label %762

; <label>:762                                     ; preds = %759, %755
  %763 = phi float [ %758, %755 ], [ %761, %759 ]
  %764 = fmul fast float %737, %686
  %765 = fmul fast float %738, %687
  %766 = fmul fast float %739, %688
  %767 = icmp eq i32 %119, 3
  %768 = fcmp fast ogt float %38, %736
  %769 = and i1 %250, %768
  %770 = or i1 %767, %769
  %771 = icmp eq i32 %119, 2
  %772 = fcmp fast ole float %38, %736
  %773 = and i1 %771, %772
  %774 = or i1 %773, %770
  br i1 %769, label %775, label %912

; <label>:775                                     ; preds = %762
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 2
  %778 = extractvalue %dx.types.CBufRet.f32 %776, 3
  %779 = fmul fast float %777, %45
  %780 = fmul fast float %778, %46
  %781 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %782 = call float @dx.op.unary.f32(i32 7, float %780)  ; Saturate(value)
  %783 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %18, float %781, float %782, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = extractvalue %dx.types.ResRet.f32 %783, 1
  %786 = extractvalue %dx.types.ResRet.f32 %783, 2
  %787 = extractvalue %dx.types.ResRet.f32 %783, 3
  %788 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %18, float %781, float %782, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %789 = extractvalue %dx.types.ResRet.f32 %788, 0
  %790 = extractvalue %dx.types.ResRet.f32 %788, 1
  %791 = extractvalue %dx.types.ResRet.f32 %788, 2
  %792 = extractvalue %dx.types.ResRet.f32 %788, 3
  %793 = call float @dx.op.binary.f32(i32 35, float %785, float %786)  ; FMax(a,b)
  %794 = call float @dx.op.binary.f32(i32 35, float %784, float %793)  ; FMax(a,b)
  %795 = call float @dx.op.binary.f32(i32 35, float %794, float %787)  ; FMax(a,b)
  %796 = call float @dx.op.binary.f32(i32 36, float %790, float %791)  ; FMin(a,b)
  %797 = call float @dx.op.binary.f32(i32 36, float %789, float %796)  ; FMin(a,b)
  %798 = call float @dx.op.binary.f32(i32 36, float %797, float %792)  ; FMin(a,b)
  %799 = fmul fast float %795, 2.550000e+02
  %800 = fadd fast float %799, 0x3F70101020000000
  %801 = fptoui float %800 to i32
  %802 = fmul fast float %798, 2.550000e+02
  %803 = fadd fast float %802, 0x3F70101020000000
  %804 = fptoui float %803 to i32
  %805 = icmp ult i32 %801, %804
  br i1 %805, label %806, label %857

; <label>:806                                     ; preds = %775
  %807 = fcmp fast ogt float %37, 9.843750e-01
  %808 = fadd fast float %38, -4.000000e+00
  %809 = select i1 %807, float -4.000000e+00, float %808
  %810 = call float @dx.op.binary.f32(i32 35, float %809, float 0.000000e+00)  ; FMax(a,b)
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 0
  %813 = fadd fast float %812, %810
  %814 = extractvalue %dx.types.CBufRet.f32 %811, 2
  %815 = fmul fast float %813, %814
  %816 = call float @dx.op.unary.f32(i32 23, float %815)  ; Log(value)
  %817 = extractvalue %dx.types.CBufRet.f32 %811, 3
  %818 = fmul fast float %817, %816
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 2
  %821 = fmul fast float %818, %820
  %822 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %823 = uitofp i32 %801 to float
  %824 = uitofp i32 %804 to float
  %825 = fadd fast float %823, 5.000000e-01
  %826 = fadd fast float %824, 5.000000e-01
  %827 = fmul fast float %820, %825
  %828 = fmul fast float %820, %826
  %829 = fadd fast float %827, 0x3F0FFB4800000000
  %830 = fadd fast float %828, 0xBF0FFB4800000000
  %831 = call float @dx.op.binary.f32(i32 35, float %822, float %829)  ; FMax(a,b)
  %832 = call float @dx.op.binary.f32(i32 36, float %831, float %830)  ; FMin(a,b)
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 1
  %835 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %836 = extractvalue %dx.types.CBufRet.f32 %833, 0
  %837 = fmul fast float %834, %832
  %838 = fadd fast float %836, %837
  %839 = fadd fast float %836, %835
  %840 = fsub fast float %834, %835
  %841 = fadd fast float %840, %836
  %842 = call float @dx.op.binary.f32(i32 35, float %838, float %839)  ; FMax(a,b)
  %843 = call float @dx.op.binary.f32(i32 36, float %842, float %841)  ; FMin(a,b)
  %844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %781, float %782, float %843, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = extractvalue %dx.types.ResRet.f32 %844, 1
  %847 = extractvalue %dx.types.ResRet.f32 %844, 2
  %848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %781, float %782, float %843, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = extractvalue %dx.types.ResRet.f32 %848, 1
  %851 = extractvalue %dx.types.ResRet.f32 %848, 2
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 1
  %854 = fmul fast float %853, %849
  %855 = fmul fast float %853, %850
  %856 = fmul fast float %853, %851
  br label %857

; <label>:857                                     ; preds = %806, %775
  %858 = phi float [ %845, %806 ], [ 1.000000e+00, %775 ]
  %859 = phi float [ %846, %806 ], [ 1.000000e+00, %775 ]
  %860 = phi float [ %847, %806 ], [ 1.000000e+00, %775 ]
  %861 = phi float [ %854, %806 ], [ 0.000000e+00, %775 ]
  %862 = phi float [ %855, %806 ], [ 0.000000e+00, %775 ]
  %863 = phi float [ %856, %806 ], [ 0.000000e+00, %775 ]
  %864 = fmul fast float %861, %744
  %865 = fmul fast float %862, %744
  %866 = fmul fast float %863, %744
  %867 = call float @dx.op.dot3.f32(i32 55, float %858, float %859, float %860, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %868 = call float @dx.op.dot3.f32(i32 55, float %864, float %865, float %866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %869 = select i1 %103, float %867, float %858
  %870 = select i1 %103, float %867, float %859
  %871 = select i1 %103, float 1.000000e+00, float %860
  %872 = select i1 %103, float %868, float %864
  %873 = select i1 %103, float 0.000000e+00, float %865
  %874 = select i1 %103, float 0.000000e+00, float %866
  %875 = fmul fast float %869, %764
  %876 = fmul fast float %870, %765
  %877 = fmul fast float %871, %766
  %878 = fadd fast float %875, %872
  %879 = fadd fast float %876, %873
  %880 = fadd fast float %874, %877
  %881 = fmul fast float %50, %777
  %882 = fmul fast float %52, %778
  %883 = fsub fast float 1.000000e+00, %881
  %884 = fsub fast float 1.000000e+00, %882
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 0
  %887 = extractvalue %dx.types.CBufRet.f32 %885, 1
  %888 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %889 = fmul fast float %883, %886
  %890 = fmul fast float %883, %887
  %891 = fmul fast float %883, %888
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 0
  %894 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %895 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %896 = fmul fast float %884, %893
  %897 = fmul fast float %884, %894
  %898 = fmul fast float %884, %895
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 0
  %901 = extractvalue %dx.types.CBufRet.f32 %899, 1
  %902 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %903 = fadd fast float %896, %900
  %904 = fadd fast float %903, %889
  %905 = fadd fast float %897, %901
  %906 = fadd fast float %905, %890
  %907 = fadd fast float %898, %902
  %908 = fadd fast float %907, %891
  %909 = fmul fast float %904, %736
  %910 = fmul fast float %906, %736
  %911 = fmul fast float %908, %736
  br label %912

; <label>:912                                     ; preds = %857, %762
  %913 = phi float [ %909, %857 ], [ %80, %762 ]
  %914 = phi float [ %910, %857 ], [ %81, %762 ]
  %915 = phi float [ %911, %857 ], [ %82, %762 ]
  %916 = phi float [ %736, %857 ], [ %38, %762 ]
  %917 = phi float [ %878, %857 ], [ %764, %762 ]
  %918 = phi float [ %879, %857 ], [ %765, %762 ]
  %919 = phi float [ %880, %857 ], [ %766, %762 ]
  %920 = phi float [ %858, %857 ], [ 1.000000e+00, %762 ]
  br i1 %774, label %2070, label %921

; <label>:921                                     ; preds = %912
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 0
  %924 = extractvalue %dx.types.CBufRet.f32 %922, 1
  %925 = extractvalue %dx.types.CBufRet.f32 %922, 2
  %926 = extractvalue %dx.types.CBufRet.f32 %922, 3
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %930 = extractvalue %dx.types.CBufRet.f32 %927, 2
  %931 = extractvalue %dx.types.CBufRet.f32 %927, 3
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 0
  %934 = extractvalue %dx.types.CBufRet.f32 %932, 1
  %935 = extractvalue %dx.types.CBufRet.f32 %932, 2
  %936 = extractvalue %dx.types.CBufRet.f32 %932, 3
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 0
  %939 = extractvalue %dx.types.CBufRet.f32 %937, 1
  %940 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %941 = extractvalue %dx.types.CBufRet.f32 %937, 3
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 3
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 3
  %946 = extractvalue %dx.types.CBufRet.f32 %944, 0
  %947 = extractvalue %dx.types.CBufRet.f32 %944, 1
  %948 = extractvalue %dx.types.CBufRet.f32 %944, 2
  %949 = fcmp fast olt float %948, -5.000000e-01
  %950 = call float @dx.op.dot3.f32(i32 55, float %913, float %914, float %915, float %913, float %914, float %915)  ; Dot3(ax,ay,az,bx,by,bz)
  %951 = call float @dx.op.unary.f32(i32 25, float %950)  ; Rsqrt(value)
  %952 = fmul fast float %951, %950
  %953 = fmul fast float %951, %913
  %954 = fmul fast float %951, %914
  %955 = fmul fast float %951, %915
  %956 = fadd fast float %952, %926
  %957 = call float @dx.op.dot3.f32(i32 55, float %953, float %954, float %955, float %923, float %924, float %925)  ; Dot3(ax,ay,az,bx,by,bz)
  %958 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.i32 %958, 1
  %960 = and i32 %959, 1
  %961 = icmp ne i32 %960, 0
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 2
  %964 = fcmp fast ogt float %963, 0.000000e+00
  %965 = and i1 %961, %964
  br i1 %965, label %966, label %1372, !dx.controlflow.hints !70

; <label>:966                                     ; preds = %921
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 3
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 2
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 2
  %973 = fsub fast float %970, %972
  %974 = and i32 %959, 2
  %975 = extractvalue %dx.types.CBufRet.i32 %958, 0
  %976 = call i32 @dx.op.binary.i32(i32 40, i32 %975, i32 3)  ; UMin(a,b)
  %977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %978 = extractvalue %dx.types.CBufRet.f32 %977, 0
  %979 = extractvalue %dx.types.CBufRet.f32 %977, 1
  %980 = extractvalue %dx.types.CBufRet.f32 %971, 0
  %981 = extractvalue %dx.types.CBufRet.f32 %971, 1
  %982 = fsub fast float %978, %980
  %983 = fsub fast float %979, %981
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %986 = fcmp fast ogt float %985, 0.000000e+00
  %987 = fsub fast float -0.000000e+00, %982
  %988 = fsub fast float -0.000000e+00, %983
  %989 = call float @dx.op.dot2.f32(i32 54, float %953, float %954, float %953, float %954)  ; Dot2(ax,ay,bx,by)
  %990 = call float @dx.op.dot2.f32(i32 54, float %953, float %954, float %987, float %988)  ; Dot2(ax,ay,bx,by)
  %991 = fmul fast float %990, 2.000000e+00
  %992 = call float @dx.op.dot2.f32(i32 54, float %987, float %988, float %987, float %988)  ; Dot2(ax,ay,bx,by)
  %993 = fmul fast float %985, %985
  %994 = fsub fast float %992, %993
  %995 = fmul fast float %991, %991
  %996 = fmul fast float %989, 4.000000e+00
  %997 = fmul fast float %996, %994
  %998 = fsub fast float %995, %997
  %999 = fcmp fast ogt float %998, 0.000000e+00
  br i1 %999, label %1000, label %1015

; <label>:1000                                    ; preds = %966
  %1001 = fcmp fast ogt float %991, 0.000000e+00
  %1002 = call float @dx.op.unary.f32(i32 24, float %998)  ; Sqrt(value)
  %1003 = fsub fast float -0.000000e+00, %1002
  %1004 = select i1 %1001, float %1002, float %1003
  %1005 = fadd fast float %1004, %991
  %1006 = fmul float %1005, -5.000000e-01
  %1007 = fdiv fast float %1006, %989
  %1008 = call float @dx.op.binary.f32(i32 35, float %1007, float 0.000000e+00)  ; FMax(a,b)
  %1009 = call float @dx.op.binary.f32(i32 36, float %952, float %1008)  ; FMin(a,b)
  %1010 = fdiv fast float %994, %1006
  %1011 = call float @dx.op.binary.f32(i32 35, float %1010, float 0.000000e+00)  ; FMax(a,b)
  %1012 = call float @dx.op.binary.f32(i32 36, float %952, float %1011)  ; FMin(a,b)
  %1013 = call float @dx.op.binary.f32(i32 36, float %1009, float %1012)  ; FMin(a,b)
  %1014 = call float @dx.op.binary.f32(i32 35, float %1009, float %1012)  ; FMax(a,b)
  br label %1015

; <label>:1015                                    ; preds = %1000, %966
  %1016 = phi float [ %1014, %1000 ], [ -1.000000e+00, %966 ]
  %1017 = phi float [ %1013, %1000 ], [ -1.000000e+00, %966 ]
  %1018 = phi i1 [ true, %1000 ], [ false, %966 ]
  %1019 = and i1 %986, %1018
  br i1 %1019, label %1020, label %1022

; <label>:1020                                    ; preds = %1015
  %1021 = fcmp fast oeq float %1017, %1016
  br i1 %1021, label %1325, label %1023

; <label>:1022                                    ; preds = %1015
  br i1 %986, label %1325, label %1023

; <label>:1023                                    ; preds = %1022, %1020
  %1024 = phi float [ %952, %1022 ], [ %1016, %1020 ]
  %1025 = phi float [ 0.000000e+00, %1022 ], [ %1017, %1020 ]
  %1026 = icmp ne i32 %974, 0
  %1027 = fmul fast float %1024, %955
  %1028 = fadd fast float %1027, %968
  %1029 = fmul fast float %1028, %1024
  %1030 = select i1 %1026, float 0.000000e+00, float %1029
  %1031 = fcmp fast oeq float %955, 0.000000e+00
  %1032 = fdiv fast float %973, %955
  %1033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1032)  ; FMax(a,b)
  %1034 = select i1 %1031, float %1024, float %1033
  %1035 = call float @dx.op.binary.f32(i32 36, float %1024, float %1034)  ; FMin(a,b)
  %1036 = fcmp fast ogt float %955, 0.000000e+00
  %1037 = fcmp fast olt float %973, 0.000000e+00
  br i1 %1036, label %1038, label %1095

; <label>:1038                                    ; preds = %1023
  %1039 = icmp eq i32 %974, 0
  br i1 %1037, label %1040, label %1084

; <label>:1040                                    ; preds = %1038
  %1041 = select i1 %1039, float %1024, float 0.000000e+00
  %1042 = fsub fast float -0.000000e+00, %1041
  %1043 = call float @dx.op.unary.f32(i32 6, float %1042)  ; FAbs(value)
  %1044 = fmul fast float %1041, %955
  %1045 = fadd fast float %1044, %968
  %1046 = fmul fast float %1043, %1045
  %1047 = fsub fast float %1030, %1046
  %1048 = fsub fast float %1024, %1043
  %1049 = select i1 %1039, float %1048, float 0.000000e+00
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.CBufRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.CBufRet.f32 %1050, 2
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.CBufRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.CBufRet.f32 %1054, 2
  %1058 = extractvalue %dx.types.CBufRet.f32 %1054, 3
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 3
  %1061 = call float @dx.op.binary.f32(i32 36, float %1047, float %1060)  ; FMin(a,b)
  %1062 = fmul fast float %1058, %1049
  %1063 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  %1064 = fsub fast float %1055, %1051
  %1065 = fsub fast float %1056, %1052
  %1066 = fsub fast float %1057, %1053
  %1067 = fmul fast float %1063, %1064
  %1068 = fmul fast float %1063, %1065
  %1069 = fmul fast float %1063, %1066
  %1070 = fadd fast float %1067, %1051
  %1071 = fadd fast float %1068, %1052
  %1072 = fadd fast float %1069, %1053
  %1073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1074 = extractvalue %dx.types.CBufRet.f32 %1073, 0
  %1075 = extractvalue %dx.types.CBufRet.f32 %1073, 1
  %1076 = fadd fast float %1075, %1074
  %1077 = call float @dx.op.unary.f32(i32 7, float %1076)  ; Saturate(value)
  %1078 = extractvalue %dx.types.CBufRet.f32 %1073, 2
  %1079 = extractvalue %dx.types.CBufRet.f32 %1073, 3
  %1080 = fadd fast float %1079, %1078
  %1081 = call float @dx.op.unary.f32(i32 7, float %1080)  ; Saturate(value)
  %1082 = fmul fast float %1077, %1061
  %1083 = fmul fast float %1082, %1081
  br label %1325

; <label>:1084                                    ; preds = %1038
  br i1 %1039, label %1085, label %1106

; <label>:1085                                    ; preds = %1084
  %1086 = call float @dx.op.binary.f32(i32 36, float %1035, float %1025)  ; FMin(a,b)
  %1087 = fsub fast float %1035, %1086
  %1088 = fsub fast float %1087, %1024
  %1089 = call float @dx.op.unary.f32(i32 6, float %1088)  ; FAbs(value)
  %1090 = fadd fast float %1087, %1024
  %1091 = fmul fast float %1090, %955
  %1092 = fadd fast float %1091, %968
  %1093 = fmul fast float %1092, %1089
  %1094 = fsub fast float %1030, %1093
  br label %1106

; <label>:1095                                    ; preds = %1023
  br i1 %1037, label %1096, label %1106

; <label>:1096                                    ; preds = %1095
  %1097 = call float @dx.op.binary.f32(i32 35, float %1025, float %1035)  ; FMax(a,b)
  %1098 = icmp eq i32 %974, 0
  %1099 = select i1 %1098, float %1035, float 0.000000e+00
  %1100 = fsub fast float -0.000000e+00, %1099
  %1101 = call float @dx.op.unary.f32(i32 6, float %1100)  ; FAbs(value)
  %1102 = fmul fast float %1099, %955
  %1103 = fadd fast float %1102, %968
  %1104 = fmul fast float %1101, %1103
  %1105 = fsub fast float %1030, %1104
  br label %1106

; <label>:1106                                    ; preds = %1096, %1095, %1085, %1084
  %1107 = phi float [ %1025, %1084 ], [ %1025, %1085 ], [ %1097, %1096 ], [ %1025, %1095 ]
  %1108 = phi float [ 0.000000e+00, %1084 ], [ %1089, %1085 ], [ %1101, %1096 ], [ 0.000000e+00, %1095 ]
  %1109 = phi float [ %1030, %1084 ], [ %1094, %1085 ], [ %1105, %1096 ], [ %1030, %1095 ]
  %1110 = phi float [ %1035, %1084 ], [ %1035, %1085 ], [ %1024, %1096 ], [ %1024, %1095 ]
  %1111 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 0
  store float -1.000000e+00, float* %1111, align 4, !tbaa !71, !noalias !75
  %1112 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 1
  store float -1.000000e+00, float* %1112, align 4, !tbaa !71, !noalias !75
  %1113 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 2
  store float -1.000000e+00, float* %1113, align 4, !tbaa !71, !noalias !75
  %1114 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 0
  store float -1.000000e+00, float* %1114, align 4, !tbaa !71, !noalias !75
  %1115 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 1
  store float -1.000000e+00, float* %1115, align 4, !tbaa !71, !noalias !75
  %1116 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 2
  store float -1.000000e+00, float* %1116, align 4, !tbaa !71, !noalias !75
  %1117 = icmp sgt i32 %976, 0
  br i1 %1117, label %1118, label %1179

; <label>:1118                                    ; preds = %1106
  br label %1119

; <label>:1119                                    ; preds = %1168, %1118
  %1120 = phi i32 [ %1169, %1168 ], [ 0, %1118 ]
  %1121 = phi i32 [ %1170, %1168 ], [ 0, %1118 ]
  %1122 = add nuw i32 %1121, 171
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %1122)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.CBufRet.f32 %1126, 1
  %1129 = fsub fast float %1124, %1127
  %1130 = fsub fast float %1125, %1128
  %1131 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1132 = fsub fast float -0.000000e+00, %1129
  %1133 = fsub fast float -0.000000e+00, %1130
  %1134 = call float @dx.op.dot2.f32(i32 54, float %953, float %954, float %1132, float %1133)  ; Dot2(ax,ay,bx,by)
  %1135 = fmul fast float %1134, 2.000000e+00
  %1136 = call float @dx.op.dot2.f32(i32 54, float %1132, float %1133, float %1132, float %1133)  ; Dot2(ax,ay,bx,by)
  %1137 = fmul fast float %1131, %1131
  %1138 = fsub fast float %1136, %1137
  %1139 = fmul fast float %1135, %1135
  %1140 = fmul fast float %996, %1138
  %1141 = fsub fast float %1139, %1140
  %1142 = fcmp fast ogt float %1141, 0.000000e+00
  br i1 %1142, label %1143, label %1158

; <label>:1143                                    ; preds = %1119
  %1144 = fcmp fast ogt float %1135, 0.000000e+00
  %1145 = call float @dx.op.unary.f32(i32 24, float %1141)  ; Sqrt(value)
  %1146 = fsub fast float -0.000000e+00, %1145
  %1147 = select i1 %1144, float %1145, float %1146
  %1148 = fadd fast float %1147, %1135
  %1149 = fmul float %1148, -5.000000e-01
  %1150 = fdiv fast float %1149, %989
  %1151 = call float @dx.op.binary.f32(i32 35, float %1150, float 0.000000e+00)  ; FMax(a,b)
  %1152 = call float @dx.op.binary.f32(i32 36, float %1024, float %1151)  ; FMin(a,b)
  %1153 = fdiv fast float %1138, %1149
  %1154 = call float @dx.op.binary.f32(i32 35, float %1153, float 0.000000e+00)  ; FMax(a,b)
  %1155 = call float @dx.op.binary.f32(i32 36, float %1024, float %1154)  ; FMin(a,b)
  %1156 = call float @dx.op.binary.f32(i32 36, float %1152, float %1155)  ; FMin(a,b)
  %1157 = call float @dx.op.binary.f32(i32 35, float %1152, float %1155)  ; FMax(a,b)
  br label %1158

; <label>:1158                                    ; preds = %1143, %1119
  %1159 = phi float [ %1157, %1143 ], [ -1.000000e+00, %1119 ]
  %1160 = phi float [ %1156, %1143 ], [ -1.000000e+00, %1119 ]
  %1161 = phi i1 [ true, %1143 ], [ false, %1119 ]
  br i1 %1161, label %1162, label %1168

; <label>:1162                                    ; preds = %1158
  %1163 = call float @dx.op.binary.f32(i32 35, float %1107, float %1160)  ; FMax(a,b)
  %1164 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1121
  store float %1163, float* %1164, align 4, !tbaa !71, !noalias !75
  %1165 = call float @dx.op.binary.f32(i32 35, float %1107, float %1159)  ; FMax(a,b)
  %1166 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %1121
  store float %1165, float* %1166, align 4, !tbaa !71, !noalias !75
  %1167 = add nsw i32 %1120, 1
  br label %1168

; <label>:1168                                    ; preds = %1162, %1158
  %1169 = phi i32 [ %1167, %1162 ], [ %1120, %1158 ]
  %1170 = add nuw nsw i32 %1121, 1
  %1171 = icmp eq i32 %1170, %976
  br i1 %1171, label %1172, label %1119

; <label>:1172                                    ; preds = %1168
  %1173 = load float, float* %1113, align 4, !tbaa !71, !alias.scope !91, !noalias !94
  %1174 = load float, float* %1112, align 4, !tbaa !71, !alias.scope !97, !noalias !98
  %1175 = load float, float* %1111, align 4, !tbaa !71, !alias.scope !99, !noalias !100
  %1176 = load float, float* %1116, align 4, !tbaa !71, !alias.scope !101, !noalias !104
  %1177 = load float, float* %1115, align 4, !tbaa !71, !alias.scope !107, !noalias !108
  %1178 = load float, float* %1114, align 4, !tbaa !71, !alias.scope !109, !noalias !110
  br label %1179

; <label>:1179                                    ; preds = %1172, %1106
  %1180 = phi float [ -1.000000e+00, %1106 ], [ %1178, %1172 ]
  %1181 = phi float [ -1.000000e+00, %1106 ], [ %1177, %1172 ]
  %1182 = phi float [ -1.000000e+00, %1106 ], [ %1176, %1172 ]
  %1183 = phi float [ -1.000000e+00, %1106 ], [ %1175, %1172 ]
  %1184 = phi float [ -1.000000e+00, %1106 ], [ %1174, %1172 ]
  %1185 = phi float [ -1.000000e+00, %1106 ], [ %1173, %1172 ]
  %1186 = phi i32 [ 0, %1106 ], [ %1169, %1172 ]
  %1187 = call float @dx.op.binary.f32(i32 36, float %1184, float %1185)  ; FMin(a,b)
  %1188 = call float @dx.op.binary.f32(i32 36, float %1183, float %1187)  ; FMin(a,b)
  %1189 = call float @dx.op.binary.f32(i32 35, float %1183, float %1184)  ; FMax(a,b)
  %1190 = call float @dx.op.binary.f32(i32 36, float %1189, float %1185)  ; FMin(a,b)
  %1191 = call float @dx.op.binary.f32(i32 36, float %1183, float %1184)  ; FMin(a,b)
  %1192 = call float @dx.op.binary.f32(i32 35, float %1191, float %1190)  ; FMax(a,b)
  %1193 = call float @dx.op.binary.f32(i32 35, float %1184, float %1185)  ; FMax(a,b)
  %1194 = call float @dx.op.binary.f32(i32 35, float %1183, float %1193)  ; FMax(a,b)
  store float %1188, float* %1111, align 4, !tbaa !71, !alias.scope !99, !noalias !100
  store float %1192, float* %1112, align 4, !tbaa !71, !alias.scope !97, !noalias !98
  store float %1194, float* %1113, align 4, !tbaa !71, !alias.scope !91, !noalias !94
  %1195 = call float @dx.op.binary.f32(i32 36, float %1181, float %1182)  ; FMin(a,b)
  %1196 = call float @dx.op.binary.f32(i32 36, float %1180, float %1195)  ; FMin(a,b)
  %1197 = call float @dx.op.binary.f32(i32 35, float %1180, float %1181)  ; FMax(a,b)
  %1198 = call float @dx.op.binary.f32(i32 36, float %1197, float %1182)  ; FMin(a,b)
  %1199 = call float @dx.op.binary.f32(i32 36, float %1180, float %1181)  ; FMin(a,b)
  %1200 = call float @dx.op.binary.f32(i32 35, float %1199, float %1198)  ; FMax(a,b)
  %1201 = call float @dx.op.binary.f32(i32 35, float %1181, float %1182)  ; FMax(a,b)
  %1202 = call float @dx.op.binary.f32(i32 35, float %1180, float %1201)  ; FMax(a,b)
  store float %1196, float* %1114, align 4, !tbaa !71, !alias.scope !109, !noalias !110
  store float %1200, float* %1115, align 4, !tbaa !71, !alias.scope !107, !noalias !108
  store float %1202, float* %1116, align 4, !tbaa !71, !alias.scope !101, !noalias !104
  %1203 = sub nsw i32 3, %1186
  %1204 = icmp sgt i32 %1203, 2
  br i1 %1204, label %1205, label %1243

; <label>:1205                                    ; preds = %1179
  %1206 = icmp eq i32 %974, 0
  %1207 = fsub fast float %1024, %1108
  %1208 = select i1 %1206, float %1207, float %1108
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.CBufRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.CBufRet.f32 %1209, 2
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 0
  %1215 = extractvalue %dx.types.CBufRet.f32 %1213, 1
  %1216 = extractvalue %dx.types.CBufRet.f32 %1213, 2
  %1217 = extractvalue %dx.types.CBufRet.f32 %1213, 3
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 3
  %1220 = call float @dx.op.binary.f32(i32 36, float %1109, float %1219)  ; FMin(a,b)
  %1221 = fmul fast float %1217, %1208
  %1222 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1223 = fsub fast float %1214, %1210
  %1224 = fsub fast float %1215, %1211
  %1225 = fsub fast float %1216, %1212
  %1226 = fmul fast float %1222, %1223
  %1227 = fmul fast float %1222, %1224
  %1228 = fmul fast float %1222, %1225
  %1229 = fadd fast float %1226, %1210
  %1230 = fadd fast float %1227, %1211
  %1231 = fadd fast float %1228, %1212
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.CBufRet.f32 %1232, 1
  %1235 = fadd fast float %1234, %1233
  %1236 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1232, 2
  %1238 = extractvalue %dx.types.CBufRet.f32 %1232, 3
  %1239 = fadd fast float %1238, %1237
  %1240 = call float @dx.op.unary.f32(i32 7, float %1239)  ; Saturate(value)
  %1241 = fmul fast float %1236, %1220
  %1242 = fmul fast float %1241, %1240
  br label %1325

; <label>:1243                                    ; preds = %1179
  %1244 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1203
  %1245 = load float, float* %1244, align 4, !tbaa !71, !noalias !75
  %1246 = fcmp fast olt float %1245, %1110
  %1247 = icmp sgt i32 %1186, 0
  %1248 = and i1 %1247, %1246
  br i1 %1248, label %1249, label %1286

; <label>:1249                                    ; preds = %1243
  br label %1250

; <label>:1250                                    ; preds = %1279, %1249
  %1251 = phi float [ %1280, %1279 ], [ %1108, %1249 ]
  %1252 = phi float [ %1281, %1279 ], [ %1109, %1249 ]
  %1253 = phi float [ %1261, %1279 ], [ %1245, %1249 ]
  %1254 = phi i32 [ %1258, %1279 ], [ %1203, %1249 ]
  %1255 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %1254
  %1256 = load float, float* %1255, align 4, !tbaa !71, !noalias !75
  %1257 = icmp slt i32 %1254, 2
  %1258 = add nsw i32 %1254, 1
  %1259 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1258
  %1260 = load float, float* %1259, align 4, !tbaa !71, !noalias !75
  %1261 = select i1 %1257, float %1260, float %1024
  %1262 = call float @dx.op.binary.f32(i32 36, float %1261, float %1256)  ; FMin(a,b)
  %1263 = call float @dx.op.binary.f32(i32 36, float %1110, float %1262)  ; FMin(a,b)
  %1264 = icmp eq i32 %974, 0
  %1265 = fadd fast float %1263, %1253
  %1266 = fmul fast float %1265, %955
  %1267 = fadd fast float %1266, %968
  br i1 %1264, label %1273, label %1268

; <label>:1268                                    ; preds = %1250
  %1269 = fsub fast float %1263, %1253
  %1270 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1269)  ; FMax(a,b)
  %1271 = fmul fast float %1270, %1267
  %1272 = fadd fast float %1271, %1252
  br label %1279

; <label>:1273                                    ; preds = %1250
  %1274 = fsub fast float %1253, %1263
  %1275 = call float @dx.op.unary.f32(i32 6, float %1274)  ; FAbs(value)
  %1276 = fadd fast float %1275, %1251
  %1277 = fmul fast float %1275, %1267
  %1278 = fsub fast float %1252, %1277
  br label %1279

; <label>:1279                                    ; preds = %1273, %1268
  %1280 = phi float [ %1270, %1268 ], [ %1276, %1273 ]
  %1281 = phi float [ %1272, %1268 ], [ %1278, %1273 ]
  %1282 = fcmp fast olt float %1261, %1110
  %1283 = icmp slt i32 %1258, 3
  %1284 = and i1 %1283, %1282
  br i1 %1284, label %1250, label %1285

; <label>:1285                                    ; preds = %1279
  br label %1286

; <label>:1286                                    ; preds = %1285, %1243
  %1287 = phi float [ %1108, %1243 ], [ %1280, %1285 ]
  %1288 = phi float [ %1109, %1243 ], [ %1281, %1285 ]
  %1289 = fsub fast float %1024, %1287
  %1290 = select i1 %1026, float %1287, float %1289
  %1291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.CBufRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.CBufRet.f32 %1291, 2
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 0
  %1297 = extractvalue %dx.types.CBufRet.f32 %1295, 1
  %1298 = extractvalue %dx.types.CBufRet.f32 %1295, 2
  %1299 = extractvalue %dx.types.CBufRet.f32 %1295, 3
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 3
  %1302 = call float @dx.op.binary.f32(i32 36, float %1288, float %1301)  ; FMin(a,b)
  %1303 = fmul fast float %1299, %1290
  %1304 = call float @dx.op.unary.f32(i32 7, float %1303)  ; Saturate(value)
  %1305 = fsub fast float %1296, %1292
  %1306 = fsub fast float %1297, %1293
  %1307 = fsub fast float %1298, %1294
  %1308 = fmul fast float %1304, %1305
  %1309 = fmul fast float %1304, %1306
  %1310 = fmul fast float %1304, %1307
  %1311 = fadd fast float %1308, %1292
  %1312 = fadd fast float %1309, %1293
  %1313 = fadd fast float %1310, %1294
  %1314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1315 = extractvalue %dx.types.CBufRet.f32 %1314, 0
  %1316 = extractvalue %dx.types.CBufRet.f32 %1314, 1
  %1317 = fadd fast float %1316, %1315
  %1318 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1319 = extractvalue %dx.types.CBufRet.f32 %1314, 2
  %1320 = extractvalue %dx.types.CBufRet.f32 %1314, 3
  %1321 = fadd fast float %1320, %1319
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1323 = fmul fast float %1318, %1302
  %1324 = fmul fast float %1323, %1322
  br label %1325

; <label>:1325                                    ; preds = %1286, %1205, %1040, %1022, %1020
  %1326 = phi float [ %1049, %1040 ], [ %1208, %1205 ], [ %1290, %1286 ], [ 0.000000e+00, %1020 ], [ 0.000000e+00, %1022 ]
  %1327 = phi float [ %1083, %1040 ], [ %1242, %1205 ], [ %1324, %1286 ], [ 0.000000e+00, %1020 ], [ 0.000000e+00, %1022 ]
  %1328 = phi float [ %1070, %1040 ], [ %1229, %1205 ], [ %1311, %1286 ], [ 0.000000e+00, %1020 ], [ 0.000000e+00, %1022 ]
  %1329 = phi float [ %1071, %1040 ], [ %1230, %1205 ], [ %1312, %1286 ], [ 0.000000e+00, %1020 ], [ 0.000000e+00, %1022 ]
  %1330 = phi float [ %1072, %1040 ], [ %1231, %1205 ], [ %1313, %1286 ], [ 0.000000e+00, %1020 ], [ 0.000000e+00, %1022 ]
  %1331 = fmul fast float %963, %1327
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 2
  %1334 = fsub fast float %970, %1333
  %1335 = fcmp fast olt float %1331, -2.000000e+01
  %1336 = call float @dx.op.unary.f32(i32 21, float %1331)  ; Exp(value)
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 2
  %1339 = extractvalue %dx.types.CBufRet.f32 %1337, 3
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 2
  %1342 = fmul fast float %1339, %1334
  %1343 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1344 = fsub fast float 1.000000e+00, %1343
  %1345 = fmul fast float %955, 5.000000e-01
  %1346 = fadd fast float %1345, 5.000000e-01
  %1347 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  %1348 = fsub fast float 1.000000e+00, %1347
  %1349 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1344)  ; FMax(a,b)
  %1350 = fdiv fast float %1348, %1349
  %1351 = fsub fast float %1334, %915
  %1352 = call float @dx.op.unary.f32(i32 6, float %1351)  ; FAbs(value)
  %1353 = fmul fast float %1352, %1338
  %1354 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  %1355 = fsub fast float 1.000000e+00, %1353
  %1356 = fmul fast float %1355, %1354
  %1357 = fadd fast float %1356, %1353
  %1358 = fmul fast float %1341, %1334
  %1359 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  %1360 = fsub fast float 1.000000e+00, %1357
  %1361 = fmul fast float %1360, %1359
  %1362 = fadd fast float %1361, %1357
  %1363 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1364 = fadd fast float %1336, -1.000000e+00
  %1365 = select i1 %1335, float -1.000000e+00, float %1364
  %1366 = fmul fast float %1363, %1365
  %1367 = fadd fast float %1366, 1.000000e+00
  %1368 = fsub fast float -0.000000e+00, %1366
  %1369 = fmul fast float %1328, %1368
  %1370 = fmul fast float %1329, %1368
  %1371 = fmul fast float %1330, %1368
  br label %1372

; <label>:1372                                    ; preds = %1325, %921
  %1373 = phi float [ %1326, %1325 ], [ 0.000000e+00, %921 ]
  %1374 = phi float [ %1367, %1325 ], [ 1.000000e+00, %921 ]
  %1375 = phi float [ %1369, %1325 ], [ 0.000000e+00, %921 ]
  %1376 = phi float [ %1370, %1325 ], [ 0.000000e+00, %921 ]
  %1377 = phi float [ %1371, %1325 ], [ 0.000000e+00, %921 ]
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 1
  %1380 = fsub fast float 1.000000e+00, %1374
  %1381 = fmul fast float %1380, %956
  %1382 = fmul fast float %1381, %1379
  %1383 = fsub fast float %956, %1382
  br i1 %949, label %1384, label %1413, !dx.controlflow.hints !111

; <label>:1384                                    ; preds = %1372
  %1385 = fmul fast float %957, %946
  %1386 = fadd fast float %1385, %947
  %1387 = call float @dx.op.unary.f32(i32 7, float %1386)  ; Saturate(value)
  %1388 = fmul fast float %928, %1383
  %1389 = fsub fast float -0.000000e+00, %1388
  %1390 = fmul fast float %929, %1383
  %1391 = fsub fast float -0.000000e+00, %1390
  %1392 = call float @dx.op.unary.f32(i32 21, float %1389)  ; Exp(value)
  %1393 = call float @dx.op.unary.f32(i32 21, float %1391)  ; Exp(value)
  %1394 = call float @dx.op.binary.f32(i32 35, float %936, float %1392)  ; FMax(a,b)
  %1395 = call float @dx.op.binary.f32(i32 35, float %936, float %1393)  ; FMax(a,b)
  %1396 = fsub fast float %1395, %1394
  %1397 = fmul fast float %1396, %1387
  %1398 = fadd fast float %1397, %1394
  %1399 = call float @dx.op.unary.f32(i32 7, float %1398)  ; Saturate(value)
  %1400 = fsub fast float %933, %938
  %1401 = fsub fast float %934, %939
  %1402 = fsub fast float %935, %940
  %1403 = fmul fast float %1387, %1400
  %1404 = fmul fast float %1387, %1401
  %1405 = fmul fast float %1387, %1402
  %1406 = fadd fast float %1403, %938
  %1407 = fadd fast float %1404, %939
  %1408 = fadd fast float %1405, %940
  %1409 = fsub fast float 1.000000e+00, %1399
  %1410 = fmul fast float %1409, %1406
  %1411 = fmul fast float %1409, %1407
  %1412 = fmul fast float %1409, %1408
  br label %1472

; <label>:1413                                    ; preds = %1372
  %1414 = fmul fast float %1383, %945
  %1415 = call float @dx.op.unary.f32(i32 7, float %1414)  ; Saturate(value)
  %1416 = fsub fast float 2.000000e+00, %1415
  %1417 = fmul fast float %1415, 9.921875e-01
  %1418 = fmul fast float %1417, %1416
  %1419 = fadd fast float %1418, 3.906250e-03
  %1420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1419, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = fsub fast float %1415, %1421
  %1423 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1422)  ; FMax(a,b)
  %1424 = fmul fast float %931, %915
  %1425 = call float @dx.op.unary.f32(i32 6, float %1424)  ; FAbs(value)
  %1426 = fcmp fast ogt float %1425, 0x3EB0C6F7A0000000
  br i1 %1426, label %1427, label %1433, !dx.controlflow.hints !112

; <label>:1427                                    ; preds = %1413
  %1428 = fmul fast float %1424, 0xBFF7154760000000
  %1429 = call float @dx.op.unary.f32(i32 21, float %1428)  ; Exp(value)
  %1430 = fsub fast float 1.000000e+00, %1429
  %1431 = fdiv fast float %1430, %1424
  %1432 = fmul fast float %1431, %941
  br label %1433

; <label>:1433                                    ; preds = %1427, %1413
  %1434 = phi float [ %1432, %1427 ], [ %941, %1413 ]
  %1435 = fadd fast float %1434, %943
  %1436 = fmul fast float %1435, %1423
  %1437 = fmul fast float %928, %1436
  %1438 = fsub fast float -0.000000e+00, %1437
  %1439 = fmul fast float %929, %1436
  %1440 = fsub fast float -0.000000e+00, %1439
  %1441 = fmul fast float %930, %1436
  %1442 = fsub fast float -0.000000e+00, %1441
  %1443 = call float @dx.op.unary.f32(i32 21, float %1438)  ; Exp(value)
  %1444 = call float @dx.op.unary.f32(i32 21, float %1440)  ; Exp(value)
  %1445 = call float @dx.op.unary.f32(i32 21, float %1442)  ; Exp(value)
  %1446 = fmul fast float %957, %957
  %1447 = fadd fast float %1446, 1.000000e+00
  %1448 = fmul fast float %1447, 0x3FAE8EC8A0000000
  %1449 = fmul fast float %1448, %938
  %1450 = fmul fast float %1448, %939
  %1451 = fmul fast float %1448, %940
  %1452 = fmul fast float %957, %936
  %1453 = fsub fast float 1.000000e+00, %1452
  %1454 = fmul fast float %936, %936
  %1455 = fsub fast float 1.000000e+00, %1454
  %1456 = fmul fast float %1455, 0x3FB45F3060000000
  %1457 = fmul fast float %1453, %1453
  %1458 = fdiv fast float 1.000000e+00, %1457
  %1459 = fmul fast float %1456, %1458
  %1460 = fmul fast float %1459, %933
  %1461 = fmul fast float %1459, %934
  %1462 = fmul fast float %1459, %935
  %1463 = fadd fast float %1460, %1449
  %1464 = fadd fast float %1461, %1450
  %1465 = fadd fast float %1462, %1451
  %1466 = fsub fast float 1.000000e+00, %1443
  %1467 = fsub fast float 1.000000e+00, %1444
  %1468 = fsub fast float 1.000000e+00, %1445
  %1469 = fmul fast float %1463, %1466
  %1470 = fmul fast float %1464, %1467
  %1471 = fmul fast float %1465, %1468
  br label %1472

; <label>:1472                                    ; preds = %1433, %1384
  %1473 = phi float [ %1410, %1384 ], [ %1469, %1433 ]
  %1474 = phi float [ %1411, %1384 ], [ %1470, %1433 ]
  %1475 = phi float [ %1412, %1384 ], [ %1471, %1433 ]
  %1476 = phi float [ %1399, %1384 ], [ %1443, %1433 ]
  %1477 = phi float [ %1399, %1384 ], [ %1444, %1433 ]
  %1478 = phi float [ %1399, %1384 ], [ %1445, %1433 ]
  br i1 %965, label %1479, label %1677, !dx.controlflow.hints !113

; <label>:1479                                    ; preds = %1472
  %1480 = extractvalue %dx.types.CBufRet.f32 %1378, 0
  %1481 = fmul fast float %1480, %1380
  %1482 = fsub fast float %1375, %1473
  %1483 = fsub fast float %1376, %1474
  %1484 = fsub fast float %1377, %1475
  %1485 = fmul fast float %1481, %1482
  %1486 = fmul fast float %1481, %1483
  %1487 = fmul fast float %1481, %1484
  %1488 = fadd fast float %1485, %1473
  %1489 = fadd fast float %1486, %1474
  %1490 = fadd fast float %1487, %1475
  %1491 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1476)  ; FMax(a,b)
  %1492 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1477)  ; FMax(a,b)
  %1493 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1478)  ; FMax(a,b)
  %1494 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1374)  ; FMax(a,b)
  %1495 = call float @dx.op.binary.f32(i32 35, float %1373, float %1383)  ; FMax(a,b)
  %1496 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1495)  ; FMax(a,b)
  %1497 = fdiv fast float %1373, %1496
  %1498 = call float @dx.op.unary.f32(i32 7, float %1497)  ; Saturate(value)
  %1499 = fdiv fast float %1383, %1496
  %1500 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  %1501 = fcmp fast une float %1494, 1.000000e+00
  br i1 %1501, label %1502, label %1515, !dx.controlflow.hints !114

; <label>:1502                                    ; preds = %1479
  %1503 = call float @dx.op.unary.f32(i32 23, float %1494)  ; Log(value)
  %1504 = fmul fast float %1503, 0x3FE62E4300000000
  %1505 = fmul fast float %1375, %1504
  %1506 = fsub fast float -0.000000e+00, %1505
  %1507 = fmul fast float %1376, %1504
  %1508 = fsub fast float -0.000000e+00, %1507
  %1509 = fmul fast float %1377, %1504
  %1510 = fsub fast float -0.000000e+00, %1509
  %1511 = fsub fast float 1.000000e+00, %1494
  %1512 = fdiv fast float %1506, %1511
  %1513 = fdiv fast float %1508, %1511
  %1514 = fdiv fast float %1510, %1511
  br label %1515

; <label>:1515                                    ; preds = %1502, %1479
  %1516 = phi float [ %1512, %1502 ], [ %1375, %1479 ]
  %1517 = phi float [ %1513, %1502 ], [ %1376, %1479 ]
  %1518 = phi float [ %1514, %1502 ], [ %1377, %1479 ]
  %1519 = phi float [ %1504, %1502 ], [ 0.000000e+00, %1479 ]
  %1520 = fcmp fast une float %1491, 1.000000e+00
  br i1 %1520, label %1521, label %1528, !dx.controlflow.hints !115

; <label>:1521                                    ; preds = %1515
  %1522 = call float @dx.op.unary.f32(i32 23, float %1491)  ; Log(value)
  %1523 = fmul fast float %1522, 0x3FE62E4300000000
  %1524 = fmul fast float %1488, %1523
  %1525 = fsub fast float -0.000000e+00, %1524
  %1526 = fsub fast float 1.000000e+00, %1491
  %1527 = fdiv fast float %1525, %1526
  br label %1528

; <label>:1528                                    ; preds = %1521, %1515
  %1529 = phi float [ %1527, %1521 ], [ %1488, %1515 ]
  %1530 = phi float [ %1523, %1521 ], [ 0.000000e+00, %1515 ]
  %1531 = fcmp fast une float %1492, 1.000000e+00
  br i1 %1531, label %1532, label %1539, !dx.controlflow.hints !115

; <label>:1532                                    ; preds = %1528
  %1533 = call float @dx.op.unary.f32(i32 23, float %1492)  ; Log(value)
  %1534 = fmul fast float %1533, 0x3FE62E4300000000
  %1535 = fmul fast float %1489, %1534
  %1536 = fsub fast float -0.000000e+00, %1535
  %1537 = fsub fast float 1.000000e+00, %1492
  %1538 = fdiv fast float %1536, %1537
  br label %1539

; <label>:1539                                    ; preds = %1532, %1528
  %1540 = phi float [ %1538, %1532 ], [ %1489, %1528 ]
  %1541 = phi float [ %1534, %1532 ], [ 0.000000e+00, %1528 ]
  %1542 = fcmp fast une float %1493, 1.000000e+00
  br i1 %1542, label %1543, label %1550, !dx.controlflow.hints !115

; <label>:1543                                    ; preds = %1539
  %1544 = call float @dx.op.unary.f32(i32 23, float %1493)  ; Log(value)
  %1545 = fmul fast float %1544, 0x3FE62E4300000000
  %1546 = fmul fast float %1490, %1545
  %1547 = fsub fast float -0.000000e+00, %1546
  %1548 = fsub fast float 1.000000e+00, %1493
  %1549 = fdiv fast float %1547, %1548
  br label %1550

; <label>:1550                                    ; preds = %1543, %1539
  %1551 = phi float [ %1549, %1543 ], [ %1490, %1539 ]
  %1552 = phi float [ %1545, %1543 ], [ 0.000000e+00, %1539 ]
  %1553 = fmul fast float %1516, %1500
  %1554 = fmul fast float %1517, %1500
  %1555 = fmul fast float %1518, %1500
  %1556 = fmul fast float %1519, %1500
  %1557 = fmul fast float %1529, %1498
  %1558 = fmul fast float %1540, %1498
  %1559 = fmul fast float %1551, %1498
  %1560 = fmul fast float %1530, %1498
  %1561 = fmul fast float %1541, %1498
  %1562 = fmul fast float %1552, %1498
  %1563 = fadd fast float %1557, %1553
  %1564 = fadd fast float %1558, %1554
  %1565 = fadd fast float %1559, %1555
  %1566 = fadd fast float %1560, %1556
  %1567 = fadd fast float %1561, %1556
  %1568 = fadd fast float %1562, %1556
  %1569 = fcmp fast une float %1566, 0.000000e+00
  br i1 %1569, label %1570, label %1577, !dx.controlflow.hints !116

; <label>:1570                                    ; preds = %1550
  %1571 = fmul fast float %1566, 0x3FF7154760000000
  %1572 = call float @dx.op.unary.f32(i32 21, float %1571)  ; Exp(value)
  %1573 = fsub fast float 1.000000e+00, %1572
  %1574 = fmul fast float %1563, %1573
  %1575 = fsub fast float -0.000000e+00, %1574
  %1576 = fdiv fast float %1575, %1566
  br label %1577

; <label>:1577                                    ; preds = %1570, %1550
  %1578 = phi float [ %1572, %1570 ], [ 1.000000e+00, %1550 ]
  %1579 = phi float [ %1576, %1570 ], [ %1563, %1550 ]
  %1580 = fcmp fast une float %1567, 0.000000e+00
  br i1 %1580, label %1581, label %1588, !dx.controlflow.hints !116

; <label>:1581                                    ; preds = %1577
  %1582 = fmul fast float %1567, 0x3FF7154760000000
  %1583 = call float @dx.op.unary.f32(i32 21, float %1582)  ; Exp(value)
  %1584 = fsub fast float 1.000000e+00, %1583
  %1585 = fmul fast float %1564, %1584
  %1586 = fsub fast float -0.000000e+00, %1585
  %1587 = fdiv fast float %1586, %1567
  br label %1588

; <label>:1588                                    ; preds = %1581, %1577
  %1589 = phi float [ %1583, %1581 ], [ 1.000000e+00, %1577 ]
  %1590 = phi float [ %1587, %1581 ], [ %1564, %1577 ]
  %1591 = fcmp fast une float %1568, 0.000000e+00
  br i1 %1591, label %1592, label %1599, !dx.controlflow.hints !116

; <label>:1592                                    ; preds = %1588
  %1593 = fmul fast float %1568, 0x3FF7154760000000
  %1594 = call float @dx.op.unary.f32(i32 21, float %1593)  ; Exp(value)
  %1595 = fsub fast float 1.000000e+00, %1594
  %1596 = fmul fast float %1565, %1595
  %1597 = fsub fast float -0.000000e+00, %1596
  %1598 = fdiv fast float %1597, %1568
  br label %1599

; <label>:1599                                    ; preds = %1592, %1588
  %1600 = phi float [ %1594, %1592 ], [ 1.000000e+00, %1588 ]
  %1601 = phi float [ %1598, %1592 ], [ %1565, %1588 ]
  %1602 = fcmp fast ogt float %1498, %1500
  br i1 %1602, label %1603, label %1623

; <label>:1603                                    ; preds = %1599
  %1604 = fsub fast float 1.000000e+00, %1500
  %1605 = fmul fast float %1516, %1604
  %1606 = fmul fast float %1517, %1604
  %1607 = fmul fast float %1518, %1604
  %1608 = fmul fast float %1519, %1604
  %1609 = fcmp fast une float %1608, 0.000000e+00
  br i1 %1609, label %1610, label %1661, !dx.controlflow.hints !117

; <label>:1610                                    ; preds = %1603
  %1611 = fmul fast float %1608, 0x3FF7154760000000
  %1612 = call float @dx.op.unary.f32(i32 21, float %1611)  ; Exp(value)
  %1613 = fsub fast float 1.000000e+00, %1612
  %1614 = fmul fast float %1605, %1613
  %1615 = fsub fast float -0.000000e+00, %1614
  %1616 = fmul fast float %1606, %1613
  %1617 = fsub fast float -0.000000e+00, %1616
  %1618 = fmul fast float %1607, %1613
  %1619 = fsub fast float -0.000000e+00, %1618
  %1620 = fdiv fast float %1615, %1608
  %1621 = fdiv fast float %1617, %1608
  %1622 = fdiv fast float %1619, %1608
  br label %1661

; <label>:1623                                    ; preds = %1599
  %1624 = fsub fast float 1.000000e+00, %1498
  %1625 = fmul fast float %1529, %1624
  %1626 = fmul fast float %1540, %1624
  %1627 = fmul fast float %1551, %1624
  %1628 = fmul fast float %1530, %1624
  %1629 = fmul fast float %1541, %1624
  %1630 = fmul fast float %1552, %1624
  %1631 = fcmp fast une float %1628, 0.000000e+00
  br i1 %1631, label %1632, label %1639, !dx.controlflow.hints !116

; <label>:1632                                    ; preds = %1623
  %1633 = fmul fast float %1628, 0x3FF7154760000000
  %1634 = call float @dx.op.unary.f32(i32 21, float %1633)  ; Exp(value)
  %1635 = fsub fast float 1.000000e+00, %1634
  %1636 = fmul fast float %1625, %1635
  %1637 = fsub fast float -0.000000e+00, %1636
  %1638 = fdiv fast float %1637, %1628
  br label %1639

; <label>:1639                                    ; preds = %1632, %1623
  %1640 = phi float [ %1638, %1632 ], [ %1625, %1623 ]
  %1641 = phi float [ %1634, %1632 ], [ 1.000000e+00, %1623 ]
  %1642 = fcmp fast une float %1629, 0.000000e+00
  br i1 %1642, label %1643, label %1650, !dx.controlflow.hints !116

; <label>:1643                                    ; preds = %1639
  %1644 = fmul fast float %1629, 0x3FF7154760000000
  %1645 = call float @dx.op.unary.f32(i32 21, float %1644)  ; Exp(value)
  %1646 = fsub fast float 1.000000e+00, %1645
  %1647 = fmul fast float %1626, %1646
  %1648 = fsub fast float -0.000000e+00, %1647
  %1649 = fdiv fast float %1648, %1629
  br label %1650

; <label>:1650                                    ; preds = %1643, %1639
  %1651 = phi float [ %1649, %1643 ], [ %1626, %1639 ]
  %1652 = phi float [ %1645, %1643 ], [ 1.000000e+00, %1639 ]
  %1653 = fcmp fast une float %1630, 0.000000e+00
  br i1 %1653, label %1654, label %1661, !dx.controlflow.hints !116

; <label>:1654                                    ; preds = %1650
  %1655 = fmul fast float %1630, 0x3FF7154760000000
  %1656 = call float @dx.op.unary.f32(i32 21, float %1655)  ; Exp(value)
  %1657 = fsub fast float 1.000000e+00, %1656
  %1658 = fmul fast float %1627, %1657
  %1659 = fsub fast float -0.000000e+00, %1658
  %1660 = fdiv fast float %1659, %1630
  br label %1661

; <label>:1661                                    ; preds = %1654, %1650, %1610, %1603
  %1662 = phi float [ %1660, %1654 ], [ %1622, %1610 ], [ %1607, %1603 ], [ %1627, %1650 ]
  %1663 = phi float [ %1651, %1654 ], [ %1621, %1610 ], [ %1606, %1603 ], [ %1651, %1650 ]
  %1664 = phi float [ %1640, %1654 ], [ %1620, %1610 ], [ %1605, %1603 ], [ %1640, %1650 ]
  %1665 = phi float [ %1656, %1654 ], [ %1612, %1610 ], [ 1.000000e+00, %1603 ], [ 1.000000e+00, %1650 ]
  %1666 = phi float [ %1652, %1654 ], [ %1612, %1610 ], [ 1.000000e+00, %1603 ], [ %1652, %1650 ]
  %1667 = phi float [ %1641, %1654 ], [ %1612, %1610 ], [ 1.000000e+00, %1603 ], [ %1641, %1650 ]
  %1668 = fmul fast float %1667, %1579
  %1669 = fmul fast float %1666, %1590
  %1670 = fmul fast float %1665, %1601
  %1671 = fadd fast float %1668, %1664
  %1672 = fadd fast float %1669, %1663
  %1673 = fadd fast float %1670, %1662
  %1674 = fmul fast float %1667, %1578
  %1675 = fmul fast float %1666, %1589
  %1676 = fmul fast float %1665, %1600
  br label %1677

; <label>:1677                                    ; preds = %1661, %1472
  %1678 = phi float [ %1676, %1661 ], [ %1478, %1472 ]
  %1679 = phi float [ %1675, %1661 ], [ %1477, %1472 ]
  %1680 = phi float [ %1674, %1661 ], [ %1476, %1472 ]
  %1681 = phi float [ %1673, %1661 ], [ %1475, %1472 ]
  %1682 = phi float [ %1672, %1661 ], [ %1474, %1472 ]
  %1683 = phi float [ %1671, %1661 ], [ %1473, %1472 ]
  %1684 = fmul fast float %1683, %744
  %1685 = fmul fast float %1682, %744
  %1686 = fmul fast float %1681, %744
  %1687 = fmul fast float %1680, %920
  %1688 = call float @dx.op.dot3.f32(i32 55, float %1680, float %1679, float %1678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1689 = call float @dx.op.dot3.f32(i32 55, float %1684, float %1685, float %1686, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1690 = select i1 %103, float %1688, float %1680
  %1691 = select i1 %103, float %1688, float %1679
  %1692 = select i1 %103, float 1.000000e+00, float %1678
  %1693 = select i1 %103, float %1689, float %1684
  %1694 = select i1 %103, float 0.000000e+00, float %1685
  %1695 = select i1 %103, float 0.000000e+00, float %1686
  %1696 = fmul fast float %1690, %917
  %1697 = fmul fast float %1691, %918
  %1698 = fmul fast float %1692, %919
  %1699 = fadd fast float %1696, %1693
  %1700 = fadd fast float %1697, %1694
  %1701 = fadd fast float %1695, %1698
  %1702 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.i32 %1702, 0
  %1704 = icmp eq i32 %1703, 0
  br i1 %1704, label %2070, label %1705, !dx.controlflow.hints !118

; <label>:1705                                    ; preds = %1677
  %1706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1707 = extractvalue %dx.types.CBufRet.f32 %1706, 2
  %1708 = extractvalue %dx.types.CBufRet.f32 %1706, 3
  %1709 = fmul fast float %1707, %45
  %1710 = fmul fast float %1708, %46
  %1711 = fmul fast float %1709, 2.000000e+00
  %1712 = fmul fast float %1710, 2.000000e+00
  %1713 = fsub fast float 1.000000e+00, %1711
  %1714 = fsub fast float 1.000000e+00, %1712
  %1715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1715, 0
  %1717 = extractvalue %dx.types.CBufRet.f32 %1715, 1
  %1718 = extractvalue %dx.types.CBufRet.f32 %1715, 2
  %1719 = fmul fast float %1713, %1716
  %1720 = fmul fast float %1713, %1717
  %1721 = fmul fast float %1713, %1718
  %1722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1723 = extractvalue %dx.types.CBufRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.CBufRet.f32 %1722, 1
  %1725 = extractvalue %dx.types.CBufRet.f32 %1722, 2
  %1726 = fmul fast float %1714, %1723
  %1727 = fmul fast float %1714, %1724
  %1728 = fmul fast float %1714, %1725
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.CBufRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.CBufRet.f32 %1729, 2
  %1733 = fadd fast float %1726, %1730
  %1734 = fadd fast float %1733, %1719
  %1735 = fadd fast float %1727, %1731
  %1736 = fadd fast float %1735, %1720
  %1737 = fadd fast float %1728, %1732
  %1738 = fadd fast float %1737, %1721
  %1739 = fmul fast float %1734, %916
  %1740 = fmul fast float %1736, %916
  %1741 = fmul fast float %1738, %916
  %1742 = fmul fast float %1739, %1739
  %1743 = fmul fast float %1740, %1740
  %1744 = fadd fast float %1742, %1743
  %1745 = fmul fast float %1741, %1741
  %1746 = fadd fast float %1744, %1745
  %1747 = call float @dx.op.unary.f32(i32 24, float %1746)  ; Sqrt(value)
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 0
  %1750 = fsub fast float %1747, %1749
  %1751 = extractvalue %dx.types.CBufRet.f32 %1748, 2
  %1752 = fmul fast float %1750, %1751
  %1753 = call float @dx.op.unary.f32(i32 7, float %1752)  ; Saturate(value)
  %1754 = fadd fast float %1753, -5.000000e-01
  %1755 = fmul fast float %1754, 2.000000e+00
  %1756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1757 = extractvalue %dx.types.CBufRet.f32 %1756, 2
  %1758 = call float @dx.op.binary.f32(i32 36, float %1757, float %1755)  ; FMin(a,b)
  %1759 = fsub fast float -0.000000e+00, %1757
  %1760 = fcmp fast ogt float %1758, %1759
  br i1 %1760, label %1761, label %2070, !dx.controlflow.hints !119

; <label>:1761                                    ; preds = %1705
  %1762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1762, 3
  %1764 = fcmp fast ogt float %1763, 0.000000e+00
  br i1 %1764, label %1765, label %1840, !dx.controlflow.hints !120

; <label>:1765                                    ; preds = %1761
  %1766 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %1767 = extractvalue %dx.types.Dimensions %1766, 0
  %1768 = sitofp i32 %1767 to float
  %1769 = extractvalue %dx.types.Dimensions %1766, 1
  %1770 = sitofp i32 %1769 to float
  %1771 = fmul fast float %1709, %1768
  %1772 = fmul fast float %1710, %1770
  %1773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1773, 1
  %1775 = fsub fast float -0.000000e+00, %1774
  %1776 = fptoui float %1775 to i32
  %1777 = fptoui float %1771 to i32
  %1778 = fptoui float %1772 to i32
  %1779 = and i32 %1776, 31
  %1780 = lshr i32 %1777, %1779
  %1781 = lshr i32 %1778, %1779
  %1782 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1776, i32 %1780, i32 %1781, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = fcmp fast olt float %1783, -1.000000e+00
  %1785 = fcmp fast ogt float %1783, -1.000000e+00
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 1
  %1788 = select i1 %1785, float %1787, float 1.000000e+00
  %1789 = fadd fast float %1783, 1.000000e+00
  %1790 = fmul fast float %1788, %1789
  %1791 = call float @dx.op.unary.f32(i32 6, float %1790)  ; FAbs(value)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1786, 3
  %1793 = fcmp fast oge float %1791, %1792
  %1794 = select i1 %1793, float 0x4197782600000000, float %1791
  %1795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1795, 0
  %1797 = extractvalue %dx.types.CBufRet.f32 %1795, 1
  %1798 = extractvalue %dx.types.CBufRet.f32 %1795, 2
  %1799 = select i1 %1784, float %1796, float %1716
  %1800 = select i1 %1784, float %1797, float %1717
  %1801 = select i1 %1784, float %1798, float %1718
  %1802 = fmul fast float %1799, %1713
  %1803 = fmul fast float %1800, %1713
  %1804 = fmul fast float %1801, %1713
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 0
  %1807 = extractvalue %dx.types.CBufRet.f32 %1805, 1
  %1808 = extractvalue %dx.types.CBufRet.f32 %1805, 2
  %1809 = select i1 %1784, float %1806, float %1723
  %1810 = select i1 %1784, float %1807, float %1724
  %1811 = select i1 %1784, float %1808, float %1725
  %1812 = fmul fast float %1809, %1714
  %1813 = fmul fast float %1810, %1714
  %1814 = fmul fast float %1811, %1714
  %1815 = fadd fast float %1812, %1802
  %1816 = fadd fast float %1813, %1803
  %1817 = fadd fast float %1814, %1804
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 0
  %1820 = extractvalue %dx.types.CBufRet.f32 %1818, 1
  %1821 = extractvalue %dx.types.CBufRet.f32 %1818, 2
  %1822 = select i1 %1784, float %1819, float %1730
  %1823 = select i1 %1784, float %1820, float %1731
  %1824 = select i1 %1784, float %1821, float %1732
  %1825 = fadd fast float %1815, %1822
  %1826 = fadd fast float %1816, %1823
  %1827 = fadd fast float %1817, %1824
  %1828 = fmul fast float %1825, %1794
  %1829 = fmul fast float %1826, %1794
  %1830 = fmul fast float %1827, %1794
  %1831 = fmul fast float %1828, %1828
  %1832 = fmul fast float %1829, %1829
  %1833 = fadd fast float %1831, %1832
  %1834 = fmul fast float %1830, %1830
  %1835 = fadd fast float %1833, %1834
  %1836 = call float @dx.op.unary.f32(i32 24, float %1835)  ; Sqrt(value)
  %1837 = fsub fast float %1836, %1749
  %1838 = fmul fast float %1837, %1751
  %1839 = call float @dx.op.unary.f32(i32 7, float %1838)  ; Saturate(value)
  br label %1840

; <label>:1840                                    ; preds = %1765, %1761
  %1841 = phi float [ %1839, %1765 ], [ 1.000000e+00, %1761 ]
  %1842 = fmul fast float %1758, 5.000000e-01
  %1843 = fadd fast float %1842, 5.000000e-01
  %1844 = call float @dx.op.unary.f32(i32 22, float %1843)  ; Frc(value)
  %1845 = call float @dx.op.unary.f32(i32 27, float %1844)  ; Round_ni(value)
  %1846 = call float @dx.op.unary.f32(i32 22, float %1844)  ; Frc(value)
  %1847 = fmul fast float %1846, 2.000000e+00
  %1848 = fadd fast float %1847, -1.000000e+00
  %1849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %1709, float %1710, float %1845, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1850 = extractvalue %dx.types.ResRet.f32 %1849, 0
  %1851 = extractvalue %dx.types.ResRet.f32 %1849, 1
  %1852 = extractvalue %dx.types.ResRet.f32 %1849, 2
  %1853 = extractvalue %dx.types.ResRet.f32 %1849, 3
  %1854 = fadd fast float %1850, -5.000000e-01
  %1855 = fadd fast float %1852, -5.000000e-01
  %1856 = fmul fast float %1854, 0xBFD5555560000000
  %1857 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1855, float %1856)  ; FMad(a,b,c)
  %1858 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1851, float 0.000000e+00)  ; FMad(a,b,c)
  %1859 = fadd fast float %1858, %1853
  %1860 = fmul fast float %1854, -7.500000e-01
  %1861 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1855, float %1860)  ; FMad(a,b,c)
  %1862 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1851, float 0.000000e+00)  ; FMad(a,b,c)
  %1863 = fadd fast float %1862, %1853
  %1864 = call float @dx.op.binary.f32(i32 35, float %1857, float -1.000000e+00)  ; FMax(a,b)
  %1865 = call float @dx.op.binary.f32(i32 35, float %1859, float -1.000000e+00)  ; FMax(a,b)
  %1866 = call float @dx.op.binary.f32(i32 35, float %1861, float -1.000000e+00)  ; FMax(a,b)
  %1867 = call float @dx.op.binary.f32(i32 35, float %1863, float -1.000000e+00)  ; FMax(a,b)
  %1868 = call float @dx.op.binary.f32(i32 36, float %1864, float 1.000000e+00)  ; FMin(a,b)
  %1869 = call float @dx.op.binary.f32(i32 36, float %1865, float 1.000000e+00)  ; FMin(a,b)
  %1870 = call float @dx.op.binary.f32(i32 36, float %1866, float 1.000000e+00)  ; FMin(a,b)
  %1871 = call float @dx.op.binary.f32(i32 36, float %1867, float 1.000000e+00)  ; FMin(a,b)
  %1872 = fcmp fast olt float %1868, 0x3FEFFF8020000000
  br i1 %1872, label %1873, label %1988, !dx.controlflow.hints !121

; <label>:1873                                    ; preds = %1840
  %1874 = extractvalue %dx.types.CBufRet.f32 %1756, 3
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.CBufRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.CBufRet.f32 %1875, 2
  %1879 = extractvalue %dx.types.CBufRet.f32 %1875, 3
  %1880 = fsub fast float %1876, %1868
  %1881 = fsub fast float %1877, %1869
  %1882 = fsub fast float %1878, %1870
  %1883 = fsub fast float %1879, %1871
  %1884 = fmul fast float %1880, %1874
  %1885 = fmul fast float %1881, %1874
  %1886 = fmul fast float %1882, %1874
  %1887 = fmul fast float %1883, %1874
  %1888 = fadd fast float %1884, %1868
  %1889 = fadd fast float %1885, %1869
  %1890 = fsub fast float -0.000000e+00, %1889
  %1891 = fadd fast float %1886, %1870
  %1892 = fadd fast float %1887, %1871
  %1893 = fmul fast float %1888, %1888
  %1894 = fsub fast float %1889, %1893
  %1895 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1894)  ; FMax(a,b)
  %1896 = fdiv fast float 1.000000e+00, %1895
  %1897 = fmul fast float %1889, %1888
  %1898 = fsub fast float %1891, %1897
  %1899 = fsub fast float %1848, %1888
  %1900 = fmul fast float %1848, %1848
  %1901 = fsub fast float %1900, %1889
  %1902 = fmul fast float %1899, %1896
  %1903 = fmul fast float %1902, %1898
  %1904 = fsub fast float %1901, %1903
  %1905 = fmul fast float %1889, %1889
  %1906 = fsub fast float %1892, %1905
  %1907 = fmul fast float %1898, %1898
  %1908 = fmul fast float %1907, %1896
  %1909 = fsub fast float %1906, %1908
  %1910 = fdiv fast float %1904, %1909
  %1911 = fmul fast float %1898, %1910
  %1912 = fsub fast float %1899, %1911
  %1913 = fmul fast float %1912, %1896
  %1914 = fmul fast float %1913, %1888
  %1915 = fsub fast float 1.000000e+00, %1914
  %1916 = fmul fast float %1889, %1910
  %1917 = fsub fast float %1915, %1916
  %1918 = fmul fast float %1913, %1913
  %1919 = fmul fast float %1910, 4.000000e+00
  %1920 = fmul fast float %1919, %1917
  %1921 = fsub fast float %1918, %1920
  %1922 = call float @dx.op.unary.f32(i32 24, float %1921)  ; Sqrt(value)
  %1923 = fcmp fast oge float %1913, 0.000000e+00
  %1924 = fsub fast float -0.000000e+00, %1922
  %1925 = select i1 %1923, float %1924, float %1922
  %1926 = fsub fast float %1925, %1913
  %1927 = fdiv fast float %1926, %1910
  %1928 = fdiv fast float %1917, %1926
  %1929 = fmul fast float %1927, 5.000000e-01
  %1930 = fmul fast float %1928, 2.000000e+00
  %1931 = select i1 %1923, float %1929, float %1930
  %1932 = select i1 %1923, float %1930, float %1929
  %1933 = call float @dx.op.binary.f32(i32 35, float %1931, float %1932)  ; FMax(a,b)
  %1934 = call float @dx.op.binary.f32(i32 36, float %1931, float %1932)  ; FMin(a,b)
  %1935 = fcmp fast ogt float %1848, %1934
  br i1 %1935, label %1936, label %1946

; <label>:1936                                    ; preds = %1873
  %1937 = fsub fast float %1848, %1934
  %1938 = fsub fast float %1933, %1934
  %1939 = fmul fast float %1937, %1938
  %1940 = fmul fast float %1933, %1848
  %1941 = fadd fast float %1933, %1848
  %1942 = fmul fast float %1941, %1888
  %1943 = fadd fast float %1940, %1889
  %1944 = fsub fast float %1943, %1942
  %1945 = fdiv fast float %1944, %1939
  br label %1946

; <label>:1946                                    ; preds = %1936, %1873
  %1947 = phi float [ %1945, %1936 ], [ 0.000000e+00, %1873 ]
  %1948 = fcmp fast ogt float %1848, %1933
  %1949 = fsub fast float %1848, %1933
  br i1 %1948, label %1950, label %1960

; <label>:1950                                    ; preds = %1946
  %1951 = fsub fast float %1933, %1934
  %1952 = fmul fast float %1951, %1949
  %1953 = fmul fast float %1934, %1848
  %1954 = fadd fast float %1934, %1848
  %1955 = fmul fast float %1954, %1888
  %1956 = fsub fast float %1890, %1953
  %1957 = fadd fast float %1956, %1955
  %1958 = fdiv fast float %1957, %1952
  %1959 = fadd fast float %1958, %1947
  br label %1960

; <label>:1960                                    ; preds = %1950, %1946
  %1961 = phi float [ %1959, %1950 ], [ %1947, %1946 ]
  %1962 = fsub fast float %1848, %1934
  %1963 = fmul fast float %1962, %1949
  %1964 = fmul fast float %1934, %1933
  %1965 = fadd fast float %1934, %1933
  %1966 = fmul fast float %1965, %1888
  %1967 = fadd fast float %1964, %1889
  %1968 = fsub fast float %1967, %1966
  %1969 = fdiv fast float %1968, %1963
  %1970 = call float @dx.op.unary.f32(i32 7, float %1961)  ; Saturate(value)
  %1971 = fcmp fast oeq float %763, 0.000000e+00
  %1972 = extractvalue %dx.types.CBufRet.f32 %1756, 0
  %1973 = fcmp fast oeq float %1972, 0.000000e+00
  %1974 = or i1 %1971, %1973
  %1975 = fmul fast float %1972, 2.000000e+00
  %1976 = fadd fast float %1757, %1758
  %1977 = fdiv fast float %1976, %1975
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  %1979 = fmul fast float %1978, 2.000000e+00
  %1980 = fsub fast float 3.000000e+00, %1979
  %1981 = fmul fast float %1978, %1978
  %1982 = fmul fast float %1981, %1980
  %1983 = select i1 %1974, float 1.000000e+00, float %1982
  %1984 = fmul fast float %1969, %763
  %1985 = fadd fast float %1970, %1984
  %1986 = call float @dx.op.unary.f32(i32 7, float %1985)  ; Saturate(value)
  %1987 = fmul fast float %1983, %1986
  br label %1988

; <label>:1988                                    ; preds = %1960, %1840
  %1989 = phi float [ %1987, %1960 ], [ 0.000000e+00, %1840 ]
  %1990 = fsub fast float 1.000000e+00, %1989
  %1991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %1709, float %1710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1992 = extractvalue %dx.types.ResRet.f32 %1991, 0
  %1993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.i32 %1993, 2
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2001, label %1996

; <label>:1996                                    ; preds = %1988
  %1997 = call float @dx.op.unary.f32(i32 7, float %1989)  ; Saturate(value)
  %1998 = fadd fast float %1992, -1.000000e+00
  %1999 = fmul fast float %1997, %1998
  %2000 = fadd fast float %1999, 1.000000e+00
  br label %2001

; <label>:2001                                    ; preds = %1996, %1988
  %2002 = phi float [ %2000, %1996 ], [ %1990, %1988 ]
  br i1 %1764, label %2003, label %2021

; <label>:2003                                    ; preds = %2001
  %2004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %2005 = extractvalue %dx.types.CBufRet.f32 %2004, 1
  %2006 = fsub fast float %1841, %2005
  %2007 = call float @dx.op.unary.f32(i32 7, float %2006)  ; Saturate(value)
  %2008 = fsub fast float %1841, %1763
  %2009 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  %2010 = fsub fast float %2007, %2009
  %2011 = fsub fast float %1843, %2009
  %2012 = fdiv fast float %2011, %2010
  %2013 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2014 = fmul fast float %2013, 2.000000e+00
  %2015 = fsub fast float 3.000000e+00, %2014
  %2016 = fsub fast float %1992, %2002
  %2017 = fmul fast float %2013, %2013
  %2018 = fmul fast float %2017, %2016
  %2019 = fmul fast float %2018, %2015
  %2020 = fadd fast float %2019, %2002
  br label %2021

; <label>:2021                                    ; preds = %2003, %2001
  %2022 = phi float [ %2020, %2003 ], [ %2002, %2001 ]
  %2023 = call float @dx.op.binary.f32(i32 35, float %1992, float %2022)  ; FMax(a,b)
  %2024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.i32 %2024, 2
  %2026 = and i32 %2025, 1
  %2027 = icmp eq i32 %2026, 0
  %2028 = fcmp fast une float %2023, 1.000000e+00
  %2029 = and i1 %2028, %2027
  br i1 %2029, label %2030, label %2049

; <label>:2030                                    ; preds = %2021
  %2031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %1709, float %1710, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2032 = extractvalue %dx.types.ResRet.f32 %2031, 0
  %2033 = extractvalue %dx.types.ResRet.f32 %2031, 1
  %2034 = extractvalue %dx.types.ResRet.f32 %2031, 2
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 1
  %2037 = fmul fast float %2036, %2032
  %2038 = fmul fast float %2036, %2033
  %2039 = fmul fast float %2036, %2034
  %2040 = fcmp fast ogt float %1992, 0x3FEFFF2E40000000
  %2041 = fsub fast float 1.000000e+00, %2023
  %2042 = fsub fast float 1.000000e+00, %1992
  %2043 = fdiv fast float %2041, %2042
  %2044 = call float @dx.op.unary.f32(i32 7, float %2043)  ; Saturate(value)
  %2045 = select i1 %2040, float 0.000000e+00, float %2044
  %2046 = fmul fast float %2037, %2045
  %2047 = fmul fast float %2038, %2045
  %2048 = fmul fast float %2039, %2045
  br label %2049

; <label>:2049                                    ; preds = %2030, %2021
  %2050 = phi float [ 0.000000e+00, %2021 ], [ %2046, %2030 ]
  %2051 = phi float [ 0.000000e+00, %2021 ], [ %2047, %2030 ]
  %2052 = phi float [ 0.000000e+00, %2021 ], [ %2048, %2030 ]
  %2053 = fmul fast float %2050, %744
  %2054 = fmul fast float %2051, %744
  %2055 = fmul fast float %2052, %744
  %2056 = fmul fast float %2023, %1687
  %2057 = call float @dx.op.dot3.f32(i32 55, float %2023, float %2023, float %2023, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2058 = call float @dx.op.dot3.f32(i32 55, float %2053, float %2054, float %2055, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2059 = select i1 %103, float %2057, float %2023
  %2060 = select i1 %103, float 1.000000e+00, float %2023
  %2061 = select i1 %103, float %2058, float %2053
  %2062 = select i1 %103, float 0.000000e+00, float %2054
  %2063 = select i1 %103, float 0.000000e+00, float %2055
  %2064 = fmul fast float %2059, %1699
  %2065 = fmul fast float %2059, %1700
  %2066 = fmul fast float %2060, %1701
  %2067 = fadd fast float %2064, %2061
  %2068 = fadd fast float %2065, %2062
  %2069 = fadd fast float %2063, %2066
  br label %2070

; <label>:2070                                    ; preds = %2049, %1705, %1677, %912
  %2071 = phi float [ %917, %912 ], [ %1699, %1677 ], [ %2067, %2049 ], [ %1699, %1705 ]
  %2072 = phi float [ %918, %912 ], [ %1700, %1677 ], [ %2068, %2049 ], [ %1700, %1705 ]
  %2073 = phi float [ %919, %912 ], [ %1701, %1677 ], [ %2069, %2049 ], [ %1701, %1705 ]
  %2074 = phi float [ %920, %912 ], [ %1687, %1677 ], [ %2056, %2049 ], [ %1687, %1705 ]
  %2075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2076 = extractvalue %dx.types.CBufRet.f32 %2075, 2
  %2077 = extractvalue %dx.types.CBufRet.f32 %2075, 3
  %2078 = fmul fast float %2076, %45
  %2079 = fmul fast float %2077, %46
  %2080 = call float @dx.op.unary.f32(i32 7, float %2078)  ; Saturate(value)
  %2081 = call float @dx.op.unary.f32(i32 7, float %2079)  ; Saturate(value)
  %2082 = select i1 %774, i32 2, i32 0
  %2083 = or i32 %2082, 1
  %2084 = uitofp i32 %2083 to float
  %2085 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %18, float %2080, float %2081, float %2084, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2086 = extractvalue %dx.types.ResRet.f32 %2085, 0
  %2087 = extractvalue %dx.types.ResRet.f32 %2085, 1
  %2088 = extractvalue %dx.types.ResRet.f32 %2085, 2
  %2089 = extractvalue %dx.types.ResRet.f32 %2085, 3
  %2090 = add nuw nsw i32 %2082, 2
  %2091 = uitofp i32 %2090 to float
  %2092 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %18, float %2080, float %2081, float %2091, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2093 = extractvalue %dx.types.ResRet.f32 %2092, 0
  %2094 = extractvalue %dx.types.ResRet.f32 %2092, 1
  %2095 = extractvalue %dx.types.ResRet.f32 %2092, 2
  %2096 = extractvalue %dx.types.ResRet.f32 %2092, 3
  %2097 = call float @dx.op.binary.f32(i32 35, float %2087, float %2088)  ; FMax(a,b)
  %2098 = call float @dx.op.binary.f32(i32 35, float %2086, float %2097)  ; FMax(a,b)
  %2099 = call float @dx.op.binary.f32(i32 35, float %2098, float %2089)  ; FMax(a,b)
  %2100 = call float @dx.op.binary.f32(i32 36, float %2094, float %2095)  ; FMin(a,b)
  %2101 = call float @dx.op.binary.f32(i32 36, float %2093, float %2100)  ; FMin(a,b)
  %2102 = call float @dx.op.binary.f32(i32 36, float %2101, float %2096)  ; FMin(a,b)
  %2103 = fmul fast float %2099, 2.550000e+02
  %2104 = fadd fast float %2103, 0x3F70101020000000
  %2105 = fptoui float %2104 to i32
  %2106 = fmul fast float %2102, 2.550000e+02
  %2107 = fadd fast float %2106, 0x3F70101020000000
  %2108 = fptoui float %2107 to i32
  %2109 = icmp ult i32 %2105, %2108
  br i1 %2109, label %2110, label %2162

; <label>:2110                                    ; preds = %2070
  %2111 = fcmp fast ogt float %37, 9.843750e-01
  %2112 = fadd fast float %916, -4.000000e+00
  %2113 = select i1 %2111, float -4.000000e+00, float %2112
  %2114 = call float @dx.op.binary.f32(i32 35, float %2113, float 0.000000e+00)  ; FMax(a,b)
  %2115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2116 = extractvalue %dx.types.CBufRet.f32 %2115, 0
  %2117 = fadd fast float %2116, %2114
  %2118 = extractvalue %dx.types.CBufRet.f32 %2115, 2
  %2119 = fmul fast float %2117, %2118
  %2120 = call float @dx.op.unary.f32(i32 23, float %2119)  ; Log(value)
  %2121 = extractvalue %dx.types.CBufRet.f32 %2115, 3
  %2122 = fmul fast float %2121, %2120
  %2123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2124 = extractvalue %dx.types.CBufRet.f32 %2123, 2
  %2125 = fmul fast float %2122, %2124
  %2126 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2127 = uitofp i32 %2105 to float
  %2128 = uitofp i32 %2108 to float
  %2129 = fadd fast float %2127, 5.000000e-01
  %2130 = fadd fast float %2128, 5.000000e-01
  %2131 = fmul fast float %2124, %2129
  %2132 = fmul fast float %2124, %2130
  %2133 = fadd fast float %2131, 0x3F0FFB4800000000
  %2134 = fadd fast float %2132, 0xBF0FFB4800000000
  %2135 = call float @dx.op.binary.f32(i32 35, float %2126, float %2133)  ; FMax(a,b)
  %2136 = call float @dx.op.binary.f32(i32 36, float %2135, float %2134)  ; FMin(a,b)
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2139 = extractvalue %dx.types.CBufRet.f32 %2137, 2
  %2140 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2141 = select i1 %774, float %2140, float 0.000000e+00
  %2142 = fmul fast float %2138, %2136
  %2143 = fadd fast float %2141, %2142
  %2144 = fadd fast float %2141, %2139
  %2145 = fsub fast float %2138, %2139
  %2146 = fadd fast float %2145, %2141
  %2147 = call float @dx.op.binary.f32(i32 35, float %2143, float %2144)  ; FMax(a,b)
  %2148 = call float @dx.op.binary.f32(i32 36, float %2147, float %2146)  ; FMin(a,b)
  %2149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %2080, float %2081, float %2148, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = extractvalue %dx.types.ResRet.f32 %2149, 1
  %2152 = extractvalue %dx.types.ResRet.f32 %2149, 2
  %2153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %2080, float %2081, float %2148, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2154 = extractvalue %dx.types.ResRet.f32 %2153, 0
  %2155 = extractvalue %dx.types.ResRet.f32 %2153, 1
  %2156 = extractvalue %dx.types.ResRet.f32 %2153, 2
  %2157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2158 = extractvalue %dx.types.CBufRet.f32 %2157, 1
  %2159 = fmul fast float %2158, %2154
  %2160 = fmul fast float %2158, %2155
  %2161 = fmul fast float %2158, %2156
  br label %2162

; <label>:2162                                    ; preds = %2110, %2070
  %2163 = phi float [ %2150, %2110 ], [ 1.000000e+00, %2070 ]
  %2164 = phi float [ %2151, %2110 ], [ 1.000000e+00, %2070 ]
  %2165 = phi float [ %2152, %2110 ], [ 1.000000e+00, %2070 ]
  %2166 = phi float [ %2159, %2110 ], [ 0.000000e+00, %2070 ]
  %2167 = phi float [ %2160, %2110 ], [ 0.000000e+00, %2070 ]
  %2168 = phi float [ %2161, %2110 ], [ 0.000000e+00, %2070 ]
  %2169 = fmul fast float %2166, %744
  %2170 = fmul fast float %2167, %744
  %2171 = fmul fast float %2168, %744
  %2172 = fmul fast float %2163, %2074
  %2173 = call float @dx.op.dot3.f32(i32 55, float %2163, float %2164, float %2165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2174 = call float @dx.op.dot3.f32(i32 55, float %2169, float %2170, float %2171, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2175 = select i1 %103, float %2173, float %2163
  %2176 = select i1 %103, float %2173, float %2164
  %2177 = select i1 %103, float 1.000000e+00, float %2165
  %2178 = select i1 %103, float %2174, float %2169
  %2179 = select i1 %103, float 0.000000e+00, float %2170
  %2180 = select i1 %103, float 0.000000e+00, float %2171
  %2181 = fmul fast float %2175, %2071
  %2182 = fmul fast float %2176, %2072
  %2183 = fmul fast float %2177, %2073
  %2184 = fadd fast float %2181, %2178
  %2185 = fadd fast float %2182, %2179
  %2186 = fadd fast float %2180, %2183
  %2187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.i32 %2187, 3
  %2189 = and i32 %2188, 3
  %2190 = icmp ne i32 %2189, 0
  %2191 = and i32 %2188, 4
  %2192 = icmp ne i32 %2191, 0
  %2193 = and i1 %2190, %2192
  %2194 = and i1 %103, %2193
  br i1 %2194, label %2195, label %2201

; <label>:2195                                    ; preds = %2162
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 1
  %2198 = fadd fast float %2172, -1.000000e+00
  %2199 = fmul fast float %2197, %2198
  %2200 = fadd fast float %2199, 1.000000e+00
  br label %2201

; <label>:2201                                    ; preds = %2195, %2162
  %2202 = phi float [ %2200, %2195 ], [ %2172, %2162 ]
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 0
  br i1 %103, label %2205, label %2227

; <label>:2205                                    ; preds = %2201
  %2206 = fadd fast float %2184, %2185
  %2207 = fmul fast float %2204, %2206
  %2208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.f32 %2208, 3
  %2210 = extractvalue %dx.types.CBufRet.f32 %749, 1
  %2211 = fsub fast float %752, %2210
  %2212 = extractvalue %dx.types.CBufRet.f32 %749, 2
  %2213 = fmul fast float %2211, %2212
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  %2215 = fsub fast float %2214, %2209
  %2216 = fmul fast float %2215, %2202
  %2217 = fadd fast float %2216, %2209
  %2218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2219 = extractvalue %dx.types.CBufRet.f32 %2218, 0
  %2220 = fsub fast float %2217, %2219
  %2221 = fmul fast float %2220, 1.000000e+01
  %2222 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  %2223 = fsub fast float %720, %744
  %2224 = fmul fast float %2222, %2223
  %2225 = fadd fast float %2224, %744
  %2226 = fmul fast float %2225, %2217
  br label %2236

; <label>:2227                                    ; preds = %2201
  %2228 = fmul fast float %2204, %2184
  %2229 = fmul fast float %2204, %2185
  %2230 = fmul fast float %2204, %2186
  %2231 = call float @dx.op.binary.f32(i32 35, float %2229, float %2230)  ; FMax(a,b)
  %2232 = call float @dx.op.binary.f32(i32 35, float %2228, float %2231)  ; FMax(a,b)
  %2233 = call float @dx.op.binary.f32(i32 35, float %2232, float %744)  ; FMax(a,b)
  %2234 = fcmp fast ugt float %2233, 0x3F10000000000000
  br i1 %2234, label %2236, label %2235

; <label>:2235                                    ; preds = %2227
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2236

; <label>:2236                                    ; preds = %2235, %2227, %2205
  %2237 = phi float [ %2207, %2205 ], [ %2228, %2235 ], [ %2228, %2227 ]
  %2238 = phi float [ %2226, %2205 ], [ %2229, %2235 ], [ %2229, %2227 ]
  %2239 = phi float [ %2225, %2205 ], [ %2230, %2235 ], [ %2230, %2227 ]
  %2240 = phi float [ %2225, %2205 ], [ %744, %2235 ], [ %744, %2227 ]
  %2241 = fadd fast float %523, 0x3FE3C6EF40000000
  %2242 = call float @dx.op.unary.f32(i32 22, float %2241)  ; Frc(value)
  %2243 = call float @dx.op.unary.f32(i32 23, float %2237)  ; Log(value)
  %2244 = fadd fast float %2243, -7.000000e+00
  %2245 = call float @dx.op.unary.f32(i32 21, float %2244)  ; Exp(value)
  %2246 = fmul fast float %2242, 2.000000e+00
  %2247 = fadd fast float %2246, -1.000000e+00
  %2248 = fmul fast float %2245, %2247
  %2249 = fcmp fast ogt float %2237, 0.000000e+00
  %2250 = select i1 %2249, float %2248, float 0.000000e+00
  %2251 = fadd fast float %2250, %2237
  %2252 = fadd fast float %523, 0x3FF3C6EF40000000
  %2253 = call float @dx.op.unary.f32(i32 22, float %2252)  ; Frc(value)
  %2254 = call float @dx.op.unary.f32(i32 23, float %2238)  ; Log(value)
  %2255 = fadd fast float %2254, -7.000000e+00
  %2256 = call float @dx.op.unary.f32(i32 21, float %2255)  ; Exp(value)
  %2257 = fmul fast float %2253, 2.000000e+00
  %2258 = fadd fast float %2257, -1.000000e+00
  %2259 = fmul fast float %2256, %2258
  %2260 = fcmp fast ogt float %2238, 0.000000e+00
  %2261 = select i1 %2260, float %2259, float 0.000000e+00
  %2262 = fadd fast float %2261, %2238
  %2263 = fadd fast float %523, 0x3FFDAA66E0000000
  %2264 = call float @dx.op.unary.f32(i32 22, float %2263)  ; Frc(value)
  %2265 = call float @dx.op.unary.f32(i32 23, float %2239)  ; Log(value)
  %2266 = fadd fast float %2265, -6.000000e+00
  %2267 = call float @dx.op.unary.f32(i32 21, float %2266)  ; Exp(value)
  %2268 = fmul fast float %2264, 2.000000e+00
  %2269 = fadd fast float %2268, -1.000000e+00
  %2270 = fmul fast float %2267, %2269
  %2271 = fcmp fast ogt float %2239, 0.000000e+00
  %2272 = select i1 %2271, float %2270, float 0.000000e+00
  %2273 = fadd fast float %2272, %2239
  %2274 = select i1 %103, float %2238, float %2262
  %2275 = select i1 %103, float %2239, float %2273
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2276 = call float @dx.op.binary.f32(i32 36, float %2251, float 3.225500e+04)  ; FMin(a,b)
  %2277 = call float @dx.op.binary.f32(i32 36, float %2274, float 3.225500e+04)  ; FMin(a,b)
  %2278 = call float @dx.op.binary.f32(i32 36, float %2275, float 3.225500e+04)  ; FMin(a,b)
  %2279 = call float @dx.op.binary.f32(i32 36, float %2240, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2276)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2277)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2278)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %2279)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2240)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2240)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2240)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2240)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!35}
!dx.entryPoints = !{!36}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !26, !29}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !22}
!22 = !{i32 0, i32 14}
!23 = !{i32 14, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!24 = !{i32 15, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!25 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!29 = !{!30, !31, !32, !33, !34}
!30 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!34 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!35 = !{[30 x i32] [i32 28, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 1, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
!36 = !{void ()* @ps_main, !"ps_main", !37, !4, !61}
!37 = !{!38, !57, null}
!38 = !{!39, !42, !43, !45, !48, !50, !52, !54, !56}
!39 = !{i32 0, !"SV_Position", i8 9, i8 3, !40, i8 4, i32 1, i8 4, i32 0, i8 0, !41}
!40 = !{i32 0}
!41 = !{i32 3, i32 15}
!42 = !{i32 1, !"COLOR", i8 9, i8 0, !40, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!43 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 2, i8 0, !44}
!44 = !{i32 3, i32 3}
!45 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 3, i8 0, !47}
!46 = !{i32 3}
!47 = !{i32 3, i32 7}
!48 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 3, i32 4, i8 0, !47}
!49 = !{i32 5}
!50 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 5, i8 0, null}
!51 = !{i32 8}
!52 = !{i32 6, !"COLOR", i8 5, i8 0, !46, i8 1, i32 1, i8 3, i32 6, i8 0, !53}
!53 = !{i32 3, i32 1}
!54 = !{i32 7, !"COLOR", i8 5, i8 0, !55, i8 1, i32 1, i8 1, i32 6, i8 3, null}
!55 = !{i32 4}
!56 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !40, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!57 = !{!58, !59}
!58 = !{i32 0, !"SV_Target", i8 9, i8 16, !40, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!59 = !{i32 1, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 1, i8 0, !41}
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

