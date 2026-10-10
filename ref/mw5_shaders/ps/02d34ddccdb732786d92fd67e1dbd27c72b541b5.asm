;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
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
; shader hash: 8cf004b86502992cf4f6f0b4988d6f76
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
;                                   texture     f32          3d     T17     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = fmul fast float %55, %48
  %57 = fmul fast float %55, %49
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fmul fast float %56, 2.000000e+00
  %62 = fmul fast float %61, %59
  %63 = fmul fast float %57, 2.000000e+00
  %64 = fmul fast float %63, %60
  %65 = fsub fast float 1.000000e+00, %62
  %66 = fsub fast float 1.000000e+00, %64
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fmul fast float %65, %68
  %72 = fmul fast float %65, %69
  %73 = fmul fast float %65, %70
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = fmul fast float %66, %75
  %79 = fmul fast float %66, %76
  %80 = fmul fast float %66, %77
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %94 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.i32 %94, 3
  %96 = and i32 %95, 3
  %97 = icmp ne i32 %96, 0
  %98 = and i32 %95, 4
  %99 = icmp ne i32 %98, 0
  %100 = and i1 %97, %99
  br i1 %100, label %101, label %110

; <label>:101                                     ; preds = %0
  %102 = fmul fast float %60, %57
  %103 = fmul fast float %59, %56
  %104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %103, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = fsub fast float 1.000000e+00, %105
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = fcmp fast olt float %106, %108
  br label %113

; <label>:110                                     ; preds = %0
  %111 = icmp eq i32 %98, 0
  %112 = and i1 %97, %111
  br label %113

; <label>:113                                     ; preds = %110, %101
  %114 = phi i1 [ %109, %101 ], [ %112, %110 ]
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %118 = fmul fast float %116, %56
  %119 = fmul fast float %117, %57
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = and i32 %121, 114688
  %123 = icmp ne i32 %122, 0
  %124 = select i1 %123, float %118, float 0.000000e+00
  %125 = select i1 %123, float %119, float 0.000000e+00
  %126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %124, float %125, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = fmul fast float %127, 2.550000e+02
  %129 = fptoui float %128 to i32
  %130 = select i1 %123, i32 %129, i32 0
  %131 = mul i32 %23, 208
  %132 = add i32 %131, 188
  %133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.i32 %133, 0
  %135 = and i32 %95, 114688
  %136 = and i32 %95, 8
  %137 = icmp ne i32 %136, 0
  %138 = or i1 %114, %137
  %139 = select i1 %138, i32 %135, i32 16384
  %140 = and i32 %139, %134
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %113
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %143

; <label>:143                                     ; preds = %142, %113
  %144 = and i32 %134, 512
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %170, label %146

; <label>:146                                     ; preds = %143
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %150 = fmul fast float %148, %56
  %151 = fmul fast float %149, %57
  %152 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %154 = fdiv fast float %152, %153
  %155 = fcmp fast ogt float %154, 0x3FFC71C720000000
  br i1 %155, label %156, label %162

; <label>:156                                     ; preds = %146
  %157 = fdiv fast float 0x3FFC71C720000000, %154
  %158 = fmul fast float %157, %151
  %159 = fsub fast float 1.000000e+00, %157
  %160 = fmul fast float %159, 5.000000e-01
  %161 = fadd fast float %160, %158
  br label %170

; <label>:162                                     ; preds = %146
  %163 = fcmp fast olt float %154, 0x3FFC71C720000000
  br i1 %163, label %164, label %170

; <label>:164                                     ; preds = %162
  %165 = fmul fast float %150, 5.625000e-01
  %166 = fmul fast float %165, %154
  %167 = fmul fast float %154, 2.812500e-01
  %168 = fsub fast float 5.000000e-01, %167
  %169 = fadd fast float %168, %166
  br label %170

; <label>:170                                     ; preds = %164, %162, %156, %143
  %171 = phi float [ %42, %143 ], [ %150, %156 ], [ %169, %164 ], [ %150, %162 ]
  %172 = phi float [ %43, %143 ], [ %161, %156 ], [ %151, %164 ], [ %151, %162 ]
  %173 = fadd fast float %42, %39
  %174 = fadd fast float %43, %40
  %175 = add i32 %24, 104
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = extractvalue %dx.types.ResRet.i32 %176, 1
  %179 = bitcast i32 %177 to float
  %180 = bitcast i32 %178 to float
  %181 = fmul fast float %179, %42
  %182 = fmul fast float %180, %43
  %183 = call float @dx.op.unary.f32(i32 22, float %181)  ; Frc(value)
  %184 = call float @dx.op.unary.f32(i32 22, float %182)  ; Frc(value)
  %185 = add i32 %24, 88
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = bitcast i32 %187 to float
  %189 = add i32 %24, 72
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = extractvalue %dx.types.ResRet.i32 %190, 1
  %193 = extractvalue %dx.types.ResRet.i32 %190, 2
  %194 = extractvalue %dx.types.ResRet.i32 %190, 3
  %195 = bitcast i32 %191 to float
  %196 = bitcast i32 %192 to float
  %197 = bitcast i32 %193 to float
  %198 = bitcast i32 %194 to float
  %199 = add i32 %24, 160
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = add i32 %201, 0
  %203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %204 = fmul fast float %197, %183
  %205 = fmul fast float %198, %184
  %206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %207 = extractvalue %dx.types.CBufRet.f32 %206, 3
  %208 = fmul fast float %207, %195
  %209 = fmul fast float %207, %196
  %210 = fadd fast float %208, %204
  %211 = fadd fast float %209, %205
  %212 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %203, %dx.types.Handle %53, float %210, float %211, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = extractvalue %dx.types.ResRet.f32 %212, 1
  %215 = fmul fast float %213, 2.000000e+00
  %216 = fmul fast float %214, 2.000000e+00
  %217 = fadd fast float %215, -1.000000e+00
  %218 = fadd fast float %216, -1.000000e+00
  %219 = fmul fast float %217, %188
  %220 = fmul fast float %218, %188
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 2
  %223 = extractvalue %dx.types.ResRet.i32 %221, 3
  %224 = bitcast i32 %222 to float
  %225 = bitcast i32 %223 to float
  %226 = fmul fast float %224, %219
  %227 = fmul fast float %225, %220
  %228 = fadd fast float %226, %171
  %229 = fadd fast float %227, %172
  %230 = fadd fast float %173, %226
  %231 = fadd fast float %174, %227
  %232 = and i32 %134, 16
  %233 = icmp ne i32 %232, 0
  %234 = select i1 %233, float 1.000000e+00, float %47
  %235 = icmp eq i32 %232, 0
  br i1 %235, label %255, label %236, !dx.controlflow.hints !63

; <label>:236                                     ; preds = %170
  %237 = add i32 %131, 64
  %238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = fadd fast float %239, 1.000000e+00
  %241 = fmul fast float %240, %47
  %242 = fsub fast float %241, %239
  %243 = fsub fast float %240, %242
  %244 = call float @dx.op.unary.f32(i32 7, float %243)  ; Saturate(value)
  %245 = fsub fast float 1.000000e+00, %241
  %246 = call float @dx.op.unary.f32(i32 7, float %245)  ; Saturate(value)
  %247 = fsub fast float %244, %246
  %248 = fsub fast float %234, %246
  %249 = fdiv fast float %248, %247
  %250 = call float @dx.op.unary.f32(i32 7, float %249)  ; Saturate(value)
  %251 = fmul fast float %250, 2.000000e+00
  %252 = fsub fast float 3.000000e+00, %251
  %253 = fmul fast float %250, %250
  %254 = fmul fast float %253, %252
  br label %255

; <label>:255                                     ; preds = %236, %170
  %256 = phi float [ %254, %236 ], [ %234, %170 ]
  %257 = fcmp fast ogt float %256, 0.000000e+00
  br i1 %257, label %259, label %258

; <label>:258                                     ; preds = %255
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %259

; <label>:259                                     ; preds = %258, %255
  %260 = call float @dx.op.unary.f32(i32 7, float %256)  ; Saturate(value)
  %261 = fmul fast float %56, 5.000000e-01
  %262 = fmul fast float %57, 5.000000e-01
  %263 = fptosi float %261 to i32
  %264 = fptosi float %262 to i32
  %265 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %263, i32 %264, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = lshr i32 %266, 18
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F4C00EBA0000000
  %270 = call float @dx.op.unary.f32(i32 21, float %269)  ; Exp(value)
  %271 = fadd fast float %270, -1.000000e+00
  %272 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %273 = extractvalue %dx.types.Dimensions %272, 0
  %274 = sitofp i32 %273 to float
  %275 = extractvalue %dx.types.Dimensions %272, 1
  %276 = sitofp i32 %275 to float
  %277 = fcmp fast oge float %261, %274
  %278 = fcmp fast oge float %262, %276
  %279 = or i1 %277, %278
  %280 = select i1 %279, float 0x4197782600000000, float %271
  %281 = fsub fast float %280, %51
  %282 = fcmp fast ogt float %281, 0.000000e+00
  %283 = and i32 %130, -2
  %284 = icmp eq i32 %283, 2
  %285 = and i1 %284, %282
  %286 = xor i1 %282, true
  %287 = icmp eq i32 %130, 1
  %288 = and i1 %287, %286
  %289 = or i1 %285, %288
  %290 = and i32 %134, 262144
  %291 = icmp ne i32 %290, 0
  %292 = and i1 %291, %289
  %293 = xor i1 %289, true
  %294 = and i32 %134, 131072
  %295 = icmp ne i32 %294, 0
  %296 = and i1 %295, %293
  %297 = or i1 %292, %296
  br i1 %297, label %298, label %299

; <label>:298                                     ; preds = %259
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %299

; <label>:299                                     ; preds = %298, %259
  %300 = and i32 %134, 32
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %579, label %302, !dx.controlflow.hints !64

; <label>:302                                     ; preds = %299
  %303 = add i32 %131, 80
  %304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = extractvalue %dx.types.ResRet.f32 %304, 1
  %307 = extractvalue %dx.types.ResRet.f32 %304, 2
  %308 = extractvalue %dx.types.ResRet.f32 %304, 3
  %309 = add i32 %131, 96
  %310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  %312 = extractvalue %dx.types.ResRet.f32 %310, 1
  %313 = extractvalue %dx.types.ResRet.f32 %310, 2
  %314 = add i32 %131, 112
  %315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = extractvalue %dx.types.ResRet.f32 %315, 3
  %320 = add i32 %131, 128
  %321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.f32 %321, 0
  %323 = extractvalue %dx.types.ResRet.f32 %321, 1
  %324 = extractvalue %dx.types.ResRet.f32 %321, 2
  %325 = extractvalue %dx.types.ResRet.f32 %321, 3
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 4096
  %329 = icmp ne i32 %328, 0
  %330 = fcmp fast une float %313, 0.000000e+00
  %331 = and i32 %327, 64
  %332 = icmp ne i32 %331, 0
  %333 = and i32 %327, 128
  %334 = icmp eq i32 %333, 0
  %335 = and i32 %327, 2048
  %336 = icmp eq i32 %335, 0
  %337 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %338 = extractvalue %dx.types.Dimensions %337, 0
  %339 = sitofp i32 %338 to float
  %340 = extractvalue %dx.types.Dimensions %337, 1
  %341 = sitofp i32 %340 to float
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %343 = extractvalue %dx.types.CBufRet.f32 %342, 2
  %344 = extractvalue %dx.types.CBufRet.f32 %342, 3
  %345 = fmul fast float %343, %56
  %346 = fmul fast float %344, %57
  %347 = fmul fast float %345, %339
  %348 = fmul fast float %346, %341
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %351 = fsub fast float -0.000000e+00, %350
  %352 = fptoui float %351 to i32
  %353 = fptoui float %347 to i32
  %354 = fptoui float %348 to i32
  %355 = and i32 %352, 31
  %356 = lshr i32 %353, %355
  %357 = lshr i32 %354, %355
  %358 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %352, i32 %356, i32 %357, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = fcmp fast ogt float %359, -1.000000e+00
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 1
  %363 = select i1 %360, float %362, float 1.000000e+00
  %364 = fadd fast float %359, 1.000000e+00
  %365 = fmul fast float %363, %364
  %366 = call float @dx.op.unary.f32(i32 6, float %365)  ; FAbs(value)
  %367 = extractvalue %dx.types.CBufRet.f32 %361, 3
  %368 = fcmp fast oge float %366, %367
  %369 = select i1 %368, float 0x4197782600000000, float %366
  br i1 %336, label %459, label %370, !dx.controlflow.hints !65

; <label>:370                                     ; preds = %302
  %371 = fmul fast float %61, %343
  %372 = fmul fast float %63, %344
  %373 = fsub fast float 1.000000e+00, %371
  %374 = fsub fast float 1.000000e+00, %372
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %377 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %378 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %379 = fmul fast float %373, %376
  %380 = fmul fast float %373, %377
  %381 = fmul fast float %373, %378
  %382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.f32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.f32 %382, 1
  %385 = extractvalue %dx.types.CBufRet.f32 %382, 2
  %386 = fmul fast float %374, %383
  %387 = fmul fast float %374, %384
  %388 = fmul fast float %374, %385
  %389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.f32 %389, 0
  %391 = extractvalue %dx.types.CBufRet.f32 %389, 1
  %392 = extractvalue %dx.types.CBufRet.f32 %389, 2
  %393 = fadd fast float %386, %390
  %394 = fadd fast float %393, %379
  %395 = fadd fast float %387, %391
  %396 = fadd fast float %395, %380
  %397 = fadd fast float %388, %392
  %398 = fadd fast float %397, %381
  %399 = fmul fast float %394, %369
  %400 = fmul fast float %396, %369
  %401 = fmul fast float %398, %369
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %404 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %405 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %406 = fsub fast float %403, %25
  %407 = fadd fast float %406, %399
  %408 = fsub fast float %404, %26
  %409 = fadd fast float %408, %400
  %410 = fsub fast float %405, %27
  %411 = fadd fast float %410, %401
  %412 = fmul fast float %28, %28
  %413 = call float @dx.op.dot3.f32(i32 55, float %407, float %409, float %411, float %407, float %409, float %411)  ; Dot3(ax,ay,az,bx,by,bz)
  %414 = fsub fast float %412, %413
  %415 = fmul fast float %312, %412
  %416 = fmul fast float %311, %412
  %417 = fcmp fast olt float %414, %415
  %418 = fcmp fast ogt float %414, %416
  %419 = or i1 %417, %418
  %420 = select i1 %419, float 0.000000e+00, float %414
  %421 = fsub fast float %311, %312
  %422 = fmul fast float %421, %412
  %423 = fsub fast float %420, %415
  %424 = fdiv fast float %423, %422
  %425 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %426 = fmul fast float %425, 2.000000e+00
  %427 = fsub fast float 3.000000e+00, %426
  %428 = fmul fast float %425, %425
  %429 = fmul fast float %428, %427
  %430 = fmul fast float %316, %44
  %431 = fmul fast float %317, %45
  %432 = fmul fast float %318, %46
  %433 = fsub fast float %430, %322
  %434 = fsub fast float %431, %323
  %435 = fsub fast float %432, %324
  %436 = fsub fast float %319, %325
  %437 = fmul fast float %429, %433
  %438 = fmul fast float %429, %434
  %439 = fmul fast float %429, %435
  %440 = fmul fast float %429, %436
  %441 = fadd fast float %437, %322
  %442 = fadd fast float %438, %323
  %443 = fadd fast float %439, %324
  %444 = fadd fast float %440, %325
  %445 = fmul fast float %316, %29
  %446 = fmul fast float %317, %30
  %447 = fmul fast float %318, %31
  %448 = fsub fast float %445, %322
  %449 = fsub fast float %446, %323
  %450 = fsub fast float %447, %324
  %451 = fmul fast float %429, %448
  %452 = fmul fast float %429, %449
  %453 = fmul fast float %429, %450
  %454 = fadd fast float %451, %322
  %455 = fadd fast float %452, %323
  %456 = fadd fast float %453, %324
  %457 = fmul fast float %305, %305
  %458 = fmul fast float %457, %420
  br label %566

; <label>:459                                     ; preds = %302
  %460 = and i32 %327, 256
  %461 = icmp eq i32 %460, 0
  %462 = fsub fast float %369, %51
  br i1 %461, label %523, label %463

; <label>:463                                     ; preds = %459
  %464 = fadd fast float %311, %51
  %465 = fcmp fast olt float %369, %51
  %466 = fcmp fast ogt float %369, %464
  %467 = or i1 %465, %466
  %468 = select i1 %467, float 0.000000e+00, float %462
  %469 = call float @dx.op.unary.f32(i32 83, float %369)  ; DerivCoarseX(value)
  %470 = call float @dx.op.unary.f32(i32 84, float %369)  ; DerivCoarseY(value)
  %471 = fmul fast float %469, %469
  %472 = fmul fast float %470, %470
  %473 = fadd fast float %472, %471
  %474 = call float @dx.op.unary.f32(i32 24, float %473)  ; Sqrt(value)
  %475 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %476 = fmul fast float %475, %474
  %477 = call float @dx.op.unary.f32(i32 7, float %476)  ; Saturate(value)
  %478 = fmul fast float %477, %312
  %479 = fdiv fast float %462, %478
  %480 = call float @dx.op.unary.f32(i32 7, float %479)  ; Saturate(value)
  %481 = fmul fast float %480, 2.000000e+00
  %482 = fsub fast float 3.000000e+00, %481
  %483 = fmul fast float %480, %480
  %484 = fmul fast float %483, %482
  %485 = fsub fast float %369, %464
  %486 = fadd fast float %485, %478
  %487 = fdiv fast float %486, %478
  %488 = call float @dx.op.unary.f32(i32 7, float %487)  ; Saturate(value)
  %489 = fmul fast float %488, 2.000000e+00
  %490 = fsub fast float 3.000000e+00, %489
  %491 = fmul fast float %488, %488
  %492 = fmul fast float %491, %490
  %493 = fsub fast float %484, %492
  %494 = fmul fast float %316, %44
  %495 = fmul fast float %317, %45
  %496 = fmul fast float %318, %46
  %497 = fsub fast float %494, %322
  %498 = fsub fast float %495, %323
  %499 = fsub fast float %496, %324
  %500 = fsub fast float %319, %325
  %501 = fmul fast float %493, %497
  %502 = fmul fast float %493, %498
  %503 = fmul fast float %493, %499
  %504 = fmul fast float %493, %500
  %505 = fadd fast float %501, %322
  %506 = fadd fast float %502, %323
  %507 = fadd fast float %503, %324
  %508 = fadd fast float %504, %325
  %509 = fmul fast float %316, %29
  %510 = fmul fast float %317, %30
  %511 = fmul fast float %318, %31
  %512 = fsub fast float %509, %322
  %513 = fsub fast float %510, %323
  %514 = fsub fast float %511, %324
  %515 = fmul fast float %493, %512
  %516 = fmul fast float %493, %513
  %517 = fmul fast float %493, %514
  %518 = fadd fast float %515, %322
  %519 = fadd fast float %516, %323
  %520 = fadd fast float %517, %324
  %521 = fmul fast float %468, %305
  %522 = call float @dx.op.unary.f32(i32 6, float %521)  ; FAbs(value)
  br label %566

; <label>:523                                     ; preds = %459
  br i1 %330, label %524, label %537

; <label>:524                                     ; preds = %523
  %525 = fdiv fast float 5.000000e+01, %28
  %526 = select i1 %332, float %525, float 1.000000e+00
  %527 = fmul fast float %526, %305
  %528 = fmul fast float %183, 2.000000e+00
  %529 = fmul fast float %184, 2.000000e+00
  %530 = fadd fast float %528, -1.000000e+00
  %531 = fadd fast float %529, -1.000000e+00
  %532 = call float @dx.op.dot2.f32(i32 54, float %530, float %531, float %530, float %531)  ; Dot2(ax,ay,bx,by)
  %533 = fmul fast float %313, %28
  %534 = fmul fast float %533, %532
  %535 = fsub fast float %462, %534
  %536 = fmul fast float %527, %535
  br label %566

; <label>:537                                     ; preds = %523
  br i1 %334, label %558, label %538

; <label>:538                                     ; preds = %537
  %539 = fmul fast float %28, 0x3F947AE140000000
  %540 = select i1 %332, float %539, float 1.000000e+00
  %541 = fdiv fast float 1.000000e+00, %540
  %542 = fmul fast float %540, %306
  %543 = fmul fast float %540, %307
  %544 = fmul fast float %541, %308
  %545 = call float @dx.op.unary.f32(i32 6, float %462)  ; FAbs(value)
  %546 = fcmp fast olt float %545, %542
  br i1 %546, label %547, label %551, !dx.controlflow.hints !66

; <label>:547                                     ; preds = %538
  %548 = fmul fast float %541, %305
  %549 = fmul fast float %548, %545
  %550 = call float @dx.op.unary.f32(i32 6, float %549)  ; FAbs(value)
  br label %566

; <label>:551                                     ; preds = %538
  %552 = fcmp fast ogt float %545, %543
  br i1 %552, label %553, label %566

; <label>:553                                     ; preds = %551
  %554 = fsub fast float %545, %543
  %555 = fmul fast float %544, %554
  %556 = call float @dx.op.unary.f32(i32 6, float %555)  ; FAbs(value)
  %557 = fsub fast float 1.000000e+00, %556
  br label %566

; <label>:558                                     ; preds = %537
  %559 = fdiv fast float 5.000000e+01, %28
  %560 = select i1 %332, float %559, float 1.000000e+00
  %561 = fmul fast float %560, %305
  %562 = call float @dx.op.unary.f32(i32 6, float %281)  ; FAbs(value)
  %563 = select i1 %329, float %562, float 0x47EFFFFFE0000000
  %564 = call float @dx.op.binary.f32(i32 36, float %462, float %563)  ; FMin(a,b)
  %565 = fmul fast float %561, %564
  br label %566

; <label>:566                                     ; preds = %558, %553, %551, %547, %524, %463, %370
  %567 = phi float [ %458, %370 ], [ %522, %463 ], [ %536, %524 ], [ %565, %558 ], [ %550, %547 ], [ %557, %553 ], [ %545, %551 ]
  %568 = phi float [ %454, %370 ], [ %518, %463 ], [ %29, %524 ], [ %29, %558 ], [ %29, %547 ], [ %29, %553 ], [ %29, %551 ]
  %569 = phi float [ %455, %370 ], [ %519, %463 ], [ %30, %524 ], [ %30, %558 ], [ %30, %547 ], [ %30, %553 ], [ %30, %551 ]
  %570 = phi float [ %456, %370 ], [ %520, %463 ], [ %31, %524 ], [ %31, %558 ], [ %31, %547 ], [ %31, %553 ], [ %31, %551 ]
  %571 = phi float [ %441, %370 ], [ %505, %463 ], [ %44, %524 ], [ %44, %558 ], [ %44, %547 ], [ %44, %553 ], [ %44, %551 ]
  %572 = phi float [ %442, %370 ], [ %506, %463 ], [ %45, %524 ], [ %45, %558 ], [ %45, %547 ], [ %45, %553 ], [ %45, %551 ]
  %573 = phi float [ %443, %370 ], [ %507, %463 ], [ %46, %524 ], [ %46, %558 ], [ %46, %547 ], [ %46, %553 ], [ %46, %551 ]
  %574 = phi float [ %444, %370 ], [ %508, %463 ], [ 1.000000e+00, %524 ], [ 1.000000e+00, %558 ], [ 1.000000e+00, %547 ], [ 1.000000e+00, %553 ], [ 1.000000e+00, %551 ]
  %575 = call float @dx.op.unary.f32(i32 7, float %567)  ; Saturate(value)
  %576 = fmul fast float %575, %47
  %577 = fmul fast float %574, %260
  %578 = fmul fast float %577, %575
  br label %579

; <label>:579                                     ; preds = %566, %299
  %580 = phi float [ %571, %566 ], [ %44, %299 ]
  %581 = phi float [ %572, %566 ], [ %45, %299 ]
  %582 = phi float [ %573, %566 ], [ %46, %299 ]
  %583 = phi float [ %578, %566 ], [ %260, %299 ]
  %584 = phi float [ %576, %566 ], [ %47, %299 ]
  %585 = phi float [ %568, %566 ], [ %29, %299 ]
  %586 = phi float [ %569, %566 ], [ %30, %299 ]
  %587 = phi float [ %570, %566 ], [ %31, %299 ]
  %588 = fmul fast float %585, %32
  %589 = fmul fast float %586, %32
  %590 = fmul fast float %587, %32
  %591 = fmul fast float %585, %38
  %592 = fmul fast float %586, %38
  %593 = fmul fast float %587, %38
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 2
  %596 = fptosi float %51 to i32
  %597 = sitofp i32 %596 to float
  %598 = fadd fast float %595, %597
  %599 = fmul fast float %598, 0x3FE3C6EF40000000
  %600 = frem fast float %56, 2.560000e+02
  %601 = frem fast float %57, 2.560000e+02
  %602 = fptoui float %600 to i32
  %603 = fptoui float %601 to i32
  %604 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %602, i32 %603, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = fadd fast float %605, %599
  %607 = call float @dx.op.unary.f32(i32 22, float %606)  ; Frc(value)
  %608 = and i32 %134, 1
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %670, label %610, !dx.controlflow.hints !67

; <label>:610                                     ; preds = %579
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 2
  %613 = extractvalue %dx.types.ResRet.f32 %611, 3
  %614 = add i32 %131, 16
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = add i32 %131, 32
  %620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = and i32 %134, 2
  %625 = icmp eq i32 %624, 0
  %626 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = call float @dx.op.unary.f32(i32 25, float %626)  ; Rsqrt(value)
  %628 = fmul fast float %627, %35
  %629 = fmul fast float %627, %36
  %630 = fmul fast float %627, %37
  %631 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %632 = call float @dx.op.unary.f32(i32 25, float %631)  ; Rsqrt(value)
  %633 = fmul fast float %632, %91
  %634 = fmul fast float %632, %92
  %635 = fmul fast float %632, %93
  %636 = call float @dx.op.dot3.f32(i32 55, float %633, float %634, float %635, float %628, float %629, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %637 = fmul fast float %636, %636
  %638 = fmul fast float %637, %612
  %639 = fadd fast float %638, %613
  %640 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  br i1 %625, label %641, label %651, !dx.controlflow.hints !68

; <label>:641                                     ; preds = %610
  %642 = extractvalue %dx.types.ResRet.f32 %611, 1
  %643 = extractvalue %dx.types.ResRet.f32 %611, 0
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 3
  %646 = fmul fast float %645, %631
  %647 = fsub fast float %643, %646
  %648 = fmul fast float %647, %642
  %649 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %650 = fmul fast float %649, %640
  br label %651

; <label>:651                                     ; preds = %641, %610
  %652 = phi float [ %650, %641 ], [ %640, %610 ]
  %653 = fsub fast float %616, %621
  %654 = fsub fast float %617, %622
  %655 = fsub fast float %618, %623
  %656 = fmul fast float %652, %653
  %657 = fmul fast float %652, %654
  %658 = fmul fast float %652, %655
  %659 = fadd fast float %656, %621
  %660 = fadd fast float %657, %622
  %661 = fadd fast float %658, %623
  %662 = fmul fast float %659, %580
  %663 = fmul fast float %660, %581
  %664 = fmul fast float %661, %582
  %665 = fmul fast float %659, %588
  %666 = fmul fast float %660, %589
  %667 = fmul fast float %661, %590
  %668 = fmul fast float %652, %583
  %669 = fmul fast float %652, %584
  br label %670

; <label>:670                                     ; preds = %651, %579
  %671 = phi float [ %662, %651 ], [ %580, %579 ]
  %672 = phi float [ %663, %651 ], [ %581, %579 ]
  %673 = phi float [ %664, %651 ], [ %582, %579 ]
  %674 = phi float [ %668, %651 ], [ %583, %579 ]
  %675 = phi float [ %669, %651 ], [ %584, %579 ]
  %676 = phi float [ %665, %651 ], [ %588, %579 ]
  %677 = phi float [ %666, %651 ], [ %589, %579 ]
  %678 = phi float [ %667, %651 ], [ %590, %579 ]
  %679 = add i32 %24, 152
  %680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = add i32 %681, 0
  %683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %682, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %684 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %683, %dx.types.Handle %52, float %228, float %229, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = extractvalue %dx.types.ResRet.f32 %684, 1
  %687 = extractvalue %dx.types.ResRet.f32 %684, 2
  %688 = add i32 %24, 56
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = and i32 %690, 255
  %692 = uitofp i32 %691 to float
  %693 = fmul fast float %692, 0x3F70101020000000
  %694 = lshr i32 %690, 8
  %695 = and i32 %694, 255
  %696 = uitofp i32 %695 to float
  %697 = fmul fast float %696, 0x3F70101020000000
  %698 = lshr i32 %690, 16
  %699 = and i32 %698, 255
  %700 = uitofp i32 %699 to float
  %701 = fmul fast float %700, 0x3F70101020000000
  %702 = fmul fast float %693, %693
  %703 = fmul fast float %702, %685
  %704 = fmul fast float %697, %697
  %705 = fmul fast float %704, %686
  %706 = fmul fast float %701, %701
  %707 = fmul fast float %706, %687
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %679, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = add i32 %709, 0
  %711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %710, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %712 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %711, %dx.types.Handle %52, float %230, float %231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = extractvalue %dx.types.ResRet.f32 %712, 1
  %715 = extractvalue %dx.types.ResRet.f32 %712, 2
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 255
  %719 = uitofp i32 %718 to float
  %720 = fmul fast float %719, 0x3F70101020000000
  %721 = lshr i32 %717, 8
  %722 = and i32 %721, 255
  %723 = uitofp i32 %722 to float
  %724 = fmul fast float %723, 0x3F70101020000000
  %725 = lshr i32 %717, 16
  %726 = and i32 %725, 255
  %727 = uitofp i32 %726 to float
  %728 = fmul fast float %727, 0x3F70101020000000
  %729 = fmul fast float %720, %720
  %730 = fmul fast float %729, %713
  %731 = fmul fast float %724, %724
  %732 = fmul fast float %731, %714
  %733 = fmul fast float %728, %728
  %734 = fmul fast float %733, %715
  %735 = fsub fast float %730, %703
  %736 = fsub fast float %732, %705
  %737 = fsub fast float %734, %707
  %738 = fmul fast float %735, %41
  %739 = fmul fast float %736, %41
  %740 = fmul fast float %737, %41
  %741 = fadd fast float %738, %703
  %742 = fadd fast float %739, %705
  %743 = fadd fast float %740, %707
  %744 = fmul fast float %741, %671
  %745 = fmul fast float %742, %672
  %746 = fmul fast float %743, %673
  %747 = add i32 %24, 156
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = add i32 %749, 0
  %751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %750, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %752 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %751, %dx.types.Handle %52, float %228, float %229, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %753 = extractvalue %dx.types.ResRet.f32 %752, 0
  %754 = extractvalue %dx.types.ResRet.f32 %752, 1
  %755 = extractvalue %dx.types.ResRet.f32 %752, 2
  %756 = add i32 %24, 44
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = shl i32 %758, 4
  %760 = and i32 %759, 32752
  %761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %760)  ; LegacyF16ToF32(value)
  %762 = lshr i32 %758, 7
  %763 = and i32 %762, 32752
  %764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %763)  ; LegacyF16ToF32(value)
  %765 = lshr i32 %758, 22
  %766 = shl nuw nsw i32 %765, 5
  %767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %766)  ; LegacyF16ToF32(value)
  %768 = fmul fast float %761, %753
  %769 = fmul fast float %764, %754
  %770 = fmul fast float %767, %755
  %771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.f32 %771, 0
  %773 = fmul fast float %768, %772
  %774 = fmul fast float %769, %772
  %775 = fmul fast float %770, %772
  %776 = add i32 %24, 48
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = lshr i32 %778, 22
  %780 = shl nuw nsw i32 %779, 5
  %781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %780)  ; LegacyF16ToF32(value)
  %782 = fmul fast float %781, %773
  %783 = select i1 %114, float %782, float %773
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = add i32 %785, 0
  %787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %788 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %787, %dx.types.Handle %52, float %230, float %231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %789 = extractvalue %dx.types.ResRet.f32 %788, 0
  %790 = extractvalue %dx.types.ResRet.f32 %788, 1
  %791 = extractvalue %dx.types.ResRet.f32 %788, 2
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = shl i32 %793, 4
  %795 = and i32 %794, 32752
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = lshr i32 %793, 7
  %798 = and i32 %797, 32752
  %799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %798)  ; LegacyF16ToF32(value)
  %800 = lshr i32 %793, 22
  %801 = shl nuw nsw i32 %800, 5
  %802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %801)  ; LegacyF16ToF32(value)
  %803 = fmul fast float %796, %789
  %804 = fmul fast float %799, %790
  %805 = fmul fast float %802, %791
  %806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %807 = extractvalue %dx.types.CBufRet.f32 %806, 0
  %808 = fmul fast float %803, %807
  %809 = fmul fast float %804, %807
  %810 = fmul fast float %805, %807
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = lshr i32 %812, 22
  %814 = shl nuw nsw i32 %813, 5
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = fmul fast float %815, %808
  %817 = select i1 %114, float %816, float %808
  %818 = fsub fast float %817, %783
  %819 = fsub fast float %809, %774
  %820 = fsub fast float %810, %775
  %821 = fmul fast float %818, %41
  %822 = fmul fast float %819, %41
  %823 = fmul fast float %820, %41
  %824 = fadd fast float %821, %783
  %825 = fadd fast float %822, %774
  %826 = fadd fast float %823, %775
  %827 = add i32 %24, 40
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = and i32 %829, 255
  %831 = uitofp i32 %830 to float
  %832 = fmul fast float %831, 0x3F70101020000000
  %833 = fmul fast float %832, %832
  %834 = add i32 %24, 164
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = add i32 %836, 0
  %838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %839 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %838, %dx.types.Handle %53, float %228, float %229, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = fmul fast float %833, %840
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = and i32 %843, 255
  %845 = uitofp i32 %844 to float
  %846 = fmul fast float %845, 0x3F70101020000000
  %847 = fmul fast float %846, %846
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = add i32 %849, 0
  %851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %850, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %852 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %851, %dx.types.Handle %53, float %230, float %231, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  %854 = fmul fast float %847, %853
  %855 = fsub fast float %854, %841
  %856 = fmul fast float %855, %41
  %857 = fadd fast float %856, %841
  %858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %859 = extractvalue %dx.types.ResRet.f32 %858, 0
  %860 = extractvalue %dx.types.ResRet.f32 %858, 1
  %861 = extractvalue %dx.types.ResRet.f32 %858, 2
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 1
  %864 = fmul fast float %863, %859
  %865 = fmul fast float %863, %860
  %866 = fmul fast float %863, %861
  %867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %868 = extractvalue %dx.types.CBufRet.f32 %867, 0
  %869 = fmul fast float %744, %868
  %870 = fmul fast float %745, %868
  %871 = fmul fast float %746, %868
  %872 = fmul fast float %824, %676
  %873 = fmul fast float %825, %677
  %874 = fmul fast float %826, %678
  %875 = call float @dx.op.dot3.f32(i32 55, float %872, float %873, float %874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %876 = select i1 %114, float 0.000000e+00, float %872
  %877 = select i1 %114, float %875, float %873
  %878 = select i1 %114, float 0.000000e+00, float %874
  %879 = fmul fast float %591, %824
  %880 = fmul fast float %592, %825
  %881 = fmul fast float %593, %826
  %882 = call float @dx.op.dot3.f32(i32 55, float %869, float %870, float %871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %883 = add i32 %24, 32
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = and i32 %885, 255
  %887 = uitofp i32 %886 to float
  %888 = lshr i32 %885, 8
  %889 = and i32 %888, 255
  %890 = uitofp i32 %889 to float
  %891 = fmul fast float %890, %882
  %892 = fadd fast float %891, %887
  %893 = fmul fast float %892, 0x3F70101020000000
  %894 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  %895 = and i32 %134, 8192
  %896 = icmp eq i32 %895, 0
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 0
  br i1 %896, label %905, label %899, !dx.controlflow.hints !69

; <label>:899                                     ; preds = %670
  %900 = add i32 %131, 176
  %901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.f32 %901, 0
  %903 = fcmp fast oge float %902, 0.000000e+00
  %904 = select i1 %903, float %902, float %898
  br label %912

; <label>:905                                     ; preds = %670
  %906 = add i32 %24, 136
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = bitcast i32 %908 to float
  %910 = fcmp fast oge float %909, 0.000000e+00
  %911 = select i1 %910, float %909, float %898
  br label %912

; <label>:912                                     ; preds = %905, %899
  %913 = phi float [ %904, %899 ], [ %911, %905 ]
  %914 = fsub fast float 1.000000e+00, %857
  %915 = fmul fast float %914, %675
  %916 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %263, i32 %264, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = lshr i32 %917, 18
  %919 = uitofp i32 %918 to float
  %920 = fmul fast float %919, 0x3F4C00EBA0000000
  %921 = call float @dx.op.unary.f32(i32 21, float %920)  ; Exp(value)
  %922 = fadd fast float %921, -1.000000e+00
  %923 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %924 = extractvalue %dx.types.Dimensions %923, 0
  %925 = sitofp i32 %924 to float
  %926 = extractvalue %dx.types.Dimensions %923, 1
  %927 = sitofp i32 %926 to float
  %928 = fcmp fast oge float %261, %925
  %929 = fcmp fast oge float %262, %927
  %930 = or i1 %928, %929
  %931 = select i1 %930, float 0x4197782600000000, float %922
  %932 = icmp eq i32 %130, 3
  %933 = fcmp fast ogt float %51, %931
  %934 = and i1 %287, %933
  %935 = or i1 %932, %934
  %936 = icmp eq i32 %130, 2
  %937 = fcmp fast ole float %51, %931
  %938 = and i1 %936, %937
  %939 = or i1 %938, %935
  %940 = fmul fast float %879, %864
  %941 = fmul fast float %880, %865
  %942 = fmul fast float %881, %866
  %943 = fadd fast float %940, %876
  %944 = fadd fast float %877, %941
  %945 = fadd fast float %942, %878
  %946 = fmul fast float %943, %674
  %947 = fmul fast float %944, %674
  %948 = fmul fast float %945, %674
  %949 = fmul fast float %864, %674
  %950 = fmul fast float %865, %674
  %951 = fmul fast float %866, %674
  %952 = fadd fast float %857, -1.000000e+00
  %953 = fmul fast float %952, %674
  %954 = fadd fast float %953, 1.000000e+00
  %955 = call float @dx.op.dot3.f32(i32 55, float %954, float %954, float %954, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %956 = fsub fast float 1.000000e+00, %955
  %957 = fmul fast float %913, %894
  %958 = fsub fast float 1.000000e+00, %915
  %959 = fsub fast float %958, %894
  %960 = call float @dx.op.unary.f32(i32 7, float %959)  ; Saturate(value)
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %963 = fmul fast float %962, %960
  %964 = fadd fast float %963, %957
  %965 = and i32 %134, 1048576
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %1058, label %967, !dx.controlflow.hints !70

; <label>:967                                     ; preds = %912
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 3
  %971 = fmul fast float %969, %56
  %972 = fmul fast float %970, %57
  %973 = call float @dx.op.unary.f32(i32 7, float %971)  ; Saturate(value)
  %974 = call float @dx.op.unary.f32(i32 7, float %972)  ; Saturate(value)
  %975 = select i1 %939, i32 2, i32 0
  %976 = or i32 %975, 1
  %977 = uitofp i32 %976 to float
  %978 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %973, float %974, float %977, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %979 = extractvalue %dx.types.ResRet.f32 %978, 0
  %980 = extractvalue %dx.types.ResRet.f32 %978, 1
  %981 = extractvalue %dx.types.ResRet.f32 %978, 2
  %982 = extractvalue %dx.types.ResRet.f32 %978, 3
  %983 = add nuw nsw i32 %975, 2
  %984 = uitofp i32 %983 to float
  %985 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %973, float %974, float %984, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  %987 = extractvalue %dx.types.ResRet.f32 %985, 1
  %988 = extractvalue %dx.types.ResRet.f32 %985, 2
  %989 = extractvalue %dx.types.ResRet.f32 %985, 3
  %990 = call float @dx.op.binary.f32(i32 35, float %980, float %981)  ; FMax(a,b)
  %991 = call float @dx.op.binary.f32(i32 35, float %979, float %990)  ; FMax(a,b)
  %992 = call float @dx.op.binary.f32(i32 35, float %991, float %982)  ; FMax(a,b)
  %993 = call float @dx.op.binary.f32(i32 36, float %987, float %988)  ; FMin(a,b)
  %994 = call float @dx.op.binary.f32(i32 36, float %986, float %993)  ; FMin(a,b)
  %995 = call float @dx.op.binary.f32(i32 36, float %994, float %989)  ; FMin(a,b)
  %996 = fmul fast float %992, 2.550000e+02
  %997 = fadd fast float %996, 0x3F70101020000000
  %998 = fptoui float %997 to i32
  %999 = fmul fast float %995, 2.550000e+02
  %1000 = fadd fast float %999, 0x3F70101020000000
  %1001 = fptoui float %1000 to i32
  %1002 = icmp ult i32 %998, %1001
  br i1 %1002, label %1003, label %1051

; <label>:1003                                    ; preds = %967
  %1004 = fcmp fast ogt float %50, 9.843750e-01
  %1005 = fadd fast float %51, -4.000000e+00
  %1006 = select i1 %1004, float -4.000000e+00, float %1005
  %1007 = call float @dx.op.binary.f32(i32 35, float %1006, float 0.000000e+00)  ; FMax(a,b)
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1010 = fadd fast float %1009, %1007
  %1011 = extractvalue %dx.types.CBufRet.f32 %1008, 2
  %1012 = fmul fast float %1010, %1011
  %1013 = call float @dx.op.unary.f32(i32 23, float %1012)  ; Log(value)
  %1014 = extractvalue %dx.types.CBufRet.f32 %1008, 3
  %1015 = fmul fast float %1014, %1013
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 2
  %1018 = fmul fast float %1015, %1017
  %1019 = call float @dx.op.unary.f32(i32 7, float %1018)  ; Saturate(value)
  %1020 = uitofp i32 %998 to float
  %1021 = uitofp i32 %1001 to float
  %1022 = fadd fast float %1020, 5.000000e-01
  %1023 = fadd fast float %1021, 5.000000e-01
  %1024 = fmul fast float %1017, %1022
  %1025 = fmul fast float %1017, %1023
  %1026 = fadd fast float %1024, 0x3F0FFB4800000000
  %1027 = fadd fast float %1025, 0xBF0FFB4800000000
  %1028 = call float @dx.op.binary.f32(i32 35, float %1019, float %1026)  ; FMax(a,b)
  %1029 = call float @dx.op.binary.f32(i32 36, float %1028, float %1027)  ; FMin(a,b)
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1032 = extractvalue %dx.types.CBufRet.f32 %1030, 2
  %1033 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1034 = select i1 %939, float %1033, float 0.000000e+00
  %1035 = fmul fast float %1031, %1029
  %1036 = fadd fast float %1034, %1035
  %1037 = fadd fast float %1034, %1032
  %1038 = fsub fast float %1031, %1032
  %1039 = fadd fast float %1038, %1034
  %1040 = call float @dx.op.binary.f32(i32 35, float %1036, float %1037)  ; FMax(a,b)
  %1041 = call float @dx.op.binary.f32(i32 36, float %1040, float %1039)  ; FMin(a,b)
  %1042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %973, float %974, float %1041, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 1
  %1048 = fmul fast float %1047, %1043
  %1049 = fmul fast float %1047, %1044
  %1050 = fmul fast float %1047, %1045
  br label %1051

; <label>:1051                                    ; preds = %1003, %967
  %1052 = phi float [ %1048, %1003 ], [ 1.000000e+00, %967 ]
  %1053 = phi float [ %1049, %1003 ], [ 1.000000e+00, %967 ]
  %1054 = phi float [ %1050, %1003 ], [ 1.000000e+00, %967 ]
  %1055 = fmul fast float %1052, %946
  %1056 = fmul fast float %1053, %947
  %1057 = fmul fast float %1054, %948
  br label %1058

; <label>:1058                                    ; preds = %1051, %912
  %1059 = phi float [ %1055, %1051 ], [ %946, %912 ]
  %1060 = phi float [ %1056, %1051 ], [ %947, %912 ]
  %1061 = phi float [ %1057, %1051 ], [ %948, %912 ]
  %1062 = and i32 %134, 2097152
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1068, label %1064, !dx.controlflow.hints !71

; <label>:1064                                    ; preds = %1058
  %1065 = add i32 %131, 192
  %1066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  br label %1071

; <label>:1068                                    ; preds = %1058
  %1069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.f32 %1069, 3
  br label %1071

; <label>:1071                                    ; preds = %1068, %1064
  %1072 = phi float [ %1067, %1064 ], [ %1070, %1068 ]
  %1073 = fmul fast float %949, %869
  %1074 = fmul fast float %950, %870
  %1075 = fmul fast float %951, %871
  br i1 %934, label %1076, label %1185

; <label>:1076                                    ; preds = %1071
  %1077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.f32 %1077, 2
  %1079 = extractvalue %dx.types.CBufRet.f32 %1077, 3
  %1080 = fmul fast float %1078, %56
  %1081 = fmul fast float %1079, %57
  %1082 = call float @dx.op.unary.f32(i32 7, float %1080)  ; Saturate(value)
  %1083 = call float @dx.op.unary.f32(i32 7, float %1081)  ; Saturate(value)
  %1084 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1082, float %1083, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = extractvalue %dx.types.ResRet.f32 %1084, 3
  %1089 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1082, float %1083, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1093 = extractvalue %dx.types.ResRet.f32 %1089, 3
  %1094 = call float @dx.op.binary.f32(i32 35, float %1086, float %1087)  ; FMax(a,b)
  %1095 = call float @dx.op.binary.f32(i32 35, float %1085, float %1094)  ; FMax(a,b)
  %1096 = call float @dx.op.binary.f32(i32 35, float %1095, float %1088)  ; FMax(a,b)
  %1097 = call float @dx.op.binary.f32(i32 36, float %1091, float %1092)  ; FMin(a,b)
  %1098 = call float @dx.op.binary.f32(i32 36, float %1090, float %1097)  ; FMin(a,b)
  %1099 = call float @dx.op.binary.f32(i32 36, float %1098, float %1093)  ; FMin(a,b)
  %1100 = fmul fast float %1096, 2.550000e+02
  %1101 = fadd fast float %1100, 0x3F70101020000000
  %1102 = fptoui float %1101 to i32
  %1103 = fmul fast float %1099, 2.550000e+02
  %1104 = fadd fast float %1103, 0x3F70101020000000
  %1105 = fptoui float %1104 to i32
  %1106 = icmp ult i32 %1102, %1105
  br i1 %1106, label %1107, label %1158

; <label>:1107                                    ; preds = %1076
  %1108 = fcmp fast ogt float %50, 9.843750e-01
  %1109 = fadd fast float %51, -4.000000e+00
  %1110 = select i1 %1108, float -4.000000e+00, float %1109
  %1111 = call float @dx.op.binary.f32(i32 35, float %1110, float 0.000000e+00)  ; FMax(a,b)
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1112, 0
  %1114 = fadd fast float %1113, %1111
  %1115 = extractvalue %dx.types.CBufRet.f32 %1112, 2
  %1116 = fmul fast float %1114, %1115
  %1117 = call float @dx.op.unary.f32(i32 23, float %1116)  ; Log(value)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1112, 3
  %1119 = fmul fast float %1118, %1117
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 2
  %1122 = fmul fast float %1119, %1121
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1124 = uitofp i32 %1102 to float
  %1125 = uitofp i32 %1105 to float
  %1126 = fadd fast float %1124, 5.000000e-01
  %1127 = fadd fast float %1125, 5.000000e-01
  %1128 = fmul fast float %1121, %1126
  %1129 = fmul fast float %1121, %1127
  %1130 = fadd fast float %1128, 0x3F0FFB4800000000
  %1131 = fadd fast float %1129, 0xBF0FFB4800000000
  %1132 = call float @dx.op.binary.f32(i32 35, float %1123, float %1130)  ; FMax(a,b)
  %1133 = call float @dx.op.binary.f32(i32 36, float %1132, float %1131)  ; FMin(a,b)
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 1
  %1136 = extractvalue %dx.types.CBufRet.f32 %1134, 2
  %1137 = extractvalue %dx.types.CBufRet.f32 %1134, 0
  %1138 = fmul fast float %1135, %1133
  %1139 = fadd fast float %1137, %1138
  %1140 = fadd fast float %1137, %1136
  %1141 = fsub fast float %1135, %1136
  %1142 = fadd fast float %1141, %1137
  %1143 = call float @dx.op.binary.f32(i32 35, float %1139, float %1140)  ; FMax(a,b)
  %1144 = call float @dx.op.binary.f32(i32 36, float %1143, float %1142)  ; FMin(a,b)
  %1145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1082, float %1083, float %1144, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 0
  %1147 = extractvalue %dx.types.ResRet.f32 %1145, 1
  %1148 = extractvalue %dx.types.ResRet.f32 %1145, 2
  %1149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1082, float %1083, float %1144, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.ResRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.ResRet.f32 %1149, 2
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 1
  %1155 = fmul fast float %1154, %1150
  %1156 = fmul fast float %1154, %1151
  %1157 = fmul fast float %1154, %1152
  br label %1158

; <label>:1158                                    ; preds = %1107, %1076
  %1159 = phi float [ %1146, %1107 ], [ 1.000000e+00, %1076 ]
  %1160 = phi float [ %1147, %1107 ], [ 1.000000e+00, %1076 ]
  %1161 = phi float [ %1148, %1107 ], [ 1.000000e+00, %1076 ]
  %1162 = phi float [ %1155, %1107 ], [ 0.000000e+00, %1076 ]
  %1163 = phi float [ %1156, %1107 ], [ 0.000000e+00, %1076 ]
  %1164 = phi float [ %1157, %1107 ], [ 0.000000e+00, %1076 ]
  %1165 = fmul fast float %1162, %956
  %1166 = fmul fast float %1163, %956
  %1167 = fmul fast float %1164, %956
  %1168 = call float @dx.op.dot3.f32(i32 55, float %1159, float %1160, float %1161, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1169 = call float @dx.op.dot3.f32(i32 55, float %1165, float %1166, float %1167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1170 = select i1 %114, float %1168, float %1159
  %1171 = select i1 %114, float %1168, float %1160
  %1172 = select i1 %114, float 1.000000e+00, float %1161
  %1173 = select i1 %114, float %1169, float %1165
  %1174 = select i1 %114, float 0.000000e+00, float %1166
  %1175 = select i1 %114, float 0.000000e+00, float %1167
  %1176 = fmul fast float %1170, %1073
  %1177 = fmul fast float %1171, %1074
  %1178 = fmul fast float %1172, %1075
  %1179 = fadd fast float %1176, %1173
  %1180 = fadd fast float %1177, %1174
  %1181 = fadd fast float %1175, %1178
  %1182 = fmul fast float %1170, %1059
  %1183 = fmul fast float %1171, %1060
  %1184 = fmul fast float %1172, %1061
  br label %1185

; <label>:1185                                    ; preds = %1158, %1071
  %1186 = phi float [ %931, %1158 ], [ %51, %1071 ]
  %1187 = phi float [ %1179, %1158 ], [ %1073, %1071 ]
  %1188 = phi float [ %1180, %1158 ], [ %1074, %1071 ]
  %1189 = phi float [ %1181, %1158 ], [ %1075, %1071 ]
  %1190 = phi float [ %1182, %1158 ], [ %1059, %1071 ]
  %1191 = phi float [ %1183, %1158 ], [ %1060, %1071 ]
  %1192 = phi float [ %1184, %1158 ], [ %1061, %1071 ]
  %1193 = phi float [ %1159, %1158 ], [ 1.000000e+00, %1071 ]
  br i1 %939, label %1495, label %1194

; <label>:1194                                    ; preds = %1185
  %1195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.ResRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.ResRet.f32 %1199, 2
  %1203 = fmul fast float %1196, %956
  %1204 = fmul fast float %1197, %956
  %1205 = fmul fast float %1198, %956
  %1206 = fmul fast float %1200, %1193
  %1207 = call float @dx.op.dot3.f32(i32 55, float %1200, float %1201, float %1202, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1208 = call float @dx.op.dot3.f32(i32 55, float %1203, float %1204, float %1205, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1209 = select i1 %114, float %1207, float %1200
  %1210 = select i1 %114, float %1207, float %1201
  %1211 = select i1 %114, float 1.000000e+00, float %1202
  %1212 = select i1 %114, float %1208, float %1203
  %1213 = select i1 %114, float 0.000000e+00, float %1204
  %1214 = select i1 %114, float 0.000000e+00, float %1205
  %1215 = fmul fast float %1209, %1187
  %1216 = fmul fast float %1210, %1188
  %1217 = fmul fast float %1211, %1189
  %1218 = fadd fast float %1215, %1212
  %1219 = fadd fast float %1216, %1213
  %1220 = fadd fast float %1217, %1214
  %1221 = fmul fast float %1209, %1190
  %1222 = fmul fast float %1210, %1191
  %1223 = fmul fast float %1211, %1192
  %1224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.i32 %1224, 0
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1495, label %1227, !dx.controlflow.hints !72

; <label>:1227                                    ; preds = %1194
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 2
  %1230 = extractvalue %dx.types.CBufRet.f32 %1228, 3
  %1231 = fmul fast float %1229, %56
  %1232 = fmul fast float %1230, %57
  %1233 = fmul fast float %1231, 2.000000e+00
  %1234 = fmul fast float %1232, 2.000000e+00
  %1235 = fsub fast float 1.000000e+00, %1233
  %1236 = fsub fast float 1.000000e+00, %1234
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.CBufRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.CBufRet.f32 %1237, 2
  %1241 = fmul fast float %1235, %1238
  %1242 = fmul fast float %1235, %1239
  %1243 = fmul fast float %1235, %1240
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.CBufRet.f32 %1244, 1
  %1247 = extractvalue %dx.types.CBufRet.f32 %1244, 2
  %1248 = fmul fast float %1236, %1245
  %1249 = fmul fast float %1236, %1246
  %1250 = fmul fast float %1236, %1247
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.CBufRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1255 = fadd fast float %1248, %1252
  %1256 = fadd fast float %1255, %1241
  %1257 = fadd fast float %1249, %1253
  %1258 = fadd fast float %1257, %1242
  %1259 = fadd fast float %1250, %1254
  %1260 = fadd fast float %1259, %1243
  %1261 = fmul fast float %1256, %1186
  %1262 = fmul fast float %1258, %1186
  %1263 = fmul fast float %1260, %1186
  %1264 = fmul fast float %1261, %1261
  %1265 = fmul fast float %1262, %1262
  %1266 = fadd fast float %1264, %1265
  %1267 = fmul fast float %1263, %1263
  %1268 = fadd fast float %1266, %1267
  %1269 = call float @dx.op.unary.f32(i32 24, float %1268)  ; Sqrt(value)
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 0
  %1272 = fsub fast float %1269, %1271
  %1273 = extractvalue %dx.types.CBufRet.f32 %1270, 2
  %1274 = fmul fast float %1272, %1273
  %1275 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1276 = fadd fast float %1275, -5.000000e-01
  %1277 = fmul fast float %1276, 2.000000e+00
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 2
  %1280 = call float @dx.op.binary.f32(i32 36, float %1279, float %1277)  ; FMin(a,b)
  %1281 = fsub fast float -0.000000e+00, %1279
  %1282 = fcmp fast ogt float %1280, %1281
  br i1 %1282, label %1283, label %1495, !dx.controlflow.hints !73

; <label>:1283                                    ; preds = %1227
  %1284 = fmul fast float %1280, 5.000000e-01
  %1285 = fadd fast float %1284, 5.000000e-01
  %1286 = call float @dx.op.unary.f32(i32 22, float %1285)  ; Frc(value)
  %1287 = call float @dx.op.unary.f32(i32 27, float %1286)  ; Round_ni(value)
  %1288 = call float @dx.op.unary.f32(i32 22, float %1286)  ; Frc(value)
  %1289 = fmul fast float %1288, 2.000000e+00
  %1290 = fadd fast float %1289, -1.000000e+00
  %1291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1231, float %1232, float %1287, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.ResRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.ResRet.f32 %1291, 2
  %1295 = extractvalue %dx.types.ResRet.f32 %1291, 3
  %1296 = fadd fast float %1292, -5.000000e-01
  %1297 = fadd fast float %1294, -5.000000e-01
  %1298 = fmul fast float %1296, 0xBFD5555560000000
  %1299 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1297, float %1298)  ; FMad(a,b,c)
  %1300 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1293, float 0.000000e+00)  ; FMad(a,b,c)
  %1301 = fadd fast float %1300, %1295
  %1302 = fmul fast float %1296, -7.500000e-01
  %1303 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1297, float %1302)  ; FMad(a,b,c)
  %1304 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1293, float 0.000000e+00)  ; FMad(a,b,c)
  %1305 = fadd fast float %1304, %1295
  %1306 = call float @dx.op.binary.f32(i32 35, float %1299, float -1.000000e+00)  ; FMax(a,b)
  %1307 = call float @dx.op.binary.f32(i32 35, float %1301, float -1.000000e+00)  ; FMax(a,b)
  %1308 = call float @dx.op.binary.f32(i32 35, float %1303, float -1.000000e+00)  ; FMax(a,b)
  %1309 = call float @dx.op.binary.f32(i32 35, float %1305, float -1.000000e+00)  ; FMax(a,b)
  %1310 = call float @dx.op.binary.f32(i32 36, float %1306, float 1.000000e+00)  ; FMin(a,b)
  %1311 = call float @dx.op.binary.f32(i32 36, float %1307, float 1.000000e+00)  ; FMin(a,b)
  %1312 = call float @dx.op.binary.f32(i32 36, float %1308, float 1.000000e+00)  ; FMin(a,b)
  %1313 = call float @dx.op.binary.f32(i32 36, float %1309, float 1.000000e+00)  ; FMin(a,b)
  %1314 = fcmp fast olt float %1310, 0x3FEFFF8020000000
  br i1 %1314, label %1315, label %1430, !dx.controlflow.hints !74

; <label>:1315                                    ; preds = %1283
  %1316 = extractvalue %dx.types.CBufRet.f32 %1278, 3
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  %1319 = extractvalue %dx.types.CBufRet.f32 %1317, 1
  %1320 = extractvalue %dx.types.CBufRet.f32 %1317, 2
  %1321 = extractvalue %dx.types.CBufRet.f32 %1317, 3
  %1322 = fsub fast float %1318, %1310
  %1323 = fsub fast float %1319, %1311
  %1324 = fsub fast float %1320, %1312
  %1325 = fsub fast float %1321, %1313
  %1326 = fmul fast float %1322, %1316
  %1327 = fmul fast float %1323, %1316
  %1328 = fmul fast float %1324, %1316
  %1329 = fmul fast float %1325, %1316
  %1330 = fadd fast float %1326, %1310
  %1331 = fadd fast float %1327, %1311
  %1332 = fsub fast float -0.000000e+00, %1331
  %1333 = fadd fast float %1328, %1312
  %1334 = fadd fast float %1329, %1313
  %1335 = fmul fast float %1330, %1330
  %1336 = fsub fast float %1331, %1335
  %1337 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1336)  ; FMax(a,b)
  %1338 = fdiv fast float 1.000000e+00, %1337
  %1339 = fmul fast float %1331, %1330
  %1340 = fsub fast float %1333, %1339
  %1341 = fsub fast float %1290, %1330
  %1342 = fmul fast float %1290, %1290
  %1343 = fsub fast float %1342, %1331
  %1344 = fmul fast float %1341, %1338
  %1345 = fmul fast float %1344, %1340
  %1346 = fsub fast float %1343, %1345
  %1347 = fmul fast float %1331, %1331
  %1348 = fsub fast float %1334, %1347
  %1349 = fmul fast float %1340, %1340
  %1350 = fmul fast float %1349, %1338
  %1351 = fsub fast float %1348, %1350
  %1352 = fdiv fast float %1346, %1351
  %1353 = fmul fast float %1340, %1352
  %1354 = fsub fast float %1341, %1353
  %1355 = fmul fast float %1354, %1338
  %1356 = fmul fast float %1355, %1330
  %1357 = fsub fast float 1.000000e+00, %1356
  %1358 = fmul fast float %1331, %1352
  %1359 = fsub fast float %1357, %1358
  %1360 = fmul fast float %1355, %1355
  %1361 = fmul fast float %1352, 4.000000e+00
  %1362 = fmul fast float %1361, %1359
  %1363 = fsub fast float %1360, %1362
  %1364 = call float @dx.op.unary.f32(i32 24, float %1363)  ; Sqrt(value)
  %1365 = fcmp fast oge float %1355, 0.000000e+00
  %1366 = fsub fast float -0.000000e+00, %1364
  %1367 = select i1 %1365, float %1366, float %1364
  %1368 = fsub fast float %1367, %1355
  %1369 = fdiv fast float %1368, %1352
  %1370 = fdiv fast float %1359, %1368
  %1371 = fmul fast float %1369, 5.000000e-01
  %1372 = fmul fast float %1370, 2.000000e+00
  %1373 = select i1 %1365, float %1371, float %1372
  %1374 = select i1 %1365, float %1372, float %1371
  %1375 = call float @dx.op.binary.f32(i32 35, float %1373, float %1374)  ; FMax(a,b)
  %1376 = call float @dx.op.binary.f32(i32 36, float %1373, float %1374)  ; FMin(a,b)
  %1377 = fcmp fast ogt float %1290, %1376
  br i1 %1377, label %1378, label %1388

; <label>:1378                                    ; preds = %1315
  %1379 = fsub fast float %1290, %1376
  %1380 = fsub fast float %1375, %1376
  %1381 = fmul fast float %1379, %1380
  %1382 = fmul fast float %1375, %1290
  %1383 = fadd fast float %1375, %1290
  %1384 = fmul fast float %1383, %1330
  %1385 = fadd fast float %1382, %1331
  %1386 = fsub fast float %1385, %1384
  %1387 = fdiv fast float %1386, %1381
  br label %1388

; <label>:1388                                    ; preds = %1378, %1315
  %1389 = phi float [ %1387, %1378 ], [ 0.000000e+00, %1315 ]
  %1390 = fcmp fast ogt float %1290, %1375
  %1391 = fsub fast float %1290, %1375
  br i1 %1390, label %1392, label %1402

; <label>:1392                                    ; preds = %1388
  %1393 = fsub fast float %1375, %1376
  %1394 = fmul fast float %1393, %1391
  %1395 = fmul fast float %1376, %1290
  %1396 = fadd fast float %1376, %1290
  %1397 = fmul fast float %1396, %1330
  %1398 = fsub fast float %1332, %1395
  %1399 = fadd fast float %1398, %1397
  %1400 = fdiv fast float %1399, %1394
  %1401 = fadd fast float %1400, %1389
  br label %1402

; <label>:1402                                    ; preds = %1392, %1388
  %1403 = phi float [ %1401, %1392 ], [ %1389, %1388 ]
  %1404 = fsub fast float %1290, %1376
  %1405 = fmul fast float %1404, %1391
  %1406 = fmul fast float %1376, %1375
  %1407 = fadd fast float %1376, %1375
  %1408 = fmul fast float %1407, %1330
  %1409 = fadd fast float %1406, %1331
  %1410 = fsub fast float %1409, %1408
  %1411 = fdiv fast float %1410, %1405
  %1412 = call float @dx.op.unary.f32(i32 7, float %1403)  ; Saturate(value)
  %1413 = fcmp fast oeq float %1072, 0.000000e+00
  %1414 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  %1415 = fcmp fast oeq float %1414, 0.000000e+00
  %1416 = or i1 %1413, %1415
  %1417 = fmul fast float %1414, 2.000000e+00
  %1418 = fadd fast float %1279, %1280
  %1419 = fdiv fast float %1418, %1417
  %1420 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1421 = fmul fast float %1420, 2.000000e+00
  %1422 = fsub fast float 3.000000e+00, %1421
  %1423 = fmul fast float %1420, %1420
  %1424 = fmul fast float %1423, %1422
  %1425 = select i1 %1416, float 1.000000e+00, float %1424
  %1426 = fmul fast float %1411, %1072
  %1427 = fadd fast float %1412, %1426
  %1428 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1429 = fmul fast float %1425, %1428
  br label %1430

; <label>:1430                                    ; preds = %1402, %1283
  %1431 = phi float [ %1429, %1402 ], [ 0.000000e+00, %1283 ]
  %1432 = fsub fast float 1.000000e+00, %1431
  %1433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1231, float %1232, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  %1435 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1436 = extractvalue %dx.types.CBufRet.i32 %1435, 2
  %1437 = icmp eq i32 %1436, 0
  br i1 %1437, label %1443, label %1438

; <label>:1438                                    ; preds = %1430
  %1439 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1440 = fadd fast float %1434, -1.000000e+00
  %1441 = fmul fast float %1439, %1440
  %1442 = fadd fast float %1441, 1.000000e+00
  br label %1443

; <label>:1443                                    ; preds = %1438, %1430
  %1444 = phi float [ %1442, %1438 ], [ %1432, %1430 ]
  %1445 = call float @dx.op.binary.f32(i32 35, float %1434, float %1444)  ; FMax(a,b)
  %1446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.i32 %1446, 2
  %1448 = and i32 %1447, 1
  %1449 = icmp eq i32 %1448, 0
  %1450 = fcmp fast une float %1445, 1.000000e+00
  %1451 = and i1 %1450, %1449
  br i1 %1451, label %1452, label %1471

; <label>:1452                                    ; preds = %1443
  %1453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1231, float %1232, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1454 = extractvalue %dx.types.ResRet.f32 %1453, 0
  %1455 = extractvalue %dx.types.ResRet.f32 %1453, 1
  %1456 = extractvalue %dx.types.ResRet.f32 %1453, 2
  %1457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1458 = extractvalue %dx.types.CBufRet.f32 %1457, 1
  %1459 = fmul fast float %1458, %1454
  %1460 = fmul fast float %1458, %1455
  %1461 = fmul fast float %1458, %1456
  %1462 = fcmp fast ogt float %1434, 0x3FEFFF2E40000000
  %1463 = fsub fast float 1.000000e+00, %1445
  %1464 = fsub fast float 1.000000e+00, %1434
  %1465 = fdiv fast float %1463, %1464
  %1466 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  %1467 = select i1 %1462, float 0.000000e+00, float %1466
  %1468 = fmul fast float %1459, %1467
  %1469 = fmul fast float %1460, %1467
  %1470 = fmul fast float %1461, %1467
  br label %1471

; <label>:1471                                    ; preds = %1452, %1443
  %1472 = phi float [ 0.000000e+00, %1443 ], [ %1468, %1452 ]
  %1473 = phi float [ 0.000000e+00, %1443 ], [ %1469, %1452 ]
  %1474 = phi float [ 0.000000e+00, %1443 ], [ %1470, %1452 ]
  %1475 = fmul fast float %1472, %956
  %1476 = fmul fast float %1473, %956
  %1477 = fmul fast float %1474, %956
  %1478 = fmul fast float %1445, %1206
  %1479 = call float @dx.op.dot3.f32(i32 55, float %1445, float %1445, float %1445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1480 = call float @dx.op.dot3.f32(i32 55, float %1475, float %1476, float %1477, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1481 = select i1 %114, float %1479, float %1445
  %1482 = select i1 %114, float 1.000000e+00, float %1445
  %1483 = select i1 %114, float %1480, float %1475
  %1484 = select i1 %114, float 0.000000e+00, float %1476
  %1485 = select i1 %114, float 0.000000e+00, float %1477
  %1486 = fmul fast float %1481, %1218
  %1487 = fmul fast float %1481, %1219
  %1488 = fmul fast float %1482, %1220
  %1489 = fadd fast float %1486, %1483
  %1490 = fadd fast float %1487, %1484
  %1491 = fadd fast float %1485, %1488
  %1492 = fmul fast float %1481, %1221
  %1493 = fmul fast float %1481, %1222
  %1494 = fmul fast float %1482, %1223
  br label %1495

; <label>:1495                                    ; preds = %1471, %1227, %1194, %1185
  %1496 = phi float [ %1187, %1185 ], [ %1218, %1194 ], [ %1489, %1471 ], [ %1218, %1227 ]
  %1497 = phi float [ %1188, %1185 ], [ %1219, %1194 ], [ %1490, %1471 ], [ %1219, %1227 ]
  %1498 = phi float [ %1189, %1185 ], [ %1220, %1194 ], [ %1491, %1471 ], [ %1220, %1227 ]
  %1499 = phi float [ %1190, %1185 ], [ %1221, %1194 ], [ %1492, %1471 ], [ %1221, %1227 ]
  %1500 = phi float [ %1191, %1185 ], [ %1222, %1194 ], [ %1493, %1471 ], [ %1222, %1227 ]
  %1501 = phi float [ %1192, %1185 ], [ %1223, %1194 ], [ %1494, %1471 ], [ %1223, %1227 ]
  %1502 = phi float [ %1193, %1185 ], [ %1206, %1194 ], [ %1478, %1471 ], [ %1206, %1227 ]
  %1503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1504 = extractvalue %dx.types.CBufRet.f32 %1503, 2
  %1505 = extractvalue %dx.types.CBufRet.f32 %1503, 3
  %1506 = fmul fast float %1504, %56
  %1507 = fmul fast float %1505, %57
  %1508 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1509 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1510 = select i1 %939, i32 2, i32 0
  %1511 = or i32 %1510, 1
  %1512 = uitofp i32 %1511 to float
  %1513 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1508, float %1509, float %1512, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.ResRet.f32 %1513, 1
  %1516 = extractvalue %dx.types.ResRet.f32 %1513, 2
  %1517 = extractvalue %dx.types.ResRet.f32 %1513, 3
  %1518 = add nuw nsw i32 %1510, 2
  %1519 = uitofp i32 %1518 to float
  %1520 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1508, float %1509, float %1519, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 0
  %1522 = extractvalue %dx.types.ResRet.f32 %1520, 1
  %1523 = extractvalue %dx.types.ResRet.f32 %1520, 2
  %1524 = extractvalue %dx.types.ResRet.f32 %1520, 3
  %1525 = call float @dx.op.binary.f32(i32 35, float %1515, float %1516)  ; FMax(a,b)
  %1526 = call float @dx.op.binary.f32(i32 35, float %1514, float %1525)  ; FMax(a,b)
  %1527 = call float @dx.op.binary.f32(i32 35, float %1526, float %1517)  ; FMax(a,b)
  %1528 = call float @dx.op.binary.f32(i32 36, float %1522, float %1523)  ; FMin(a,b)
  %1529 = call float @dx.op.binary.f32(i32 36, float %1521, float %1528)  ; FMin(a,b)
  %1530 = call float @dx.op.binary.f32(i32 36, float %1529, float %1524)  ; FMin(a,b)
  %1531 = fmul fast float %1527, 2.550000e+02
  %1532 = fadd fast float %1531, 0x3F70101020000000
  %1533 = fptoui float %1532 to i32
  %1534 = fmul fast float %1530, 2.550000e+02
  %1535 = fadd fast float %1534, 0x3F70101020000000
  %1536 = fptoui float %1535 to i32
  %1537 = icmp ult i32 %1533, %1536
  br i1 %1537, label %1538, label %1590

; <label>:1538                                    ; preds = %1495
  %1539 = fcmp fast ogt float %50, 9.843750e-01
  %1540 = fadd fast float %1186, -4.000000e+00
  %1541 = select i1 %1539, float -4.000000e+00, float %1540
  %1542 = call float @dx.op.binary.f32(i32 35, float %1541, float 0.000000e+00)  ; FMax(a,b)
  %1543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1544 = extractvalue %dx.types.CBufRet.f32 %1543, 0
  %1545 = fadd fast float %1544, %1542
  %1546 = extractvalue %dx.types.CBufRet.f32 %1543, 2
  %1547 = fmul fast float %1545, %1546
  %1548 = call float @dx.op.unary.f32(i32 23, float %1547)  ; Log(value)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1543, 3
  %1550 = fmul fast float %1549, %1548
  %1551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1552 = extractvalue %dx.types.CBufRet.f32 %1551, 2
  %1553 = fmul fast float %1550, %1552
  %1554 = call float @dx.op.unary.f32(i32 7, float %1553)  ; Saturate(value)
  %1555 = uitofp i32 %1533 to float
  %1556 = uitofp i32 %1536 to float
  %1557 = fadd fast float %1555, 5.000000e-01
  %1558 = fadd fast float %1556, 5.000000e-01
  %1559 = fmul fast float %1552, %1557
  %1560 = fmul fast float %1552, %1558
  %1561 = fadd fast float %1559, 0x3F0FFB4800000000
  %1562 = fadd fast float %1560, 0xBF0FFB4800000000
  %1563 = call float @dx.op.binary.f32(i32 35, float %1554, float %1561)  ; FMax(a,b)
  %1564 = call float @dx.op.binary.f32(i32 36, float %1563, float %1562)  ; FMin(a,b)
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 1
  %1567 = extractvalue %dx.types.CBufRet.f32 %1565, 2
  %1568 = extractvalue %dx.types.CBufRet.f32 %1565, 0
  %1569 = select i1 %939, float %1568, float 0.000000e+00
  %1570 = fmul fast float %1566, %1564
  %1571 = fadd fast float %1569, %1570
  %1572 = fadd fast float %1569, %1567
  %1573 = fsub fast float %1566, %1567
  %1574 = fadd fast float %1573, %1569
  %1575 = call float @dx.op.binary.f32(i32 35, float %1571, float %1572)  ; FMax(a,b)
  %1576 = call float @dx.op.binary.f32(i32 36, float %1575, float %1574)  ; FMin(a,b)
  %1577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1508, float %1509, float %1576, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1578 = extractvalue %dx.types.ResRet.f32 %1577, 0
  %1579 = extractvalue %dx.types.ResRet.f32 %1577, 1
  %1580 = extractvalue %dx.types.ResRet.f32 %1577, 2
  %1581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1508, float %1509, float %1576, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 0
  %1583 = extractvalue %dx.types.ResRet.f32 %1581, 1
  %1584 = extractvalue %dx.types.ResRet.f32 %1581, 2
  %1585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1586 = extractvalue %dx.types.CBufRet.f32 %1585, 1
  %1587 = fmul fast float %1586, %1582
  %1588 = fmul fast float %1586, %1583
  %1589 = fmul fast float %1586, %1584
  br label %1590

; <label>:1590                                    ; preds = %1538, %1495
  %1591 = phi float [ %1578, %1538 ], [ 1.000000e+00, %1495 ]
  %1592 = phi float [ %1579, %1538 ], [ 1.000000e+00, %1495 ]
  %1593 = phi float [ %1580, %1538 ], [ 1.000000e+00, %1495 ]
  %1594 = phi float [ %1587, %1538 ], [ 0.000000e+00, %1495 ]
  %1595 = phi float [ %1588, %1538 ], [ 0.000000e+00, %1495 ]
  %1596 = phi float [ %1589, %1538 ], [ 0.000000e+00, %1495 ]
  %1597 = fmul fast float %1594, %956
  %1598 = fmul fast float %1595, %956
  %1599 = fmul fast float %1596, %956
  %1600 = fmul fast float %1591, %1502
  %1601 = call float @dx.op.dot3.f32(i32 55, float %1591, float %1592, float %1593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1602 = call float @dx.op.dot3.f32(i32 55, float %1597, float %1598, float %1599, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1603 = select i1 %114, float %1601, float %1591
  %1604 = select i1 %114, float %1601, float %1592
  %1605 = select i1 %114, float 1.000000e+00, float %1593
  %1606 = select i1 %114, float %1602, float %1597
  %1607 = select i1 %114, float 0.000000e+00, float %1598
  %1608 = select i1 %114, float 0.000000e+00, float %1599
  %1609 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1610 = extractvalue %dx.types.CBufRet.i32 %1609, 3
  %1611 = and i32 %1610, 3
  %1612 = icmp ne i32 %1611, 0
  %1613 = and i32 %1610, 4
  %1614 = icmp ne i32 %1613, 0
  %1615 = and i1 %1612, %1614
  %1616 = and i1 %114, %1615
  br i1 %1616, label %1617, label %1623

; <label>:1617                                    ; preds = %1590
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1618, 1
  %1620 = fadd fast float %1600, -1.000000e+00
  %1621 = fmul fast float %1619, %1620
  %1622 = fadd fast float %1621, 1.000000e+00
  br label %1623

; <label>:1623                                    ; preds = %1617, %1590
  %1624 = phi float [ %1622, %1617 ], [ %1600, %1590 ]
  %1625 = fadd fast float %1499, %1496
  %1626 = fmul fast float %1603, %1625
  %1627 = fadd fast float %1626, %1606
  %1628 = fadd fast float %1500, %1497
  %1629 = fmul fast float %1604, %1628
  %1630 = fadd fast float %1629, %1607
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 0
  br i1 %114, label %1633, label %1655

; <label>:1633                                    ; preds = %1623
  %1634 = fadd fast float %1627, %1630
  %1635 = fmul fast float %1632, %1634
  %1636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1637 = extractvalue %dx.types.CBufRet.f32 %1636, 3
  %1638 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %1639 = fsub fast float %964, %1638
  %1640 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %1641 = fmul fast float %1639, %1640
  %1642 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1643 = fsub fast float %1642, %1637
  %1644 = fmul fast float %1643, %1624
  %1645 = fadd fast float %1644, %1637
  %1646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1647 = extractvalue %dx.types.CBufRet.f32 %1646, 0
  %1648 = fsub fast float %1645, %1647
  %1649 = fmul fast float %1648, 1.000000e+01
  %1650 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  %1651 = fsub fast float %915, %956
  %1652 = fmul fast float %1650, %1651
  %1653 = fadd fast float %1652, %956
  %1654 = fmul fast float %1653, %1645
  br label %1667

; <label>:1655                                    ; preds = %1623
  %1656 = fadd fast float %1501, %1498
  %1657 = fmul fast float %1605, %1656
  %1658 = fadd fast float %1657, %1608
  %1659 = fmul fast float %1632, %1627
  %1660 = fmul fast float %1632, %1630
  %1661 = fmul fast float %1632, %1658
  %1662 = call float @dx.op.binary.f32(i32 35, float %1660, float %1661)  ; FMax(a,b)
  %1663 = call float @dx.op.binary.f32(i32 35, float %1659, float %1662)  ; FMax(a,b)
  %1664 = call float @dx.op.binary.f32(i32 35, float %1663, float %956)  ; FMax(a,b)
  %1665 = fcmp fast ugt float %1664, 0x3F10000000000000
  br i1 %1665, label %1667, label %1666

; <label>:1666                                    ; preds = %1655
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1667

; <label>:1667                                    ; preds = %1666, %1655, %1633
  %1668 = phi float [ %1635, %1633 ], [ %1659, %1666 ], [ %1659, %1655 ]
  %1669 = phi float [ %1654, %1633 ], [ %1660, %1666 ], [ %1660, %1655 ]
  %1670 = phi float [ %1653, %1633 ], [ %1661, %1666 ], [ %1661, %1655 ]
  %1671 = phi float [ %1653, %1633 ], [ %956, %1666 ], [ %956, %1655 ]
  %1672 = fadd fast float %607, 0x3FE3C6EF40000000
  %1673 = call float @dx.op.unary.f32(i32 22, float %1672)  ; Frc(value)
  %1674 = call float @dx.op.unary.f32(i32 23, float %1668)  ; Log(value)
  %1675 = fadd fast float %1674, -7.000000e+00
  %1676 = call float @dx.op.unary.f32(i32 21, float %1675)  ; Exp(value)
  %1677 = fmul fast float %1673, 2.000000e+00
  %1678 = fadd fast float %1677, -1.000000e+00
  %1679 = fmul fast float %1676, %1678
  %1680 = fcmp fast ogt float %1668, 0.000000e+00
  %1681 = select i1 %1680, float %1679, float 0.000000e+00
  %1682 = fadd fast float %1681, %1668
  %1683 = fadd fast float %607, 0x3FF3C6EF40000000
  %1684 = call float @dx.op.unary.f32(i32 22, float %1683)  ; Frc(value)
  %1685 = call float @dx.op.unary.f32(i32 23, float %1669)  ; Log(value)
  %1686 = fadd fast float %1685, -7.000000e+00
  %1687 = call float @dx.op.unary.f32(i32 21, float %1686)  ; Exp(value)
  %1688 = fmul fast float %1684, 2.000000e+00
  %1689 = fadd fast float %1688, -1.000000e+00
  %1690 = fmul fast float %1687, %1689
  %1691 = fcmp fast ogt float %1669, 0.000000e+00
  %1692 = select i1 %1691, float %1690, float 0.000000e+00
  %1693 = fadd fast float %1692, %1669
  %1694 = fadd fast float %607, 0x3FFDAA66E0000000
  %1695 = call float @dx.op.unary.f32(i32 22, float %1694)  ; Frc(value)
  %1696 = call float @dx.op.unary.f32(i32 23, float %1670)  ; Log(value)
  %1697 = fadd fast float %1696, -6.000000e+00
  %1698 = call float @dx.op.unary.f32(i32 21, float %1697)  ; Exp(value)
  %1699 = fmul fast float %1695, 2.000000e+00
  %1700 = fadd fast float %1699, -1.000000e+00
  %1701 = fmul fast float %1698, %1700
  %1702 = fcmp fast ogt float %1670, 0.000000e+00
  %1703 = select i1 %1702, float %1701, float 0.000000e+00
  %1704 = fadd fast float %1703, %1670
  %1705 = select i1 %114, float %1669, float %1693
  %1706 = select i1 %114, float %1670, float %1704
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1707 = call float @dx.op.binary.f32(i32 36, float %1682, float 3.225500e+04)  ; FMin(a,b)
  %1708 = call float @dx.op.binary.f32(i32 36, float %1705, float 3.225500e+04)  ; FMin(a,b)
  %1709 = call float @dx.op.binary.f32(i32 36, float %1706, float 3.225500e+04)  ; FMin(a,b)
  %1710 = call float @dx.op.binary.f32(i32 36, float %1671, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1707)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1708)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1709)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1710)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1671)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1671)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1671)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1671)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!35}
!dx.entryPoints = !{!36}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !27, !30}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !26}
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
!26 = !{i32 17, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!30 = !{!31, !32, !33, !34}
!31 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!32 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!33 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!34 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!35 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!36 = !{void ()* @ps_main, !"ps_main", !37, !4, !62}
!37 = !{!38, !58, null}
!38 = !{!39, !42, !43, !45, !48, !50, !52, !54, !55, !57}
!39 = !{i32 0, !"SV_Position", i8 9, i8 3, !40, i8 4, i32 1, i8 4, i32 0, i8 0, !41}
!40 = !{i32 0}
!41 = !{i32 3, i32 15}
!42 = !{i32 1, !"COLOR", i8 9, i8 0, !40, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!43 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 2, i8 0, !44}
!44 = !{i32 3, i32 3}
!45 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !46, i8 1, i32 1, i8 4, i32 3, i8 0, !47}
!46 = !{i32 2}
!47 = !{i32 3, i32 7}
!48 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 4, i8 0, !41}
!49 = !{i32 3}
!50 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !51, i8 3, i32 1, i8 2, i32 5, i8 0, !44}
!51 = !{i32 5}
!52 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 6, i8 0, !41}
!53 = !{i32 8}
!54 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !40, i8 1, i32 1, i8 4, i32 7, i8 0, !41}
!55 = !{i32 8, !"COLOR", i8 5, i8 0, !49, i8 1, i32 1, i8 3, i32 8, i8 0, !56}
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
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

