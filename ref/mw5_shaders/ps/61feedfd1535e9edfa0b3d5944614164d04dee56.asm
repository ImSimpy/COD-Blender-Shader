;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyz 
; TEXCOORD                 4   xyzw        4     NONE   float   xyzw
; TEXCOORD                 5   xy          5     NONE   float   xy  
; TEXCOORD                 8   xyzw        6     NONE   float       
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
; shader hash: b9983e35373df9e8fc2fac0c03b085fe
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
; TEXCOORD                 4                 linear       
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
;                                   texture     f32     2darray      T3     t78,space2     1
;                                   texture     f32          2d      T4     t77,space2     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture     f32          2d      T6             t0     1
;                                   texture     f32          2d      T7     t57,space2     1
;                                   texture    byte         r/o      T8     t69,space1     1
;                                   texture     u32          2d      T9     t56,space2     1
;                                   texture     f32          1d     T10     t30,space2     1
;                                   texture     f32          3d     T11     t44,space2     1
;                                   texture     f32          3d     T12     t45,space2     1
;                                   texture     f32     2darray     T13     t47,space2     1
;                                   textureunorm_f32     2darray     T14     t85,space2     1
;                                   texture     f32          2d     T15     t83,space2     1
;                                   texture     f32          2d     T16     t86,space2     1
;                                   texture    byte         r/o     T17             t1     1
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 28, 29, 30, 31, 32, 34 }
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
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 78, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = alloca [3 x float], align 4
  %49 = alloca [3 x float], align 4
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = fmul fast float %53, %44
  %55 = fmul fast float %53, %45
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 3
  %59 = fmul fast float %54, 2.000000e+00
  %60 = fmul fast float %59, %57
  %61 = fmul fast float %55, 2.000000e+00
  %62 = fmul fast float %61, %58
  %63 = fsub fast float 1.000000e+00, %60
  %64 = fsub fast float 1.000000e+00, %62
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %69 = fmul fast float %63, %66
  %70 = fmul fast float %63, %67
  %71 = fmul fast float %63, %68
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = fmul fast float %64, %73
  %77 = fmul fast float %64, %74
  %78 = fmul fast float %64, %75
  %79 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %80 = extractvalue %dx.types.CBufRet.f32 %79, 0
  %81 = extractvalue %dx.types.CBufRet.f32 %79, 1
  %82 = extractvalue %dx.types.CBufRet.f32 %79, 2
  %83 = fadd fast float %76, %80
  %84 = fadd fast float %83, %69
  %85 = fadd fast float %77, %81
  %86 = fadd fast float %85, %70
  %87 = fadd fast float %78, %82
  %88 = fadd fast float %87, %71
  %89 = fmul fast float %84, %47
  %90 = fmul fast float %86, %47
  %91 = fmul fast float %88, %47
  %92 = fmul fast float %36, %33
  %93 = fmul fast float %37, %32
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %37, %31
  %96 = fmul fast float %35, %33
  %97 = fsub fast float %95, %96
  %98 = fmul fast float %35, %32
  %99 = fmul fast float %36, %31
  %100 = fsub fast float %98, %99
  %101 = fmul fast float %94, %34
  %102 = fmul fast float %97, %34
  %103 = fmul fast float %100, %34
  %104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.i32 %104, 3
  %106 = and i32 %105, 3
  %107 = icmp ne i32 %106, 0
  %108 = and i32 %105, 4
  %109 = icmp ne i32 %108, 0
  %110 = and i1 %107, %109
  br i1 %110, label %111, label %120

; <label>:111                                     ; preds = %0
  %112 = fmul fast float %58, %55
  %113 = fmul fast float %57, %54
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %19, float %113, float %112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fsub fast float 1.000000e+00, %115
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = fcmp fast olt float %116, %118
  br label %123

; <label>:120                                     ; preds = %0
  %121 = icmp eq i32 %108, 0
  %122 = and i1 %107, %121
  br label %123

; <label>:123                                     ; preds = %120, %111
  %124 = phi i1 [ %119, %111 ], [ %122, %120 ]
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %128 = fmul fast float %126, %54
  %129 = fmul fast float %127, %55
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = and i32 %131, 114688
  %133 = icmp ne i32 %132, 0
  %134 = select i1 %133, float %128, float 0.000000e+00
  %135 = select i1 %133, float %129, float 0.000000e+00
  %136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %20, float %134, float %135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %137 = extractvalue %dx.types.ResRet.f32 %136, 0
  %138 = fmul fast float %137, 2.550000e+02
  %139 = fptoui float %138 to i32
  %140 = select i1 %133, i32 %139, i32 0
  %141 = mul i32 %23, 208
  %142 = add i32 %141, 188
  %143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %142, i32 undef)  ; BufferLoad(srv,index,wot)
  %144 = extractvalue %dx.types.ResRet.i32 %143, 0
  %145 = and i32 %105, 114688
  %146 = and i32 %105, 8
  %147 = icmp ne i32 %146, 0
  %148 = or i1 %124, %147
  %149 = select i1 %148, i32 %145, i32 16384
  %150 = and i32 %149, %144
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

; <label>:152                                     ; preds = %123
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %153

; <label>:153                                     ; preds = %152, %123
  %154 = and i32 %144, 512
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %180, label %156

; <label>:156                                     ; preds = %153
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 3
  %160 = fmul fast float %158, %54
  %161 = fmul fast float %159, %55
  %162 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %163 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %164 = fdiv fast float %162, %163
  %165 = fcmp fast ogt float %164, 0x3FFC71C720000000
  br i1 %165, label %166, label %172

; <label>:166                                     ; preds = %156
  %167 = fdiv fast float 0x3FFC71C720000000, %164
  %168 = fmul fast float %167, %161
  %169 = fsub fast float 1.000000e+00, %167
  %170 = fmul fast float %169, 5.000000e-01
  %171 = fadd fast float %170, %168
  br label %180

; <label>:172                                     ; preds = %156
  %173 = fcmp fast olt float %164, 0x3FFC71C720000000
  br i1 %173, label %174, label %180

; <label>:174                                     ; preds = %172
  %175 = fmul fast float %160, 5.625000e-01
  %176 = fmul fast float %175, %164
  %177 = fmul fast float %164, 2.812500e-01
  %178 = fsub fast float 5.000000e-01, %177
  %179 = fadd fast float %178, %176
  br label %180

; <label>:180                                     ; preds = %174, %172, %166, %153
  %181 = phi float [ %38, %153 ], [ %160, %166 ], [ %179, %174 ], [ %160, %172 ]
  %182 = phi float [ %39, %153 ], [ %171, %166 ], [ %161, %174 ], [ %161, %172 ]
  %183 = add i32 %24, 72
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = extractvalue %dx.types.ResRet.i32 %184, 1
  %187 = bitcast i32 %185 to float
  %188 = bitcast i32 %186 to float
  %189 = fmul fast float %187, %38
  %190 = fmul fast float %188, %39
  %191 = call float @dx.op.unary.f32(i32 22, float %189)  ; Frc(value)
  %192 = call float @dx.op.unary.f32(i32 22, float %190)  ; Frc(value)
  %193 = and i32 %144, 16
  %194 = icmp ne i32 %193, 0
  %195 = select i1 %194, float 1.000000e+00, float %43
  %196 = icmp eq i32 %193, 0
  br i1 %196, label %216, label %197, !dx.controlflow.hints !63

; <label>:197                                     ; preds = %180
  %198 = add i32 %141, 64
  %199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = fadd fast float %200, 1.000000e+00
  %202 = fmul fast float %201, %43
  %203 = fsub fast float %202, %200
  %204 = fsub fast float %201, %203
  %205 = call float @dx.op.unary.f32(i32 7, float %204)  ; Saturate(value)
  %206 = fsub fast float 1.000000e+00, %202
  %207 = call float @dx.op.unary.f32(i32 7, float %206)  ; Saturate(value)
  %208 = fsub fast float %205, %207
  %209 = fsub fast float %195, %207
  %210 = fdiv fast float %209, %208
  %211 = call float @dx.op.unary.f32(i32 7, float %210)  ; Saturate(value)
  %212 = fmul fast float %211, 2.000000e+00
  %213 = fsub fast float 3.000000e+00, %212
  %214 = fmul fast float %211, %211
  %215 = fmul fast float %214, %213
  br label %216

; <label>:216                                     ; preds = %197, %180
  %217 = phi float [ %215, %197 ], [ %195, %180 ]
  %218 = fcmp fast ogt float %217, 0.000000e+00
  br i1 %218, label %220, label %219

; <label>:219                                     ; preds = %216
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %220

; <label>:220                                     ; preds = %219, %216
  %221 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %222 = fmul fast float %54, 5.000000e-01
  %223 = fmul fast float %55, 5.000000e-01
  %224 = fptosi float %222 to i32
  %225 = fptosi float %223 to i32
  %226 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %224, i32 %225, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = lshr i32 %227, 18
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F4C00EBA0000000
  %231 = call float @dx.op.unary.f32(i32 21, float %230)  ; Exp(value)
  %232 = fadd fast float %231, -1.000000e+00
  %233 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %234 = extractvalue %dx.types.Dimensions %233, 0
  %235 = sitofp i32 %234 to float
  %236 = extractvalue %dx.types.Dimensions %233, 1
  %237 = sitofp i32 %236 to float
  %238 = fcmp fast oge float %222, %235
  %239 = fcmp fast oge float %223, %237
  %240 = or i1 %238, %239
  %241 = select i1 %240, float 0x4197782600000000, float %232
  %242 = fsub fast float %241, %47
  %243 = fcmp fast ogt float %242, 0.000000e+00
  %244 = and i32 %140, -2
  %245 = icmp eq i32 %244, 2
  %246 = and i1 %245, %243
  %247 = xor i1 %243, true
  %248 = icmp eq i32 %140, 1
  %249 = and i1 %248, %247
  %250 = or i1 %246, %249
  %251 = and i32 %144, 262144
  %252 = icmp ne i32 %251, 0
  %253 = and i1 %252, %250
  %254 = xor i1 %250, true
  %255 = and i32 %144, 131072
  %256 = icmp ne i32 %255, 0
  %257 = and i1 %256, %254
  %258 = or i1 %253, %257
  br i1 %258, label %259, label %260

; <label>:259                                     ; preds = %220
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %260

; <label>:260                                     ; preds = %259, %220
  %261 = and i32 %144, 32
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %512, label %263, !dx.controlflow.hints !64

; <label>:263                                     ; preds = %260
  %264 = add i32 %141, 80
  %265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = extractvalue %dx.types.ResRet.f32 %265, 1
  %268 = extractvalue %dx.types.ResRet.f32 %265, 2
  %269 = extractvalue %dx.types.ResRet.f32 %265, 3
  %270 = add i32 %141, 96
  %271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  %273 = extractvalue %dx.types.ResRet.f32 %271, 1
  %274 = extractvalue %dx.types.ResRet.f32 %271, 2
  %275 = add i32 %141, 112
  %276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = extractvalue %dx.types.ResRet.f32 %276, 1
  %279 = extractvalue %dx.types.ResRet.f32 %276, 2
  %280 = extractvalue %dx.types.ResRet.f32 %276, 3
  %281 = add i32 %141, 128
  %282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = extractvalue %dx.types.ResRet.f32 %282, 1
  %285 = extractvalue %dx.types.ResRet.f32 %282, 2
  %286 = extractvalue %dx.types.ResRet.f32 %282, 3
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %142, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 4096
  %290 = icmp ne i32 %289, 0
  %291 = fcmp fast une float %274, 0.000000e+00
  %292 = and i32 %288, 64
  %293 = icmp ne i32 %292, 0
  %294 = and i32 %288, 128
  %295 = icmp eq i32 %294, 0
  %296 = and i32 %288, 2048
  %297 = icmp eq i32 %296, 0
  %298 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %299 = extractvalue %dx.types.Dimensions %298, 0
  %300 = sitofp i32 %299 to float
  %301 = extractvalue %dx.types.Dimensions %298, 1
  %302 = sitofp i32 %301 to float
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %305 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %306 = fmul fast float %304, %54
  %307 = fmul fast float %305, %55
  %308 = fmul fast float %306, %300
  %309 = fmul fast float %307, %302
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %312 = fsub fast float -0.000000e+00, %311
  %313 = fptoui float %312 to i32
  %314 = fptoui float %308 to i32
  %315 = fptoui float %309 to i32
  %316 = and i32 %313, 31
  %317 = lshr i32 %314, %316
  %318 = lshr i32 %315, %316
  %319 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %313, i32 %317, i32 %318, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = fcmp fast ogt float %320, -1.000000e+00
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %324 = select i1 %321, float %323, float 1.000000e+00
  %325 = fadd fast float %320, 1.000000e+00
  %326 = fmul fast float %324, %325
  %327 = call float @dx.op.unary.f32(i32 6, float %326)  ; FAbs(value)
  %328 = extractvalue %dx.types.CBufRet.f32 %322, 3
  %329 = fcmp fast oge float %327, %328
  %330 = select i1 %329, float 0x4197782600000000, float %327
  br i1 %297, label %408, label %331, !dx.controlflow.hints !65

; <label>:331                                     ; preds = %263
  %332 = fmul fast float %59, %304
  %333 = fmul fast float %61, %305
  %334 = fsub fast float 1.000000e+00, %332
  %335 = fsub fast float 1.000000e+00, %333
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = fmul fast float %334, %337
  %341 = fmul fast float %334, %338
  %342 = fmul fast float %334, %339
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %347 = fmul fast float %335, %344
  %348 = fmul fast float %335, %345
  %349 = fmul fast float %335, %346
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %354 = fadd fast float %347, %351
  %355 = fadd fast float %354, %340
  %356 = fadd fast float %348, %352
  %357 = fadd fast float %356, %341
  %358 = fadd fast float %349, %353
  %359 = fadd fast float %358, %342
  %360 = fmul fast float %355, %330
  %361 = fmul fast float %357, %330
  %362 = fmul fast float %359, %330
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %366 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %367 = fsub fast float %364, %25
  %368 = fadd fast float %367, %360
  %369 = fsub fast float %365, %26
  %370 = fadd fast float %369, %361
  %371 = fsub fast float %366, %27
  %372 = fadd fast float %371, %362
  %373 = fmul fast float %28, %28
  %374 = call float @dx.op.dot3.f32(i32 55, float %368, float %370, float %372, float %368, float %370, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = fsub fast float %373, %374
  %376 = fmul fast float %273, %373
  %377 = fmul fast float %272, %373
  %378 = fcmp fast olt float %375, %376
  %379 = fcmp fast ogt float %375, %377
  %380 = or i1 %378, %379
  %381 = select i1 %380, float 0.000000e+00, float %375
  %382 = fsub fast float %272, %273
  %383 = fmul fast float %382, %373
  %384 = fsub fast float %381, %376
  %385 = fdiv fast float %384, %383
  %386 = call float @dx.op.unary.f32(i32 7, float %385)  ; Saturate(value)
  %387 = fmul fast float %386, 2.000000e+00
  %388 = fsub fast float 3.000000e+00, %387
  %389 = fmul fast float %386, %386
  %390 = fmul fast float %389, %388
  %391 = fmul fast float %277, %40
  %392 = fmul fast float %278, %41
  %393 = fmul fast float %279, %42
  %394 = fsub fast float %391, %283
  %395 = fsub fast float %392, %284
  %396 = fsub fast float %393, %285
  %397 = fsub fast float %280, %286
  %398 = fmul fast float %390, %394
  %399 = fmul fast float %390, %395
  %400 = fmul fast float %390, %396
  %401 = fmul fast float %390, %397
  %402 = fadd fast float %398, %283
  %403 = fadd fast float %399, %284
  %404 = fadd fast float %400, %285
  %405 = fadd fast float %401, %286
  %406 = fmul fast float %266, %266
  %407 = fmul fast float %406, %381
  br label %503

; <label>:408                                     ; preds = %263
  %409 = and i32 %288, 256
  %410 = icmp eq i32 %409, 0
  %411 = fsub fast float %330, %47
  br i1 %410, label %460, label %412

; <label>:412                                     ; preds = %408
  %413 = fadd fast float %272, %47
  %414 = fcmp fast olt float %330, %47
  %415 = fcmp fast ogt float %330, %413
  %416 = or i1 %414, %415
  %417 = select i1 %416, float 0.000000e+00, float %411
  %418 = call float @dx.op.unary.f32(i32 83, float %330)  ; DerivCoarseX(value)
  %419 = call float @dx.op.unary.f32(i32 84, float %330)  ; DerivCoarseY(value)
  %420 = fmul fast float %418, %418
  %421 = fmul fast float %419, %419
  %422 = fadd fast float %421, %420
  %423 = call float @dx.op.unary.f32(i32 24, float %422)  ; Sqrt(value)
  %424 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %425 = fmul fast float %424, %423
  %426 = call float @dx.op.unary.f32(i32 7, float %425)  ; Saturate(value)
  %427 = fmul fast float %426, %273
  %428 = fdiv fast float %411, %427
  %429 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %430 = fmul fast float %429, 2.000000e+00
  %431 = fsub fast float 3.000000e+00, %430
  %432 = fmul fast float %429, %429
  %433 = fmul fast float %432, %431
  %434 = fsub fast float %330, %413
  %435 = fadd fast float %434, %427
  %436 = fdiv fast float %435, %427
  %437 = call float @dx.op.unary.f32(i32 7, float %436)  ; Saturate(value)
  %438 = fmul fast float %437, 2.000000e+00
  %439 = fsub fast float 3.000000e+00, %438
  %440 = fmul fast float %437, %437
  %441 = fmul fast float %440, %439
  %442 = fsub fast float %433, %441
  %443 = fmul fast float %277, %40
  %444 = fmul fast float %278, %41
  %445 = fmul fast float %279, %42
  %446 = fsub fast float %443, %283
  %447 = fsub fast float %444, %284
  %448 = fsub fast float %445, %285
  %449 = fsub fast float %280, %286
  %450 = fmul fast float %442, %446
  %451 = fmul fast float %442, %447
  %452 = fmul fast float %442, %448
  %453 = fmul fast float %442, %449
  %454 = fadd fast float %450, %283
  %455 = fadd fast float %451, %284
  %456 = fadd fast float %452, %285
  %457 = fadd fast float %453, %286
  %458 = fmul fast float %417, %266
  %459 = call float @dx.op.unary.f32(i32 6, float %458)  ; FAbs(value)
  br label %503

; <label>:460                                     ; preds = %408
  br i1 %291, label %461, label %474

; <label>:461                                     ; preds = %460
  %462 = fdiv fast float 5.000000e+01, %28
  %463 = select i1 %293, float %462, float 1.000000e+00
  %464 = fmul fast float %463, %266
  %465 = fmul fast float %191, 2.000000e+00
  %466 = fmul fast float %192, 2.000000e+00
  %467 = fadd fast float %465, -1.000000e+00
  %468 = fadd fast float %466, -1.000000e+00
  %469 = call float @dx.op.dot2.f32(i32 54, float %467, float %468, float %467, float %468)  ; Dot2(ax,ay,bx,by)
  %470 = fmul fast float %274, %28
  %471 = fmul fast float %470, %469
  %472 = fsub fast float %411, %471
  %473 = fmul fast float %464, %472
  br label %503

; <label>:474                                     ; preds = %460
  br i1 %295, label %495, label %475

; <label>:475                                     ; preds = %474
  %476 = fmul fast float %28, 0x3F947AE140000000
  %477 = select i1 %293, float %476, float 1.000000e+00
  %478 = fdiv fast float 1.000000e+00, %477
  %479 = fmul fast float %477, %267
  %480 = fmul fast float %477, %268
  %481 = fmul fast float %478, %269
  %482 = call float @dx.op.unary.f32(i32 6, float %411)  ; FAbs(value)
  %483 = fcmp fast olt float %482, %479
  br i1 %483, label %484, label %488, !dx.controlflow.hints !66

; <label>:484                                     ; preds = %475
  %485 = fmul fast float %478, %266
  %486 = fmul fast float %485, %482
  %487 = call float @dx.op.unary.f32(i32 6, float %486)  ; FAbs(value)
  br label %503

; <label>:488                                     ; preds = %475
  %489 = fcmp fast ogt float %482, %480
  br i1 %489, label %490, label %503

; <label>:490                                     ; preds = %488
  %491 = fsub fast float %482, %480
  %492 = fmul fast float %481, %491
  %493 = call float @dx.op.unary.f32(i32 6, float %492)  ; FAbs(value)
  %494 = fsub fast float 1.000000e+00, %493
  br label %503

; <label>:495                                     ; preds = %474
  %496 = fdiv fast float 5.000000e+01, %28
  %497 = select i1 %293, float %496, float 1.000000e+00
  %498 = fmul fast float %497, %266
  %499 = call float @dx.op.unary.f32(i32 6, float %242)  ; FAbs(value)
  %500 = select i1 %290, float %499, float 0x47EFFFFFE0000000
  %501 = call float @dx.op.binary.f32(i32 36, float %411, float %500)  ; FMin(a,b)
  %502 = fmul fast float %498, %501
  br label %503

; <label>:503                                     ; preds = %495, %490, %488, %484, %461, %412, %331
  %504 = phi float [ %407, %331 ], [ %459, %412 ], [ %473, %461 ], [ %502, %495 ], [ %487, %484 ], [ %494, %490 ], [ %482, %488 ]
  %505 = phi float [ %402, %331 ], [ %454, %412 ], [ %40, %461 ], [ %40, %495 ], [ %40, %484 ], [ %40, %490 ], [ %40, %488 ]
  %506 = phi float [ %403, %331 ], [ %455, %412 ], [ %41, %461 ], [ %41, %495 ], [ %41, %484 ], [ %41, %490 ], [ %41, %488 ]
  %507 = phi float [ %404, %331 ], [ %456, %412 ], [ %42, %461 ], [ %42, %495 ], [ %42, %484 ], [ %42, %490 ], [ %42, %488 ]
  %508 = phi float [ %405, %331 ], [ %457, %412 ], [ 1.000000e+00, %461 ], [ 1.000000e+00, %495 ], [ 1.000000e+00, %484 ], [ 1.000000e+00, %490 ], [ 1.000000e+00, %488 ]
  %509 = call float @dx.op.unary.f32(i32 7, float %504)  ; Saturate(value)
  %510 = fmul fast float %508, %221
  %511 = fmul fast float %510, %509
  br label %512

; <label>:512                                     ; preds = %503, %260
  %513 = phi float [ %505, %503 ], [ %40, %260 ]
  %514 = phi float [ %506, %503 ], [ %41, %260 ]
  %515 = phi float [ %507, %503 ], [ %42, %260 ]
  %516 = phi float [ %511, %503 ], [ %221, %260 ]
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 2
  %519 = fptosi float %47 to i32
  %520 = sitofp i32 %519 to float
  %521 = fadd fast float %518, %520
  %522 = fmul fast float %521, 0x3FE3C6EF40000000
  %523 = frem fast float %54, 2.560000e+02
  %524 = frem fast float %55, 2.560000e+02
  %525 = fptoui float %523 to i32
  %526 = fptoui float %524 to i32
  %527 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %525, i32 %526, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = fadd fast float %528, %522
  %530 = call float @dx.op.unary.f32(i32 22, float %529)  ; Frc(value)
  %531 = and i32 %144, 1
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %589, label %533, !dx.controlflow.hints !67

; <label>:533                                     ; preds = %512
  %534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %141, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 2
  %536 = extractvalue %dx.types.ResRet.f32 %534, 3
  %537 = add i32 %141, 16
  %538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = add i32 %141, 32
  %543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = extractvalue %dx.types.ResRet.f32 %543, 1
  %546 = extractvalue %dx.types.ResRet.f32 %543, 2
  %547 = and i32 %144, 2
  %548 = icmp eq i32 %547, 0
  %549 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %550 = call float @dx.op.unary.f32(i32 25, float %549)  ; Rsqrt(value)
  %551 = fmul fast float %550, %35
  %552 = fmul fast float %550, %36
  %553 = fmul fast float %550, %37
  %554 = call float @dx.op.dot3.f32(i32 55, float %89, float %90, float %91, float %89, float %90, float %91)  ; Dot3(ax,ay,az,bx,by,bz)
  %555 = call float @dx.op.unary.f32(i32 25, float %554)  ; Rsqrt(value)
  %556 = fmul fast float %555, %89
  %557 = fmul fast float %555, %90
  %558 = fmul fast float %555, %91
  %559 = call float @dx.op.dot3.f32(i32 55, float %556, float %557, float %558, float %551, float %552, float %553)  ; Dot3(ax,ay,az,bx,by,bz)
  %560 = fmul fast float %559, %559
  %561 = fmul fast float %560, %535
  %562 = fadd fast float %561, %536
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  br i1 %548, label %564, label %574, !dx.controlflow.hints !68

; <label>:564                                     ; preds = %533
  %565 = extractvalue %dx.types.ResRet.f32 %534, 1
  %566 = extractvalue %dx.types.ResRet.f32 %534, 0
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 3
  %569 = fmul fast float %568, %554
  %570 = fsub fast float %566, %569
  %571 = fmul fast float %570, %565
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  %573 = fmul fast float %572, %563
  br label %574

; <label>:574                                     ; preds = %564, %533
  %575 = phi float [ %573, %564 ], [ %563, %533 ]
  %576 = fsub fast float %539, %544
  %577 = fsub fast float %540, %545
  %578 = fsub fast float %541, %546
  %579 = fmul fast float %575, %576
  %580 = fmul fast float %575, %577
  %581 = fmul fast float %575, %578
  %582 = fadd fast float %579, %544
  %583 = fadd fast float %580, %545
  %584 = fadd fast float %581, %546
  %585 = fmul fast float %582, %513
  %586 = fmul fast float %583, %514
  %587 = fmul fast float %584, %515
  %588 = fmul fast float %575, %516
  br label %589

; <label>:589                                     ; preds = %574, %512
  %590 = phi float [ %585, %574 ], [ %513, %512 ]
  %591 = phi float [ %586, %574 ], [ %514, %512 ]
  %592 = phi float [ %587, %574 ], [ %515, %512 ]
  %593 = phi float [ %588, %574 ], [ %516, %512 ]
  %594 = add i32 %24, 104
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = add i32 %596, 0
  %598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %597, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %599 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %598, %dx.types.Handle %50, float %181, float %182, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = add i32 %24, 56
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = and i32 %605, 255
  %607 = uitofp i32 %606 to float
  %608 = fmul fast float %607, 0x3F70101020000000
  %609 = lshr i32 %605, 8
  %610 = and i32 %609, 255
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %611, 0x3F70101020000000
  %613 = lshr i32 %605, 16
  %614 = and i32 %613, 255
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %615, 0x3F70101020000000
  %617 = fmul fast float %600, %590
  %618 = fmul fast float %608, %608
  %619 = fmul fast float %618, %617
  %620 = fmul fast float %601, %591
  %621 = fmul fast float %612, %612
  %622 = fmul fast float %621, %620
  %623 = fmul fast float %602, %592
  %624 = fmul fast float %616, %616
  %625 = fmul fast float %624, %623
  %626 = add i32 %24, 28
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = add i32 %24, 108
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = add i32 %631, 0
  %633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %634 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %633, %dx.types.Handle %50, float %181, float %182, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 1
  %636 = extractvalue %dx.types.ResRet.f32 %634, 3
  %637 = lshr i32 %628, 16
  %638 = and i32 %637, 255
  %639 = uitofp i32 %638 to float
  %640 = fmul fast float %639, 0x3F70101000000000
  %641 = fadd fast float %635, -5.000000e-01
  %642 = fadd fast float %636, -5.000000e-01
  %643 = fmul fast float %641, %640
  %644 = fmul fast float %642, %640
  %645 = fadd fast float %643, 5.000000e-01
  %646 = fadd fast float %644, 5.000000e-01
  %647 = fmul fast float %645, 2.000000e+00
  %648 = fadd fast float %647, -1.000000e+00
  %649 = fmul fast float %646, 2.000000e+00
  %650 = fadd fast float %649, -1.000000e+00
  %651 = fadd fast float %648, %650
  %652 = fmul fast float %651, 5.000000e-01
  %653 = fsub fast float %648, %650
  %654 = fmul fast float %653, 5.000000e-01
  %655 = call float @dx.op.unary.f32(i32 6, float %652)  ; FAbs(value)
  %656 = fsub fast float 1.000000e+00, %655
  %657 = call float @dx.op.unary.f32(i32 6, float %654)  ; FAbs(value)
  %658 = fsub fast float %656, %657
  %659 = call float @dx.op.dot3.f32(i32 55, float %652, float %654, float %658, float %652, float %654, float %658)  ; Dot3(ax,ay,az,bx,by,bz)
  %660 = call float @dx.op.unary.f32(i32 25, float %659)  ; Rsqrt(value)
  %661 = fmul fast float %652, %660
  %662 = fmul fast float %654, %660
  %663 = add i32 %24, 40
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 255
  %667 = uitofp i32 %666 to float
  %668 = fmul fast float %667, 0x3F70101020000000
  %669 = fmul fast float %668, %668
  %670 = add i32 %24, 112
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %670, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = add i32 %672, 0
  %674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %674, %dx.types.Handle %51, float %181, float %182, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %676 = extractvalue %dx.types.ResRet.f32 %675, 0
  %677 = fmul fast float %669, %676
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 3
  %680 = fcmp fast ogt float %679, 0.000000e+00
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 1
  br i1 %680, label %683, label %708

; <label>:683                                     ; preds = %589
  %684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %29, float %30, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = extractvalue %dx.types.ResRet.f32 %684, 1
  %687 = extractvalue %dx.types.ResRet.f32 %684, 2
  %688 = extractvalue %dx.types.ResRet.f32 %684, 3
  %689 = fmul fast float %682, %688
  %690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %29, float %30, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %691 = extractvalue %dx.types.ResRet.f32 %690, 0
  %692 = extractvalue %dx.types.ResRet.f32 %690, 1
  %693 = extractvalue %dx.types.ResRet.f32 %690, 2
  %694 = extractvalue %dx.types.ResRet.f32 %690, 3
  %695 = fmul fast float %682, %691
  %696 = fmul fast float %682, %692
  %697 = fmul fast float %682, %693
  %698 = fmul fast float %682, %694
  %699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %29, float %30, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  %701 = extractvalue %dx.types.ResRet.f32 %699, 1
  %702 = extractvalue %dx.types.ResRet.f32 %699, 2
  %703 = extractvalue %dx.types.ResRet.f32 %699, 3
  %704 = fmul fast float %682, %700
  %705 = fmul fast float %682, %701
  %706 = fmul fast float %682, %702
  %707 = fmul fast float %682, %703
  br label %713

; <label>:708                                     ; preds = %589
  %709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  %711 = extractvalue %dx.types.ResRet.f32 %709, 1
  %712 = extractvalue %dx.types.ResRet.f32 %709, 2
  br label %713

; <label>:713                                     ; preds = %708, %683
  %714 = phi float [ %704, %683 ], [ 0.000000e+00, %708 ]
  %715 = phi float [ %705, %683 ], [ 0.000000e+00, %708 ]
  %716 = phi float [ %706, %683 ], [ 0.000000e+00, %708 ]
  %717 = phi float [ %707, %683 ], [ 0.000000e+00, %708 ]
  %718 = phi float [ %695, %683 ], [ 0.000000e+00, %708 ]
  %719 = phi float [ %696, %683 ], [ 0.000000e+00, %708 ]
  %720 = phi float [ %697, %683 ], [ 0.000000e+00, %708 ]
  %721 = phi float [ %698, %683 ], [ 0.000000e+00, %708 ]
  %722 = phi float [ %685, %683 ], [ %710, %708 ]
  %723 = phi float [ %686, %683 ], [ %711, %708 ]
  %724 = phi float [ %687, %683 ], [ %712, %708 ]
  %725 = phi float [ %689, %683 ], [ 0.000000e+00, %708 ]
  %726 = fmul float %682, %724
  %727 = fmul float %682, %723
  %728 = fmul float %682, %722
  %729 = call float @dx.op.dot2.f32(i32 54, float %661, float %662, float %661, float %662)  ; Dot2(ax,ay,bx,by)
  %730 = fsub fast float 1.000000e+00, %729
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %732 = call float @dx.op.unary.f32(i32 24, float %731)  ; Sqrt(value)
  %733 = fmul fast float %732, %35
  %734 = fmul fast float %732, %36
  %735 = fmul fast float %732, %37
  %736 = fmul fast float %661, %31
  %737 = fmul fast float %661, %32
  %738 = fmul fast float %661, %33
  %739 = fmul fast float %101, %662
  %740 = fmul fast float %102, %662
  %741 = fmul fast float %103, %662
  %742 = fadd fast float %739, %736
  %743 = fadd fast float %742, %733
  %744 = fadd fast float %740, %737
  %745 = fadd fast float %744, %734
  %746 = fadd fast float %741, %738
  %747 = fadd fast float %746, %735
  %748 = call float @dx.op.dot3.f32(i32 55, float %743, float %745, float %747, float %743, float %745, float %747)  ; Dot3(ax,ay,az,bx,by,bz)
  %749 = call float @dx.op.unary.f32(i32 25, float %748)  ; Rsqrt(value)
  %750 = call float @dx.op.dot3.f32(i32 55, float %619, float %622, float %625, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %751 = add i32 %24, 32
  %752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %751, i32 undef)  ; BufferLoad(srv,index,wot)
  %753 = extractvalue %dx.types.ResRet.i32 %752, 0
  %754 = and i32 %753, 255
  %755 = uitofp i32 %754 to float
  %756 = lshr i32 %753, 8
  %757 = and i32 %756, 255
  %758 = uitofp i32 %757 to float
  %759 = fmul fast float %758, %750
  %760 = fadd fast float %759, %755
  %761 = fmul fast float %760, 0x3F70101020000000
  %762 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %763 = and i32 %144, 8192
  %764 = icmp eq i32 %763, 0
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 0
  br i1 %764, label %773, label %767, !dx.controlflow.hints !69

; <label>:767                                     ; preds = %713
  %768 = add i32 %141, 176
  %769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.f32 %769, 0
  %771 = fcmp fast oge float %770, 0.000000e+00
  %772 = select i1 %771, float %770, float %766
  br label %773

; <label>:773                                     ; preds = %767, %713
  %774 = phi float [ %772, %767 ], [ %766, %713 ]
  %775 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %224, i32 %225, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = lshr i32 %776, 18
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F4C00EBA0000000
  %780 = call float @dx.op.unary.f32(i32 21, float %779)  ; Exp(value)
  %781 = fadd fast float %780, -1.000000e+00
  %782 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %783 = extractvalue %dx.types.Dimensions %782, 0
  %784 = sitofp i32 %783 to float
  %785 = extractvalue %dx.types.Dimensions %782, 1
  %786 = sitofp i32 %785 to float
  %787 = fcmp fast oge float %222, %784
  %788 = fcmp fast oge float %223, %786
  %789 = or i1 %787, %788
  %790 = select i1 %789, float 0x4197782600000000, float %781
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 3
  %793 = fcmp fast ogt float %792, 0.000000e+00
  br i1 %793, label %794, label %803

; <label>:794                                     ; preds = %773
  %795 = fmul fast float %749, 0xBFDF454380000000
  %796 = fmul fast float %795, %745
  %797 = fmul fast float %749, 0x3FDF454380000000
  %798 = fmul fast float %797, %747
  %799 = fmul fast float %795, %743
  %800 = call float @dx.op.dot4.f32(i32 56, float %728, float %727, float %726, float %725, float 0x3FD20DD760000000, float %796, float %798, float %799)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %801 = call float @dx.op.dot4.f32(i32 56, float %718, float %719, float %720, float %721, float 0x3FD20DD760000000, float %796, float %798, float %799)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %802 = call float @dx.op.dot4.f32(i32 56, float %714, float %715, float %716, float %717, float 0x3FD20DD760000000, float %796, float %798, float %799)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %803

; <label>:803                                     ; preds = %794, %773
  %804 = phi float [ %800, %794 ], [ %728, %773 ]
  %805 = phi float [ %801, %794 ], [ %727, %773 ]
  %806 = phi float [ %802, %794 ], [ %726, %773 ]
  %807 = fadd fast float %677, -1.000000e+00
  %808 = fmul fast float %807, %593
  %809 = fadd fast float %808, 1.000000e+00
  %810 = call float @dx.op.dot3.f32(i32 55, float %809, float %809, float %809, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %811 = fsub fast float 1.000000e+00, %810
  %812 = fmul fast float %774, %762
  %813 = fsub fast float 1.000000e+00, %762
  %814 = call float @dx.op.unary.f32(i32 7, float %813)  ; Saturate(value)
  %815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.f32 %815, 3
  %817 = fmul fast float %816, %814
  %818 = fadd fast float %817, %812
  %819 = and i32 %144, 2097152
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %825, label %821, !dx.controlflow.hints !70

; <label>:821                                     ; preds = %803
  %822 = add i32 %141, 192
  %823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  br label %828

; <label>:825                                     ; preds = %803
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 3
  br label %828

; <label>:828                                     ; preds = %825, %821
  %829 = phi float [ %824, %821 ], [ %827, %825 ]
  %830 = fmul fast float %619, %593
  %831 = fmul fast float %830, %804
  %832 = fmul fast float %622, %593
  %833 = fmul fast float %832, %805
  %834 = fmul fast float %625, %593
  %835 = fmul fast float %834, %806
  %836 = icmp eq i32 %140, 3
  %837 = fcmp fast ogt float %47, %790
  %838 = and i1 %248, %837
  %839 = or i1 %836, %838
  %840 = icmp eq i32 %140, 2
  %841 = fcmp fast ole float %47, %790
  %842 = and i1 %840, %841
  %843 = or i1 %842, %839
  br i1 %838, label %844, label %981

; <label>:844                                     ; preds = %828
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %847 = extractvalue %dx.types.CBufRet.f32 %845, 3
  %848 = fmul fast float %846, %54
  %849 = fmul fast float %847, %55
  %850 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %851 = call float @dx.op.unary.f32(i32 7, float %849)  ; Saturate(value)
  %852 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %19, float %850, float %851, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  %854 = extractvalue %dx.types.ResRet.f32 %852, 1
  %855 = extractvalue %dx.types.ResRet.f32 %852, 2
  %856 = extractvalue %dx.types.ResRet.f32 %852, 3
  %857 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %19, float %850, float %851, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = extractvalue %dx.types.ResRet.f32 %857, 1
  %860 = extractvalue %dx.types.ResRet.f32 %857, 2
  %861 = extractvalue %dx.types.ResRet.f32 %857, 3
  %862 = call float @dx.op.binary.f32(i32 35, float %854, float %855)  ; FMax(a,b)
  %863 = call float @dx.op.binary.f32(i32 35, float %853, float %862)  ; FMax(a,b)
  %864 = call float @dx.op.binary.f32(i32 35, float %863, float %856)  ; FMax(a,b)
  %865 = call float @dx.op.binary.f32(i32 36, float %859, float %860)  ; FMin(a,b)
  %866 = call float @dx.op.binary.f32(i32 36, float %858, float %865)  ; FMin(a,b)
  %867 = call float @dx.op.binary.f32(i32 36, float %866, float %861)  ; FMin(a,b)
  %868 = fmul fast float %864, 2.550000e+02
  %869 = fadd fast float %868, 0x3F70101020000000
  %870 = fptoui float %869 to i32
  %871 = fmul fast float %867, 2.550000e+02
  %872 = fadd fast float %871, 0x3F70101020000000
  %873 = fptoui float %872 to i32
  %874 = icmp ult i32 %870, %873
  br i1 %874, label %875, label %926

; <label>:875                                     ; preds = %844
  %876 = fcmp fast ogt float %46, 9.843750e-01
  %877 = fadd fast float %47, -4.000000e+00
  %878 = select i1 %876, float -4.000000e+00, float %877
  %879 = call float @dx.op.binary.f32(i32 35, float %878, float 0.000000e+00)  ; FMax(a,b)
  %880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.f32 %880, 0
  %882 = fadd fast float %881, %879
  %883 = extractvalue %dx.types.CBufRet.f32 %880, 2
  %884 = fmul fast float %882, %883
  %885 = call float @dx.op.unary.f32(i32 23, float %884)  ; Log(value)
  %886 = extractvalue %dx.types.CBufRet.f32 %880, 3
  %887 = fmul fast float %886, %885
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 2
  %890 = fmul fast float %887, %889
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  %892 = uitofp i32 %870 to float
  %893 = uitofp i32 %873 to float
  %894 = fadd fast float %892, 5.000000e-01
  %895 = fadd fast float %893, 5.000000e-01
  %896 = fmul fast float %889, %894
  %897 = fmul fast float %889, %895
  %898 = fadd fast float %896, 0x3F0FFB4800000000
  %899 = fadd fast float %897, 0xBF0FFB4800000000
  %900 = call float @dx.op.binary.f32(i32 35, float %891, float %898)  ; FMax(a,b)
  %901 = call float @dx.op.binary.f32(i32 36, float %900, float %899)  ; FMin(a,b)
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 1
  %904 = extractvalue %dx.types.CBufRet.f32 %902, 2
  %905 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %906 = fmul fast float %903, %901
  %907 = fadd fast float %905, %906
  %908 = fadd fast float %905, %904
  %909 = fsub fast float %903, %904
  %910 = fadd fast float %909, %905
  %911 = call float @dx.op.binary.f32(i32 35, float %907, float %908)  ; FMax(a,b)
  %912 = call float @dx.op.binary.f32(i32 36, float %911, float %910)  ; FMin(a,b)
  %913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %18, float %850, float %851, float %912, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %914 = extractvalue %dx.types.ResRet.f32 %913, 0
  %915 = extractvalue %dx.types.ResRet.f32 %913, 1
  %916 = extractvalue %dx.types.ResRet.f32 %913, 2
  %917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %18, float %850, float %851, float %912, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %918 = extractvalue %dx.types.ResRet.f32 %917, 0
  %919 = extractvalue %dx.types.ResRet.f32 %917, 1
  %920 = extractvalue %dx.types.ResRet.f32 %917, 2
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 1
  %923 = fmul fast float %922, %918
  %924 = fmul fast float %922, %919
  %925 = fmul fast float %922, %920
  br label %926

; <label>:926                                     ; preds = %875, %844
  %927 = phi float [ %914, %875 ], [ 1.000000e+00, %844 ]
  %928 = phi float [ %915, %875 ], [ 1.000000e+00, %844 ]
  %929 = phi float [ %916, %875 ], [ 1.000000e+00, %844 ]
  %930 = phi float [ %923, %875 ], [ 0.000000e+00, %844 ]
  %931 = phi float [ %924, %875 ], [ 0.000000e+00, %844 ]
  %932 = phi float [ %925, %875 ], [ 0.000000e+00, %844 ]
  %933 = fmul fast float %930, %811
  %934 = fmul fast float %931, %811
  %935 = fmul fast float %932, %811
  %936 = call float @dx.op.dot3.f32(i32 55, float %927, float %928, float %929, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %937 = call float @dx.op.dot3.f32(i32 55, float %933, float %934, float %935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %938 = select i1 %124, float %936, float %927
  %939 = select i1 %124, float %936, float %928
  %940 = select i1 %124, float 1.000000e+00, float %929
  %941 = select i1 %124, float %937, float %933
  %942 = select i1 %124, float 0.000000e+00, float %934
  %943 = select i1 %124, float 0.000000e+00, float %935
  %944 = fmul fast float %938, %831
  %945 = fmul fast float %939, %833
  %946 = fmul fast float %940, %835
  %947 = fadd fast float %944, %941
  %948 = fadd fast float %945, %942
  %949 = fadd fast float %943, %946
  %950 = fmul fast float %59, %846
  %951 = fmul fast float %61, %847
  %952 = fsub fast float 1.000000e+00, %950
  %953 = fsub fast float 1.000000e+00, %951
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 0
  %956 = extractvalue %dx.types.CBufRet.f32 %954, 1
  %957 = extractvalue %dx.types.CBufRet.f32 %954, 2
  %958 = fmul fast float %952, %955
  %959 = fmul fast float %952, %956
  %960 = fmul fast float %952, %957
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %964 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %965 = fmul fast float %953, %962
  %966 = fmul fast float %953, %963
  %967 = fmul fast float %953, %964
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 0
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 1
  %971 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %972 = fadd fast float %965, %969
  %973 = fadd fast float %972, %958
  %974 = fadd fast float %966, %970
  %975 = fadd fast float %974, %959
  %976 = fadd fast float %967, %971
  %977 = fadd fast float %976, %960
  %978 = fmul fast float %973, %790
  %979 = fmul fast float %975, %790
  %980 = fmul fast float %977, %790
  br label %981

; <label>:981                                     ; preds = %926, %828
  %982 = phi float [ %978, %926 ], [ %89, %828 ]
  %983 = phi float [ %979, %926 ], [ %90, %828 ]
  %984 = phi float [ %980, %926 ], [ %91, %828 ]
  %985 = phi float [ %790, %926 ], [ %47, %828 ]
  %986 = phi float [ %947, %926 ], [ %831, %828 ]
  %987 = phi float [ %948, %926 ], [ %833, %828 ]
  %988 = phi float [ %949, %926 ], [ %835, %828 ]
  %989 = phi float [ %927, %926 ], [ 1.000000e+00, %828 ]
  br i1 %843, label %2039, label %990

; <label>:990                                     ; preds = %981
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %993 = extractvalue %dx.types.CBufRet.f32 %991, 1
  %994 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %995 = extractvalue %dx.types.CBufRet.f32 %991, 3
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = extractvalue %dx.types.CBufRet.f32 %996, 1
  %999 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %1000 = extractvalue %dx.types.CBufRet.f32 %996, 3
  %1001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1002 = extractvalue %dx.types.CBufRet.f32 %1001, 0
  %1003 = extractvalue %dx.types.CBufRet.f32 %1001, 1
  %1004 = extractvalue %dx.types.CBufRet.f32 %1001, 2
  %1005 = extractvalue %dx.types.CBufRet.f32 %1001, 3
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 0
  %1008 = extractvalue %dx.types.CBufRet.f32 %1006, 1
  %1009 = extractvalue %dx.types.CBufRet.f32 %1006, 2
  %1010 = extractvalue %dx.types.CBufRet.f32 %1006, 3
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 3
  %1013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1013, 3
  %1015 = extractvalue %dx.types.CBufRet.f32 %1013, 0
  %1016 = extractvalue %dx.types.CBufRet.f32 %1013, 1
  %1017 = extractvalue %dx.types.CBufRet.f32 %1013, 2
  %1018 = fcmp fast olt float %1017, -5.000000e-01
  %1019 = call float @dx.op.dot3.f32(i32 55, float %982, float %983, float %984, float %982, float %983, float %984)  ; Dot3(ax,ay,az,bx,by,bz)
  %1020 = call float @dx.op.unary.f32(i32 25, float %1019)  ; Rsqrt(value)
  %1021 = fmul fast float %1020, %1019
  %1022 = fmul fast float %1020, %982
  %1023 = fmul fast float %1020, %983
  %1024 = fmul fast float %1020, %984
  %1025 = fadd fast float %1021, %995
  %1026 = call float @dx.op.dot3.f32(i32 55, float %1022, float %1023, float %1024, float %992, float %993, float %994)  ; Dot3(ax,ay,az,bx,by,bz)
  %1027 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.i32 %1027, 1
  %1029 = and i32 %1028, 1
  %1030 = icmp ne i32 %1029, 0
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 2
  %1033 = fcmp fast ogt float %1032, 0.000000e+00
  %1034 = and i1 %1030, %1033
  br i1 %1034, label %1035, label %1441, !dx.controlflow.hints !71

; <label>:1035                                    ; preds = %990
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 3
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 2
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 2
  %1042 = fsub fast float %1039, %1041
  %1043 = and i32 %1028, 2
  %1044 = extractvalue %dx.types.CBufRet.i32 %1027, 0
  %1045 = call i32 @dx.op.binary.i32(i32 40, i32 %1044, i32 3)  ; UMin(a,b)
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.CBufRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.CBufRet.f32 %1040, 0
  %1050 = extractvalue %dx.types.CBufRet.f32 %1040, 1
  %1051 = fsub fast float %1047, %1049
  %1052 = fsub fast float %1048, %1050
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1055 = fcmp fast ogt float %1054, 0.000000e+00
  %1056 = fsub fast float -0.000000e+00, %1051
  %1057 = fsub fast float -0.000000e+00, %1052
  %1058 = call float @dx.op.dot2.f32(i32 54, float %1022, float %1023, float %1022, float %1023)  ; Dot2(ax,ay,bx,by)
  %1059 = call float @dx.op.dot2.f32(i32 54, float %1022, float %1023, float %1056, float %1057)  ; Dot2(ax,ay,bx,by)
  %1060 = fmul fast float %1059, 2.000000e+00
  %1061 = call float @dx.op.dot2.f32(i32 54, float %1056, float %1057, float %1056, float %1057)  ; Dot2(ax,ay,bx,by)
  %1062 = fmul fast float %1054, %1054
  %1063 = fsub fast float %1061, %1062
  %1064 = fmul fast float %1060, %1060
  %1065 = fmul fast float %1058, 4.000000e+00
  %1066 = fmul fast float %1065, %1063
  %1067 = fsub fast float %1064, %1066
  %1068 = fcmp fast ogt float %1067, 0.000000e+00
  br i1 %1068, label %1069, label %1084

; <label>:1069                                    ; preds = %1035
  %1070 = fcmp fast ogt float %1060, 0.000000e+00
  %1071 = call float @dx.op.unary.f32(i32 24, float %1067)  ; Sqrt(value)
  %1072 = fsub fast float -0.000000e+00, %1071
  %1073 = select i1 %1070, float %1071, float %1072
  %1074 = fadd fast float %1073, %1060
  %1075 = fmul float %1074, -5.000000e-01
  %1076 = fdiv fast float %1075, %1058
  %1077 = call float @dx.op.binary.f32(i32 35, float %1076, float 0.000000e+00)  ; FMax(a,b)
  %1078 = call float @dx.op.binary.f32(i32 36, float %1021, float %1077)  ; FMin(a,b)
  %1079 = fdiv fast float %1063, %1075
  %1080 = call float @dx.op.binary.f32(i32 35, float %1079, float 0.000000e+00)  ; FMax(a,b)
  %1081 = call float @dx.op.binary.f32(i32 36, float %1021, float %1080)  ; FMin(a,b)
  %1082 = call float @dx.op.binary.f32(i32 36, float %1078, float %1081)  ; FMin(a,b)
  %1083 = call float @dx.op.binary.f32(i32 35, float %1078, float %1081)  ; FMax(a,b)
  br label %1084

; <label>:1084                                    ; preds = %1069, %1035
  %1085 = phi float [ %1083, %1069 ], [ -1.000000e+00, %1035 ]
  %1086 = phi float [ %1082, %1069 ], [ -1.000000e+00, %1035 ]
  %1087 = phi i1 [ true, %1069 ], [ false, %1035 ]
  %1088 = and i1 %1055, %1087
  br i1 %1088, label %1089, label %1091

; <label>:1089                                    ; preds = %1084
  %1090 = fcmp fast oeq float %1086, %1085
  br i1 %1090, label %1394, label %1092

; <label>:1091                                    ; preds = %1084
  br i1 %1055, label %1394, label %1092

; <label>:1092                                    ; preds = %1091, %1089
  %1093 = phi float [ %1021, %1091 ], [ %1085, %1089 ]
  %1094 = phi float [ 0.000000e+00, %1091 ], [ %1086, %1089 ]
  %1095 = icmp ne i32 %1043, 0
  %1096 = fmul fast float %1093, %1024
  %1097 = fadd fast float %1096, %1037
  %1098 = fmul fast float %1097, %1093
  %1099 = select i1 %1095, float 0.000000e+00, float %1098
  %1100 = fcmp fast oeq float %1024, 0.000000e+00
  %1101 = fdiv fast float %1042, %1024
  %1102 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1101)  ; FMax(a,b)
  %1103 = select i1 %1100, float %1093, float %1102
  %1104 = call float @dx.op.binary.f32(i32 36, float %1093, float %1103)  ; FMin(a,b)
  %1105 = fcmp fast ogt float %1024, 0.000000e+00
  %1106 = fcmp fast olt float %1042, 0.000000e+00
  br i1 %1105, label %1107, label %1164

; <label>:1107                                    ; preds = %1092
  %1108 = icmp eq i32 %1043, 0
  br i1 %1106, label %1109, label %1153

; <label>:1109                                    ; preds = %1107
  %1110 = select i1 %1108, float %1093, float 0.000000e+00
  %1111 = fsub fast float -0.000000e+00, %1110
  %1112 = call float @dx.op.unary.f32(i32 6, float %1111)  ; FAbs(value)
  %1113 = fmul fast float %1110, %1024
  %1114 = fadd fast float %1113, %1037
  %1115 = fmul fast float %1112, %1114
  %1116 = fsub fast float %1099, %1115
  %1117 = fsub fast float %1093, %1112
  %1118 = select i1 %1108, float %1117, float 0.000000e+00
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.CBufRet.f32 %1119, 2
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.CBufRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1127 = extractvalue %dx.types.CBufRet.f32 %1123, 3
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 3
  %1130 = call float @dx.op.binary.f32(i32 36, float %1116, float %1129)  ; FMin(a,b)
  %1131 = fmul fast float %1127, %1118
  %1132 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  %1133 = fsub fast float %1124, %1120
  %1134 = fsub fast float %1125, %1121
  %1135 = fsub fast float %1126, %1122
  %1136 = fmul fast float %1132, %1133
  %1137 = fmul fast float %1132, %1134
  %1138 = fmul fast float %1132, %1135
  %1139 = fadd fast float %1136, %1120
  %1140 = fadd fast float %1137, %1121
  %1141 = fadd fast float %1138, %1122
  %1142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1143 = extractvalue %dx.types.CBufRet.f32 %1142, 0
  %1144 = extractvalue %dx.types.CBufRet.f32 %1142, 1
  %1145 = fadd fast float %1144, %1143
  %1146 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1142, 2
  %1148 = extractvalue %dx.types.CBufRet.f32 %1142, 3
  %1149 = fadd fast float %1148, %1147
  %1150 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  %1151 = fmul fast float %1146, %1130
  %1152 = fmul fast float %1151, %1150
  br label %1394

; <label>:1153                                    ; preds = %1107
  br i1 %1108, label %1154, label %1175

; <label>:1154                                    ; preds = %1153
  %1155 = call float @dx.op.binary.f32(i32 36, float %1104, float %1094)  ; FMin(a,b)
  %1156 = fsub fast float %1104, %1155
  %1157 = fsub fast float %1156, %1093
  %1158 = call float @dx.op.unary.f32(i32 6, float %1157)  ; FAbs(value)
  %1159 = fadd fast float %1156, %1093
  %1160 = fmul fast float %1159, %1024
  %1161 = fadd fast float %1160, %1037
  %1162 = fmul fast float %1161, %1158
  %1163 = fsub fast float %1099, %1162
  br label %1175

; <label>:1164                                    ; preds = %1092
  br i1 %1106, label %1165, label %1175

; <label>:1165                                    ; preds = %1164
  %1166 = call float @dx.op.binary.f32(i32 35, float %1094, float %1104)  ; FMax(a,b)
  %1167 = icmp eq i32 %1043, 0
  %1168 = select i1 %1167, float %1104, float 0.000000e+00
  %1169 = fsub fast float -0.000000e+00, %1168
  %1170 = call float @dx.op.unary.f32(i32 6, float %1169)  ; FAbs(value)
  %1171 = fmul fast float %1168, %1024
  %1172 = fadd fast float %1171, %1037
  %1173 = fmul fast float %1170, %1172
  %1174 = fsub fast float %1099, %1173
  br label %1175

; <label>:1175                                    ; preds = %1165, %1164, %1154, %1153
  %1176 = phi float [ %1094, %1153 ], [ %1094, %1154 ], [ %1166, %1165 ], [ %1094, %1164 ]
  %1177 = phi float [ 0.000000e+00, %1153 ], [ %1158, %1154 ], [ %1170, %1165 ], [ 0.000000e+00, %1164 ]
  %1178 = phi float [ %1099, %1153 ], [ %1163, %1154 ], [ %1174, %1165 ], [ %1099, %1164 ]
  %1179 = phi float [ %1104, %1153 ], [ %1104, %1154 ], [ %1093, %1165 ], [ %1093, %1164 ]
  %1180 = getelementptr inbounds [3 x float], [3 x float]* %48, i32 0, i32 0
  store float -1.000000e+00, float* %1180, align 4, !tbaa !72, !noalias !76
  %1181 = getelementptr inbounds [3 x float], [3 x float]* %48, i32 0, i32 1
  store float -1.000000e+00, float* %1181, align 4, !tbaa !72, !noalias !76
  %1182 = getelementptr inbounds [3 x float], [3 x float]* %48, i32 0, i32 2
  store float -1.000000e+00, float* %1182, align 4, !tbaa !72, !noalias !76
  %1183 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 0
  store float -1.000000e+00, float* %1183, align 4, !tbaa !72, !noalias !76
  %1184 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 1
  store float -1.000000e+00, float* %1184, align 4, !tbaa !72, !noalias !76
  %1185 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 2
  store float -1.000000e+00, float* %1185, align 4, !tbaa !72, !noalias !76
  %1186 = icmp sgt i32 %1045, 0
  br i1 %1186, label %1187, label %1248

; <label>:1187                                    ; preds = %1175
  br label %1188

; <label>:1188                                    ; preds = %1237, %1187
  %1189 = phi i32 [ %1238, %1237 ], [ 0, %1187 ]
  %1190 = phi i32 [ %1239, %1237 ], [ 0, %1187 ]
  %1191 = add nuw i32 %1190, 171
  %1192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 %1191)  ; CBufferLoadLegacy(handle,regIndex)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.CBufRet.f32 %1192, 1
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.CBufRet.f32 %1195, 1
  %1198 = fsub fast float %1193, %1196
  %1199 = fsub fast float %1194, %1197
  %1200 = extractvalue %dx.types.CBufRet.f32 %1192, 2
  %1201 = fsub fast float -0.000000e+00, %1198
  %1202 = fsub fast float -0.000000e+00, %1199
  %1203 = call float @dx.op.dot2.f32(i32 54, float %1022, float %1023, float %1201, float %1202)  ; Dot2(ax,ay,bx,by)
  %1204 = fmul fast float %1203, 2.000000e+00
  %1205 = call float @dx.op.dot2.f32(i32 54, float %1201, float %1202, float %1201, float %1202)  ; Dot2(ax,ay,bx,by)
  %1206 = fmul fast float %1200, %1200
  %1207 = fsub fast float %1205, %1206
  %1208 = fmul fast float %1204, %1204
  %1209 = fmul fast float %1065, %1207
  %1210 = fsub fast float %1208, %1209
  %1211 = fcmp fast ogt float %1210, 0.000000e+00
  br i1 %1211, label %1212, label %1227

; <label>:1212                                    ; preds = %1188
  %1213 = fcmp fast ogt float %1204, 0.000000e+00
  %1214 = call float @dx.op.unary.f32(i32 24, float %1210)  ; Sqrt(value)
  %1215 = fsub fast float -0.000000e+00, %1214
  %1216 = select i1 %1213, float %1214, float %1215
  %1217 = fadd fast float %1216, %1204
  %1218 = fmul float %1217, -5.000000e-01
  %1219 = fdiv fast float %1218, %1058
  %1220 = call float @dx.op.binary.f32(i32 35, float %1219, float 0.000000e+00)  ; FMax(a,b)
  %1221 = call float @dx.op.binary.f32(i32 36, float %1093, float %1220)  ; FMin(a,b)
  %1222 = fdiv fast float %1207, %1218
  %1223 = call float @dx.op.binary.f32(i32 35, float %1222, float 0.000000e+00)  ; FMax(a,b)
  %1224 = call float @dx.op.binary.f32(i32 36, float %1093, float %1223)  ; FMin(a,b)
  %1225 = call float @dx.op.binary.f32(i32 36, float %1221, float %1224)  ; FMin(a,b)
  %1226 = call float @dx.op.binary.f32(i32 35, float %1221, float %1224)  ; FMax(a,b)
  br label %1227

; <label>:1227                                    ; preds = %1212, %1188
  %1228 = phi float [ %1226, %1212 ], [ -1.000000e+00, %1188 ]
  %1229 = phi float [ %1225, %1212 ], [ -1.000000e+00, %1188 ]
  %1230 = phi i1 [ true, %1212 ], [ false, %1188 ]
  br i1 %1230, label %1231, label %1237

; <label>:1231                                    ; preds = %1227
  %1232 = call float @dx.op.binary.f32(i32 35, float %1176, float %1229)  ; FMax(a,b)
  %1233 = getelementptr inbounds [3 x float], [3 x float]* %48, i32 0, i32 %1190
  store float %1232, float* %1233, align 4, !tbaa !72, !noalias !76
  %1234 = call float @dx.op.binary.f32(i32 35, float %1176, float %1228)  ; FMax(a,b)
  %1235 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 %1190
  store float %1234, float* %1235, align 4, !tbaa !72, !noalias !76
  %1236 = add nsw i32 %1189, 1
  br label %1237

; <label>:1237                                    ; preds = %1231, %1227
  %1238 = phi i32 [ %1236, %1231 ], [ %1189, %1227 ]
  %1239 = add nuw nsw i32 %1190, 1
  %1240 = icmp eq i32 %1239, %1045
  br i1 %1240, label %1241, label %1188

; <label>:1241                                    ; preds = %1237
  %1242 = load float, float* %1182, align 4, !tbaa !72, !alias.scope !92, !noalias !95
  %1243 = load float, float* %1181, align 4, !tbaa !72, !alias.scope !98, !noalias !99
  %1244 = load float, float* %1180, align 4, !tbaa !72, !alias.scope !100, !noalias !101
  %1245 = load float, float* %1185, align 4, !tbaa !72, !alias.scope !102, !noalias !105
  %1246 = load float, float* %1184, align 4, !tbaa !72, !alias.scope !108, !noalias !109
  %1247 = load float, float* %1183, align 4, !tbaa !72, !alias.scope !110, !noalias !111
  br label %1248

; <label>:1248                                    ; preds = %1241, %1175
  %1249 = phi float [ -1.000000e+00, %1175 ], [ %1247, %1241 ]
  %1250 = phi float [ -1.000000e+00, %1175 ], [ %1246, %1241 ]
  %1251 = phi float [ -1.000000e+00, %1175 ], [ %1245, %1241 ]
  %1252 = phi float [ -1.000000e+00, %1175 ], [ %1244, %1241 ]
  %1253 = phi float [ -1.000000e+00, %1175 ], [ %1243, %1241 ]
  %1254 = phi float [ -1.000000e+00, %1175 ], [ %1242, %1241 ]
  %1255 = phi i32 [ 0, %1175 ], [ %1238, %1241 ]
  %1256 = call float @dx.op.binary.f32(i32 36, float %1253, float %1254)  ; FMin(a,b)
  %1257 = call float @dx.op.binary.f32(i32 36, float %1252, float %1256)  ; FMin(a,b)
  %1258 = call float @dx.op.binary.f32(i32 35, float %1252, float %1253)  ; FMax(a,b)
  %1259 = call float @dx.op.binary.f32(i32 36, float %1258, float %1254)  ; FMin(a,b)
  %1260 = call float @dx.op.binary.f32(i32 36, float %1252, float %1253)  ; FMin(a,b)
  %1261 = call float @dx.op.binary.f32(i32 35, float %1260, float %1259)  ; FMax(a,b)
  %1262 = call float @dx.op.binary.f32(i32 35, float %1253, float %1254)  ; FMax(a,b)
  %1263 = call float @dx.op.binary.f32(i32 35, float %1252, float %1262)  ; FMax(a,b)
  store float %1257, float* %1180, align 4, !tbaa !72, !alias.scope !100, !noalias !101
  store float %1261, float* %1181, align 4, !tbaa !72, !alias.scope !98, !noalias !99
  store float %1263, float* %1182, align 4, !tbaa !72, !alias.scope !92, !noalias !95
  %1264 = call float @dx.op.binary.f32(i32 36, float %1250, float %1251)  ; FMin(a,b)
  %1265 = call float @dx.op.binary.f32(i32 36, float %1249, float %1264)  ; FMin(a,b)
  %1266 = call float @dx.op.binary.f32(i32 35, float %1249, float %1250)  ; FMax(a,b)
  %1267 = call float @dx.op.binary.f32(i32 36, float %1266, float %1251)  ; FMin(a,b)
  %1268 = call float @dx.op.binary.f32(i32 36, float %1249, float %1250)  ; FMin(a,b)
  %1269 = call float @dx.op.binary.f32(i32 35, float %1268, float %1267)  ; FMax(a,b)
  %1270 = call float @dx.op.binary.f32(i32 35, float %1250, float %1251)  ; FMax(a,b)
  %1271 = call float @dx.op.binary.f32(i32 35, float %1249, float %1270)  ; FMax(a,b)
  store float %1265, float* %1183, align 4, !tbaa !72, !alias.scope !110, !noalias !111
  store float %1269, float* %1184, align 4, !tbaa !72, !alias.scope !108, !noalias !109
  store float %1271, float* %1185, align 4, !tbaa !72, !alias.scope !102, !noalias !105
  %1272 = sub nsw i32 3, %1255
  %1273 = icmp sgt i32 %1272, 2
  br i1 %1273, label %1274, label %1312

; <label>:1274                                    ; preds = %1248
  %1275 = icmp eq i32 %1043, 0
  %1276 = fsub fast float %1093, %1177
  %1277 = select i1 %1275, float %1276, float %1177
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.CBufRet.f32 %1278, 1
  %1281 = extractvalue %dx.types.CBufRet.f32 %1278, 2
  %1282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1283 = extractvalue %dx.types.CBufRet.f32 %1282, 0
  %1284 = extractvalue %dx.types.CBufRet.f32 %1282, 1
  %1285 = extractvalue %dx.types.CBufRet.f32 %1282, 2
  %1286 = extractvalue %dx.types.CBufRet.f32 %1282, 3
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 3
  %1289 = call float @dx.op.binary.f32(i32 36, float %1178, float %1288)  ; FMin(a,b)
  %1290 = fmul fast float %1286, %1277
  %1291 = call float @dx.op.unary.f32(i32 7, float %1290)  ; Saturate(value)
  %1292 = fsub fast float %1283, %1279
  %1293 = fsub fast float %1284, %1280
  %1294 = fsub fast float %1285, %1281
  %1295 = fmul fast float %1291, %1292
  %1296 = fmul fast float %1291, %1293
  %1297 = fmul fast float %1291, %1294
  %1298 = fadd fast float %1295, %1279
  %1299 = fadd fast float %1296, %1280
  %1300 = fadd fast float %1297, %1281
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1304 = fadd fast float %1303, %1302
  %1305 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1307 = extractvalue %dx.types.CBufRet.f32 %1301, 3
  %1308 = fadd fast float %1307, %1306
  %1309 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1310 = fmul fast float %1305, %1289
  %1311 = fmul fast float %1310, %1309
  br label %1394

; <label>:1312                                    ; preds = %1248
  %1313 = getelementptr inbounds [3 x float], [3 x float]* %48, i32 0, i32 %1272
  %1314 = load float, float* %1313, align 4, !tbaa !72, !noalias !76
  %1315 = fcmp fast olt float %1314, %1179
  %1316 = icmp sgt i32 %1255, 0
  %1317 = and i1 %1316, %1315
  br i1 %1317, label %1318, label %1355

; <label>:1318                                    ; preds = %1312
  br label %1319

; <label>:1319                                    ; preds = %1348, %1318
  %1320 = phi float [ %1349, %1348 ], [ %1177, %1318 ]
  %1321 = phi float [ %1350, %1348 ], [ %1178, %1318 ]
  %1322 = phi float [ %1330, %1348 ], [ %1314, %1318 ]
  %1323 = phi i32 [ %1327, %1348 ], [ %1272, %1318 ]
  %1324 = getelementptr inbounds [3 x float], [3 x float]* %49, i32 0, i32 %1323
  %1325 = load float, float* %1324, align 4, !tbaa !72, !noalias !76
  %1326 = icmp slt i32 %1323, 2
  %1327 = add nsw i32 %1323, 1
  %1328 = getelementptr inbounds [3 x float], [3 x float]* %48, i32 0, i32 %1327
  %1329 = load float, float* %1328, align 4, !tbaa !72, !noalias !76
  %1330 = select i1 %1326, float %1329, float %1093
  %1331 = call float @dx.op.binary.f32(i32 36, float %1330, float %1325)  ; FMin(a,b)
  %1332 = call float @dx.op.binary.f32(i32 36, float %1179, float %1331)  ; FMin(a,b)
  %1333 = icmp eq i32 %1043, 0
  %1334 = fadd fast float %1332, %1322
  %1335 = fmul fast float %1334, %1024
  %1336 = fadd fast float %1335, %1037
  br i1 %1333, label %1342, label %1337

; <label>:1337                                    ; preds = %1319
  %1338 = fsub fast float %1332, %1322
  %1339 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1338)  ; FMax(a,b)
  %1340 = fmul fast float %1339, %1336
  %1341 = fadd fast float %1340, %1321
  br label %1348

; <label>:1342                                    ; preds = %1319
  %1343 = fsub fast float %1322, %1332
  %1344 = call float @dx.op.unary.f32(i32 6, float %1343)  ; FAbs(value)
  %1345 = fadd fast float %1344, %1320
  %1346 = fmul fast float %1344, %1336
  %1347 = fsub fast float %1321, %1346
  br label %1348

; <label>:1348                                    ; preds = %1342, %1337
  %1349 = phi float [ %1339, %1337 ], [ %1345, %1342 ]
  %1350 = phi float [ %1341, %1337 ], [ %1347, %1342 ]
  %1351 = fcmp fast olt float %1330, %1179
  %1352 = icmp slt i32 %1327, 3
  %1353 = and i1 %1352, %1351
  br i1 %1353, label %1319, label %1354

; <label>:1354                                    ; preds = %1348
  br label %1355

; <label>:1355                                    ; preds = %1354, %1312
  %1356 = phi float [ %1177, %1312 ], [ %1349, %1354 ]
  %1357 = phi float [ %1178, %1312 ], [ %1350, %1354 ]
  %1358 = fsub fast float %1093, %1356
  %1359 = select i1 %1095, float %1356, float %1358
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.CBufRet.f32 %1360, 1
  %1363 = extractvalue %dx.types.CBufRet.f32 %1360, 2
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 0
  %1366 = extractvalue %dx.types.CBufRet.f32 %1364, 1
  %1367 = extractvalue %dx.types.CBufRet.f32 %1364, 2
  %1368 = extractvalue %dx.types.CBufRet.f32 %1364, 3
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 3
  %1371 = call float @dx.op.binary.f32(i32 36, float %1357, float %1370)  ; FMin(a,b)
  %1372 = fmul fast float %1368, %1359
  %1373 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1374 = fsub fast float %1365, %1361
  %1375 = fsub fast float %1366, %1362
  %1376 = fsub fast float %1367, %1363
  %1377 = fmul fast float %1373, %1374
  %1378 = fmul fast float %1373, %1375
  %1379 = fmul fast float %1373, %1376
  %1380 = fadd fast float %1377, %1361
  %1381 = fadd fast float %1378, %1362
  %1382 = fadd fast float %1379, %1363
  %1383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.CBufRet.f32 %1383, 1
  %1386 = fadd fast float %1385, %1384
  %1387 = call float @dx.op.unary.f32(i32 7, float %1386)  ; Saturate(value)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1383, 2
  %1389 = extractvalue %dx.types.CBufRet.f32 %1383, 3
  %1390 = fadd fast float %1389, %1388
  %1391 = call float @dx.op.unary.f32(i32 7, float %1390)  ; Saturate(value)
  %1392 = fmul fast float %1387, %1371
  %1393 = fmul fast float %1392, %1391
  br label %1394

; <label>:1394                                    ; preds = %1355, %1274, %1109, %1091, %1089
  %1395 = phi float [ %1118, %1109 ], [ %1277, %1274 ], [ %1359, %1355 ], [ 0.000000e+00, %1089 ], [ 0.000000e+00, %1091 ]
  %1396 = phi float [ %1152, %1109 ], [ %1311, %1274 ], [ %1393, %1355 ], [ 0.000000e+00, %1089 ], [ 0.000000e+00, %1091 ]
  %1397 = phi float [ %1139, %1109 ], [ %1298, %1274 ], [ %1380, %1355 ], [ 0.000000e+00, %1089 ], [ 0.000000e+00, %1091 ]
  %1398 = phi float [ %1140, %1109 ], [ %1299, %1274 ], [ %1381, %1355 ], [ 0.000000e+00, %1089 ], [ 0.000000e+00, %1091 ]
  %1399 = phi float [ %1141, %1109 ], [ %1300, %1274 ], [ %1382, %1355 ], [ 0.000000e+00, %1089 ], [ 0.000000e+00, %1091 ]
  %1400 = fmul fast float %1032, %1396
  %1401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1401, 2
  %1403 = fsub fast float %1039, %1402
  %1404 = fcmp fast olt float %1400, -2.000000e+01
  %1405 = call float @dx.op.unary.f32(i32 21, float %1400)  ; Exp(value)
  %1406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.f32 %1406, 2
  %1408 = extractvalue %dx.types.CBufRet.f32 %1406, 3
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 2
  %1411 = fmul fast float %1408, %1403
  %1412 = call float @dx.op.unary.f32(i32 7, float %1411)  ; Saturate(value)
  %1413 = fsub fast float 1.000000e+00, %1412
  %1414 = fmul fast float %1024, 5.000000e-01
  %1415 = fadd fast float %1414, 5.000000e-01
  %1416 = call float @dx.op.unary.f32(i32 7, float %1415)  ; Saturate(value)
  %1417 = fsub fast float 1.000000e+00, %1416
  %1418 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1413)  ; FMax(a,b)
  %1419 = fdiv fast float %1417, %1418
  %1420 = fsub fast float %1403, %984
  %1421 = call float @dx.op.unary.f32(i32 6, float %1420)  ; FAbs(value)
  %1422 = fmul fast float %1421, %1407
  %1423 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1424 = fsub fast float 1.000000e+00, %1422
  %1425 = fmul fast float %1424, %1423
  %1426 = fadd fast float %1425, %1422
  %1427 = fmul fast float %1410, %1403
  %1428 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1429 = fsub fast float 1.000000e+00, %1426
  %1430 = fmul fast float %1429, %1428
  %1431 = fadd fast float %1430, %1426
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1433 = fadd fast float %1405, -1.000000e+00
  %1434 = select i1 %1404, float -1.000000e+00, float %1433
  %1435 = fmul fast float %1432, %1434
  %1436 = fadd fast float %1435, 1.000000e+00
  %1437 = fsub fast float -0.000000e+00, %1435
  %1438 = fmul fast float %1397, %1437
  %1439 = fmul fast float %1398, %1437
  %1440 = fmul fast float %1399, %1437
  br label %1441

; <label>:1441                                    ; preds = %1394, %990
  %1442 = phi float [ %1395, %1394 ], [ 0.000000e+00, %990 ]
  %1443 = phi float [ %1436, %1394 ], [ 1.000000e+00, %990 ]
  %1444 = phi float [ %1438, %1394 ], [ 0.000000e+00, %990 ]
  %1445 = phi float [ %1439, %1394 ], [ 0.000000e+00, %990 ]
  %1446 = phi float [ %1440, %1394 ], [ 0.000000e+00, %990 ]
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 1
  %1449 = fsub fast float 1.000000e+00, %1443
  %1450 = fmul fast float %1449, %1025
  %1451 = fmul fast float %1450, %1448
  %1452 = fsub fast float %1025, %1451
  br i1 %1018, label %1453, label %1482, !dx.controlflow.hints !112

; <label>:1453                                    ; preds = %1441
  %1454 = fmul fast float %1026, %1015
  %1455 = fadd fast float %1454, %1016
  %1456 = call float @dx.op.unary.f32(i32 7, float %1455)  ; Saturate(value)
  %1457 = fmul fast float %997, %1452
  %1458 = fsub fast float -0.000000e+00, %1457
  %1459 = fmul fast float %998, %1452
  %1460 = fsub fast float -0.000000e+00, %1459
  %1461 = call float @dx.op.unary.f32(i32 21, float %1458)  ; Exp(value)
  %1462 = call float @dx.op.unary.f32(i32 21, float %1460)  ; Exp(value)
  %1463 = call float @dx.op.binary.f32(i32 35, float %1005, float %1461)  ; FMax(a,b)
  %1464 = call float @dx.op.binary.f32(i32 35, float %1005, float %1462)  ; FMax(a,b)
  %1465 = fsub fast float %1464, %1463
  %1466 = fmul fast float %1465, %1456
  %1467 = fadd fast float %1466, %1463
  %1468 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  %1469 = fsub fast float %1002, %1007
  %1470 = fsub fast float %1003, %1008
  %1471 = fsub fast float %1004, %1009
  %1472 = fmul fast float %1456, %1469
  %1473 = fmul fast float %1456, %1470
  %1474 = fmul fast float %1456, %1471
  %1475 = fadd fast float %1472, %1007
  %1476 = fadd fast float %1473, %1008
  %1477 = fadd fast float %1474, %1009
  %1478 = fsub fast float 1.000000e+00, %1468
  %1479 = fmul fast float %1478, %1475
  %1480 = fmul fast float %1478, %1476
  %1481 = fmul fast float %1478, %1477
  br label %1541

; <label>:1482                                    ; preds = %1441
  %1483 = fmul fast float %1452, %1014
  %1484 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  %1485 = fsub fast float 2.000000e+00, %1484
  %1486 = fmul fast float %1484, 9.921875e-01
  %1487 = fmul fast float %1486, %1485
  %1488 = fadd fast float %1487, 3.906250e-03
  %1489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %19, float %1488, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = fsub fast float %1484, %1490
  %1492 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1491)  ; FMax(a,b)
  %1493 = fmul fast float %1000, %984
  %1494 = call float @dx.op.unary.f32(i32 6, float %1493)  ; FAbs(value)
  %1495 = fcmp fast ogt float %1494, 0x3EB0C6F7A0000000
  br i1 %1495, label %1496, label %1502, !dx.controlflow.hints !113

; <label>:1496                                    ; preds = %1482
  %1497 = fmul fast float %1493, 0xBFF7154760000000
  %1498 = call float @dx.op.unary.f32(i32 21, float %1497)  ; Exp(value)
  %1499 = fsub fast float 1.000000e+00, %1498
  %1500 = fdiv fast float %1499, %1493
  %1501 = fmul fast float %1500, %1010
  br label %1502

; <label>:1502                                    ; preds = %1496, %1482
  %1503 = phi float [ %1501, %1496 ], [ %1010, %1482 ]
  %1504 = fadd fast float %1503, %1012
  %1505 = fmul fast float %1504, %1492
  %1506 = fmul fast float %997, %1505
  %1507 = fsub fast float -0.000000e+00, %1506
  %1508 = fmul fast float %998, %1505
  %1509 = fsub fast float -0.000000e+00, %1508
  %1510 = fmul fast float %999, %1505
  %1511 = fsub fast float -0.000000e+00, %1510
  %1512 = call float @dx.op.unary.f32(i32 21, float %1507)  ; Exp(value)
  %1513 = call float @dx.op.unary.f32(i32 21, float %1509)  ; Exp(value)
  %1514 = call float @dx.op.unary.f32(i32 21, float %1511)  ; Exp(value)
  %1515 = fmul fast float %1026, %1026
  %1516 = fadd fast float %1515, 1.000000e+00
  %1517 = fmul fast float %1516, 0x3FAE8EC8A0000000
  %1518 = fmul fast float %1517, %1007
  %1519 = fmul fast float %1517, %1008
  %1520 = fmul fast float %1517, %1009
  %1521 = fmul fast float %1026, %1005
  %1522 = fsub fast float 1.000000e+00, %1521
  %1523 = fmul fast float %1005, %1005
  %1524 = fsub fast float 1.000000e+00, %1523
  %1525 = fmul fast float %1524, 0x3FB45F3060000000
  %1526 = fmul fast float %1522, %1522
  %1527 = fdiv fast float 1.000000e+00, %1526
  %1528 = fmul fast float %1525, %1527
  %1529 = fmul fast float %1528, %1002
  %1530 = fmul fast float %1528, %1003
  %1531 = fmul fast float %1528, %1004
  %1532 = fadd fast float %1529, %1518
  %1533 = fadd fast float %1530, %1519
  %1534 = fadd fast float %1531, %1520
  %1535 = fsub fast float 1.000000e+00, %1512
  %1536 = fsub fast float 1.000000e+00, %1513
  %1537 = fsub fast float 1.000000e+00, %1514
  %1538 = fmul fast float %1532, %1535
  %1539 = fmul fast float %1533, %1536
  %1540 = fmul fast float %1534, %1537
  br label %1541

; <label>:1541                                    ; preds = %1502, %1453
  %1542 = phi float [ %1479, %1453 ], [ %1538, %1502 ]
  %1543 = phi float [ %1480, %1453 ], [ %1539, %1502 ]
  %1544 = phi float [ %1481, %1453 ], [ %1540, %1502 ]
  %1545 = phi float [ %1468, %1453 ], [ %1512, %1502 ]
  %1546 = phi float [ %1468, %1453 ], [ %1513, %1502 ]
  %1547 = phi float [ %1468, %1453 ], [ %1514, %1502 ]
  br i1 %1034, label %1548, label %1746, !dx.controlflow.hints !114

; <label>:1548                                    ; preds = %1541
  %1549 = extractvalue %dx.types.CBufRet.f32 %1447, 0
  %1550 = fmul fast float %1549, %1449
  %1551 = fsub fast float %1444, %1542
  %1552 = fsub fast float %1445, %1543
  %1553 = fsub fast float %1446, %1544
  %1554 = fmul fast float %1550, %1551
  %1555 = fmul fast float %1550, %1552
  %1556 = fmul fast float %1550, %1553
  %1557 = fadd fast float %1554, %1542
  %1558 = fadd fast float %1555, %1543
  %1559 = fadd fast float %1556, %1544
  %1560 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1545)  ; FMax(a,b)
  %1561 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1546)  ; FMax(a,b)
  %1562 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1547)  ; FMax(a,b)
  %1563 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1443)  ; FMax(a,b)
  %1564 = call float @dx.op.binary.f32(i32 35, float %1442, float %1452)  ; FMax(a,b)
  %1565 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1564)  ; FMax(a,b)
  %1566 = fdiv fast float %1442, %1565
  %1567 = call float @dx.op.unary.f32(i32 7, float %1566)  ; Saturate(value)
  %1568 = fdiv fast float %1452, %1565
  %1569 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  %1570 = fcmp fast une float %1563, 1.000000e+00
  br i1 %1570, label %1571, label %1584, !dx.controlflow.hints !115

; <label>:1571                                    ; preds = %1548
  %1572 = call float @dx.op.unary.f32(i32 23, float %1563)  ; Log(value)
  %1573 = fmul fast float %1572, 0x3FE62E4300000000
  %1574 = fmul fast float %1444, %1573
  %1575 = fsub fast float -0.000000e+00, %1574
  %1576 = fmul fast float %1445, %1573
  %1577 = fsub fast float -0.000000e+00, %1576
  %1578 = fmul fast float %1446, %1573
  %1579 = fsub fast float -0.000000e+00, %1578
  %1580 = fsub fast float 1.000000e+00, %1563
  %1581 = fdiv fast float %1575, %1580
  %1582 = fdiv fast float %1577, %1580
  %1583 = fdiv fast float %1579, %1580
  br label %1584

; <label>:1584                                    ; preds = %1571, %1548
  %1585 = phi float [ %1581, %1571 ], [ %1444, %1548 ]
  %1586 = phi float [ %1582, %1571 ], [ %1445, %1548 ]
  %1587 = phi float [ %1583, %1571 ], [ %1446, %1548 ]
  %1588 = phi float [ %1573, %1571 ], [ 0.000000e+00, %1548 ]
  %1589 = fcmp fast une float %1560, 1.000000e+00
  br i1 %1589, label %1590, label %1597, !dx.controlflow.hints !116

; <label>:1590                                    ; preds = %1584
  %1591 = call float @dx.op.unary.f32(i32 23, float %1560)  ; Log(value)
  %1592 = fmul fast float %1591, 0x3FE62E4300000000
  %1593 = fmul fast float %1557, %1592
  %1594 = fsub fast float -0.000000e+00, %1593
  %1595 = fsub fast float 1.000000e+00, %1560
  %1596 = fdiv fast float %1594, %1595
  br label %1597

; <label>:1597                                    ; preds = %1590, %1584
  %1598 = phi float [ %1596, %1590 ], [ %1557, %1584 ]
  %1599 = phi float [ %1592, %1590 ], [ 0.000000e+00, %1584 ]
  %1600 = fcmp fast une float %1561, 1.000000e+00
  br i1 %1600, label %1601, label %1608, !dx.controlflow.hints !116

; <label>:1601                                    ; preds = %1597
  %1602 = call float @dx.op.unary.f32(i32 23, float %1561)  ; Log(value)
  %1603 = fmul fast float %1602, 0x3FE62E4300000000
  %1604 = fmul fast float %1558, %1603
  %1605 = fsub fast float -0.000000e+00, %1604
  %1606 = fsub fast float 1.000000e+00, %1561
  %1607 = fdiv fast float %1605, %1606
  br label %1608

; <label>:1608                                    ; preds = %1601, %1597
  %1609 = phi float [ %1607, %1601 ], [ %1558, %1597 ]
  %1610 = phi float [ %1603, %1601 ], [ 0.000000e+00, %1597 ]
  %1611 = fcmp fast une float %1562, 1.000000e+00
  br i1 %1611, label %1612, label %1619, !dx.controlflow.hints !116

; <label>:1612                                    ; preds = %1608
  %1613 = call float @dx.op.unary.f32(i32 23, float %1562)  ; Log(value)
  %1614 = fmul fast float %1613, 0x3FE62E4300000000
  %1615 = fmul fast float %1559, %1614
  %1616 = fsub fast float -0.000000e+00, %1615
  %1617 = fsub fast float 1.000000e+00, %1562
  %1618 = fdiv fast float %1616, %1617
  br label %1619

; <label>:1619                                    ; preds = %1612, %1608
  %1620 = phi float [ %1618, %1612 ], [ %1559, %1608 ]
  %1621 = phi float [ %1614, %1612 ], [ 0.000000e+00, %1608 ]
  %1622 = fmul fast float %1585, %1569
  %1623 = fmul fast float %1586, %1569
  %1624 = fmul fast float %1587, %1569
  %1625 = fmul fast float %1588, %1569
  %1626 = fmul fast float %1598, %1567
  %1627 = fmul fast float %1609, %1567
  %1628 = fmul fast float %1620, %1567
  %1629 = fmul fast float %1599, %1567
  %1630 = fmul fast float %1610, %1567
  %1631 = fmul fast float %1621, %1567
  %1632 = fadd fast float %1626, %1622
  %1633 = fadd fast float %1627, %1623
  %1634 = fadd fast float %1628, %1624
  %1635 = fadd fast float %1629, %1625
  %1636 = fadd fast float %1630, %1625
  %1637 = fadd fast float %1631, %1625
  %1638 = fcmp fast une float %1635, 0.000000e+00
  br i1 %1638, label %1639, label %1646, !dx.controlflow.hints !117

; <label>:1639                                    ; preds = %1619
  %1640 = fmul fast float %1635, 0x3FF7154760000000
  %1641 = call float @dx.op.unary.f32(i32 21, float %1640)  ; Exp(value)
  %1642 = fsub fast float 1.000000e+00, %1641
  %1643 = fmul fast float %1632, %1642
  %1644 = fsub fast float -0.000000e+00, %1643
  %1645 = fdiv fast float %1644, %1635
  br label %1646

; <label>:1646                                    ; preds = %1639, %1619
  %1647 = phi float [ %1641, %1639 ], [ 1.000000e+00, %1619 ]
  %1648 = phi float [ %1645, %1639 ], [ %1632, %1619 ]
  %1649 = fcmp fast une float %1636, 0.000000e+00
  br i1 %1649, label %1650, label %1657, !dx.controlflow.hints !117

; <label>:1650                                    ; preds = %1646
  %1651 = fmul fast float %1636, 0x3FF7154760000000
  %1652 = call float @dx.op.unary.f32(i32 21, float %1651)  ; Exp(value)
  %1653 = fsub fast float 1.000000e+00, %1652
  %1654 = fmul fast float %1633, %1653
  %1655 = fsub fast float -0.000000e+00, %1654
  %1656 = fdiv fast float %1655, %1636
  br label %1657

; <label>:1657                                    ; preds = %1650, %1646
  %1658 = phi float [ %1652, %1650 ], [ 1.000000e+00, %1646 ]
  %1659 = phi float [ %1656, %1650 ], [ %1633, %1646 ]
  %1660 = fcmp fast une float %1637, 0.000000e+00
  br i1 %1660, label %1661, label %1668, !dx.controlflow.hints !117

; <label>:1661                                    ; preds = %1657
  %1662 = fmul fast float %1637, 0x3FF7154760000000
  %1663 = call float @dx.op.unary.f32(i32 21, float %1662)  ; Exp(value)
  %1664 = fsub fast float 1.000000e+00, %1663
  %1665 = fmul fast float %1634, %1664
  %1666 = fsub fast float -0.000000e+00, %1665
  %1667 = fdiv fast float %1666, %1637
  br label %1668

; <label>:1668                                    ; preds = %1661, %1657
  %1669 = phi float [ %1663, %1661 ], [ 1.000000e+00, %1657 ]
  %1670 = phi float [ %1667, %1661 ], [ %1634, %1657 ]
  %1671 = fcmp fast ogt float %1567, %1569
  br i1 %1671, label %1672, label %1692

; <label>:1672                                    ; preds = %1668
  %1673 = fsub fast float 1.000000e+00, %1569
  %1674 = fmul fast float %1585, %1673
  %1675 = fmul fast float %1586, %1673
  %1676 = fmul fast float %1587, %1673
  %1677 = fmul fast float %1588, %1673
  %1678 = fcmp fast une float %1677, 0.000000e+00
  br i1 %1678, label %1679, label %1730, !dx.controlflow.hints !118

; <label>:1679                                    ; preds = %1672
  %1680 = fmul fast float %1677, 0x3FF7154760000000
  %1681 = call float @dx.op.unary.f32(i32 21, float %1680)  ; Exp(value)
  %1682 = fsub fast float 1.000000e+00, %1681
  %1683 = fmul fast float %1674, %1682
  %1684 = fsub fast float -0.000000e+00, %1683
  %1685 = fmul fast float %1675, %1682
  %1686 = fsub fast float -0.000000e+00, %1685
  %1687 = fmul fast float %1676, %1682
  %1688 = fsub fast float -0.000000e+00, %1687
  %1689 = fdiv fast float %1684, %1677
  %1690 = fdiv fast float %1686, %1677
  %1691 = fdiv fast float %1688, %1677
  br label %1730

; <label>:1692                                    ; preds = %1668
  %1693 = fsub fast float 1.000000e+00, %1567
  %1694 = fmul fast float %1598, %1693
  %1695 = fmul fast float %1609, %1693
  %1696 = fmul fast float %1620, %1693
  %1697 = fmul fast float %1599, %1693
  %1698 = fmul fast float %1610, %1693
  %1699 = fmul fast float %1621, %1693
  %1700 = fcmp fast une float %1697, 0.000000e+00
  br i1 %1700, label %1701, label %1708, !dx.controlflow.hints !117

; <label>:1701                                    ; preds = %1692
  %1702 = fmul fast float %1697, 0x3FF7154760000000
  %1703 = call float @dx.op.unary.f32(i32 21, float %1702)  ; Exp(value)
  %1704 = fsub fast float 1.000000e+00, %1703
  %1705 = fmul fast float %1694, %1704
  %1706 = fsub fast float -0.000000e+00, %1705
  %1707 = fdiv fast float %1706, %1697
  br label %1708

; <label>:1708                                    ; preds = %1701, %1692
  %1709 = phi float [ %1707, %1701 ], [ %1694, %1692 ]
  %1710 = phi float [ %1703, %1701 ], [ 1.000000e+00, %1692 ]
  %1711 = fcmp fast une float %1698, 0.000000e+00
  br i1 %1711, label %1712, label %1719, !dx.controlflow.hints !117

; <label>:1712                                    ; preds = %1708
  %1713 = fmul fast float %1698, 0x3FF7154760000000
  %1714 = call float @dx.op.unary.f32(i32 21, float %1713)  ; Exp(value)
  %1715 = fsub fast float 1.000000e+00, %1714
  %1716 = fmul fast float %1695, %1715
  %1717 = fsub fast float -0.000000e+00, %1716
  %1718 = fdiv fast float %1717, %1698
  br label %1719

; <label>:1719                                    ; preds = %1712, %1708
  %1720 = phi float [ %1718, %1712 ], [ %1695, %1708 ]
  %1721 = phi float [ %1714, %1712 ], [ 1.000000e+00, %1708 ]
  %1722 = fcmp fast une float %1699, 0.000000e+00
  br i1 %1722, label %1723, label %1730, !dx.controlflow.hints !117

; <label>:1723                                    ; preds = %1719
  %1724 = fmul fast float %1699, 0x3FF7154760000000
  %1725 = call float @dx.op.unary.f32(i32 21, float %1724)  ; Exp(value)
  %1726 = fsub fast float 1.000000e+00, %1725
  %1727 = fmul fast float %1696, %1726
  %1728 = fsub fast float -0.000000e+00, %1727
  %1729 = fdiv fast float %1728, %1699
  br label %1730

; <label>:1730                                    ; preds = %1723, %1719, %1679, %1672
  %1731 = phi float [ %1729, %1723 ], [ %1691, %1679 ], [ %1676, %1672 ], [ %1696, %1719 ]
  %1732 = phi float [ %1720, %1723 ], [ %1690, %1679 ], [ %1675, %1672 ], [ %1720, %1719 ]
  %1733 = phi float [ %1709, %1723 ], [ %1689, %1679 ], [ %1674, %1672 ], [ %1709, %1719 ]
  %1734 = phi float [ %1725, %1723 ], [ %1681, %1679 ], [ 1.000000e+00, %1672 ], [ 1.000000e+00, %1719 ]
  %1735 = phi float [ %1721, %1723 ], [ %1681, %1679 ], [ 1.000000e+00, %1672 ], [ %1721, %1719 ]
  %1736 = phi float [ %1710, %1723 ], [ %1681, %1679 ], [ 1.000000e+00, %1672 ], [ %1710, %1719 ]
  %1737 = fmul fast float %1736, %1648
  %1738 = fmul fast float %1735, %1659
  %1739 = fmul fast float %1734, %1670
  %1740 = fadd fast float %1737, %1733
  %1741 = fadd fast float %1738, %1732
  %1742 = fadd fast float %1739, %1731
  %1743 = fmul fast float %1736, %1647
  %1744 = fmul fast float %1735, %1658
  %1745 = fmul fast float %1734, %1669
  br label %1746

; <label>:1746                                    ; preds = %1730, %1541
  %1747 = phi float [ %1745, %1730 ], [ %1547, %1541 ]
  %1748 = phi float [ %1744, %1730 ], [ %1546, %1541 ]
  %1749 = phi float [ %1743, %1730 ], [ %1545, %1541 ]
  %1750 = phi float [ %1742, %1730 ], [ %1544, %1541 ]
  %1751 = phi float [ %1741, %1730 ], [ %1543, %1541 ]
  %1752 = phi float [ %1740, %1730 ], [ %1542, %1541 ]
  %1753 = fmul fast float %1752, %811
  %1754 = fmul fast float %1751, %811
  %1755 = fmul fast float %1750, %811
  %1756 = fmul fast float %1749, %989
  %1757 = call float @dx.op.dot3.f32(i32 55, float %1749, float %1748, float %1747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1758 = call float @dx.op.dot3.f32(i32 55, float %1753, float %1754, float %1755, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1759 = select i1 %124, float %1757, float %1749
  %1760 = select i1 %124, float %1757, float %1748
  %1761 = select i1 %124, float 1.000000e+00, float %1747
  %1762 = select i1 %124, float %1758, float %1753
  %1763 = select i1 %124, float 0.000000e+00, float %1754
  %1764 = select i1 %124, float 0.000000e+00, float %1755
  %1765 = fmul fast float %1759, %986
  %1766 = fmul fast float %1760, %987
  %1767 = fmul fast float %1761, %988
  %1768 = fadd fast float %1765, %1762
  %1769 = fadd fast float %1766, %1763
  %1770 = fadd fast float %1764, %1767
  %1771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1772 = extractvalue %dx.types.CBufRet.i32 %1771, 0
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %2039, label %1774, !dx.controlflow.hints !119

; <label>:1774                                    ; preds = %1746
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 2
  %1777 = extractvalue %dx.types.CBufRet.f32 %1775, 3
  %1778 = fmul fast float %1776, %54
  %1779 = fmul fast float %1777, %55
  %1780 = fmul fast float %1778, 2.000000e+00
  %1781 = fmul fast float %1779, 2.000000e+00
  %1782 = fsub fast float 1.000000e+00, %1780
  %1783 = fsub fast float 1.000000e+00, %1781
  %1784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1784, 0
  %1786 = extractvalue %dx.types.CBufRet.f32 %1784, 1
  %1787 = extractvalue %dx.types.CBufRet.f32 %1784, 2
  %1788 = fmul fast float %1782, %1785
  %1789 = fmul fast float %1782, %1786
  %1790 = fmul fast float %1782, %1787
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 0
  %1793 = extractvalue %dx.types.CBufRet.f32 %1791, 1
  %1794 = extractvalue %dx.types.CBufRet.f32 %1791, 2
  %1795 = fmul fast float %1783, %1792
  %1796 = fmul fast float %1783, %1793
  %1797 = fmul fast float %1783, %1794
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1801 = extractvalue %dx.types.CBufRet.f32 %1798, 2
  %1802 = fadd fast float %1795, %1799
  %1803 = fadd fast float %1802, %1788
  %1804 = fadd fast float %1796, %1800
  %1805 = fadd fast float %1804, %1789
  %1806 = fadd fast float %1797, %1801
  %1807 = fadd fast float %1806, %1790
  %1808 = fmul fast float %1803, %985
  %1809 = fmul fast float %1805, %985
  %1810 = fmul fast float %1807, %985
  %1811 = fmul fast float %1808, %1808
  %1812 = fmul fast float %1809, %1809
  %1813 = fadd fast float %1811, %1812
  %1814 = fmul fast float %1810, %1810
  %1815 = fadd fast float %1813, %1814
  %1816 = call float @dx.op.unary.f32(i32 24, float %1815)  ; Sqrt(value)
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 0
  %1819 = fsub fast float %1816, %1818
  %1820 = extractvalue %dx.types.CBufRet.f32 %1817, 2
  %1821 = fmul fast float %1819, %1820
  %1822 = call float @dx.op.unary.f32(i32 7, float %1821)  ; Saturate(value)
  %1823 = fadd fast float %1822, -5.000000e-01
  %1824 = fmul fast float %1823, 2.000000e+00
  %1825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.f32 %1825, 2
  %1827 = call float @dx.op.binary.f32(i32 36, float %1826, float %1824)  ; FMin(a,b)
  %1828 = fsub fast float -0.000000e+00, %1826
  %1829 = fcmp fast ogt float %1827, %1828
  br i1 %1829, label %1830, label %2039, !dx.controlflow.hints !120

; <label>:1830                                    ; preds = %1774
  %1831 = fmul fast float %1827, 5.000000e-01
  %1832 = fadd fast float %1831, 5.000000e-01
  %1833 = call float @dx.op.unary.f32(i32 22, float %1832)  ; Frc(value)
  %1834 = call float @dx.op.unary.f32(i32 27, float %1833)  ; Round_ni(value)
  %1835 = call float @dx.op.unary.f32(i32 22, float %1833)  ; Frc(value)
  %1836 = fmul fast float %1835, 2.000000e+00
  %1837 = fadd fast float %1836, -1.000000e+00
  %1838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1778, float %1779, float %1834, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1839 = extractvalue %dx.types.ResRet.f32 %1838, 0
  %1840 = extractvalue %dx.types.ResRet.f32 %1838, 1
  %1841 = extractvalue %dx.types.ResRet.f32 %1838, 2
  %1842 = extractvalue %dx.types.ResRet.f32 %1838, 3
  %1843 = fadd fast float %1839, -5.000000e-01
  %1844 = fadd fast float %1841, -5.000000e-01
  %1845 = fmul fast float %1843, 0xBFD5555560000000
  %1846 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1844, float %1845)  ; FMad(a,b,c)
  %1847 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1840, float 0.000000e+00)  ; FMad(a,b,c)
  %1848 = fadd fast float %1847, %1842
  %1849 = fmul fast float %1843, -7.500000e-01
  %1850 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1844, float %1849)  ; FMad(a,b,c)
  %1851 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1840, float 0.000000e+00)  ; FMad(a,b,c)
  %1852 = fadd fast float %1851, %1842
  %1853 = call float @dx.op.binary.f32(i32 35, float %1846, float -1.000000e+00)  ; FMax(a,b)
  %1854 = call float @dx.op.binary.f32(i32 35, float %1848, float -1.000000e+00)  ; FMax(a,b)
  %1855 = call float @dx.op.binary.f32(i32 35, float %1850, float -1.000000e+00)  ; FMax(a,b)
  %1856 = call float @dx.op.binary.f32(i32 35, float %1852, float -1.000000e+00)  ; FMax(a,b)
  %1857 = call float @dx.op.binary.f32(i32 36, float %1853, float 1.000000e+00)  ; FMin(a,b)
  %1858 = call float @dx.op.binary.f32(i32 36, float %1854, float 1.000000e+00)  ; FMin(a,b)
  %1859 = call float @dx.op.binary.f32(i32 36, float %1855, float 1.000000e+00)  ; FMin(a,b)
  %1860 = call float @dx.op.binary.f32(i32 36, float %1856, float 1.000000e+00)  ; FMin(a,b)
  %1861 = fcmp fast olt float %1857, 0x3FEFFF8020000000
  br i1 %1861, label %1862, label %1977, !dx.controlflow.hints !121

; <label>:1862                                    ; preds = %1830
  %1863 = extractvalue %dx.types.CBufRet.f32 %1825, 3
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 0
  %1866 = extractvalue %dx.types.CBufRet.f32 %1864, 1
  %1867 = extractvalue %dx.types.CBufRet.f32 %1864, 2
  %1868 = extractvalue %dx.types.CBufRet.f32 %1864, 3
  %1869 = fsub fast float %1865, %1857
  %1870 = fsub fast float %1866, %1858
  %1871 = fsub fast float %1867, %1859
  %1872 = fsub fast float %1868, %1860
  %1873 = fmul fast float %1869, %1863
  %1874 = fmul fast float %1870, %1863
  %1875 = fmul fast float %1871, %1863
  %1876 = fmul fast float %1872, %1863
  %1877 = fadd fast float %1873, %1857
  %1878 = fadd fast float %1874, %1858
  %1879 = fsub fast float -0.000000e+00, %1878
  %1880 = fadd fast float %1875, %1859
  %1881 = fadd fast float %1876, %1860
  %1882 = fmul fast float %1877, %1877
  %1883 = fsub fast float %1878, %1882
  %1884 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1883)  ; FMax(a,b)
  %1885 = fdiv fast float 1.000000e+00, %1884
  %1886 = fmul fast float %1878, %1877
  %1887 = fsub fast float %1880, %1886
  %1888 = fsub fast float %1837, %1877
  %1889 = fmul fast float %1837, %1837
  %1890 = fsub fast float %1889, %1878
  %1891 = fmul fast float %1888, %1885
  %1892 = fmul fast float %1891, %1887
  %1893 = fsub fast float %1890, %1892
  %1894 = fmul fast float %1878, %1878
  %1895 = fsub fast float %1881, %1894
  %1896 = fmul fast float %1887, %1887
  %1897 = fmul fast float %1896, %1885
  %1898 = fsub fast float %1895, %1897
  %1899 = fdiv fast float %1893, %1898
  %1900 = fmul fast float %1887, %1899
  %1901 = fsub fast float %1888, %1900
  %1902 = fmul fast float %1901, %1885
  %1903 = fmul fast float %1902, %1877
  %1904 = fsub fast float 1.000000e+00, %1903
  %1905 = fmul fast float %1878, %1899
  %1906 = fsub fast float %1904, %1905
  %1907 = fmul fast float %1902, %1902
  %1908 = fmul fast float %1899, 4.000000e+00
  %1909 = fmul fast float %1908, %1906
  %1910 = fsub fast float %1907, %1909
  %1911 = call float @dx.op.unary.f32(i32 24, float %1910)  ; Sqrt(value)
  %1912 = fcmp fast oge float %1902, 0.000000e+00
  %1913 = fsub fast float -0.000000e+00, %1911
  %1914 = select i1 %1912, float %1913, float %1911
  %1915 = fsub fast float %1914, %1902
  %1916 = fdiv fast float %1915, %1899
  %1917 = fdiv fast float %1906, %1915
  %1918 = fmul fast float %1916, 5.000000e-01
  %1919 = fmul fast float %1917, 2.000000e+00
  %1920 = select i1 %1912, float %1918, float %1919
  %1921 = select i1 %1912, float %1919, float %1918
  %1922 = call float @dx.op.binary.f32(i32 35, float %1920, float %1921)  ; FMax(a,b)
  %1923 = call float @dx.op.binary.f32(i32 36, float %1920, float %1921)  ; FMin(a,b)
  %1924 = fcmp fast ogt float %1837, %1923
  br i1 %1924, label %1925, label %1935

; <label>:1925                                    ; preds = %1862
  %1926 = fsub fast float %1837, %1923
  %1927 = fsub fast float %1922, %1923
  %1928 = fmul fast float %1926, %1927
  %1929 = fmul fast float %1922, %1837
  %1930 = fadd fast float %1922, %1837
  %1931 = fmul fast float %1930, %1877
  %1932 = fadd fast float %1929, %1878
  %1933 = fsub fast float %1932, %1931
  %1934 = fdiv fast float %1933, %1928
  br label %1935

; <label>:1935                                    ; preds = %1925, %1862
  %1936 = phi float [ %1934, %1925 ], [ 0.000000e+00, %1862 ]
  %1937 = fcmp fast ogt float %1837, %1922
  %1938 = fsub fast float %1837, %1922
  br i1 %1937, label %1939, label %1949

; <label>:1939                                    ; preds = %1935
  %1940 = fsub fast float %1922, %1923
  %1941 = fmul fast float %1940, %1938
  %1942 = fmul fast float %1923, %1837
  %1943 = fadd fast float %1923, %1837
  %1944 = fmul fast float %1943, %1877
  %1945 = fsub fast float %1879, %1942
  %1946 = fadd fast float %1945, %1944
  %1947 = fdiv fast float %1946, %1941
  %1948 = fadd fast float %1947, %1936
  br label %1949

; <label>:1949                                    ; preds = %1939, %1935
  %1950 = phi float [ %1948, %1939 ], [ %1936, %1935 ]
  %1951 = fsub fast float %1837, %1923
  %1952 = fmul fast float %1951, %1938
  %1953 = fmul fast float %1923, %1922
  %1954 = fadd fast float %1923, %1922
  %1955 = fmul fast float %1954, %1877
  %1956 = fadd fast float %1953, %1878
  %1957 = fsub fast float %1956, %1955
  %1958 = fdiv fast float %1957, %1952
  %1959 = call float @dx.op.unary.f32(i32 7, float %1950)  ; Saturate(value)
  %1960 = fcmp fast oeq float %829, 0.000000e+00
  %1961 = extractvalue %dx.types.CBufRet.f32 %1825, 0
  %1962 = fcmp fast oeq float %1961, 0.000000e+00
  %1963 = or i1 %1960, %1962
  %1964 = fmul fast float %1961, 2.000000e+00
  %1965 = fadd fast float %1826, %1827
  %1966 = fdiv fast float %1965, %1964
  %1967 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1968 = fmul fast float %1967, 2.000000e+00
  %1969 = fsub fast float 3.000000e+00, %1968
  %1970 = fmul fast float %1967, %1967
  %1971 = fmul fast float %1970, %1969
  %1972 = select i1 %1963, float 1.000000e+00, float %1971
  %1973 = fmul fast float %1958, %829
  %1974 = fadd fast float %1959, %1973
  %1975 = call float @dx.op.unary.f32(i32 7, float %1974)  ; Saturate(value)
  %1976 = fmul fast float %1972, %1975
  br label %1977

; <label>:1977                                    ; preds = %1949, %1830
  %1978 = phi float [ %1976, %1949 ], [ 0.000000e+00, %1830 ]
  %1979 = fsub fast float 1.000000e+00, %1978
  %1980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %1778, float %1779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1981 = extractvalue %dx.types.ResRet.f32 %1980, 0
  %1982 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1983 = extractvalue %dx.types.CBufRet.i32 %1982, 2
  %1984 = icmp eq i32 %1983, 0
  br i1 %1984, label %1990, label %1985

; <label>:1985                                    ; preds = %1977
  %1986 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1987 = fadd fast float %1981, -1.000000e+00
  %1988 = fmul fast float %1986, %1987
  %1989 = fadd fast float %1988, 1.000000e+00
  br label %1990

; <label>:1990                                    ; preds = %1985, %1977
  %1991 = phi float [ %1989, %1985 ], [ %1979, %1977 ]
  %1992 = call float @dx.op.binary.f32(i32 35, float %1981, float %1991)  ; FMax(a,b)
  %1993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1994 = extractvalue %dx.types.CBufRet.i32 %1993, 2
  %1995 = and i32 %1994, 1
  %1996 = icmp eq i32 %1995, 0
  %1997 = fcmp fast une float %1992, 1.000000e+00
  %1998 = and i1 %1997, %1996
  br i1 %1998, label %1999, label %2018

; <label>:1999                                    ; preds = %1990
  %2000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %19, float %1778, float %1779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2001 = extractvalue %dx.types.ResRet.f32 %2000, 0
  %2002 = extractvalue %dx.types.ResRet.f32 %2000, 1
  %2003 = extractvalue %dx.types.ResRet.f32 %2000, 2
  %2004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2005 = extractvalue %dx.types.CBufRet.f32 %2004, 1
  %2006 = fmul fast float %2005, %2001
  %2007 = fmul fast float %2005, %2002
  %2008 = fmul fast float %2005, %2003
  %2009 = fcmp fast ogt float %1981, 0x3FEFFF2E40000000
  %2010 = fsub fast float 1.000000e+00, %1992
  %2011 = fsub fast float 1.000000e+00, %1981
  %2012 = fdiv fast float %2010, %2011
  %2013 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2014 = select i1 %2009, float 0.000000e+00, float %2013
  %2015 = fmul fast float %2006, %2014
  %2016 = fmul fast float %2007, %2014
  %2017 = fmul fast float %2008, %2014
  br label %2018

; <label>:2018                                    ; preds = %1999, %1990
  %2019 = phi float [ 0.000000e+00, %1990 ], [ %2015, %1999 ]
  %2020 = phi float [ 0.000000e+00, %1990 ], [ %2016, %1999 ]
  %2021 = phi float [ 0.000000e+00, %1990 ], [ %2017, %1999 ]
  %2022 = fmul fast float %2019, %811
  %2023 = fmul fast float %2020, %811
  %2024 = fmul fast float %2021, %811
  %2025 = fmul fast float %1992, %1756
  %2026 = call float @dx.op.dot3.f32(i32 55, float %1992, float %1992, float %1992, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2027 = call float @dx.op.dot3.f32(i32 55, float %2022, float %2023, float %2024, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2028 = select i1 %124, float %2026, float %1992
  %2029 = select i1 %124, float 1.000000e+00, float %1992
  %2030 = select i1 %124, float %2027, float %2022
  %2031 = select i1 %124, float 0.000000e+00, float %2023
  %2032 = select i1 %124, float 0.000000e+00, float %2024
  %2033 = fmul fast float %2028, %1768
  %2034 = fmul fast float %2028, %1769
  %2035 = fmul fast float %2029, %1770
  %2036 = fadd fast float %2033, %2030
  %2037 = fadd fast float %2034, %2031
  %2038 = fadd fast float %2032, %2035
  br label %2039

; <label>:2039                                    ; preds = %2018, %1774, %1746, %981
  %2040 = phi float [ %986, %981 ], [ %1768, %1746 ], [ %2036, %2018 ], [ %1768, %1774 ]
  %2041 = phi float [ %987, %981 ], [ %1769, %1746 ], [ %2037, %2018 ], [ %1769, %1774 ]
  %2042 = phi float [ %988, %981 ], [ %1770, %1746 ], [ %2038, %2018 ], [ %1770, %1774 ]
  %2043 = phi float [ %989, %981 ], [ %1756, %1746 ], [ %2025, %2018 ], [ %1756, %1774 ]
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 2
  %2046 = extractvalue %dx.types.CBufRet.f32 %2044, 3
  %2047 = fmul fast float %2045, %54
  %2048 = fmul fast float %2046, %55
  %2049 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  %2050 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2051 = select i1 %843, i32 2, i32 0
  %2052 = or i32 %2051, 1
  %2053 = uitofp i32 %2052 to float
  %2054 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %19, float %2049, float %2050, float %2053, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2055 = extractvalue %dx.types.ResRet.f32 %2054, 0
  %2056 = extractvalue %dx.types.ResRet.f32 %2054, 1
  %2057 = extractvalue %dx.types.ResRet.f32 %2054, 2
  %2058 = extractvalue %dx.types.ResRet.f32 %2054, 3
  %2059 = add nuw nsw i32 %2051, 2
  %2060 = uitofp i32 %2059 to float
  %2061 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %19, float %2049, float %2050, float %2060, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2062 = extractvalue %dx.types.ResRet.f32 %2061, 0
  %2063 = extractvalue %dx.types.ResRet.f32 %2061, 1
  %2064 = extractvalue %dx.types.ResRet.f32 %2061, 2
  %2065 = extractvalue %dx.types.ResRet.f32 %2061, 3
  %2066 = call float @dx.op.binary.f32(i32 35, float %2056, float %2057)  ; FMax(a,b)
  %2067 = call float @dx.op.binary.f32(i32 35, float %2055, float %2066)  ; FMax(a,b)
  %2068 = call float @dx.op.binary.f32(i32 35, float %2067, float %2058)  ; FMax(a,b)
  %2069 = call float @dx.op.binary.f32(i32 36, float %2063, float %2064)  ; FMin(a,b)
  %2070 = call float @dx.op.binary.f32(i32 36, float %2062, float %2069)  ; FMin(a,b)
  %2071 = call float @dx.op.binary.f32(i32 36, float %2070, float %2065)  ; FMin(a,b)
  %2072 = fmul fast float %2068, 2.550000e+02
  %2073 = fadd fast float %2072, 0x3F70101020000000
  %2074 = fptoui float %2073 to i32
  %2075 = fmul fast float %2071, 2.550000e+02
  %2076 = fadd fast float %2075, 0x3F70101020000000
  %2077 = fptoui float %2076 to i32
  %2078 = icmp ult i32 %2074, %2077
  br i1 %2078, label %2079, label %2131

; <label>:2079                                    ; preds = %2039
  %2080 = fcmp fast ogt float %46, 9.843750e-01
  %2081 = fadd fast float %985, -4.000000e+00
  %2082 = select i1 %2080, float -4.000000e+00, float %2081
  %2083 = call float @dx.op.binary.f32(i32 35, float %2082, float 0.000000e+00)  ; FMax(a,b)
  %2084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2085 = extractvalue %dx.types.CBufRet.f32 %2084, 0
  %2086 = fadd fast float %2085, %2083
  %2087 = extractvalue %dx.types.CBufRet.f32 %2084, 2
  %2088 = fmul fast float %2086, %2087
  %2089 = call float @dx.op.unary.f32(i32 23, float %2088)  ; Log(value)
  %2090 = extractvalue %dx.types.CBufRet.f32 %2084, 3
  %2091 = fmul fast float %2090, %2089
  %2092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2092, 2
  %2094 = fmul fast float %2091, %2093
  %2095 = call float @dx.op.unary.f32(i32 7, float %2094)  ; Saturate(value)
  %2096 = uitofp i32 %2074 to float
  %2097 = uitofp i32 %2077 to float
  %2098 = fadd fast float %2096, 5.000000e-01
  %2099 = fadd fast float %2097, 5.000000e-01
  %2100 = fmul fast float %2093, %2098
  %2101 = fmul fast float %2093, %2099
  %2102 = fadd fast float %2100, 0x3F0FFB4800000000
  %2103 = fadd fast float %2101, 0xBF0FFB4800000000
  %2104 = call float @dx.op.binary.f32(i32 35, float %2095, float %2102)  ; FMax(a,b)
  %2105 = call float @dx.op.binary.f32(i32 36, float %2104, float %2103)  ; FMin(a,b)
  %2106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2107 = extractvalue %dx.types.CBufRet.f32 %2106, 1
  %2108 = extractvalue %dx.types.CBufRet.f32 %2106, 2
  %2109 = extractvalue %dx.types.CBufRet.f32 %2106, 0
  %2110 = select i1 %843, float %2109, float 0.000000e+00
  %2111 = fmul fast float %2107, %2105
  %2112 = fadd fast float %2110, %2111
  %2113 = fadd fast float %2110, %2108
  %2114 = fsub fast float %2107, %2108
  %2115 = fadd fast float %2114, %2110
  %2116 = call float @dx.op.binary.f32(i32 35, float %2112, float %2113)  ; FMax(a,b)
  %2117 = call float @dx.op.binary.f32(i32 36, float %2116, float %2115)  ; FMin(a,b)
  %2118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %18, float %2049, float %2050, float %2117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.ResRet.f32 %2118, 1
  %2121 = extractvalue %dx.types.ResRet.f32 %2118, 2
  %2122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %18, float %2049, float %2050, float %2117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2123 = extractvalue %dx.types.ResRet.f32 %2122, 0
  %2124 = extractvalue %dx.types.ResRet.f32 %2122, 1
  %2125 = extractvalue %dx.types.ResRet.f32 %2122, 2
  %2126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2127 = extractvalue %dx.types.CBufRet.f32 %2126, 1
  %2128 = fmul fast float %2127, %2123
  %2129 = fmul fast float %2127, %2124
  %2130 = fmul fast float %2127, %2125
  br label %2131

; <label>:2131                                    ; preds = %2079, %2039
  %2132 = phi float [ %2119, %2079 ], [ 1.000000e+00, %2039 ]
  %2133 = phi float [ %2120, %2079 ], [ 1.000000e+00, %2039 ]
  %2134 = phi float [ %2121, %2079 ], [ 1.000000e+00, %2039 ]
  %2135 = phi float [ %2128, %2079 ], [ 0.000000e+00, %2039 ]
  %2136 = phi float [ %2129, %2079 ], [ 0.000000e+00, %2039 ]
  %2137 = phi float [ %2130, %2079 ], [ 0.000000e+00, %2039 ]
  %2138 = fmul fast float %2135, %811
  %2139 = fmul fast float %2136, %811
  %2140 = fmul fast float %2137, %811
  %2141 = fmul fast float %2132, %2043
  %2142 = call float @dx.op.dot3.f32(i32 55, float %2132, float %2133, float %2134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2143 = call float @dx.op.dot3.f32(i32 55, float %2138, float %2139, float %2140, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2144 = select i1 %124, float %2142, float %2132
  %2145 = select i1 %124, float %2142, float %2133
  %2146 = select i1 %124, float 1.000000e+00, float %2134
  %2147 = select i1 %124, float %2143, float %2138
  %2148 = select i1 %124, float 0.000000e+00, float %2139
  %2149 = select i1 %124, float 0.000000e+00, float %2140
  %2150 = fmul fast float %2144, %2040
  %2151 = fmul fast float %2145, %2041
  %2152 = fmul fast float %2146, %2042
  %2153 = fadd fast float %2150, %2147
  %2154 = fadd fast float %2151, %2148
  %2155 = fadd fast float %2149, %2152
  %2156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.i32 %2156, 3
  %2158 = and i32 %2157, 3
  %2159 = icmp ne i32 %2158, 0
  %2160 = and i32 %2157, 4
  %2161 = icmp ne i32 %2160, 0
  %2162 = and i1 %2159, %2161
  %2163 = and i1 %124, %2162
  br i1 %2163, label %2164, label %2170

; <label>:2164                                    ; preds = %2131
  %2165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2166 = extractvalue %dx.types.CBufRet.f32 %2165, 1
  %2167 = fadd fast float %2141, -1.000000e+00
  %2168 = fmul fast float %2166, %2167
  %2169 = fadd fast float %2168, 1.000000e+00
  br label %2170

; <label>:2170                                    ; preds = %2164, %2131
  %2171 = phi float [ %2169, %2164 ], [ %2141, %2131 ]
  %2172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2173 = extractvalue %dx.types.CBufRet.f32 %2172, 0
  br i1 %124, label %2174, label %2195

; <label>:2174                                    ; preds = %2170
  %2175 = fadd fast float %2153, %2154
  %2176 = fmul fast float %2173, %2175
  %2177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2178 = extractvalue %dx.types.CBufRet.f32 %2177, 3
  %2179 = extractvalue %dx.types.CBufRet.f32 %815, 1
  %2180 = fsub fast float %818, %2179
  %2181 = extractvalue %dx.types.CBufRet.f32 %815, 2
  %2182 = fmul fast float %2180, %2181
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2184 = fsub fast float %2183, %2178
  %2185 = fmul fast float %2184, %2171
  %2186 = fadd fast float %2185, %2178
  %2187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2188 = extractvalue %dx.types.CBufRet.f32 %2187, 0
  %2189 = fsub fast float %2186, %2188
  %2190 = fmul fast float %2189, 1.000000e+01
  %2191 = call float @dx.op.unary.f32(i32 7, float %2190)  ; Saturate(value)
  %2192 = fmul fast float %2191, %811
  %2193 = fsub fast float %811, %2192
  %2194 = fmul fast float %2193, %2186
  br label %2204

; <label>:2195                                    ; preds = %2170
  %2196 = fmul fast float %2173, %2153
  %2197 = fmul fast float %2173, %2154
  %2198 = fmul fast float %2173, %2155
  %2199 = call float @dx.op.binary.f32(i32 35, float %2197, float %2198)  ; FMax(a,b)
  %2200 = call float @dx.op.binary.f32(i32 35, float %2196, float %2199)  ; FMax(a,b)
  %2201 = call float @dx.op.binary.f32(i32 35, float %2200, float %811)  ; FMax(a,b)
  %2202 = fcmp fast ugt float %2201, 0x3F10000000000000
  br i1 %2202, label %2204, label %2203

; <label>:2203                                    ; preds = %2195
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2204

; <label>:2204                                    ; preds = %2203, %2195, %2174
  %2205 = phi float [ %2176, %2174 ], [ %2196, %2203 ], [ %2196, %2195 ]
  %2206 = phi float [ %2194, %2174 ], [ %2197, %2203 ], [ %2197, %2195 ]
  %2207 = phi float [ %2193, %2174 ], [ %2198, %2203 ], [ %2198, %2195 ]
  %2208 = phi float [ %2193, %2174 ], [ %811, %2203 ], [ %811, %2195 ]
  %2209 = fadd fast float %530, 0x3FE3C6EF40000000
  %2210 = call float @dx.op.unary.f32(i32 22, float %2209)  ; Frc(value)
  %2211 = call float @dx.op.unary.f32(i32 23, float %2205)  ; Log(value)
  %2212 = fadd fast float %2211, -7.000000e+00
  %2213 = call float @dx.op.unary.f32(i32 21, float %2212)  ; Exp(value)
  %2214 = fmul fast float %2210, 2.000000e+00
  %2215 = fadd fast float %2214, -1.000000e+00
  %2216 = fmul fast float %2213, %2215
  %2217 = fcmp fast ogt float %2205, 0.000000e+00
  %2218 = select i1 %2217, float %2216, float 0.000000e+00
  %2219 = fadd fast float %2218, %2205
  %2220 = fadd fast float %530, 0x3FF3C6EF40000000
  %2221 = call float @dx.op.unary.f32(i32 22, float %2220)  ; Frc(value)
  %2222 = call float @dx.op.unary.f32(i32 23, float %2206)  ; Log(value)
  %2223 = fadd fast float %2222, -7.000000e+00
  %2224 = call float @dx.op.unary.f32(i32 21, float %2223)  ; Exp(value)
  %2225 = fmul fast float %2221, 2.000000e+00
  %2226 = fadd fast float %2225, -1.000000e+00
  %2227 = fmul fast float %2224, %2226
  %2228 = fcmp fast ogt float %2206, 0.000000e+00
  %2229 = select i1 %2228, float %2227, float 0.000000e+00
  %2230 = fadd fast float %2229, %2206
  %2231 = fadd fast float %530, 0x3FFDAA66E0000000
  %2232 = call float @dx.op.unary.f32(i32 22, float %2231)  ; Frc(value)
  %2233 = call float @dx.op.unary.f32(i32 23, float %2207)  ; Log(value)
  %2234 = fadd fast float %2233, -6.000000e+00
  %2235 = call float @dx.op.unary.f32(i32 21, float %2234)  ; Exp(value)
  %2236 = fmul fast float %2232, 2.000000e+00
  %2237 = fadd fast float %2236, -1.000000e+00
  %2238 = fmul fast float %2235, %2237
  %2239 = fcmp fast ogt float %2207, 0.000000e+00
  %2240 = select i1 %2239, float %2238, float 0.000000e+00
  %2241 = fadd fast float %2240, %2207
  %2242 = select i1 %124, float %2206, float %2230
  %2243 = select i1 %124, float %2207, float %2241
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2244 = call float @dx.op.binary.f32(i32 36, float %2219, float 3.225500e+04)  ; FMin(a,b)
  %2245 = call float @dx.op.binary.f32(i32 36, float %2242, float 3.225500e+04)  ; FMin(a,b)
  %2246 = call float @dx.op.binary.f32(i32 36, float %2243, float 3.225500e+04)  ; FMin(a,b)
  %2247 = call float @dx.op.binary.f32(i32 36, float %2208, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2244)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2245)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2246)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %2247)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2208)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2208)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2208)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2208)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

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
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 78, i32 1, i32 7, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!19 = !{i32 11, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!20 = !{i32 12, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !23}
!23 = !{i32 0, i32 14}
!24 = !{i32 15, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!25 = !{i32 16, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!26 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!30 = !{!31, !32, !33, !34}
!31 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!32 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!33 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!34 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!35 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!36 = !{void ()* @ps_main, !"ps_main", !37, !4, !62}
!37 = !{!38, !58, null}
!38 = !{!39, !42, !43, !45, !48, !50, !52, !54, !55, !57}
!39 = !{i32 0, !"SV_Position", i8 9, i8 3, !40, i8 4, i32 1, i8 4, i32 0, i8 0, !41}
!40 = !{i32 0}
!41 = !{i32 3, i32 15}
!42 = !{i32 1, !"COLOR", i8 9, i8 0, !40, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!43 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 2, i8 0, !44}
!44 = !{i32 3, i32 3}
!45 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 3, i8 0, !47}
!46 = !{i32 3}
!47 = !{i32 3, i32 7}
!48 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 4, i8 0, !41}
!49 = !{i32 4}
!50 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !51, i8 3, i32 1, i8 2, i32 5, i8 0, !44}
!51 = !{i32 5}
!52 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 6, i8 0, null}
!53 = !{i32 8}
!54 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !40, i8 1, i32 1, i8 4, i32 7, i8 0, !41}
!55 = !{i32 8, !"COLOR", i8 5, i8 0, !46, i8 1, i32 1, i8 3, i32 8, i8 0, !56}
!56 = !{i32 3, i32 5}
!57 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !40, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!58 = !{!59, !60}
!59 = !{i32 0, !"SV_Target", i8 9, i8 16, !40, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!60 = !{i32 1, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 1, i8 0, !41}
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
!72 = !{!73, !73, i64 0}
!73 = !{!"float", !74, i64 0}
!74 = !{!"omnipotent char", !75, i64 0}
!75 = !{!"Simple C/C++ TBAA"}
!76 = !{!77, !79, !81, !82, !84, !85, !86, !88, !89, !90}
!77 = distinct !{!77, !78, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!78 = distinct !{!78, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!79 = distinct !{!79, !80, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!80 = distinct !{!80, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!81 = distinct !{!81, !80, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!82 = distinct !{!82, !83, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!83 = distinct !{!83, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!84 = distinct !{!84, !83, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!85 = distinct !{!85, !83, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!86 = distinct !{!86, !87, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!87 = distinct !{!87, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!88 = distinct !{!88, !87, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!89 = distinct !{!89, !87, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!90 = distinct !{!90, !91, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!91 = distinct !{!91, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"\01?sort@@YAXAIAM00@Z: %c"}
!94 = distinct !{!94, !"\01?sort@@YAXAIAM00@Z"}
!95 = !{!96, !97, !77, !79, !81, !82, !84, !85, !86, !88, !89, !90}
!96 = distinct !{!96, !94, !"\01?sort@@YAXAIAM00@Z: %a"}
!97 = distinct !{!97, !94, !"\01?sort@@YAXAIAM00@Z: %b"}
!98 = !{!97}
!99 = !{!96, !93, !77, !79, !81, !82, !84, !85, !86, !88, !89, !90}
!100 = !{!96}
!101 = !{!97, !93, !77, !79, !81, !82, !84, !85, !86, !88, !89, !90}
!102 = !{!103}
!103 = distinct !{!103, !104, !"\01?sort@@YAXAIAM00@Z: %c"}
!104 = distinct !{!104, !"\01?sort@@YAXAIAM00@Z"}
!105 = !{!106, !107, !77, !79, !81, !82, !84, !85, !86, !88, !89, !90}
!106 = distinct !{!106, !104, !"\01?sort@@YAXAIAM00@Z: %a"}
!107 = distinct !{!107, !104, !"\01?sort@@YAXAIAM00@Z: %b"}
!108 = !{!107}
!109 = !{!106, !103, !77, !79, !81, !82, !84, !85, !86, !88, !89, !90}
!110 = !{!106}
!111 = !{!107, !103, !77, !79, !81, !82, !84, !85, !86, !88, !89, !90}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 2}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}

