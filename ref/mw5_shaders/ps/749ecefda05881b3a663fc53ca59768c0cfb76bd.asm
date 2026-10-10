;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyz 
; TEXCOORD                 5   xy          4     NONE   float   xy  
; TEXCOORD                 8   xyzw        5     NONE   float       
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
; shader hash: 43b66ce64b19b45ebcf311dec1ee93aa
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
;
;
; ViewId state:
;
; Number of inputs: 31, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = fmul fast float %46, %39
  %48 = fmul fast float %46, %40
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %52 = fmul fast float %47, 2.000000e+00
  %53 = fmul fast float %52, %50
  %54 = fmul fast float %48, 2.000000e+00
  %55 = fmul fast float %54, %51
  %56 = fsub fast float 1.000000e+00, %53
  %57 = fsub fast float 1.000000e+00, %55
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = fmul fast float %56, %59
  %63 = fmul fast float %56, %60
  %64 = fmul fast float %56, %61
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %69 = fmul fast float %57, %66
  %70 = fmul fast float %57, %67
  %71 = fmul fast float %57, %68
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = fadd fast float %69, %73
  %77 = fadd fast float %76, %62
  %78 = fadd fast float %70, %74
  %79 = fadd fast float %78, %63
  %80 = fadd fast float %71, %75
  %81 = fadd fast float %80, %64
  %82 = fmul fast float %77, %42
  %83 = fmul fast float %79, %42
  %84 = fmul fast float %81, %42
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.i32 %85, 3
  %87 = and i32 %86, 3
  %88 = icmp ne i32 %87, 0
  %89 = and i32 %86, 4
  %90 = icmp ne i32 %89, 0
  %91 = and i1 %88, %90
  br i1 %91, label %92, label %101

; <label>:92                                      ; preds = %0
  %93 = fmul fast float %51, %48
  %94 = fmul fast float %50, %47
  %95 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %94, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = fsub fast float 1.000000e+00, %96
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = fcmp fast olt float %97, %99
  br label %104

; <label>:101                                     ; preds = %0
  %102 = icmp eq i32 %89, 0
  %103 = and i1 %88, %102
  br label %104

; <label>:104                                     ; preds = %101, %92
  %105 = phi i1 [ %100, %92 ], [ %103, %101 ]
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %109 = fmul fast float %107, %47
  %110 = fmul fast float %108, %48
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = and i32 %112, 114688
  %114 = icmp ne i32 %113, 0
  %115 = select i1 %114, float %109, float 0.000000e+00
  %116 = select i1 %114, float %110, float 0.000000e+00
  %117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %115, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fmul fast float %118, 2.550000e+02
  %120 = fptoui float %119 to i32
  %121 = select i1 %114, i32 %120, i32 0
  %122 = mul i32 %22, 208
  %123 = add i32 %122, 188
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = and i32 %86, 114688
  %127 = and i32 %86, 8
  %128 = icmp ne i32 %127, 0
  %129 = or i1 %105, %128
  %130 = select i1 %129, i32 %126, i32 16384
  %131 = and i32 %130, %125
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

; <label>:133                                     ; preds = %104
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %134

; <label>:134                                     ; preds = %133, %104
  %135 = and i32 %125, 512
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %161, label %137

; <label>:137                                     ; preds = %134
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %141 = fmul fast float %139, %47
  %142 = fmul fast float %140, %48
  %143 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %145 = fdiv fast float %143, %144
  %146 = fcmp fast ogt float %145, 0x3FFC71C720000000
  br i1 %146, label %147, label %153

; <label>:147                                     ; preds = %137
  %148 = fdiv fast float 0x3FFC71C720000000, %145
  %149 = fmul fast float %148, %142
  %150 = fsub fast float 1.000000e+00, %148
  %151 = fmul fast float %150, 5.000000e-01
  %152 = fadd fast float %151, %149
  br label %161

; <label>:153                                     ; preds = %137
  %154 = fcmp fast olt float %145, 0x3FFC71C720000000
  br i1 %154, label %155, label %161

; <label>:155                                     ; preds = %153
  %156 = fmul fast float %141, 5.625000e-01
  %157 = fmul fast float %156, %145
  %158 = fmul fast float %145, 2.812500e-01
  %159 = fsub fast float 5.000000e-01, %158
  %160 = fadd fast float %159, %157
  br label %161

; <label>:161                                     ; preds = %155, %153, %147, %134
  %162 = phi float [ %33, %134 ], [ %141, %147 ], [ %160, %155 ], [ %141, %153 ]
  %163 = phi float [ %34, %134 ], [ %152, %147 ], [ %142, %155 ], [ %142, %153 ]
  %164 = and i32 %125, 16
  %165 = icmp ne i32 %164, 0
  %166 = select i1 %165, float 1.000000e+00, float %38
  %167 = add i32 %23, 92
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = add i32 %169, 0
  %171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %171, %dx.types.Handle %44, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float %173, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = fmul fast float %175, %166
  %177 = icmp eq i32 %164, 0
  br i1 %177, label %197, label %178, !dx.controlflow.hints !60

; <label>:178                                     ; preds = %161
  %179 = add i32 %122, 64
  %180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = fadd fast float %181, 1.000000e+00
  %183 = fmul fast float %182, %38
  %184 = fsub fast float %183, %181
  %185 = fsub fast float %182, %184
  %186 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %187 = fsub fast float 1.000000e+00, %183
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %189 = fsub fast float %186, %188
  %190 = fsub fast float %176, %188
  %191 = fdiv fast float %190, %189
  %192 = call float @dx.op.unary.f32(i32 7, float %191)  ; Saturate(value)
  %193 = fmul fast float %192, 2.000000e+00
  %194 = fsub fast float 3.000000e+00, %193
  %195 = fmul fast float %192, %192
  %196 = fmul fast float %195, %194
  br label %197

; <label>:197                                     ; preds = %178, %161
  %198 = phi float [ %196, %178 ], [ %176, %161 ]
  %199 = fcmp fast ogt float %198, 0.000000e+00
  br i1 %199, label %201, label %200

; <label>:200                                     ; preds = %197
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %201

; <label>:201                                     ; preds = %200, %197
  %202 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %203 = fmul fast float %47, 5.000000e-01
  %204 = fmul fast float %48, 5.000000e-01
  %205 = fptosi float %203 to i32
  %206 = fptosi float %204 to i32
  %207 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = lshr i32 %208, 18
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F4C00EBA0000000
  %212 = call float @dx.op.unary.f32(i32 21, float %211)  ; Exp(value)
  %213 = fadd fast float %212, -1.000000e+00
  %214 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %215 = extractvalue %dx.types.Dimensions %214, 0
  %216 = sitofp i32 %215 to float
  %217 = extractvalue %dx.types.Dimensions %214, 1
  %218 = sitofp i32 %217 to float
  %219 = fcmp fast oge float %203, %216
  %220 = fcmp fast oge float %204, %218
  %221 = or i1 %219, %220
  %222 = select i1 %221, float 0x4197782600000000, float %213
  %223 = fsub fast float %222, %42
  %224 = fcmp fast ogt float %223, 0.000000e+00
  %225 = and i32 %121, -2
  %226 = icmp eq i32 %225, 2
  %227 = and i1 %226, %224
  %228 = xor i1 %224, true
  %229 = icmp eq i32 %121, 1
  %230 = and i1 %229, %228
  %231 = or i1 %227, %230
  %232 = and i32 %125, 262144
  %233 = icmp ne i32 %232, 0
  %234 = and i1 %233, %231
  %235 = xor i1 %231, true
  %236 = and i32 %125, 131072
  %237 = icmp ne i32 %236, 0
  %238 = and i1 %237, %235
  %239 = or i1 %234, %238
  br i1 %239, label %240, label %241

; <label>:240                                     ; preds = %201
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %241

; <label>:241                                     ; preds = %240, %201
  %242 = and i32 %125, 32
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %494, label %244, !dx.controlflow.hints !61

; <label>:244                                     ; preds = %241
  %245 = add i32 %122, 80
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = extractvalue %dx.types.ResRet.f32 %246, 3
  %251 = add i32 %122, 96
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = extractvalue %dx.types.ResRet.f32 %252, 2
  %256 = add i32 %122, 112
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = extractvalue %dx.types.ResRet.f32 %257, 3
  %262 = add i32 %122, 128
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = extractvalue %dx.types.ResRet.f32 %263, 3
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 4096
  %271 = icmp ne i32 %270, 0
  %272 = fcmp fast une float %255, 0.000000e+00
  %273 = and i32 %269, 64
  %274 = icmp ne i32 %273, 0
  %275 = and i32 %269, 128
  %276 = icmp eq i32 %275, 0
  %277 = and i32 %269, 2048
  %278 = icmp eq i32 %277, 0
  %279 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %280 = extractvalue %dx.types.Dimensions %279, 0
  %281 = sitofp i32 %280 to float
  %282 = extractvalue %dx.types.Dimensions %279, 1
  %283 = sitofp i32 %282 to float
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 2
  %286 = extractvalue %dx.types.CBufRet.f32 %284, 3
  %287 = fmul fast float %285, %47
  %288 = fmul fast float %286, %48
  %289 = fmul fast float %287, %281
  %290 = fmul fast float %288, %283
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %293 = fsub fast float -0.000000e+00, %292
  %294 = fptoui float %293 to i32
  %295 = fptoui float %289 to i32
  %296 = fptoui float %290 to i32
  %297 = and i32 %294, 31
  %298 = lshr i32 %295, %297
  %299 = lshr i32 %296, %297
  %300 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %294, i32 %298, i32 %299, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = fcmp fast ogt float %301, -1.000000e+00
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %305 = select i1 %302, float %304, float 1.000000e+00
  %306 = fadd fast float %301, 1.000000e+00
  %307 = fmul fast float %305, %306
  %308 = call float @dx.op.unary.f32(i32 6, float %307)  ; FAbs(value)
  %309 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %310 = fcmp fast oge float %308, %309
  %311 = select i1 %310, float 0x4197782600000000, float %308
  br i1 %278, label %389, label %312, !dx.controlflow.hints !62

; <label>:312                                     ; preds = %244
  %313 = fmul fast float %52, %285
  %314 = fmul fast float %54, %286
  %315 = fsub fast float 1.000000e+00, %313
  %316 = fsub fast float 1.000000e+00, %314
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %320 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %321 = fmul fast float %315, %318
  %322 = fmul fast float %315, %319
  %323 = fmul fast float %315, %320
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 0
  %326 = extractvalue %dx.types.CBufRet.f32 %324, 1
  %327 = extractvalue %dx.types.CBufRet.f32 %324, 2
  %328 = fmul fast float %316, %325
  %329 = fmul fast float %316, %326
  %330 = fmul fast float %316, %327
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %335 = fadd fast float %328, %332
  %336 = fadd fast float %335, %321
  %337 = fadd fast float %329, %333
  %338 = fadd fast float %337, %322
  %339 = fadd fast float %330, %334
  %340 = fadd fast float %339, %323
  %341 = fmul fast float %336, %311
  %342 = fmul fast float %338, %311
  %343 = fmul fast float %340, %311
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %348 = fsub fast float %345, %24
  %349 = fadd fast float %348, %341
  %350 = fsub fast float %346, %25
  %351 = fadd fast float %350, %342
  %352 = fsub fast float %347, %26
  %353 = fadd fast float %352, %343
  %354 = fmul fast float %27, %27
  %355 = call float @dx.op.dot3.f32(i32 55, float %349, float %351, float %353, float %349, float %351, float %353)  ; Dot3(ax,ay,az,bx,by,bz)
  %356 = fsub fast float %354, %355
  %357 = fmul fast float %254, %354
  %358 = fmul fast float %253, %354
  %359 = fcmp fast olt float %356, %357
  %360 = fcmp fast ogt float %356, %358
  %361 = or i1 %359, %360
  %362 = select i1 %361, float 0.000000e+00, float %356
  %363 = fsub fast float %253, %254
  %364 = fmul fast float %363, %354
  %365 = fsub fast float %362, %357
  %366 = fdiv fast float %365, %364
  %367 = call float @dx.op.unary.f32(i32 7, float %366)  ; Saturate(value)
  %368 = fmul fast float %367, 2.000000e+00
  %369 = fsub fast float 3.000000e+00, %368
  %370 = fmul fast float %367, %367
  %371 = fmul fast float %370, %369
  %372 = fmul fast float %258, %35
  %373 = fmul fast float %259, %36
  %374 = fmul fast float %260, %37
  %375 = fsub fast float %372, %264
  %376 = fsub fast float %373, %265
  %377 = fsub fast float %374, %266
  %378 = fsub fast float %261, %267
  %379 = fmul fast float %371, %375
  %380 = fmul fast float %371, %376
  %381 = fmul fast float %371, %377
  %382 = fmul fast float %371, %378
  %383 = fadd fast float %379, %264
  %384 = fadd fast float %380, %265
  %385 = fadd fast float %381, %266
  %386 = fadd fast float %382, %267
  %387 = fmul fast float %247, %247
  %388 = fmul fast float %387, %362
  br label %484

; <label>:389                                     ; preds = %244
  %390 = and i32 %269, 256
  %391 = icmp eq i32 %390, 0
  %392 = fsub fast float %311, %42
  br i1 %391, label %441, label %393

; <label>:393                                     ; preds = %389
  %394 = fadd fast float %253, %42
  %395 = fcmp fast olt float %311, %42
  %396 = fcmp fast ogt float %311, %394
  %397 = or i1 %395, %396
  %398 = select i1 %397, float 0.000000e+00, float %392
  %399 = call float @dx.op.unary.f32(i32 83, float %311)  ; DerivCoarseX(value)
  %400 = call float @dx.op.unary.f32(i32 84, float %311)  ; DerivCoarseY(value)
  %401 = fmul fast float %399, %399
  %402 = fmul fast float %400, %400
  %403 = fadd fast float %402, %401
  %404 = call float @dx.op.unary.f32(i32 24, float %403)  ; Sqrt(value)
  %405 = extractvalue %dx.types.CBufRet.f32 %291, 2
  %406 = fmul fast float %405, %404
  %407 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %408 = fmul fast float %407, %254
  %409 = fdiv fast float %392, %408
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %411 = fmul fast float %410, 2.000000e+00
  %412 = fsub fast float 3.000000e+00, %411
  %413 = fmul fast float %410, %410
  %414 = fmul fast float %413, %412
  %415 = fsub fast float %311, %394
  %416 = fadd fast float %415, %408
  %417 = fdiv fast float %416, %408
  %418 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %419 = fmul fast float %418, 2.000000e+00
  %420 = fsub fast float 3.000000e+00, %419
  %421 = fmul fast float %418, %418
  %422 = fmul fast float %421, %420
  %423 = fsub fast float %414, %422
  %424 = fmul fast float %258, %35
  %425 = fmul fast float %259, %36
  %426 = fmul fast float %260, %37
  %427 = fsub fast float %424, %264
  %428 = fsub fast float %425, %265
  %429 = fsub fast float %426, %266
  %430 = fsub fast float %261, %267
  %431 = fmul fast float %423, %427
  %432 = fmul fast float %423, %428
  %433 = fmul fast float %423, %429
  %434 = fmul fast float %423, %430
  %435 = fadd fast float %431, %264
  %436 = fadd fast float %432, %265
  %437 = fadd fast float %433, %266
  %438 = fadd fast float %434, %267
  %439 = fmul fast float %398, %247
  %440 = call float @dx.op.unary.f32(i32 6, float %439)  ; FAbs(value)
  br label %484

; <label>:441                                     ; preds = %389
  br i1 %272, label %442, label %455

; <label>:442                                     ; preds = %441
  %443 = fdiv fast float 5.000000e+01, %27
  %444 = select i1 %274, float %443, float 1.000000e+00
  %445 = fmul fast float %444, %247
  %446 = fmul fast float %33, 2.000000e+00
  %447 = fmul fast float %34, 2.000000e+00
  %448 = fadd fast float %446, -1.000000e+00
  %449 = fadd fast float %447, -1.000000e+00
  %450 = call float @dx.op.dot2.f32(i32 54, float %448, float %449, float %448, float %449)  ; Dot2(ax,ay,bx,by)
  %451 = fmul fast float %255, %27
  %452 = fmul fast float %451, %450
  %453 = fsub fast float %392, %452
  %454 = fmul fast float %445, %453
  br label %484

; <label>:455                                     ; preds = %441
  br i1 %276, label %476, label %456

; <label>:456                                     ; preds = %455
  %457 = fmul fast float %27, 0x3F947AE140000000
  %458 = select i1 %274, float %457, float 1.000000e+00
  %459 = fdiv fast float 1.000000e+00, %458
  %460 = fmul fast float %458, %248
  %461 = fmul fast float %458, %249
  %462 = fmul fast float %459, %250
  %463 = call float @dx.op.unary.f32(i32 6, float %392)  ; FAbs(value)
  %464 = fcmp fast olt float %463, %460
  br i1 %464, label %465, label %469, !dx.controlflow.hints !63

; <label>:465                                     ; preds = %456
  %466 = fmul fast float %459, %247
  %467 = fmul fast float %466, %463
  %468 = call float @dx.op.unary.f32(i32 6, float %467)  ; FAbs(value)
  br label %484

; <label>:469                                     ; preds = %456
  %470 = fcmp fast ogt float %463, %461
  br i1 %470, label %471, label %484

; <label>:471                                     ; preds = %469
  %472 = fsub fast float %463, %461
  %473 = fmul fast float %462, %472
  %474 = call float @dx.op.unary.f32(i32 6, float %473)  ; FAbs(value)
  %475 = fsub fast float 1.000000e+00, %474
  br label %484

; <label>:476                                     ; preds = %455
  %477 = fdiv fast float 5.000000e+01, %27
  %478 = select i1 %274, float %477, float 1.000000e+00
  %479 = fmul fast float %478, %247
  %480 = call float @dx.op.unary.f32(i32 6, float %223)  ; FAbs(value)
  %481 = select i1 %271, float %480, float 0x47EFFFFFE0000000
  %482 = call float @dx.op.binary.f32(i32 36, float %392, float %481)  ; FMin(a,b)
  %483 = fmul fast float %479, %482
  br label %484

; <label>:484                                     ; preds = %476, %471, %469, %465, %442, %393, %312
  %485 = phi float [ %388, %312 ], [ %440, %393 ], [ %454, %442 ], [ %483, %476 ], [ %468, %465 ], [ %475, %471 ], [ %463, %469 ]
  %486 = phi float [ %383, %312 ], [ %435, %393 ], [ %35, %442 ], [ %35, %476 ], [ %35, %465 ], [ %35, %471 ], [ %35, %469 ]
  %487 = phi float [ %384, %312 ], [ %436, %393 ], [ %36, %442 ], [ %36, %476 ], [ %36, %465 ], [ %36, %471 ], [ %36, %469 ]
  %488 = phi float [ %385, %312 ], [ %437, %393 ], [ %37, %442 ], [ %37, %476 ], [ %37, %465 ], [ %37, %471 ], [ %37, %469 ]
  %489 = phi float [ %386, %312 ], [ %438, %393 ], [ 1.000000e+00, %442 ], [ 1.000000e+00, %476 ], [ 1.000000e+00, %465 ], [ 1.000000e+00, %471 ], [ 1.000000e+00, %469 ]
  %490 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %491 = fmul fast float %490, %38
  %492 = fmul fast float %489, %202
  %493 = fmul fast float %492, %490
  br label %494

; <label>:494                                     ; preds = %484, %241
  %495 = phi float [ %486, %484 ], [ %35, %241 ]
  %496 = phi float [ %487, %484 ], [ %36, %241 ]
  %497 = phi float [ %488, %484 ], [ %37, %241 ]
  %498 = phi float [ %493, %484 ], [ %202, %241 ]
  %499 = phi float [ %491, %484 ], [ %38, %241 ]
  %500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %501 = extractvalue %dx.types.CBufRet.f32 %500, 2
  %502 = fptosi float %42 to i32
  %503 = sitofp i32 %502 to float
  %504 = fadd fast float %501, %503
  %505 = fmul fast float %504, 0x3FE3C6EF40000000
  %506 = frem fast float %47, 2.560000e+02
  %507 = frem fast float %48, 2.560000e+02
  %508 = fptoui float %506 to i32
  %509 = fptoui float %507 to i32
  %510 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %508, i32 %509, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = fadd fast float %511, %505
  %513 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %514 = and i32 %125, 1
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %573, label %516, !dx.controlflow.hints !64

; <label>:516                                     ; preds = %494
  %517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 2
  %519 = extractvalue %dx.types.ResRet.f32 %517, 3
  %520 = add i32 %122, 16
  %521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = extractvalue %dx.types.ResRet.f32 %521, 1
  %524 = extractvalue %dx.types.ResRet.f32 %521, 2
  %525 = add i32 %122, 32
  %526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = extractvalue %dx.types.ResRet.f32 %526, 1
  %529 = extractvalue %dx.types.ResRet.f32 %526, 2
  %530 = and i32 %125, 2
  %531 = icmp eq i32 %530, 0
  %532 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %533 = call float @dx.op.unary.f32(i32 25, float %532)  ; Rsqrt(value)
  %534 = fmul fast float %533, %30
  %535 = fmul fast float %533, %31
  %536 = fmul fast float %533, %32
  %537 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %538 = call float @dx.op.unary.f32(i32 25, float %537)  ; Rsqrt(value)
  %539 = fmul fast float %538, %82
  %540 = fmul fast float %538, %83
  %541 = fmul fast float %538, %84
  %542 = call float @dx.op.dot3.f32(i32 55, float %539, float %540, float %541, float %534, float %535, float %536)  ; Dot3(ax,ay,az,bx,by,bz)
  %543 = fmul fast float %542, %542
  %544 = fmul fast float %543, %518
  %545 = fadd fast float %544, %519
  %546 = call float @dx.op.unary.f32(i32 7, float %545)  ; Saturate(value)
  br i1 %531, label %547, label %557, !dx.controlflow.hints !65

; <label>:547                                     ; preds = %516
  %548 = extractvalue %dx.types.ResRet.f32 %517, 1
  %549 = extractvalue %dx.types.ResRet.f32 %517, 0
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 3
  %552 = fmul fast float %551, %537
  %553 = fsub fast float %549, %552
  %554 = fmul fast float %553, %548
  %555 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  %556 = fmul fast float %555, %546
  br label %557

; <label>:557                                     ; preds = %547, %516
  %558 = phi float [ %556, %547 ], [ %546, %516 ]
  %559 = fsub fast float %522, %527
  %560 = fsub fast float %523, %528
  %561 = fsub fast float %524, %529
  %562 = fmul fast float %558, %559
  %563 = fmul fast float %558, %560
  %564 = fmul fast float %558, %561
  %565 = fadd fast float %562, %527
  %566 = fadd fast float %563, %528
  %567 = fadd fast float %564, %529
  %568 = fmul fast float %565, %495
  %569 = fmul fast float %566, %496
  %570 = fmul fast float %567, %497
  %571 = fmul fast float %558, %498
  %572 = fmul fast float %558, %499
  br label %573

; <label>:573                                     ; preds = %557, %494
  %574 = phi float [ %568, %557 ], [ %495, %494 ]
  %575 = phi float [ %569, %557 ], [ %496, %494 ]
  %576 = phi float [ %570, %557 ], [ %497, %494 ]
  %577 = phi float [ %571, %557 ], [ %498, %494 ]
  %578 = phi float [ %572, %557 ], [ %499, %494 ]
  %579 = add i32 %23, 88
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = add i32 %581, 0
  %583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %584 = add i32 %23, 24
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %583, %dx.types.Handle %43, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %588 = extractvalue %dx.types.ResRet.f32 %587, 0
  %589 = extractvalue %dx.types.ResRet.f32 %587, 1
  %590 = extractvalue %dx.types.ResRet.f32 %587, 2
  %591 = extractvalue %dx.types.ResRet.f32 %587, 3
  %592 = and i32 %586, 255
  %593 = uitofp i32 %592 to float
  %594 = lshr i32 %586, 8
  %595 = and i32 %594, 255
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %591, %593
  %598 = fadd fast float %597, %596
  %599 = fmul fast float %598, 0x3F70101000000000
  %600 = add i32 %23, 56
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %602, 255
  %604 = uitofp i32 %603 to float
  %605 = fmul fast float %604, 0x3F70101020000000
  %606 = lshr i32 %602, 8
  %607 = and i32 %606, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = lshr i32 %602, 16
  %611 = and i32 %610, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = extractvalue %dx.types.ResRet.f32 %614, 1
  %617 = extractvalue %dx.types.ResRet.f32 %614, 2
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 1
  %620 = fadd fast float %599, 0xBFB99999A0000000
  %621 = call float @dx.op.unary.f32(i32 7, float %620)  ; Saturate(value)
  %622 = fmul fast float %621, 0x3FF1C71C80000000
  %623 = fsub fast float 1.000000e+00, %622
  %624 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %625 = fmul fast float %588, %574
  %626 = fmul fast float %605, %605
  %627 = fmul fast float %626, %625
  %628 = fmul fast float %627, %624
  %629 = fmul fast float %589, %575
  %630 = fmul fast float %609, %609
  %631 = fmul fast float %630, %629
  %632 = fmul fast float %631, %624
  %633 = fmul fast float %590, %576
  %634 = fmul fast float %613, %613
  %635 = fmul fast float %634, %633
  %636 = fmul fast float %635, %624
  %637 = call float @dx.op.unary.f32(i32 7, float %628)  ; Saturate(value)
  %638 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %639 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %640 = call float @dx.op.dot3.f32(i32 55, float %637, float %638, float %639, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %641 = add i32 %23, 32
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = and i32 %643, 255
  %645 = uitofp i32 %644 to float
  %646 = lshr i32 %643, 8
  %647 = and i32 %646, 255
  %648 = uitofp i32 %647 to float
  %649 = fmul fast float %648, %640
  %650 = fadd fast float %649, %645
  %651 = fmul fast float %650, 0x3F70101020000000
  %652 = call float @dx.op.unary.f32(i32 7, float %651)  ; Saturate(value)
  %653 = and i32 %125, 8192
  %654 = icmp eq i32 %653, 0
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 0
  br i1 %654, label %663, label %657, !dx.controlflow.hints !66

; <label>:657                                     ; preds = %573
  %658 = add i32 %122, 176
  %659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.f32 %659, 0
  %661 = fcmp fast oge float %660, 0.000000e+00
  %662 = select i1 %661, float %660, float %656
  br label %670

; <label>:663                                     ; preds = %573
  %664 = add i32 %23, 72
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = bitcast i32 %666 to float
  %668 = fcmp fast oge float %667, 0.000000e+00
  %669 = select i1 %668, float %667, float %656
  br label %670

; <label>:670                                     ; preds = %663, %657
  %671 = phi float [ %662, %657 ], [ %669, %663 ]
  %672 = fmul fast float %578, %577
  %673 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = lshr i32 %674, 18
  %676 = uitofp i32 %675 to float
  %677 = fmul fast float %676, 0x3F4C00EBA0000000
  %678 = call float @dx.op.unary.f32(i32 21, float %677)  ; Exp(value)
  %679 = fadd fast float %678, -1.000000e+00
  %680 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %681 = extractvalue %dx.types.Dimensions %680, 0
  %682 = sitofp i32 %681 to float
  %683 = extractvalue %dx.types.Dimensions %680, 1
  %684 = sitofp i32 %683 to float
  %685 = fcmp fast oge float %203, %682
  %686 = fcmp fast oge float %204, %684
  %687 = or i1 %685, %686
  %688 = select i1 %687, float 0x4197782600000000, float %679
  %689 = fsub fast float 1.000000e+00, %577
  %690 = call float @dx.op.dot3.f32(i32 55, float %689, float %689, float %689, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %691 = fsub fast float 1.000000e+00, %690
  %692 = fmul fast float %671, %652
  %693 = fsub fast float 1.000000e+00, %672
  %694 = fsub fast float %693, %652
  %695 = call float @dx.op.unary.f32(i32 7, float %694)  ; Saturate(value)
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 3
  %698 = fmul fast float %697, %695
  %699 = fadd fast float %698, %692
  %700 = and i32 %125, 2097152
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %706, label %702, !dx.controlflow.hints !67

; <label>:702                                     ; preds = %670
  %703 = add i32 %122, 192
  %704 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  br label %709

; <label>:706                                     ; preds = %670
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 3
  br label %709

; <label>:709                                     ; preds = %706, %702
  %710 = phi float [ %705, %702 ], [ %708, %706 ]
  %711 = fmul fast float %615, %577
  %712 = fmul fast float %711, %619
  %713 = fmul fast float %712, %637
  %714 = fmul fast float %616, %577
  %715 = fmul fast float %714, %619
  %716 = fmul fast float %715, %638
  %717 = fmul fast float %617, %577
  %718 = fmul fast float %717, %619
  %719 = fmul fast float %718, %639
  %720 = icmp eq i32 %121, 3
  %721 = fcmp fast ogt float %42, %688
  %722 = and i1 %229, %721
  %723 = or i1 %720, %722
  %724 = icmp eq i32 %121, 2
  %725 = fcmp fast ole float %42, %688
  %726 = and i1 %724, %725
  %727 = or i1 %726, %723
  br i1 %722, label %728, label %834

; <label>:728                                     ; preds = %709
  %729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.f32 %729, 2
  %731 = extractvalue %dx.types.CBufRet.f32 %729, 3
  %732 = fmul fast float %730, %47
  %733 = fmul fast float %731, %48
  %734 = call float @dx.op.unary.f32(i32 7, float %732)  ; Saturate(value)
  %735 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %736 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %734, float %735, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = extractvalue %dx.types.ResRet.f32 %736, 1
  %739 = extractvalue %dx.types.ResRet.f32 %736, 2
  %740 = extractvalue %dx.types.ResRet.f32 %736, 3
  %741 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %734, float %735, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = extractvalue %dx.types.ResRet.f32 %741, 1
  %744 = extractvalue %dx.types.ResRet.f32 %741, 2
  %745 = extractvalue %dx.types.ResRet.f32 %741, 3
  %746 = call float @dx.op.binary.f32(i32 35, float %738, float %739)  ; FMax(a,b)
  %747 = call float @dx.op.binary.f32(i32 35, float %737, float %746)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 35, float %747, float %740)  ; FMax(a,b)
  %749 = call float @dx.op.binary.f32(i32 36, float %743, float %744)  ; FMin(a,b)
  %750 = call float @dx.op.binary.f32(i32 36, float %742, float %749)  ; FMin(a,b)
  %751 = call float @dx.op.binary.f32(i32 36, float %750, float %745)  ; FMin(a,b)
  %752 = fmul fast float %748, 2.550000e+02
  %753 = fadd fast float %752, 0x3F70101020000000
  %754 = fptoui float %753 to i32
  %755 = fmul fast float %751, 2.550000e+02
  %756 = fadd fast float %755, 0x3F70101020000000
  %757 = fptoui float %756 to i32
  %758 = icmp ult i32 %754, %757
  br i1 %758, label %759, label %810

; <label>:759                                     ; preds = %728
  %760 = fcmp fast ogt float %41, 9.843750e-01
  %761 = fadd fast float %42, -4.000000e+00
  %762 = select i1 %760, float -4.000000e+00, float %761
  %763 = call float @dx.op.binary.f32(i32 35, float %762, float 0.000000e+00)  ; FMax(a,b)
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 0
  %766 = fadd fast float %765, %763
  %767 = extractvalue %dx.types.CBufRet.f32 %764, 2
  %768 = fmul fast float %766, %767
  %769 = call float @dx.op.unary.f32(i32 23, float %768)  ; Log(value)
  %770 = extractvalue %dx.types.CBufRet.f32 %764, 3
  %771 = fmul fast float %770, %769
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 2
  %774 = fmul fast float %771, %773
  %775 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  %776 = uitofp i32 %754 to float
  %777 = uitofp i32 %757 to float
  %778 = fadd fast float %776, 5.000000e-01
  %779 = fadd fast float %777, 5.000000e-01
  %780 = fmul fast float %773, %778
  %781 = fmul fast float %773, %779
  %782 = fadd fast float %780, 0x3F0FFB4800000000
  %783 = fadd fast float %781, 0xBF0FFB4800000000
  %784 = call float @dx.op.binary.f32(i32 35, float %775, float %782)  ; FMax(a,b)
  %785 = call float @dx.op.binary.f32(i32 36, float %784, float %783)  ; FMin(a,b)
  %786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %787 = extractvalue %dx.types.CBufRet.f32 %786, 1
  %788 = extractvalue %dx.types.CBufRet.f32 %786, 2
  %789 = extractvalue %dx.types.CBufRet.f32 %786, 0
  %790 = fmul fast float %787, %785
  %791 = fadd fast float %789, %790
  %792 = fadd fast float %789, %788
  %793 = fsub fast float %787, %788
  %794 = fadd fast float %793, %789
  %795 = call float @dx.op.binary.f32(i32 35, float %791, float %792)  ; FMax(a,b)
  %796 = call float @dx.op.binary.f32(i32 36, float %795, float %794)  ; FMin(a,b)
  %797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %734, float %735, float %796, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %798 = extractvalue %dx.types.ResRet.f32 %797, 0
  %799 = extractvalue %dx.types.ResRet.f32 %797, 1
  %800 = extractvalue %dx.types.ResRet.f32 %797, 2
  %801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %734, float %735, float %796, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = extractvalue %dx.types.ResRet.f32 %801, 1
  %804 = extractvalue %dx.types.ResRet.f32 %801, 2
  %805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.f32 %805, 1
  %807 = fmul fast float %806, %802
  %808 = fmul fast float %806, %803
  %809 = fmul fast float %806, %804
  br label %810

; <label>:810                                     ; preds = %759, %728
  %811 = phi float [ %798, %759 ], [ 1.000000e+00, %728 ]
  %812 = phi float [ %799, %759 ], [ 1.000000e+00, %728 ]
  %813 = phi float [ %800, %759 ], [ 1.000000e+00, %728 ]
  %814 = phi float [ %807, %759 ], [ 0.000000e+00, %728 ]
  %815 = phi float [ %808, %759 ], [ 0.000000e+00, %728 ]
  %816 = phi float [ %809, %759 ], [ 0.000000e+00, %728 ]
  %817 = fmul fast float %814, %691
  %818 = fmul fast float %815, %691
  %819 = fmul fast float %816, %691
  %820 = call float @dx.op.dot3.f32(i32 55, float %811, float %812, float %813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %821 = call float @dx.op.dot3.f32(i32 55, float %817, float %818, float %819, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %822 = select i1 %105, float %820, float %811
  %823 = select i1 %105, float %820, float %812
  %824 = select i1 %105, float 1.000000e+00, float %813
  %825 = select i1 %105, float %821, float %817
  %826 = select i1 %105, float 0.000000e+00, float %818
  %827 = select i1 %105, float 0.000000e+00, float %819
  %828 = fmul fast float %822, %713
  %829 = fmul fast float %823, %716
  %830 = fmul fast float %824, %719
  %831 = fadd fast float %828, %825
  %832 = fadd fast float %829, %826
  %833 = fadd fast float %827, %830
  br label %834

; <label>:834                                     ; preds = %810, %709
  %835 = phi float [ %688, %810 ], [ %42, %709 ]
  %836 = phi float [ %831, %810 ], [ %713, %709 ]
  %837 = phi float [ %832, %810 ], [ %716, %709 ]
  %838 = phi float [ %833, %810 ], [ %719, %709 ]
  %839 = phi float [ %811, %810 ], [ 1.000000e+00, %709 ]
  br i1 %727, label %1135, label %840

; <label>:840                                     ; preds = %834
  %841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %842 = extractvalue %dx.types.ResRet.f32 %841, 0
  %843 = extractvalue %dx.types.ResRet.f32 %841, 1
  %844 = extractvalue %dx.types.ResRet.f32 %841, 2
  %845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = extractvalue %dx.types.ResRet.f32 %845, 1
  %848 = extractvalue %dx.types.ResRet.f32 %845, 2
  %849 = fmul fast float %842, %691
  %850 = fmul fast float %843, %691
  %851 = fmul fast float %844, %691
  %852 = fmul fast float %846, %839
  %853 = call float @dx.op.dot3.f32(i32 55, float %846, float %847, float %848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %854 = call float @dx.op.dot3.f32(i32 55, float %849, float %850, float %851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %855 = select i1 %105, float %853, float %846
  %856 = select i1 %105, float %853, float %847
  %857 = select i1 %105, float 1.000000e+00, float %848
  %858 = select i1 %105, float %854, float %849
  %859 = select i1 %105, float 0.000000e+00, float %850
  %860 = select i1 %105, float 0.000000e+00, float %851
  %861 = fmul fast float %855, %836
  %862 = fmul fast float %856, %837
  %863 = fmul fast float %857, %838
  %864 = fadd fast float %861, %858
  %865 = fadd fast float %862, %859
  %866 = fadd fast float %863, %860
  %867 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.i32 %867, 0
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %1135, label %870, !dx.controlflow.hints !68

; <label>:870                                     ; preds = %840
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 2
  %873 = extractvalue %dx.types.CBufRet.f32 %871, 3
  %874 = fmul fast float %872, %47
  %875 = fmul fast float %873, %48
  %876 = fmul fast float %874, 2.000000e+00
  %877 = fmul fast float %875, 2.000000e+00
  %878 = fsub fast float 1.000000e+00, %876
  %879 = fsub fast float 1.000000e+00, %877
  %880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.f32 %880, 0
  %882 = extractvalue %dx.types.CBufRet.f32 %880, 1
  %883 = extractvalue %dx.types.CBufRet.f32 %880, 2
  %884 = fmul fast float %878, %881
  %885 = fmul fast float %878, %882
  %886 = fmul fast float %878, %883
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 0
  %889 = extractvalue %dx.types.CBufRet.f32 %887, 1
  %890 = extractvalue %dx.types.CBufRet.f32 %887, 2
  %891 = fmul fast float %879, %888
  %892 = fmul fast float %879, %889
  %893 = fmul fast float %879, %890
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = extractvalue %dx.types.CBufRet.f32 %894, 2
  %898 = fadd fast float %891, %895
  %899 = fadd fast float %898, %884
  %900 = fadd fast float %892, %896
  %901 = fadd fast float %900, %885
  %902 = fadd fast float %893, %897
  %903 = fadd fast float %902, %886
  %904 = fmul fast float %899, %835
  %905 = fmul fast float %901, %835
  %906 = fmul fast float %903, %835
  %907 = fmul fast float %904, %904
  %908 = fmul fast float %905, %905
  %909 = fadd fast float %907, %908
  %910 = fmul fast float %906, %906
  %911 = fadd fast float %909, %910
  %912 = call float @dx.op.unary.f32(i32 24, float %911)  ; Sqrt(value)
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %915 = fsub fast float %912, %914
  %916 = extractvalue %dx.types.CBufRet.f32 %913, 2
  %917 = fmul fast float %915, %916
  %918 = call float @dx.op.unary.f32(i32 7, float %917)  ; Saturate(value)
  %919 = fadd fast float %918, -5.000000e-01
  %920 = fmul fast float %919, 2.000000e+00
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %923 = call float @dx.op.binary.f32(i32 36, float %922, float %920)  ; FMin(a,b)
  %924 = fsub fast float -0.000000e+00, %922
  %925 = fcmp fast ogt float %923, %924
  br i1 %925, label %926, label %1135, !dx.controlflow.hints !69

; <label>:926                                     ; preds = %870
  %927 = fmul fast float %923, 5.000000e-01
  %928 = fadd fast float %927, 5.000000e-01
  %929 = call float @dx.op.unary.f32(i32 22, float %928)  ; Frc(value)
  %930 = call float @dx.op.unary.f32(i32 27, float %929)  ; Round_ni(value)
  %931 = call float @dx.op.unary.f32(i32 22, float %929)  ; Frc(value)
  %932 = fmul fast float %931, 2.000000e+00
  %933 = fadd fast float %932, -1.000000e+00
  %934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %874, float %875, float %930, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %935 = extractvalue %dx.types.ResRet.f32 %934, 0
  %936 = extractvalue %dx.types.ResRet.f32 %934, 1
  %937 = extractvalue %dx.types.ResRet.f32 %934, 2
  %938 = extractvalue %dx.types.ResRet.f32 %934, 3
  %939 = fadd fast float %935, -5.000000e-01
  %940 = fadd fast float %937, -5.000000e-01
  %941 = fmul fast float %939, 0xBFD5555560000000
  %942 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %940, float %941)  ; FMad(a,b,c)
  %943 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %936, float 0.000000e+00)  ; FMad(a,b,c)
  %944 = fadd fast float %943, %938
  %945 = fmul fast float %939, -7.500000e-01
  %946 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %940, float %945)  ; FMad(a,b,c)
  %947 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %936, float 0.000000e+00)  ; FMad(a,b,c)
  %948 = fadd fast float %947, %938
  %949 = call float @dx.op.binary.f32(i32 35, float %942, float -1.000000e+00)  ; FMax(a,b)
  %950 = call float @dx.op.binary.f32(i32 35, float %944, float -1.000000e+00)  ; FMax(a,b)
  %951 = call float @dx.op.binary.f32(i32 35, float %946, float -1.000000e+00)  ; FMax(a,b)
  %952 = call float @dx.op.binary.f32(i32 35, float %948, float -1.000000e+00)  ; FMax(a,b)
  %953 = call float @dx.op.binary.f32(i32 36, float %949, float 1.000000e+00)  ; FMin(a,b)
  %954 = call float @dx.op.binary.f32(i32 36, float %950, float 1.000000e+00)  ; FMin(a,b)
  %955 = call float @dx.op.binary.f32(i32 36, float %951, float 1.000000e+00)  ; FMin(a,b)
  %956 = call float @dx.op.binary.f32(i32 36, float %952, float 1.000000e+00)  ; FMin(a,b)
  %957 = fcmp fast olt float %953, 0x3FEFFF8020000000
  br i1 %957, label %958, label %1073, !dx.controlflow.hints !70

; <label>:958                                     ; preds = %926
  %959 = extractvalue %dx.types.CBufRet.f32 %921, 3
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 0
  %962 = extractvalue %dx.types.CBufRet.f32 %960, 1
  %963 = extractvalue %dx.types.CBufRet.f32 %960, 2
  %964 = extractvalue %dx.types.CBufRet.f32 %960, 3
  %965 = fsub fast float %961, %953
  %966 = fsub fast float %962, %954
  %967 = fsub fast float %963, %955
  %968 = fsub fast float %964, %956
  %969 = fmul fast float %965, %959
  %970 = fmul fast float %966, %959
  %971 = fmul fast float %967, %959
  %972 = fmul fast float %968, %959
  %973 = fadd fast float %969, %953
  %974 = fadd fast float %970, %954
  %975 = fsub fast float -0.000000e+00, %974
  %976 = fadd fast float %971, %955
  %977 = fadd fast float %972, %956
  %978 = fmul fast float %973, %973
  %979 = fsub fast float %974, %978
  %980 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %979)  ; FMax(a,b)
  %981 = fdiv fast float 1.000000e+00, %980
  %982 = fmul fast float %974, %973
  %983 = fsub fast float %976, %982
  %984 = fsub fast float %933, %973
  %985 = fmul fast float %933, %933
  %986 = fsub fast float %985, %974
  %987 = fmul fast float %984, %981
  %988 = fmul fast float %987, %983
  %989 = fsub fast float %986, %988
  %990 = fmul fast float %974, %974
  %991 = fsub fast float %977, %990
  %992 = fmul fast float %983, %983
  %993 = fmul fast float %992, %981
  %994 = fsub fast float %991, %993
  %995 = fdiv fast float %989, %994
  %996 = fmul fast float %983, %995
  %997 = fsub fast float %984, %996
  %998 = fmul fast float %997, %981
  %999 = fmul fast float %998, %973
  %1000 = fsub fast float 1.000000e+00, %999
  %1001 = fmul fast float %974, %995
  %1002 = fsub fast float %1000, %1001
  %1003 = fmul fast float %998, %998
  %1004 = fmul fast float %995, 4.000000e+00
  %1005 = fmul fast float %1004, %1002
  %1006 = fsub fast float %1003, %1005
  %1007 = call float @dx.op.unary.f32(i32 24, float %1006)  ; Sqrt(value)
  %1008 = fcmp fast oge float %998, 0.000000e+00
  %1009 = fsub fast float -0.000000e+00, %1007
  %1010 = select i1 %1008, float %1009, float %1007
  %1011 = fsub fast float %1010, %998
  %1012 = fdiv fast float %1011, %995
  %1013 = fdiv fast float %1002, %1011
  %1014 = fmul fast float %1012, 5.000000e-01
  %1015 = fmul fast float %1013, 2.000000e+00
  %1016 = select i1 %1008, float %1014, float %1015
  %1017 = select i1 %1008, float %1015, float %1014
  %1018 = call float @dx.op.binary.f32(i32 35, float %1016, float %1017)  ; FMax(a,b)
  %1019 = call float @dx.op.binary.f32(i32 36, float %1016, float %1017)  ; FMin(a,b)
  %1020 = fcmp fast ogt float %933, %1019
  br i1 %1020, label %1021, label %1031

; <label>:1021                                    ; preds = %958
  %1022 = fsub fast float %933, %1019
  %1023 = fsub fast float %1018, %1019
  %1024 = fmul fast float %1022, %1023
  %1025 = fmul fast float %1018, %933
  %1026 = fadd fast float %1018, %933
  %1027 = fmul fast float %1026, %973
  %1028 = fadd fast float %1025, %974
  %1029 = fsub fast float %1028, %1027
  %1030 = fdiv fast float %1029, %1024
  br label %1031

; <label>:1031                                    ; preds = %1021, %958
  %1032 = phi float [ %1030, %1021 ], [ 0.000000e+00, %958 ]
  %1033 = fcmp fast ogt float %933, %1018
  %1034 = fsub fast float %933, %1018
  br i1 %1033, label %1035, label %1045

; <label>:1035                                    ; preds = %1031
  %1036 = fsub fast float %1018, %1019
  %1037 = fmul fast float %1036, %1034
  %1038 = fmul fast float %1019, %933
  %1039 = fadd fast float %1019, %933
  %1040 = fmul fast float %1039, %973
  %1041 = fsub fast float %975, %1038
  %1042 = fadd fast float %1041, %1040
  %1043 = fdiv fast float %1042, %1037
  %1044 = fadd fast float %1043, %1032
  br label %1045

; <label>:1045                                    ; preds = %1035, %1031
  %1046 = phi float [ %1044, %1035 ], [ %1032, %1031 ]
  %1047 = fsub fast float %933, %1019
  %1048 = fmul fast float %1047, %1034
  %1049 = fmul fast float %1019, %1018
  %1050 = fadd fast float %1019, %1018
  %1051 = fmul fast float %1050, %973
  %1052 = fadd fast float %1049, %974
  %1053 = fsub fast float %1052, %1051
  %1054 = fdiv fast float %1053, %1048
  %1055 = call float @dx.op.unary.f32(i32 7, float %1046)  ; Saturate(value)
  %1056 = fcmp fast oeq float %710, 0.000000e+00
  %1057 = extractvalue %dx.types.CBufRet.f32 %921, 0
  %1058 = fcmp fast oeq float %1057, 0.000000e+00
  %1059 = or i1 %1056, %1058
  %1060 = fmul fast float %1057, 2.000000e+00
  %1061 = fadd fast float %922, %923
  %1062 = fdiv fast float %1061, %1060
  %1063 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  %1064 = fmul fast float %1063, 2.000000e+00
  %1065 = fsub fast float 3.000000e+00, %1064
  %1066 = fmul fast float %1063, %1063
  %1067 = fmul fast float %1066, %1065
  %1068 = select i1 %1059, float 1.000000e+00, float %1067
  %1069 = fmul fast float %1054, %710
  %1070 = fadd fast float %1055, %1069
  %1071 = call float @dx.op.unary.f32(i32 7, float %1070)  ; Saturate(value)
  %1072 = fmul fast float %1068, %1071
  br label %1073

; <label>:1073                                    ; preds = %1045, %926
  %1074 = phi float [ %1072, %1045 ], [ 0.000000e+00, %926 ]
  %1075 = fsub fast float 1.000000e+00, %1074
  %1076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %874, float %875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.i32 %1078, 2
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1086, label %1081

; <label>:1081                                    ; preds = %1073
  %1082 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  %1083 = fadd fast float %1077, -1.000000e+00
  %1084 = fmul fast float %1082, %1083
  %1085 = fadd fast float %1084, 1.000000e+00
  br label %1086

; <label>:1086                                    ; preds = %1081, %1073
  %1087 = phi float [ %1085, %1081 ], [ %1075, %1073 ]
  %1088 = call float @dx.op.binary.f32(i32 35, float %1077, float %1087)  ; FMax(a,b)
  %1089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.i32 %1089, 2
  %1091 = and i32 %1090, 1
  %1092 = icmp eq i32 %1091, 0
  %1093 = fcmp fast une float %1088, 1.000000e+00
  %1094 = and i1 %1093, %1092
  br i1 %1094, label %1095, label %1114

; <label>:1095                                    ; preds = %1086
  %1096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %874, float %875, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.ResRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.ResRet.f32 %1096, 2
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 1
  %1102 = fmul fast float %1101, %1097
  %1103 = fmul fast float %1101, %1098
  %1104 = fmul fast float %1101, %1099
  %1105 = fcmp fast ogt float %1077, 0x3FEFFF2E40000000
  %1106 = fsub fast float 1.000000e+00, %1088
  %1107 = fsub fast float 1.000000e+00, %1077
  %1108 = fdiv fast float %1106, %1107
  %1109 = call float @dx.op.unary.f32(i32 7, float %1108)  ; Saturate(value)
  %1110 = select i1 %1105, float 0.000000e+00, float %1109
  %1111 = fmul fast float %1102, %1110
  %1112 = fmul fast float %1103, %1110
  %1113 = fmul fast float %1104, %1110
  br label %1114

; <label>:1114                                    ; preds = %1095, %1086
  %1115 = phi float [ 0.000000e+00, %1086 ], [ %1111, %1095 ]
  %1116 = phi float [ 0.000000e+00, %1086 ], [ %1112, %1095 ]
  %1117 = phi float [ 0.000000e+00, %1086 ], [ %1113, %1095 ]
  %1118 = fmul fast float %1115, %691
  %1119 = fmul fast float %1116, %691
  %1120 = fmul fast float %1117, %691
  %1121 = fmul fast float %1088, %852
  %1122 = call float @dx.op.dot3.f32(i32 55, float %1088, float %1088, float %1088, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1123 = call float @dx.op.dot3.f32(i32 55, float %1118, float %1119, float %1120, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1124 = select i1 %105, float %1122, float %1088
  %1125 = select i1 %105, float 1.000000e+00, float %1088
  %1126 = select i1 %105, float %1123, float %1118
  %1127 = select i1 %105, float 0.000000e+00, float %1119
  %1128 = select i1 %105, float 0.000000e+00, float %1120
  %1129 = fmul fast float %1124, %864
  %1130 = fmul fast float %1124, %865
  %1131 = fmul fast float %1125, %866
  %1132 = fadd fast float %1129, %1126
  %1133 = fadd fast float %1130, %1127
  %1134 = fadd fast float %1128, %1131
  br label %1135

; <label>:1135                                    ; preds = %1114, %870, %840, %834
  %1136 = phi float [ %836, %834 ], [ %864, %840 ], [ %1132, %1114 ], [ %864, %870 ]
  %1137 = phi float [ %837, %834 ], [ %865, %840 ], [ %1133, %1114 ], [ %865, %870 ]
  %1138 = phi float [ %838, %834 ], [ %866, %840 ], [ %1134, %1114 ], [ %866, %870 ]
  %1139 = phi float [ %839, %834 ], [ %852, %840 ], [ %1121, %1114 ], [ %852, %870 ]
  %1140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1141 = extractvalue %dx.types.CBufRet.f32 %1140, 2
  %1142 = extractvalue %dx.types.CBufRet.f32 %1140, 3
  %1143 = fmul fast float %1141, %47
  %1144 = fmul fast float %1142, %48
  %1145 = call float @dx.op.unary.f32(i32 7, float %1143)  ; Saturate(value)
  %1146 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  %1147 = select i1 %727, i32 2, i32 0
  %1148 = or i32 %1147, 1
  %1149 = uitofp i32 %1148 to float
  %1150 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1145, float %1146, float %1149, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1151 = extractvalue %dx.types.ResRet.f32 %1150, 0
  %1152 = extractvalue %dx.types.ResRet.f32 %1150, 1
  %1153 = extractvalue %dx.types.ResRet.f32 %1150, 2
  %1154 = extractvalue %dx.types.ResRet.f32 %1150, 3
  %1155 = add nuw nsw i32 %1147, 2
  %1156 = uitofp i32 %1155 to float
  %1157 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1145, float %1146, float %1156, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = extractvalue %dx.types.ResRet.f32 %1157, 1
  %1160 = extractvalue %dx.types.ResRet.f32 %1157, 2
  %1161 = extractvalue %dx.types.ResRet.f32 %1157, 3
  %1162 = call float @dx.op.binary.f32(i32 35, float %1152, float %1153)  ; FMax(a,b)
  %1163 = call float @dx.op.binary.f32(i32 35, float %1151, float %1162)  ; FMax(a,b)
  %1164 = call float @dx.op.binary.f32(i32 35, float %1163, float %1154)  ; FMax(a,b)
  %1165 = call float @dx.op.binary.f32(i32 36, float %1159, float %1160)  ; FMin(a,b)
  %1166 = call float @dx.op.binary.f32(i32 36, float %1158, float %1165)  ; FMin(a,b)
  %1167 = call float @dx.op.binary.f32(i32 36, float %1166, float %1161)  ; FMin(a,b)
  %1168 = fmul fast float %1164, 2.550000e+02
  %1169 = fadd fast float %1168, 0x3F70101020000000
  %1170 = fptoui float %1169 to i32
  %1171 = fmul fast float %1167, 2.550000e+02
  %1172 = fadd fast float %1171, 0x3F70101020000000
  %1173 = fptoui float %1172 to i32
  %1174 = icmp ult i32 %1170, %1173
  br i1 %1174, label %1175, label %1227

; <label>:1175                                    ; preds = %1135
  %1176 = fcmp fast ogt float %41, 9.843750e-01
  %1177 = fadd fast float %835, -4.000000e+00
  %1178 = select i1 %1176, float -4.000000e+00, float %1177
  %1179 = call float @dx.op.binary.f32(i32 35, float %1178, float 0.000000e+00)  ; FMax(a,b)
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1182 = fadd fast float %1181, %1179
  %1183 = extractvalue %dx.types.CBufRet.f32 %1180, 2
  %1184 = fmul fast float %1182, %1183
  %1185 = call float @dx.op.unary.f32(i32 23, float %1184)  ; Log(value)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1187 = fmul fast float %1186, %1185
  %1188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1188, 2
  %1190 = fmul fast float %1187, %1189
  %1191 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1192 = uitofp i32 %1170 to float
  %1193 = uitofp i32 %1173 to float
  %1194 = fadd fast float %1192, 5.000000e-01
  %1195 = fadd fast float %1193, 5.000000e-01
  %1196 = fmul fast float %1189, %1194
  %1197 = fmul fast float %1189, %1195
  %1198 = fadd fast float %1196, 0x3F0FFB4800000000
  %1199 = fadd fast float %1197, 0xBF0FFB4800000000
  %1200 = call float @dx.op.binary.f32(i32 35, float %1191, float %1198)  ; FMax(a,b)
  %1201 = call float @dx.op.binary.f32(i32 36, float %1200, float %1199)  ; FMin(a,b)
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 1
  %1204 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1205 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  %1206 = select i1 %727, float %1205, float 0.000000e+00
  %1207 = fmul fast float %1203, %1201
  %1208 = fadd fast float %1206, %1207
  %1209 = fadd fast float %1206, %1204
  %1210 = fsub fast float %1203, %1204
  %1211 = fadd fast float %1210, %1206
  %1212 = call float @dx.op.binary.f32(i32 35, float %1208, float %1209)  ; FMax(a,b)
  %1213 = call float @dx.op.binary.f32(i32 36, float %1212, float %1211)  ; FMin(a,b)
  %1214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1145, float %1146, float %1213, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.ResRet.f32 %1214, 1
  %1217 = extractvalue %dx.types.ResRet.f32 %1214, 2
  %1218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1145, float %1146, float %1213, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1224 = fmul fast float %1223, %1219
  %1225 = fmul fast float %1223, %1220
  %1226 = fmul fast float %1223, %1221
  br label %1227

; <label>:1227                                    ; preds = %1175, %1135
  %1228 = phi float [ %1215, %1175 ], [ 1.000000e+00, %1135 ]
  %1229 = phi float [ %1216, %1175 ], [ 1.000000e+00, %1135 ]
  %1230 = phi float [ %1217, %1175 ], [ 1.000000e+00, %1135 ]
  %1231 = phi float [ %1224, %1175 ], [ 0.000000e+00, %1135 ]
  %1232 = phi float [ %1225, %1175 ], [ 0.000000e+00, %1135 ]
  %1233 = phi float [ %1226, %1175 ], [ 0.000000e+00, %1135 ]
  %1234 = fmul fast float %1231, %691
  %1235 = fmul fast float %1232, %691
  %1236 = fmul fast float %1233, %691
  %1237 = fmul fast float %1228, %1139
  %1238 = call float @dx.op.dot3.f32(i32 55, float %1228, float %1229, float %1230, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1239 = call float @dx.op.dot3.f32(i32 55, float %1234, float %1235, float %1236, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1240 = select i1 %105, float %1238, float %1228
  %1241 = select i1 %105, float %1238, float %1229
  %1242 = select i1 %105, float 1.000000e+00, float %1230
  %1243 = select i1 %105, float %1239, float %1234
  %1244 = select i1 %105, float 0.000000e+00, float %1235
  %1245 = select i1 %105, float 0.000000e+00, float %1236
  %1246 = fmul fast float %1240, %1136
  %1247 = fmul fast float %1241, %1137
  %1248 = fmul fast float %1242, %1138
  %1249 = fadd fast float %1246, %1243
  %1250 = fadd fast float %1247, %1244
  %1251 = fadd fast float %1245, %1248
  %1252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.i32 %1252, 3
  %1254 = and i32 %1253, 3
  %1255 = icmp ne i32 %1254, 0
  %1256 = and i32 %1253, 4
  %1257 = icmp ne i32 %1256, 0
  %1258 = and i1 %1255, %1257
  %1259 = and i1 %105, %1258
  br i1 %1259, label %1260, label %1266

; <label>:1260                                    ; preds = %1227
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 1
  %1263 = fadd fast float %1237, -1.000000e+00
  %1264 = fmul fast float %1262, %1263
  %1265 = fadd fast float %1264, 1.000000e+00
  br label %1266

; <label>:1266                                    ; preds = %1260, %1227
  %1267 = phi float [ %1265, %1260 ], [ %1237, %1227 ]
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 0
  br i1 %105, label %1270, label %1292

; <label>:1270                                    ; preds = %1266
  %1271 = fadd fast float %1249, %1250
  %1272 = fmul fast float %1269, %1271
  %1273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1274 = extractvalue %dx.types.CBufRet.f32 %1273, 3
  %1275 = extractvalue %dx.types.CBufRet.f32 %696, 1
  %1276 = fsub fast float %699, %1275
  %1277 = extractvalue %dx.types.CBufRet.f32 %696, 2
  %1278 = fmul fast float %1276, %1277
  %1279 = call float @dx.op.unary.f32(i32 7, float %1278)  ; Saturate(value)
  %1280 = fsub fast float %1279, %1274
  %1281 = fmul fast float %1280, %1267
  %1282 = fadd fast float %1281, %1274
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 0
  %1285 = fsub fast float %1282, %1284
  %1286 = fmul fast float %1285, 1.000000e+01
  %1287 = call float @dx.op.unary.f32(i32 7, float %1286)  ; Saturate(value)
  %1288 = fsub fast float %672, %691
  %1289 = fmul fast float %1287, %1288
  %1290 = fadd fast float %1289, %691
  %1291 = fmul fast float %1290, %1282
  br label %1301

; <label>:1292                                    ; preds = %1266
  %1293 = fmul fast float %1269, %1249
  %1294 = fmul fast float %1269, %1250
  %1295 = fmul fast float %1269, %1251
  %1296 = call float @dx.op.binary.f32(i32 35, float %1294, float %1295)  ; FMax(a,b)
  %1297 = call float @dx.op.binary.f32(i32 35, float %1293, float %1296)  ; FMax(a,b)
  %1298 = call float @dx.op.binary.f32(i32 35, float %1297, float %691)  ; FMax(a,b)
  %1299 = fcmp fast ugt float %1298, 0x3F10000000000000
  br i1 %1299, label %1301, label %1300

; <label>:1300                                    ; preds = %1292
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1301

; <label>:1301                                    ; preds = %1300, %1292, %1270
  %1302 = phi float [ %1272, %1270 ], [ %1293, %1300 ], [ %1293, %1292 ]
  %1303 = phi float [ %1291, %1270 ], [ %1294, %1300 ], [ %1294, %1292 ]
  %1304 = phi float [ %1290, %1270 ], [ %1295, %1300 ], [ %1295, %1292 ]
  %1305 = phi float [ %1290, %1270 ], [ %691, %1300 ], [ %691, %1292 ]
  %1306 = fadd fast float %513, 0x3FE3C6EF40000000
  %1307 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1308 = call float @dx.op.unary.f32(i32 23, float %1302)  ; Log(value)
  %1309 = fadd fast float %1308, -7.000000e+00
  %1310 = call float @dx.op.unary.f32(i32 21, float %1309)  ; Exp(value)
  %1311 = fmul fast float %1307, 2.000000e+00
  %1312 = fadd fast float %1311, -1.000000e+00
  %1313 = fmul fast float %1310, %1312
  %1314 = fcmp fast ogt float %1302, 0.000000e+00
  %1315 = select i1 %1314, float %1313, float 0.000000e+00
  %1316 = fadd fast float %1315, %1302
  %1317 = fadd fast float %513, 0x3FF3C6EF40000000
  %1318 = call float @dx.op.unary.f32(i32 22, float %1317)  ; Frc(value)
  %1319 = call float @dx.op.unary.f32(i32 23, float %1303)  ; Log(value)
  %1320 = fadd fast float %1319, -7.000000e+00
  %1321 = call float @dx.op.unary.f32(i32 21, float %1320)  ; Exp(value)
  %1322 = fmul fast float %1318, 2.000000e+00
  %1323 = fadd fast float %1322, -1.000000e+00
  %1324 = fmul fast float %1321, %1323
  %1325 = fcmp fast ogt float %1303, 0.000000e+00
  %1326 = select i1 %1325, float %1324, float 0.000000e+00
  %1327 = fadd fast float %1326, %1303
  %1328 = fadd fast float %513, 0x3FFDAA66E0000000
  %1329 = call float @dx.op.unary.f32(i32 22, float %1328)  ; Frc(value)
  %1330 = call float @dx.op.unary.f32(i32 23, float %1304)  ; Log(value)
  %1331 = fadd fast float %1330, -6.000000e+00
  %1332 = call float @dx.op.unary.f32(i32 21, float %1331)  ; Exp(value)
  %1333 = fmul fast float %1329, 2.000000e+00
  %1334 = fadd fast float %1333, -1.000000e+00
  %1335 = fmul fast float %1332, %1334
  %1336 = fcmp fast ogt float %1304, 0.000000e+00
  %1337 = select i1 %1336, float %1335, float 0.000000e+00
  %1338 = fadd fast float %1337, %1304
  %1339 = select i1 %105, float %1303, float %1327
  %1340 = select i1 %105, float %1304, float %1338
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1341 = call float @dx.op.binary.f32(i32 36, float %1316, float 3.225500e+04)  ; FMin(a,b)
  %1342 = call float @dx.op.binary.f32(i32 36, float %1339, float 3.225500e+04)  ; FMin(a,b)
  %1343 = call float @dx.op.binary.f32(i32 36, float %1340, float 3.225500e+04)  ; FMin(a,b)
  %1344 = call float @dx.op.binary.f32(i32 36, float %1305, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1341)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1342)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1343)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1344)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1305)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1305)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1305)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1305)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25}
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
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!29 = !{!30, !31, !32, !33}
!30 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!34 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!35 = !{void ()* @ps_main, !"ps_main", !36, !4, !59}
!36 = !{!37, !55, null}
!37 = !{!38, !41, !42, !44, !47, !49, !51, !52, !54}
!38 = !{i32 0, !"SV_Position", i8 9, i8 3, !39, i8 4, i32 1, i8 4, i32 0, i8 0, !40}
!39 = !{i32 0}
!40 = !{i32 3, i32 15}
!41 = !{i32 1, !"COLOR", i8 9, i8 0, !39, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 3, i8 0, !46}
!45 = !{i32 3}
!46 = !{i32 3, i32 7}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 3, i32 1, i8 2, i32 4, i8 0, !43}
!48 = !{i32 5}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 5, i8 0, null}
!50 = !{i32 8}
!51 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !39, i8 1, i32 1, i8 4, i32 6, i8 0, !40}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 7, i8 0, !53}
!53 = !{i32 3, i32 5}
!54 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !39, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56, !57}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !39, i8 0, i32 1, i8 4, i32 0, i8 0, !40}
!57 = !{i32 1, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 1, i8 0, !40}
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

