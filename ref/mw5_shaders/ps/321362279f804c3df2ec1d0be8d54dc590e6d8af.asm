;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 1   xyz         3     NONE   float   xyz 
; TEXCOORD                 2   xyzw        4     NONE   float   xyz 
; TEXCOORD                 3   xyzw        5     NONE   float   xyz 
; TEXCOORD                 5   xy          6     NONE   float   xy  
; TEXCOORD                 8   xyzw        7     NONE   float       
; QUAD_POSITION            0   xyzw        8     NONE   float   xyzw
; COLOR                    3   xyz         9     NONE    uint   xyz 
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
; shader hash: 74ba6bcc5890723ecce48c0b5fcea008
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
; TEXCOORD                 1                 linear       
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1     t37,space2     1
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3     t77,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture     f32          2d      T9     t12,space2     1
;                                   texture     f32          3d     T10     t44,space2     1
;                                   texture     f32          3d     T11     t45,space2     1
;                                   texture     f32     2darray     T12     t47,space2     1
;                                   textureunorm_f32     2darray     T13     t85,space2     1
;                                   texture     f32          2d     T14     t83,space2     1
;                                   texture     f32          2d     T15     t86,space2     1
;                                   texture     f32     2darray     T16             t1     1
;                                   texture    byte         r/o     T17             t2     1
;
;
; ViewId state:
;
; Number of inputs: 39, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 37, 38 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 37, 38 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 37, 38 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 37, 38 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 37, 38 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 37, 38 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 24, 25, 32, 33, 34, 35, 36, 37, 38 }
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
%struct.SamplerComparisonState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = fmul fast float %55, %48
  %57 = fmul fast float %55, %49
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fmul fast float %56, 2.000000e+00
  %62 = fmul fast float %61, %59
  %63 = fmul fast float %57, 2.000000e+00
  %64 = fmul fast float %63, %60
  %65 = fsub fast float 1.000000e+00, %62
  %66 = fsub fast float 1.000000e+00, %64
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fmul fast float %65, %68
  %72 = fmul fast float %65, %69
  %73 = fmul fast float %65, %70
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = fmul fast float %66, %75
  %79 = fmul fast float %66, %76
  %80 = fmul fast float %66, %77
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fadd fast float %78, %82
  %86 = fadd fast float %85, %71
  %87 = fadd fast float %79, %83
  %88 = fadd fast float %87, %72
  %89 = fadd fast float %80, %84
  %90 = fadd fast float %89, %73
  %91 = fmul fast float %86, %51
  %92 = fmul fast float %88, %51
  %93 = fmul fast float %90, %51
  %94 = bitcast i32 %25 to float
  %95 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.i32 %95, 3
  %97 = and i32 %96, 3
  %98 = icmp ne i32 %97, 0
  %99 = and i32 %96, 4
  %100 = icmp ne i32 %99, 0
  %101 = and i1 %98, %100
  br i1 %101, label %102, label %111

; <label>:102                                     ; preds = %0
  %103 = fmul fast float %60, %57
  %104 = fmul fast float %59, %56
  %105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %104, float %103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = fsub fast float 1.000000e+00, %106
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fcmp fast olt float %107, %109
  br label %114

; <label>:111                                     ; preds = %0
  %112 = icmp eq i32 %99, 0
  %113 = and i1 %98, %112
  br label %114

; <label>:114                                     ; preds = %111, %102
  %115 = phi i1 [ %110, %102 ], [ %113, %111 ]
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 3
  %119 = fmul fast float %117, %56
  %120 = fmul fast float %118, %57
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = and i32 %122, 114688
  %124 = icmp ne i32 %123, 0
  %125 = select i1 %124, float %119, float 0.000000e+00
  %126 = select i1 %124, float %120, float 0.000000e+00
  %127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %125, float %126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = fmul fast float %128, 2.550000e+02
  %130 = fptoui float %129 to i32
  %131 = select i1 %124, i32 %130, i32 0
  %132 = mul i32 %24, 208
  %133 = add i32 %132, 188
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = and i32 %96, 114688
  %137 = and i32 %96, 8
  %138 = icmp ne i32 %137, 0
  %139 = or i1 %115, %138
  %140 = select i1 %139, i32 %136, i32 16384
  %141 = and i32 %140, %135
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

; <label>:143                                     ; preds = %114
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %144

; <label>:144                                     ; preds = %143, %114
  %145 = and i32 %135, 512
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %171, label %147

; <label>:147                                     ; preds = %144
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %151 = fmul fast float %149, %56
  %152 = fmul fast float %150, %57
  %153 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %155 = fdiv fast float %153, %154
  %156 = fcmp fast ogt float %155, 0x3FFC71C720000000
  br i1 %156, label %157, label %163

; <label>:157                                     ; preds = %147
  %158 = fdiv fast float 0x3FFC71C720000000, %155
  %159 = fmul fast float %158, %152
  %160 = fsub fast float 1.000000e+00, %158
  %161 = fmul fast float %160, 5.000000e-01
  %162 = fadd fast float %161, %159
  br label %171

; <label>:163                                     ; preds = %147
  %164 = fcmp fast olt float %155, 0x3FFC71C720000000
  br i1 %164, label %165, label %171

; <label>:165                                     ; preds = %163
  %166 = fmul fast float %151, 5.625000e-01
  %167 = fmul fast float %166, %155
  %168 = fmul fast float %155, 2.812500e-01
  %169 = fsub fast float 5.000000e-01, %168
  %170 = fadd fast float %169, %167
  br label %171

; <label>:171                                     ; preds = %165, %163, %157, %144
  %172 = phi float [ %42, %144 ], [ %151, %157 ], [ %170, %165 ], [ %151, %163 ]
  %173 = phi float [ %43, %144 ], [ %162, %157 ], [ %152, %165 ], [ %152, %163 ]
  %174 = fadd fast float %42, %36
  %175 = fadd fast float %43, %37
  %176 = add i32 %26, 72
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = extractvalue %dx.types.ResRet.i32 %177, 1
  %180 = bitcast i32 %178 to float
  %181 = bitcast i32 %179 to float
  %182 = fmul fast float %180, %42
  %183 = fmul fast float %181, %43
  %184 = call float @dx.op.unary.f32(i32 22, float %182)  ; Frc(value)
  %185 = call float @dx.op.unary.f32(i32 22, float %183)  ; Frc(value)
  %186 = and i32 %135, 16
  %187 = icmp ne i32 %186, 0
  %188 = select i1 %187, float 1.000000e+00, float %47
  %189 = icmp eq i32 %186, 0
  br i1 %189, label %209, label %190, !dx.controlflow.hints !64

; <label>:190                                     ; preds = %171
  %191 = add i32 %132, 64
  %192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fadd fast float %193, 1.000000e+00
  %195 = fmul fast float %194, %47
  %196 = fsub fast float %195, %193
  %197 = fsub fast float %194, %196
  %198 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %199 = fsub fast float 1.000000e+00, %195
  %200 = call float @dx.op.unary.f32(i32 7, float %199)  ; Saturate(value)
  %201 = fsub fast float %198, %200
  %202 = fsub fast float %188, %200
  %203 = fdiv fast float %202, %201
  %204 = call float @dx.op.unary.f32(i32 7, float %203)  ; Saturate(value)
  %205 = fmul fast float %204, 2.000000e+00
  %206 = fsub fast float 3.000000e+00, %205
  %207 = fmul fast float %204, %204
  %208 = fmul fast float %207, %206
  br label %209

; <label>:209                                     ; preds = %190, %171
  %210 = phi float [ %208, %190 ], [ %188, %171 ]
  %211 = fcmp fast ogt float %210, 0.000000e+00
  br i1 %211, label %213, label %212

; <label>:212                                     ; preds = %209
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %213

; <label>:213                                     ; preds = %212, %209
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 1
  %216 = fsub fast float %39, %215
  %217 = fsub fast float %40, %215
  %218 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %21, float %216, float %217, float undef, float undef, i32 0, i32 0, i32 undef, float %41)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = fmul fast float %219, %210
  %221 = fmul fast float %219, %47
  %222 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %223 = fmul fast float %56, 5.000000e-01
  %224 = fmul fast float %57, 5.000000e-01
  %225 = fptosi float %223 to i32
  %226 = fptosi float %224 to i32
  %227 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %225, i32 %226, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = lshr i32 %228, 18
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F4C00EBA0000000
  %232 = call float @dx.op.unary.f32(i32 21, float %231)  ; Exp(value)
  %233 = fadd fast float %232, -1.000000e+00
  %234 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %235 = extractvalue %dx.types.Dimensions %234, 0
  %236 = sitofp i32 %235 to float
  %237 = extractvalue %dx.types.Dimensions %234, 1
  %238 = sitofp i32 %237 to float
  %239 = fcmp fast oge float %223, %236
  %240 = fcmp fast oge float %224, %238
  %241 = or i1 %239, %240
  %242 = select i1 %241, float 0x4197782600000000, float %233
  %243 = fsub fast float %242, %51
  %244 = fcmp fast ogt float %243, 0.000000e+00
  %245 = and i32 %131, -2
  %246 = icmp eq i32 %245, 2
  %247 = and i1 %246, %244
  %248 = xor i1 %244, true
  %249 = icmp eq i32 %131, 1
  %250 = and i1 %249, %248
  %251 = or i1 %247, %250
  %252 = and i32 %135, 262144
  %253 = icmp ne i32 %252, 0
  %254 = and i1 %253, %251
  %255 = xor i1 %251, true
  %256 = and i32 %135, 131072
  %257 = icmp ne i32 %256, 0
  %258 = and i1 %257, %255
  %259 = or i1 %254, %258
  br i1 %259, label %260, label %261

; <label>:260                                     ; preds = %213
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %261

; <label>:261                                     ; preds = %260, %213
  %262 = and i32 %135, 32
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %514, label %264, !dx.controlflow.hints !65

; <label>:264                                     ; preds = %261
  %265 = add i32 %132, 80
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = extractvalue %dx.types.ResRet.f32 %266, 1
  %269 = extractvalue %dx.types.ResRet.f32 %266, 2
  %270 = extractvalue %dx.types.ResRet.f32 %266, 3
  %271 = add i32 %132, 96
  %272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = extractvalue %dx.types.ResRet.f32 %272, 2
  %276 = add i32 %132, 112
  %277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = extractvalue %dx.types.ResRet.f32 %277, 1
  %280 = extractvalue %dx.types.ResRet.f32 %277, 2
  %281 = extractvalue %dx.types.ResRet.f32 %277, 3
  %282 = add i32 %132, 128
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = extractvalue %dx.types.ResRet.f32 %283, 3
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 4096
  %291 = icmp ne i32 %290, 0
  %292 = fcmp fast une float %275, 0.000000e+00
  %293 = and i32 %289, 64
  %294 = icmp ne i32 %293, 0
  %295 = and i32 %289, 128
  %296 = icmp eq i32 %295, 0
  %297 = and i32 %289, 2048
  %298 = icmp eq i32 %297, 0
  %299 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %300 = extractvalue %dx.types.Dimensions %299, 0
  %301 = sitofp i32 %300 to float
  %302 = extractvalue %dx.types.Dimensions %299, 1
  %303 = sitofp i32 %302 to float
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 2
  %306 = extractvalue %dx.types.CBufRet.f32 %304, 3
  %307 = fmul fast float %305, %56
  %308 = fmul fast float %306, %57
  %309 = fmul fast float %307, %301
  %310 = fmul fast float %308, %303
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %313 = fsub fast float -0.000000e+00, %312
  %314 = fptoui float %313 to i32
  %315 = fptoui float %309 to i32
  %316 = fptoui float %310 to i32
  %317 = and i32 %314, 31
  %318 = lshr i32 %315, %317
  %319 = lshr i32 %316, %317
  %320 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %314, i32 %318, i32 %319, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %321 = extractvalue %dx.types.ResRet.f32 %320, 0
  %322 = fcmp fast ogt float %321, -1.000000e+00
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %325 = select i1 %322, float %324, float 1.000000e+00
  %326 = fadd fast float %321, 1.000000e+00
  %327 = fmul fast float %325, %326
  %328 = call float @dx.op.unary.f32(i32 6, float %327)  ; FAbs(value)
  %329 = extractvalue %dx.types.CBufRet.f32 %323, 3
  %330 = fcmp fast oge float %328, %329
  %331 = select i1 %330, float 0x4197782600000000, float %328
  br i1 %298, label %409, label %332, !dx.controlflow.hints !66

; <label>:332                                     ; preds = %264
  %333 = fmul fast float %61, %305
  %334 = fmul fast float %63, %306
  %335 = fsub fast float 1.000000e+00, %333
  %336 = fsub fast float 1.000000e+00, %334
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 0
  %339 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %340 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %341 = fmul fast float %335, %338
  %342 = fmul fast float %335, %339
  %343 = fmul fast float %335, %340
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %348 = fmul fast float %336, %345
  %349 = fmul fast float %336, %346
  %350 = fmul fast float %336, %347
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 0
  %353 = extractvalue %dx.types.CBufRet.f32 %351, 1
  %354 = extractvalue %dx.types.CBufRet.f32 %351, 2
  %355 = fadd fast float %348, %352
  %356 = fadd fast float %355, %341
  %357 = fadd fast float %349, %353
  %358 = fadd fast float %357, %342
  %359 = fadd fast float %350, %354
  %360 = fadd fast float %359, %343
  %361 = fmul fast float %356, %331
  %362 = fmul fast float %358, %331
  %363 = fmul fast float %360, %331
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %366 = extractvalue %dx.types.CBufRet.f32 %364, 1
  %367 = extractvalue %dx.types.CBufRet.f32 %364, 2
  %368 = fsub fast float %365, %27
  %369 = fadd fast float %368, %361
  %370 = fsub fast float %366, %28
  %371 = fadd fast float %370, %362
  %372 = fsub fast float %367, %29
  %373 = fadd fast float %372, %363
  %374 = fmul fast float %30, %30
  %375 = call float @dx.op.dot3.f32(i32 55, float %369, float %371, float %373, float %369, float %371, float %373)  ; Dot3(ax,ay,az,bx,by,bz)
  %376 = fsub fast float %374, %375
  %377 = fmul fast float %274, %374
  %378 = fmul fast float %273, %374
  %379 = fcmp fast olt float %376, %377
  %380 = fcmp fast ogt float %376, %378
  %381 = or i1 %379, %380
  %382 = select i1 %381, float 0.000000e+00, float %376
  %383 = fsub fast float %273, %274
  %384 = fmul fast float %383, %374
  %385 = fsub fast float %382, %377
  %386 = fdiv fast float %385, %384
  %387 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %388 = fmul fast float %387, 2.000000e+00
  %389 = fsub fast float 3.000000e+00, %388
  %390 = fmul fast float %387, %387
  %391 = fmul fast float %390, %389
  %392 = fmul fast float %278, %44
  %393 = fmul fast float %279, %45
  %394 = fmul fast float %280, %46
  %395 = fsub fast float %392, %284
  %396 = fsub fast float %393, %285
  %397 = fsub fast float %394, %286
  %398 = fsub fast float %281, %287
  %399 = fmul fast float %391, %395
  %400 = fmul fast float %391, %396
  %401 = fmul fast float %391, %397
  %402 = fmul fast float %391, %398
  %403 = fadd fast float %399, %284
  %404 = fadd fast float %400, %285
  %405 = fadd fast float %401, %286
  %406 = fadd fast float %402, %287
  %407 = fmul fast float %267, %267
  %408 = fmul fast float %407, %382
  br label %504

; <label>:409                                     ; preds = %264
  %410 = and i32 %289, 256
  %411 = icmp eq i32 %410, 0
  %412 = fsub fast float %331, %51
  br i1 %411, label %461, label %413

; <label>:413                                     ; preds = %409
  %414 = fadd fast float %273, %51
  %415 = fcmp fast olt float %331, %51
  %416 = fcmp fast ogt float %331, %414
  %417 = or i1 %415, %416
  %418 = select i1 %417, float 0.000000e+00, float %412
  %419 = call float @dx.op.unary.f32(i32 83, float %331)  ; DerivCoarseX(value)
  %420 = call float @dx.op.unary.f32(i32 84, float %331)  ; DerivCoarseY(value)
  %421 = fmul fast float %419, %419
  %422 = fmul fast float %420, %420
  %423 = fadd fast float %422, %421
  %424 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %425 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %426 = fmul fast float %425, %424
  %427 = call float @dx.op.unary.f32(i32 7, float %426)  ; Saturate(value)
  %428 = fmul fast float %427, %274
  %429 = fdiv fast float %412, %428
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %431 = fmul fast float %430, 2.000000e+00
  %432 = fsub fast float 3.000000e+00, %431
  %433 = fmul fast float %430, %430
  %434 = fmul fast float %433, %432
  %435 = fsub fast float %331, %414
  %436 = fadd fast float %435, %428
  %437 = fdiv fast float %436, %428
  %438 = call float @dx.op.unary.f32(i32 7, float %437)  ; Saturate(value)
  %439 = fmul fast float %438, 2.000000e+00
  %440 = fsub fast float 3.000000e+00, %439
  %441 = fmul fast float %438, %438
  %442 = fmul fast float %441, %440
  %443 = fsub fast float %434, %442
  %444 = fmul fast float %278, %44
  %445 = fmul fast float %279, %45
  %446 = fmul fast float %280, %46
  %447 = fsub fast float %444, %284
  %448 = fsub fast float %445, %285
  %449 = fsub fast float %446, %286
  %450 = fsub fast float %281, %287
  %451 = fmul fast float %443, %447
  %452 = fmul fast float %443, %448
  %453 = fmul fast float %443, %449
  %454 = fmul fast float %443, %450
  %455 = fadd fast float %451, %284
  %456 = fadd fast float %452, %285
  %457 = fadd fast float %453, %286
  %458 = fadd fast float %454, %287
  %459 = fmul fast float %418, %267
  %460 = call float @dx.op.unary.f32(i32 6, float %459)  ; FAbs(value)
  br label %504

; <label>:461                                     ; preds = %409
  br i1 %292, label %462, label %475

; <label>:462                                     ; preds = %461
  %463 = fdiv fast float 5.000000e+01, %30
  %464 = select i1 %294, float %463, float 1.000000e+00
  %465 = fmul fast float %464, %267
  %466 = fmul fast float %184, 2.000000e+00
  %467 = fmul fast float %185, 2.000000e+00
  %468 = fadd fast float %466, -1.000000e+00
  %469 = fadd fast float %467, -1.000000e+00
  %470 = call float @dx.op.dot2.f32(i32 54, float %468, float %469, float %468, float %469)  ; Dot2(ax,ay,bx,by)
  %471 = fmul fast float %275, %30
  %472 = fmul fast float %471, %470
  %473 = fsub fast float %412, %472
  %474 = fmul fast float %465, %473
  br label %504

; <label>:475                                     ; preds = %461
  br i1 %296, label %496, label %476

; <label>:476                                     ; preds = %475
  %477 = fmul fast float %30, 0x3F947AE140000000
  %478 = select i1 %294, float %477, float 1.000000e+00
  %479 = fdiv fast float 1.000000e+00, %478
  %480 = fmul fast float %478, %268
  %481 = fmul fast float %478, %269
  %482 = fmul fast float %479, %270
  %483 = call float @dx.op.unary.f32(i32 6, float %412)  ; FAbs(value)
  %484 = fcmp fast olt float %483, %480
  br i1 %484, label %485, label %489, !dx.controlflow.hints !67

; <label>:485                                     ; preds = %476
  %486 = fmul fast float %479, %267
  %487 = fmul fast float %486, %483
  %488 = call float @dx.op.unary.f32(i32 6, float %487)  ; FAbs(value)
  br label %504

; <label>:489                                     ; preds = %476
  %490 = fcmp fast ogt float %483, %481
  br i1 %490, label %491, label %504

; <label>:491                                     ; preds = %489
  %492 = fsub fast float %483, %481
  %493 = fmul fast float %482, %492
  %494 = call float @dx.op.unary.f32(i32 6, float %493)  ; FAbs(value)
  %495 = fsub fast float 1.000000e+00, %494
  br label %504

; <label>:496                                     ; preds = %475
  %497 = fdiv fast float 5.000000e+01, %30
  %498 = select i1 %294, float %497, float 1.000000e+00
  %499 = fmul fast float %498, %267
  %500 = call float @dx.op.unary.f32(i32 6, float %243)  ; FAbs(value)
  %501 = select i1 %291, float %500, float 0x47EFFFFFE0000000
  %502 = call float @dx.op.binary.f32(i32 36, float %412, float %501)  ; FMin(a,b)
  %503 = fmul fast float %499, %502
  br label %504

; <label>:504                                     ; preds = %496, %491, %489, %485, %462, %413, %332
  %505 = phi float [ %408, %332 ], [ %460, %413 ], [ %474, %462 ], [ %503, %496 ], [ %488, %485 ], [ %495, %491 ], [ %483, %489 ]
  %506 = phi float [ %403, %332 ], [ %455, %413 ], [ %44, %462 ], [ %44, %496 ], [ %44, %485 ], [ %44, %491 ], [ %44, %489 ]
  %507 = phi float [ %404, %332 ], [ %456, %413 ], [ %45, %462 ], [ %45, %496 ], [ %45, %485 ], [ %45, %491 ], [ %45, %489 ]
  %508 = phi float [ %405, %332 ], [ %457, %413 ], [ %46, %462 ], [ %46, %496 ], [ %46, %485 ], [ %46, %491 ], [ %46, %489 ]
  %509 = phi float [ %406, %332 ], [ %458, %413 ], [ 1.000000e+00, %462 ], [ 1.000000e+00, %496 ], [ 1.000000e+00, %485 ], [ 1.000000e+00, %491 ], [ 1.000000e+00, %489 ]
  %510 = call float @dx.op.unary.f32(i32 7, float %505)  ; Saturate(value)
  %511 = fmul fast float %510, %221
  %512 = fmul fast float %509, %222
  %513 = fmul fast float %512, %510
  br label %514

; <label>:514                                     ; preds = %504, %261
  %515 = phi float [ %506, %504 ], [ %44, %261 ]
  %516 = phi float [ %507, %504 ], [ %45, %261 ]
  %517 = phi float [ %508, %504 ], [ %46, %261 ]
  %518 = phi float [ %513, %504 ], [ %222, %261 ]
  %519 = phi float [ %511, %504 ], [ %221, %261 ]
  %520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %521 = extractvalue %dx.types.CBufRet.f32 %520, 2
  %522 = fptosi float %51 to i32
  %523 = sitofp i32 %522 to float
  %524 = fadd fast float %521, %523
  %525 = fmul fast float %524, 0x3FE3C6EF40000000
  %526 = frem fast float %56, 2.560000e+02
  %527 = frem fast float %57, 2.560000e+02
  %528 = fptoui float %526 to i32
  %529 = fptoui float %527 to i32
  %530 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %528, i32 %529, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = fadd fast float %531, %525
  %533 = call float @dx.op.unary.f32(i32 22, float %532)  ; Frc(value)
  %534 = and i32 %135, 1
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %593, label %536, !dx.controlflow.hints !68

; <label>:536                                     ; preds = %514
  %537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 2
  %539 = extractvalue %dx.types.ResRet.f32 %537, 3
  %540 = add i32 %132, 16
  %541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = extractvalue %dx.types.ResRet.f32 %541, 1
  %544 = extractvalue %dx.types.ResRet.f32 %541, 2
  %545 = add i32 %132, 32
  %546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = extractvalue %dx.types.ResRet.f32 %546, 1
  %549 = extractvalue %dx.types.ResRet.f32 %546, 2
  %550 = and i32 %135, 2
  %551 = icmp eq i32 %550, 0
  %552 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %553 = call float @dx.op.unary.f32(i32 25, float %552)  ; Rsqrt(value)
  %554 = fmul fast float %553, %33
  %555 = fmul fast float %553, %34
  %556 = fmul fast float %553, %35
  %557 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %558 = call float @dx.op.unary.f32(i32 25, float %557)  ; Rsqrt(value)
  %559 = fmul fast float %558, %91
  %560 = fmul fast float %558, %92
  %561 = fmul fast float %558, %93
  %562 = call float @dx.op.dot3.f32(i32 55, float %559, float %560, float %561, float %554, float %555, float %556)  ; Dot3(ax,ay,az,bx,by,bz)
  %563 = fmul fast float %562, %562
  %564 = fmul fast float %563, %538
  %565 = fadd fast float %564, %539
  %566 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  br i1 %551, label %567, label %577, !dx.controlflow.hints !69

; <label>:567                                     ; preds = %536
  %568 = extractvalue %dx.types.ResRet.f32 %537, 1
  %569 = extractvalue %dx.types.ResRet.f32 %537, 0
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 3
  %572 = fmul fast float %571, %557
  %573 = fsub fast float %569, %572
  %574 = fmul fast float %573, %568
  %575 = call float @dx.op.unary.f32(i32 7, float %574)  ; Saturate(value)
  %576 = fmul fast float %575, %566
  br label %577

; <label>:577                                     ; preds = %567, %536
  %578 = phi float [ %576, %567 ], [ %566, %536 ]
  %579 = fsub fast float %542, %547
  %580 = fsub fast float %543, %548
  %581 = fsub fast float %544, %549
  %582 = fmul fast float %578, %579
  %583 = fmul fast float %578, %580
  %584 = fmul fast float %578, %581
  %585 = fadd fast float %582, %547
  %586 = fadd fast float %583, %548
  %587 = fadd fast float %584, %549
  %588 = fmul fast float %585, %515
  %589 = fmul fast float %586, %516
  %590 = fmul fast float %587, %517
  %591 = fmul fast float %578, %518
  %592 = fmul fast float %578, %519
  br label %593

; <label>:593                                     ; preds = %577, %514
  %594 = phi float [ %588, %577 ], [ %515, %514 ]
  %595 = phi float [ %589, %577 ], [ %516, %514 ]
  %596 = phi float [ %590, %577 ], [ %517, %514 ]
  %597 = phi float [ %591, %577 ], [ %518, %514 ]
  %598 = phi float [ %592, %577 ], [ %519, %514 ]
  %599 = add i32 %26, 120
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = add i32 %601, 0
  %603 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %602, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %604 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %603, %dx.types.Handle %52, float %172, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = add i32 %26, 56
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = and i32 %610, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = lshr i32 %610, 8
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F70101020000000
  %618 = lshr i32 %610, 16
  %619 = and i32 %618, 255
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = fmul fast float %613, %613
  %623 = fmul fast float %622, %605
  %624 = fmul fast float %617, %617
  %625 = fmul fast float %624, %606
  %626 = fmul fast float %621, %621
  %627 = fmul fast float %626, %607
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = add i32 %629, 0
  %631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %632 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %52, float %174, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  %634 = extractvalue %dx.types.ResRet.f32 %632, 1
  %635 = extractvalue %dx.types.ResRet.f32 %632, 2
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = and i32 %637, 255
  %639 = uitofp i32 %638 to float
  %640 = fmul fast float %639, 0x3F70101020000000
  %641 = lshr i32 %637, 8
  %642 = and i32 %641, 255
  %643 = uitofp i32 %642 to float
  %644 = fmul fast float %643, 0x3F70101020000000
  %645 = lshr i32 %637, 16
  %646 = and i32 %645, 255
  %647 = uitofp i32 %646 to float
  %648 = fmul fast float %647, 0x3F70101020000000
  %649 = fmul fast float %640, %640
  %650 = fmul fast float %649, %633
  %651 = fmul fast float %644, %644
  %652 = fmul fast float %651, %634
  %653 = fmul fast float %648, %648
  %654 = fmul fast float %653, %635
  %655 = fsub fast float %650, %623
  %656 = fsub fast float %652, %625
  %657 = fsub fast float %654, %627
  %658 = fmul fast float %655, %38
  %659 = fmul fast float %656, %38
  %660 = fmul fast float %657, %38
  %661 = fadd fast float %658, %623
  %662 = fadd fast float %659, %625
  %663 = fadd fast float %660, %627
  %664 = fmul fast float %661, %594
  %665 = fmul fast float %662, %595
  %666 = fmul fast float %663, %596
  %667 = add i32 %26, 40
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = fmul fast float %671, 0x3F70101020000000
  %673 = fmul fast float %672, %672
  %674 = add i32 %26, 128
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = add i32 %676, 0
  %678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %677, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %679 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %678, %dx.types.Handle %53, float %172, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = fmul fast float %673, %680
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 255
  %685 = uitofp i32 %684 to float
  %686 = fmul fast float %685, 0x3F70101020000000
  %687 = fmul fast float %686, %686
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = add i32 %689, 0
  %691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %690, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %692 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %691, %dx.types.Handle %53, float %174, float %175, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = fmul fast float %687, %693
  %695 = fsub fast float %694, %681
  %696 = fmul fast float %695, %38
  %697 = fadd fast float %696, %681
  %698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = extractvalue %dx.types.ResRet.f32 %698, 1
  %701 = extractvalue %dx.types.ResRet.f32 %698, 2
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 1
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 0
  %706 = fmul fast float %664, %705
  %707 = fmul fast float %665, %705
  %708 = fmul fast float %666, %705
  %709 = call float @dx.op.dot3.f32(i32 55, float %706, float %707, float %708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %710 = add i32 %26, 32
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = and i32 %712, 255
  %714 = uitofp i32 %713 to float
  %715 = lshr i32 %712, 8
  %716 = and i32 %715, 255
  %717 = uitofp i32 %716 to float
  %718 = fmul fast float %717, %709
  %719 = fadd fast float %718, %714
  %720 = fmul fast float %719, 0x3F70101020000000
  %721 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %722 = add i32 %26, 124
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = add i32 %724, 0
  %726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %726, %dx.types.Handle %53, float %172, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = and i32 %135, 8192
  %730 = icmp eq i32 %729, 0
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 0
  br i1 %730, label %743, label %733, !dx.controlflow.hints !70

; <label>:733                                     ; preds = %593
  %734 = add i32 %132, 176
  %735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.f32 %735, 0
  %737 = extractvalue %dx.types.ResRet.f32 %735, 1
  %738 = fcmp fast oge float %736, 0.000000e+00
  %739 = select i1 %738, float %736, float %732
  %740 = fmul fast float %728, %94
  %741 = fmul fast float %740, %737
  %742 = fadd fast float %741, %739
  br label %754

; <label>:743                                     ; preds = %593
  %744 = add i32 %26, 104
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = extractvalue %dx.types.ResRet.i32 %745, 1
  %748 = bitcast i32 %746 to float
  %749 = bitcast i32 %747 to float
  %750 = fcmp fast oge float %748, 0.000000e+00
  %751 = select i1 %750, float %748, float %732
  %752 = fmul fast float %749, %728
  %753 = fadd fast float %751, %752
  br label %754

; <label>:754                                     ; preds = %743, %733
  %755 = phi float [ %742, %733 ], [ %753, %743 ]
  %756 = fsub fast float 1.000000e+00, %697
  %757 = fmul fast float %756, %598
  %758 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %225, i32 %226, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = lshr i32 %759, 18
  %761 = uitofp i32 %760 to float
  %762 = fmul fast float %761, 0x3F4C00EBA0000000
  %763 = call float @dx.op.unary.f32(i32 21, float %762)  ; Exp(value)
  %764 = fadd fast float %763, -1.000000e+00
  %765 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %766 = extractvalue %dx.types.Dimensions %765, 0
  %767 = sitofp i32 %766 to float
  %768 = extractvalue %dx.types.Dimensions %765, 1
  %769 = sitofp i32 %768 to float
  %770 = fcmp fast oge float %223, %767
  %771 = fcmp fast oge float %224, %769
  %772 = or i1 %770, %771
  %773 = select i1 %772, float 0x4197782600000000, float %764
  %774 = fadd fast float %697, -1.000000e+00
  %775 = fmul fast float %774, %597
  %776 = fadd fast float %775, 1.000000e+00
  %777 = call float @dx.op.dot3.f32(i32 55, float %776, float %776, float %776, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %778 = fsub fast float 1.000000e+00, %777
  %779 = fmul fast float %755, %721
  %780 = fsub fast float 1.000000e+00, %757
  %781 = fsub fast float %780, %721
  %782 = call float @dx.op.unary.f32(i32 7, float %781)  ; Saturate(value)
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 3
  %785 = fmul fast float %784, %782
  %786 = fadd fast float %785, %779
  %787 = and i32 %135, 2097152
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %793, label %789, !dx.controlflow.hints !71

; <label>:789                                     ; preds = %754
  %790 = add i32 %132, 192
  %791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.f32 %791, 0
  br label %796

; <label>:793                                     ; preds = %754
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 3
  br label %796

; <label>:796                                     ; preds = %793, %789
  %797 = phi float [ %792, %789 ], [ %795, %793 ]
  %798 = fmul fast float %699, %597
  %799 = fmul fast float %798, %703
  %800 = fmul fast float %799, %706
  %801 = fmul fast float %700, %597
  %802 = fmul fast float %801, %703
  %803 = fmul fast float %802, %707
  %804 = fmul fast float %701, %597
  %805 = fmul fast float %804, %703
  %806 = fmul fast float %805, %708
  %807 = icmp eq i32 %131, 3
  %808 = fcmp fast ogt float %51, %773
  %809 = and i1 %249, %808
  %810 = or i1 %807, %809
  %811 = icmp eq i32 %131, 2
  %812 = fcmp fast ole float %51, %773
  %813 = and i1 %811, %812
  %814 = or i1 %813, %810
  br i1 %809, label %815, label %921

; <label>:815                                     ; preds = %796
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %818 = extractvalue %dx.types.CBufRet.f32 %816, 3
  %819 = fmul fast float %817, %56
  %820 = fmul fast float %818, %57
  %821 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %822 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %823 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %821, float %822, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  %825 = extractvalue %dx.types.ResRet.f32 %823, 1
  %826 = extractvalue %dx.types.ResRet.f32 %823, 2
  %827 = extractvalue %dx.types.ResRet.f32 %823, 3
  %828 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %821, float %822, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  %830 = extractvalue %dx.types.ResRet.f32 %828, 1
  %831 = extractvalue %dx.types.ResRet.f32 %828, 2
  %832 = extractvalue %dx.types.ResRet.f32 %828, 3
  %833 = call float @dx.op.binary.f32(i32 35, float %825, float %826)  ; FMax(a,b)
  %834 = call float @dx.op.binary.f32(i32 35, float %824, float %833)  ; FMax(a,b)
  %835 = call float @dx.op.binary.f32(i32 35, float %834, float %827)  ; FMax(a,b)
  %836 = call float @dx.op.binary.f32(i32 36, float %830, float %831)  ; FMin(a,b)
  %837 = call float @dx.op.binary.f32(i32 36, float %829, float %836)  ; FMin(a,b)
  %838 = call float @dx.op.binary.f32(i32 36, float %837, float %832)  ; FMin(a,b)
  %839 = fmul fast float %835, 2.550000e+02
  %840 = fadd fast float %839, 0x3F70101020000000
  %841 = fptoui float %840 to i32
  %842 = fmul fast float %838, 2.550000e+02
  %843 = fadd fast float %842, 0x3F70101020000000
  %844 = fptoui float %843 to i32
  %845 = icmp ult i32 %841, %844
  br i1 %845, label %846, label %897

; <label>:846                                     ; preds = %815
  %847 = fcmp fast ogt float %50, 9.843750e-01
  %848 = fadd fast float %51, -4.000000e+00
  %849 = select i1 %847, float -4.000000e+00, float %848
  %850 = call float @dx.op.binary.f32(i32 35, float %849, float 0.000000e+00)  ; FMax(a,b)
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %853 = fadd fast float %852, %850
  %854 = extractvalue %dx.types.CBufRet.f32 %851, 2
  %855 = fmul fast float %853, %854
  %856 = call float @dx.op.unary.f32(i32 23, float %855)  ; Log(value)
  %857 = extractvalue %dx.types.CBufRet.f32 %851, 3
  %858 = fmul fast float %857, %856
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 2
  %861 = fmul fast float %858, %860
  %862 = call float @dx.op.unary.f32(i32 7, float %861)  ; Saturate(value)
  %863 = uitofp i32 %841 to float
  %864 = uitofp i32 %844 to float
  %865 = fadd fast float %863, 5.000000e-01
  %866 = fadd fast float %864, 5.000000e-01
  %867 = fmul fast float %860, %865
  %868 = fmul fast float %860, %866
  %869 = fadd fast float %867, 0x3F0FFB4800000000
  %870 = fadd fast float %868, 0xBF0FFB4800000000
  %871 = call float @dx.op.binary.f32(i32 35, float %862, float %869)  ; FMax(a,b)
  %872 = call float @dx.op.binary.f32(i32 36, float %871, float %870)  ; FMin(a,b)
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 1
  %875 = extractvalue %dx.types.CBufRet.f32 %873, 2
  %876 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %877 = fmul fast float %874, %872
  %878 = fadd fast float %876, %877
  %879 = fadd fast float %876, %875
  %880 = fsub fast float %874, %875
  %881 = fadd fast float %880, %876
  %882 = call float @dx.op.binary.f32(i32 35, float %878, float %879)  ; FMax(a,b)
  %883 = call float @dx.op.binary.f32(i32 36, float %882, float %881)  ; FMin(a,b)
  %884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %18, float %821, float %822, float %883, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %885 = extractvalue %dx.types.ResRet.f32 %884, 0
  %886 = extractvalue %dx.types.ResRet.f32 %884, 1
  %887 = extractvalue %dx.types.ResRet.f32 %884, 2
  %888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %821, float %822, float %883, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %889 = extractvalue %dx.types.ResRet.f32 %888, 0
  %890 = extractvalue %dx.types.ResRet.f32 %888, 1
  %891 = extractvalue %dx.types.ResRet.f32 %888, 2
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 1
  %894 = fmul fast float %893, %889
  %895 = fmul fast float %893, %890
  %896 = fmul fast float %893, %891
  br label %897

; <label>:897                                     ; preds = %846, %815
  %898 = phi float [ %885, %846 ], [ 1.000000e+00, %815 ]
  %899 = phi float [ %886, %846 ], [ 1.000000e+00, %815 ]
  %900 = phi float [ %887, %846 ], [ 1.000000e+00, %815 ]
  %901 = phi float [ %894, %846 ], [ 0.000000e+00, %815 ]
  %902 = phi float [ %895, %846 ], [ 0.000000e+00, %815 ]
  %903 = phi float [ %896, %846 ], [ 0.000000e+00, %815 ]
  %904 = fmul fast float %901, %778
  %905 = fmul fast float %902, %778
  %906 = fmul fast float %903, %778
  %907 = call float @dx.op.dot3.f32(i32 55, float %898, float %899, float %900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %908 = call float @dx.op.dot3.f32(i32 55, float %904, float %905, float %906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = select i1 %115, float %907, float %898
  %910 = select i1 %115, float %907, float %899
  %911 = select i1 %115, float 1.000000e+00, float %900
  %912 = select i1 %115, float %908, float %904
  %913 = select i1 %115, float 0.000000e+00, float %905
  %914 = select i1 %115, float 0.000000e+00, float %906
  %915 = fmul fast float %909, %800
  %916 = fmul fast float %910, %803
  %917 = fmul fast float %911, %806
  %918 = fadd fast float %915, %912
  %919 = fadd fast float %916, %913
  %920 = fadd fast float %914, %917
  br label %921

; <label>:921                                     ; preds = %897, %796
  %922 = phi float [ %773, %897 ], [ %51, %796 ]
  %923 = phi float [ %918, %897 ], [ %800, %796 ]
  %924 = phi float [ %919, %897 ], [ %803, %796 ]
  %925 = phi float [ %920, %897 ], [ %806, %796 ]
  %926 = phi float [ %898, %897 ], [ 1.000000e+00, %796 ]
  br i1 %814, label %1222, label %927

; <label>:927                                     ; preds = %921
  %928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %19, float %31, float %32, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = extractvalue %dx.types.ResRet.f32 %928, 1
  %931 = extractvalue %dx.types.ResRet.f32 %928, 2
  %932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %19, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %933 = extractvalue %dx.types.ResRet.f32 %932, 0
  %934 = extractvalue %dx.types.ResRet.f32 %932, 1
  %935 = extractvalue %dx.types.ResRet.f32 %932, 2
  %936 = fmul fast float %929, %778
  %937 = fmul fast float %930, %778
  %938 = fmul fast float %931, %778
  %939 = fmul fast float %933, %926
  %940 = call float @dx.op.dot3.f32(i32 55, float %933, float %934, float %935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %941 = call float @dx.op.dot3.f32(i32 55, float %936, float %937, float %938, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %942 = select i1 %115, float %940, float %933
  %943 = select i1 %115, float %940, float %934
  %944 = select i1 %115, float 1.000000e+00, float %935
  %945 = select i1 %115, float %941, float %936
  %946 = select i1 %115, float 0.000000e+00, float %937
  %947 = select i1 %115, float 0.000000e+00, float %938
  %948 = fmul fast float %942, %923
  %949 = fmul fast float %943, %924
  %950 = fmul fast float %944, %925
  %951 = fadd fast float %948, %945
  %952 = fadd fast float %949, %946
  %953 = fadd fast float %950, %947
  %954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.i32 %954, 0
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %1222, label %957, !dx.controlflow.hints !72

; <label>:957                                     ; preds = %927
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %960 = extractvalue %dx.types.CBufRet.f32 %958, 3
  %961 = fmul fast float %959, %56
  %962 = fmul fast float %960, %57
  %963 = fmul fast float %961, 2.000000e+00
  %964 = fmul fast float %962, 2.000000e+00
  %965 = fsub fast float 1.000000e+00, %963
  %966 = fsub fast float 1.000000e+00, %964
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %969 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %970 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %971 = fmul fast float %965, %968
  %972 = fmul fast float %965, %969
  %973 = fmul fast float %965, %970
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 0
  %976 = extractvalue %dx.types.CBufRet.f32 %974, 1
  %977 = extractvalue %dx.types.CBufRet.f32 %974, 2
  %978 = fmul fast float %966, %975
  %979 = fmul fast float %966, %976
  %980 = fmul fast float %966, %977
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %984 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %985 = fadd fast float %978, %982
  %986 = fadd fast float %985, %971
  %987 = fadd fast float %979, %983
  %988 = fadd fast float %987, %972
  %989 = fadd fast float %980, %984
  %990 = fadd fast float %989, %973
  %991 = fmul fast float %986, %922
  %992 = fmul fast float %988, %922
  %993 = fmul fast float %990, %922
  %994 = fmul fast float %991, %991
  %995 = fmul fast float %992, %992
  %996 = fadd fast float %994, %995
  %997 = fmul fast float %993, %993
  %998 = fadd fast float %996, %997
  %999 = call float @dx.op.unary.f32(i32 24, float %998)  ; Sqrt(value)
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = fsub fast float %999, %1001
  %1003 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1004 = fmul fast float %1002, %1003
  %1005 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1006 = fadd fast float %1005, -5.000000e-01
  %1007 = fmul fast float %1006, 2.000000e+00
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 2
  %1010 = call float @dx.op.binary.f32(i32 36, float %1009, float %1007)  ; FMin(a,b)
  %1011 = fsub fast float -0.000000e+00, %1009
  %1012 = fcmp fast ogt float %1010, %1011
  br i1 %1012, label %1013, label %1222, !dx.controlflow.hints !73

; <label>:1013                                    ; preds = %957
  %1014 = fmul fast float %1010, 5.000000e-01
  %1015 = fadd fast float %1014, 5.000000e-01
  %1016 = call float @dx.op.unary.f32(i32 22, float %1015)  ; Frc(value)
  %1017 = call float @dx.op.unary.f32(i32 27, float %1016)  ; Round_ni(value)
  %1018 = call float @dx.op.unary.f32(i32 22, float %1016)  ; Frc(value)
  %1019 = fmul fast float %1018, 2.000000e+00
  %1020 = fadd fast float %1019, -1.000000e+00
  %1021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %961, float %962, float %1017, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.ResRet.f32 %1021, 2
  %1025 = extractvalue %dx.types.ResRet.f32 %1021, 3
  %1026 = fadd fast float %1022, -5.000000e-01
  %1027 = fadd fast float %1024, -5.000000e-01
  %1028 = fmul fast float %1026, 0xBFD5555560000000
  %1029 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1027, float %1028)  ; FMad(a,b,c)
  %1030 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1023, float 0.000000e+00)  ; FMad(a,b,c)
  %1031 = fadd fast float %1030, %1025
  %1032 = fmul fast float %1026, -7.500000e-01
  %1033 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1027, float %1032)  ; FMad(a,b,c)
  %1034 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1023, float 0.000000e+00)  ; FMad(a,b,c)
  %1035 = fadd fast float %1034, %1025
  %1036 = call float @dx.op.binary.f32(i32 35, float %1029, float -1.000000e+00)  ; FMax(a,b)
  %1037 = call float @dx.op.binary.f32(i32 35, float %1031, float -1.000000e+00)  ; FMax(a,b)
  %1038 = call float @dx.op.binary.f32(i32 35, float %1033, float -1.000000e+00)  ; FMax(a,b)
  %1039 = call float @dx.op.binary.f32(i32 35, float %1035, float -1.000000e+00)  ; FMax(a,b)
  %1040 = call float @dx.op.binary.f32(i32 36, float %1036, float 1.000000e+00)  ; FMin(a,b)
  %1041 = call float @dx.op.binary.f32(i32 36, float %1037, float 1.000000e+00)  ; FMin(a,b)
  %1042 = call float @dx.op.binary.f32(i32 36, float %1038, float 1.000000e+00)  ; FMin(a,b)
  %1043 = call float @dx.op.binary.f32(i32 36, float %1039, float 1.000000e+00)  ; FMin(a,b)
  %1044 = fcmp fast olt float %1040, 0x3FEFFF8020000000
  br i1 %1044, label %1045, label %1160, !dx.controlflow.hints !74

; <label>:1045                                    ; preds = %1013
  %1046 = extractvalue %dx.types.CBufRet.f32 %1008, 3
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.CBufRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.CBufRet.f32 %1047, 2
  %1051 = extractvalue %dx.types.CBufRet.f32 %1047, 3
  %1052 = fsub fast float %1048, %1040
  %1053 = fsub fast float %1049, %1041
  %1054 = fsub fast float %1050, %1042
  %1055 = fsub fast float %1051, %1043
  %1056 = fmul fast float %1052, %1046
  %1057 = fmul fast float %1053, %1046
  %1058 = fmul fast float %1054, %1046
  %1059 = fmul fast float %1055, %1046
  %1060 = fadd fast float %1056, %1040
  %1061 = fadd fast float %1057, %1041
  %1062 = fsub fast float -0.000000e+00, %1061
  %1063 = fadd fast float %1058, %1042
  %1064 = fadd fast float %1059, %1043
  %1065 = fmul fast float %1060, %1060
  %1066 = fsub fast float %1061, %1065
  %1067 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1066)  ; FMax(a,b)
  %1068 = fdiv fast float 1.000000e+00, %1067
  %1069 = fmul fast float %1061, %1060
  %1070 = fsub fast float %1063, %1069
  %1071 = fsub fast float %1020, %1060
  %1072 = fmul fast float %1020, %1020
  %1073 = fsub fast float %1072, %1061
  %1074 = fmul fast float %1071, %1068
  %1075 = fmul fast float %1074, %1070
  %1076 = fsub fast float %1073, %1075
  %1077 = fmul fast float %1061, %1061
  %1078 = fsub fast float %1064, %1077
  %1079 = fmul fast float %1070, %1070
  %1080 = fmul fast float %1079, %1068
  %1081 = fsub fast float %1078, %1080
  %1082 = fdiv fast float %1076, %1081
  %1083 = fmul fast float %1070, %1082
  %1084 = fsub fast float %1071, %1083
  %1085 = fmul fast float %1084, %1068
  %1086 = fmul fast float %1085, %1060
  %1087 = fsub fast float 1.000000e+00, %1086
  %1088 = fmul fast float %1061, %1082
  %1089 = fsub fast float %1087, %1088
  %1090 = fmul fast float %1085, %1085
  %1091 = fmul fast float %1082, 4.000000e+00
  %1092 = fmul fast float %1091, %1089
  %1093 = fsub fast float %1090, %1092
  %1094 = call float @dx.op.unary.f32(i32 24, float %1093)  ; Sqrt(value)
  %1095 = fcmp fast oge float %1085, 0.000000e+00
  %1096 = fsub fast float -0.000000e+00, %1094
  %1097 = select i1 %1095, float %1096, float %1094
  %1098 = fsub fast float %1097, %1085
  %1099 = fdiv fast float %1098, %1082
  %1100 = fdiv fast float %1089, %1098
  %1101 = fmul fast float %1099, 5.000000e-01
  %1102 = fmul fast float %1100, 2.000000e+00
  %1103 = select i1 %1095, float %1101, float %1102
  %1104 = select i1 %1095, float %1102, float %1101
  %1105 = call float @dx.op.binary.f32(i32 35, float %1103, float %1104)  ; FMax(a,b)
  %1106 = call float @dx.op.binary.f32(i32 36, float %1103, float %1104)  ; FMin(a,b)
  %1107 = fcmp fast ogt float %1020, %1106
  br i1 %1107, label %1108, label %1118

; <label>:1108                                    ; preds = %1045
  %1109 = fsub fast float %1020, %1106
  %1110 = fsub fast float %1105, %1106
  %1111 = fmul fast float %1109, %1110
  %1112 = fmul fast float %1105, %1020
  %1113 = fadd fast float %1105, %1020
  %1114 = fmul fast float %1113, %1060
  %1115 = fadd fast float %1112, %1061
  %1116 = fsub fast float %1115, %1114
  %1117 = fdiv fast float %1116, %1111
  br label %1118

; <label>:1118                                    ; preds = %1108, %1045
  %1119 = phi float [ %1117, %1108 ], [ 0.000000e+00, %1045 ]
  %1120 = fcmp fast ogt float %1020, %1105
  %1121 = fsub fast float %1020, %1105
  br i1 %1120, label %1122, label %1132

; <label>:1122                                    ; preds = %1118
  %1123 = fsub fast float %1105, %1106
  %1124 = fmul fast float %1123, %1121
  %1125 = fmul fast float %1106, %1020
  %1126 = fadd fast float %1106, %1020
  %1127 = fmul fast float %1126, %1060
  %1128 = fsub fast float %1062, %1125
  %1129 = fadd fast float %1128, %1127
  %1130 = fdiv fast float %1129, %1124
  %1131 = fadd fast float %1130, %1119
  br label %1132

; <label>:1132                                    ; preds = %1122, %1118
  %1133 = phi float [ %1131, %1122 ], [ %1119, %1118 ]
  %1134 = fsub fast float %1020, %1106
  %1135 = fmul fast float %1134, %1121
  %1136 = fmul fast float %1106, %1105
  %1137 = fadd fast float %1106, %1105
  %1138 = fmul fast float %1137, %1060
  %1139 = fadd fast float %1136, %1061
  %1140 = fsub fast float %1139, %1138
  %1141 = fdiv fast float %1140, %1135
  %1142 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1143 = fcmp fast oeq float %797, 0.000000e+00
  %1144 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1145 = fcmp fast oeq float %1144, 0.000000e+00
  %1146 = or i1 %1143, %1145
  %1147 = fmul fast float %1144, 2.000000e+00
  %1148 = fadd fast float %1009, %1010
  %1149 = fdiv fast float %1148, %1147
  %1150 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  %1151 = fmul fast float %1150, 2.000000e+00
  %1152 = fsub fast float 3.000000e+00, %1151
  %1153 = fmul fast float %1150, %1150
  %1154 = fmul fast float %1153, %1152
  %1155 = select i1 %1146, float 1.000000e+00, float %1154
  %1156 = fmul fast float %1141, %797
  %1157 = fadd fast float %1142, %1156
  %1158 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1159 = fmul fast float %1155, %1158
  br label %1160

; <label>:1160                                    ; preds = %1132, %1013
  %1161 = phi float [ %1159, %1132 ], [ 0.000000e+00, %1013 ]
  %1162 = fsub fast float 1.000000e+00, %1161
  %1163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %961, float %962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.i32 %1165, 2
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1173, label %1168

; <label>:1168                                    ; preds = %1160
  %1169 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  %1170 = fadd fast float %1164, -1.000000e+00
  %1171 = fmul fast float %1169, %1170
  %1172 = fadd fast float %1171, 1.000000e+00
  br label %1173

; <label>:1173                                    ; preds = %1168, %1160
  %1174 = phi float [ %1172, %1168 ], [ %1162, %1160 ]
  %1175 = call float @dx.op.binary.f32(i32 35, float %1164, float %1174)  ; FMax(a,b)
  %1176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.i32 %1176, 2
  %1178 = and i32 %1177, 1
  %1179 = icmp eq i32 %1178, 0
  %1180 = fcmp fast une float %1175, 1.000000e+00
  %1181 = and i1 %1180, %1179
  br i1 %1181, label %1182, label %1201

; <label>:1182                                    ; preds = %1173
  %1183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %961, float %962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.ResRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.ResRet.f32 %1183, 2
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 1
  %1189 = fmul fast float %1188, %1184
  %1190 = fmul fast float %1188, %1185
  %1191 = fmul fast float %1188, %1186
  %1192 = fcmp fast ogt float %1164, 0x3FEFFF2E40000000
  %1193 = fsub fast float 1.000000e+00, %1175
  %1194 = fsub fast float 1.000000e+00, %1164
  %1195 = fdiv fast float %1193, %1194
  %1196 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1197 = select i1 %1192, float 0.000000e+00, float %1196
  %1198 = fmul fast float %1189, %1197
  %1199 = fmul fast float %1190, %1197
  %1200 = fmul fast float %1191, %1197
  br label %1201

; <label>:1201                                    ; preds = %1182, %1173
  %1202 = phi float [ 0.000000e+00, %1173 ], [ %1198, %1182 ]
  %1203 = phi float [ 0.000000e+00, %1173 ], [ %1199, %1182 ]
  %1204 = phi float [ 0.000000e+00, %1173 ], [ %1200, %1182 ]
  %1205 = fmul fast float %1202, %778
  %1206 = fmul fast float %1203, %778
  %1207 = fmul fast float %1204, %778
  %1208 = fmul fast float %1175, %939
  %1209 = call float @dx.op.dot3.f32(i32 55, float %1175, float %1175, float %1175, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1210 = call float @dx.op.dot3.f32(i32 55, float %1205, float %1206, float %1207, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1211 = select i1 %115, float %1209, float %1175
  %1212 = select i1 %115, float 1.000000e+00, float %1175
  %1213 = select i1 %115, float %1210, float %1205
  %1214 = select i1 %115, float 0.000000e+00, float %1206
  %1215 = select i1 %115, float 0.000000e+00, float %1207
  %1216 = fmul fast float %1211, %951
  %1217 = fmul fast float %1211, %952
  %1218 = fmul fast float %1212, %953
  %1219 = fadd fast float %1216, %1213
  %1220 = fadd fast float %1217, %1214
  %1221 = fadd fast float %1215, %1218
  br label %1222

; <label>:1222                                    ; preds = %1201, %957, %927, %921
  %1223 = phi float [ %923, %921 ], [ %951, %927 ], [ %1219, %1201 ], [ %951, %957 ]
  %1224 = phi float [ %924, %921 ], [ %952, %927 ], [ %1220, %1201 ], [ %952, %957 ]
  %1225 = phi float [ %925, %921 ], [ %953, %927 ], [ %1221, %1201 ], [ %953, %957 ]
  %1226 = phi float [ %926, %921 ], [ %939, %927 ], [ %1208, %1201 ], [ %939, %957 ]
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1229 = extractvalue %dx.types.CBufRet.f32 %1227, 3
  %1230 = fmul fast float %1228, %56
  %1231 = fmul fast float %1229, %57
  %1232 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  %1233 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  %1234 = select i1 %814, i32 2, i32 0
  %1235 = or i32 %1234, 1
  %1236 = uitofp i32 %1235 to float
  %1237 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %1232, float %1233, float %1236, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.ResRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.ResRet.f32 %1237, 2
  %1241 = extractvalue %dx.types.ResRet.f32 %1237, 3
  %1242 = add nuw nsw i32 %1234, 2
  %1243 = uitofp i32 %1242 to float
  %1244 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %19, float %1232, float %1233, float %1243, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.ResRet.f32 %1244, 1
  %1247 = extractvalue %dx.types.ResRet.f32 %1244, 2
  %1248 = extractvalue %dx.types.ResRet.f32 %1244, 3
  %1249 = call float @dx.op.binary.f32(i32 35, float %1239, float %1240)  ; FMax(a,b)
  %1250 = call float @dx.op.binary.f32(i32 35, float %1238, float %1249)  ; FMax(a,b)
  %1251 = call float @dx.op.binary.f32(i32 35, float %1250, float %1241)  ; FMax(a,b)
  %1252 = call float @dx.op.binary.f32(i32 36, float %1246, float %1247)  ; FMin(a,b)
  %1253 = call float @dx.op.binary.f32(i32 36, float %1245, float %1252)  ; FMin(a,b)
  %1254 = call float @dx.op.binary.f32(i32 36, float %1253, float %1248)  ; FMin(a,b)
  %1255 = fmul fast float %1251, 2.550000e+02
  %1256 = fadd fast float %1255, 0x3F70101020000000
  %1257 = fptoui float %1256 to i32
  %1258 = fmul fast float %1254, 2.550000e+02
  %1259 = fadd fast float %1258, 0x3F70101020000000
  %1260 = fptoui float %1259 to i32
  %1261 = icmp ult i32 %1257, %1260
  br i1 %1261, label %1262, label %1314

; <label>:1262                                    ; preds = %1222
  %1263 = fcmp fast ogt float %50, 9.843750e-01
  %1264 = fadd fast float %922, -4.000000e+00
  %1265 = select i1 %1263, float -4.000000e+00, float %1264
  %1266 = call float @dx.op.binary.f32(i32 35, float %1265, float 0.000000e+00)  ; FMax(a,b)
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = fadd fast float %1268, %1266
  %1270 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1271 = fmul fast float %1269, %1270
  %1272 = call float @dx.op.unary.f32(i32 23, float %1271)  ; Log(value)
  %1273 = extractvalue %dx.types.CBufRet.f32 %1267, 3
  %1274 = fmul fast float %1273, %1272
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 2
  %1277 = fmul fast float %1274, %1276
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1279 = uitofp i32 %1257 to float
  %1280 = uitofp i32 %1260 to float
  %1281 = fadd fast float %1279, 5.000000e-01
  %1282 = fadd fast float %1280, 5.000000e-01
  %1283 = fmul fast float %1276, %1281
  %1284 = fmul fast float %1276, %1282
  %1285 = fadd fast float %1283, 0x3F0FFB4800000000
  %1286 = fadd fast float %1284, 0xBF0FFB4800000000
  %1287 = call float @dx.op.binary.f32(i32 35, float %1278, float %1285)  ; FMax(a,b)
  %1288 = call float @dx.op.binary.f32(i32 36, float %1287, float %1286)  ; FMin(a,b)
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 1
  %1291 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1292 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1293 = select i1 %814, float %1292, float 0.000000e+00
  %1294 = fmul fast float %1290, %1288
  %1295 = fadd fast float %1293, %1294
  %1296 = fadd fast float %1293, %1291
  %1297 = fsub fast float %1290, %1291
  %1298 = fadd fast float %1297, %1293
  %1299 = call float @dx.op.binary.f32(i32 35, float %1295, float %1296)  ; FMax(a,b)
  %1300 = call float @dx.op.binary.f32(i32 36, float %1299, float %1298)  ; FMin(a,b)
  %1301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %18, float %1232, float %1233, float %1300, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.ResRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.ResRet.f32 %1301, 2
  %1305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1232, float %1233, float %1300, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.ResRet.f32 %1305, 1
  %1308 = extractvalue %dx.types.ResRet.f32 %1305, 2
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 1
  %1311 = fmul fast float %1310, %1306
  %1312 = fmul fast float %1310, %1307
  %1313 = fmul fast float %1310, %1308
  br label %1314

; <label>:1314                                    ; preds = %1262, %1222
  %1315 = phi float [ %1302, %1262 ], [ 1.000000e+00, %1222 ]
  %1316 = phi float [ %1303, %1262 ], [ 1.000000e+00, %1222 ]
  %1317 = phi float [ %1304, %1262 ], [ 1.000000e+00, %1222 ]
  %1318 = phi float [ %1311, %1262 ], [ 0.000000e+00, %1222 ]
  %1319 = phi float [ %1312, %1262 ], [ 0.000000e+00, %1222 ]
  %1320 = phi float [ %1313, %1262 ], [ 0.000000e+00, %1222 ]
  %1321 = fmul fast float %1318, %778
  %1322 = fmul fast float %1319, %778
  %1323 = fmul fast float %1320, %778
  %1324 = fmul fast float %1315, %1226
  %1325 = call float @dx.op.dot3.f32(i32 55, float %1315, float %1316, float %1317, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1326 = call float @dx.op.dot3.f32(i32 55, float %1321, float %1322, float %1323, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1327 = select i1 %115, float %1325, float %1315
  %1328 = select i1 %115, float %1325, float %1316
  %1329 = select i1 %115, float 1.000000e+00, float %1317
  %1330 = select i1 %115, float %1326, float %1321
  %1331 = select i1 %115, float 0.000000e+00, float %1322
  %1332 = select i1 %115, float 0.000000e+00, float %1323
  %1333 = fmul fast float %1327, %1223
  %1334 = fmul fast float %1328, %1224
  %1335 = fmul fast float %1329, %1225
  %1336 = fadd fast float %1333, %1330
  %1337 = fadd fast float %1334, %1331
  %1338 = fadd fast float %1332, %1335
  %1339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %23, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.i32 %1339, 3
  %1341 = and i32 %1340, 3
  %1342 = icmp ne i32 %1341, 0
  %1343 = and i32 %1340, 4
  %1344 = icmp ne i32 %1343, 0
  %1345 = and i1 %1342, %1344
  %1346 = and i1 %115, %1345
  br i1 %1346, label %1347, label %1353

; <label>:1347                                    ; preds = %1314
  %1348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1349 = extractvalue %dx.types.CBufRet.f32 %1348, 1
  %1350 = fadd fast float %1324, -1.000000e+00
  %1351 = fmul fast float %1349, %1350
  %1352 = fadd fast float %1351, 1.000000e+00
  br label %1353

; <label>:1353                                    ; preds = %1347, %1314
  %1354 = phi float [ %1352, %1347 ], [ %1324, %1314 ]
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 0
  br i1 %115, label %1357, label %1379

; <label>:1357                                    ; preds = %1353
  %1358 = fadd fast float %1336, %1337
  %1359 = fmul fast float %1356, %1358
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 3
  %1362 = extractvalue %dx.types.CBufRet.f32 %783, 1
  %1363 = fsub fast float %786, %1362
  %1364 = extractvalue %dx.types.CBufRet.f32 %783, 2
  %1365 = fmul fast float %1363, %1364
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1367 = fsub fast float %1366, %1361
  %1368 = fmul fast float %1367, %1354
  %1369 = fadd fast float %1368, %1361
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %23, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 0
  %1372 = fsub fast float %1369, %1371
  %1373 = fmul fast float %1372, 1.000000e+01
  %1374 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1375 = fsub fast float %757, %778
  %1376 = fmul fast float %1374, %1375
  %1377 = fadd fast float %1376, %778
  %1378 = fmul fast float %1377, %1369
  br label %1388

; <label>:1379                                    ; preds = %1353
  %1380 = fmul fast float %1356, %1336
  %1381 = fmul fast float %1356, %1337
  %1382 = fmul fast float %1356, %1338
  %1383 = call float @dx.op.binary.f32(i32 35, float %1381, float %1382)  ; FMax(a,b)
  %1384 = call float @dx.op.binary.f32(i32 35, float %1380, float %1383)  ; FMax(a,b)
  %1385 = call float @dx.op.binary.f32(i32 35, float %1384, float %778)  ; FMax(a,b)
  %1386 = fcmp fast ugt float %1385, 0x3F10000000000000
  br i1 %1386, label %1388, label %1387

; <label>:1387                                    ; preds = %1379
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1388

; <label>:1388                                    ; preds = %1387, %1379, %1357
  %1389 = phi float [ %1359, %1357 ], [ %1380, %1387 ], [ %1380, %1379 ]
  %1390 = phi float [ %1378, %1357 ], [ %1381, %1387 ], [ %1381, %1379 ]
  %1391 = phi float [ %1377, %1357 ], [ %1382, %1387 ], [ %1382, %1379 ]
  %1392 = phi float [ %1377, %1357 ], [ %778, %1387 ], [ %778, %1379 ]
  %1393 = fadd fast float %533, 0x3FE3C6EF40000000
  %1394 = call float @dx.op.unary.f32(i32 22, float %1393)  ; Frc(value)
  %1395 = call float @dx.op.unary.f32(i32 23, float %1389)  ; Log(value)
  %1396 = fadd fast float %1395, -7.000000e+00
  %1397 = call float @dx.op.unary.f32(i32 21, float %1396)  ; Exp(value)
  %1398 = fmul fast float %1394, 2.000000e+00
  %1399 = fadd fast float %1398, -1.000000e+00
  %1400 = fmul fast float %1397, %1399
  %1401 = fcmp fast ogt float %1389, 0.000000e+00
  %1402 = select i1 %1401, float %1400, float 0.000000e+00
  %1403 = fadd fast float %1402, %1389
  %1404 = fadd fast float %533, 0x3FF3C6EF40000000
  %1405 = call float @dx.op.unary.f32(i32 22, float %1404)  ; Frc(value)
  %1406 = call float @dx.op.unary.f32(i32 23, float %1390)  ; Log(value)
  %1407 = fadd fast float %1406, -7.000000e+00
  %1408 = call float @dx.op.unary.f32(i32 21, float %1407)  ; Exp(value)
  %1409 = fmul fast float %1405, 2.000000e+00
  %1410 = fadd fast float %1409, -1.000000e+00
  %1411 = fmul fast float %1408, %1410
  %1412 = fcmp fast ogt float %1390, 0.000000e+00
  %1413 = select i1 %1412, float %1411, float 0.000000e+00
  %1414 = fadd fast float %1413, %1390
  %1415 = fadd fast float %533, 0x3FFDAA66E0000000
  %1416 = call float @dx.op.unary.f32(i32 22, float %1415)  ; Frc(value)
  %1417 = call float @dx.op.unary.f32(i32 23, float %1391)  ; Log(value)
  %1418 = fadd fast float %1417, -6.000000e+00
  %1419 = call float @dx.op.unary.f32(i32 21, float %1418)  ; Exp(value)
  %1420 = fmul fast float %1416, 2.000000e+00
  %1421 = fadd fast float %1420, -1.000000e+00
  %1422 = fmul fast float %1419, %1421
  %1423 = fcmp fast ogt float %1391, 0.000000e+00
  %1424 = select i1 %1423, float %1422, float 0.000000e+00
  %1425 = fadd fast float %1424, %1391
  %1426 = select i1 %115, float %1390, float %1414
  %1427 = select i1 %115, float %1391, float %1425
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1428 = call float @dx.op.binary.f32(i32 36, float %1403, float 3.225500e+04)  ; FMin(a,b)
  %1429 = call float @dx.op.binary.f32(i32 36, float %1426, float 3.225500e+04)  ; FMin(a,b)
  %1430 = call float @dx.op.binary.f32(i32 36, float %1427, float 3.225500e+04)  ; FMin(a,b)
  %1431 = call float @dx.op.binary.f32(i32 36, float %1392, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1428)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1429)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1430)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1431)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1392)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1392)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1392)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1392)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!36}
!dx.entryPoints = !{!37}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !27, !30}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26}
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
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !22}
!22 = !{i32 0, i32 14}
!23 = !{i32 14, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!24 = !{i32 15, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!25 = !{i32 16, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !7}
!26 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!30 = !{!31, !32, !33, !34, !35}
!31 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!32 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!33 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!34 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!35 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!36 = !{[41 x i32] [i32 39, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255]}
!37 = !{void ()* @ps_main, !"ps_main", !38, !4, !63}
!38 = !{!39, !60, null}
!39 = !{!40, !43, !44, !46, !49, !51, !53, !55, !57, !58, !59}
!40 = !{i32 0, !"SV_Position", i8 9, i8 3, !41, i8 4, i32 1, i8 4, i32 0, i8 0, !42}
!41 = !{i32 0}
!42 = !{i32 3, i32 15}
!43 = !{i32 1, !"COLOR", i8 9, i8 0, !41, i8 2, i32 1, i8 4, i32 1, i8 0, !42}
!44 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !41, i8 2, i32 1, i8 2, i32 2, i8 0, !45}
!45 = !{i32 3, i32 3}
!46 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 3, i32 3, i8 0, !48}
!47 = !{i32 1}
!48 = !{i32 3, i32 7}
!49 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !50, i8 1, i32 1, i8 4, i32 4, i8 0, !48}
!50 = !{i32 2}
!51 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 5, i8 0, !48}
!52 = !{i32 3}
!53 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !54, i8 3, i32 1, i8 2, i32 6, i8 0, !45}
!54 = !{i32 5}
!55 = !{i32 7, !"TEXCOORD", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 7, i8 0, null}
!56 = !{i32 8}
!57 = !{i32 8, !"QUAD_POSITION", i8 9, i8 0, !41, i8 1, i32 1, i8 4, i32 8, i8 0, !42}
!58 = !{i32 9, !"COLOR", i8 5, i8 0, !52, i8 1, i32 1, i8 3, i32 9, i8 0, !48}
!59 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !41, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!60 = !{!61, !62}
!61 = !{i32 0, !"SV_Target", i8 9, i8 16, !41, i8 0, i32 1, i8 4, i32 0, i8 0, !42}
!62 = !{i32 1, !"SV_Target", i8 9, i8 16, !47, i8 0, i32 1, i8 4, i32 1, i8 0, !42}
!63 = !{i32 0, i64 24}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

