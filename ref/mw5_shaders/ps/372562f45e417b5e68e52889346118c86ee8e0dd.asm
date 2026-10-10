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
; shader hash: ba859c715334e01baa6fc2839716395c
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = alloca [3 x float], align 4
  %39 = alloca [3 x float], align 4
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = fmul fast float %43, %34
  %45 = fmul fast float %43, %35
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %49 = fmul fast float %44, 2.000000e+00
  %50 = fmul fast float %49, %47
  %51 = fmul fast float %45, 2.000000e+00
  %52 = fmul fast float %51, %48
  %53 = fsub fast float 1.000000e+00, %50
  %54 = fsub fast float 1.000000e+00, %52
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = fmul fast float %53, %56
  %60 = fmul fast float %53, %57
  %61 = fmul fast float %53, %58
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fmul fast float %54, %63
  %67 = fmul fast float %54, %64
  %68 = fmul fast float %54, %65
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = fadd fast float %66, %70
  %74 = fadd fast float %73, %59
  %75 = fadd fast float %67, %71
  %76 = fadd fast float %75, %60
  %77 = fadd fast float %68, %72
  %78 = fadd fast float %77, %61
  %79 = fmul fast float %74, %37
  %80 = fmul fast float %76, %37
  %81 = fmul fast float %78, %37
  %82 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.i32 %82, 3
  %84 = and i32 %83, 3
  %85 = icmp ne i32 %84, 0
  %86 = and i32 %83, 4
  %87 = icmp ne i32 %86, 0
  %88 = and i1 %85, %87
  br i1 %88, label %89, label %98

; <label>:89                                      ; preds = %0
  %90 = fmul fast float %48, %45
  %91 = fmul fast float %47, %44
  %92 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %91, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = fsub fast float 1.000000e+00, %93
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = fcmp fast olt float %94, %96
  br label %101

; <label>:98                                      ; preds = %0
  %99 = icmp eq i32 %86, 0
  %100 = and i1 %85, %99
  br label %101

; <label>:101                                     ; preds = %98, %89
  %102 = phi i1 [ %97, %89 ], [ %100, %98 ]
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 3
  %106 = fmul fast float %104, %44
  %107 = fmul fast float %105, %45
  %108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.i32 %108, 0
  %110 = and i32 %109, 114688
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %111, float %106, float 0.000000e+00
  %113 = select i1 %111, float %107, float 0.000000e+00
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %112, float %113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fmul fast float %115, 2.550000e+02
  %117 = fptoui float %116 to i32
  %118 = select i1 %111, i32 %117, i32 0
  %119 = mul i32 %21, 208
  %120 = add i32 %119, 188
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = and i32 %83, 114688
  %124 = and i32 %83, 8
  %125 = icmp ne i32 %124, 0
  %126 = or i1 %102, %125
  %127 = select i1 %126, i32 %123, i32 16384
  %128 = and i32 %127, %122
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

; <label>:130                                     ; preds = %101
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %131

; <label>:131                                     ; preds = %130, %101
  %132 = and i32 %122, 512
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %158, label %134

; <label>:134                                     ; preds = %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %138 = fmul fast float %136, %44
  %139 = fmul fast float %137, %45
  %140 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %142 = fdiv fast float %140, %141
  %143 = fcmp fast ogt float %142, 0x3FFC71C720000000
  br i1 %143, label %144, label %150

; <label>:144                                     ; preds = %134
  %145 = fdiv fast float 0x3FFC71C720000000, %142
  %146 = fmul fast float %145, %139
  %147 = fsub fast float 1.000000e+00, %145
  %148 = fmul fast float %147, 5.000000e-01
  %149 = fadd fast float %148, %146
  br label %158

; <label>:150                                     ; preds = %134
  %151 = fcmp fast olt float %142, 0x3FFC71C720000000
  br i1 %151, label %152, label %158

; <label>:152                                     ; preds = %150
  %153 = fmul fast float %138, 5.625000e-01
  %154 = fmul fast float %153, %142
  %155 = fmul fast float %142, 2.812500e-01
  %156 = fsub fast float 5.000000e-01, %155
  %157 = fadd fast float %156, %154
  br label %158

; <label>:158                                     ; preds = %152, %150, %144, %131
  %159 = phi float [ %28, %131 ], [ %138, %144 ], [ %157, %152 ], [ %138, %150 ]
  %160 = phi float [ %29, %131 ], [ %149, %144 ], [ %139, %152 ], [ %139, %150 ]
  %161 = and i32 %122, 16
  %162 = icmp ne i32 %161, 0
  %163 = select i1 %162, float 1.000000e+00, float %33
  %164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %165 = extractvalue %dx.types.ResRet.i32 %164, 0
  %166 = add i32 %165, 0
  %167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %170 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %167, %dx.types.Handle %41, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float %169, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = fmul fast float %171, %163
  %173 = icmp eq i32 %161, 0
  br i1 %173, label %193, label %174, !dx.controlflow.hints !60

; <label>:174                                     ; preds = %158
  %175 = add i32 %119, 64
  %176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fadd fast float %177, 1.000000e+00
  %179 = fmul fast float %178, %33
  %180 = fsub fast float %179, %177
  %181 = fsub fast float %178, %180
  %182 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %183 = fsub fast float 1.000000e+00, %179
  %184 = call float @dx.op.unary.f32(i32 7, float %183)  ; Saturate(value)
  %185 = fsub fast float %182, %184
  %186 = fsub fast float %172, %184
  %187 = fdiv fast float %186, %185
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %189 = fmul fast float %188, 2.000000e+00
  %190 = fsub fast float 3.000000e+00, %189
  %191 = fmul fast float %188, %188
  %192 = fmul fast float %191, %190
  br label %193

; <label>:193                                     ; preds = %174, %158
  %194 = phi float [ %192, %174 ], [ %172, %158 ]
  %195 = fcmp fast ogt float %194, 0.000000e+00
  br i1 %195, label %197, label %196

; <label>:196                                     ; preds = %193
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %197

; <label>:197                                     ; preds = %196, %193
  %198 = call float @dx.op.unary.f32(i32 7, float %194)  ; Saturate(value)
  %199 = fmul fast float %44, 5.000000e-01
  %200 = fmul fast float %45, 5.000000e-01
  %201 = fptosi float %199 to i32
  %202 = fptosi float %200 to i32
  %203 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %201, i32 %202, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = lshr i32 %204, 18
  %206 = uitofp i32 %205 to float
  %207 = fmul fast float %206, 0x3F4C00EBA0000000
  %208 = call float @dx.op.unary.f32(i32 21, float %207)  ; Exp(value)
  %209 = fadd fast float %208, -1.000000e+00
  %210 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %211 = extractvalue %dx.types.Dimensions %210, 0
  %212 = sitofp i32 %211 to float
  %213 = extractvalue %dx.types.Dimensions %210, 1
  %214 = sitofp i32 %213 to float
  %215 = fcmp fast oge float %199, %212
  %216 = fcmp fast oge float %200, %214
  %217 = or i1 %215, %216
  %218 = select i1 %217, float 0x4197782600000000, float %209
  %219 = fsub fast float %218, %37
  %220 = fcmp fast ogt float %219, 0.000000e+00
  %221 = and i32 %118, -2
  %222 = icmp eq i32 %221, 2
  %223 = and i1 %222, %220
  %224 = xor i1 %220, true
  %225 = icmp eq i32 %118, 1
  %226 = and i1 %225, %224
  %227 = or i1 %223, %226
  %228 = and i32 %122, 262144
  %229 = icmp ne i32 %228, 0
  %230 = and i1 %229, %227
  %231 = xor i1 %227, true
  %232 = and i32 %122, 131072
  %233 = icmp ne i32 %232, 0
  %234 = and i1 %233, %231
  %235 = or i1 %230, %234
  br i1 %235, label %236, label %237

; <label>:236                                     ; preds = %197
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %237

; <label>:237                                     ; preds = %236, %197
  %238 = and i32 %122, 32
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %478, label %240, !dx.controlflow.hints !61

; <label>:240                                     ; preds = %237
  %241 = add i32 %119, 80
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = extractvalue %dx.types.ResRet.f32 %242, 3
  %247 = add i32 %119, 96
  %248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = extractvalue %dx.types.ResRet.f32 %248, 1
  %251 = extractvalue %dx.types.ResRet.f32 %248, 2
  %252 = add i32 %119, 112
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = extractvalue %dx.types.ResRet.f32 %253, 3
  %258 = add i32 %119, 128
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = extractvalue %dx.types.ResRet.f32 %259, 1
  %262 = extractvalue %dx.types.ResRet.f32 %259, 2
  %263 = extractvalue %dx.types.ResRet.f32 %259, 3
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 4096
  %267 = icmp ne i32 %266, 0
  %268 = fcmp fast une float %251, 0.000000e+00
  %269 = and i32 %265, 64
  %270 = icmp ne i32 %269, 0
  %271 = and i32 %265, 128
  %272 = icmp eq i32 %271, 0
  %273 = and i32 %265, 2048
  %274 = icmp eq i32 %273, 0
  %275 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %276 = extractvalue %dx.types.Dimensions %275, 0
  %277 = sitofp i32 %276 to float
  %278 = extractvalue %dx.types.Dimensions %275, 1
  %279 = sitofp i32 %278 to float
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %282 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %283 = fmul fast float %281, %44
  %284 = fmul fast float %282, %45
  %285 = fmul fast float %283, %277
  %286 = fmul fast float %284, %279
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 1
  %289 = fsub fast float -0.000000e+00, %288
  %290 = fptoui float %289 to i32
  %291 = fptoui float %285 to i32
  %292 = fptoui float %286 to i32
  %293 = and i32 %290, 31
  %294 = lshr i32 %291, %293
  %295 = lshr i32 %292, %293
  %296 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %290, i32 %294, i32 %295, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = fcmp fast ogt float %297, -1.000000e+00
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %301 = select i1 %298, float %300, float 1.000000e+00
  %302 = fadd fast float %297, 1.000000e+00
  %303 = fmul fast float %301, %302
  %304 = call float @dx.op.unary.f32(i32 6, float %303)  ; FAbs(value)
  %305 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %306 = fcmp fast oge float %304, %305
  %307 = select i1 %306, float 0x4197782600000000, float %304
  br i1 %274, label %378, label %308, !dx.controlflow.hints !62

; <label>:308                                     ; preds = %240
  %309 = fmul fast float %49, %281
  %310 = fmul fast float %51, %282
  %311 = fsub fast float 1.000000e+00, %309
  %312 = fsub fast float 1.000000e+00, %310
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %316 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %317 = fmul fast float %311, %314
  %318 = fmul fast float %311, %315
  %319 = fmul fast float %311, %316
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %324 = fmul fast float %312, %321
  %325 = fmul fast float %312, %322
  %326 = fmul fast float %312, %323
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = fadd fast float %324, %328
  %332 = fadd fast float %331, %317
  %333 = fadd fast float %325, %329
  %334 = fadd fast float %333, %318
  %335 = fadd fast float %326, %330
  %336 = fadd fast float %335, %319
  %337 = fmul fast float %332, %307
  %338 = fmul fast float %334, %307
  %339 = fmul fast float %336, %307
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %344 = fadd fast float %337, %341
  %345 = fadd fast float %338, %342
  %346 = fadd fast float %339, %343
  %347 = call float @dx.op.dot3.f32(i32 55, float %344, float %345, float %346, float %344, float %345, float %346)  ; Dot3(ax,ay,az,bx,by,bz)
  %348 = fsub fast float 1.000000e+00, %347
  %349 = fcmp fast olt float %348, %250
  %350 = fcmp fast ogt float %348, %249
  %351 = or i1 %349, %350
  %352 = select i1 %351, float 0.000000e+00, float %348
  %353 = fsub fast float %249, %250
  %354 = fsub fast float %352, %250
  %355 = fdiv fast float %354, %353
  %356 = call float @dx.op.unary.f32(i32 7, float %355)  ; Saturate(value)
  %357 = fmul fast float %356, 2.000000e+00
  %358 = fsub fast float 3.000000e+00, %357
  %359 = fmul fast float %356, %356
  %360 = fmul fast float %359, %358
  %361 = fmul fast float %254, %30
  %362 = fmul fast float %255, %31
  %363 = fmul fast float %256, %32
  %364 = fsub fast float %361, %260
  %365 = fsub fast float %362, %261
  %366 = fsub fast float %363, %262
  %367 = fsub fast float %257, %263
  %368 = fmul fast float %360, %364
  %369 = fmul fast float %360, %365
  %370 = fmul fast float %360, %366
  %371 = fmul fast float %360, %367
  %372 = fadd fast float %368, %260
  %373 = fadd fast float %369, %261
  %374 = fadd fast float %370, %262
  %375 = fadd fast float %371, %263
  %376 = fmul fast float %243, %243
  %377 = fmul fast float %376, %352
  br label %469

; <label>:378                                     ; preds = %240
  %379 = and i32 %265, 256
  %380 = icmp eq i32 %379, 0
  %381 = fsub fast float %307, %37
  br i1 %380, label %430, label %382

; <label>:382                                     ; preds = %378
  %383 = fadd fast float %249, %37
  %384 = fcmp fast olt float %307, %37
  %385 = fcmp fast ogt float %307, %383
  %386 = or i1 %384, %385
  %387 = select i1 %386, float 0.000000e+00, float %381
  %388 = call float @dx.op.unary.f32(i32 83, float %307)  ; DerivCoarseX(value)
  %389 = call float @dx.op.unary.f32(i32 84, float %307)  ; DerivCoarseY(value)
  %390 = fmul fast float %388, %388
  %391 = fmul fast float %389, %389
  %392 = fadd fast float %391, %390
  %393 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %394 = extractvalue %dx.types.CBufRet.f32 %287, 2
  %395 = fmul fast float %394, %393
  %396 = call float @dx.op.unary.f32(i32 7, float %395)  ; Saturate(value)
  %397 = fmul fast float %396, %250
  %398 = fdiv fast float %381, %397
  %399 = call float @dx.op.unary.f32(i32 7, float %398)  ; Saturate(value)
  %400 = fmul fast float %399, 2.000000e+00
  %401 = fsub fast float 3.000000e+00, %400
  %402 = fmul fast float %399, %399
  %403 = fmul fast float %402, %401
  %404 = fsub fast float %307, %383
  %405 = fadd fast float %404, %397
  %406 = fdiv fast float %405, %397
  %407 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %408 = fmul fast float %407, 2.000000e+00
  %409 = fsub fast float 3.000000e+00, %408
  %410 = fmul fast float %407, %407
  %411 = fmul fast float %410, %409
  %412 = fsub fast float %403, %411
  %413 = fmul fast float %254, %30
  %414 = fmul fast float %255, %31
  %415 = fmul fast float %256, %32
  %416 = fsub fast float %413, %260
  %417 = fsub fast float %414, %261
  %418 = fsub fast float %415, %262
  %419 = fsub fast float %257, %263
  %420 = fmul fast float %412, %416
  %421 = fmul fast float %412, %417
  %422 = fmul fast float %412, %418
  %423 = fmul fast float %412, %419
  %424 = fadd fast float %420, %260
  %425 = fadd fast float %421, %261
  %426 = fadd fast float %422, %262
  %427 = fadd fast float %423, %263
  %428 = fmul fast float %387, %243
  %429 = call float @dx.op.unary.f32(i32 6, float %428)  ; FAbs(value)
  br label %469

; <label>:430                                     ; preds = %378
  br i1 %268, label %431, label %442

; <label>:431                                     ; preds = %430
  %432 = select i1 %270, float 5.000000e+01, float 1.000000e+00
  %433 = fmul fast float %432, %243
  %434 = fmul fast float %28, 2.000000e+00
  %435 = fmul fast float %29, 2.000000e+00
  %436 = fadd fast float %434, -1.000000e+00
  %437 = fadd fast float %435, -1.000000e+00
  %438 = call float @dx.op.dot2.f32(i32 54, float %436, float %437, float %436, float %437)  ; Dot2(ax,ay,bx,by)
  %439 = fmul fast float %438, %251
  %440 = fsub fast float %381, %439
  %441 = fmul fast float %433, %440
  br label %469

; <label>:442                                     ; preds = %430
  br i1 %272, label %462, label %443

; <label>:443                                     ; preds = %442
  %444 = select i1 %270, float 0x3F947AE140000000, float 1.000000e+00
  %445 = fdiv fast float 1.000000e+00, %444
  %446 = fmul fast float %444, %244
  %447 = fmul fast float %444, %245
  %448 = fmul fast float %445, %246
  %449 = call float @dx.op.unary.f32(i32 6, float %381)  ; FAbs(value)
  %450 = fcmp fast olt float %449, %446
  br i1 %450, label %451, label %455, !dx.controlflow.hints !63

; <label>:451                                     ; preds = %443
  %452 = fmul fast float %445, %243
  %453 = fmul fast float %452, %449
  %454 = call float @dx.op.unary.f32(i32 6, float %453)  ; FAbs(value)
  br label %469

; <label>:455                                     ; preds = %443
  %456 = fcmp fast ogt float %449, %447
  br i1 %456, label %457, label %469

; <label>:457                                     ; preds = %455
  %458 = fsub fast float %449, %447
  %459 = fmul fast float %448, %458
  %460 = call float @dx.op.unary.f32(i32 6, float %459)  ; FAbs(value)
  %461 = fsub fast float 1.000000e+00, %460
  br label %469

; <label>:462                                     ; preds = %442
  %463 = select i1 %270, float 5.000000e+01, float 1.000000e+00
  %464 = fmul fast float %463, %243
  %465 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %466 = select i1 %267, float %465, float 0x47EFFFFFE0000000
  %467 = call float @dx.op.binary.f32(i32 36, float %381, float %466)  ; FMin(a,b)
  %468 = fmul fast float %464, %467
  br label %469

; <label>:469                                     ; preds = %462, %457, %455, %451, %431, %382, %308
  %470 = phi float [ %377, %308 ], [ %429, %382 ], [ %441, %431 ], [ %468, %462 ], [ %454, %451 ], [ %461, %457 ], [ %449, %455 ]
  %471 = phi float [ %372, %308 ], [ %424, %382 ], [ %30, %431 ], [ %30, %462 ], [ %30, %451 ], [ %30, %457 ], [ %30, %455 ]
  %472 = phi float [ %373, %308 ], [ %425, %382 ], [ %31, %431 ], [ %31, %462 ], [ %31, %451 ], [ %31, %457 ], [ %31, %455 ]
  %473 = phi float [ %374, %308 ], [ %426, %382 ], [ %32, %431 ], [ %32, %462 ], [ %32, %451 ], [ %32, %457 ], [ %32, %455 ]
  %474 = phi float [ %375, %308 ], [ %427, %382 ], [ 1.000000e+00, %431 ], [ 1.000000e+00, %462 ], [ 1.000000e+00, %451 ], [ 1.000000e+00, %457 ], [ 1.000000e+00, %455 ]
  %475 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %476 = fmul fast float %474, %198
  %477 = fmul fast float %476, %475
  br label %478

; <label>:478                                     ; preds = %469, %237
  %479 = phi float [ %471, %469 ], [ %30, %237 ]
  %480 = phi float [ %472, %469 ], [ %31, %237 ]
  %481 = phi float [ %473, %469 ], [ %32, %237 ]
  %482 = phi float [ %477, %469 ], [ %198, %237 ]
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %485 = fptosi float %37 to i32
  %486 = sitofp i32 %485 to float
  %487 = fadd fast float %484, %486
  %488 = fmul fast float %487, 0x3FE3C6EF40000000
  %489 = frem fast float %44, 2.560000e+02
  %490 = frem fast float %45, 2.560000e+02
  %491 = fptoui float %489 to i32
  %492 = fptoui float %490 to i32
  %493 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %491, i32 %492, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = fadd fast float %494, %488
  %496 = call float @dx.op.unary.f32(i32 22, float %495)  ; Frc(value)
  %497 = and i32 %122, 1
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %555, label %499, !dx.controlflow.hints !64

; <label>:499                                     ; preds = %478
  %500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 2
  %502 = extractvalue %dx.types.ResRet.f32 %500, 3
  %503 = add i32 %119, 16
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = add i32 %119, 32
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = and i32 %122, 2
  %514 = icmp eq i32 %513, 0
  %515 = call float @dx.op.dot3.f32(i32 55, float %25, float %26, float %27, float %25, float %26, float %27)  ; Dot3(ax,ay,az,bx,by,bz)
  %516 = call float @dx.op.unary.f32(i32 25, float %515)  ; Rsqrt(value)
  %517 = fmul fast float %516, %25
  %518 = fmul fast float %516, %26
  %519 = fmul fast float %516, %27
  %520 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = call float @dx.op.unary.f32(i32 25, float %520)  ; Rsqrt(value)
  %522 = fmul fast float %521, %79
  %523 = fmul fast float %521, %80
  %524 = fmul fast float %521, %81
  %525 = call float @dx.op.dot3.f32(i32 55, float %522, float %523, float %524, float %517, float %518, float %519)  ; Dot3(ax,ay,az,bx,by,bz)
  %526 = fmul fast float %525, %525
  %527 = fmul fast float %526, %501
  %528 = fadd fast float %527, %502
  %529 = call float @dx.op.unary.f32(i32 7, float %528)  ; Saturate(value)
  br i1 %514, label %530, label %540, !dx.controlflow.hints !65

; <label>:530                                     ; preds = %499
  %531 = extractvalue %dx.types.ResRet.f32 %500, 1
  %532 = extractvalue %dx.types.ResRet.f32 %500, 0
  %533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.f32 %533, 3
  %535 = fmul fast float %534, %520
  %536 = fsub fast float %532, %535
  %537 = fmul fast float %536, %531
  %538 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %539 = fmul fast float %538, %529
  br label %540

; <label>:540                                     ; preds = %530, %499
  %541 = phi float [ %539, %530 ], [ %529, %499 ]
  %542 = fsub fast float %505, %510
  %543 = fsub fast float %506, %511
  %544 = fsub fast float %507, %512
  %545 = fmul fast float %541, %542
  %546 = fmul fast float %541, %543
  %547 = fmul fast float %541, %544
  %548 = fadd fast float %545, %510
  %549 = fadd fast float %546, %511
  %550 = fadd fast float %547, %512
  %551 = fmul fast float %548, %479
  %552 = fmul fast float %549, %480
  %553 = fmul fast float %550, %481
  %554 = fmul fast float %541, %482
  br label %555

; <label>:555                                     ; preds = %540, %478
  %556 = phi float [ %551, %540 ], [ %479, %478 ]
  %557 = phi float [ %552, %540 ], [ %480, %478 ]
  %558 = phi float [ %553, %540 ], [ %481, %478 ]
  %559 = phi float [ %554, %540 ], [ %482, %478 ]
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = add i32 %561, 0
  %563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %562, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %563, %dx.types.Handle %40, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = extractvalue %dx.types.ResRet.f32 %566, 1
  %569 = extractvalue %dx.types.ResRet.f32 %566, 2
  %570 = extractvalue %dx.types.ResRet.f32 %566, 3
  %571 = and i32 %565, 255
  %572 = uitofp i32 %571 to float
  %573 = lshr i32 %565, 8
  %574 = and i32 %573, 255
  %575 = uitofp i32 %574 to float
  %576 = fmul fast float %570, %572
  %577 = fadd fast float %576, %575
  %578 = fmul fast float %577, 0x3F70101000000000
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = and i32 %580, 255
  %582 = uitofp i32 %581 to float
  %583 = fmul fast float %582, 0x3F70101020000000
  %584 = lshr i32 %580, 8
  %585 = and i32 %584, 255
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %586, 0x3F70101020000000
  %588 = lshr i32 %580, 16
  %589 = and i32 %588, 255
  %590 = uitofp i32 %589 to float
  %591 = fmul fast float %590, 0x3F70101020000000
  %592 = fadd fast float %578, 0xBFB99999A0000000
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  %594 = fmul fast float %593, 0x3FF1C71C80000000
  %595 = fsub fast float 1.000000e+00, %594
  %596 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  %597 = fmul fast float %567, %556
  %598 = fmul fast float %597, %596
  %599 = fmul fast float %583, %583
  %600 = fmul fast float %599, %598
  %601 = fmul fast float %568, %557
  %602 = fmul fast float %601, %596
  %603 = fmul fast float %587, %587
  %604 = fmul fast float %603, %602
  %605 = fmul fast float %569, %558
  %606 = fmul fast float %605, %596
  %607 = fmul fast float %591, %591
  %608 = fmul fast float %607, %606
  %609 = call float @dx.op.unary.f32(i32 7, float %600)  ; Saturate(value)
  %610 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  %611 = call float @dx.op.unary.f32(i32 7, float %608)  ; Saturate(value)
  %612 = call float @dx.op.dot3.f32(i32 55, float %609, float %610, float %611, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = lshr i32 %614, 8
  %618 = and i32 %617, 255
  %619 = uitofp i32 %618 to float
  %620 = fmul fast float %619, %612
  %621 = fadd fast float %620, %616
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %624 = and i32 %122, 8192
  %625 = icmp eq i32 %624, 0
  %626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.f32 %626, 0
  br i1 %625, label %634, label %628, !dx.controlflow.hints !66

; <label>:628                                     ; preds = %555
  %629 = add i32 %119, 176
  %630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.f32 %630, 0
  %632 = fcmp fast oge float %631, 0.000000e+00
  %633 = select i1 %632, float %631, float %627
  br label %634

; <label>:634                                     ; preds = %628, %555
  %635 = phi float [ %633, %628 ], [ %627, %555 ]
  %636 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %201, i32 %202, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = lshr i32 %637, 18
  %639 = uitofp i32 %638 to float
  %640 = fmul fast float %639, 0x3F4C00EBA0000000
  %641 = call float @dx.op.unary.f32(i32 21, float %640)  ; Exp(value)
  %642 = fadd fast float %641, -1.000000e+00
  %643 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %644 = extractvalue %dx.types.Dimensions %643, 0
  %645 = sitofp i32 %644 to float
  %646 = extractvalue %dx.types.Dimensions %643, 1
  %647 = sitofp i32 %646 to float
  %648 = fcmp fast oge float %199, %645
  %649 = fcmp fast oge float %200, %647
  %650 = or i1 %648, %649
  %651 = select i1 %650, float 0x4197782600000000, float %642
  %652 = fmul fast float %559, %22
  %653 = fmul fast float %559, %23
  %654 = fmul fast float %559, %24
  %655 = fsub fast float 1.000000e+00, %559
  %656 = call float @dx.op.dot3.f32(i32 55, float %655, float %655, float %655, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = fsub fast float 1.000000e+00, %656
  %658 = fmul fast float %635, %623
  %659 = fsub fast float 1.000000e+00, %623
  %660 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 3
  %663 = fmul fast float %662, %660
  %664 = fadd fast float %663, %658
  %665 = and i32 %122, 2097152
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %671, label %667, !dx.controlflow.hints !67

; <label>:667                                     ; preds = %634
  %668 = add i32 %119, 192
  %669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  br label %674

; <label>:671                                     ; preds = %634
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 3
  br label %674

; <label>:674                                     ; preds = %671, %667
  %675 = phi float [ %670, %667 ], [ %673, %671 ]
  %676 = fmul fast float %652, %609
  %677 = fmul fast float %653, %610
  %678 = fmul fast float %654, %611
  %679 = icmp eq i32 %118, 3
  %680 = fcmp fast ogt float %37, %651
  %681 = and i1 %225, %680
  %682 = or i1 %679, %681
  %683 = icmp eq i32 %118, 2
  %684 = fcmp fast ole float %37, %651
  %685 = and i1 %683, %684
  %686 = or i1 %685, %682
  br i1 %681, label %687, label %824

; <label>:687                                     ; preds = %674
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 2
  %690 = extractvalue %dx.types.CBufRet.f32 %688, 3
  %691 = fmul fast float %689, %44
  %692 = fmul fast float %690, %45
  %693 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %694 = call float @dx.op.unary.f32(i32 7, float %692)  ; Saturate(value)
  %695 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %693, float %694, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = extractvalue %dx.types.ResRet.f32 %695, 1
  %698 = extractvalue %dx.types.ResRet.f32 %695, 2
  %699 = extractvalue %dx.types.ResRet.f32 %695, 3
  %700 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %693, float %694, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %701 = extractvalue %dx.types.ResRet.f32 %700, 0
  %702 = extractvalue %dx.types.ResRet.f32 %700, 1
  %703 = extractvalue %dx.types.ResRet.f32 %700, 2
  %704 = extractvalue %dx.types.ResRet.f32 %700, 3
  %705 = call float @dx.op.binary.f32(i32 35, float %697, float %698)  ; FMax(a,b)
  %706 = call float @dx.op.binary.f32(i32 35, float %696, float %705)  ; FMax(a,b)
  %707 = call float @dx.op.binary.f32(i32 35, float %706, float %699)  ; FMax(a,b)
  %708 = call float @dx.op.binary.f32(i32 36, float %702, float %703)  ; FMin(a,b)
  %709 = call float @dx.op.binary.f32(i32 36, float %701, float %708)  ; FMin(a,b)
  %710 = call float @dx.op.binary.f32(i32 36, float %709, float %704)  ; FMin(a,b)
  %711 = fmul fast float %707, 2.550000e+02
  %712 = fadd fast float %711, 0x3F70101020000000
  %713 = fptoui float %712 to i32
  %714 = fmul fast float %710, 2.550000e+02
  %715 = fadd fast float %714, 0x3F70101020000000
  %716 = fptoui float %715 to i32
  %717 = icmp ult i32 %713, %716
  br i1 %717, label %718, label %769

; <label>:718                                     ; preds = %687
  %719 = fcmp fast ogt float %36, 9.843750e-01
  %720 = fadd fast float %37, -4.000000e+00
  %721 = select i1 %719, float -4.000000e+00, float %720
  %722 = call float @dx.op.binary.f32(i32 35, float %721, float 0.000000e+00)  ; FMax(a,b)
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 0
  %725 = fadd fast float %724, %722
  %726 = extractvalue %dx.types.CBufRet.f32 %723, 2
  %727 = fmul fast float %725, %726
  %728 = call float @dx.op.unary.f32(i32 23, float %727)  ; Log(value)
  %729 = extractvalue %dx.types.CBufRet.f32 %723, 3
  %730 = fmul fast float %729, %728
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 2
  %733 = fmul fast float %730, %732
  %734 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %735 = uitofp i32 %713 to float
  %736 = uitofp i32 %716 to float
  %737 = fadd fast float %735, 5.000000e-01
  %738 = fadd fast float %736, 5.000000e-01
  %739 = fmul fast float %732, %737
  %740 = fmul fast float %732, %738
  %741 = fadd fast float %739, 0x3F0FFB4800000000
  %742 = fadd fast float %740, 0xBF0FFB4800000000
  %743 = call float @dx.op.binary.f32(i32 35, float %734, float %741)  ; FMax(a,b)
  %744 = call float @dx.op.binary.f32(i32 36, float %743, float %742)  ; FMin(a,b)
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 1
  %747 = extractvalue %dx.types.CBufRet.f32 %745, 2
  %748 = extractvalue %dx.types.CBufRet.f32 %745, 0
  %749 = fmul fast float %746, %744
  %750 = fadd fast float %748, %749
  %751 = fadd fast float %748, %747
  %752 = fsub fast float %746, %747
  %753 = fadd fast float %752, %748
  %754 = call float @dx.op.binary.f32(i32 35, float %750, float %751)  ; FMax(a,b)
  %755 = call float @dx.op.binary.f32(i32 36, float %754, float %753)  ; FMin(a,b)
  %756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %693, float %694, float %755, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  %758 = extractvalue %dx.types.ResRet.f32 %756, 1
  %759 = extractvalue %dx.types.ResRet.f32 %756, 2
  %760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %693, float %694, float %755, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = extractvalue %dx.types.ResRet.f32 %760, 1
  %763 = extractvalue %dx.types.ResRet.f32 %760, 2
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 1
  %766 = fmul fast float %765, %761
  %767 = fmul fast float %765, %762
  %768 = fmul fast float %765, %763
  br label %769

; <label>:769                                     ; preds = %718, %687
  %770 = phi float [ %757, %718 ], [ 1.000000e+00, %687 ]
  %771 = phi float [ %758, %718 ], [ 1.000000e+00, %687 ]
  %772 = phi float [ %759, %718 ], [ 1.000000e+00, %687 ]
  %773 = phi float [ %766, %718 ], [ 0.000000e+00, %687 ]
  %774 = phi float [ %767, %718 ], [ 0.000000e+00, %687 ]
  %775 = phi float [ %768, %718 ], [ 0.000000e+00, %687 ]
  %776 = fmul fast float %773, %657
  %777 = fmul fast float %774, %657
  %778 = fmul fast float %775, %657
  %779 = call float @dx.op.dot3.f32(i32 55, float %770, float %771, float %772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %780 = call float @dx.op.dot3.f32(i32 55, float %776, float %777, float %778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %781 = select i1 %102, float %779, float %770
  %782 = select i1 %102, float %779, float %771
  %783 = select i1 %102, float 1.000000e+00, float %772
  %784 = select i1 %102, float %780, float %776
  %785 = select i1 %102, float 0.000000e+00, float %777
  %786 = select i1 %102, float 0.000000e+00, float %778
  %787 = fmul fast float %781, %676
  %788 = fmul fast float %782, %677
  %789 = fmul fast float %783, %678
  %790 = fadd fast float %787, %784
  %791 = fadd fast float %788, %785
  %792 = fadd fast float %786, %789
  %793 = fmul fast float %49, %689
  %794 = fmul fast float %51, %690
  %795 = fsub fast float 1.000000e+00, %793
  %796 = fsub fast float 1.000000e+00, %794
  %797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %798 = extractvalue %dx.types.CBufRet.f32 %797, 0
  %799 = extractvalue %dx.types.CBufRet.f32 %797, 1
  %800 = extractvalue %dx.types.CBufRet.f32 %797, 2
  %801 = fmul fast float %795, %798
  %802 = fmul fast float %795, %799
  %803 = fmul fast float %795, %800
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = extractvalue %dx.types.CBufRet.f32 %804, 1
  %807 = extractvalue %dx.types.CBufRet.f32 %804, 2
  %808 = fmul fast float %796, %805
  %809 = fmul fast float %796, %806
  %810 = fmul fast float %796, %807
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 0
  %813 = extractvalue %dx.types.CBufRet.f32 %811, 1
  %814 = extractvalue %dx.types.CBufRet.f32 %811, 2
  %815 = fadd fast float %808, %812
  %816 = fadd fast float %815, %801
  %817 = fadd fast float %809, %813
  %818 = fadd fast float %817, %802
  %819 = fadd fast float %810, %814
  %820 = fadd fast float %819, %803
  %821 = fmul fast float %816, %651
  %822 = fmul fast float %818, %651
  %823 = fmul fast float %820, %651
  br label %824

; <label>:824                                     ; preds = %769, %674
  %825 = phi float [ %821, %769 ], [ %79, %674 ]
  %826 = phi float [ %822, %769 ], [ %80, %674 ]
  %827 = phi float [ %823, %769 ], [ %81, %674 ]
  %828 = phi float [ %651, %769 ], [ %37, %674 ]
  %829 = phi float [ %790, %769 ], [ %676, %674 ]
  %830 = phi float [ %791, %769 ], [ %677, %674 ]
  %831 = phi float [ %792, %769 ], [ %678, %674 ]
  %832 = phi float [ %770, %769 ], [ 1.000000e+00, %674 ]
  br i1 %686, label %1982, label %833

; <label>:833                                     ; preds = %824
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 0
  %836 = extractvalue %dx.types.CBufRet.f32 %834, 1
  %837 = extractvalue %dx.types.CBufRet.f32 %834, 2
  %838 = extractvalue %dx.types.CBufRet.f32 %834, 3
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 0
  %841 = extractvalue %dx.types.CBufRet.f32 %839, 1
  %842 = extractvalue %dx.types.CBufRet.f32 %839, 2
  %843 = extractvalue %dx.types.CBufRet.f32 %839, 3
  %844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %845 = extractvalue %dx.types.CBufRet.f32 %844, 0
  %846 = extractvalue %dx.types.CBufRet.f32 %844, 1
  %847 = extractvalue %dx.types.CBufRet.f32 %844, 2
  %848 = extractvalue %dx.types.CBufRet.f32 %844, 3
  %849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %850 = extractvalue %dx.types.CBufRet.f32 %849, 0
  %851 = extractvalue %dx.types.CBufRet.f32 %849, 1
  %852 = extractvalue %dx.types.CBufRet.f32 %849, 2
  %853 = extractvalue %dx.types.CBufRet.f32 %849, 3
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 3
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 3
  %858 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %859 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %860 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %861 = fcmp fast olt float %860, -5.000000e-01
  %862 = call float @dx.op.dot3.f32(i32 55, float %825, float %826, float %827, float %825, float %826, float %827)  ; Dot3(ax,ay,az,bx,by,bz)
  %863 = call float @dx.op.unary.f32(i32 25, float %862)  ; Rsqrt(value)
  %864 = fmul fast float %863, %862
  %865 = fmul fast float %863, %825
  %866 = fmul fast float %863, %826
  %867 = fmul fast float %863, %827
  %868 = fadd fast float %864, %838
  %869 = call float @dx.op.dot3.f32(i32 55, float %865, float %866, float %867, float %835, float %836, float %837)  ; Dot3(ax,ay,az,bx,by,bz)
  %870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.i32 %870, 1
  %872 = and i32 %871, 1
  %873 = icmp ne i32 %872, 0
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 2
  %876 = fcmp fast ogt float %875, 0.000000e+00
  %877 = and i1 %873, %876
  br i1 %877, label %878, label %1284, !dx.controlflow.hints !68

; <label>:878                                     ; preds = %833
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 3
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 2
  %883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.f32 %883, 2
  %885 = fsub fast float %882, %884
  %886 = and i32 %871, 2
  %887 = extractvalue %dx.types.CBufRet.i32 %870, 0
  %888 = call i32 @dx.op.binary.i32(i32 40, i32 %887, i32 3)  ; UMin(a,b)
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %891 = extractvalue %dx.types.CBufRet.f32 %889, 1
  %892 = extractvalue %dx.types.CBufRet.f32 %883, 0
  %893 = extractvalue %dx.types.CBufRet.f32 %883, 1
  %894 = fsub fast float %890, %892
  %895 = fsub fast float %891, %893
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 0
  %898 = fcmp fast ogt float %897, 0.000000e+00
  %899 = fsub fast float -0.000000e+00, %894
  %900 = fsub fast float -0.000000e+00, %895
  %901 = call float @dx.op.dot2.f32(i32 54, float %865, float %866, float %865, float %866)  ; Dot2(ax,ay,bx,by)
  %902 = call float @dx.op.dot2.f32(i32 54, float %865, float %866, float %899, float %900)  ; Dot2(ax,ay,bx,by)
  %903 = fmul fast float %902, 2.000000e+00
  %904 = call float @dx.op.dot2.f32(i32 54, float %899, float %900, float %899, float %900)  ; Dot2(ax,ay,bx,by)
  %905 = fmul fast float %897, %897
  %906 = fsub fast float %904, %905
  %907 = fmul fast float %903, %903
  %908 = fmul fast float %901, 4.000000e+00
  %909 = fmul fast float %908, %906
  %910 = fsub fast float %907, %909
  %911 = fcmp fast ogt float %910, 0.000000e+00
  br i1 %911, label %912, label %927

; <label>:912                                     ; preds = %878
  %913 = fcmp fast ogt float %903, 0.000000e+00
  %914 = call float @dx.op.unary.f32(i32 24, float %910)  ; Sqrt(value)
  %915 = fsub fast float -0.000000e+00, %914
  %916 = select i1 %913, float %914, float %915
  %917 = fadd fast float %916, %903
  %918 = fmul float %917, -5.000000e-01
  %919 = fdiv fast float %918, %901
  %920 = call float @dx.op.binary.f32(i32 35, float %919, float 0.000000e+00)  ; FMax(a,b)
  %921 = call float @dx.op.binary.f32(i32 36, float %864, float %920)  ; FMin(a,b)
  %922 = fdiv fast float %906, %918
  %923 = call float @dx.op.binary.f32(i32 35, float %922, float 0.000000e+00)  ; FMax(a,b)
  %924 = call float @dx.op.binary.f32(i32 36, float %864, float %923)  ; FMin(a,b)
  %925 = call float @dx.op.binary.f32(i32 36, float %921, float %924)  ; FMin(a,b)
  %926 = call float @dx.op.binary.f32(i32 35, float %921, float %924)  ; FMax(a,b)
  br label %927

; <label>:927                                     ; preds = %912, %878
  %928 = phi float [ %926, %912 ], [ -1.000000e+00, %878 ]
  %929 = phi float [ %925, %912 ], [ -1.000000e+00, %878 ]
  %930 = phi i1 [ true, %912 ], [ false, %878 ]
  %931 = and i1 %898, %930
  br i1 %931, label %932, label %934

; <label>:932                                     ; preds = %927
  %933 = fcmp fast oeq float %929, %928
  br i1 %933, label %1237, label %935

; <label>:934                                     ; preds = %927
  br i1 %898, label %1237, label %935

; <label>:935                                     ; preds = %934, %932
  %936 = phi float [ %864, %934 ], [ %928, %932 ]
  %937 = phi float [ 0.000000e+00, %934 ], [ %929, %932 ]
  %938 = icmp ne i32 %886, 0
  %939 = fmul fast float %936, %867
  %940 = fadd fast float %939, %880
  %941 = fmul fast float %940, %936
  %942 = select i1 %938, float 0.000000e+00, float %941
  %943 = fcmp fast oeq float %867, 0.000000e+00
  %944 = fdiv fast float %885, %867
  %945 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %944)  ; FMax(a,b)
  %946 = select i1 %943, float %936, float %945
  %947 = call float @dx.op.binary.f32(i32 36, float %936, float %946)  ; FMin(a,b)
  %948 = fcmp fast ogt float %867, 0.000000e+00
  %949 = fcmp fast olt float %885, 0.000000e+00
  br i1 %948, label %950, label %1007

; <label>:950                                     ; preds = %935
  %951 = icmp eq i32 %886, 0
  br i1 %949, label %952, label %996

; <label>:952                                     ; preds = %950
  %953 = select i1 %951, float %936, float 0.000000e+00
  %954 = fsub fast float -0.000000e+00, %953
  %955 = call float @dx.op.unary.f32(i32 6, float %954)  ; FAbs(value)
  %956 = fmul fast float %953, %867
  %957 = fadd fast float %956, %880
  %958 = fmul fast float %955, %957
  %959 = fsub fast float %942, %958
  %960 = fsub fast float %936, %955
  %961 = select i1 %951, float %960, float 0.000000e+00
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 0
  %964 = extractvalue %dx.types.CBufRet.f32 %962, 1
  %965 = extractvalue %dx.types.CBufRet.f32 %962, 2
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %969 = extractvalue %dx.types.CBufRet.f32 %966, 2
  %970 = extractvalue %dx.types.CBufRet.f32 %966, 3
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 3
  %973 = call float @dx.op.binary.f32(i32 36, float %959, float %972)  ; FMin(a,b)
  %974 = fmul fast float %970, %961
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  %976 = fsub fast float %967, %963
  %977 = fsub fast float %968, %964
  %978 = fsub fast float %969, %965
  %979 = fmul fast float %975, %976
  %980 = fmul fast float %975, %977
  %981 = fmul fast float %975, %978
  %982 = fadd fast float %979, %963
  %983 = fadd fast float %980, %964
  %984 = fadd fast float %981, %965
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 0
  %987 = extractvalue %dx.types.CBufRet.f32 %985, 1
  %988 = fadd fast float %987, %986
  %989 = call float @dx.op.unary.f32(i32 7, float %988)  ; Saturate(value)
  %990 = extractvalue %dx.types.CBufRet.f32 %985, 2
  %991 = extractvalue %dx.types.CBufRet.f32 %985, 3
  %992 = fadd fast float %991, %990
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  %994 = fmul fast float %989, %973
  %995 = fmul fast float %994, %993
  br label %1237

; <label>:996                                     ; preds = %950
  br i1 %951, label %997, label %1018

; <label>:997                                     ; preds = %996
  %998 = call float @dx.op.binary.f32(i32 36, float %947, float %937)  ; FMin(a,b)
  %999 = fsub fast float %947, %998
  %1000 = fsub fast float %999, %936
  %1001 = call float @dx.op.unary.f32(i32 6, float %1000)  ; FAbs(value)
  %1002 = fadd fast float %999, %936
  %1003 = fmul fast float %1002, %867
  %1004 = fadd fast float %1003, %880
  %1005 = fmul fast float %1004, %1001
  %1006 = fsub fast float %942, %1005
  br label %1018

; <label>:1007                                    ; preds = %935
  br i1 %949, label %1008, label %1018

; <label>:1008                                    ; preds = %1007
  %1009 = call float @dx.op.binary.f32(i32 35, float %937, float %947)  ; FMax(a,b)
  %1010 = icmp eq i32 %886, 0
  %1011 = select i1 %1010, float %947, float 0.000000e+00
  %1012 = fsub fast float -0.000000e+00, %1011
  %1013 = call float @dx.op.unary.f32(i32 6, float %1012)  ; FAbs(value)
  %1014 = fmul fast float %1011, %867
  %1015 = fadd fast float %1014, %880
  %1016 = fmul fast float %1013, %1015
  %1017 = fsub fast float %942, %1016
  br label %1018

; <label>:1018                                    ; preds = %1008, %1007, %997, %996
  %1019 = phi float [ %937, %996 ], [ %937, %997 ], [ %1009, %1008 ], [ %937, %1007 ]
  %1020 = phi float [ 0.000000e+00, %996 ], [ %1001, %997 ], [ %1013, %1008 ], [ 0.000000e+00, %1007 ]
  %1021 = phi float [ %942, %996 ], [ %1006, %997 ], [ %1017, %1008 ], [ %942, %1007 ]
  %1022 = phi float [ %947, %996 ], [ %947, %997 ], [ %936, %1008 ], [ %936, %1007 ]
  %1023 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 0
  store float -1.000000e+00, float* %1023, align 4, !tbaa !69, !noalias !73
  %1024 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 1
  store float -1.000000e+00, float* %1024, align 4, !tbaa !69, !noalias !73
  %1025 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 2
  store float -1.000000e+00, float* %1025, align 4, !tbaa !69, !noalias !73
  %1026 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 0
  store float -1.000000e+00, float* %1026, align 4, !tbaa !69, !noalias !73
  %1027 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 1
  store float -1.000000e+00, float* %1027, align 4, !tbaa !69, !noalias !73
  %1028 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 2
  store float -1.000000e+00, float* %1028, align 4, !tbaa !69, !noalias !73
  %1029 = icmp sgt i32 %888, 0
  br i1 %1029, label %1030, label %1091

; <label>:1030                                    ; preds = %1018
  br label %1031

; <label>:1031                                    ; preds = %1080, %1030
  %1032 = phi i32 [ %1081, %1080 ], [ 0, %1030 ]
  %1033 = phi i32 [ %1082, %1080 ], [ 0, %1030 ]
  %1034 = add nuw i32 %1033, 171
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1034)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.CBufRet.f32 %1035, 1
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 0
  %1040 = extractvalue %dx.types.CBufRet.f32 %1038, 1
  %1041 = fsub fast float %1036, %1039
  %1042 = fsub fast float %1037, %1040
  %1043 = extractvalue %dx.types.CBufRet.f32 %1035, 2
  %1044 = fsub fast float -0.000000e+00, %1041
  %1045 = fsub fast float -0.000000e+00, %1042
  %1046 = call float @dx.op.dot2.f32(i32 54, float %865, float %866, float %1044, float %1045)  ; Dot2(ax,ay,bx,by)
  %1047 = fmul fast float %1046, 2.000000e+00
  %1048 = call float @dx.op.dot2.f32(i32 54, float %1044, float %1045, float %1044, float %1045)  ; Dot2(ax,ay,bx,by)
  %1049 = fmul fast float %1043, %1043
  %1050 = fsub fast float %1048, %1049
  %1051 = fmul fast float %1047, %1047
  %1052 = fmul fast float %908, %1050
  %1053 = fsub fast float %1051, %1052
  %1054 = fcmp fast ogt float %1053, 0.000000e+00
  br i1 %1054, label %1055, label %1070

; <label>:1055                                    ; preds = %1031
  %1056 = fcmp fast ogt float %1047, 0.000000e+00
  %1057 = call float @dx.op.unary.f32(i32 24, float %1053)  ; Sqrt(value)
  %1058 = fsub fast float -0.000000e+00, %1057
  %1059 = select i1 %1056, float %1057, float %1058
  %1060 = fadd fast float %1059, %1047
  %1061 = fmul float %1060, -5.000000e-01
  %1062 = fdiv fast float %1061, %901
  %1063 = call float @dx.op.binary.f32(i32 35, float %1062, float 0.000000e+00)  ; FMax(a,b)
  %1064 = call float @dx.op.binary.f32(i32 36, float %936, float %1063)  ; FMin(a,b)
  %1065 = fdiv fast float %1050, %1061
  %1066 = call float @dx.op.binary.f32(i32 35, float %1065, float 0.000000e+00)  ; FMax(a,b)
  %1067 = call float @dx.op.binary.f32(i32 36, float %936, float %1066)  ; FMin(a,b)
  %1068 = call float @dx.op.binary.f32(i32 36, float %1064, float %1067)  ; FMin(a,b)
  %1069 = call float @dx.op.binary.f32(i32 35, float %1064, float %1067)  ; FMax(a,b)
  br label %1070

; <label>:1070                                    ; preds = %1055, %1031
  %1071 = phi float [ %1069, %1055 ], [ -1.000000e+00, %1031 ]
  %1072 = phi float [ %1068, %1055 ], [ -1.000000e+00, %1031 ]
  %1073 = phi i1 [ true, %1055 ], [ false, %1031 ]
  br i1 %1073, label %1074, label %1080

; <label>:1074                                    ; preds = %1070
  %1075 = call float @dx.op.binary.f32(i32 35, float %1019, float %1072)  ; FMax(a,b)
  %1076 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %1033
  store float %1075, float* %1076, align 4, !tbaa !69, !noalias !73
  %1077 = call float @dx.op.binary.f32(i32 35, float %1019, float %1071)  ; FMax(a,b)
  %1078 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1033
  store float %1077, float* %1078, align 4, !tbaa !69, !noalias !73
  %1079 = add nsw i32 %1032, 1
  br label %1080

; <label>:1080                                    ; preds = %1074, %1070
  %1081 = phi i32 [ %1079, %1074 ], [ %1032, %1070 ]
  %1082 = add nuw nsw i32 %1033, 1
  %1083 = icmp eq i32 %1082, %888
  br i1 %1083, label %1084, label %1031

; <label>:1084                                    ; preds = %1080
  %1085 = load float, float* %1025, align 4, !tbaa !69, !alias.scope !89, !noalias !92
  %1086 = load float, float* %1024, align 4, !tbaa !69, !alias.scope !95, !noalias !96
  %1087 = load float, float* %1023, align 4, !tbaa !69, !alias.scope !97, !noalias !98
  %1088 = load float, float* %1028, align 4, !tbaa !69, !alias.scope !99, !noalias !102
  %1089 = load float, float* %1027, align 4, !tbaa !69, !alias.scope !105, !noalias !106
  %1090 = load float, float* %1026, align 4, !tbaa !69, !alias.scope !107, !noalias !108
  br label %1091

; <label>:1091                                    ; preds = %1084, %1018
  %1092 = phi float [ -1.000000e+00, %1018 ], [ %1090, %1084 ]
  %1093 = phi float [ -1.000000e+00, %1018 ], [ %1089, %1084 ]
  %1094 = phi float [ -1.000000e+00, %1018 ], [ %1088, %1084 ]
  %1095 = phi float [ -1.000000e+00, %1018 ], [ %1087, %1084 ]
  %1096 = phi float [ -1.000000e+00, %1018 ], [ %1086, %1084 ]
  %1097 = phi float [ -1.000000e+00, %1018 ], [ %1085, %1084 ]
  %1098 = phi i32 [ 0, %1018 ], [ %1081, %1084 ]
  %1099 = call float @dx.op.binary.f32(i32 36, float %1096, float %1097)  ; FMin(a,b)
  %1100 = call float @dx.op.binary.f32(i32 36, float %1095, float %1099)  ; FMin(a,b)
  %1101 = call float @dx.op.binary.f32(i32 35, float %1095, float %1096)  ; FMax(a,b)
  %1102 = call float @dx.op.binary.f32(i32 36, float %1101, float %1097)  ; FMin(a,b)
  %1103 = call float @dx.op.binary.f32(i32 36, float %1095, float %1096)  ; FMin(a,b)
  %1104 = call float @dx.op.binary.f32(i32 35, float %1103, float %1102)  ; FMax(a,b)
  %1105 = call float @dx.op.binary.f32(i32 35, float %1096, float %1097)  ; FMax(a,b)
  %1106 = call float @dx.op.binary.f32(i32 35, float %1095, float %1105)  ; FMax(a,b)
  store float %1100, float* %1023, align 4, !tbaa !69, !alias.scope !97, !noalias !98
  store float %1104, float* %1024, align 4, !tbaa !69, !alias.scope !95, !noalias !96
  store float %1106, float* %1025, align 4, !tbaa !69, !alias.scope !89, !noalias !92
  %1107 = call float @dx.op.binary.f32(i32 36, float %1093, float %1094)  ; FMin(a,b)
  %1108 = call float @dx.op.binary.f32(i32 36, float %1092, float %1107)  ; FMin(a,b)
  %1109 = call float @dx.op.binary.f32(i32 35, float %1092, float %1093)  ; FMax(a,b)
  %1110 = call float @dx.op.binary.f32(i32 36, float %1109, float %1094)  ; FMin(a,b)
  %1111 = call float @dx.op.binary.f32(i32 36, float %1092, float %1093)  ; FMin(a,b)
  %1112 = call float @dx.op.binary.f32(i32 35, float %1111, float %1110)  ; FMax(a,b)
  %1113 = call float @dx.op.binary.f32(i32 35, float %1093, float %1094)  ; FMax(a,b)
  %1114 = call float @dx.op.binary.f32(i32 35, float %1092, float %1113)  ; FMax(a,b)
  store float %1108, float* %1026, align 4, !tbaa !69, !alias.scope !107, !noalias !108
  store float %1112, float* %1027, align 4, !tbaa !69, !alias.scope !105, !noalias !106
  store float %1114, float* %1028, align 4, !tbaa !69, !alias.scope !99, !noalias !102
  %1115 = sub nsw i32 3, %1098
  %1116 = icmp sgt i32 %1115, 2
  br i1 %1116, label %1117, label %1155

; <label>:1117                                    ; preds = %1091
  %1118 = icmp eq i32 %886, 0
  %1119 = fsub fast float %936, %1020
  %1120 = select i1 %1118, float %1119, float %1020
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 0
  %1123 = extractvalue %dx.types.CBufRet.f32 %1121, 1
  %1124 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1128 = extractvalue %dx.types.CBufRet.f32 %1125, 2
  %1129 = extractvalue %dx.types.CBufRet.f32 %1125, 3
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 3
  %1132 = call float @dx.op.binary.f32(i32 36, float %1021, float %1131)  ; FMin(a,b)
  %1133 = fmul fast float %1129, %1120
  %1134 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1135 = fsub fast float %1126, %1122
  %1136 = fsub fast float %1127, %1123
  %1137 = fsub fast float %1128, %1124
  %1138 = fmul fast float %1134, %1135
  %1139 = fmul fast float %1134, %1136
  %1140 = fmul fast float %1134, %1137
  %1141 = fadd fast float %1138, %1122
  %1142 = fadd fast float %1139, %1123
  %1143 = fadd fast float %1140, %1124
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.CBufRet.f32 %1144, 1
  %1147 = fadd fast float %1146, %1145
  %1148 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1149 = extractvalue %dx.types.CBufRet.f32 %1144, 2
  %1150 = extractvalue %dx.types.CBufRet.f32 %1144, 3
  %1151 = fadd fast float %1150, %1149
  %1152 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  %1153 = fmul fast float %1148, %1132
  %1154 = fmul fast float %1153, %1152
  br label %1237

; <label>:1155                                    ; preds = %1091
  %1156 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %1115
  %1157 = load float, float* %1156, align 4, !tbaa !69, !noalias !73
  %1158 = fcmp fast olt float %1157, %1022
  %1159 = icmp sgt i32 %1098, 0
  %1160 = and i1 %1159, %1158
  br i1 %1160, label %1161, label %1198

; <label>:1161                                    ; preds = %1155
  br label %1162

; <label>:1162                                    ; preds = %1191, %1161
  %1163 = phi float [ %1192, %1191 ], [ %1020, %1161 ]
  %1164 = phi float [ %1193, %1191 ], [ %1021, %1161 ]
  %1165 = phi float [ %1173, %1191 ], [ %1157, %1161 ]
  %1166 = phi i32 [ %1170, %1191 ], [ %1115, %1161 ]
  %1167 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1166
  %1168 = load float, float* %1167, align 4, !tbaa !69, !noalias !73
  %1169 = icmp slt i32 %1166, 2
  %1170 = add nsw i32 %1166, 1
  %1171 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %1170
  %1172 = load float, float* %1171, align 4, !tbaa !69, !noalias !73
  %1173 = select i1 %1169, float %1172, float %936
  %1174 = call float @dx.op.binary.f32(i32 36, float %1173, float %1168)  ; FMin(a,b)
  %1175 = call float @dx.op.binary.f32(i32 36, float %1022, float %1174)  ; FMin(a,b)
  %1176 = icmp eq i32 %886, 0
  %1177 = fadd fast float %1175, %1165
  %1178 = fmul fast float %1177, %867
  %1179 = fadd fast float %1178, %880
  br i1 %1176, label %1185, label %1180

; <label>:1180                                    ; preds = %1162
  %1181 = fsub fast float %1175, %1165
  %1182 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1181)  ; FMax(a,b)
  %1183 = fmul fast float %1182, %1179
  %1184 = fadd fast float %1183, %1164
  br label %1191

; <label>:1185                                    ; preds = %1162
  %1186 = fsub fast float %1165, %1175
  %1187 = call float @dx.op.unary.f32(i32 6, float %1186)  ; FAbs(value)
  %1188 = fadd fast float %1187, %1163
  %1189 = fmul fast float %1187, %1179
  %1190 = fsub fast float %1164, %1189
  br label %1191

; <label>:1191                                    ; preds = %1185, %1180
  %1192 = phi float [ %1182, %1180 ], [ %1188, %1185 ]
  %1193 = phi float [ %1184, %1180 ], [ %1190, %1185 ]
  %1194 = fcmp fast olt float %1173, %1022
  %1195 = icmp slt i32 %1170, 3
  %1196 = and i1 %1195, %1194
  br i1 %1196, label %1162, label %1197

; <label>:1197                                    ; preds = %1191
  br label %1198

; <label>:1198                                    ; preds = %1197, %1155
  %1199 = phi float [ %1020, %1155 ], [ %1192, %1197 ]
  %1200 = phi float [ %1021, %1155 ], [ %1193, %1197 ]
  %1201 = fsub fast float %936, %1199
  %1202 = select i1 %938, float %1199, float %1201
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 0
  %1205 = extractvalue %dx.types.CBufRet.f32 %1203, 1
  %1206 = extractvalue %dx.types.CBufRet.f32 %1203, 2
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.CBufRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.CBufRet.f32 %1207, 2
  %1211 = extractvalue %dx.types.CBufRet.f32 %1207, 3
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 3
  %1214 = call float @dx.op.binary.f32(i32 36, float %1200, float %1213)  ; FMin(a,b)
  %1215 = fmul fast float %1211, %1202
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1217 = fsub fast float %1208, %1204
  %1218 = fsub fast float %1209, %1205
  %1219 = fsub fast float %1210, %1206
  %1220 = fmul fast float %1216, %1217
  %1221 = fmul fast float %1216, %1218
  %1222 = fmul fast float %1216, %1219
  %1223 = fadd fast float %1220, %1204
  %1224 = fadd fast float %1221, %1205
  %1225 = fadd fast float %1222, %1206
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1228 = extractvalue %dx.types.CBufRet.f32 %1226, 1
  %1229 = fadd fast float %1228, %1227
  %1230 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1226, 2
  %1232 = extractvalue %dx.types.CBufRet.f32 %1226, 3
  %1233 = fadd fast float %1232, %1231
  %1234 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  %1235 = fmul fast float %1230, %1214
  %1236 = fmul fast float %1235, %1234
  br label %1237

; <label>:1237                                    ; preds = %1198, %1117, %952, %934, %932
  %1238 = phi float [ %961, %952 ], [ %1120, %1117 ], [ %1202, %1198 ], [ 0.000000e+00, %932 ], [ 0.000000e+00, %934 ]
  %1239 = phi float [ %995, %952 ], [ %1154, %1117 ], [ %1236, %1198 ], [ 0.000000e+00, %932 ], [ 0.000000e+00, %934 ]
  %1240 = phi float [ %982, %952 ], [ %1141, %1117 ], [ %1223, %1198 ], [ 0.000000e+00, %932 ], [ 0.000000e+00, %934 ]
  %1241 = phi float [ %983, %952 ], [ %1142, %1117 ], [ %1224, %1198 ], [ 0.000000e+00, %932 ], [ 0.000000e+00, %934 ]
  %1242 = phi float [ %984, %952 ], [ %1143, %1117 ], [ %1225, %1198 ], [ 0.000000e+00, %932 ], [ 0.000000e+00, %934 ]
  %1243 = fmul fast float %875, %1239
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 2
  %1246 = fsub fast float %882, %1245
  %1247 = fcmp fast olt float %1243, -2.000000e+01
  %1248 = call float @dx.op.unary.f32(i32 21, float %1243)  ; Exp(value)
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 2
  %1251 = extractvalue %dx.types.CBufRet.f32 %1249, 3
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 2
  %1254 = fmul fast float %1251, %1246
  %1255 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1256 = fsub fast float 1.000000e+00, %1255
  %1257 = fmul fast float %867, 5.000000e-01
  %1258 = fadd fast float %1257, 5.000000e-01
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  %1260 = fsub fast float 1.000000e+00, %1259
  %1261 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1256)  ; FMax(a,b)
  %1262 = fdiv fast float %1260, %1261
  %1263 = fsub fast float %1246, %827
  %1264 = call float @dx.op.unary.f32(i32 6, float %1263)  ; FAbs(value)
  %1265 = fmul fast float %1264, %1250
  %1266 = call float @dx.op.unary.f32(i32 7, float %1262)  ; Saturate(value)
  %1267 = fsub fast float 1.000000e+00, %1265
  %1268 = fmul fast float %1267, %1266
  %1269 = fadd fast float %1268, %1265
  %1270 = fmul fast float %1253, %1246
  %1271 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1272 = fsub fast float 1.000000e+00, %1269
  %1273 = fmul fast float %1272, %1271
  %1274 = fadd fast float %1273, %1269
  %1275 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1276 = fadd fast float %1248, -1.000000e+00
  %1277 = select i1 %1247, float -1.000000e+00, float %1276
  %1278 = fmul fast float %1275, %1277
  %1279 = fadd fast float %1278, 1.000000e+00
  %1280 = fsub fast float -0.000000e+00, %1278
  %1281 = fmul fast float %1240, %1280
  %1282 = fmul fast float %1241, %1280
  %1283 = fmul fast float %1242, %1280
  br label %1284

; <label>:1284                                    ; preds = %1237, %833
  %1285 = phi float [ %1238, %1237 ], [ 0.000000e+00, %833 ]
  %1286 = phi float [ %1279, %1237 ], [ 1.000000e+00, %833 ]
  %1287 = phi float [ %1281, %1237 ], [ 0.000000e+00, %833 ]
  %1288 = phi float [ %1282, %1237 ], [ 0.000000e+00, %833 ]
  %1289 = phi float [ %1283, %1237 ], [ 0.000000e+00, %833 ]
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 1
  %1292 = fsub fast float 1.000000e+00, %1286
  %1293 = fmul fast float %1292, %868
  %1294 = fmul fast float %1293, %1291
  %1295 = fsub fast float %868, %1294
  br i1 %861, label %1296, label %1325, !dx.controlflow.hints !109

; <label>:1296                                    ; preds = %1284
  %1297 = fmul fast float %869, %858
  %1298 = fadd fast float %1297, %859
  %1299 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1300 = fmul fast float %840, %1295
  %1301 = fsub fast float -0.000000e+00, %1300
  %1302 = fmul fast float %841, %1295
  %1303 = fsub fast float -0.000000e+00, %1302
  %1304 = call float @dx.op.unary.f32(i32 21, float %1301)  ; Exp(value)
  %1305 = call float @dx.op.unary.f32(i32 21, float %1303)  ; Exp(value)
  %1306 = call float @dx.op.binary.f32(i32 35, float %848, float %1304)  ; FMax(a,b)
  %1307 = call float @dx.op.binary.f32(i32 35, float %848, float %1305)  ; FMax(a,b)
  %1308 = fsub fast float %1307, %1306
  %1309 = fmul fast float %1308, %1299
  %1310 = fadd fast float %1309, %1306
  %1311 = call float @dx.op.unary.f32(i32 7, float %1310)  ; Saturate(value)
  %1312 = fsub fast float %845, %850
  %1313 = fsub fast float %846, %851
  %1314 = fsub fast float %847, %852
  %1315 = fmul fast float %1299, %1312
  %1316 = fmul fast float %1299, %1313
  %1317 = fmul fast float %1299, %1314
  %1318 = fadd fast float %1315, %850
  %1319 = fadd fast float %1316, %851
  %1320 = fadd fast float %1317, %852
  %1321 = fsub fast float 1.000000e+00, %1311
  %1322 = fmul fast float %1321, %1318
  %1323 = fmul fast float %1321, %1319
  %1324 = fmul fast float %1321, %1320
  br label %1384

; <label>:1325                                    ; preds = %1284
  %1326 = fmul fast float %1295, %857
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1328 = fsub fast float 2.000000e+00, %1327
  %1329 = fmul fast float %1327, 9.921875e-01
  %1330 = fmul fast float %1329, %1328
  %1331 = fadd fast float %1330, 3.906250e-03
  %1332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1331, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1333 = extractvalue %dx.types.ResRet.f32 %1332, 0
  %1334 = fsub fast float %1327, %1333
  %1335 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1334)  ; FMax(a,b)
  %1336 = fmul fast float %843, %827
  %1337 = call float @dx.op.unary.f32(i32 6, float %1336)  ; FAbs(value)
  %1338 = fcmp fast ogt float %1337, 0x3EB0C6F7A0000000
  br i1 %1338, label %1339, label %1345, !dx.controlflow.hints !110

; <label>:1339                                    ; preds = %1325
  %1340 = fmul fast float %1336, 0xBFF7154760000000
  %1341 = call float @dx.op.unary.f32(i32 21, float %1340)  ; Exp(value)
  %1342 = fsub fast float 1.000000e+00, %1341
  %1343 = fdiv fast float %1342, %1336
  %1344 = fmul fast float %1343, %853
  br label %1345

; <label>:1345                                    ; preds = %1339, %1325
  %1346 = phi float [ %1344, %1339 ], [ %853, %1325 ]
  %1347 = fadd fast float %1346, %855
  %1348 = fmul fast float %1347, %1335
  %1349 = fmul fast float %840, %1348
  %1350 = fsub fast float -0.000000e+00, %1349
  %1351 = fmul fast float %841, %1348
  %1352 = fsub fast float -0.000000e+00, %1351
  %1353 = fmul fast float %842, %1348
  %1354 = fsub fast float -0.000000e+00, %1353
  %1355 = call float @dx.op.unary.f32(i32 21, float %1350)  ; Exp(value)
  %1356 = call float @dx.op.unary.f32(i32 21, float %1352)  ; Exp(value)
  %1357 = call float @dx.op.unary.f32(i32 21, float %1354)  ; Exp(value)
  %1358 = fmul fast float %869, %869
  %1359 = fadd fast float %1358, 1.000000e+00
  %1360 = fmul fast float %1359, 0x3FAE8EC8A0000000
  %1361 = fmul fast float %1360, %850
  %1362 = fmul fast float %1360, %851
  %1363 = fmul fast float %1360, %852
  %1364 = fmul fast float %869, %848
  %1365 = fsub fast float 1.000000e+00, %1364
  %1366 = fmul fast float %848, %848
  %1367 = fsub fast float 1.000000e+00, %1366
  %1368 = fmul fast float %1367, 0x3FB45F3060000000
  %1369 = fmul fast float %1365, %1365
  %1370 = fdiv fast float 1.000000e+00, %1369
  %1371 = fmul fast float %1368, %1370
  %1372 = fmul fast float %1371, %845
  %1373 = fmul fast float %1371, %846
  %1374 = fmul fast float %1371, %847
  %1375 = fadd fast float %1372, %1361
  %1376 = fadd fast float %1373, %1362
  %1377 = fadd fast float %1374, %1363
  %1378 = fsub fast float 1.000000e+00, %1355
  %1379 = fsub fast float 1.000000e+00, %1356
  %1380 = fsub fast float 1.000000e+00, %1357
  %1381 = fmul fast float %1375, %1378
  %1382 = fmul fast float %1376, %1379
  %1383 = fmul fast float %1377, %1380
  br label %1384

; <label>:1384                                    ; preds = %1345, %1296
  %1385 = phi float [ %1322, %1296 ], [ %1381, %1345 ]
  %1386 = phi float [ %1323, %1296 ], [ %1382, %1345 ]
  %1387 = phi float [ %1324, %1296 ], [ %1383, %1345 ]
  %1388 = phi float [ %1311, %1296 ], [ %1355, %1345 ]
  %1389 = phi float [ %1311, %1296 ], [ %1356, %1345 ]
  %1390 = phi float [ %1311, %1296 ], [ %1357, %1345 ]
  br i1 %877, label %1391, label %1589, !dx.controlflow.hints !111

; <label>:1391                                    ; preds = %1384
  %1392 = extractvalue %dx.types.CBufRet.f32 %1290, 0
  %1393 = fmul fast float %1392, %1292
  %1394 = fsub fast float %1287, %1385
  %1395 = fsub fast float %1288, %1386
  %1396 = fsub fast float %1289, %1387
  %1397 = fmul fast float %1393, %1394
  %1398 = fmul fast float %1393, %1395
  %1399 = fmul fast float %1393, %1396
  %1400 = fadd fast float %1397, %1385
  %1401 = fadd fast float %1398, %1386
  %1402 = fadd fast float %1399, %1387
  %1403 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1388)  ; FMax(a,b)
  %1404 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1389)  ; FMax(a,b)
  %1405 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1390)  ; FMax(a,b)
  %1406 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1286)  ; FMax(a,b)
  %1407 = call float @dx.op.binary.f32(i32 35, float %1285, float %1295)  ; FMax(a,b)
  %1408 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1407)  ; FMax(a,b)
  %1409 = fdiv fast float %1285, %1408
  %1410 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1411 = fdiv fast float %1295, %1408
  %1412 = call float @dx.op.unary.f32(i32 7, float %1411)  ; Saturate(value)
  %1413 = fcmp fast une float %1406, 1.000000e+00
  br i1 %1413, label %1414, label %1427, !dx.controlflow.hints !112

; <label>:1414                                    ; preds = %1391
  %1415 = call float @dx.op.unary.f32(i32 23, float %1406)  ; Log(value)
  %1416 = fmul fast float %1415, 0x3FE62E4300000000
  %1417 = fmul fast float %1287, %1416
  %1418 = fsub fast float -0.000000e+00, %1417
  %1419 = fmul fast float %1288, %1416
  %1420 = fsub fast float -0.000000e+00, %1419
  %1421 = fmul fast float %1289, %1416
  %1422 = fsub fast float -0.000000e+00, %1421
  %1423 = fsub fast float 1.000000e+00, %1406
  %1424 = fdiv fast float %1418, %1423
  %1425 = fdiv fast float %1420, %1423
  %1426 = fdiv fast float %1422, %1423
  br label %1427

; <label>:1427                                    ; preds = %1414, %1391
  %1428 = phi float [ %1424, %1414 ], [ %1287, %1391 ]
  %1429 = phi float [ %1425, %1414 ], [ %1288, %1391 ]
  %1430 = phi float [ %1426, %1414 ], [ %1289, %1391 ]
  %1431 = phi float [ %1416, %1414 ], [ 0.000000e+00, %1391 ]
  %1432 = fcmp fast une float %1403, 1.000000e+00
  br i1 %1432, label %1433, label %1440, !dx.controlflow.hints !113

; <label>:1433                                    ; preds = %1427
  %1434 = call float @dx.op.unary.f32(i32 23, float %1403)  ; Log(value)
  %1435 = fmul fast float %1434, 0x3FE62E4300000000
  %1436 = fmul fast float %1400, %1435
  %1437 = fsub fast float -0.000000e+00, %1436
  %1438 = fsub fast float 1.000000e+00, %1403
  %1439 = fdiv fast float %1437, %1438
  br label %1440

; <label>:1440                                    ; preds = %1433, %1427
  %1441 = phi float [ %1439, %1433 ], [ %1400, %1427 ]
  %1442 = phi float [ %1435, %1433 ], [ 0.000000e+00, %1427 ]
  %1443 = fcmp fast une float %1404, 1.000000e+00
  br i1 %1443, label %1444, label %1451, !dx.controlflow.hints !113

; <label>:1444                                    ; preds = %1440
  %1445 = call float @dx.op.unary.f32(i32 23, float %1404)  ; Log(value)
  %1446 = fmul fast float %1445, 0x3FE62E4300000000
  %1447 = fmul fast float %1401, %1446
  %1448 = fsub fast float -0.000000e+00, %1447
  %1449 = fsub fast float 1.000000e+00, %1404
  %1450 = fdiv fast float %1448, %1449
  br label %1451

; <label>:1451                                    ; preds = %1444, %1440
  %1452 = phi float [ %1450, %1444 ], [ %1401, %1440 ]
  %1453 = phi float [ %1446, %1444 ], [ 0.000000e+00, %1440 ]
  %1454 = fcmp fast une float %1405, 1.000000e+00
  br i1 %1454, label %1455, label %1462, !dx.controlflow.hints !113

; <label>:1455                                    ; preds = %1451
  %1456 = call float @dx.op.unary.f32(i32 23, float %1405)  ; Log(value)
  %1457 = fmul fast float %1456, 0x3FE62E4300000000
  %1458 = fmul fast float %1402, %1457
  %1459 = fsub fast float -0.000000e+00, %1458
  %1460 = fsub fast float 1.000000e+00, %1405
  %1461 = fdiv fast float %1459, %1460
  br label %1462

; <label>:1462                                    ; preds = %1455, %1451
  %1463 = phi float [ %1461, %1455 ], [ %1402, %1451 ]
  %1464 = phi float [ %1457, %1455 ], [ 0.000000e+00, %1451 ]
  %1465 = fmul fast float %1428, %1412
  %1466 = fmul fast float %1429, %1412
  %1467 = fmul fast float %1430, %1412
  %1468 = fmul fast float %1431, %1412
  %1469 = fmul fast float %1441, %1410
  %1470 = fmul fast float %1452, %1410
  %1471 = fmul fast float %1463, %1410
  %1472 = fmul fast float %1442, %1410
  %1473 = fmul fast float %1453, %1410
  %1474 = fmul fast float %1464, %1410
  %1475 = fadd fast float %1469, %1465
  %1476 = fadd fast float %1470, %1466
  %1477 = fadd fast float %1471, %1467
  %1478 = fadd fast float %1472, %1468
  %1479 = fadd fast float %1473, %1468
  %1480 = fadd fast float %1474, %1468
  %1481 = fcmp fast une float %1478, 0.000000e+00
  br i1 %1481, label %1482, label %1489, !dx.controlflow.hints !114

; <label>:1482                                    ; preds = %1462
  %1483 = fmul fast float %1478, 0x3FF7154760000000
  %1484 = call float @dx.op.unary.f32(i32 21, float %1483)  ; Exp(value)
  %1485 = fsub fast float 1.000000e+00, %1484
  %1486 = fmul fast float %1475, %1485
  %1487 = fsub fast float -0.000000e+00, %1486
  %1488 = fdiv fast float %1487, %1478
  br label %1489

; <label>:1489                                    ; preds = %1482, %1462
  %1490 = phi float [ %1484, %1482 ], [ 1.000000e+00, %1462 ]
  %1491 = phi float [ %1488, %1482 ], [ %1475, %1462 ]
  %1492 = fcmp fast une float %1479, 0.000000e+00
  br i1 %1492, label %1493, label %1500, !dx.controlflow.hints !114

; <label>:1493                                    ; preds = %1489
  %1494 = fmul fast float %1479, 0x3FF7154760000000
  %1495 = call float @dx.op.unary.f32(i32 21, float %1494)  ; Exp(value)
  %1496 = fsub fast float 1.000000e+00, %1495
  %1497 = fmul fast float %1476, %1496
  %1498 = fsub fast float -0.000000e+00, %1497
  %1499 = fdiv fast float %1498, %1479
  br label %1500

; <label>:1500                                    ; preds = %1493, %1489
  %1501 = phi float [ %1495, %1493 ], [ 1.000000e+00, %1489 ]
  %1502 = phi float [ %1499, %1493 ], [ %1476, %1489 ]
  %1503 = fcmp fast une float %1480, 0.000000e+00
  br i1 %1503, label %1504, label %1511, !dx.controlflow.hints !114

; <label>:1504                                    ; preds = %1500
  %1505 = fmul fast float %1480, 0x3FF7154760000000
  %1506 = call float @dx.op.unary.f32(i32 21, float %1505)  ; Exp(value)
  %1507 = fsub fast float 1.000000e+00, %1506
  %1508 = fmul fast float %1477, %1507
  %1509 = fsub fast float -0.000000e+00, %1508
  %1510 = fdiv fast float %1509, %1480
  br label %1511

; <label>:1511                                    ; preds = %1504, %1500
  %1512 = phi float [ %1506, %1504 ], [ 1.000000e+00, %1500 ]
  %1513 = phi float [ %1510, %1504 ], [ %1477, %1500 ]
  %1514 = fcmp fast ogt float %1410, %1412
  br i1 %1514, label %1515, label %1535

; <label>:1515                                    ; preds = %1511
  %1516 = fsub fast float 1.000000e+00, %1412
  %1517 = fmul fast float %1428, %1516
  %1518 = fmul fast float %1429, %1516
  %1519 = fmul fast float %1430, %1516
  %1520 = fmul fast float %1431, %1516
  %1521 = fcmp fast une float %1520, 0.000000e+00
  br i1 %1521, label %1522, label %1573, !dx.controlflow.hints !115

; <label>:1522                                    ; preds = %1515
  %1523 = fmul fast float %1520, 0x3FF7154760000000
  %1524 = call float @dx.op.unary.f32(i32 21, float %1523)  ; Exp(value)
  %1525 = fsub fast float 1.000000e+00, %1524
  %1526 = fmul fast float %1517, %1525
  %1527 = fsub fast float -0.000000e+00, %1526
  %1528 = fmul fast float %1518, %1525
  %1529 = fsub fast float -0.000000e+00, %1528
  %1530 = fmul fast float %1519, %1525
  %1531 = fsub fast float -0.000000e+00, %1530
  %1532 = fdiv fast float %1527, %1520
  %1533 = fdiv fast float %1529, %1520
  %1534 = fdiv fast float %1531, %1520
  br label %1573

; <label>:1535                                    ; preds = %1511
  %1536 = fsub fast float 1.000000e+00, %1410
  %1537 = fmul fast float %1441, %1536
  %1538 = fmul fast float %1452, %1536
  %1539 = fmul fast float %1463, %1536
  %1540 = fmul fast float %1442, %1536
  %1541 = fmul fast float %1453, %1536
  %1542 = fmul fast float %1464, %1536
  %1543 = fcmp fast une float %1540, 0.000000e+00
  br i1 %1543, label %1544, label %1551, !dx.controlflow.hints !114

; <label>:1544                                    ; preds = %1535
  %1545 = fmul fast float %1540, 0x3FF7154760000000
  %1546 = call float @dx.op.unary.f32(i32 21, float %1545)  ; Exp(value)
  %1547 = fsub fast float 1.000000e+00, %1546
  %1548 = fmul fast float %1537, %1547
  %1549 = fsub fast float -0.000000e+00, %1548
  %1550 = fdiv fast float %1549, %1540
  br label %1551

; <label>:1551                                    ; preds = %1544, %1535
  %1552 = phi float [ %1550, %1544 ], [ %1537, %1535 ]
  %1553 = phi float [ %1546, %1544 ], [ 1.000000e+00, %1535 ]
  %1554 = fcmp fast une float %1541, 0.000000e+00
  br i1 %1554, label %1555, label %1562, !dx.controlflow.hints !114

; <label>:1555                                    ; preds = %1551
  %1556 = fmul fast float %1541, 0x3FF7154760000000
  %1557 = call float @dx.op.unary.f32(i32 21, float %1556)  ; Exp(value)
  %1558 = fsub fast float 1.000000e+00, %1557
  %1559 = fmul fast float %1538, %1558
  %1560 = fsub fast float -0.000000e+00, %1559
  %1561 = fdiv fast float %1560, %1541
  br label %1562

; <label>:1562                                    ; preds = %1555, %1551
  %1563 = phi float [ %1561, %1555 ], [ %1538, %1551 ]
  %1564 = phi float [ %1557, %1555 ], [ 1.000000e+00, %1551 ]
  %1565 = fcmp fast une float %1542, 0.000000e+00
  br i1 %1565, label %1566, label %1573, !dx.controlflow.hints !114

; <label>:1566                                    ; preds = %1562
  %1567 = fmul fast float %1542, 0x3FF7154760000000
  %1568 = call float @dx.op.unary.f32(i32 21, float %1567)  ; Exp(value)
  %1569 = fsub fast float 1.000000e+00, %1568
  %1570 = fmul fast float %1539, %1569
  %1571 = fsub fast float -0.000000e+00, %1570
  %1572 = fdiv fast float %1571, %1542
  br label %1573

; <label>:1573                                    ; preds = %1566, %1562, %1522, %1515
  %1574 = phi float [ %1572, %1566 ], [ %1534, %1522 ], [ %1519, %1515 ], [ %1539, %1562 ]
  %1575 = phi float [ %1563, %1566 ], [ %1533, %1522 ], [ %1518, %1515 ], [ %1563, %1562 ]
  %1576 = phi float [ %1552, %1566 ], [ %1532, %1522 ], [ %1517, %1515 ], [ %1552, %1562 ]
  %1577 = phi float [ %1568, %1566 ], [ %1524, %1522 ], [ 1.000000e+00, %1515 ], [ 1.000000e+00, %1562 ]
  %1578 = phi float [ %1564, %1566 ], [ %1524, %1522 ], [ 1.000000e+00, %1515 ], [ %1564, %1562 ]
  %1579 = phi float [ %1553, %1566 ], [ %1524, %1522 ], [ 1.000000e+00, %1515 ], [ %1553, %1562 ]
  %1580 = fmul fast float %1579, %1491
  %1581 = fmul fast float %1578, %1502
  %1582 = fmul fast float %1577, %1513
  %1583 = fadd fast float %1580, %1576
  %1584 = fadd fast float %1581, %1575
  %1585 = fadd fast float %1582, %1574
  %1586 = fmul fast float %1579, %1490
  %1587 = fmul fast float %1578, %1501
  %1588 = fmul fast float %1577, %1512
  br label %1589

; <label>:1589                                    ; preds = %1573, %1384
  %1590 = phi float [ %1588, %1573 ], [ %1390, %1384 ]
  %1591 = phi float [ %1587, %1573 ], [ %1389, %1384 ]
  %1592 = phi float [ %1586, %1573 ], [ %1388, %1384 ]
  %1593 = phi float [ %1585, %1573 ], [ %1387, %1384 ]
  %1594 = phi float [ %1584, %1573 ], [ %1386, %1384 ]
  %1595 = phi float [ %1583, %1573 ], [ %1385, %1384 ]
  %1596 = fmul fast float %1595, %657
  %1597 = fmul fast float %1594, %657
  %1598 = fmul fast float %1593, %657
  %1599 = fmul fast float %1592, %832
  %1600 = call float @dx.op.dot3.f32(i32 55, float %1592, float %1591, float %1590, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1601 = call float @dx.op.dot3.f32(i32 55, float %1596, float %1597, float %1598, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1602 = select i1 %102, float %1600, float %1592
  %1603 = select i1 %102, float %1600, float %1591
  %1604 = select i1 %102, float 1.000000e+00, float %1590
  %1605 = select i1 %102, float %1601, float %1596
  %1606 = select i1 %102, float 0.000000e+00, float %1597
  %1607 = select i1 %102, float 0.000000e+00, float %1598
  %1608 = fmul fast float %1602, %829
  %1609 = fmul fast float %1603, %830
  %1610 = fmul fast float %1604, %831
  %1611 = fadd fast float %1608, %1605
  %1612 = fadd fast float %1609, %1606
  %1613 = fadd fast float %1607, %1610
  %1614 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1615 = extractvalue %dx.types.CBufRet.i32 %1614, 0
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1982, label %1617, !dx.controlflow.hints !116

; <label>:1617                                    ; preds = %1589
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1618, 2
  %1620 = extractvalue %dx.types.CBufRet.f32 %1618, 3
  %1621 = fmul fast float %1619, %44
  %1622 = fmul fast float %1620, %45
  %1623 = fmul fast float %1621, 2.000000e+00
  %1624 = fmul fast float %1622, 2.000000e+00
  %1625 = fsub fast float 1.000000e+00, %1623
  %1626 = fsub fast float 1.000000e+00, %1624
  %1627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1628 = extractvalue %dx.types.CBufRet.f32 %1627, 0
  %1629 = extractvalue %dx.types.CBufRet.f32 %1627, 1
  %1630 = extractvalue %dx.types.CBufRet.f32 %1627, 2
  %1631 = fmul fast float %1625, %1628
  %1632 = fmul fast float %1625, %1629
  %1633 = fmul fast float %1625, %1630
  %1634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1635 = extractvalue %dx.types.CBufRet.f32 %1634, 0
  %1636 = extractvalue %dx.types.CBufRet.f32 %1634, 1
  %1637 = extractvalue %dx.types.CBufRet.f32 %1634, 2
  %1638 = fmul fast float %1626, %1635
  %1639 = fmul fast float %1626, %1636
  %1640 = fmul fast float %1626, %1637
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.CBufRet.f32 %1641, 1
  %1644 = extractvalue %dx.types.CBufRet.f32 %1641, 2
  %1645 = fadd fast float %1638, %1642
  %1646 = fadd fast float %1645, %1631
  %1647 = fadd fast float %1639, %1643
  %1648 = fadd fast float %1647, %1632
  %1649 = fadd fast float %1640, %1644
  %1650 = fadd fast float %1649, %1633
  %1651 = fmul fast float %1646, %828
  %1652 = fmul fast float %1648, %828
  %1653 = fmul fast float %1650, %828
  %1654 = fmul fast float %1651, %1651
  %1655 = fmul fast float %1652, %1652
  %1656 = fadd fast float %1654, %1655
  %1657 = fmul fast float %1653, %1653
  %1658 = fadd fast float %1656, %1657
  %1659 = call float @dx.op.unary.f32(i32 24, float %1658)  ; Sqrt(value)
  %1660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1661 = extractvalue %dx.types.CBufRet.f32 %1660, 0
  %1662 = fsub fast float %1659, %1661
  %1663 = extractvalue %dx.types.CBufRet.f32 %1660, 2
  %1664 = fmul fast float %1662, %1663
  %1665 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1666 = fadd fast float %1665, -5.000000e-01
  %1667 = fmul fast float %1666, 2.000000e+00
  %1668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1669 = extractvalue %dx.types.CBufRet.f32 %1668, 2
  %1670 = call float @dx.op.binary.f32(i32 36, float %1669, float %1667)  ; FMin(a,b)
  %1671 = fsub fast float -0.000000e+00, %1669
  %1672 = fcmp fast ogt float %1670, %1671
  br i1 %1672, label %1673, label %1982, !dx.controlflow.hints !117

; <label>:1673                                    ; preds = %1617
  %1674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.f32 %1674, 3
  %1676 = fcmp fast ogt float %1675, 0.000000e+00
  br i1 %1676, label %1677, label %1752, !dx.controlflow.hints !118

; <label>:1677                                    ; preds = %1673
  %1678 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %1679 = extractvalue %dx.types.Dimensions %1678, 0
  %1680 = sitofp i32 %1679 to float
  %1681 = extractvalue %dx.types.Dimensions %1678, 1
  %1682 = sitofp i32 %1681 to float
  %1683 = fmul fast float %1621, %1680
  %1684 = fmul fast float %1622, %1682
  %1685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1686 = extractvalue %dx.types.CBufRet.f32 %1685, 1
  %1687 = fsub fast float -0.000000e+00, %1686
  %1688 = fptoui float %1687 to i32
  %1689 = fptoui float %1683 to i32
  %1690 = fptoui float %1684 to i32
  %1691 = and i32 %1688, 31
  %1692 = lshr i32 %1689, %1691
  %1693 = lshr i32 %1690, %1691
  %1694 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1688, i32 %1692, i32 %1693, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1695 = extractvalue %dx.types.ResRet.f32 %1694, 0
  %1696 = fcmp fast olt float %1695, -1.000000e+00
  %1697 = fcmp fast ogt float %1695, -1.000000e+00
  %1698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1699 = extractvalue %dx.types.CBufRet.f32 %1698, 1
  %1700 = select i1 %1697, float %1699, float 1.000000e+00
  %1701 = fadd fast float %1695, 1.000000e+00
  %1702 = fmul fast float %1700, %1701
  %1703 = call float @dx.op.unary.f32(i32 6, float %1702)  ; FAbs(value)
  %1704 = extractvalue %dx.types.CBufRet.f32 %1698, 3
  %1705 = fcmp fast oge float %1703, %1704
  %1706 = select i1 %1705, float 0x4197782600000000, float %1703
  %1707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.f32 %1707, 0
  %1709 = extractvalue %dx.types.CBufRet.f32 %1707, 1
  %1710 = extractvalue %dx.types.CBufRet.f32 %1707, 2
  %1711 = select i1 %1696, float %1708, float %1628
  %1712 = select i1 %1696, float %1709, float %1629
  %1713 = select i1 %1696, float %1710, float %1630
  %1714 = fmul fast float %1711, %1625
  %1715 = fmul fast float %1712, %1625
  %1716 = fmul fast float %1713, %1625
  %1717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.CBufRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.CBufRet.f32 %1717, 2
  %1721 = select i1 %1696, float %1718, float %1635
  %1722 = select i1 %1696, float %1719, float %1636
  %1723 = select i1 %1696, float %1720, float %1637
  %1724 = fmul fast float %1721, %1626
  %1725 = fmul fast float %1722, %1626
  %1726 = fmul fast float %1723, %1626
  %1727 = fadd fast float %1724, %1714
  %1728 = fadd fast float %1725, %1715
  %1729 = fadd fast float %1726, %1716
  %1730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1731 = extractvalue %dx.types.CBufRet.f32 %1730, 0
  %1732 = extractvalue %dx.types.CBufRet.f32 %1730, 1
  %1733 = extractvalue %dx.types.CBufRet.f32 %1730, 2
  %1734 = select i1 %1696, float %1731, float %1642
  %1735 = select i1 %1696, float %1732, float %1643
  %1736 = select i1 %1696, float %1733, float %1644
  %1737 = fadd fast float %1727, %1734
  %1738 = fadd fast float %1728, %1735
  %1739 = fadd fast float %1729, %1736
  %1740 = fmul fast float %1737, %1706
  %1741 = fmul fast float %1738, %1706
  %1742 = fmul fast float %1739, %1706
  %1743 = fmul fast float %1740, %1740
  %1744 = fmul fast float %1741, %1741
  %1745 = fadd fast float %1743, %1744
  %1746 = fmul fast float %1742, %1742
  %1747 = fadd fast float %1745, %1746
  %1748 = call float @dx.op.unary.f32(i32 24, float %1747)  ; Sqrt(value)
  %1749 = fsub fast float %1748, %1661
  %1750 = fmul fast float %1749, %1663
  %1751 = call float @dx.op.unary.f32(i32 7, float %1750)  ; Saturate(value)
  br label %1752

; <label>:1752                                    ; preds = %1677, %1673
  %1753 = phi float [ %1751, %1677 ], [ 1.000000e+00, %1673 ]
  %1754 = fmul fast float %1670, 5.000000e-01
  %1755 = fadd fast float %1754, 5.000000e-01
  %1756 = call float @dx.op.unary.f32(i32 22, float %1755)  ; Frc(value)
  %1757 = call float @dx.op.unary.f32(i32 27, float %1756)  ; Round_ni(value)
  %1758 = call float @dx.op.unary.f32(i32 22, float %1756)  ; Frc(value)
  %1759 = fmul fast float %1758, 2.000000e+00
  %1760 = fadd fast float %1759, -1.000000e+00
  %1761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1621, float %1622, float %1757, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1762 = extractvalue %dx.types.ResRet.f32 %1761, 0
  %1763 = extractvalue %dx.types.ResRet.f32 %1761, 1
  %1764 = extractvalue %dx.types.ResRet.f32 %1761, 2
  %1765 = extractvalue %dx.types.ResRet.f32 %1761, 3
  %1766 = fadd fast float %1762, -5.000000e-01
  %1767 = fadd fast float %1764, -5.000000e-01
  %1768 = fmul fast float %1766, 0xBFD5555560000000
  %1769 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1767, float %1768)  ; FMad(a,b,c)
  %1770 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1763, float 0.000000e+00)  ; FMad(a,b,c)
  %1771 = fadd fast float %1770, %1765
  %1772 = fmul fast float %1766, -7.500000e-01
  %1773 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1767, float %1772)  ; FMad(a,b,c)
  %1774 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1763, float 0.000000e+00)  ; FMad(a,b,c)
  %1775 = fadd fast float %1774, %1765
  %1776 = call float @dx.op.binary.f32(i32 35, float %1769, float -1.000000e+00)  ; FMax(a,b)
  %1777 = call float @dx.op.binary.f32(i32 35, float %1771, float -1.000000e+00)  ; FMax(a,b)
  %1778 = call float @dx.op.binary.f32(i32 35, float %1773, float -1.000000e+00)  ; FMax(a,b)
  %1779 = call float @dx.op.binary.f32(i32 35, float %1775, float -1.000000e+00)  ; FMax(a,b)
  %1780 = call float @dx.op.binary.f32(i32 36, float %1776, float 1.000000e+00)  ; FMin(a,b)
  %1781 = call float @dx.op.binary.f32(i32 36, float %1777, float 1.000000e+00)  ; FMin(a,b)
  %1782 = call float @dx.op.binary.f32(i32 36, float %1778, float 1.000000e+00)  ; FMin(a,b)
  %1783 = call float @dx.op.binary.f32(i32 36, float %1779, float 1.000000e+00)  ; FMin(a,b)
  %1784 = fcmp fast olt float %1780, 0x3FEFFF8020000000
  br i1 %1784, label %1785, label %1900, !dx.controlflow.hints !119

; <label>:1785                                    ; preds = %1752
  %1786 = extractvalue %dx.types.CBufRet.f32 %1668, 3
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %1791 = extractvalue %dx.types.CBufRet.f32 %1787, 3
  %1792 = fsub fast float %1788, %1780
  %1793 = fsub fast float %1789, %1781
  %1794 = fsub fast float %1790, %1782
  %1795 = fsub fast float %1791, %1783
  %1796 = fmul fast float %1792, %1786
  %1797 = fmul fast float %1793, %1786
  %1798 = fmul fast float %1794, %1786
  %1799 = fmul fast float %1795, %1786
  %1800 = fadd fast float %1796, %1780
  %1801 = fadd fast float %1797, %1781
  %1802 = fsub fast float -0.000000e+00, %1801
  %1803 = fadd fast float %1798, %1782
  %1804 = fadd fast float %1799, %1783
  %1805 = fmul fast float %1800, %1800
  %1806 = fsub fast float %1801, %1805
  %1807 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1806)  ; FMax(a,b)
  %1808 = fdiv fast float 1.000000e+00, %1807
  %1809 = fmul fast float %1801, %1800
  %1810 = fsub fast float %1803, %1809
  %1811 = fsub fast float %1760, %1800
  %1812 = fmul fast float %1760, %1760
  %1813 = fsub fast float %1812, %1801
  %1814 = fmul fast float %1811, %1808
  %1815 = fmul fast float %1814, %1810
  %1816 = fsub fast float %1813, %1815
  %1817 = fmul fast float %1801, %1801
  %1818 = fsub fast float %1804, %1817
  %1819 = fmul fast float %1810, %1810
  %1820 = fmul fast float %1819, %1808
  %1821 = fsub fast float %1818, %1820
  %1822 = fdiv fast float %1816, %1821
  %1823 = fmul fast float %1810, %1822
  %1824 = fsub fast float %1811, %1823
  %1825 = fmul fast float %1824, %1808
  %1826 = fmul fast float %1825, %1800
  %1827 = fsub fast float 1.000000e+00, %1826
  %1828 = fmul fast float %1801, %1822
  %1829 = fsub fast float %1827, %1828
  %1830 = fmul fast float %1825, %1825
  %1831 = fmul fast float %1822, 4.000000e+00
  %1832 = fmul fast float %1831, %1829
  %1833 = fsub fast float %1830, %1832
  %1834 = call float @dx.op.unary.f32(i32 24, float %1833)  ; Sqrt(value)
  %1835 = fcmp fast oge float %1825, 0.000000e+00
  %1836 = fsub fast float -0.000000e+00, %1834
  %1837 = select i1 %1835, float %1836, float %1834
  %1838 = fsub fast float %1837, %1825
  %1839 = fdiv fast float %1838, %1822
  %1840 = fdiv fast float %1829, %1838
  %1841 = fmul fast float %1839, 5.000000e-01
  %1842 = fmul fast float %1840, 2.000000e+00
  %1843 = select i1 %1835, float %1841, float %1842
  %1844 = select i1 %1835, float %1842, float %1841
  %1845 = call float @dx.op.binary.f32(i32 35, float %1843, float %1844)  ; FMax(a,b)
  %1846 = call float @dx.op.binary.f32(i32 36, float %1843, float %1844)  ; FMin(a,b)
  %1847 = fcmp fast ogt float %1760, %1846
  br i1 %1847, label %1848, label %1858

; <label>:1848                                    ; preds = %1785
  %1849 = fsub fast float %1760, %1846
  %1850 = fsub fast float %1845, %1846
  %1851 = fmul fast float %1849, %1850
  %1852 = fmul fast float %1845, %1760
  %1853 = fadd fast float %1845, %1760
  %1854 = fmul fast float %1853, %1800
  %1855 = fadd fast float %1852, %1801
  %1856 = fsub fast float %1855, %1854
  %1857 = fdiv fast float %1856, %1851
  br label %1858

; <label>:1858                                    ; preds = %1848, %1785
  %1859 = phi float [ %1857, %1848 ], [ 0.000000e+00, %1785 ]
  %1860 = fcmp fast ogt float %1760, %1845
  %1861 = fsub fast float %1760, %1845
  br i1 %1860, label %1862, label %1872

; <label>:1862                                    ; preds = %1858
  %1863 = fsub fast float %1845, %1846
  %1864 = fmul fast float %1863, %1861
  %1865 = fmul fast float %1846, %1760
  %1866 = fadd fast float %1846, %1760
  %1867 = fmul fast float %1866, %1800
  %1868 = fsub fast float %1802, %1865
  %1869 = fadd fast float %1868, %1867
  %1870 = fdiv fast float %1869, %1864
  %1871 = fadd fast float %1870, %1859
  br label %1872

; <label>:1872                                    ; preds = %1862, %1858
  %1873 = phi float [ %1871, %1862 ], [ %1859, %1858 ]
  %1874 = fsub fast float %1760, %1846
  %1875 = fmul fast float %1874, %1861
  %1876 = fmul fast float %1846, %1845
  %1877 = fadd fast float %1846, %1845
  %1878 = fmul fast float %1877, %1800
  %1879 = fadd fast float %1876, %1801
  %1880 = fsub fast float %1879, %1878
  %1881 = fdiv fast float %1880, %1875
  %1882 = call float @dx.op.unary.f32(i32 7, float %1873)  ; Saturate(value)
  %1883 = fcmp fast oeq float %675, 0.000000e+00
  %1884 = extractvalue %dx.types.CBufRet.f32 %1668, 0
  %1885 = fcmp fast oeq float %1884, 0.000000e+00
  %1886 = or i1 %1883, %1885
  %1887 = fmul fast float %1884, 2.000000e+00
  %1888 = fadd fast float %1669, %1670
  %1889 = fdiv fast float %1888, %1887
  %1890 = call float @dx.op.unary.f32(i32 7, float %1889)  ; Saturate(value)
  %1891 = fmul fast float %1890, 2.000000e+00
  %1892 = fsub fast float 3.000000e+00, %1891
  %1893 = fmul fast float %1890, %1890
  %1894 = fmul fast float %1893, %1892
  %1895 = select i1 %1886, float 1.000000e+00, float %1894
  %1896 = fmul fast float %1881, %675
  %1897 = fadd fast float %1882, %1896
  %1898 = call float @dx.op.unary.f32(i32 7, float %1897)  ; Saturate(value)
  %1899 = fmul fast float %1895, %1898
  br label %1900

; <label>:1900                                    ; preds = %1872, %1752
  %1901 = phi float [ %1899, %1872 ], [ 0.000000e+00, %1752 ]
  %1902 = fsub fast float 1.000000e+00, %1901
  %1903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %1621, float %1622, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1904 = extractvalue %dx.types.ResRet.f32 %1903, 0
  %1905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.i32 %1905, 2
  %1907 = icmp eq i32 %1906, 0
  br i1 %1907, label %1913, label %1908

; <label>:1908                                    ; preds = %1900
  %1909 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1910 = fadd fast float %1904, -1.000000e+00
  %1911 = fmul fast float %1909, %1910
  %1912 = fadd fast float %1911, 1.000000e+00
  br label %1913

; <label>:1913                                    ; preds = %1908, %1900
  %1914 = phi float [ %1912, %1908 ], [ %1902, %1900 ]
  br i1 %1676, label %1915, label %1933

; <label>:1915                                    ; preds = %1913
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 1
  %1918 = fsub fast float %1753, %1917
  %1919 = call float @dx.op.unary.f32(i32 7, float %1918)  ; Saturate(value)
  %1920 = fsub fast float %1753, %1675
  %1921 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  %1922 = fsub fast float %1919, %1921
  %1923 = fsub fast float %1755, %1921
  %1924 = fdiv fast float %1923, %1922
  %1925 = call float @dx.op.unary.f32(i32 7, float %1924)  ; Saturate(value)
  %1926 = fmul fast float %1925, 2.000000e+00
  %1927 = fsub fast float 3.000000e+00, %1926
  %1928 = fsub fast float %1904, %1914
  %1929 = fmul fast float %1925, %1925
  %1930 = fmul fast float %1929, %1928
  %1931 = fmul fast float %1930, %1927
  %1932 = fadd fast float %1931, %1914
  br label %1933

; <label>:1933                                    ; preds = %1915, %1913
  %1934 = phi float [ %1932, %1915 ], [ %1914, %1913 ]
  %1935 = call float @dx.op.binary.f32(i32 35, float %1904, float %1934)  ; FMax(a,b)
  %1936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1937 = extractvalue %dx.types.CBufRet.i32 %1936, 2
  %1938 = and i32 %1937, 1
  %1939 = icmp eq i32 %1938, 0
  %1940 = fcmp fast une float %1935, 1.000000e+00
  %1941 = and i1 %1940, %1939
  br i1 %1941, label %1942, label %1961

; <label>:1942                                    ; preds = %1933
  %1943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %17, float %1621, float %1622, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1944 = extractvalue %dx.types.ResRet.f32 %1943, 0
  %1945 = extractvalue %dx.types.ResRet.f32 %1943, 1
  %1946 = extractvalue %dx.types.ResRet.f32 %1943, 2
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 1
  %1949 = fmul fast float %1948, %1944
  %1950 = fmul fast float %1948, %1945
  %1951 = fmul fast float %1948, %1946
  %1952 = fcmp fast ogt float %1904, 0x3FEFFF2E40000000
  %1953 = fsub fast float 1.000000e+00, %1935
  %1954 = fsub fast float 1.000000e+00, %1904
  %1955 = fdiv fast float %1953, %1954
  %1956 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1957 = select i1 %1952, float 0.000000e+00, float %1956
  %1958 = fmul fast float %1949, %1957
  %1959 = fmul fast float %1950, %1957
  %1960 = fmul fast float %1951, %1957
  br label %1961

; <label>:1961                                    ; preds = %1942, %1933
  %1962 = phi float [ 0.000000e+00, %1933 ], [ %1958, %1942 ]
  %1963 = phi float [ 0.000000e+00, %1933 ], [ %1959, %1942 ]
  %1964 = phi float [ 0.000000e+00, %1933 ], [ %1960, %1942 ]
  %1965 = fmul fast float %1962, %657
  %1966 = fmul fast float %1963, %657
  %1967 = fmul fast float %1964, %657
  %1968 = fmul fast float %1935, %1599
  %1969 = call float @dx.op.dot3.f32(i32 55, float %1935, float %1935, float %1935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1970 = call float @dx.op.dot3.f32(i32 55, float %1965, float %1966, float %1967, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1971 = select i1 %102, float %1969, float %1935
  %1972 = select i1 %102, float 1.000000e+00, float %1935
  %1973 = select i1 %102, float %1970, float %1965
  %1974 = select i1 %102, float 0.000000e+00, float %1966
  %1975 = select i1 %102, float 0.000000e+00, float %1967
  %1976 = fmul fast float %1971, %1611
  %1977 = fmul fast float %1971, %1612
  %1978 = fmul fast float %1972, %1613
  %1979 = fadd fast float %1976, %1973
  %1980 = fadd fast float %1977, %1974
  %1981 = fadd fast float %1975, %1978
  br label %1982

; <label>:1982                                    ; preds = %1961, %1617, %1589, %824
  %1983 = phi float [ %829, %824 ], [ %1611, %1589 ], [ %1979, %1961 ], [ %1611, %1617 ]
  %1984 = phi float [ %830, %824 ], [ %1612, %1589 ], [ %1980, %1961 ], [ %1612, %1617 ]
  %1985 = phi float [ %831, %824 ], [ %1613, %1589 ], [ %1981, %1961 ], [ %1613, %1617 ]
  %1986 = phi float [ %832, %824 ], [ %1599, %1589 ], [ %1968, %1961 ], [ %1599, %1617 ]
  %1987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.f32 %1987, 2
  %1989 = extractvalue %dx.types.CBufRet.f32 %1987, 3
  %1990 = fmul fast float %1988, %44
  %1991 = fmul fast float %1989, %45
  %1992 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1993 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1994 = select i1 %686, i32 2, i32 0
  %1995 = or i32 %1994, 1
  %1996 = uitofp i32 %1995 to float
  %1997 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %1992, float %1993, float %1996, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1998 = extractvalue %dx.types.ResRet.f32 %1997, 0
  %1999 = extractvalue %dx.types.ResRet.f32 %1997, 1
  %2000 = extractvalue %dx.types.ResRet.f32 %1997, 2
  %2001 = extractvalue %dx.types.ResRet.f32 %1997, 3
  %2002 = add nuw nsw i32 %1994, 2
  %2003 = uitofp i32 %2002 to float
  %2004 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %1992, float %1993, float %2003, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2005 = extractvalue %dx.types.ResRet.f32 %2004, 0
  %2006 = extractvalue %dx.types.ResRet.f32 %2004, 1
  %2007 = extractvalue %dx.types.ResRet.f32 %2004, 2
  %2008 = extractvalue %dx.types.ResRet.f32 %2004, 3
  %2009 = call float @dx.op.binary.f32(i32 35, float %1999, float %2000)  ; FMax(a,b)
  %2010 = call float @dx.op.binary.f32(i32 35, float %1998, float %2009)  ; FMax(a,b)
  %2011 = call float @dx.op.binary.f32(i32 35, float %2010, float %2001)  ; FMax(a,b)
  %2012 = call float @dx.op.binary.f32(i32 36, float %2006, float %2007)  ; FMin(a,b)
  %2013 = call float @dx.op.binary.f32(i32 36, float %2005, float %2012)  ; FMin(a,b)
  %2014 = call float @dx.op.binary.f32(i32 36, float %2013, float %2008)  ; FMin(a,b)
  %2015 = fmul fast float %2011, 2.550000e+02
  %2016 = fadd fast float %2015, 0x3F70101020000000
  %2017 = fptoui float %2016 to i32
  %2018 = fmul fast float %2014, 2.550000e+02
  %2019 = fadd fast float %2018, 0x3F70101020000000
  %2020 = fptoui float %2019 to i32
  %2021 = icmp ult i32 %2017, %2020
  br i1 %2021, label %2022, label %2074

; <label>:2022                                    ; preds = %1982
  %2023 = fcmp fast ogt float %36, 9.843750e-01
  %2024 = fadd fast float %828, -4.000000e+00
  %2025 = select i1 %2023, float -4.000000e+00, float %2024
  %2026 = call float @dx.op.binary.f32(i32 35, float %2025, float 0.000000e+00)  ; FMax(a,b)
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 0
  %2029 = fadd fast float %2028, %2026
  %2030 = extractvalue %dx.types.CBufRet.f32 %2027, 2
  %2031 = fmul fast float %2029, %2030
  %2032 = call float @dx.op.unary.f32(i32 23, float %2031)  ; Log(value)
  %2033 = extractvalue %dx.types.CBufRet.f32 %2027, 3
  %2034 = fmul fast float %2033, %2032
  %2035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2036 = extractvalue %dx.types.CBufRet.f32 %2035, 2
  %2037 = fmul fast float %2034, %2036
  %2038 = call float @dx.op.unary.f32(i32 7, float %2037)  ; Saturate(value)
  %2039 = uitofp i32 %2017 to float
  %2040 = uitofp i32 %2020 to float
  %2041 = fadd fast float %2039, 5.000000e-01
  %2042 = fadd fast float %2040, 5.000000e-01
  %2043 = fmul fast float %2036, %2041
  %2044 = fmul fast float %2036, %2042
  %2045 = fadd fast float %2043, 0x3F0FFB4800000000
  %2046 = fadd fast float %2044, 0xBF0FFB4800000000
  %2047 = call float @dx.op.binary.f32(i32 35, float %2038, float %2045)  ; FMax(a,b)
  %2048 = call float @dx.op.binary.f32(i32 36, float %2047, float %2046)  ; FMin(a,b)
  %2049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2050 = extractvalue %dx.types.CBufRet.f32 %2049, 1
  %2051 = extractvalue %dx.types.CBufRet.f32 %2049, 2
  %2052 = extractvalue %dx.types.CBufRet.f32 %2049, 0
  %2053 = select i1 %686, float %2052, float 0.000000e+00
  %2054 = fmul fast float %2050, %2048
  %2055 = fadd fast float %2053, %2054
  %2056 = fadd fast float %2053, %2051
  %2057 = fsub fast float %2050, %2051
  %2058 = fadd fast float %2057, %2053
  %2059 = call float @dx.op.binary.f32(i32 35, float %2055, float %2056)  ; FMax(a,b)
  %2060 = call float @dx.op.binary.f32(i32 36, float %2059, float %2058)  ; FMin(a,b)
  %2061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %1992, float %1993, float %2060, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2062 = extractvalue %dx.types.ResRet.f32 %2061, 0
  %2063 = extractvalue %dx.types.ResRet.f32 %2061, 1
  %2064 = extractvalue %dx.types.ResRet.f32 %2061, 2
  %2065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1992, float %1993, float %2060, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  %2067 = extractvalue %dx.types.ResRet.f32 %2065, 1
  %2068 = extractvalue %dx.types.ResRet.f32 %2065, 2
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 1
  %2071 = fmul fast float %2070, %2066
  %2072 = fmul fast float %2070, %2067
  %2073 = fmul fast float %2070, %2068
  br label %2074

; <label>:2074                                    ; preds = %2022, %1982
  %2075 = phi float [ %2062, %2022 ], [ 1.000000e+00, %1982 ]
  %2076 = phi float [ %2063, %2022 ], [ 1.000000e+00, %1982 ]
  %2077 = phi float [ %2064, %2022 ], [ 1.000000e+00, %1982 ]
  %2078 = phi float [ %2071, %2022 ], [ 0.000000e+00, %1982 ]
  %2079 = phi float [ %2072, %2022 ], [ 0.000000e+00, %1982 ]
  %2080 = phi float [ %2073, %2022 ], [ 0.000000e+00, %1982 ]
  %2081 = fmul fast float %2078, %657
  %2082 = fmul fast float %2079, %657
  %2083 = fmul fast float %2080, %657
  %2084 = fmul fast float %2075, %1986
  %2085 = call float @dx.op.dot3.f32(i32 55, float %2075, float %2076, float %2077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2086 = call float @dx.op.dot3.f32(i32 55, float %2081, float %2082, float %2083, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2087 = select i1 %102, float %2085, float %2075
  %2088 = select i1 %102, float %2085, float %2076
  %2089 = select i1 %102, float 1.000000e+00, float %2077
  %2090 = select i1 %102, float %2086, float %2081
  %2091 = select i1 %102, float 0.000000e+00, float %2082
  %2092 = select i1 %102, float 0.000000e+00, float %2083
  %2093 = fmul fast float %2087, %1983
  %2094 = fmul fast float %2088, %1984
  %2095 = fmul fast float %2089, %1985
  %2096 = fadd fast float %2093, %2090
  %2097 = fadd fast float %2094, %2091
  %2098 = fadd fast float %2092, %2095
  %2099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2100 = extractvalue %dx.types.CBufRet.i32 %2099, 3
  %2101 = and i32 %2100, 3
  %2102 = icmp ne i32 %2101, 0
  %2103 = and i32 %2100, 4
  %2104 = icmp ne i32 %2103, 0
  %2105 = and i1 %2102, %2104
  %2106 = and i1 %102, %2105
  br i1 %2106, label %2107, label %2113

; <label>:2107                                    ; preds = %2074
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2110 = fadd fast float %2084, -1.000000e+00
  %2111 = fmul fast float %2109, %2110
  %2112 = fadd fast float %2111, 1.000000e+00
  br label %2113

; <label>:2113                                    ; preds = %2107, %2074
  %2114 = phi float [ %2112, %2107 ], [ %2084, %2074 ]
  %2115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2116 = extractvalue %dx.types.CBufRet.f32 %2115, 0
  br i1 %102, label %2117, label %2138

; <label>:2117                                    ; preds = %2113
  %2118 = fadd fast float %2096, %2097
  %2119 = fmul fast float %2116, %2118
  %2120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2121 = extractvalue %dx.types.CBufRet.f32 %2120, 3
  %2122 = extractvalue %dx.types.CBufRet.f32 %661, 1
  %2123 = fsub fast float %664, %2122
  %2124 = extractvalue %dx.types.CBufRet.f32 %661, 2
  %2125 = fmul fast float %2123, %2124
  %2126 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2127 = fsub fast float %2126, %2121
  %2128 = fmul fast float %2127, %2114
  %2129 = fadd fast float %2128, %2121
  %2130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2131 = extractvalue %dx.types.CBufRet.f32 %2130, 0
  %2132 = fsub fast float %2129, %2131
  %2133 = fmul fast float %2132, 1.000000e+01
  %2134 = call float @dx.op.unary.f32(i32 7, float %2133)  ; Saturate(value)
  %2135 = fmul fast float %2134, %657
  %2136 = fsub fast float %657, %2135
  %2137 = fmul fast float %2136, %2129
  br label %2147

; <label>:2138                                    ; preds = %2113
  %2139 = fmul fast float %2116, %2096
  %2140 = fmul fast float %2116, %2097
  %2141 = fmul fast float %2116, %2098
  %2142 = call float @dx.op.binary.f32(i32 35, float %2140, float %2141)  ; FMax(a,b)
  %2143 = call float @dx.op.binary.f32(i32 35, float %2139, float %2142)  ; FMax(a,b)
  %2144 = call float @dx.op.binary.f32(i32 35, float %2143, float %657)  ; FMax(a,b)
  %2145 = fcmp fast ugt float %2144, 0x3F10000000000000
  br i1 %2145, label %2147, label %2146

; <label>:2146                                    ; preds = %2138
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2147

; <label>:2147                                    ; preds = %2146, %2138, %2117
  %2148 = phi float [ %2119, %2117 ], [ %2139, %2146 ], [ %2139, %2138 ]
  %2149 = phi float [ %2137, %2117 ], [ %2140, %2146 ], [ %2140, %2138 ]
  %2150 = phi float [ %2136, %2117 ], [ %2141, %2146 ], [ %2141, %2138 ]
  %2151 = phi float [ %2136, %2117 ], [ %657, %2146 ], [ %657, %2138 ]
  %2152 = fadd fast float %496, 0x3FE3C6EF40000000
  %2153 = call float @dx.op.unary.f32(i32 22, float %2152)  ; Frc(value)
  %2154 = call float @dx.op.unary.f32(i32 23, float %2148)  ; Log(value)
  %2155 = fadd fast float %2154, -7.000000e+00
  %2156 = call float @dx.op.unary.f32(i32 21, float %2155)  ; Exp(value)
  %2157 = fmul fast float %2153, 2.000000e+00
  %2158 = fadd fast float %2157, -1.000000e+00
  %2159 = fmul fast float %2156, %2158
  %2160 = fcmp fast ogt float %2148, 0.000000e+00
  %2161 = select i1 %2160, float %2159, float 0.000000e+00
  %2162 = fadd fast float %2161, %2148
  %2163 = fadd fast float %496, 0x3FF3C6EF40000000
  %2164 = call float @dx.op.unary.f32(i32 22, float %2163)  ; Frc(value)
  %2165 = call float @dx.op.unary.f32(i32 23, float %2149)  ; Log(value)
  %2166 = fadd fast float %2165, -7.000000e+00
  %2167 = call float @dx.op.unary.f32(i32 21, float %2166)  ; Exp(value)
  %2168 = fmul fast float %2164, 2.000000e+00
  %2169 = fadd fast float %2168, -1.000000e+00
  %2170 = fmul fast float %2167, %2169
  %2171 = fcmp fast ogt float %2149, 0.000000e+00
  %2172 = select i1 %2171, float %2170, float 0.000000e+00
  %2173 = fadd fast float %2172, %2149
  %2174 = fadd fast float %496, 0x3FFDAA66E0000000
  %2175 = call float @dx.op.unary.f32(i32 22, float %2174)  ; Frc(value)
  %2176 = call float @dx.op.unary.f32(i32 23, float %2150)  ; Log(value)
  %2177 = fadd fast float %2176, -6.000000e+00
  %2178 = call float @dx.op.unary.f32(i32 21, float %2177)  ; Exp(value)
  %2179 = fmul fast float %2175, 2.000000e+00
  %2180 = fadd fast float %2179, -1.000000e+00
  %2181 = fmul fast float %2178, %2180
  %2182 = fcmp fast ogt float %2150, 0.000000e+00
  %2183 = select i1 %2182, float %2181, float 0.000000e+00
  %2184 = fadd fast float %2183, %2150
  %2185 = select i1 %102, float %2149, float %2173
  %2186 = select i1 %102, float %2150, float %2184
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2187 = call float @dx.op.binary.f32(i32 36, float %2162, float 3.225500e+04)  ; FMin(a,b)
  %2188 = call float @dx.op.binary.f32(i32 36, float %2185, float 3.225500e+04)  ; FMin(a,b)
  %2189 = call float @dx.op.binary.f32(i32 36, float %2186, float 3.225500e+04)  ; FMin(a,b)
  %2190 = call float @dx.op.binary.f32(i32 36, float %2151, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2187)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2188)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2189)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %2190)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2151)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2151)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2151)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2151)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!33}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24}
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
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[30 x i32] [i32 28, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 1, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !59}
!35 = !{!36, !55, null}
!36 = !{!37, !40, !41, !43, !46, !48, !50, !52, !54}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !39}
!41 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !42}
!42 = !{i32 3, i32 3}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 3, i8 0, !45}
!44 = !{i32 3}
!45 = !{i32 3, i32 7}
!46 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 3, i32 4, i8 0, !45}
!47 = !{i32 5}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 5, i8 0, null}
!49 = !{i32 8}
!50 = !{i32 6, !"COLOR", i8 5, i8 0, !44, i8 1, i32 1, i8 3, i32 6, i8 0, !51}
!51 = !{i32 3, i32 1}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !53, i8 1, i32 1, i8 1, i32 6, i8 3, null}
!53 = !{i32 4}
!54 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56, !57}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!57 = !{i32 1, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
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
!69 = !{!70, !70, i64 0}
!70 = !{!"float", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !{!74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!74 = distinct !{!74, !75, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!75 = distinct !{!75, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!76 = distinct !{!76, !77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!77 = distinct !{!77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!78 = distinct !{!78, !77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!79 = distinct !{!79, !80, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!80 = distinct !{!80, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!81 = distinct !{!81, !80, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!82 = distinct !{!82, !80, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!83 = distinct !{!83, !84, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!84 = distinct !{!84, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!85 = distinct !{!85, !84, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!86 = distinct !{!86, !84, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!87 = distinct !{!87, !88, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!88 = distinct !{!88, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"\01?sort@@YAXAIAM00@Z: %c"}
!91 = distinct !{!91, !"\01?sort@@YAXAIAM00@Z"}
!92 = !{!93, !94, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!93 = distinct !{!93, !91, !"\01?sort@@YAXAIAM00@Z: %a"}
!94 = distinct !{!94, !91, !"\01?sort@@YAXAIAM00@Z: %b"}
!95 = !{!94}
!96 = !{!93, !90, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!97 = !{!93}
!98 = !{!94, !90, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!99 = !{!100}
!100 = distinct !{!100, !101, !"\01?sort@@YAXAIAM00@Z: %c"}
!101 = distinct !{!101, !"\01?sort@@YAXAIAM00@Z"}
!102 = !{!103, !104, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!103 = distinct !{!103, !101, !"\01?sort@@YAXAIAM00@Z: %a"}
!104 = distinct !{!104, !101, !"\01?sort@@YAXAIAM00@Z: %b"}
!105 = !{!104}
!106 = !{!103, !100, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!107 = !{!103}
!108 = !{!104, !100, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}

