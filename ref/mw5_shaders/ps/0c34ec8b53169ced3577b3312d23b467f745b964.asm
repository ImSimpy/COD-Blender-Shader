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
; shader hash: 7516bbd38b3b069c8198c5a5703eb7b6
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
  %167 = icmp eq i32 %164, 0
  br i1 %167, label %187, label %168, !dx.controlflow.hints !60

; <label>:168                                     ; preds = %161
  %169 = add i32 %122, 64
  %170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = fadd fast float %171, 1.000000e+00
  %173 = fmul fast float %172, %38
  %174 = fsub fast float %173, %171
  %175 = fsub fast float %172, %174
  %176 = call float @dx.op.unary.f32(i32 7, float %175)  ; Saturate(value)
  %177 = fsub fast float 1.000000e+00, %173
  %178 = call float @dx.op.unary.f32(i32 7, float %177)  ; Saturate(value)
  %179 = fsub fast float %176, %178
  %180 = fsub fast float %166, %178
  %181 = fdiv fast float %180, %179
  %182 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %183 = fmul fast float %182, 2.000000e+00
  %184 = fsub fast float 3.000000e+00, %183
  %185 = fmul fast float %182, %182
  %186 = fmul fast float %185, %184
  br label %187

; <label>:187                                     ; preds = %168, %161
  %188 = phi float [ %186, %168 ], [ %166, %161 ]
  %189 = fcmp fast ogt float %188, 0.000000e+00
  br i1 %189, label %191, label %190

; <label>:190                                     ; preds = %187
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %191

; <label>:191                                     ; preds = %190, %187
  %192 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %193 = fmul fast float %47, 5.000000e-01
  %194 = fmul fast float %48, 5.000000e-01
  %195 = fptosi float %193 to i32
  %196 = fptosi float %194 to i32
  %197 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %195, i32 %196, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = lshr i32 %198, 18
  %200 = uitofp i32 %199 to float
  %201 = fmul fast float %200, 0x3F4C00EBA0000000
  %202 = call float @dx.op.unary.f32(i32 21, float %201)  ; Exp(value)
  %203 = fadd fast float %202, -1.000000e+00
  %204 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %205 = extractvalue %dx.types.Dimensions %204, 0
  %206 = sitofp i32 %205 to float
  %207 = extractvalue %dx.types.Dimensions %204, 1
  %208 = sitofp i32 %207 to float
  %209 = fcmp fast oge float %193, %206
  %210 = fcmp fast oge float %194, %208
  %211 = or i1 %209, %210
  %212 = select i1 %211, float 0x4197782600000000, float %203
  %213 = fsub fast float %212, %42
  %214 = fcmp fast ogt float %213, 0.000000e+00
  %215 = and i32 %121, -2
  %216 = icmp eq i32 %215, 2
  %217 = and i1 %216, %214
  %218 = xor i1 %214, true
  %219 = icmp eq i32 %121, 1
  %220 = and i1 %219, %218
  %221 = or i1 %217, %220
  %222 = and i32 %125, 262144
  %223 = icmp ne i32 %222, 0
  %224 = and i1 %223, %221
  %225 = xor i1 %221, true
  %226 = and i32 %125, 131072
  %227 = icmp ne i32 %226, 0
  %228 = and i1 %227, %225
  %229 = or i1 %224, %228
  br i1 %229, label %230, label %231

; <label>:230                                     ; preds = %191
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %231

; <label>:231                                     ; preds = %230, %191
  %232 = and i32 %125, 32
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %483, label %234, !dx.controlflow.hints !61

; <label>:234                                     ; preds = %231
  %235 = add i32 %122, 80
  %236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = extractvalue %dx.types.ResRet.f32 %236, 2
  %240 = extractvalue %dx.types.ResRet.f32 %236, 3
  %241 = add i32 %122, 96
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = add i32 %122, 112
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  %251 = extractvalue %dx.types.ResRet.f32 %247, 3
  %252 = add i32 %122, 128
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = extractvalue %dx.types.ResRet.f32 %253, 3
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 4096
  %261 = icmp ne i32 %260, 0
  %262 = fcmp fast une float %245, 0.000000e+00
  %263 = and i32 %259, 64
  %264 = icmp ne i32 %263, 0
  %265 = and i32 %259, 128
  %266 = icmp eq i32 %265, 0
  %267 = and i32 %259, 2048
  %268 = icmp eq i32 %267, 0
  %269 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %270 = extractvalue %dx.types.Dimensions %269, 0
  %271 = sitofp i32 %270 to float
  %272 = extractvalue %dx.types.Dimensions %269, 1
  %273 = sitofp i32 %272 to float
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 2
  %276 = extractvalue %dx.types.CBufRet.f32 %274, 3
  %277 = fmul fast float %275, %47
  %278 = fmul fast float %276, %48
  %279 = fmul fast float %277, %271
  %280 = fmul fast float %278, %273
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %283 = fsub fast float -0.000000e+00, %282
  %284 = fptoui float %283 to i32
  %285 = fptoui float %279 to i32
  %286 = fptoui float %280 to i32
  %287 = and i32 %284, 31
  %288 = lshr i32 %285, %287
  %289 = lshr i32 %286, %287
  %290 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %284, i32 %288, i32 %289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = fcmp fast ogt float %291, -1.000000e+00
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %295 = select i1 %292, float %294, float 1.000000e+00
  %296 = fadd fast float %291, 1.000000e+00
  %297 = fmul fast float %295, %296
  %298 = call float @dx.op.unary.f32(i32 6, float %297)  ; FAbs(value)
  %299 = extractvalue %dx.types.CBufRet.f32 %293, 3
  %300 = fcmp fast oge float %298, %299
  %301 = select i1 %300, float 0x4197782600000000, float %298
  br i1 %268, label %379, label %302, !dx.controlflow.hints !62

; <label>:302                                     ; preds = %234
  %303 = fmul fast float %52, %275
  %304 = fmul fast float %54, %276
  %305 = fsub fast float 1.000000e+00, %303
  %306 = fsub fast float 1.000000e+00, %304
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %309 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %310 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %311 = fmul fast float %305, %308
  %312 = fmul fast float %305, %309
  %313 = fmul fast float %305, %310
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %317 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %318 = fmul fast float %306, %315
  %319 = fmul fast float %306, %316
  %320 = fmul fast float %306, %317
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %323 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %324 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %325 = fadd fast float %318, %322
  %326 = fadd fast float %325, %311
  %327 = fadd fast float %319, %323
  %328 = fadd fast float %327, %312
  %329 = fadd fast float %320, %324
  %330 = fadd fast float %329, %313
  %331 = fmul fast float %326, %301
  %332 = fmul fast float %328, %301
  %333 = fmul fast float %330, %301
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %338 = fsub fast float %335, %24
  %339 = fadd fast float %338, %331
  %340 = fsub fast float %336, %25
  %341 = fadd fast float %340, %332
  %342 = fsub fast float %337, %26
  %343 = fadd fast float %342, %333
  %344 = fmul fast float %27, %27
  %345 = call float @dx.op.dot3.f32(i32 55, float %339, float %341, float %343, float %339, float %341, float %343)  ; Dot3(ax,ay,az,bx,by,bz)
  %346 = fsub fast float %344, %345
  %347 = fmul fast float %244, %344
  %348 = fmul fast float %243, %344
  %349 = fcmp fast olt float %346, %347
  %350 = fcmp fast ogt float %346, %348
  %351 = or i1 %349, %350
  %352 = select i1 %351, float 0.000000e+00, float %346
  %353 = fsub fast float %243, %244
  %354 = fmul fast float %353, %344
  %355 = fsub fast float %352, %347
  %356 = fdiv fast float %355, %354
  %357 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  %358 = fmul fast float %357, 2.000000e+00
  %359 = fsub fast float 3.000000e+00, %358
  %360 = fmul fast float %357, %357
  %361 = fmul fast float %360, %359
  %362 = fmul fast float %248, %35
  %363 = fmul fast float %249, %36
  %364 = fmul fast float %250, %37
  %365 = fsub fast float %362, %254
  %366 = fsub fast float %363, %255
  %367 = fsub fast float %364, %256
  %368 = fsub fast float %251, %257
  %369 = fmul fast float %361, %365
  %370 = fmul fast float %361, %366
  %371 = fmul fast float %361, %367
  %372 = fmul fast float %361, %368
  %373 = fadd fast float %369, %254
  %374 = fadd fast float %370, %255
  %375 = fadd fast float %371, %256
  %376 = fadd fast float %372, %257
  %377 = fmul fast float %237, %237
  %378 = fmul fast float %377, %352
  br label %474

; <label>:379                                     ; preds = %234
  %380 = and i32 %259, 256
  %381 = icmp eq i32 %380, 0
  %382 = fsub fast float %301, %42
  br i1 %381, label %431, label %383

; <label>:383                                     ; preds = %379
  %384 = fadd fast float %243, %42
  %385 = fcmp fast olt float %301, %42
  %386 = fcmp fast ogt float %301, %384
  %387 = or i1 %385, %386
  %388 = select i1 %387, float 0.000000e+00, float %382
  %389 = call float @dx.op.unary.f32(i32 83, float %301)  ; DerivCoarseX(value)
  %390 = call float @dx.op.unary.f32(i32 84, float %301)  ; DerivCoarseY(value)
  %391 = fmul fast float %389, %389
  %392 = fmul fast float %390, %390
  %393 = fadd fast float %392, %391
  %394 = call float @dx.op.unary.f32(i32 24, float %393)  ; Sqrt(value)
  %395 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %396 = fmul fast float %395, %394
  %397 = call float @dx.op.unary.f32(i32 7, float %396)  ; Saturate(value)
  %398 = fmul fast float %397, %244
  %399 = fdiv fast float %382, %398
  %400 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %401 = fmul fast float %400, 2.000000e+00
  %402 = fsub fast float 3.000000e+00, %401
  %403 = fmul fast float %400, %400
  %404 = fmul fast float %403, %402
  %405 = fsub fast float %301, %384
  %406 = fadd fast float %405, %398
  %407 = fdiv fast float %406, %398
  %408 = call float @dx.op.unary.f32(i32 7, float %407)  ; Saturate(value)
  %409 = fmul fast float %408, 2.000000e+00
  %410 = fsub fast float 3.000000e+00, %409
  %411 = fmul fast float %408, %408
  %412 = fmul fast float %411, %410
  %413 = fsub fast float %404, %412
  %414 = fmul fast float %248, %35
  %415 = fmul fast float %249, %36
  %416 = fmul fast float %250, %37
  %417 = fsub fast float %414, %254
  %418 = fsub fast float %415, %255
  %419 = fsub fast float %416, %256
  %420 = fsub fast float %251, %257
  %421 = fmul fast float %413, %417
  %422 = fmul fast float %413, %418
  %423 = fmul fast float %413, %419
  %424 = fmul fast float %413, %420
  %425 = fadd fast float %421, %254
  %426 = fadd fast float %422, %255
  %427 = fadd fast float %423, %256
  %428 = fadd fast float %424, %257
  %429 = fmul fast float %388, %237
  %430 = call float @dx.op.unary.f32(i32 6, float %429)  ; FAbs(value)
  br label %474

; <label>:431                                     ; preds = %379
  br i1 %262, label %432, label %445

; <label>:432                                     ; preds = %431
  %433 = fdiv fast float 5.000000e+01, %27
  %434 = select i1 %264, float %433, float 1.000000e+00
  %435 = fmul fast float %434, %237
  %436 = fmul fast float %33, 2.000000e+00
  %437 = fmul fast float %34, 2.000000e+00
  %438 = fadd fast float %436, -1.000000e+00
  %439 = fadd fast float %437, -1.000000e+00
  %440 = call float @dx.op.dot2.f32(i32 54, float %438, float %439, float %438, float %439)  ; Dot2(ax,ay,bx,by)
  %441 = fmul fast float %245, %27
  %442 = fmul fast float %441, %440
  %443 = fsub fast float %382, %442
  %444 = fmul fast float %435, %443
  br label %474

; <label>:445                                     ; preds = %431
  br i1 %266, label %466, label %446

; <label>:446                                     ; preds = %445
  %447 = fmul fast float %27, 0x3F947AE140000000
  %448 = select i1 %264, float %447, float 1.000000e+00
  %449 = fdiv fast float 1.000000e+00, %448
  %450 = fmul fast float %448, %238
  %451 = fmul fast float %448, %239
  %452 = fmul fast float %449, %240
  %453 = call float @dx.op.unary.f32(i32 6, float %382)  ; FAbs(value)
  %454 = fcmp fast olt float %453, %450
  br i1 %454, label %455, label %459, !dx.controlflow.hints !63

; <label>:455                                     ; preds = %446
  %456 = fmul fast float %449, %237
  %457 = fmul fast float %456, %453
  %458 = call float @dx.op.unary.f32(i32 6, float %457)  ; FAbs(value)
  br label %474

; <label>:459                                     ; preds = %446
  %460 = fcmp fast ogt float %453, %451
  br i1 %460, label %461, label %474

; <label>:461                                     ; preds = %459
  %462 = fsub fast float %453, %451
  %463 = fmul fast float %452, %462
  %464 = call float @dx.op.unary.f32(i32 6, float %463)  ; FAbs(value)
  %465 = fsub fast float 1.000000e+00, %464
  br label %474

; <label>:466                                     ; preds = %445
  %467 = fdiv fast float 5.000000e+01, %27
  %468 = select i1 %264, float %467, float 1.000000e+00
  %469 = fmul fast float %468, %237
  %470 = call float @dx.op.unary.f32(i32 6, float %213)  ; FAbs(value)
  %471 = select i1 %261, float %470, float 0x47EFFFFFE0000000
  %472 = call float @dx.op.binary.f32(i32 36, float %382, float %471)  ; FMin(a,b)
  %473 = fmul fast float %469, %472
  br label %474

; <label>:474                                     ; preds = %466, %461, %459, %455, %432, %383, %302
  %475 = phi float [ %378, %302 ], [ %430, %383 ], [ %444, %432 ], [ %473, %466 ], [ %458, %455 ], [ %465, %461 ], [ %453, %459 ]
  %476 = phi float [ %373, %302 ], [ %425, %383 ], [ %35, %432 ], [ %35, %466 ], [ %35, %455 ], [ %35, %461 ], [ %35, %459 ]
  %477 = phi float [ %374, %302 ], [ %426, %383 ], [ %36, %432 ], [ %36, %466 ], [ %36, %455 ], [ %36, %461 ], [ %36, %459 ]
  %478 = phi float [ %375, %302 ], [ %427, %383 ], [ %37, %432 ], [ %37, %466 ], [ %37, %455 ], [ %37, %461 ], [ %37, %459 ]
  %479 = phi float [ %376, %302 ], [ %428, %383 ], [ 1.000000e+00, %432 ], [ 1.000000e+00, %466 ], [ 1.000000e+00, %455 ], [ 1.000000e+00, %461 ], [ 1.000000e+00, %459 ]
  %480 = call float @dx.op.unary.f32(i32 7, float %475)  ; Saturate(value)
  %481 = fmul fast float %479, %192
  %482 = fmul fast float %481, %480
  br label %483

; <label>:483                                     ; preds = %474, %231
  %484 = phi float [ %476, %474 ], [ %35, %231 ]
  %485 = phi float [ %477, %474 ], [ %36, %231 ]
  %486 = phi float [ %478, %474 ], [ %37, %231 ]
  %487 = phi float [ %482, %474 ], [ %192, %231 ]
  %488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %489 = extractvalue %dx.types.CBufRet.f32 %488, 2
  %490 = fptosi float %42 to i32
  %491 = sitofp i32 %490 to float
  %492 = fadd fast float %489, %491
  %493 = fmul fast float %492, 0x3FE3C6EF40000000
  %494 = frem fast float %47, 2.560000e+02
  %495 = frem fast float %48, 2.560000e+02
  %496 = fptoui float %494 to i32
  %497 = fptoui float %495 to i32
  %498 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %496, i32 %497, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = fadd fast float %499, %493
  %501 = call float @dx.op.unary.f32(i32 22, float %500)  ; Frc(value)
  %502 = and i32 %125, 1
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %560, label %504, !dx.controlflow.hints !64

; <label>:504                                     ; preds = %483
  %505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 2
  %507 = extractvalue %dx.types.ResRet.f32 %505, 3
  %508 = add i32 %122, 16
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = add i32 %122, 32
  %514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = extractvalue %dx.types.ResRet.f32 %514, 2
  %518 = and i32 %125, 2
  %519 = icmp eq i32 %518, 0
  %520 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = call float @dx.op.unary.f32(i32 25, float %520)  ; Rsqrt(value)
  %522 = fmul fast float %521, %30
  %523 = fmul fast float %521, %31
  %524 = fmul fast float %521, %32
  %525 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %526 = call float @dx.op.unary.f32(i32 25, float %525)  ; Rsqrt(value)
  %527 = fmul fast float %526, %82
  %528 = fmul fast float %526, %83
  %529 = fmul fast float %526, %84
  %530 = call float @dx.op.dot3.f32(i32 55, float %527, float %528, float %529, float %522, float %523, float %524)  ; Dot3(ax,ay,az,bx,by,bz)
  %531 = fmul fast float %530, %530
  %532 = fmul fast float %531, %506
  %533 = fadd fast float %532, %507
  %534 = call float @dx.op.unary.f32(i32 7, float %533)  ; Saturate(value)
  br i1 %519, label %535, label %545, !dx.controlflow.hints !65

; <label>:535                                     ; preds = %504
  %536 = extractvalue %dx.types.ResRet.f32 %505, 1
  %537 = extractvalue %dx.types.ResRet.f32 %505, 0
  %538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.f32 %538, 3
  %540 = fmul fast float %539, %525
  %541 = fsub fast float %537, %540
  %542 = fmul fast float %541, %536
  %543 = call float @dx.op.unary.f32(i32 7, float %542)  ; Saturate(value)
  %544 = fmul fast float %543, %534
  br label %545

; <label>:545                                     ; preds = %535, %504
  %546 = phi float [ %544, %535 ], [ %534, %504 ]
  %547 = fsub fast float %510, %515
  %548 = fsub fast float %511, %516
  %549 = fsub fast float %512, %517
  %550 = fmul fast float %546, %547
  %551 = fmul fast float %546, %548
  %552 = fmul fast float %546, %549
  %553 = fadd fast float %550, %515
  %554 = fadd fast float %551, %516
  %555 = fadd fast float %552, %517
  %556 = fmul fast float %553, %484
  %557 = fmul fast float %554, %485
  %558 = fmul fast float %555, %486
  %559 = fmul fast float %546, %487
  br label %560

; <label>:560                                     ; preds = %545, %483
  %561 = phi float [ %556, %545 ], [ %484, %483 ]
  %562 = phi float [ %557, %545 ], [ %485, %483 ]
  %563 = phi float [ %558, %545 ], [ %486, %483 ]
  %564 = phi float [ %559, %545 ], [ %487, %483 ]
  %565 = add i32 %23, 72
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = add i32 %567, 0
  %569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %569, %dx.types.Handle %43, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = extractvalue %dx.types.ResRet.f32 %570, 1
  %573 = extractvalue %dx.types.ResRet.f32 %570, 2
  %574 = add i32 %23, 56
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = and i32 %576, 255
  %578 = uitofp i32 %577 to float
  %579 = fmul fast float %578, 0x3F70101020000000
  %580 = lshr i32 %576, 8
  %581 = and i32 %580, 255
  %582 = uitofp i32 %581 to float
  %583 = fmul fast float %582, 0x3F70101020000000
  %584 = lshr i32 %576, 16
  %585 = and i32 %584, 255
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %586, 0x3F70101020000000
  %588 = add i32 %23, 40
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = fmul fast float %593, %593
  %595 = add i32 %23, 76
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = add i32 %597, 0
  %599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %599, %dx.types.Handle %44, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = fmul fast float %594, %601
  %603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = extractvalue %dx.types.ResRet.f32 %603, 1
  %606 = extractvalue %dx.types.ResRet.f32 %603, 2
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 1
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 0
  %611 = fmul fast float %571, %561
  %612 = fmul fast float %579, %579
  %613 = fmul fast float %612, %611
  %614 = fmul fast float %613, %610
  %615 = fmul fast float %572, %562
  %616 = fmul fast float %583, %583
  %617 = fmul fast float %616, %615
  %618 = fmul fast float %617, %610
  %619 = fmul fast float %573, %563
  %620 = fmul fast float %587, %587
  %621 = fmul fast float %620, %619
  %622 = fmul fast float %621, %610
  %623 = call float @dx.op.dot3.f32(i32 55, float %614, float %618, float %622, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %624 = add i32 %23, 32
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = and i32 %626, 255
  %628 = uitofp i32 %627 to float
  %629 = lshr i32 %626, 8
  %630 = and i32 %629, 255
  %631 = uitofp i32 %630 to float
  %632 = fmul fast float %631, %623
  %633 = fadd fast float %632, %628
  %634 = fmul fast float %633, 0x3F70101020000000
  %635 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %636 = and i32 %125, 8192
  %637 = icmp eq i32 %636, 0
  %638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.f32 %638, 0
  br i1 %637, label %646, label %640, !dx.controlflow.hints !66

; <label>:640                                     ; preds = %560
  %641 = add i32 %122, 176
  %642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = fcmp fast oge float %643, 0.000000e+00
  %645 = select i1 %644, float %643, float %639
  br label %646

; <label>:646                                     ; preds = %640, %560
  %647 = phi float [ %645, %640 ], [ %639, %560 ]
  %648 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %195, i32 %196, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = lshr i32 %649, 18
  %651 = uitofp i32 %650 to float
  %652 = fmul fast float %651, 0x3F4C00EBA0000000
  %653 = call float @dx.op.unary.f32(i32 21, float %652)  ; Exp(value)
  %654 = fadd fast float %653, -1.000000e+00
  %655 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %656 = extractvalue %dx.types.Dimensions %655, 0
  %657 = sitofp i32 %656 to float
  %658 = extractvalue %dx.types.Dimensions %655, 1
  %659 = sitofp i32 %658 to float
  %660 = fcmp fast oge float %193, %657
  %661 = fcmp fast oge float %194, %659
  %662 = or i1 %660, %661
  %663 = select i1 %662, float 0x4197782600000000, float %654
  %664 = fadd fast float %602, -1.000000e+00
  %665 = fmul fast float %664, %564
  %666 = fadd fast float %665, 1.000000e+00
  %667 = call float @dx.op.dot3.f32(i32 55, float %666, float %666, float %666, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %668 = fsub fast float 1.000000e+00, %667
  %669 = fmul fast float %647, %635
  %670 = fsub fast float 1.000000e+00, %635
  %671 = call float @dx.op.unary.f32(i32 7, float %670)  ; Saturate(value)
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 3
  %674 = fmul fast float %673, %671
  %675 = fadd fast float %674, %669
  %676 = and i32 %125, 2097152
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %682, label %678, !dx.controlflow.hints !67

; <label>:678                                     ; preds = %646
  %679 = add i32 %122, 192
  %680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  br label %685

; <label>:682                                     ; preds = %646
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 3
  br label %685

; <label>:685                                     ; preds = %682, %678
  %686 = phi float [ %681, %678 ], [ %684, %682 ]
  %687 = fmul fast float %604, %564
  %688 = fmul fast float %687, %608
  %689 = fmul fast float %688, %614
  %690 = fmul fast float %605, %564
  %691 = fmul fast float %690, %608
  %692 = fmul fast float %691, %618
  %693 = fmul fast float %606, %564
  %694 = fmul fast float %693, %608
  %695 = fmul fast float %694, %622
  %696 = icmp eq i32 %121, 3
  %697 = fcmp fast ogt float %42, %663
  %698 = and i1 %219, %697
  %699 = or i1 %696, %698
  %700 = icmp eq i32 %121, 2
  %701 = fcmp fast ole float %42, %663
  %702 = and i1 %700, %701
  %703 = or i1 %702, %699
  br i1 %698, label %704, label %810

; <label>:704                                     ; preds = %685
  %705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.f32 %705, 2
  %707 = extractvalue %dx.types.CBufRet.f32 %705, 3
  %708 = fmul fast float %706, %47
  %709 = fmul fast float %707, %48
  %710 = call float @dx.op.unary.f32(i32 7, float %708)  ; Saturate(value)
  %711 = call float @dx.op.unary.f32(i32 7, float %709)  ; Saturate(value)
  %712 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %710, float %711, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = extractvalue %dx.types.ResRet.f32 %712, 1
  %715 = extractvalue %dx.types.ResRet.f32 %712, 2
  %716 = extractvalue %dx.types.ResRet.f32 %712, 3
  %717 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %710, float %711, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %718 = extractvalue %dx.types.ResRet.f32 %717, 0
  %719 = extractvalue %dx.types.ResRet.f32 %717, 1
  %720 = extractvalue %dx.types.ResRet.f32 %717, 2
  %721 = extractvalue %dx.types.ResRet.f32 %717, 3
  %722 = call float @dx.op.binary.f32(i32 35, float %714, float %715)  ; FMax(a,b)
  %723 = call float @dx.op.binary.f32(i32 35, float %713, float %722)  ; FMax(a,b)
  %724 = call float @dx.op.binary.f32(i32 35, float %723, float %716)  ; FMax(a,b)
  %725 = call float @dx.op.binary.f32(i32 36, float %719, float %720)  ; FMin(a,b)
  %726 = call float @dx.op.binary.f32(i32 36, float %718, float %725)  ; FMin(a,b)
  %727 = call float @dx.op.binary.f32(i32 36, float %726, float %721)  ; FMin(a,b)
  %728 = fmul fast float %724, 2.550000e+02
  %729 = fadd fast float %728, 0x3F70101020000000
  %730 = fptoui float %729 to i32
  %731 = fmul fast float %727, 2.550000e+02
  %732 = fadd fast float %731, 0x3F70101020000000
  %733 = fptoui float %732 to i32
  %734 = icmp ult i32 %730, %733
  br i1 %734, label %735, label %786

; <label>:735                                     ; preds = %704
  %736 = fcmp fast ogt float %41, 9.843750e-01
  %737 = fadd fast float %42, -4.000000e+00
  %738 = select i1 %736, float -4.000000e+00, float %737
  %739 = call float @dx.op.binary.f32(i32 35, float %738, float 0.000000e+00)  ; FMax(a,b)
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 0
  %742 = fadd fast float %741, %739
  %743 = extractvalue %dx.types.CBufRet.f32 %740, 2
  %744 = fmul fast float %742, %743
  %745 = call float @dx.op.unary.f32(i32 23, float %744)  ; Log(value)
  %746 = extractvalue %dx.types.CBufRet.f32 %740, 3
  %747 = fmul fast float %746, %745
  %748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %749 = extractvalue %dx.types.CBufRet.f32 %748, 2
  %750 = fmul fast float %747, %749
  %751 = call float @dx.op.unary.f32(i32 7, float %750)  ; Saturate(value)
  %752 = uitofp i32 %730 to float
  %753 = uitofp i32 %733 to float
  %754 = fadd fast float %752, 5.000000e-01
  %755 = fadd fast float %753, 5.000000e-01
  %756 = fmul fast float %749, %754
  %757 = fmul fast float %749, %755
  %758 = fadd fast float %756, 0x3F0FFB4800000000
  %759 = fadd fast float %757, 0xBF0FFB4800000000
  %760 = call float @dx.op.binary.f32(i32 35, float %751, float %758)  ; FMax(a,b)
  %761 = call float @dx.op.binary.f32(i32 36, float %760, float %759)  ; FMin(a,b)
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 1
  %764 = extractvalue %dx.types.CBufRet.f32 %762, 2
  %765 = extractvalue %dx.types.CBufRet.f32 %762, 0
  %766 = fmul fast float %763, %761
  %767 = fadd fast float %765, %766
  %768 = fadd fast float %765, %764
  %769 = fsub fast float %763, %764
  %770 = fadd fast float %769, %765
  %771 = call float @dx.op.binary.f32(i32 35, float %767, float %768)  ; FMax(a,b)
  %772 = call float @dx.op.binary.f32(i32 36, float %771, float %770)  ; FMin(a,b)
  %773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %710, float %711, float %772, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  %775 = extractvalue %dx.types.ResRet.f32 %773, 1
  %776 = extractvalue %dx.types.ResRet.f32 %773, 2
  %777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %710, float %711, float %772, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 1
  %783 = fmul fast float %782, %778
  %784 = fmul fast float %782, %779
  %785 = fmul fast float %782, %780
  br label %786

; <label>:786                                     ; preds = %735, %704
  %787 = phi float [ %774, %735 ], [ 1.000000e+00, %704 ]
  %788 = phi float [ %775, %735 ], [ 1.000000e+00, %704 ]
  %789 = phi float [ %776, %735 ], [ 1.000000e+00, %704 ]
  %790 = phi float [ %783, %735 ], [ 0.000000e+00, %704 ]
  %791 = phi float [ %784, %735 ], [ 0.000000e+00, %704 ]
  %792 = phi float [ %785, %735 ], [ 0.000000e+00, %704 ]
  %793 = fmul fast float %790, %668
  %794 = fmul fast float %791, %668
  %795 = fmul fast float %792, %668
  %796 = call float @dx.op.dot3.f32(i32 55, float %787, float %788, float %789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %797 = call float @dx.op.dot3.f32(i32 55, float %793, float %794, float %795, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %798 = select i1 %105, float %796, float %787
  %799 = select i1 %105, float %796, float %788
  %800 = select i1 %105, float 1.000000e+00, float %789
  %801 = select i1 %105, float %797, float %793
  %802 = select i1 %105, float 0.000000e+00, float %794
  %803 = select i1 %105, float 0.000000e+00, float %795
  %804 = fmul fast float %798, %689
  %805 = fmul fast float %799, %692
  %806 = fmul fast float %800, %695
  %807 = fadd fast float %804, %801
  %808 = fadd fast float %805, %802
  %809 = fadd fast float %803, %806
  br label %810

; <label>:810                                     ; preds = %786, %685
  %811 = phi float [ %663, %786 ], [ %42, %685 ]
  %812 = phi float [ %807, %786 ], [ %689, %685 ]
  %813 = phi float [ %808, %786 ], [ %692, %685 ]
  %814 = phi float [ %809, %786 ], [ %695, %685 ]
  %815 = phi float [ %787, %786 ], [ 1.000000e+00, %685 ]
  br i1 %703, label %1111, label %816

; <label>:816                                     ; preds = %810
  %817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 0
  %819 = extractvalue %dx.types.ResRet.f32 %817, 1
  %820 = extractvalue %dx.types.ResRet.f32 %817, 2
  %821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  %823 = extractvalue %dx.types.ResRet.f32 %821, 1
  %824 = extractvalue %dx.types.ResRet.f32 %821, 2
  %825 = fmul fast float %818, %668
  %826 = fmul fast float %819, %668
  %827 = fmul fast float %820, %668
  %828 = fmul fast float %822, %815
  %829 = call float @dx.op.dot3.f32(i32 55, float %822, float %823, float %824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %830 = call float @dx.op.dot3.f32(i32 55, float %825, float %826, float %827, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = select i1 %105, float %829, float %822
  %832 = select i1 %105, float %829, float %823
  %833 = select i1 %105, float 1.000000e+00, float %824
  %834 = select i1 %105, float %830, float %825
  %835 = select i1 %105, float 0.000000e+00, float %826
  %836 = select i1 %105, float 0.000000e+00, float %827
  %837 = fmul fast float %831, %812
  %838 = fmul fast float %832, %813
  %839 = fmul fast float %833, %814
  %840 = fadd fast float %837, %834
  %841 = fadd fast float %838, %835
  %842 = fadd fast float %839, %836
  %843 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.i32 %843, 0
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %1111, label %846, !dx.controlflow.hints !68

; <label>:846                                     ; preds = %816
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 2
  %849 = extractvalue %dx.types.CBufRet.f32 %847, 3
  %850 = fmul fast float %848, %47
  %851 = fmul fast float %849, %48
  %852 = fmul fast float %850, 2.000000e+00
  %853 = fmul fast float %851, 2.000000e+00
  %854 = fsub fast float 1.000000e+00, %852
  %855 = fsub fast float 1.000000e+00, %853
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %858 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %859 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %860 = fmul fast float %854, %857
  %861 = fmul fast float %854, %858
  %862 = fmul fast float %854, %859
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 0
  %865 = extractvalue %dx.types.CBufRet.f32 %863, 1
  %866 = extractvalue %dx.types.CBufRet.f32 %863, 2
  %867 = fmul fast float %855, %864
  %868 = fmul fast float %855, %865
  %869 = fmul fast float %855, %866
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %872 = extractvalue %dx.types.CBufRet.f32 %870, 1
  %873 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %874 = fadd fast float %867, %871
  %875 = fadd fast float %874, %860
  %876 = fadd fast float %868, %872
  %877 = fadd fast float %876, %861
  %878 = fadd fast float %869, %873
  %879 = fadd fast float %878, %862
  %880 = fmul fast float %875, %811
  %881 = fmul fast float %877, %811
  %882 = fmul fast float %879, %811
  %883 = fmul fast float %880, %880
  %884 = fmul fast float %881, %881
  %885 = fadd fast float %883, %884
  %886 = fmul fast float %882, %882
  %887 = fadd fast float %885, %886
  %888 = call float @dx.op.unary.f32(i32 24, float %887)  ; Sqrt(value)
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %891 = fsub fast float %888, %890
  %892 = extractvalue %dx.types.CBufRet.f32 %889, 2
  %893 = fmul fast float %891, %892
  %894 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  %895 = fadd fast float %894, -5.000000e-01
  %896 = fmul fast float %895, 2.000000e+00
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 2
  %899 = call float @dx.op.binary.f32(i32 36, float %898, float %896)  ; FMin(a,b)
  %900 = fsub fast float -0.000000e+00, %898
  %901 = fcmp fast ogt float %899, %900
  br i1 %901, label %902, label %1111, !dx.controlflow.hints !69

; <label>:902                                     ; preds = %846
  %903 = fmul fast float %899, 5.000000e-01
  %904 = fadd fast float %903, 5.000000e-01
  %905 = call float @dx.op.unary.f32(i32 22, float %904)  ; Frc(value)
  %906 = call float @dx.op.unary.f32(i32 27, float %905)  ; Round_ni(value)
  %907 = call float @dx.op.unary.f32(i32 22, float %905)  ; Frc(value)
  %908 = fmul fast float %907, 2.000000e+00
  %909 = fadd fast float %908, -1.000000e+00
  %910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %850, float %851, float %906, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = extractvalue %dx.types.ResRet.f32 %910, 1
  %913 = extractvalue %dx.types.ResRet.f32 %910, 2
  %914 = extractvalue %dx.types.ResRet.f32 %910, 3
  %915 = fadd fast float %911, -5.000000e-01
  %916 = fadd fast float %913, -5.000000e-01
  %917 = fmul fast float %915, 0xBFD5555560000000
  %918 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %916, float %917)  ; FMad(a,b,c)
  %919 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %912, float 0.000000e+00)  ; FMad(a,b,c)
  %920 = fadd fast float %919, %914
  %921 = fmul fast float %915, -7.500000e-01
  %922 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %916, float %921)  ; FMad(a,b,c)
  %923 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %912, float 0.000000e+00)  ; FMad(a,b,c)
  %924 = fadd fast float %923, %914
  %925 = call float @dx.op.binary.f32(i32 35, float %918, float -1.000000e+00)  ; FMax(a,b)
  %926 = call float @dx.op.binary.f32(i32 35, float %920, float -1.000000e+00)  ; FMax(a,b)
  %927 = call float @dx.op.binary.f32(i32 35, float %922, float -1.000000e+00)  ; FMax(a,b)
  %928 = call float @dx.op.binary.f32(i32 35, float %924, float -1.000000e+00)  ; FMax(a,b)
  %929 = call float @dx.op.binary.f32(i32 36, float %925, float 1.000000e+00)  ; FMin(a,b)
  %930 = call float @dx.op.binary.f32(i32 36, float %926, float 1.000000e+00)  ; FMin(a,b)
  %931 = call float @dx.op.binary.f32(i32 36, float %927, float 1.000000e+00)  ; FMin(a,b)
  %932 = call float @dx.op.binary.f32(i32 36, float %928, float 1.000000e+00)  ; FMin(a,b)
  %933 = fcmp fast olt float %929, 0x3FEFFF8020000000
  br i1 %933, label %934, label %1049, !dx.controlflow.hints !70

; <label>:934                                     ; preds = %902
  %935 = extractvalue %dx.types.CBufRet.f32 %897, 3
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 0
  %938 = extractvalue %dx.types.CBufRet.f32 %936, 1
  %939 = extractvalue %dx.types.CBufRet.f32 %936, 2
  %940 = extractvalue %dx.types.CBufRet.f32 %936, 3
  %941 = fsub fast float %937, %929
  %942 = fsub fast float %938, %930
  %943 = fsub fast float %939, %931
  %944 = fsub fast float %940, %932
  %945 = fmul fast float %941, %935
  %946 = fmul fast float %942, %935
  %947 = fmul fast float %943, %935
  %948 = fmul fast float %944, %935
  %949 = fadd fast float %945, %929
  %950 = fadd fast float %946, %930
  %951 = fsub fast float -0.000000e+00, %950
  %952 = fadd fast float %947, %931
  %953 = fadd fast float %948, %932
  %954 = fmul fast float %949, %949
  %955 = fsub fast float %950, %954
  %956 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %955)  ; FMax(a,b)
  %957 = fdiv fast float 1.000000e+00, %956
  %958 = fmul fast float %950, %949
  %959 = fsub fast float %952, %958
  %960 = fsub fast float %909, %949
  %961 = fmul fast float %909, %909
  %962 = fsub fast float %961, %950
  %963 = fmul fast float %960, %957
  %964 = fmul fast float %963, %959
  %965 = fsub fast float %962, %964
  %966 = fmul fast float %950, %950
  %967 = fsub fast float %953, %966
  %968 = fmul fast float %959, %959
  %969 = fmul fast float %968, %957
  %970 = fsub fast float %967, %969
  %971 = fdiv fast float %965, %970
  %972 = fmul fast float %959, %971
  %973 = fsub fast float %960, %972
  %974 = fmul fast float %973, %957
  %975 = fmul fast float %974, %949
  %976 = fsub fast float 1.000000e+00, %975
  %977 = fmul fast float %950, %971
  %978 = fsub fast float %976, %977
  %979 = fmul fast float %974, %974
  %980 = fmul fast float %971, 4.000000e+00
  %981 = fmul fast float %980, %978
  %982 = fsub fast float %979, %981
  %983 = call float @dx.op.unary.f32(i32 24, float %982)  ; Sqrt(value)
  %984 = fcmp fast oge float %974, 0.000000e+00
  %985 = fsub fast float -0.000000e+00, %983
  %986 = select i1 %984, float %985, float %983
  %987 = fsub fast float %986, %974
  %988 = fdiv fast float %987, %971
  %989 = fdiv fast float %978, %987
  %990 = fmul fast float %988, 5.000000e-01
  %991 = fmul fast float %989, 2.000000e+00
  %992 = select i1 %984, float %990, float %991
  %993 = select i1 %984, float %991, float %990
  %994 = call float @dx.op.binary.f32(i32 35, float %992, float %993)  ; FMax(a,b)
  %995 = call float @dx.op.binary.f32(i32 36, float %992, float %993)  ; FMin(a,b)
  %996 = fcmp fast ogt float %909, %995
  br i1 %996, label %997, label %1007

; <label>:997                                     ; preds = %934
  %998 = fsub fast float %909, %995
  %999 = fsub fast float %994, %995
  %1000 = fmul fast float %998, %999
  %1001 = fmul fast float %994, %909
  %1002 = fadd fast float %994, %909
  %1003 = fmul fast float %1002, %949
  %1004 = fadd fast float %1001, %950
  %1005 = fsub fast float %1004, %1003
  %1006 = fdiv fast float %1005, %1000
  br label %1007

; <label>:1007                                    ; preds = %997, %934
  %1008 = phi float [ %1006, %997 ], [ 0.000000e+00, %934 ]
  %1009 = fcmp fast ogt float %909, %994
  %1010 = fsub fast float %909, %994
  br i1 %1009, label %1011, label %1021

; <label>:1011                                    ; preds = %1007
  %1012 = fsub fast float %994, %995
  %1013 = fmul fast float %1012, %1010
  %1014 = fmul fast float %995, %909
  %1015 = fadd fast float %995, %909
  %1016 = fmul fast float %1015, %949
  %1017 = fsub fast float %951, %1014
  %1018 = fadd fast float %1017, %1016
  %1019 = fdiv fast float %1018, %1013
  %1020 = fadd fast float %1019, %1008
  br label %1021

; <label>:1021                                    ; preds = %1011, %1007
  %1022 = phi float [ %1020, %1011 ], [ %1008, %1007 ]
  %1023 = fsub fast float %909, %995
  %1024 = fmul fast float %1023, %1010
  %1025 = fmul fast float %995, %994
  %1026 = fadd fast float %995, %994
  %1027 = fmul fast float %1026, %949
  %1028 = fadd fast float %1025, %950
  %1029 = fsub fast float %1028, %1027
  %1030 = fdiv fast float %1029, %1024
  %1031 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  %1032 = fcmp fast oeq float %686, 0.000000e+00
  %1033 = extractvalue %dx.types.CBufRet.f32 %897, 0
  %1034 = fcmp fast oeq float %1033, 0.000000e+00
  %1035 = or i1 %1032, %1034
  %1036 = fmul fast float %1033, 2.000000e+00
  %1037 = fadd fast float %898, %899
  %1038 = fdiv fast float %1037, %1036
  %1039 = call float @dx.op.unary.f32(i32 7, float %1038)  ; Saturate(value)
  %1040 = fmul fast float %1039, 2.000000e+00
  %1041 = fsub fast float 3.000000e+00, %1040
  %1042 = fmul fast float %1039, %1039
  %1043 = fmul fast float %1042, %1041
  %1044 = select i1 %1035, float 1.000000e+00, float %1043
  %1045 = fmul fast float %1030, %686
  %1046 = fadd fast float %1031, %1045
  %1047 = call float @dx.op.unary.f32(i32 7, float %1046)  ; Saturate(value)
  %1048 = fmul fast float %1044, %1047
  br label %1049

; <label>:1049                                    ; preds = %1021, %902
  %1050 = phi float [ %1048, %1021 ], [ 0.000000e+00, %902 ]
  %1051 = fsub fast float 1.000000e+00, %1050
  %1052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %850, float %851, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.i32 %1054, 2
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1062, label %1057

; <label>:1057                                    ; preds = %1049
  %1058 = call float @dx.op.unary.f32(i32 7, float %1050)  ; Saturate(value)
  %1059 = fadd fast float %1053, -1.000000e+00
  %1060 = fmul fast float %1058, %1059
  %1061 = fadd fast float %1060, 1.000000e+00
  br label %1062

; <label>:1062                                    ; preds = %1057, %1049
  %1063 = phi float [ %1061, %1057 ], [ %1051, %1049 ]
  %1064 = call float @dx.op.binary.f32(i32 35, float %1053, float %1063)  ; FMax(a,b)
  %1065 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1066 = extractvalue %dx.types.CBufRet.i32 %1065, 2
  %1067 = and i32 %1066, 1
  %1068 = icmp eq i32 %1067, 0
  %1069 = fcmp fast une float %1064, 1.000000e+00
  %1070 = and i1 %1069, %1068
  br i1 %1070, label %1071, label %1090

; <label>:1071                                    ; preds = %1062
  %1072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %850, float %851, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.f32 %1072, 2
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 1
  %1078 = fmul fast float %1077, %1073
  %1079 = fmul fast float %1077, %1074
  %1080 = fmul fast float %1077, %1075
  %1081 = fcmp fast ogt float %1053, 0x3FEFFF2E40000000
  %1082 = fsub fast float 1.000000e+00, %1064
  %1083 = fsub fast float 1.000000e+00, %1053
  %1084 = fdiv fast float %1082, %1083
  %1085 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  %1086 = select i1 %1081, float 0.000000e+00, float %1085
  %1087 = fmul fast float %1078, %1086
  %1088 = fmul fast float %1079, %1086
  %1089 = fmul fast float %1080, %1086
  br label %1090

; <label>:1090                                    ; preds = %1071, %1062
  %1091 = phi float [ 0.000000e+00, %1062 ], [ %1087, %1071 ]
  %1092 = phi float [ 0.000000e+00, %1062 ], [ %1088, %1071 ]
  %1093 = phi float [ 0.000000e+00, %1062 ], [ %1089, %1071 ]
  %1094 = fmul fast float %1091, %668
  %1095 = fmul fast float %1092, %668
  %1096 = fmul fast float %1093, %668
  %1097 = fmul fast float %1064, %828
  %1098 = call float @dx.op.dot3.f32(i32 55, float %1064, float %1064, float %1064, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = call float @dx.op.dot3.f32(i32 55, float %1094, float %1095, float %1096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = select i1 %105, float %1098, float %1064
  %1101 = select i1 %105, float 1.000000e+00, float %1064
  %1102 = select i1 %105, float %1099, float %1094
  %1103 = select i1 %105, float 0.000000e+00, float %1095
  %1104 = select i1 %105, float 0.000000e+00, float %1096
  %1105 = fmul fast float %1100, %840
  %1106 = fmul fast float %1100, %841
  %1107 = fmul fast float %1101, %842
  %1108 = fadd fast float %1105, %1102
  %1109 = fadd fast float %1106, %1103
  %1110 = fadd fast float %1104, %1107
  br label %1111

; <label>:1111                                    ; preds = %1090, %846, %816, %810
  %1112 = phi float [ %812, %810 ], [ %840, %816 ], [ %1108, %1090 ], [ %840, %846 ]
  %1113 = phi float [ %813, %810 ], [ %841, %816 ], [ %1109, %1090 ], [ %841, %846 ]
  %1114 = phi float [ %814, %810 ], [ %842, %816 ], [ %1110, %1090 ], [ %842, %846 ]
  %1115 = phi float [ %815, %810 ], [ %828, %816 ], [ %1097, %1090 ], [ %828, %846 ]
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 2
  %1118 = extractvalue %dx.types.CBufRet.f32 %1116, 3
  %1119 = fmul fast float %1117, %47
  %1120 = fmul fast float %1118, %48
  %1121 = call float @dx.op.unary.f32(i32 7, float %1119)  ; Saturate(value)
  %1122 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  %1123 = select i1 %703, i32 2, i32 0
  %1124 = or i32 %1123, 1
  %1125 = uitofp i32 %1124 to float
  %1126 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1121, float %1122, float %1125, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.f32 %1126, 2
  %1130 = extractvalue %dx.types.ResRet.f32 %1126, 3
  %1131 = add nuw nsw i32 %1123, 2
  %1132 = uitofp i32 %1131 to float
  %1133 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1121, float %1122, float %1132, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.ResRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.ResRet.f32 %1133, 2
  %1137 = extractvalue %dx.types.ResRet.f32 %1133, 3
  %1138 = call float @dx.op.binary.f32(i32 35, float %1128, float %1129)  ; FMax(a,b)
  %1139 = call float @dx.op.binary.f32(i32 35, float %1127, float %1138)  ; FMax(a,b)
  %1140 = call float @dx.op.binary.f32(i32 35, float %1139, float %1130)  ; FMax(a,b)
  %1141 = call float @dx.op.binary.f32(i32 36, float %1135, float %1136)  ; FMin(a,b)
  %1142 = call float @dx.op.binary.f32(i32 36, float %1134, float %1141)  ; FMin(a,b)
  %1143 = call float @dx.op.binary.f32(i32 36, float %1142, float %1137)  ; FMin(a,b)
  %1144 = fmul fast float %1140, 2.550000e+02
  %1145 = fadd fast float %1144, 0x3F70101020000000
  %1146 = fptoui float %1145 to i32
  %1147 = fmul fast float %1143, 2.550000e+02
  %1148 = fadd fast float %1147, 0x3F70101020000000
  %1149 = fptoui float %1148 to i32
  %1150 = icmp ult i32 %1146, %1149
  br i1 %1150, label %1151, label %1203

; <label>:1151                                    ; preds = %1111
  %1152 = fcmp fast ogt float %41, 9.843750e-01
  %1153 = fadd fast float %811, -4.000000e+00
  %1154 = select i1 %1152, float -4.000000e+00, float %1153
  %1155 = call float @dx.op.binary.f32(i32 35, float %1154, float 0.000000e+00)  ; FMax(a,b)
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = fadd fast float %1157, %1155
  %1159 = extractvalue %dx.types.CBufRet.f32 %1156, 2
  %1160 = fmul fast float %1158, %1159
  %1161 = call float @dx.op.unary.f32(i32 23, float %1160)  ; Log(value)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1156, 3
  %1163 = fmul fast float %1162, %1161
  %1164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1164, 2
  %1166 = fmul fast float %1163, %1165
  %1167 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1168 = uitofp i32 %1146 to float
  %1169 = uitofp i32 %1149 to float
  %1170 = fadd fast float %1168, 5.000000e-01
  %1171 = fadd fast float %1169, 5.000000e-01
  %1172 = fmul fast float %1165, %1170
  %1173 = fmul fast float %1165, %1171
  %1174 = fadd fast float %1172, 0x3F0FFB4800000000
  %1175 = fadd fast float %1173, 0xBF0FFB4800000000
  %1176 = call float @dx.op.binary.f32(i32 35, float %1167, float %1174)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 36, float %1176, float %1175)  ; FMin(a,b)
  %1178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1179 = extractvalue %dx.types.CBufRet.f32 %1178, 1
  %1180 = extractvalue %dx.types.CBufRet.f32 %1178, 2
  %1181 = extractvalue %dx.types.CBufRet.f32 %1178, 0
  %1182 = select i1 %703, float %1181, float 0.000000e+00
  %1183 = fmul fast float %1179, %1177
  %1184 = fadd fast float %1182, %1183
  %1185 = fadd fast float %1182, %1180
  %1186 = fsub fast float %1179, %1180
  %1187 = fadd fast float %1186, %1182
  %1188 = call float @dx.op.binary.f32(i32 35, float %1184, float %1185)  ; FMax(a,b)
  %1189 = call float @dx.op.binary.f32(i32 36, float %1188, float %1187)  ; FMin(a,b)
  %1190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1121, float %1122, float %1189, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = extractvalue %dx.types.ResRet.f32 %1190, 1
  %1193 = extractvalue %dx.types.ResRet.f32 %1190, 2
  %1194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1121, float %1122, float %1189, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.ResRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.ResRet.f32 %1194, 2
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 1
  %1200 = fmul fast float %1199, %1195
  %1201 = fmul fast float %1199, %1196
  %1202 = fmul fast float %1199, %1197
  br label %1203

; <label>:1203                                    ; preds = %1151, %1111
  %1204 = phi float [ %1191, %1151 ], [ 1.000000e+00, %1111 ]
  %1205 = phi float [ %1192, %1151 ], [ 1.000000e+00, %1111 ]
  %1206 = phi float [ %1193, %1151 ], [ 1.000000e+00, %1111 ]
  %1207 = phi float [ %1200, %1151 ], [ 0.000000e+00, %1111 ]
  %1208 = phi float [ %1201, %1151 ], [ 0.000000e+00, %1111 ]
  %1209 = phi float [ %1202, %1151 ], [ 0.000000e+00, %1111 ]
  %1210 = fmul fast float %1207, %668
  %1211 = fmul fast float %1208, %668
  %1212 = fmul fast float %1209, %668
  %1213 = fmul fast float %1204, %1115
  %1214 = call float @dx.op.dot3.f32(i32 55, float %1204, float %1205, float %1206, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1215 = call float @dx.op.dot3.f32(i32 55, float %1210, float %1211, float %1212, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1216 = select i1 %105, float %1214, float %1204
  %1217 = select i1 %105, float %1214, float %1205
  %1218 = select i1 %105, float 1.000000e+00, float %1206
  %1219 = select i1 %105, float %1215, float %1210
  %1220 = select i1 %105, float 0.000000e+00, float %1211
  %1221 = select i1 %105, float 0.000000e+00, float %1212
  %1222 = fmul fast float %1216, %1112
  %1223 = fmul fast float %1217, %1113
  %1224 = fmul fast float %1218, %1114
  %1225 = fadd fast float %1222, %1219
  %1226 = fadd fast float %1223, %1220
  %1227 = fadd fast float %1221, %1224
  %1228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.i32 %1228, 3
  %1230 = and i32 %1229, 3
  %1231 = icmp ne i32 %1230, 0
  %1232 = and i32 %1229, 4
  %1233 = icmp ne i32 %1232, 0
  %1234 = and i1 %1231, %1233
  %1235 = and i1 %105, %1234
  br i1 %1235, label %1236, label %1242

; <label>:1236                                    ; preds = %1203
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 1
  %1239 = fadd fast float %1213, -1.000000e+00
  %1240 = fmul fast float %1238, %1239
  %1241 = fadd fast float %1240, 1.000000e+00
  br label %1242

; <label>:1242                                    ; preds = %1236, %1203
  %1243 = phi float [ %1241, %1236 ], [ %1213, %1203 ]
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  br i1 %105, label %1246, label %1267

; <label>:1246                                    ; preds = %1242
  %1247 = fadd fast float %1225, %1226
  %1248 = fmul fast float %1245, %1247
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 3
  %1251 = extractvalue %dx.types.CBufRet.f32 %672, 1
  %1252 = fsub fast float %675, %1251
  %1253 = extractvalue %dx.types.CBufRet.f32 %672, 2
  %1254 = fmul fast float %1252, %1253
  %1255 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1256 = fsub fast float %1255, %1250
  %1257 = fmul fast float %1256, %1243
  %1258 = fadd fast float %1257, %1250
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 0
  %1261 = fsub fast float %1258, %1260
  %1262 = fmul fast float %1261, 1.000000e+01
  %1263 = call float @dx.op.unary.f32(i32 7, float %1262)  ; Saturate(value)
  %1264 = fmul fast float %1263, %668
  %1265 = fsub fast float %668, %1264
  %1266 = fmul fast float %1265, %1258
  br label %1276

; <label>:1267                                    ; preds = %1242
  %1268 = fmul fast float %1245, %1225
  %1269 = fmul fast float %1245, %1226
  %1270 = fmul fast float %1245, %1227
  %1271 = call float @dx.op.binary.f32(i32 35, float %1269, float %1270)  ; FMax(a,b)
  %1272 = call float @dx.op.binary.f32(i32 35, float %1268, float %1271)  ; FMax(a,b)
  %1273 = call float @dx.op.binary.f32(i32 35, float %1272, float %668)  ; FMax(a,b)
  %1274 = fcmp fast ugt float %1273, 0x3F10000000000000
  br i1 %1274, label %1276, label %1275

; <label>:1275                                    ; preds = %1267
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1276

; <label>:1276                                    ; preds = %1275, %1267, %1246
  %1277 = phi float [ %1248, %1246 ], [ %1268, %1275 ], [ %1268, %1267 ]
  %1278 = phi float [ %1266, %1246 ], [ %1269, %1275 ], [ %1269, %1267 ]
  %1279 = phi float [ %1265, %1246 ], [ %1270, %1275 ], [ %1270, %1267 ]
  %1280 = phi float [ %1265, %1246 ], [ %668, %1275 ], [ %668, %1267 ]
  %1281 = fadd fast float %501, 0x3FE3C6EF40000000
  %1282 = call float @dx.op.unary.f32(i32 22, float %1281)  ; Frc(value)
  %1283 = call float @dx.op.unary.f32(i32 23, float %1277)  ; Log(value)
  %1284 = fadd fast float %1283, -7.000000e+00
  %1285 = call float @dx.op.unary.f32(i32 21, float %1284)  ; Exp(value)
  %1286 = fmul fast float %1282, 2.000000e+00
  %1287 = fadd fast float %1286, -1.000000e+00
  %1288 = fmul fast float %1285, %1287
  %1289 = fcmp fast ogt float %1277, 0.000000e+00
  %1290 = select i1 %1289, float %1288, float 0.000000e+00
  %1291 = fadd fast float %1290, %1277
  %1292 = fadd fast float %501, 0x3FF3C6EF40000000
  %1293 = call float @dx.op.unary.f32(i32 22, float %1292)  ; Frc(value)
  %1294 = call float @dx.op.unary.f32(i32 23, float %1278)  ; Log(value)
  %1295 = fadd fast float %1294, -7.000000e+00
  %1296 = call float @dx.op.unary.f32(i32 21, float %1295)  ; Exp(value)
  %1297 = fmul fast float %1293, 2.000000e+00
  %1298 = fadd fast float %1297, -1.000000e+00
  %1299 = fmul fast float %1296, %1298
  %1300 = fcmp fast ogt float %1278, 0.000000e+00
  %1301 = select i1 %1300, float %1299, float 0.000000e+00
  %1302 = fadd fast float %1301, %1278
  %1303 = fadd fast float %501, 0x3FFDAA66E0000000
  %1304 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1305 = call float @dx.op.unary.f32(i32 23, float %1279)  ; Log(value)
  %1306 = fadd fast float %1305, -6.000000e+00
  %1307 = call float @dx.op.unary.f32(i32 21, float %1306)  ; Exp(value)
  %1308 = fmul fast float %1304, 2.000000e+00
  %1309 = fadd fast float %1308, -1.000000e+00
  %1310 = fmul fast float %1307, %1309
  %1311 = fcmp fast ogt float %1279, 0.000000e+00
  %1312 = select i1 %1311, float %1310, float 0.000000e+00
  %1313 = fadd fast float %1312, %1279
  %1314 = select i1 %105, float %1278, float %1302
  %1315 = select i1 %105, float %1279, float %1313
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1316 = call float @dx.op.binary.f32(i32 36, float %1291, float 3.225500e+04)  ; FMin(a,b)
  %1317 = call float @dx.op.binary.f32(i32 36, float %1314, float 3.225500e+04)  ; FMin(a,b)
  %1318 = call float @dx.op.binary.f32(i32 36, float %1315, float 3.225500e+04)  ; FMin(a,b)
  %1319 = call float @dx.op.binary.f32(i32 36, float %1280, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1316)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1317)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1318)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1319)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1280)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1280)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1280)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1280)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

