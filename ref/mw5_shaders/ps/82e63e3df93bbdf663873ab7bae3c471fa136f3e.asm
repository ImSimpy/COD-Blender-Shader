;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2   xyzw        3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyz 
; TEXCOORD                 5   xy          5     NONE   float   xy  
; TEXCOORD                 8   xyzw        6     NONE   float       
; QUAD_POSITION            0   xyzw        7     NONE   float   xyzw
; COLOR                    3   xyz         8     NONE    uint   xyz 
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
; shader hash: 0450a071415b390b70d7be9f8bc667ff
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
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
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
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %51 = fmul fast float %50, %43
  %52 = fmul fast float %50, %44
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %56 = fmul fast float %51, 2.000000e+00
  %57 = fmul fast float %56, %54
  %58 = fmul fast float %52, 2.000000e+00
  %59 = fmul fast float %58, %55
  %60 = fsub fast float 1.000000e+00, %57
  %61 = fsub fast float 1.000000e+00, %59
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fmul fast float %60, %63
  %67 = fmul fast float %60, %64
  %68 = fmul fast float %60, %65
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = fmul fast float %61, %70
  %74 = fmul fast float %61, %71
  %75 = fmul fast float %61, %72
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %80 = fadd fast float %73, %77
  %81 = fadd fast float %80, %66
  %82 = fadd fast float %74, %78
  %83 = fadd fast float %82, %67
  %84 = fadd fast float %75, %79
  %85 = fadd fast float %84, %68
  %86 = fmul fast float %81, %46
  %87 = fmul fast float %83, %46
  %88 = fmul fast float %85, %46
  %89 = bitcast i32 %23 to float
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 3
  %92 = and i32 %91, 3
  %93 = icmp ne i32 %92, 0
  %94 = and i32 %91, 4
  %95 = icmp ne i32 %94, 0
  %96 = and i1 %93, %95
  br i1 %96, label %97, label %106

; <label>:97                                      ; preds = %0
  %98 = fmul fast float %55, %52
  %99 = fmul fast float %54, %51
  %100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %99, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = fsub fast float 1.000000e+00, %101
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fcmp fast olt float %102, %104
  br label %109

; <label>:106                                     ; preds = %0
  %107 = icmp eq i32 %94, 0
  %108 = and i1 %93, %107
  br label %109

; <label>:109                                     ; preds = %106, %97
  %110 = phi i1 [ %105, %97 ], [ %108, %106 ]
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %112, %51
  %115 = fmul fast float %113, %52
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = and i32 %117, 114688
  %119 = icmp ne i32 %118, 0
  %120 = select i1 %119, float %114, float 0.000000e+00
  %121 = select i1 %119, float %115, float 0.000000e+00
  %122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %120, float %121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = fmul fast float %123, 2.550000e+02
  %125 = fptoui float %124 to i32
  %126 = select i1 %119, i32 %125, i32 0
  %127 = mul i32 %22, 208
  %128 = add i32 %127, 188
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  %131 = and i32 %91, 114688
  %132 = and i32 %91, 8
  %133 = icmp ne i32 %132, 0
  %134 = or i1 %110, %133
  %135 = select i1 %134, i32 %131, i32 16384
  %136 = and i32 %135, %130
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

; <label>:138                                     ; preds = %109
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %139

; <label>:139                                     ; preds = %138, %109
  %140 = and i32 %130, 512
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %166, label %142

; <label>:142                                     ; preds = %139
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %146 = fmul fast float %144, %51
  %147 = fmul fast float %145, %52
  %148 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %150 = fdiv fast float %148, %149
  %151 = fcmp fast ogt float %150, 0x3FFC71C720000000
  br i1 %151, label %152, label %158

; <label>:152                                     ; preds = %142
  %153 = fdiv fast float 0x3FFC71C720000000, %150
  %154 = fmul fast float %153, %147
  %155 = fsub fast float 1.000000e+00, %153
  %156 = fmul fast float %155, 5.000000e-01
  %157 = fadd fast float %156, %154
  br label %166

; <label>:158                                     ; preds = %142
  %159 = fcmp fast olt float %150, 0x3FFC71C720000000
  br i1 %159, label %160, label %166

; <label>:160                                     ; preds = %158
  %161 = fmul fast float %146, 5.625000e-01
  %162 = fmul fast float %161, %150
  %163 = fmul fast float %150, 2.812500e-01
  %164 = fsub fast float 5.000000e-01, %163
  %165 = fadd fast float %164, %162
  br label %166

; <label>:166                                     ; preds = %160, %158, %152, %139
  %167 = phi float [ %37, %139 ], [ %146, %152 ], [ %165, %160 ], [ %146, %158 ]
  %168 = phi float [ %38, %139 ], [ %157, %152 ], [ %147, %160 ], [ %147, %158 ]
  %169 = fadd fast float %37, %34
  %170 = fadd fast float %38, %35
  %171 = add i32 %24, 72
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = extractvalue %dx.types.ResRet.i32 %172, 1
  %175 = bitcast i32 %173 to float
  %176 = bitcast i32 %174 to float
  %177 = fmul fast float %175, %37
  %178 = fmul fast float %176, %38
  %179 = call float @dx.op.unary.f32(i32 22, float %177)  ; Frc(value)
  %180 = call float @dx.op.unary.f32(i32 22, float %178)  ; Frc(value)
  %181 = and i32 %130, 16
  %182 = icmp ne i32 %181, 0
  %183 = select i1 %182, float 1.000000e+00, float %42
  %184 = add i32 %24, 124
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = add i32 %186, 0
  %188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %191 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %188, %dx.types.Handle %48, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float %190, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = add i32 %194, 0
  %196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.f32 %197, 2
  %199 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %196, %dx.types.Handle %48, float %169, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float %198, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %200 = extractvalue %dx.types.ResRet.f32 %199, 0
  %201 = fsub fast float %200, %192
  %202 = fmul fast float %201, %36
  %203 = fadd fast float %202, %192
  %204 = fmul fast float %203, %183
  %205 = icmp eq i32 %181, 0
  br i1 %205, label %225, label %206, !dx.controlflow.hints !61

; <label>:206                                     ; preds = %166
  %207 = add i32 %127, 64
  %208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = fadd fast float %209, 1.000000e+00
  %211 = fmul fast float %210, %42
  %212 = fsub fast float %211, %209
  %213 = fsub fast float %210, %212
  %214 = call float @dx.op.unary.f32(i32 7, float %213)  ; Saturate(value)
  %215 = fsub fast float 1.000000e+00, %211
  %216 = call float @dx.op.unary.f32(i32 7, float %215)  ; Saturate(value)
  %217 = fsub fast float %214, %216
  %218 = fsub fast float %204, %216
  %219 = fdiv fast float %218, %217
  %220 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  %221 = fmul fast float %220, 2.000000e+00
  %222 = fsub fast float 3.000000e+00, %221
  %223 = fmul fast float %220, %220
  %224 = fmul fast float %223, %222
  br label %225

; <label>:225                                     ; preds = %206, %166
  %226 = phi float [ %224, %206 ], [ %204, %166 ]
  %227 = fcmp fast ogt float %226, 0.000000e+00
  br i1 %227, label %229, label %228

; <label>:228                                     ; preds = %225
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %229

; <label>:229                                     ; preds = %228, %225
  %230 = call float @dx.op.unary.f32(i32 7, float %226)  ; Saturate(value)
  %231 = fmul fast float %51, 5.000000e-01
  %232 = fmul fast float %52, 5.000000e-01
  %233 = fptosi float %231 to i32
  %234 = fptosi float %232 to i32
  %235 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %233, i32 %234, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = lshr i32 %236, 18
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F4C00EBA0000000
  %240 = call float @dx.op.unary.f32(i32 21, float %239)  ; Exp(value)
  %241 = fadd fast float %240, -1.000000e+00
  %242 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %243 = extractvalue %dx.types.Dimensions %242, 0
  %244 = sitofp i32 %243 to float
  %245 = extractvalue %dx.types.Dimensions %242, 1
  %246 = sitofp i32 %245 to float
  %247 = fcmp fast oge float %231, %244
  %248 = fcmp fast oge float %232, %246
  %249 = or i1 %247, %248
  %250 = select i1 %249, float 0x4197782600000000, float %241
  %251 = fsub fast float %250, %46
  %252 = fcmp fast ogt float %251, 0.000000e+00
  %253 = and i32 %126, -2
  %254 = icmp eq i32 %253, 2
  %255 = and i1 %254, %252
  %256 = xor i1 %252, true
  %257 = icmp eq i32 %126, 1
  %258 = and i1 %257, %256
  %259 = or i1 %255, %258
  %260 = and i32 %130, 262144
  %261 = icmp ne i32 %260, 0
  %262 = and i1 %261, %259
  %263 = xor i1 %259, true
  %264 = and i32 %130, 131072
  %265 = icmp ne i32 %264, 0
  %266 = and i1 %265, %263
  %267 = or i1 %262, %266
  br i1 %267, label %268, label %269

; <label>:268                                     ; preds = %229
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %269

; <label>:269                                     ; preds = %268, %229
  %270 = and i32 %130, 32
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %521, label %272, !dx.controlflow.hints !62

; <label>:272                                     ; preds = %269
  %273 = add i32 %127, 80
  %274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  %278 = extractvalue %dx.types.ResRet.f32 %274, 3
  %279 = add i32 %127, 96
  %280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = extractvalue %dx.types.ResRet.f32 %280, 1
  %283 = extractvalue %dx.types.ResRet.f32 %280, 2
  %284 = add i32 %127, 112
  %285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = extractvalue %dx.types.ResRet.f32 %285, 1
  %288 = extractvalue %dx.types.ResRet.f32 %285, 2
  %289 = extractvalue %dx.types.ResRet.f32 %285, 3
  %290 = add i32 %127, 128
  %291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = extractvalue %dx.types.ResRet.f32 %291, 1
  %294 = extractvalue %dx.types.ResRet.f32 %291, 2
  %295 = extractvalue %dx.types.ResRet.f32 %291, 3
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 4096
  %299 = icmp ne i32 %298, 0
  %300 = fcmp fast une float %283, 0.000000e+00
  %301 = and i32 %297, 64
  %302 = icmp ne i32 %301, 0
  %303 = and i32 %297, 128
  %304 = icmp eq i32 %303, 0
  %305 = and i32 %297, 2048
  %306 = icmp eq i32 %305, 0
  %307 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %308 = extractvalue %dx.types.Dimensions %307, 0
  %309 = sitofp i32 %308 to float
  %310 = extractvalue %dx.types.Dimensions %307, 1
  %311 = sitofp i32 %310 to float
  %312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.f32 %312, 2
  %314 = extractvalue %dx.types.CBufRet.f32 %312, 3
  %315 = fmul fast float %313, %51
  %316 = fmul fast float %314, %52
  %317 = fmul fast float %315, %309
  %318 = fmul fast float %316, %311
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 1
  %321 = fsub fast float -0.000000e+00, %320
  %322 = fptoui float %321 to i32
  %323 = fptoui float %317 to i32
  %324 = fptoui float %318 to i32
  %325 = and i32 %322, 31
  %326 = lshr i32 %323, %325
  %327 = lshr i32 %324, %325
  %328 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %322, i32 %326, i32 %327, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = fcmp fast ogt float %329, -1.000000e+00
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %333 = select i1 %330, float %332, float 1.000000e+00
  %334 = fadd fast float %329, 1.000000e+00
  %335 = fmul fast float %333, %334
  %336 = call float @dx.op.unary.f32(i32 6, float %335)  ; FAbs(value)
  %337 = extractvalue %dx.types.CBufRet.f32 %331, 3
  %338 = fcmp fast oge float %336, %337
  %339 = select i1 %338, float 0x4197782600000000, float %336
  br i1 %306, label %417, label %340, !dx.controlflow.hints !63

; <label>:340                                     ; preds = %272
  %341 = fmul fast float %56, %313
  %342 = fmul fast float %58, %314
  %343 = fsub fast float 1.000000e+00, %341
  %344 = fsub fast float 1.000000e+00, %342
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %347 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %348 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %349 = fmul fast float %343, %346
  %350 = fmul fast float %343, %347
  %351 = fmul fast float %343, %348
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %354 = extractvalue %dx.types.CBufRet.f32 %352, 1
  %355 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %356 = fmul fast float %344, %353
  %357 = fmul fast float %344, %354
  %358 = fmul fast float %344, %355
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %362 = extractvalue %dx.types.CBufRet.f32 %359, 2
  %363 = fadd fast float %356, %360
  %364 = fadd fast float %363, %349
  %365 = fadd fast float %357, %361
  %366 = fadd fast float %365, %350
  %367 = fadd fast float %358, %362
  %368 = fadd fast float %367, %351
  %369 = fmul fast float %364, %339
  %370 = fmul fast float %366, %339
  %371 = fmul fast float %368, %339
  %372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %373 = extractvalue %dx.types.CBufRet.f32 %372, 0
  %374 = extractvalue %dx.types.CBufRet.f32 %372, 1
  %375 = extractvalue %dx.types.CBufRet.f32 %372, 2
  %376 = fsub fast float %373, %25
  %377 = fadd fast float %376, %369
  %378 = fsub fast float %374, %26
  %379 = fadd fast float %378, %370
  %380 = fsub fast float %375, %27
  %381 = fadd fast float %380, %371
  %382 = fmul fast float %28, %28
  %383 = call float @dx.op.dot3.f32(i32 55, float %377, float %379, float %381, float %377, float %379, float %381)  ; Dot3(ax,ay,az,bx,by,bz)
  %384 = fsub fast float %382, %383
  %385 = fmul fast float %282, %382
  %386 = fmul fast float %281, %382
  %387 = fcmp fast olt float %384, %385
  %388 = fcmp fast ogt float %384, %386
  %389 = or i1 %387, %388
  %390 = select i1 %389, float 0.000000e+00, float %384
  %391 = fsub fast float %281, %282
  %392 = fmul fast float %391, %382
  %393 = fsub fast float %390, %385
  %394 = fdiv fast float %393, %392
  %395 = call float @dx.op.unary.f32(i32 7, float %394)  ; Saturate(value)
  %396 = fmul fast float %395, 2.000000e+00
  %397 = fsub fast float 3.000000e+00, %396
  %398 = fmul fast float %395, %395
  %399 = fmul fast float %398, %397
  %400 = fmul fast float %286, %39
  %401 = fmul fast float %287, %40
  %402 = fmul fast float %288, %41
  %403 = fsub fast float %400, %292
  %404 = fsub fast float %401, %293
  %405 = fsub fast float %402, %294
  %406 = fsub fast float %289, %295
  %407 = fmul fast float %399, %403
  %408 = fmul fast float %399, %404
  %409 = fmul fast float %399, %405
  %410 = fmul fast float %399, %406
  %411 = fadd fast float %407, %292
  %412 = fadd fast float %408, %293
  %413 = fadd fast float %409, %294
  %414 = fadd fast float %410, %295
  %415 = fmul fast float %275, %275
  %416 = fmul fast float %415, %390
  br label %512

; <label>:417                                     ; preds = %272
  %418 = and i32 %297, 256
  %419 = icmp eq i32 %418, 0
  %420 = fsub fast float %339, %46
  br i1 %419, label %469, label %421

; <label>:421                                     ; preds = %417
  %422 = fadd fast float %281, %46
  %423 = fcmp fast olt float %339, %46
  %424 = fcmp fast ogt float %339, %422
  %425 = or i1 %423, %424
  %426 = select i1 %425, float 0.000000e+00, float %420
  %427 = call float @dx.op.unary.f32(i32 83, float %339)  ; DerivCoarseX(value)
  %428 = call float @dx.op.unary.f32(i32 84, float %339)  ; DerivCoarseY(value)
  %429 = fmul fast float %427, %427
  %430 = fmul fast float %428, %428
  %431 = fadd fast float %430, %429
  %432 = call float @dx.op.unary.f32(i32 24, float %431)  ; Sqrt(value)
  %433 = extractvalue %dx.types.CBufRet.f32 %319, 2
  %434 = fmul fast float %433, %432
  %435 = call float @dx.op.unary.f32(i32 7, float %434)  ; Saturate(value)
  %436 = fmul fast float %435, %282
  %437 = fdiv fast float %420, %436
  %438 = call float @dx.op.unary.f32(i32 7, float %437)  ; Saturate(value)
  %439 = fmul fast float %438, 2.000000e+00
  %440 = fsub fast float 3.000000e+00, %439
  %441 = fmul fast float %438, %438
  %442 = fmul fast float %441, %440
  %443 = fsub fast float %339, %422
  %444 = fadd fast float %443, %436
  %445 = fdiv fast float %444, %436
  %446 = call float @dx.op.unary.f32(i32 7, float %445)  ; Saturate(value)
  %447 = fmul fast float %446, 2.000000e+00
  %448 = fsub fast float 3.000000e+00, %447
  %449 = fmul fast float %446, %446
  %450 = fmul fast float %449, %448
  %451 = fsub fast float %442, %450
  %452 = fmul fast float %286, %39
  %453 = fmul fast float %287, %40
  %454 = fmul fast float %288, %41
  %455 = fsub fast float %452, %292
  %456 = fsub fast float %453, %293
  %457 = fsub fast float %454, %294
  %458 = fsub fast float %289, %295
  %459 = fmul fast float %451, %455
  %460 = fmul fast float %451, %456
  %461 = fmul fast float %451, %457
  %462 = fmul fast float %451, %458
  %463 = fadd fast float %459, %292
  %464 = fadd fast float %460, %293
  %465 = fadd fast float %461, %294
  %466 = fadd fast float %462, %295
  %467 = fmul fast float %426, %275
  %468 = call float @dx.op.unary.f32(i32 6, float %467)  ; FAbs(value)
  br label %512

; <label>:469                                     ; preds = %417
  br i1 %300, label %470, label %483

; <label>:470                                     ; preds = %469
  %471 = fdiv fast float 5.000000e+01, %28
  %472 = select i1 %302, float %471, float 1.000000e+00
  %473 = fmul fast float %472, %275
  %474 = fmul fast float %179, 2.000000e+00
  %475 = fmul fast float %180, 2.000000e+00
  %476 = fadd fast float %474, -1.000000e+00
  %477 = fadd fast float %475, -1.000000e+00
  %478 = call float @dx.op.dot2.f32(i32 54, float %476, float %477, float %476, float %477)  ; Dot2(ax,ay,bx,by)
  %479 = fmul fast float %283, %28
  %480 = fmul fast float %479, %478
  %481 = fsub fast float %420, %480
  %482 = fmul fast float %473, %481
  br label %512

; <label>:483                                     ; preds = %469
  br i1 %304, label %504, label %484

; <label>:484                                     ; preds = %483
  %485 = fmul fast float %28, 0x3F947AE140000000
  %486 = select i1 %302, float %485, float 1.000000e+00
  %487 = fdiv fast float 1.000000e+00, %486
  %488 = fmul fast float %486, %276
  %489 = fmul fast float %486, %277
  %490 = fmul fast float %487, %278
  %491 = call float @dx.op.unary.f32(i32 6, float %420)  ; FAbs(value)
  %492 = fcmp fast olt float %491, %488
  br i1 %492, label %493, label %497, !dx.controlflow.hints !64

; <label>:493                                     ; preds = %484
  %494 = fmul fast float %487, %275
  %495 = fmul fast float %494, %491
  %496 = call float @dx.op.unary.f32(i32 6, float %495)  ; FAbs(value)
  br label %512

; <label>:497                                     ; preds = %484
  %498 = fcmp fast ogt float %491, %489
  br i1 %498, label %499, label %512

; <label>:499                                     ; preds = %497
  %500 = fsub fast float %491, %489
  %501 = fmul fast float %490, %500
  %502 = call float @dx.op.unary.f32(i32 6, float %501)  ; FAbs(value)
  %503 = fsub fast float 1.000000e+00, %502
  br label %512

; <label>:504                                     ; preds = %483
  %505 = fdiv fast float 5.000000e+01, %28
  %506 = select i1 %302, float %505, float 1.000000e+00
  %507 = fmul fast float %506, %275
  %508 = call float @dx.op.unary.f32(i32 6, float %251)  ; FAbs(value)
  %509 = select i1 %299, float %508, float 0x47EFFFFFE0000000
  %510 = call float @dx.op.binary.f32(i32 36, float %420, float %509)  ; FMin(a,b)
  %511 = fmul fast float %507, %510
  br label %512

; <label>:512                                     ; preds = %504, %499, %497, %493, %470, %421, %340
  %513 = phi float [ %416, %340 ], [ %468, %421 ], [ %482, %470 ], [ %511, %504 ], [ %496, %493 ], [ %503, %499 ], [ %491, %497 ]
  %514 = phi float [ %411, %340 ], [ %463, %421 ], [ %39, %470 ], [ %39, %504 ], [ %39, %493 ], [ %39, %499 ], [ %39, %497 ]
  %515 = phi float [ %412, %340 ], [ %464, %421 ], [ %40, %470 ], [ %40, %504 ], [ %40, %493 ], [ %40, %499 ], [ %40, %497 ]
  %516 = phi float [ %413, %340 ], [ %465, %421 ], [ %41, %470 ], [ %41, %504 ], [ %41, %493 ], [ %41, %499 ], [ %41, %497 ]
  %517 = phi float [ %414, %340 ], [ %466, %421 ], [ 1.000000e+00, %470 ], [ 1.000000e+00, %504 ], [ 1.000000e+00, %493 ], [ 1.000000e+00, %499 ], [ 1.000000e+00, %497 ]
  %518 = call float @dx.op.unary.f32(i32 7, float %513)  ; Saturate(value)
  %519 = fmul fast float %517, %230
  %520 = fmul fast float %519, %518
  br label %521

; <label>:521                                     ; preds = %512, %269
  %522 = phi float [ %514, %512 ], [ %39, %269 ]
  %523 = phi float [ %515, %512 ], [ %40, %269 ]
  %524 = phi float [ %516, %512 ], [ %41, %269 ]
  %525 = phi float [ %520, %512 ], [ %230, %269 ]
  %526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.f32 %526, 2
  %528 = fptosi float %46 to i32
  %529 = sitofp i32 %528 to float
  %530 = fadd fast float %527, %529
  %531 = fmul fast float %530, 0x3FE3C6EF40000000
  %532 = frem fast float %51, 2.560000e+02
  %533 = frem fast float %52, 2.560000e+02
  %534 = fptoui float %532 to i32
  %535 = fptoui float %533 to i32
  %536 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %534, i32 %535, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = fadd fast float %537, %531
  %539 = call float @dx.op.unary.f32(i32 22, float %538)  ; Frc(value)
  %540 = and i32 %130, 1
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %598, label %542, !dx.controlflow.hints !65

; <label>:542                                     ; preds = %521
  %543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %127, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 2
  %545 = extractvalue %dx.types.ResRet.f32 %543, 3
  %546 = add i32 %127, 16
  %547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = extractvalue %dx.types.ResRet.f32 %547, 1
  %550 = extractvalue %dx.types.ResRet.f32 %547, 2
  %551 = add i32 %127, 32
  %552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = extractvalue %dx.types.ResRet.f32 %552, 1
  %555 = extractvalue %dx.types.ResRet.f32 %552, 2
  %556 = and i32 %130, 2
  %557 = icmp eq i32 %556, 0
  %558 = call float @dx.op.dot3.f32(i32 55, float %31, float %32, float %33, float %31, float %32, float %33)  ; Dot3(ax,ay,az,bx,by,bz)
  %559 = call float @dx.op.unary.f32(i32 25, float %558)  ; Rsqrt(value)
  %560 = fmul fast float %559, %31
  %561 = fmul fast float %559, %32
  %562 = fmul fast float %559, %33
  %563 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %564 = call float @dx.op.unary.f32(i32 25, float %563)  ; Rsqrt(value)
  %565 = fmul fast float %564, %86
  %566 = fmul fast float %564, %87
  %567 = fmul fast float %564, %88
  %568 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %567, float %560, float %561, float %562)  ; Dot3(ax,ay,az,bx,by,bz)
  %569 = fmul fast float %568, %568
  %570 = fmul fast float %569, %544
  %571 = fadd fast float %570, %545
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  br i1 %557, label %573, label %583, !dx.controlflow.hints !66

; <label>:573                                     ; preds = %542
  %574 = extractvalue %dx.types.ResRet.f32 %543, 1
  %575 = extractvalue %dx.types.ResRet.f32 %543, 0
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 3
  %578 = fmul fast float %577, %563
  %579 = fsub fast float %575, %578
  %580 = fmul fast float %579, %574
  %581 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  %582 = fmul fast float %581, %572
  br label %583

; <label>:583                                     ; preds = %573, %542
  %584 = phi float [ %582, %573 ], [ %572, %542 ]
  %585 = fsub fast float %548, %553
  %586 = fsub fast float %549, %554
  %587 = fsub fast float %550, %555
  %588 = fmul fast float %584, %585
  %589 = fmul fast float %584, %586
  %590 = fmul fast float %584, %587
  %591 = fadd fast float %588, %553
  %592 = fadd fast float %589, %554
  %593 = fadd fast float %590, %555
  %594 = fmul fast float %591, %522
  %595 = fmul fast float %592, %523
  %596 = fmul fast float %593, %524
  %597 = fmul fast float %584, %525
  br label %598

; <label>:598                                     ; preds = %583, %521
  %599 = phi float [ %594, %583 ], [ %522, %521 ]
  %600 = phi float [ %595, %583 ], [ %523, %521 ]
  %601 = phi float [ %596, %583 ], [ %524, %521 ]
  %602 = phi float [ %597, %583 ], [ %525, %521 ]
  %603 = add i32 %24, 120
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = add i32 %605, 0
  %607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %606, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %608 = add i32 %24, 24
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %607, %dx.types.Handle %47, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = extractvalue %dx.types.ResRet.f32 %611, 3
  %616 = and i32 %610, 255
  %617 = uitofp i32 %616 to float
  %618 = lshr i32 %610, 8
  %619 = and i32 %618, 255
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %615, %617
  %622 = fadd fast float %621, %620
  %623 = add i32 %24, 56
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %638 = fmul fast float %637, %612
  %639 = fmul fast float %632, %632
  %640 = fmul fast float %639, %613
  %641 = fmul fast float %636, %636
  %642 = fmul fast float %641, %614
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = add i32 %644, 0
  %646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %646, %dx.types.Handle %47, float %169, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = extractvalue %dx.types.ResRet.f32 %649, 1
  %652 = extractvalue %dx.types.ResRet.f32 %649, 2
  %653 = extractvalue %dx.types.ResRet.f32 %649, 3
  %654 = and i32 %648, 255
  %655 = uitofp i32 %654 to float
  %656 = lshr i32 %648, 8
  %657 = and i32 %656, 255
  %658 = uitofp i32 %657 to float
  %659 = fmul fast float %653, %655
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = and i32 %661, 255
  %663 = uitofp i32 %662 to float
  %664 = fmul fast float %663, 0x3F70101020000000
  %665 = lshr i32 %661, 8
  %666 = and i32 %665, 255
  %667 = uitofp i32 %666 to float
  %668 = fmul fast float %667, 0x3F70101020000000
  %669 = lshr i32 %661, 16
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = fmul fast float %671, 0x3F70101020000000
  %673 = fmul fast float %664, %664
  %674 = fmul fast float %673, %650
  %675 = fmul fast float %668, %668
  %676 = fmul fast float %675, %651
  %677 = fmul fast float %672, %672
  %678 = fmul fast float %677, %652
  %679 = fsub fast float %674, %638
  %680 = fsub fast float %676, %640
  %681 = fsub fast float %678, %642
  %682 = fmul fast float %679, %36
  %683 = fmul fast float %680, %36
  %684 = fmul fast float %681, %36
  %685 = fadd fast float %682, %638
  %686 = fadd fast float %683, %640
  %687 = fadd fast float %684, %642
  %688 = fsub fast float %658, %622
  %689 = fadd fast float %688, %659
  %690 = fmul fast float %689, %36
  %691 = fmul fast float %685, %599
  %692 = fmul fast float %686, %600
  %693 = fmul fast float %687, %601
  %694 = add i32 %24, 40
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = and i32 %696, 255
  %698 = uitofp i32 %697 to float
  %699 = fmul fast float %698, 0x3F70101020000000
  %700 = lshr i32 %696, 8
  %701 = and i32 %700, 255
  %702 = uitofp i32 %701 to float
  %703 = fmul fast float %702, 0x3F70101020000000
  %704 = lshr i32 %696, 16
  %705 = and i32 %704, 255
  %706 = uitofp i32 %705 to float
  %707 = fmul fast float %706, 0x3F70101020000000
  %708 = fmul fast float %699, %699
  %709 = fmul fast float %703, %703
  %710 = fmul fast float %707, %707
  %711 = add i32 %24, 136
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = add i32 %713, 0
  %715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %714, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %716 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %715, %dx.types.Handle %48, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  %718 = extractvalue %dx.types.ResRet.f32 %716, 1
  %719 = extractvalue %dx.types.ResRet.f32 %716, 2
  %720 = fmul fast float %708, %717
  %721 = fmul fast float %709, %718
  %722 = fmul fast float %710, %719
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 255
  %726 = uitofp i32 %725 to float
  %727 = fmul fast float %726, 0x3F70101020000000
  %728 = lshr i32 %724, 8
  %729 = and i32 %728, 255
  %730 = uitofp i32 %729 to float
  %731 = fmul fast float %730, 0x3F70101020000000
  %732 = lshr i32 %724, 16
  %733 = and i32 %732, 255
  %734 = uitofp i32 %733 to float
  %735 = fmul fast float %734, 0x3F70101020000000
  %736 = fmul fast float %727, %727
  %737 = fmul fast float %731, %731
  %738 = fmul fast float %735, %735
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = add i32 %740, 0
  %742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %742, %dx.types.Handle %48, float %169, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = extractvalue %dx.types.ResRet.f32 %743, 1
  %746 = extractvalue %dx.types.ResRet.f32 %743, 2
  %747 = fmul fast float %736, %744
  %748 = fmul fast float %737, %745
  %749 = fmul fast float %738, %746
  %750 = fsub fast float %747, %720
  %751 = fsub fast float %748, %721
  %752 = fsub fast float %749, %722
  %753 = fmul fast float %750, %36
  %754 = fmul fast float %751, %36
  %755 = fmul fast float %752, %36
  %756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %757 = extractvalue %dx.types.ResRet.f32 %756, 0
  %758 = extractvalue %dx.types.ResRet.f32 %756, 1
  %759 = extractvalue %dx.types.ResRet.f32 %756, 2
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 1
  %762 = fadd fast float %690, %622
  %763 = fmul fast float %762, 0x3F70101000000000
  %764 = fadd fast float %763, 0xBFB99999A0000000
  %765 = call float @dx.op.unary.f32(i32 7, float %764)  ; Saturate(value)
  %766 = fmul fast float %765, 0x3FF1C71C80000000
  %767 = fsub fast float 1.000000e+00, %766
  %768 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  %769 = fmul fast float %691, %768
  %770 = fmul fast float %692, %768
  %771 = fmul fast float %693, %768
  %772 = call float @dx.op.unary.f32(i32 7, float %769)  ; Saturate(value)
  %773 = call float @dx.op.unary.f32(i32 7, float %770)  ; Saturate(value)
  %774 = call float @dx.op.unary.f32(i32 7, float %771)  ; Saturate(value)
  %775 = add i32 %24, 128
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = add i32 %777, 0
  %779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %778, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %780 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %779, %dx.types.Handle %48, float %37, float %38, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 0
  %782 = add i32 %24, 132
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = add i32 %784, 0
  %786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %785, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %787 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %786, %dx.types.Handle %48, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %788 = extractvalue %dx.types.ResRet.f32 %787, 0
  %789 = and i32 %130, 8192
  %790 = icmp eq i32 %789, 0
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 0
  br i1 %790, label %803, label %793, !dx.controlflow.hints !67

; <label>:793                                     ; preds = %598
  %794 = add i32 %127, 176
  %795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %794, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = fcmp fast oge float %796, 0.000000e+00
  %799 = select i1 %798, float %796, float %792
  %800 = fmul fast float %788, %89
  %801 = fmul fast float %800, %797
  %802 = fadd fast float %801, %799
  br label %814

; <label>:803                                     ; preds = %598
  %804 = add i32 %24, 104
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = extractvalue %dx.types.ResRet.i32 %805, 1
  %808 = bitcast i32 %806 to float
  %809 = bitcast i32 %807 to float
  %810 = fcmp fast oge float %808, 0.000000e+00
  %811 = select i1 %810, float %808, float %792
  %812 = fmul fast float %809, %788
  %813 = fadd fast float %811, %812
  br label %814

; <label>:814                                     ; preds = %803, %793
  %815 = phi float [ %802, %793 ], [ %813, %803 ]
  %816 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %233, i32 %234, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = lshr i32 %817, 18
  %819 = uitofp i32 %818 to float
  %820 = fmul fast float %819, 0x3F4C00EBA0000000
  %821 = call float @dx.op.unary.f32(i32 21, float %820)  ; Exp(value)
  %822 = fadd fast float %821, -1.000000e+00
  %823 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %824 = extractvalue %dx.types.Dimensions %823, 0
  %825 = sitofp i32 %824 to float
  %826 = extractvalue %dx.types.Dimensions %823, 1
  %827 = sitofp i32 %826 to float
  %828 = fcmp fast oge float %231, %825
  %829 = fcmp fast oge float %232, %827
  %830 = or i1 %828, %829
  %831 = select i1 %830, float 0x4197782600000000, float %822
  %832 = fadd fast float %720, -1.000000e+00
  %833 = fadd fast float %832, %753
  %834 = fadd fast float %721, -1.000000e+00
  %835 = fadd fast float %834, %754
  %836 = fadd fast float %722, -1.000000e+00
  %837 = fadd fast float %836, %755
  %838 = fmul fast float %833, %602
  %839 = fmul fast float %835, %602
  %840 = fmul fast float %837, %602
  %841 = fadd fast float %838, 1.000000e+00
  %842 = fadd fast float %839, 1.000000e+00
  %843 = fadd fast float %840, 1.000000e+00
  %844 = call float @dx.op.dot3.f32(i32 55, float %841, float %842, float %843, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %845 = fsub fast float 1.000000e+00, %844
  %846 = fmul fast float %815, %781
  %847 = fsub fast float 1.000000e+00, %781
  %848 = fsub fast float %847, %788
  %849 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 3
  %852 = fmul fast float %851, %849
  %853 = fadd fast float %852, %846
  %854 = and i32 %130, 2097152
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %860, label %856, !dx.controlflow.hints !68

; <label>:856                                     ; preds = %814
  %857 = add i32 %127, 192
  %858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.f32 %858, 0
  br label %863

; <label>:860                                     ; preds = %814
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 3
  br label %863

; <label>:863                                     ; preds = %860, %856
  %864 = phi float [ %859, %856 ], [ %862, %860 ]
  %865 = fmul fast float %757, %602
  %866 = fmul fast float %865, %761
  %867 = fmul fast float %866, %772
  %868 = fmul fast float %758, %602
  %869 = fmul fast float %868, %761
  %870 = fmul fast float %869, %773
  %871 = fmul fast float %759, %602
  %872 = fmul fast float %871, %761
  %873 = fmul fast float %872, %774
  %874 = icmp eq i32 %126, 3
  %875 = fcmp fast ogt float %46, %831
  %876 = and i1 %257, %875
  %877 = or i1 %874, %876
  %878 = icmp eq i32 %126, 2
  %879 = fcmp fast ole float %46, %831
  %880 = and i1 %878, %879
  %881 = or i1 %880, %877
  br i1 %876, label %882, label %988

; <label>:882                                     ; preds = %863
  %883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.f32 %883, 2
  %885 = extractvalue %dx.types.CBufRet.f32 %883, 3
  %886 = fmul fast float %884, %51
  %887 = fmul fast float %885, %52
  %888 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %889 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %890 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %888, float %889, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = extractvalue %dx.types.ResRet.f32 %890, 1
  %893 = extractvalue %dx.types.ResRet.f32 %890, 2
  %894 = extractvalue %dx.types.ResRet.f32 %890, 3
  %895 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %888, float %889, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 0
  %897 = extractvalue %dx.types.ResRet.f32 %895, 1
  %898 = extractvalue %dx.types.ResRet.f32 %895, 2
  %899 = extractvalue %dx.types.ResRet.f32 %895, 3
  %900 = call float @dx.op.binary.f32(i32 35, float %892, float %893)  ; FMax(a,b)
  %901 = call float @dx.op.binary.f32(i32 35, float %891, float %900)  ; FMax(a,b)
  %902 = call float @dx.op.binary.f32(i32 35, float %901, float %894)  ; FMax(a,b)
  %903 = call float @dx.op.binary.f32(i32 36, float %897, float %898)  ; FMin(a,b)
  %904 = call float @dx.op.binary.f32(i32 36, float %896, float %903)  ; FMin(a,b)
  %905 = call float @dx.op.binary.f32(i32 36, float %904, float %899)  ; FMin(a,b)
  %906 = fmul fast float %902, 2.550000e+02
  %907 = fadd fast float %906, 0x3F70101020000000
  %908 = fptoui float %907 to i32
  %909 = fmul fast float %905, 2.550000e+02
  %910 = fadd fast float %909, 0x3F70101020000000
  %911 = fptoui float %910 to i32
  %912 = icmp ult i32 %908, %911
  br i1 %912, label %913, label %964

; <label>:913                                     ; preds = %882
  %914 = fcmp fast ogt float %45, 9.843750e-01
  %915 = fadd fast float %46, -4.000000e+00
  %916 = select i1 %914, float -4.000000e+00, float %915
  %917 = call float @dx.op.binary.f32(i32 35, float %916, float 0.000000e+00)  ; FMax(a,b)
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %920 = fadd fast float %919, %917
  %921 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %922 = fmul fast float %920, %921
  %923 = call float @dx.op.unary.f32(i32 23, float %922)  ; Log(value)
  %924 = extractvalue %dx.types.CBufRet.f32 %918, 3
  %925 = fmul fast float %924, %923
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %928 = fmul fast float %925, %927
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %930 = uitofp i32 %908 to float
  %931 = uitofp i32 %911 to float
  %932 = fadd fast float %930, 5.000000e-01
  %933 = fadd fast float %931, 5.000000e-01
  %934 = fmul fast float %927, %932
  %935 = fmul fast float %927, %933
  %936 = fadd fast float %934, 0x3F0FFB4800000000
  %937 = fadd fast float %935, 0xBF0FFB4800000000
  %938 = call float @dx.op.binary.f32(i32 35, float %929, float %936)  ; FMax(a,b)
  %939 = call float @dx.op.binary.f32(i32 36, float %938, float %937)  ; FMin(a,b)
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 1
  %942 = extractvalue %dx.types.CBufRet.f32 %940, 2
  %943 = extractvalue %dx.types.CBufRet.f32 %940, 0
  %944 = fmul fast float %941, %939
  %945 = fadd fast float %943, %944
  %946 = fadd fast float %943, %942
  %947 = fsub fast float %941, %942
  %948 = fadd fast float %947, %943
  %949 = call float @dx.op.binary.f32(i32 35, float %945, float %946)  ; FMax(a,b)
  %950 = call float @dx.op.binary.f32(i32 36, float %949, float %948)  ; FMin(a,b)
  %951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %888, float %889, float %950, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %952 = extractvalue %dx.types.ResRet.f32 %951, 0
  %953 = extractvalue %dx.types.ResRet.f32 %951, 1
  %954 = extractvalue %dx.types.ResRet.f32 %951, 2
  %955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %888, float %889, float %950, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  %957 = extractvalue %dx.types.ResRet.f32 %955, 1
  %958 = extractvalue %dx.types.ResRet.f32 %955, 2
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 1
  %961 = fmul fast float %960, %956
  %962 = fmul fast float %960, %957
  %963 = fmul fast float %960, %958
  br label %964

; <label>:964                                     ; preds = %913, %882
  %965 = phi float [ %952, %913 ], [ 1.000000e+00, %882 ]
  %966 = phi float [ %953, %913 ], [ 1.000000e+00, %882 ]
  %967 = phi float [ %954, %913 ], [ 1.000000e+00, %882 ]
  %968 = phi float [ %961, %913 ], [ 0.000000e+00, %882 ]
  %969 = phi float [ %962, %913 ], [ 0.000000e+00, %882 ]
  %970 = phi float [ %963, %913 ], [ 0.000000e+00, %882 ]
  %971 = fmul fast float %968, %845
  %972 = fmul fast float %969, %845
  %973 = fmul fast float %970, %845
  %974 = call float @dx.op.dot3.f32(i32 55, float %965, float %966, float %967, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %975 = call float @dx.op.dot3.f32(i32 55, float %971, float %972, float %973, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %976 = select i1 %110, float %974, float %965
  %977 = select i1 %110, float %974, float %966
  %978 = select i1 %110, float 1.000000e+00, float %967
  %979 = select i1 %110, float %975, float %971
  %980 = select i1 %110, float 0.000000e+00, float %972
  %981 = select i1 %110, float 0.000000e+00, float %973
  %982 = fmul fast float %976, %867
  %983 = fmul fast float %977, %870
  %984 = fmul fast float %978, %873
  %985 = fadd fast float %982, %979
  %986 = fadd fast float %983, %980
  %987 = fadd fast float %981, %984
  br label %988

; <label>:988                                     ; preds = %964, %863
  %989 = phi float [ %831, %964 ], [ %46, %863 ]
  %990 = phi float [ %985, %964 ], [ %867, %863 ]
  %991 = phi float [ %986, %964 ], [ %870, %863 ]
  %992 = phi float [ %987, %964 ], [ %873, %863 ]
  %993 = phi float [ %965, %964 ], [ 1.000000e+00, %863 ]
  br i1 %881, label %1289, label %994

; <label>:994                                     ; preds = %988
  %995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %29, float %30, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = extractvalue %dx.types.ResRet.f32 %995, 1
  %998 = extractvalue %dx.types.ResRet.f32 %995, 2
  %999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %29, float %30, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1000 = extractvalue %dx.types.ResRet.f32 %999, 0
  %1001 = extractvalue %dx.types.ResRet.f32 %999, 1
  %1002 = extractvalue %dx.types.ResRet.f32 %999, 2
  %1003 = fmul fast float %996, %845
  %1004 = fmul fast float %997, %845
  %1005 = fmul fast float %998, %845
  %1006 = fmul fast float %1000, %993
  %1007 = call float @dx.op.dot3.f32(i32 55, float %1000, float %1001, float %1002, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1008 = call float @dx.op.dot3.f32(i32 55, float %1003, float %1004, float %1005, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1009 = select i1 %110, float %1007, float %1000
  %1010 = select i1 %110, float %1007, float %1001
  %1011 = select i1 %110, float 1.000000e+00, float %1002
  %1012 = select i1 %110, float %1008, float %1003
  %1013 = select i1 %110, float 0.000000e+00, float %1004
  %1014 = select i1 %110, float 0.000000e+00, float %1005
  %1015 = fmul fast float %1009, %990
  %1016 = fmul fast float %1010, %991
  %1017 = fmul fast float %1011, %992
  %1018 = fadd fast float %1015, %1012
  %1019 = fadd fast float %1016, %1013
  %1020 = fadd fast float %1017, %1014
  %1021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.i32 %1021, 0
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1289, label %1024, !dx.controlflow.hints !69

; <label>:1024                                    ; preds = %994
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 2
  %1027 = extractvalue %dx.types.CBufRet.f32 %1025, 3
  %1028 = fmul fast float %1026, %51
  %1029 = fmul fast float %1027, %52
  %1030 = fmul fast float %1028, 2.000000e+00
  %1031 = fmul fast float %1029, 2.000000e+00
  %1032 = fsub fast float 1.000000e+00, %1030
  %1033 = fsub fast float 1.000000e+00, %1031
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.CBufRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.CBufRet.f32 %1034, 2
  %1038 = fmul fast float %1032, %1035
  %1039 = fmul fast float %1032, %1036
  %1040 = fmul fast float %1032, %1037
  %1041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1042 = extractvalue %dx.types.CBufRet.f32 %1041, 0
  %1043 = extractvalue %dx.types.CBufRet.f32 %1041, 1
  %1044 = extractvalue %dx.types.CBufRet.f32 %1041, 2
  %1045 = fmul fast float %1033, %1042
  %1046 = fmul fast float %1033, %1043
  %1047 = fmul fast float %1033, %1044
  %1048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1049 = extractvalue %dx.types.CBufRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.CBufRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.CBufRet.f32 %1048, 2
  %1052 = fadd fast float %1045, %1049
  %1053 = fadd fast float %1052, %1038
  %1054 = fadd fast float %1046, %1050
  %1055 = fadd fast float %1054, %1039
  %1056 = fadd fast float %1047, %1051
  %1057 = fadd fast float %1056, %1040
  %1058 = fmul fast float %1053, %989
  %1059 = fmul fast float %1055, %989
  %1060 = fmul fast float %1057, %989
  %1061 = fmul fast float %1058, %1058
  %1062 = fmul fast float %1059, %1059
  %1063 = fadd fast float %1061, %1062
  %1064 = fmul fast float %1060, %1060
  %1065 = fadd fast float %1063, %1064
  %1066 = call float @dx.op.unary.f32(i32 24, float %1065)  ; Sqrt(value)
  %1067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1068 = extractvalue %dx.types.CBufRet.f32 %1067, 0
  %1069 = fsub fast float %1066, %1068
  %1070 = extractvalue %dx.types.CBufRet.f32 %1067, 2
  %1071 = fmul fast float %1069, %1070
  %1072 = call float @dx.op.unary.f32(i32 7, float %1071)  ; Saturate(value)
  %1073 = fadd fast float %1072, -5.000000e-01
  %1074 = fmul fast float %1073, 2.000000e+00
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1077 = call float @dx.op.binary.f32(i32 36, float %1076, float %1074)  ; FMin(a,b)
  %1078 = fsub fast float -0.000000e+00, %1076
  %1079 = fcmp fast ogt float %1077, %1078
  br i1 %1079, label %1080, label %1289, !dx.controlflow.hints !70

; <label>:1080                                    ; preds = %1024
  %1081 = fmul fast float %1077, 5.000000e-01
  %1082 = fadd fast float %1081, 5.000000e-01
  %1083 = call float @dx.op.unary.f32(i32 22, float %1082)  ; Frc(value)
  %1084 = call float @dx.op.unary.f32(i32 27, float %1083)  ; Round_ni(value)
  %1085 = call float @dx.op.unary.f32(i32 22, float %1083)  ; Frc(value)
  %1086 = fmul fast float %1085, 2.000000e+00
  %1087 = fadd fast float %1086, -1.000000e+00
  %1088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %1028, float %1029, float %1084, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = extractvalue %dx.types.ResRet.f32 %1088, 3
  %1093 = fadd fast float %1089, -5.000000e-01
  %1094 = fadd fast float %1091, -5.000000e-01
  %1095 = fmul fast float %1093, 0xBFD5555560000000
  %1096 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1094, float %1095)  ; FMad(a,b,c)
  %1097 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1090, float 0.000000e+00)  ; FMad(a,b,c)
  %1098 = fadd fast float %1097, %1092
  %1099 = fmul fast float %1093, -7.500000e-01
  %1100 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1094, float %1099)  ; FMad(a,b,c)
  %1101 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1090, float 0.000000e+00)  ; FMad(a,b,c)
  %1102 = fadd fast float %1101, %1092
  %1103 = call float @dx.op.binary.f32(i32 35, float %1096, float -1.000000e+00)  ; FMax(a,b)
  %1104 = call float @dx.op.binary.f32(i32 35, float %1098, float -1.000000e+00)  ; FMax(a,b)
  %1105 = call float @dx.op.binary.f32(i32 35, float %1100, float -1.000000e+00)  ; FMax(a,b)
  %1106 = call float @dx.op.binary.f32(i32 35, float %1102, float -1.000000e+00)  ; FMax(a,b)
  %1107 = call float @dx.op.binary.f32(i32 36, float %1103, float 1.000000e+00)  ; FMin(a,b)
  %1108 = call float @dx.op.binary.f32(i32 36, float %1104, float 1.000000e+00)  ; FMin(a,b)
  %1109 = call float @dx.op.binary.f32(i32 36, float %1105, float 1.000000e+00)  ; FMin(a,b)
  %1110 = call float @dx.op.binary.f32(i32 36, float %1106, float 1.000000e+00)  ; FMin(a,b)
  %1111 = fcmp fast olt float %1107, 0x3FEFFF8020000000
  br i1 %1111, label %1112, label %1227, !dx.controlflow.hints !71

; <label>:1112                                    ; preds = %1080
  %1113 = extractvalue %dx.types.CBufRet.f32 %1075, 3
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.CBufRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.CBufRet.f32 %1114, 2
  %1118 = extractvalue %dx.types.CBufRet.f32 %1114, 3
  %1119 = fsub fast float %1115, %1107
  %1120 = fsub fast float %1116, %1108
  %1121 = fsub fast float %1117, %1109
  %1122 = fsub fast float %1118, %1110
  %1123 = fmul fast float %1119, %1113
  %1124 = fmul fast float %1120, %1113
  %1125 = fmul fast float %1121, %1113
  %1126 = fmul fast float %1122, %1113
  %1127 = fadd fast float %1123, %1107
  %1128 = fadd fast float %1124, %1108
  %1129 = fsub fast float -0.000000e+00, %1128
  %1130 = fadd fast float %1125, %1109
  %1131 = fadd fast float %1126, %1110
  %1132 = fmul fast float %1127, %1127
  %1133 = fsub fast float %1128, %1132
  %1134 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1133)  ; FMax(a,b)
  %1135 = fdiv fast float 1.000000e+00, %1134
  %1136 = fmul fast float %1128, %1127
  %1137 = fsub fast float %1130, %1136
  %1138 = fsub fast float %1087, %1127
  %1139 = fmul fast float %1087, %1087
  %1140 = fsub fast float %1139, %1128
  %1141 = fmul fast float %1138, %1135
  %1142 = fmul fast float %1141, %1137
  %1143 = fsub fast float %1140, %1142
  %1144 = fmul fast float %1128, %1128
  %1145 = fsub fast float %1131, %1144
  %1146 = fmul fast float %1137, %1137
  %1147 = fmul fast float %1146, %1135
  %1148 = fsub fast float %1145, %1147
  %1149 = fdiv fast float %1143, %1148
  %1150 = fmul fast float %1137, %1149
  %1151 = fsub fast float %1138, %1150
  %1152 = fmul fast float %1151, %1135
  %1153 = fmul fast float %1152, %1127
  %1154 = fsub fast float 1.000000e+00, %1153
  %1155 = fmul fast float %1128, %1149
  %1156 = fsub fast float %1154, %1155
  %1157 = fmul fast float %1152, %1152
  %1158 = fmul fast float %1149, 4.000000e+00
  %1159 = fmul fast float %1158, %1156
  %1160 = fsub fast float %1157, %1159
  %1161 = call float @dx.op.unary.f32(i32 24, float %1160)  ; Sqrt(value)
  %1162 = fcmp fast oge float %1152, 0.000000e+00
  %1163 = fsub fast float -0.000000e+00, %1161
  %1164 = select i1 %1162, float %1163, float %1161
  %1165 = fsub fast float %1164, %1152
  %1166 = fdiv fast float %1165, %1149
  %1167 = fdiv fast float %1156, %1165
  %1168 = fmul fast float %1166, 5.000000e-01
  %1169 = fmul fast float %1167, 2.000000e+00
  %1170 = select i1 %1162, float %1168, float %1169
  %1171 = select i1 %1162, float %1169, float %1168
  %1172 = call float @dx.op.binary.f32(i32 35, float %1170, float %1171)  ; FMax(a,b)
  %1173 = call float @dx.op.binary.f32(i32 36, float %1170, float %1171)  ; FMin(a,b)
  %1174 = fcmp fast ogt float %1087, %1173
  br i1 %1174, label %1175, label %1185

; <label>:1175                                    ; preds = %1112
  %1176 = fsub fast float %1087, %1173
  %1177 = fsub fast float %1172, %1173
  %1178 = fmul fast float %1176, %1177
  %1179 = fmul fast float %1172, %1087
  %1180 = fadd fast float %1172, %1087
  %1181 = fmul fast float %1180, %1127
  %1182 = fadd fast float %1179, %1128
  %1183 = fsub fast float %1182, %1181
  %1184 = fdiv fast float %1183, %1178
  br label %1185

; <label>:1185                                    ; preds = %1175, %1112
  %1186 = phi float [ %1184, %1175 ], [ 0.000000e+00, %1112 ]
  %1187 = fcmp fast ogt float %1087, %1172
  %1188 = fsub fast float %1087, %1172
  br i1 %1187, label %1189, label %1199

; <label>:1189                                    ; preds = %1185
  %1190 = fsub fast float %1172, %1173
  %1191 = fmul fast float %1190, %1188
  %1192 = fmul fast float %1173, %1087
  %1193 = fadd fast float %1173, %1087
  %1194 = fmul fast float %1193, %1127
  %1195 = fsub fast float %1129, %1192
  %1196 = fadd fast float %1195, %1194
  %1197 = fdiv fast float %1196, %1191
  %1198 = fadd fast float %1197, %1186
  br label %1199

; <label>:1199                                    ; preds = %1189, %1185
  %1200 = phi float [ %1198, %1189 ], [ %1186, %1185 ]
  %1201 = fsub fast float %1087, %1173
  %1202 = fmul fast float %1201, %1188
  %1203 = fmul fast float %1173, %1172
  %1204 = fadd fast float %1173, %1172
  %1205 = fmul fast float %1204, %1127
  %1206 = fadd fast float %1203, %1128
  %1207 = fsub fast float %1206, %1205
  %1208 = fdiv fast float %1207, %1202
  %1209 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1210 = fcmp fast oeq float %864, 0.000000e+00
  %1211 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1212 = fcmp fast oeq float %1211, 0.000000e+00
  %1213 = or i1 %1210, %1212
  %1214 = fmul fast float %1211, 2.000000e+00
  %1215 = fadd fast float %1076, %1077
  %1216 = fdiv fast float %1215, %1214
  %1217 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  %1218 = fmul fast float %1217, 2.000000e+00
  %1219 = fsub fast float 3.000000e+00, %1218
  %1220 = fmul fast float %1217, %1217
  %1221 = fmul fast float %1220, %1219
  %1222 = select i1 %1213, float 1.000000e+00, float %1221
  %1223 = fmul fast float %1208, %864
  %1224 = fadd fast float %1209, %1223
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1226 = fmul fast float %1222, %1225
  br label %1227

; <label>:1227                                    ; preds = %1199, %1080
  %1228 = phi float [ %1226, %1199 ], [ 0.000000e+00, %1080 ]
  %1229 = fsub fast float 1.000000e+00, %1228
  %1230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %1028, float %1029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.i32 %1232, 2
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %1240, label %1235

; <label>:1235                                    ; preds = %1227
  %1236 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1237 = fadd fast float %1231, -1.000000e+00
  %1238 = fmul fast float %1236, %1237
  %1239 = fadd fast float %1238, 1.000000e+00
  br label %1240

; <label>:1240                                    ; preds = %1235, %1227
  %1241 = phi float [ %1239, %1235 ], [ %1229, %1227 ]
  %1242 = call float @dx.op.binary.f32(i32 35, float %1231, float %1241)  ; FMax(a,b)
  %1243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.i32 %1243, 2
  %1245 = and i32 %1244, 1
  %1246 = icmp eq i32 %1245, 0
  %1247 = fcmp fast une float %1242, 1.000000e+00
  %1248 = and i1 %1247, %1246
  br i1 %1248, label %1249, label %1268

; <label>:1249                                    ; preds = %1240
  %1250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %1028, float %1029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1256 = fmul fast float %1255, %1251
  %1257 = fmul fast float %1255, %1252
  %1258 = fmul fast float %1255, %1253
  %1259 = fcmp fast ogt float %1231, 0x3FEFFF2E40000000
  %1260 = fsub fast float 1.000000e+00, %1242
  %1261 = fsub fast float 1.000000e+00, %1231
  %1262 = fdiv fast float %1260, %1261
  %1263 = call float @dx.op.unary.f32(i32 7, float %1262)  ; Saturate(value)
  %1264 = select i1 %1259, float 0.000000e+00, float %1263
  %1265 = fmul fast float %1256, %1264
  %1266 = fmul fast float %1257, %1264
  %1267 = fmul fast float %1258, %1264
  br label %1268

; <label>:1268                                    ; preds = %1249, %1240
  %1269 = phi float [ 0.000000e+00, %1240 ], [ %1265, %1249 ]
  %1270 = phi float [ 0.000000e+00, %1240 ], [ %1266, %1249 ]
  %1271 = phi float [ 0.000000e+00, %1240 ], [ %1267, %1249 ]
  %1272 = fmul fast float %1269, %845
  %1273 = fmul fast float %1270, %845
  %1274 = fmul fast float %1271, %845
  %1275 = fmul fast float %1242, %1006
  %1276 = call float @dx.op.dot3.f32(i32 55, float %1242, float %1242, float %1242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1277 = call float @dx.op.dot3.f32(i32 55, float %1272, float %1273, float %1274, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1278 = select i1 %110, float %1276, float %1242
  %1279 = select i1 %110, float 1.000000e+00, float %1242
  %1280 = select i1 %110, float %1277, float %1272
  %1281 = select i1 %110, float 0.000000e+00, float %1273
  %1282 = select i1 %110, float 0.000000e+00, float %1274
  %1283 = fmul fast float %1278, %1018
  %1284 = fmul fast float %1278, %1019
  %1285 = fmul fast float %1279, %1020
  %1286 = fadd fast float %1283, %1280
  %1287 = fadd fast float %1284, %1281
  %1288 = fadd fast float %1282, %1285
  br label %1289

; <label>:1289                                    ; preds = %1268, %1024, %994, %988
  %1290 = phi float [ %990, %988 ], [ %1018, %994 ], [ %1286, %1268 ], [ %1018, %1024 ]
  %1291 = phi float [ %991, %988 ], [ %1019, %994 ], [ %1287, %1268 ], [ %1019, %1024 ]
  %1292 = phi float [ %992, %988 ], [ %1020, %994 ], [ %1288, %1268 ], [ %1020, %1024 ]
  %1293 = phi float [ %993, %988 ], [ %1006, %994 ], [ %1275, %1268 ], [ %1006, %1024 ]
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1296 = extractvalue %dx.types.CBufRet.f32 %1294, 3
  %1297 = fmul fast float %1295, %51
  %1298 = fmul fast float %1296, %52
  %1299 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1300 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1301 = select i1 %881, i32 2, i32 0
  %1302 = or i32 %1301, 1
  %1303 = uitofp i32 %1302 to float
  %1304 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1299, float %1300, float %1303, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.ResRet.f32 %1304, 1
  %1307 = extractvalue %dx.types.ResRet.f32 %1304, 2
  %1308 = extractvalue %dx.types.ResRet.f32 %1304, 3
  %1309 = add nuw nsw i32 %1301, 2
  %1310 = uitofp i32 %1309 to float
  %1311 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1299, float %1300, float %1310, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1312 = extractvalue %dx.types.ResRet.f32 %1311, 0
  %1313 = extractvalue %dx.types.ResRet.f32 %1311, 1
  %1314 = extractvalue %dx.types.ResRet.f32 %1311, 2
  %1315 = extractvalue %dx.types.ResRet.f32 %1311, 3
  %1316 = call float @dx.op.binary.f32(i32 35, float %1306, float %1307)  ; FMax(a,b)
  %1317 = call float @dx.op.binary.f32(i32 35, float %1305, float %1316)  ; FMax(a,b)
  %1318 = call float @dx.op.binary.f32(i32 35, float %1317, float %1308)  ; FMax(a,b)
  %1319 = call float @dx.op.binary.f32(i32 36, float %1313, float %1314)  ; FMin(a,b)
  %1320 = call float @dx.op.binary.f32(i32 36, float %1312, float %1319)  ; FMin(a,b)
  %1321 = call float @dx.op.binary.f32(i32 36, float %1320, float %1315)  ; FMin(a,b)
  %1322 = fmul fast float %1318, 2.550000e+02
  %1323 = fadd fast float %1322, 0x3F70101020000000
  %1324 = fptoui float %1323 to i32
  %1325 = fmul fast float %1321, 2.550000e+02
  %1326 = fadd fast float %1325, 0x3F70101020000000
  %1327 = fptoui float %1326 to i32
  %1328 = icmp ult i32 %1324, %1327
  br i1 %1328, label %1329, label %1381

; <label>:1329                                    ; preds = %1289
  %1330 = fcmp fast ogt float %45, 9.843750e-01
  %1331 = fadd fast float %989, -4.000000e+00
  %1332 = select i1 %1330, float -4.000000e+00, float %1331
  %1333 = call float @dx.op.binary.f32(i32 35, float %1332, float 0.000000e+00)  ; FMax(a,b)
  %1334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1335 = extractvalue %dx.types.CBufRet.f32 %1334, 0
  %1336 = fadd fast float %1335, %1333
  %1337 = extractvalue %dx.types.CBufRet.f32 %1334, 2
  %1338 = fmul fast float %1336, %1337
  %1339 = call float @dx.op.unary.f32(i32 23, float %1338)  ; Log(value)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1334, 3
  %1341 = fmul fast float %1340, %1339
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 2
  %1344 = fmul fast float %1341, %1343
  %1345 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1346 = uitofp i32 %1324 to float
  %1347 = uitofp i32 %1327 to float
  %1348 = fadd fast float %1346, 5.000000e-01
  %1349 = fadd fast float %1347, 5.000000e-01
  %1350 = fmul fast float %1343, %1348
  %1351 = fmul fast float %1343, %1349
  %1352 = fadd fast float %1350, 0x3F0FFB4800000000
  %1353 = fadd fast float %1351, 0xBF0FFB4800000000
  %1354 = call float @dx.op.binary.f32(i32 35, float %1345, float %1352)  ; FMax(a,b)
  %1355 = call float @dx.op.binary.f32(i32 36, float %1354, float %1353)  ; FMin(a,b)
  %1356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1356, 1
  %1358 = extractvalue %dx.types.CBufRet.f32 %1356, 2
  %1359 = extractvalue %dx.types.CBufRet.f32 %1356, 0
  %1360 = select i1 %881, float %1359, float 0.000000e+00
  %1361 = fmul fast float %1357, %1355
  %1362 = fadd fast float %1360, %1361
  %1363 = fadd fast float %1360, %1358
  %1364 = fsub fast float %1357, %1358
  %1365 = fadd fast float %1364, %1360
  %1366 = call float @dx.op.binary.f32(i32 35, float %1362, float %1363)  ; FMax(a,b)
  %1367 = call float @dx.op.binary.f32(i32 36, float %1366, float %1365)  ; FMin(a,b)
  %1368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1299, float %1300, float %1367, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.ResRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.ResRet.f32 %1368, 2
  %1372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1299, float %1300, float %1367, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.ResRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.ResRet.f32 %1372, 2
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 1
  %1378 = fmul fast float %1377, %1373
  %1379 = fmul fast float %1377, %1374
  %1380 = fmul fast float %1377, %1375
  br label %1381

; <label>:1381                                    ; preds = %1329, %1289
  %1382 = phi float [ %1369, %1329 ], [ 1.000000e+00, %1289 ]
  %1383 = phi float [ %1370, %1329 ], [ 1.000000e+00, %1289 ]
  %1384 = phi float [ %1371, %1329 ], [ 1.000000e+00, %1289 ]
  %1385 = phi float [ %1378, %1329 ], [ 0.000000e+00, %1289 ]
  %1386 = phi float [ %1379, %1329 ], [ 0.000000e+00, %1289 ]
  %1387 = phi float [ %1380, %1329 ], [ 0.000000e+00, %1289 ]
  %1388 = fmul fast float %1385, %845
  %1389 = fmul fast float %1386, %845
  %1390 = fmul fast float %1387, %845
  %1391 = fmul fast float %1382, %1293
  %1392 = call float @dx.op.dot3.f32(i32 55, float %1382, float %1383, float %1384, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1393 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1389, float %1390, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1394 = select i1 %110, float %1392, float %1382
  %1395 = select i1 %110, float %1392, float %1383
  %1396 = select i1 %110, float 1.000000e+00, float %1384
  %1397 = select i1 %110, float %1393, float %1388
  %1398 = select i1 %110, float 0.000000e+00, float %1389
  %1399 = select i1 %110, float 0.000000e+00, float %1390
  %1400 = fmul fast float %1394, %1290
  %1401 = fmul fast float %1395, %1291
  %1402 = fmul fast float %1396, %1292
  %1403 = fadd fast float %1400, %1397
  %1404 = fadd fast float %1401, %1398
  %1405 = fadd fast float %1399, %1402
  %1406 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1407 = extractvalue %dx.types.CBufRet.i32 %1406, 3
  %1408 = and i32 %1407, 3
  %1409 = icmp ne i32 %1408, 0
  %1410 = and i32 %1407, 4
  %1411 = icmp ne i32 %1410, 0
  %1412 = and i1 %1409, %1411
  %1413 = and i1 %110, %1412
  br i1 %1413, label %1414, label %1420

; <label>:1414                                    ; preds = %1381
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 1
  %1417 = fadd fast float %1391, -1.000000e+00
  %1418 = fmul fast float %1416, %1417
  %1419 = fadd fast float %1418, 1.000000e+00
  br label %1420

; <label>:1420                                    ; preds = %1414, %1381
  %1421 = phi float [ %1419, %1414 ], [ %1391, %1381 ]
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  br i1 %110, label %1424, label %1446

; <label>:1424                                    ; preds = %1420
  %1425 = fadd fast float %1403, %1404
  %1426 = fmul fast float %1423, %1425
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 3
  %1429 = extractvalue %dx.types.CBufRet.f32 %850, 1
  %1430 = fsub fast float %853, %1429
  %1431 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %1432 = fmul fast float %1430, %1431
  %1433 = call float @dx.op.unary.f32(i32 7, float %1432)  ; Saturate(value)
  %1434 = fsub fast float %1433, %1428
  %1435 = fmul fast float %1434, %1421
  %1436 = fadd fast float %1435, %1428
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 0
  %1439 = fsub fast float %1436, %1438
  %1440 = fmul fast float %1439, 1.000000e+01
  %1441 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1442 = fsub fast float %788, %845
  %1443 = fmul fast float %1441, %1442
  %1444 = fadd fast float %1443, %845
  %1445 = fmul fast float %1444, %1436
  br label %1455

; <label>:1446                                    ; preds = %1420
  %1447 = fmul fast float %1423, %1403
  %1448 = fmul fast float %1423, %1404
  %1449 = fmul fast float %1423, %1405
  %1450 = call float @dx.op.binary.f32(i32 35, float %1448, float %1449)  ; FMax(a,b)
  %1451 = call float @dx.op.binary.f32(i32 35, float %1447, float %1450)  ; FMax(a,b)
  %1452 = call float @dx.op.binary.f32(i32 35, float %1451, float %845)  ; FMax(a,b)
  %1453 = fcmp fast ugt float %1452, 0x3F10000000000000
  br i1 %1453, label %1455, label %1454

; <label>:1454                                    ; preds = %1446
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1455

; <label>:1455                                    ; preds = %1454, %1446, %1424
  %1456 = phi float [ %1426, %1424 ], [ %1447, %1454 ], [ %1447, %1446 ]
  %1457 = phi float [ %1445, %1424 ], [ %1448, %1454 ], [ %1448, %1446 ]
  %1458 = phi float [ %1444, %1424 ], [ %1449, %1454 ], [ %1449, %1446 ]
  %1459 = phi float [ %1444, %1424 ], [ %845, %1454 ], [ %845, %1446 ]
  %1460 = fadd fast float %539, 0x3FE3C6EF40000000
  %1461 = call float @dx.op.unary.f32(i32 22, float %1460)  ; Frc(value)
  %1462 = call float @dx.op.unary.f32(i32 23, float %1456)  ; Log(value)
  %1463 = fadd fast float %1462, -7.000000e+00
  %1464 = call float @dx.op.unary.f32(i32 21, float %1463)  ; Exp(value)
  %1465 = fmul fast float %1461, 2.000000e+00
  %1466 = fadd fast float %1465, -1.000000e+00
  %1467 = fmul fast float %1464, %1466
  %1468 = fcmp fast ogt float %1456, 0.000000e+00
  %1469 = select i1 %1468, float %1467, float 0.000000e+00
  %1470 = fadd fast float %1469, %1456
  %1471 = fadd fast float %539, 0x3FF3C6EF40000000
  %1472 = call float @dx.op.unary.f32(i32 22, float %1471)  ; Frc(value)
  %1473 = call float @dx.op.unary.f32(i32 23, float %1457)  ; Log(value)
  %1474 = fadd fast float %1473, -7.000000e+00
  %1475 = call float @dx.op.unary.f32(i32 21, float %1474)  ; Exp(value)
  %1476 = fmul fast float %1472, 2.000000e+00
  %1477 = fadd fast float %1476, -1.000000e+00
  %1478 = fmul fast float %1475, %1477
  %1479 = fcmp fast ogt float %1457, 0.000000e+00
  %1480 = select i1 %1479, float %1478, float 0.000000e+00
  %1481 = fadd fast float %1480, %1457
  %1482 = fadd fast float %539, 0x3FFDAA66E0000000
  %1483 = call float @dx.op.unary.f32(i32 22, float %1482)  ; Frc(value)
  %1484 = call float @dx.op.unary.f32(i32 23, float %1458)  ; Log(value)
  %1485 = fadd fast float %1484, -6.000000e+00
  %1486 = call float @dx.op.unary.f32(i32 21, float %1485)  ; Exp(value)
  %1487 = fmul fast float %1483, 2.000000e+00
  %1488 = fadd fast float %1487, -1.000000e+00
  %1489 = fmul fast float %1486, %1488
  %1490 = fcmp fast ogt float %1458, 0.000000e+00
  %1491 = select i1 %1490, float %1489, float 0.000000e+00
  %1492 = fadd fast float %1491, %1458
  %1493 = select i1 %110, float %1457, float %1481
  %1494 = select i1 %110, float %1458, float %1492
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1495 = call float @dx.op.binary.f32(i32 36, float %1470, float 3.225500e+04)  ; FMin(a,b)
  %1496 = call float @dx.op.binary.f32(i32 36, float %1493, float 3.225500e+04)  ; FMin(a,b)
  %1497 = call float @dx.op.binary.f32(i32 36, float %1494, float 3.225500e+04)  ; FMin(a,b)
  %1498 = call float @dx.op.binary.f32(i32 36, float %1459, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1495)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1496)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1497)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1498)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1459)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1459)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1459)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1459)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!34 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 1, i32 3, i32 4, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255]}
!35 = !{void ()* @ps_main, !"ps_main", !36, !4, !60}
!36 = !{!37, !56, null}
!37 = !{!38, !41, !42, !44, !47, !49, !51, !53, !54, !55}
!38 = !{i32 0, !"SV_Position", i8 9, i8 3, !39, i8 4, i32 1, i8 4, i32 0, i8 0, !40}
!39 = !{i32 0}
!40 = !{i32 3, i32 15}
!41 = !{i32 1, !"COLOR", i8 9, i8 0, !39, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 1, i32 1, i8 4, i32 3, i8 0, !46}
!45 = !{i32 2}
!46 = !{i32 3, i32 7}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 4, i8 0, !46}
!48 = !{i32 3}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 3, i32 1, i8 2, i32 5, i8 0, !43}
!50 = !{i32 5}
!51 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, null}
!52 = !{i32 8}
!53 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !39, i8 1, i32 1, i8 4, i32 7, i8 0, !40}
!54 = !{i32 8, !"COLOR", i8 5, i8 0, !48, i8 1, i32 1, i8 3, i32 8, i8 0, !46}
!55 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !39, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
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
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}

