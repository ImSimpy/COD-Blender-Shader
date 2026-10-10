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
; shader hash: ef956692c015561402143dc37056b38f
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
  %175 = add i32 %24, 72
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = extractvalue %dx.types.ResRet.i32 %176, 1
  %179 = bitcast i32 %177 to float
  %180 = bitcast i32 %178 to float
  %181 = fmul fast float %179, %42
  %182 = fmul fast float %180, %43
  %183 = call float @dx.op.unary.f32(i32 22, float %181)  ; Frc(value)
  %184 = call float @dx.op.unary.f32(i32 22, float %182)  ; Frc(value)
  %185 = and i32 %134, 16
  %186 = icmp ne i32 %185, 0
  %187 = select i1 %186, float 1.000000e+00, float %47
  %188 = icmp eq i32 %185, 0
  br i1 %188, label %208, label %189, !dx.controlflow.hints !63

; <label>:189                                     ; preds = %170
  %190 = add i32 %131, 64
  %191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = fadd fast float %192, 1.000000e+00
  %194 = fmul fast float %193, %47
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

; <label>:208                                     ; preds = %189, %170
  %209 = phi float [ %207, %189 ], [ %187, %170 ]
  %210 = fcmp fast ogt float %209, 0.000000e+00
  br i1 %210, label %212, label %211

; <label>:211                                     ; preds = %208
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %212

; <label>:212                                     ; preds = %211, %208
  %213 = call float @dx.op.unary.f32(i32 7, float %209)  ; Saturate(value)
  %214 = fmul fast float %56, 5.000000e-01
  %215 = fmul fast float %57, 5.000000e-01
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
  %234 = fsub fast float %233, %51
  %235 = fcmp fast ogt float %234, 0.000000e+00
  %236 = and i32 %130, -2
  %237 = icmp eq i32 %236, 2
  %238 = and i1 %237, %235
  %239 = xor i1 %235, true
  %240 = icmp eq i32 %130, 1
  %241 = and i1 %240, %239
  %242 = or i1 %238, %241
  %243 = and i32 %134, 262144
  %244 = icmp ne i32 %243, 0
  %245 = and i1 %244, %242
  %246 = xor i1 %242, true
  %247 = and i32 %134, 131072
  %248 = icmp ne i32 %247, 0
  %249 = and i1 %248, %246
  %250 = or i1 %245, %249
  br i1 %250, label %251, label %252

; <label>:251                                     ; preds = %212
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %252

; <label>:252                                     ; preds = %251, %212
  %253 = and i32 %134, 32
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %532, label %255, !dx.controlflow.hints !64

; <label>:255                                     ; preds = %252
  %256 = add i32 %131, 80
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = extractvalue %dx.types.ResRet.f32 %257, 3
  %262 = add i32 %131, 96
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = add i32 %131, 112
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = extractvalue %dx.types.ResRet.f32 %268, 3
  %273 = add i32 %131, 128
  %274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  %278 = extractvalue %dx.types.ResRet.f32 %274, 3
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %297 = extractvalue %dx.types.CBufRet.f32 %295, 3
  %298 = fmul fast float %296, %56
  %299 = fmul fast float %297, %57
  %300 = fmul fast float %298, %292
  %301 = fmul fast float %299, %294
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %316 = select i1 %313, float %315, float 1.000000e+00
  %317 = fadd fast float %312, 1.000000e+00
  %318 = fmul fast float %316, %317
  %319 = call float @dx.op.unary.f32(i32 6, float %318)  ; FAbs(value)
  %320 = extractvalue %dx.types.CBufRet.f32 %314, 3
  %321 = fcmp fast oge float %319, %320
  %322 = select i1 %321, float 0x4197782600000000, float %319
  br i1 %289, label %412, label %323, !dx.controlflow.hints !65

; <label>:323                                     ; preds = %255
  %324 = fmul fast float %61, %296
  %325 = fmul fast float %63, %297
  %326 = fsub fast float 1.000000e+00, %324
  %327 = fsub fast float 1.000000e+00, %325
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %331 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %332 = fmul fast float %326, %329
  %333 = fmul fast float %326, %330
  %334 = fmul fast float %326, %331
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %337 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %338 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %339 = fmul fast float %327, %336
  %340 = fmul fast float %327, %337
  %341 = fmul fast float %327, %338
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 0
  %357 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %358 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %359 = fsub fast float %356, %25
  %360 = fadd fast float %359, %352
  %361 = fsub fast float %357, %26
  %362 = fadd fast float %361, %353
  %363 = fsub fast float %358, %27
  %364 = fadd fast float %363, %354
  %365 = fmul fast float %28, %28
  %366 = call float @dx.op.dot3.f32(i32 55, float %360, float %362, float %364, float %360, float %362, float %364)  ; Dot3(ax,ay,az,bx,by,bz)
  %367 = fsub fast float %365, %366
  %368 = fmul fast float %265, %365
  %369 = fmul fast float %264, %365
  %370 = fcmp fast olt float %367, %368
  %371 = fcmp fast ogt float %367, %369
  %372 = or i1 %370, %371
  %373 = select i1 %372, float 0.000000e+00, float %367
  %374 = fsub fast float %264, %265
  %375 = fmul fast float %374, %365
  %376 = fsub fast float %373, %368
  %377 = fdiv fast float %376, %375
  %378 = call float @dx.op.unary.f32(i32 7, float %377)  ; Saturate(value)
  %379 = fmul fast float %378, 2.000000e+00
  %380 = fsub fast float 3.000000e+00, %379
  %381 = fmul fast float %378, %378
  %382 = fmul fast float %381, %380
  %383 = fmul fast float %269, %44
  %384 = fmul fast float %270, %45
  %385 = fmul fast float %271, %46
  %386 = fsub fast float %383, %275
  %387 = fsub fast float %384, %276
  %388 = fsub fast float %385, %277
  %389 = fsub fast float %272, %278
  %390 = fmul fast float %382, %386
  %391 = fmul fast float %382, %387
  %392 = fmul fast float %382, %388
  %393 = fmul fast float %382, %389
  %394 = fadd fast float %390, %275
  %395 = fadd fast float %391, %276
  %396 = fadd fast float %392, %277
  %397 = fadd fast float %393, %278
  %398 = fmul fast float %269, %29
  %399 = fmul fast float %270, %30
  %400 = fmul fast float %271, %31
  %401 = fsub fast float %398, %275
  %402 = fsub fast float %399, %276
  %403 = fsub fast float %400, %277
  %404 = fmul fast float %382, %401
  %405 = fmul fast float %382, %402
  %406 = fmul fast float %382, %403
  %407 = fadd fast float %404, %275
  %408 = fadd fast float %405, %276
  %409 = fadd fast float %406, %277
  %410 = fmul fast float %258, %258
  %411 = fmul fast float %410, %373
  br label %519

; <label>:412                                     ; preds = %255
  %413 = and i32 %280, 256
  %414 = icmp eq i32 %413, 0
  %415 = fsub fast float %322, %51
  br i1 %414, label %476, label %416

; <label>:416                                     ; preds = %412
  %417 = fadd fast float %264, %51
  %418 = fcmp fast olt float %322, %51
  %419 = fcmp fast ogt float %322, %417
  %420 = or i1 %418, %419
  %421 = select i1 %420, float 0.000000e+00, float %415
  %422 = call float @dx.op.unary.f32(i32 83, float %322)  ; DerivCoarseX(value)
  %423 = call float @dx.op.unary.f32(i32 84, float %322)  ; DerivCoarseY(value)
  %424 = fmul fast float %422, %422
  %425 = fmul fast float %423, %423
  %426 = fadd fast float %425, %424
  %427 = call float @dx.op.unary.f32(i32 24, float %426)  ; Sqrt(value)
  %428 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %429 = fmul fast float %428, %427
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %431 = fmul fast float %430, %265
  %432 = fdiv fast float %415, %431
  %433 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %434 = fmul fast float %433, 2.000000e+00
  %435 = fsub fast float 3.000000e+00, %434
  %436 = fmul fast float %433, %433
  %437 = fmul fast float %436, %435
  %438 = fsub fast float %322, %417
  %439 = fadd fast float %438, %431
  %440 = fdiv fast float %439, %431
  %441 = call float @dx.op.unary.f32(i32 7, float %440)  ; Saturate(value)
  %442 = fmul fast float %441, 2.000000e+00
  %443 = fsub fast float 3.000000e+00, %442
  %444 = fmul fast float %441, %441
  %445 = fmul fast float %444, %443
  %446 = fsub fast float %437, %445
  %447 = fmul fast float %269, %44
  %448 = fmul fast float %270, %45
  %449 = fmul fast float %271, %46
  %450 = fsub fast float %447, %275
  %451 = fsub fast float %448, %276
  %452 = fsub fast float %449, %277
  %453 = fsub fast float %272, %278
  %454 = fmul fast float %446, %450
  %455 = fmul fast float %446, %451
  %456 = fmul fast float %446, %452
  %457 = fmul fast float %446, %453
  %458 = fadd fast float %454, %275
  %459 = fadd fast float %455, %276
  %460 = fadd fast float %456, %277
  %461 = fadd fast float %457, %278
  %462 = fmul fast float %269, %29
  %463 = fmul fast float %270, %30
  %464 = fmul fast float %271, %31
  %465 = fsub fast float %462, %275
  %466 = fsub fast float %463, %276
  %467 = fsub fast float %464, %277
  %468 = fmul fast float %446, %465
  %469 = fmul fast float %446, %466
  %470 = fmul fast float %446, %467
  %471 = fadd fast float %468, %275
  %472 = fadd fast float %469, %276
  %473 = fadd fast float %470, %277
  %474 = fmul fast float %421, %258
  %475 = call float @dx.op.unary.f32(i32 6, float %474)  ; FAbs(value)
  br label %519

; <label>:476                                     ; preds = %412
  br i1 %283, label %477, label %490

; <label>:477                                     ; preds = %476
  %478 = fdiv fast float 5.000000e+01, %28
  %479 = select i1 %285, float %478, float 1.000000e+00
  %480 = fmul fast float %479, %258
  %481 = fmul fast float %183, 2.000000e+00
  %482 = fmul fast float %184, 2.000000e+00
  %483 = fadd fast float %481, -1.000000e+00
  %484 = fadd fast float %482, -1.000000e+00
  %485 = call float @dx.op.dot2.f32(i32 54, float %483, float %484, float %483, float %484)  ; Dot2(ax,ay,bx,by)
  %486 = fmul fast float %266, %28
  %487 = fmul fast float %486, %485
  %488 = fsub fast float %415, %487
  %489 = fmul fast float %480, %488
  br label %519

; <label>:490                                     ; preds = %476
  br i1 %287, label %511, label %491

; <label>:491                                     ; preds = %490
  %492 = fmul fast float %28, 0x3F947AE140000000
  %493 = select i1 %285, float %492, float 1.000000e+00
  %494 = fdiv fast float 1.000000e+00, %493
  %495 = fmul fast float %493, %259
  %496 = fmul fast float %493, %260
  %497 = fmul fast float %494, %261
  %498 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %499 = fcmp fast olt float %498, %495
  br i1 %499, label %500, label %504, !dx.controlflow.hints !66

; <label>:500                                     ; preds = %491
  %501 = fmul fast float %494, %258
  %502 = fmul fast float %501, %498
  %503 = call float @dx.op.unary.f32(i32 6, float %502)  ; FAbs(value)
  br label %519

; <label>:504                                     ; preds = %491
  %505 = fcmp fast ogt float %498, %496
  br i1 %505, label %506, label %519

; <label>:506                                     ; preds = %504
  %507 = fsub fast float %498, %496
  %508 = fmul fast float %497, %507
  %509 = call float @dx.op.unary.f32(i32 6, float %508)  ; FAbs(value)
  %510 = fsub fast float 1.000000e+00, %509
  br label %519

; <label>:511                                     ; preds = %490
  %512 = fdiv fast float 5.000000e+01, %28
  %513 = select i1 %285, float %512, float 1.000000e+00
  %514 = fmul fast float %513, %258
  %515 = call float @dx.op.unary.f32(i32 6, float %234)  ; FAbs(value)
  %516 = select i1 %282, float %515, float 0x47EFFFFFE0000000
  %517 = call float @dx.op.binary.f32(i32 36, float %415, float %516)  ; FMin(a,b)
  %518 = fmul fast float %514, %517
  br label %519

; <label>:519                                     ; preds = %511, %506, %504, %500, %477, %416, %323
  %520 = phi float [ %411, %323 ], [ %475, %416 ], [ %489, %477 ], [ %518, %511 ], [ %503, %500 ], [ %510, %506 ], [ %498, %504 ]
  %521 = phi float [ %407, %323 ], [ %471, %416 ], [ %29, %477 ], [ %29, %511 ], [ %29, %500 ], [ %29, %506 ], [ %29, %504 ]
  %522 = phi float [ %408, %323 ], [ %472, %416 ], [ %30, %477 ], [ %30, %511 ], [ %30, %500 ], [ %30, %506 ], [ %30, %504 ]
  %523 = phi float [ %409, %323 ], [ %473, %416 ], [ %31, %477 ], [ %31, %511 ], [ %31, %500 ], [ %31, %506 ], [ %31, %504 ]
  %524 = phi float [ %394, %323 ], [ %458, %416 ], [ %44, %477 ], [ %44, %511 ], [ %44, %500 ], [ %44, %506 ], [ %44, %504 ]
  %525 = phi float [ %395, %323 ], [ %459, %416 ], [ %45, %477 ], [ %45, %511 ], [ %45, %500 ], [ %45, %506 ], [ %45, %504 ]
  %526 = phi float [ %396, %323 ], [ %460, %416 ], [ %46, %477 ], [ %46, %511 ], [ %46, %500 ], [ %46, %506 ], [ %46, %504 ]
  %527 = phi float [ %397, %323 ], [ %461, %416 ], [ 1.000000e+00, %477 ], [ 1.000000e+00, %511 ], [ 1.000000e+00, %500 ], [ 1.000000e+00, %506 ], [ 1.000000e+00, %504 ]
  %528 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %529 = fmul fast float %528, %47
  %530 = fmul fast float %527, %213
  %531 = fmul fast float %530, %528
  br label %532

; <label>:532                                     ; preds = %519, %252
  %533 = phi float [ %524, %519 ], [ %44, %252 ]
  %534 = phi float [ %525, %519 ], [ %45, %252 ]
  %535 = phi float [ %526, %519 ], [ %46, %252 ]
  %536 = phi float [ %531, %519 ], [ %213, %252 ]
  %537 = phi float [ %529, %519 ], [ %47, %252 ]
  %538 = phi float [ %521, %519 ], [ %29, %252 ]
  %539 = phi float [ %522, %519 ], [ %30, %252 ]
  %540 = phi float [ %523, %519 ], [ %31, %252 ]
  %541 = fmul fast float %538, %32
  %542 = fmul fast float %539, %32
  %543 = fmul fast float %540, %32
  %544 = fmul fast float %538, %38
  %545 = fmul fast float %539, %38
  %546 = fmul fast float %540, %38
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %549 = fptosi float %51 to i32
  %550 = sitofp i32 %549 to float
  %551 = fadd fast float %548, %550
  %552 = fmul fast float %551, 0x3FE3C6EF40000000
  %553 = frem fast float %56, 2.560000e+02
  %554 = frem fast float %57, 2.560000e+02
  %555 = fptoui float %553 to i32
  %556 = fptoui float %554 to i32
  %557 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %555, i32 %556, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = fadd fast float %558, %552
  %560 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %561 = and i32 %134, 1
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %623, label %563, !dx.controlflow.hints !67

; <label>:563                                     ; preds = %532
  %564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 2
  %566 = extractvalue %dx.types.ResRet.f32 %564, 3
  %567 = add i32 %131, 16
  %568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = extractvalue %dx.types.ResRet.f32 %568, 2
  %572 = add i32 %131, 32
  %573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = extractvalue %dx.types.ResRet.f32 %573, 1
  %576 = extractvalue %dx.types.ResRet.f32 %573, 2
  %577 = and i32 %134, 2
  %578 = icmp eq i32 %577, 0
  %579 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %580 = call float @dx.op.unary.f32(i32 25, float %579)  ; Rsqrt(value)
  %581 = fmul fast float %580, %35
  %582 = fmul fast float %580, %36
  %583 = fmul fast float %580, %37
  %584 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %585 = call float @dx.op.unary.f32(i32 25, float %584)  ; Rsqrt(value)
  %586 = fmul fast float %585, %91
  %587 = fmul fast float %585, %92
  %588 = fmul fast float %585, %93
  %589 = call float @dx.op.dot3.f32(i32 55, float %586, float %587, float %588, float %581, float %582, float %583)  ; Dot3(ax,ay,az,bx,by,bz)
  %590 = fmul fast float %589, %589
  %591 = fmul fast float %590, %565
  %592 = fadd fast float %591, %566
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  br i1 %578, label %594, label %604, !dx.controlflow.hints !68

; <label>:594                                     ; preds = %563
  %595 = extractvalue %dx.types.ResRet.f32 %564, 1
  %596 = extractvalue %dx.types.ResRet.f32 %564, 0
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %598 = extractvalue %dx.types.CBufRet.f32 %597, 3
  %599 = fmul fast float %598, %584
  %600 = fsub fast float %596, %599
  %601 = fmul fast float %600, %595
  %602 = call float @dx.op.unary.f32(i32 7, float %601)  ; Saturate(value)
  %603 = fmul fast float %602, %593
  br label %604

; <label>:604                                     ; preds = %594, %563
  %605 = phi float [ %603, %594 ], [ %593, %563 ]
  %606 = fsub fast float %569, %574
  %607 = fsub fast float %570, %575
  %608 = fsub fast float %571, %576
  %609 = fmul fast float %605, %606
  %610 = fmul fast float %605, %607
  %611 = fmul fast float %605, %608
  %612 = fadd fast float %609, %574
  %613 = fadd fast float %610, %575
  %614 = fadd fast float %611, %576
  %615 = fmul fast float %612, %533
  %616 = fmul fast float %613, %534
  %617 = fmul fast float %614, %535
  %618 = fmul fast float %612, %541
  %619 = fmul fast float %613, %542
  %620 = fmul fast float %614, %543
  %621 = fmul fast float %605, %536
  %622 = fmul fast float %605, %537
  br label %623

; <label>:623                                     ; preds = %604, %532
  %624 = phi float [ %615, %604 ], [ %533, %532 ]
  %625 = phi float [ %616, %604 ], [ %534, %532 ]
  %626 = phi float [ %617, %604 ], [ %535, %532 ]
  %627 = phi float [ %621, %604 ], [ %536, %532 ]
  %628 = phi float [ %622, %604 ], [ %537, %532 ]
  %629 = phi float [ %618, %604 ], [ %541, %532 ]
  %630 = phi float [ %619, %604 ], [ %542, %532 ]
  %631 = phi float [ %620, %604 ], [ %543, %532 ]
  %632 = add i32 %24, 120
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = add i32 %634, 0
  %636 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %635, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %637 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %636, %dx.types.Handle %52, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  %641 = add i32 %24, 56
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = and i32 %643, 255
  %645 = uitofp i32 %644 to float
  %646 = fmul fast float %645, 0x3F70101020000000
  %647 = lshr i32 %643, 8
  %648 = and i32 %647, 255
  %649 = uitofp i32 %648 to float
  %650 = fmul fast float %649, 0x3F70101020000000
  %651 = lshr i32 %643, 16
  %652 = and i32 %651, 255
  %653 = uitofp i32 %652 to float
  %654 = fmul fast float %653, 0x3F70101020000000
  %655 = fmul fast float %646, %646
  %656 = fmul fast float %655, %638
  %657 = fmul fast float %650, %650
  %658 = fmul fast float %657, %639
  %659 = fmul fast float %654, %654
  %660 = fmul fast float %659, %640
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = add i32 %662, 0
  %664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %665 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %664, %dx.types.Handle %52, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = extractvalue %dx.types.ResRet.f32 %665, 1
  %668 = extractvalue %dx.types.ResRet.f32 %665, 2
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 255
  %672 = uitofp i32 %671 to float
  %673 = fmul fast float %672, 0x3F70101020000000
  %674 = lshr i32 %670, 8
  %675 = and i32 %674, 255
  %676 = uitofp i32 %675 to float
  %677 = fmul fast float %676, 0x3F70101020000000
  %678 = lshr i32 %670, 16
  %679 = and i32 %678, 255
  %680 = uitofp i32 %679 to float
  %681 = fmul fast float %680, 0x3F70101020000000
  %682 = fmul fast float %673, %673
  %683 = fmul fast float %682, %666
  %684 = fmul fast float %677, %677
  %685 = fmul fast float %684, %667
  %686 = fmul fast float %681, %681
  %687 = fmul fast float %686, %668
  %688 = fsub fast float %683, %656
  %689 = fsub fast float %685, %658
  %690 = fsub fast float %687, %660
  %691 = fmul fast float %688, %41
  %692 = fmul fast float %689, %41
  %693 = fmul fast float %690, %41
  %694 = fadd fast float %691, %656
  %695 = fadd fast float %692, %658
  %696 = fadd fast float %693, %660
  %697 = fmul fast float %694, %624
  %698 = fmul fast float %695, %625
  %699 = fmul fast float %696, %626
  %700 = add i32 %24, 124
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = add i32 %702, 0
  %704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %703, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %705 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %52, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = extractvalue %dx.types.ResRet.f32 %705, 1
  %708 = extractvalue %dx.types.ResRet.f32 %705, 2
  %709 = add i32 %24, 44
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = shl i32 %711, 4
  %713 = and i32 %712, 32752
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = lshr i32 %711, 7
  %716 = and i32 %715, 32752
  %717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %716)  ; LegacyF16ToF32(value)
  %718 = lshr i32 %711, 22
  %719 = shl nuw nsw i32 %718, 5
  %720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %719)  ; LegacyF16ToF32(value)
  %721 = fmul fast float %714, %706
  %722 = fmul fast float %717, %707
  %723 = fmul fast float %720, %708
  %724 = add i32 %24, 48
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = lshr i32 %726, 22
  %728 = shl nuw nsw i32 %727, 5
  %729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %728)  ; LegacyF16ToF32(value)
  %730 = fmul fast float %729, %721
  %731 = select i1 %114, float %730, float %721
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = add i32 %733, 0
  %735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %735, %dx.types.Handle %52, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = extractvalue %dx.types.ResRet.f32 %736, 1
  %739 = extractvalue %dx.types.ResRet.f32 %736, 2
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = shl i32 %741, 4
  %743 = and i32 %742, 32752
  %744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %743)  ; LegacyF16ToF32(value)
  %745 = lshr i32 %741, 7
  %746 = and i32 %745, 32752
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = lshr i32 %741, 22
  %749 = shl nuw nsw i32 %748, 5
  %750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %749)  ; LegacyF16ToF32(value)
  %751 = fmul fast float %744, %737
  %752 = fmul fast float %747, %738
  %753 = fmul fast float %750, %739
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = lshr i32 %755, 22
  %757 = shl nuw nsw i32 %756, 5
  %758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %757)  ; LegacyF16ToF32(value)
  %759 = fmul fast float %758, %751
  %760 = select i1 %114, float %759, float %751
  %761 = fsub fast float %760, %731
  %762 = fsub fast float %752, %722
  %763 = fsub fast float %753, %723
  %764 = fmul fast float %761, %41
  %765 = fmul fast float %762, %41
  %766 = fmul fast float %763, %41
  %767 = fadd fast float %764, %731
  %768 = fadd fast float %765, %722
  %769 = fadd fast float %766, %723
  %770 = add i32 %24, 40
  %771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = and i32 %772, 255
  %774 = uitofp i32 %773 to float
  %775 = fmul fast float %774, 0x3F70101020000000
  %776 = fmul fast float %775, %775
  %777 = add i32 %24, 128
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = add i32 %779, 0
  %781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %780, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %782 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %781, %dx.types.Handle %53, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %783 = extractvalue %dx.types.ResRet.f32 %782, 0
  %784 = fmul fast float %776, %783
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %770, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = and i32 %786, 255
  %788 = uitofp i32 %787 to float
  %789 = fmul fast float %788, 0x3F70101020000000
  %790 = fmul fast float %789, %789
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = add i32 %792, 0
  %794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %793, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %795 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %794, %dx.types.Handle %53, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = fmul fast float %790, %796
  %798 = fsub fast float %797, %784
  %799 = fmul fast float %798, %41
  %800 = fadd fast float %799, %784
  %801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = extractvalue %dx.types.ResRet.f32 %801, 1
  %804 = extractvalue %dx.types.ResRet.f32 %801, 2
  %805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %806 = extractvalue %dx.types.CBufRet.f32 %805, 1
  %807 = fmul fast float %806, %802
  %808 = fmul fast float %806, %803
  %809 = fmul fast float %806, %804
  %810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %811 = extractvalue %dx.types.CBufRet.f32 %810, 0
  %812 = fmul fast float %697, %811
  %813 = fmul fast float %698, %811
  %814 = fmul fast float %699, %811
  %815 = fmul fast float %767, %629
  %816 = fmul fast float %768, %630
  %817 = fmul fast float %769, %631
  %818 = call float @dx.op.dot3.f32(i32 55, float %815, float %816, float %817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = select i1 %114, float 0.000000e+00, float %815
  %820 = select i1 %114, float %818, float %816
  %821 = select i1 %114, float 0.000000e+00, float %817
  %822 = fmul fast float %544, %767
  %823 = fmul fast float %545, %768
  %824 = fmul fast float %546, %769
  %825 = call float @dx.op.dot3.f32(i32 55, float %812, float %813, float %814, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %826 = add i32 %24, 32
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = and i32 %828, 255
  %830 = uitofp i32 %829 to float
  %831 = lshr i32 %828, 8
  %832 = and i32 %831, 255
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, %825
  %835 = fadd fast float %834, %830
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  %838 = and i32 %134, 8192
  %839 = icmp eq i32 %838, 0
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 0
  br i1 %839, label %848, label %842, !dx.controlflow.hints !69

; <label>:842                                     ; preds = %623
  %843 = add i32 %131, 176
  %844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = fcmp fast oge float %845, 0.000000e+00
  %847 = select i1 %846, float %845, float %841
  br label %855

; <label>:848                                     ; preds = %623
  %849 = add i32 %24, 104
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = bitcast i32 %851 to float
  %853 = fcmp fast oge float %852, 0.000000e+00
  %854 = select i1 %853, float %852, float %841
  br label %855

; <label>:855                                     ; preds = %848, %842
  %856 = phi float [ %847, %842 ], [ %854, %848 ]
  %857 = fsub fast float 1.000000e+00, %800
  %858 = fmul fast float %857, %628
  %859 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %216, i32 %217, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = lshr i32 %860, 18
  %862 = uitofp i32 %861 to float
  %863 = fmul fast float %862, 0x3F4C00EBA0000000
  %864 = call float @dx.op.unary.f32(i32 21, float %863)  ; Exp(value)
  %865 = fadd fast float %864, -1.000000e+00
  %866 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %867 = extractvalue %dx.types.Dimensions %866, 0
  %868 = sitofp i32 %867 to float
  %869 = extractvalue %dx.types.Dimensions %866, 1
  %870 = sitofp i32 %869 to float
  %871 = fcmp fast oge float %214, %868
  %872 = fcmp fast oge float %215, %870
  %873 = or i1 %871, %872
  %874 = select i1 %873, float 0x4197782600000000, float %865
  %875 = icmp eq i32 %130, 3
  %876 = fcmp fast ogt float %51, %874
  %877 = and i1 %240, %876
  %878 = or i1 %875, %877
  %879 = icmp eq i32 %130, 2
  %880 = fcmp fast ole float %51, %874
  %881 = and i1 %879, %880
  %882 = or i1 %881, %878
  %883 = fmul fast float %822, %807
  %884 = fmul fast float %823, %808
  %885 = fmul fast float %824, %809
  %886 = fadd fast float %883, %819
  %887 = fadd fast float %820, %884
  %888 = fadd fast float %885, %821
  %889 = fmul fast float %886, %627
  %890 = fmul fast float %887, %627
  %891 = fmul fast float %888, %627
  %892 = fmul fast float %807, %627
  %893 = fmul fast float %808, %627
  %894 = fmul fast float %809, %627
  %895 = fadd fast float %800, -1.000000e+00
  %896 = fmul fast float %895, %627
  %897 = fadd fast float %896, 1.000000e+00
  %898 = call float @dx.op.dot3.f32(i32 55, float %897, float %897, float %897, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %899 = fsub fast float 1.000000e+00, %898
  %900 = fmul fast float %856, %837
  %901 = fsub fast float 1.000000e+00, %858
  %902 = fsub fast float %901, %837
  %903 = call float @dx.op.unary.f32(i32 7, float %902)  ; Saturate(value)
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 3
  %906 = fmul fast float %905, %903
  %907 = fadd fast float %906, %900
  %908 = and i32 %134, 1048576
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %1001, label %910, !dx.controlflow.hints !70

; <label>:910                                     ; preds = %855
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %913 = extractvalue %dx.types.CBufRet.f32 %911, 3
  %914 = fmul fast float %912, %56
  %915 = fmul fast float %913, %57
  %916 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %917 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %918 = select i1 %882, i32 2, i32 0
  %919 = or i32 %918, 1
  %920 = uitofp i32 %919 to float
  %921 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %916, float %917, float %920, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %922 = extractvalue %dx.types.ResRet.f32 %921, 0
  %923 = extractvalue %dx.types.ResRet.f32 %921, 1
  %924 = extractvalue %dx.types.ResRet.f32 %921, 2
  %925 = extractvalue %dx.types.ResRet.f32 %921, 3
  %926 = add nuw nsw i32 %918, 2
  %927 = uitofp i32 %926 to float
  %928 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %916, float %917, float %927, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = extractvalue %dx.types.ResRet.f32 %928, 1
  %931 = extractvalue %dx.types.ResRet.f32 %928, 2
  %932 = extractvalue %dx.types.ResRet.f32 %928, 3
  %933 = call float @dx.op.binary.f32(i32 35, float %923, float %924)  ; FMax(a,b)
  %934 = call float @dx.op.binary.f32(i32 35, float %922, float %933)  ; FMax(a,b)
  %935 = call float @dx.op.binary.f32(i32 35, float %934, float %925)  ; FMax(a,b)
  %936 = call float @dx.op.binary.f32(i32 36, float %930, float %931)  ; FMin(a,b)
  %937 = call float @dx.op.binary.f32(i32 36, float %929, float %936)  ; FMin(a,b)
  %938 = call float @dx.op.binary.f32(i32 36, float %937, float %932)  ; FMin(a,b)
  %939 = fmul fast float %935, 2.550000e+02
  %940 = fadd fast float %939, 0x3F70101020000000
  %941 = fptoui float %940 to i32
  %942 = fmul fast float %938, 2.550000e+02
  %943 = fadd fast float %942, 0x3F70101020000000
  %944 = fptoui float %943 to i32
  %945 = icmp ult i32 %941, %944
  br i1 %945, label %946, label %994

; <label>:946                                     ; preds = %910
  %947 = fcmp fast ogt float %50, 9.843750e-01
  %948 = fadd fast float %51, -4.000000e+00
  %949 = select i1 %947, float -4.000000e+00, float %948
  %950 = call float @dx.op.binary.f32(i32 35, float %949, float 0.000000e+00)  ; FMax(a,b)
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = fadd fast float %952, %950
  %954 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %955 = fmul fast float %953, %954
  %956 = call float @dx.op.unary.f32(i32 23, float %955)  ; Log(value)
  %957 = extractvalue %dx.types.CBufRet.f32 %951, 3
  %958 = fmul fast float %957, %956
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %961 = fmul fast float %958, %960
  %962 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  %963 = uitofp i32 %941 to float
  %964 = uitofp i32 %944 to float
  %965 = fadd fast float %963, 5.000000e-01
  %966 = fadd fast float %964, 5.000000e-01
  %967 = fmul fast float %960, %965
  %968 = fmul fast float %960, %966
  %969 = fadd fast float %967, 0x3F0FFB4800000000
  %970 = fadd fast float %968, 0xBF0FFB4800000000
  %971 = call float @dx.op.binary.f32(i32 35, float %962, float %969)  ; FMax(a,b)
  %972 = call float @dx.op.binary.f32(i32 36, float %971, float %970)  ; FMin(a,b)
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 1
  %975 = extractvalue %dx.types.CBufRet.f32 %973, 2
  %976 = extractvalue %dx.types.CBufRet.f32 %973, 0
  %977 = select i1 %882, float %976, float 0.000000e+00
  %978 = fmul fast float %974, %972
  %979 = fadd fast float %977, %978
  %980 = fadd fast float %977, %975
  %981 = fsub fast float %974, %975
  %982 = fadd fast float %981, %977
  %983 = call float @dx.op.binary.f32(i32 35, float %979, float %980)  ; FMax(a,b)
  %984 = call float @dx.op.binary.f32(i32 36, float %983, float %982)  ; FMin(a,b)
  %985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %916, float %917, float %984, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  %987 = extractvalue %dx.types.ResRet.f32 %985, 1
  %988 = extractvalue %dx.types.ResRet.f32 %985, 2
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 1
  %991 = fmul fast float %990, %986
  %992 = fmul fast float %990, %987
  %993 = fmul fast float %990, %988
  br label %994

; <label>:994                                     ; preds = %946, %910
  %995 = phi float [ %991, %946 ], [ 1.000000e+00, %910 ]
  %996 = phi float [ %992, %946 ], [ 1.000000e+00, %910 ]
  %997 = phi float [ %993, %946 ], [ 1.000000e+00, %910 ]
  %998 = fmul fast float %995, %889
  %999 = fmul fast float %996, %890
  %1000 = fmul fast float %997, %891
  br label %1001

; <label>:1001                                    ; preds = %994, %855
  %1002 = phi float [ %998, %994 ], [ %889, %855 ]
  %1003 = phi float [ %999, %994 ], [ %890, %855 ]
  %1004 = phi float [ %1000, %994 ], [ %891, %855 ]
  %1005 = and i32 %134, 2097152
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1011, label %1007, !dx.controlflow.hints !71

; <label>:1007                                    ; preds = %1001
  %1008 = add i32 %131, 192
  %1009 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  br label %1014

; <label>:1011                                    ; preds = %1001
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 3
  br label %1014

; <label>:1014                                    ; preds = %1011, %1007
  %1015 = phi float [ %1010, %1007 ], [ %1013, %1011 ]
  %1016 = fmul fast float %892, %812
  %1017 = fmul fast float %893, %813
  %1018 = fmul fast float %894, %814
  br i1 %877, label %1019, label %1128

; <label>:1019                                    ; preds = %1014
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 2
  %1022 = extractvalue %dx.types.CBufRet.f32 %1020, 3
  %1023 = fmul fast float %1021, %56
  %1024 = fmul fast float %1022, %57
  %1025 = call float @dx.op.unary.f32(i32 7, float %1023)  ; Saturate(value)
  %1026 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1027 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1025, float %1026, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1031 = extractvalue %dx.types.ResRet.f32 %1027, 3
  %1032 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1025, float %1026, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1036 = extractvalue %dx.types.ResRet.f32 %1032, 3
  %1037 = call float @dx.op.binary.f32(i32 35, float %1029, float %1030)  ; FMax(a,b)
  %1038 = call float @dx.op.binary.f32(i32 35, float %1028, float %1037)  ; FMax(a,b)
  %1039 = call float @dx.op.binary.f32(i32 35, float %1038, float %1031)  ; FMax(a,b)
  %1040 = call float @dx.op.binary.f32(i32 36, float %1034, float %1035)  ; FMin(a,b)
  %1041 = call float @dx.op.binary.f32(i32 36, float %1033, float %1040)  ; FMin(a,b)
  %1042 = call float @dx.op.binary.f32(i32 36, float %1041, float %1036)  ; FMin(a,b)
  %1043 = fmul fast float %1039, 2.550000e+02
  %1044 = fadd fast float %1043, 0x3F70101020000000
  %1045 = fptoui float %1044 to i32
  %1046 = fmul fast float %1042, 2.550000e+02
  %1047 = fadd fast float %1046, 0x3F70101020000000
  %1048 = fptoui float %1047 to i32
  %1049 = icmp ult i32 %1045, %1048
  br i1 %1049, label %1050, label %1101

; <label>:1050                                    ; preds = %1019
  %1051 = fcmp fast ogt float %50, 9.843750e-01
  %1052 = fadd fast float %51, -4.000000e+00
  %1053 = select i1 %1051, float -4.000000e+00, float %1052
  %1054 = call float @dx.op.binary.f32(i32 35, float %1053, float 0.000000e+00)  ; FMax(a,b)
  %1055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.f32 %1055, 0
  %1057 = fadd fast float %1056, %1054
  %1058 = extractvalue %dx.types.CBufRet.f32 %1055, 2
  %1059 = fmul fast float %1057, %1058
  %1060 = call float @dx.op.unary.f32(i32 23, float %1059)  ; Log(value)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1055, 3
  %1062 = fmul fast float %1061, %1060
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 2
  %1065 = fmul fast float %1062, %1064
  %1066 = call float @dx.op.unary.f32(i32 7, float %1065)  ; Saturate(value)
  %1067 = uitofp i32 %1045 to float
  %1068 = uitofp i32 %1048 to float
  %1069 = fadd fast float %1067, 5.000000e-01
  %1070 = fadd fast float %1068, 5.000000e-01
  %1071 = fmul fast float %1064, %1069
  %1072 = fmul fast float %1064, %1070
  %1073 = fadd fast float %1071, 0x3F0FFB4800000000
  %1074 = fadd fast float %1072, 0xBF0FFB4800000000
  %1075 = call float @dx.op.binary.f32(i32 35, float %1066, float %1073)  ; FMax(a,b)
  %1076 = call float @dx.op.binary.f32(i32 36, float %1075, float %1074)  ; FMin(a,b)
  %1077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.f32 %1077, 1
  %1079 = extractvalue %dx.types.CBufRet.f32 %1077, 2
  %1080 = extractvalue %dx.types.CBufRet.f32 %1077, 0
  %1081 = fmul fast float %1078, %1076
  %1082 = fadd fast float %1080, %1081
  %1083 = fadd fast float %1080, %1079
  %1084 = fsub fast float %1078, %1079
  %1085 = fadd fast float %1084, %1080
  %1086 = call float @dx.op.binary.f32(i32 35, float %1082, float %1083)  ; FMax(a,b)
  %1087 = call float @dx.op.binary.f32(i32 36, float %1086, float %1085)  ; FMin(a,b)
  %1088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1025, float %1026, float %1087, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1025, float %1026, float %1087, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1092, 2
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1098 = fmul fast float %1097, %1093
  %1099 = fmul fast float %1097, %1094
  %1100 = fmul fast float %1097, %1095
  br label %1101

; <label>:1101                                    ; preds = %1050, %1019
  %1102 = phi float [ %1089, %1050 ], [ 1.000000e+00, %1019 ]
  %1103 = phi float [ %1090, %1050 ], [ 1.000000e+00, %1019 ]
  %1104 = phi float [ %1091, %1050 ], [ 1.000000e+00, %1019 ]
  %1105 = phi float [ %1098, %1050 ], [ 0.000000e+00, %1019 ]
  %1106 = phi float [ %1099, %1050 ], [ 0.000000e+00, %1019 ]
  %1107 = phi float [ %1100, %1050 ], [ 0.000000e+00, %1019 ]
  %1108 = fmul fast float %1105, %899
  %1109 = fmul fast float %1106, %899
  %1110 = fmul fast float %1107, %899
  %1111 = call float @dx.op.dot3.f32(i32 55, float %1102, float %1103, float %1104, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1112 = call float @dx.op.dot3.f32(i32 55, float %1108, float %1109, float %1110, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1113 = select i1 %114, float %1111, float %1102
  %1114 = select i1 %114, float %1111, float %1103
  %1115 = select i1 %114, float 1.000000e+00, float %1104
  %1116 = select i1 %114, float %1112, float %1108
  %1117 = select i1 %114, float 0.000000e+00, float %1109
  %1118 = select i1 %114, float 0.000000e+00, float %1110
  %1119 = fmul fast float %1113, %1016
  %1120 = fmul fast float %1114, %1017
  %1121 = fmul fast float %1115, %1018
  %1122 = fadd fast float %1119, %1116
  %1123 = fadd fast float %1120, %1117
  %1124 = fadd fast float %1118, %1121
  %1125 = fmul fast float %1113, %1002
  %1126 = fmul fast float %1114, %1003
  %1127 = fmul fast float %1115, %1004
  br label %1128

; <label>:1128                                    ; preds = %1101, %1014
  %1129 = phi float [ %874, %1101 ], [ %51, %1014 ]
  %1130 = phi float [ %1122, %1101 ], [ %1016, %1014 ]
  %1131 = phi float [ %1123, %1101 ], [ %1017, %1014 ]
  %1132 = phi float [ %1124, %1101 ], [ %1018, %1014 ]
  %1133 = phi float [ %1125, %1101 ], [ %1002, %1014 ]
  %1134 = phi float [ %1126, %1101 ], [ %1003, %1014 ]
  %1135 = phi float [ %1127, %1101 ], [ %1004, %1014 ]
  %1136 = phi float [ %1102, %1101 ], [ 1.000000e+00, %1014 ]
  br i1 %882, label %1438, label %1137

; <label>:1137                                    ; preds = %1128
  %1138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.ResRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.ResRet.f32 %1138, 2
  %1142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  %1144 = extractvalue %dx.types.ResRet.f32 %1142, 1
  %1145 = extractvalue %dx.types.ResRet.f32 %1142, 2
  %1146 = fmul fast float %1139, %899
  %1147 = fmul fast float %1140, %899
  %1148 = fmul fast float %1141, %899
  %1149 = fmul fast float %1143, %1136
  %1150 = call float @dx.op.dot3.f32(i32 55, float %1143, float %1144, float %1145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1151 = call float @dx.op.dot3.f32(i32 55, float %1146, float %1147, float %1148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1152 = select i1 %114, float %1150, float %1143
  %1153 = select i1 %114, float %1150, float %1144
  %1154 = select i1 %114, float 1.000000e+00, float %1145
  %1155 = select i1 %114, float %1151, float %1146
  %1156 = select i1 %114, float 0.000000e+00, float %1147
  %1157 = select i1 %114, float 0.000000e+00, float %1148
  %1158 = fmul fast float %1152, %1130
  %1159 = fmul fast float %1153, %1131
  %1160 = fmul fast float %1154, %1132
  %1161 = fadd fast float %1158, %1155
  %1162 = fadd fast float %1159, %1156
  %1163 = fadd fast float %1160, %1157
  %1164 = fmul fast float %1152, %1133
  %1165 = fmul fast float %1153, %1134
  %1166 = fmul fast float %1154, %1135
  %1167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.i32 %1167, 0
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %1438, label %1170, !dx.controlflow.hints !72

; <label>:1170                                    ; preds = %1137
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 2
  %1173 = extractvalue %dx.types.CBufRet.f32 %1171, 3
  %1174 = fmul fast float %1172, %56
  %1175 = fmul fast float %1173, %57
  %1176 = fmul fast float %1174, 2.000000e+00
  %1177 = fmul fast float %1175, 2.000000e+00
  %1178 = fsub fast float 1.000000e+00, %1176
  %1179 = fsub fast float 1.000000e+00, %1177
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 0
  %1182 = extractvalue %dx.types.CBufRet.f32 %1180, 1
  %1183 = extractvalue %dx.types.CBufRet.f32 %1180, 2
  %1184 = fmul fast float %1178, %1181
  %1185 = fmul fast float %1178, %1182
  %1186 = fmul fast float %1178, %1183
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1189 = extractvalue %dx.types.CBufRet.f32 %1187, 1
  %1190 = extractvalue %dx.types.CBufRet.f32 %1187, 2
  %1191 = fmul fast float %1179, %1188
  %1192 = fmul fast float %1179, %1189
  %1193 = fmul fast float %1179, %1190
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.CBufRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.CBufRet.f32 %1194, 2
  %1198 = fadd fast float %1191, %1195
  %1199 = fadd fast float %1198, %1184
  %1200 = fadd fast float %1192, %1196
  %1201 = fadd fast float %1200, %1185
  %1202 = fadd fast float %1193, %1197
  %1203 = fadd fast float %1202, %1186
  %1204 = fmul fast float %1199, %1129
  %1205 = fmul fast float %1201, %1129
  %1206 = fmul fast float %1203, %1129
  %1207 = fmul fast float %1204, %1204
  %1208 = fmul fast float %1205, %1205
  %1209 = fadd fast float %1207, %1208
  %1210 = fmul fast float %1206, %1206
  %1211 = fadd fast float %1209, %1210
  %1212 = call float @dx.op.unary.f32(i32 24, float %1211)  ; Sqrt(value)
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 0
  %1215 = fsub fast float %1212, %1214
  %1216 = extractvalue %dx.types.CBufRet.f32 %1213, 2
  %1217 = fmul fast float %1215, %1216
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = fadd fast float %1218, -5.000000e-01
  %1220 = fmul fast float %1219, 2.000000e+00
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 2
  %1223 = call float @dx.op.binary.f32(i32 36, float %1222, float %1220)  ; FMin(a,b)
  %1224 = fsub fast float -0.000000e+00, %1222
  %1225 = fcmp fast ogt float %1223, %1224
  br i1 %1225, label %1226, label %1438, !dx.controlflow.hints !73

; <label>:1226                                    ; preds = %1170
  %1227 = fmul fast float %1223, 5.000000e-01
  %1228 = fadd fast float %1227, 5.000000e-01
  %1229 = call float @dx.op.unary.f32(i32 22, float %1228)  ; Frc(value)
  %1230 = call float @dx.op.unary.f32(i32 27, float %1229)  ; Round_ni(value)
  %1231 = call float @dx.op.unary.f32(i32 22, float %1229)  ; Frc(value)
  %1232 = fmul fast float %1231, 2.000000e+00
  %1233 = fadd fast float %1232, -1.000000e+00
  %1234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1174, float %1175, float %1230, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = extractvalue %dx.types.ResRet.f32 %1234, 1
  %1237 = extractvalue %dx.types.ResRet.f32 %1234, 2
  %1238 = extractvalue %dx.types.ResRet.f32 %1234, 3
  %1239 = fadd fast float %1235, -5.000000e-01
  %1240 = fadd fast float %1237, -5.000000e-01
  %1241 = fmul fast float %1239, 0xBFD5555560000000
  %1242 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1240, float %1241)  ; FMad(a,b,c)
  %1243 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1236, float 0.000000e+00)  ; FMad(a,b,c)
  %1244 = fadd fast float %1243, %1238
  %1245 = fmul fast float %1239, -7.500000e-01
  %1246 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1240, float %1245)  ; FMad(a,b,c)
  %1247 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1236, float 0.000000e+00)  ; FMad(a,b,c)
  %1248 = fadd fast float %1247, %1238
  %1249 = call float @dx.op.binary.f32(i32 35, float %1242, float -1.000000e+00)  ; FMax(a,b)
  %1250 = call float @dx.op.binary.f32(i32 35, float %1244, float -1.000000e+00)  ; FMax(a,b)
  %1251 = call float @dx.op.binary.f32(i32 35, float %1246, float -1.000000e+00)  ; FMax(a,b)
  %1252 = call float @dx.op.binary.f32(i32 35, float %1248, float -1.000000e+00)  ; FMax(a,b)
  %1253 = call float @dx.op.binary.f32(i32 36, float %1249, float 1.000000e+00)  ; FMin(a,b)
  %1254 = call float @dx.op.binary.f32(i32 36, float %1250, float 1.000000e+00)  ; FMin(a,b)
  %1255 = call float @dx.op.binary.f32(i32 36, float %1251, float 1.000000e+00)  ; FMin(a,b)
  %1256 = call float @dx.op.binary.f32(i32 36, float %1252, float 1.000000e+00)  ; FMin(a,b)
  %1257 = fcmp fast olt float %1253, 0x3FEFFF8020000000
  br i1 %1257, label %1258, label %1373, !dx.controlflow.hints !74

; <label>:1258                                    ; preds = %1226
  %1259 = extractvalue %dx.types.CBufRet.f32 %1221, 3
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  %1262 = extractvalue %dx.types.CBufRet.f32 %1260, 1
  %1263 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1264 = extractvalue %dx.types.CBufRet.f32 %1260, 3
  %1265 = fsub fast float %1261, %1253
  %1266 = fsub fast float %1262, %1254
  %1267 = fsub fast float %1263, %1255
  %1268 = fsub fast float %1264, %1256
  %1269 = fmul fast float %1265, %1259
  %1270 = fmul fast float %1266, %1259
  %1271 = fmul fast float %1267, %1259
  %1272 = fmul fast float %1268, %1259
  %1273 = fadd fast float %1269, %1253
  %1274 = fadd fast float %1270, %1254
  %1275 = fsub fast float -0.000000e+00, %1274
  %1276 = fadd fast float %1271, %1255
  %1277 = fadd fast float %1272, %1256
  %1278 = fmul fast float %1273, %1273
  %1279 = fsub fast float %1274, %1278
  %1280 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1279)  ; FMax(a,b)
  %1281 = fdiv fast float 1.000000e+00, %1280
  %1282 = fmul fast float %1274, %1273
  %1283 = fsub fast float %1276, %1282
  %1284 = fsub fast float %1233, %1273
  %1285 = fmul fast float %1233, %1233
  %1286 = fsub fast float %1285, %1274
  %1287 = fmul fast float %1284, %1281
  %1288 = fmul fast float %1287, %1283
  %1289 = fsub fast float %1286, %1288
  %1290 = fmul fast float %1274, %1274
  %1291 = fsub fast float %1277, %1290
  %1292 = fmul fast float %1283, %1283
  %1293 = fmul fast float %1292, %1281
  %1294 = fsub fast float %1291, %1293
  %1295 = fdiv fast float %1289, %1294
  %1296 = fmul fast float %1283, %1295
  %1297 = fsub fast float %1284, %1296
  %1298 = fmul fast float %1297, %1281
  %1299 = fmul fast float %1298, %1273
  %1300 = fsub fast float 1.000000e+00, %1299
  %1301 = fmul fast float %1274, %1295
  %1302 = fsub fast float %1300, %1301
  %1303 = fmul fast float %1298, %1298
  %1304 = fmul fast float %1295, 4.000000e+00
  %1305 = fmul fast float %1304, %1302
  %1306 = fsub fast float %1303, %1305
  %1307 = call float @dx.op.unary.f32(i32 24, float %1306)  ; Sqrt(value)
  %1308 = fcmp fast oge float %1298, 0.000000e+00
  %1309 = fsub fast float -0.000000e+00, %1307
  %1310 = select i1 %1308, float %1309, float %1307
  %1311 = fsub fast float %1310, %1298
  %1312 = fdiv fast float %1311, %1295
  %1313 = fdiv fast float %1302, %1311
  %1314 = fmul fast float %1312, 5.000000e-01
  %1315 = fmul fast float %1313, 2.000000e+00
  %1316 = select i1 %1308, float %1314, float %1315
  %1317 = select i1 %1308, float %1315, float %1314
  %1318 = call float @dx.op.binary.f32(i32 35, float %1316, float %1317)  ; FMax(a,b)
  %1319 = call float @dx.op.binary.f32(i32 36, float %1316, float %1317)  ; FMin(a,b)
  %1320 = fcmp fast ogt float %1233, %1319
  br i1 %1320, label %1321, label %1331

; <label>:1321                                    ; preds = %1258
  %1322 = fsub fast float %1233, %1319
  %1323 = fsub fast float %1318, %1319
  %1324 = fmul fast float %1322, %1323
  %1325 = fmul fast float %1318, %1233
  %1326 = fadd fast float %1318, %1233
  %1327 = fmul fast float %1326, %1273
  %1328 = fadd fast float %1325, %1274
  %1329 = fsub fast float %1328, %1327
  %1330 = fdiv fast float %1329, %1324
  br label %1331

; <label>:1331                                    ; preds = %1321, %1258
  %1332 = phi float [ %1330, %1321 ], [ 0.000000e+00, %1258 ]
  %1333 = fcmp fast ogt float %1233, %1318
  %1334 = fsub fast float %1233, %1318
  br i1 %1333, label %1335, label %1345

; <label>:1335                                    ; preds = %1331
  %1336 = fsub fast float %1318, %1319
  %1337 = fmul fast float %1336, %1334
  %1338 = fmul fast float %1319, %1233
  %1339 = fadd fast float %1319, %1233
  %1340 = fmul fast float %1339, %1273
  %1341 = fsub fast float %1275, %1338
  %1342 = fadd fast float %1341, %1340
  %1343 = fdiv fast float %1342, %1337
  %1344 = fadd fast float %1343, %1332
  br label %1345

; <label>:1345                                    ; preds = %1335, %1331
  %1346 = phi float [ %1344, %1335 ], [ %1332, %1331 ]
  %1347 = fsub fast float %1233, %1319
  %1348 = fmul fast float %1347, %1334
  %1349 = fmul fast float %1319, %1318
  %1350 = fadd fast float %1319, %1318
  %1351 = fmul fast float %1350, %1273
  %1352 = fadd fast float %1349, %1274
  %1353 = fsub fast float %1352, %1351
  %1354 = fdiv fast float %1353, %1348
  %1355 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  %1356 = fcmp fast oeq float %1015, 0.000000e+00
  %1357 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1358 = fcmp fast oeq float %1357, 0.000000e+00
  %1359 = or i1 %1356, %1358
  %1360 = fmul fast float %1357, 2.000000e+00
  %1361 = fadd fast float %1222, %1223
  %1362 = fdiv fast float %1361, %1360
  %1363 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1364 = fmul fast float %1363, 2.000000e+00
  %1365 = fsub fast float 3.000000e+00, %1364
  %1366 = fmul fast float %1363, %1363
  %1367 = fmul fast float %1366, %1365
  %1368 = select i1 %1359, float 1.000000e+00, float %1367
  %1369 = fmul fast float %1354, %1015
  %1370 = fadd fast float %1355, %1369
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1372 = fmul fast float %1368, %1371
  br label %1373

; <label>:1373                                    ; preds = %1345, %1226
  %1374 = phi float [ %1372, %1345 ], [ 0.000000e+00, %1226 ]
  %1375 = fsub fast float 1.000000e+00, %1374
  %1376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1174, float %1175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.i32 %1378, 2
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1386, label %1381

; <label>:1381                                    ; preds = %1373
  %1382 = call float @dx.op.unary.f32(i32 7, float %1374)  ; Saturate(value)
  %1383 = fadd fast float %1377, -1.000000e+00
  %1384 = fmul fast float %1382, %1383
  %1385 = fadd fast float %1384, 1.000000e+00
  br label %1386

; <label>:1386                                    ; preds = %1381, %1373
  %1387 = phi float [ %1385, %1381 ], [ %1375, %1373 ]
  %1388 = call float @dx.op.binary.f32(i32 35, float %1377, float %1387)  ; FMax(a,b)
  %1389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.i32 %1389, 2
  %1391 = and i32 %1390, 1
  %1392 = icmp eq i32 %1391, 0
  %1393 = fcmp fast une float %1388, 1.000000e+00
  %1394 = and i1 %1393, %1392
  br i1 %1394, label %1395, label %1414

; <label>:1395                                    ; preds = %1386
  %1396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1174, float %1175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 0
  %1398 = extractvalue %dx.types.ResRet.f32 %1396, 1
  %1399 = extractvalue %dx.types.ResRet.f32 %1396, 2
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 1
  %1402 = fmul fast float %1401, %1397
  %1403 = fmul fast float %1401, %1398
  %1404 = fmul fast float %1401, %1399
  %1405 = fcmp fast ogt float %1377, 0x3FEFFF2E40000000
  %1406 = fsub fast float 1.000000e+00, %1388
  %1407 = fsub fast float 1.000000e+00, %1377
  %1408 = fdiv fast float %1406, %1407
  %1409 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1410 = select i1 %1405, float 0.000000e+00, float %1409
  %1411 = fmul fast float %1402, %1410
  %1412 = fmul fast float %1403, %1410
  %1413 = fmul fast float %1404, %1410
  br label %1414

; <label>:1414                                    ; preds = %1395, %1386
  %1415 = phi float [ 0.000000e+00, %1386 ], [ %1411, %1395 ]
  %1416 = phi float [ 0.000000e+00, %1386 ], [ %1412, %1395 ]
  %1417 = phi float [ 0.000000e+00, %1386 ], [ %1413, %1395 ]
  %1418 = fmul fast float %1415, %899
  %1419 = fmul fast float %1416, %899
  %1420 = fmul fast float %1417, %899
  %1421 = fmul fast float %1388, %1149
  %1422 = call float @dx.op.dot3.f32(i32 55, float %1388, float %1388, float %1388, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1423 = call float @dx.op.dot3.f32(i32 55, float %1418, float %1419, float %1420, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1424 = select i1 %114, float %1422, float %1388
  %1425 = select i1 %114, float 1.000000e+00, float %1388
  %1426 = select i1 %114, float %1423, float %1418
  %1427 = select i1 %114, float 0.000000e+00, float %1419
  %1428 = select i1 %114, float 0.000000e+00, float %1420
  %1429 = fmul fast float %1424, %1161
  %1430 = fmul fast float %1424, %1162
  %1431 = fmul fast float %1425, %1163
  %1432 = fadd fast float %1429, %1426
  %1433 = fadd fast float %1430, %1427
  %1434 = fadd fast float %1428, %1431
  %1435 = fmul fast float %1424, %1164
  %1436 = fmul fast float %1424, %1165
  %1437 = fmul fast float %1425, %1166
  br label %1438

; <label>:1438                                    ; preds = %1414, %1170, %1137, %1128
  %1439 = phi float [ %1130, %1128 ], [ %1161, %1137 ], [ %1432, %1414 ], [ %1161, %1170 ]
  %1440 = phi float [ %1131, %1128 ], [ %1162, %1137 ], [ %1433, %1414 ], [ %1162, %1170 ]
  %1441 = phi float [ %1132, %1128 ], [ %1163, %1137 ], [ %1434, %1414 ], [ %1163, %1170 ]
  %1442 = phi float [ %1133, %1128 ], [ %1164, %1137 ], [ %1435, %1414 ], [ %1164, %1170 ]
  %1443 = phi float [ %1134, %1128 ], [ %1165, %1137 ], [ %1436, %1414 ], [ %1165, %1170 ]
  %1444 = phi float [ %1135, %1128 ], [ %1166, %1137 ], [ %1437, %1414 ], [ %1166, %1170 ]
  %1445 = phi float [ %1136, %1128 ], [ %1149, %1137 ], [ %1421, %1414 ], [ %1149, %1170 ]
  %1446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.f32 %1446, 2
  %1448 = extractvalue %dx.types.CBufRet.f32 %1446, 3
  %1449 = fmul fast float %1447, %56
  %1450 = fmul fast float %1448, %57
  %1451 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1452 = call float @dx.op.unary.f32(i32 7, float %1450)  ; Saturate(value)
  %1453 = select i1 %882, i32 2, i32 0
  %1454 = or i32 %1453, 1
  %1455 = uitofp i32 %1454 to float
  %1456 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1451, float %1452, float %1455, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1457 = extractvalue %dx.types.ResRet.f32 %1456, 0
  %1458 = extractvalue %dx.types.ResRet.f32 %1456, 1
  %1459 = extractvalue %dx.types.ResRet.f32 %1456, 2
  %1460 = extractvalue %dx.types.ResRet.f32 %1456, 3
  %1461 = add nuw nsw i32 %1453, 2
  %1462 = uitofp i32 %1461 to float
  %1463 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1451, float %1452, float %1462, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  %1465 = extractvalue %dx.types.ResRet.f32 %1463, 1
  %1466 = extractvalue %dx.types.ResRet.f32 %1463, 2
  %1467 = extractvalue %dx.types.ResRet.f32 %1463, 3
  %1468 = call float @dx.op.binary.f32(i32 35, float %1458, float %1459)  ; FMax(a,b)
  %1469 = call float @dx.op.binary.f32(i32 35, float %1457, float %1468)  ; FMax(a,b)
  %1470 = call float @dx.op.binary.f32(i32 35, float %1469, float %1460)  ; FMax(a,b)
  %1471 = call float @dx.op.binary.f32(i32 36, float %1465, float %1466)  ; FMin(a,b)
  %1472 = call float @dx.op.binary.f32(i32 36, float %1464, float %1471)  ; FMin(a,b)
  %1473 = call float @dx.op.binary.f32(i32 36, float %1472, float %1467)  ; FMin(a,b)
  %1474 = fmul fast float %1470, 2.550000e+02
  %1475 = fadd fast float %1474, 0x3F70101020000000
  %1476 = fptoui float %1475 to i32
  %1477 = fmul fast float %1473, 2.550000e+02
  %1478 = fadd fast float %1477, 0x3F70101020000000
  %1479 = fptoui float %1478 to i32
  %1480 = icmp ult i32 %1476, %1479
  br i1 %1480, label %1481, label %1533

; <label>:1481                                    ; preds = %1438
  %1482 = fcmp fast ogt float %50, 9.843750e-01
  %1483 = fadd fast float %1129, -4.000000e+00
  %1484 = select i1 %1482, float -4.000000e+00, float %1483
  %1485 = call float @dx.op.binary.f32(i32 35, float %1484, float 0.000000e+00)  ; FMax(a,b)
  %1486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.f32 %1486, 0
  %1488 = fadd fast float %1487, %1485
  %1489 = extractvalue %dx.types.CBufRet.f32 %1486, 2
  %1490 = fmul fast float %1488, %1489
  %1491 = call float @dx.op.unary.f32(i32 23, float %1490)  ; Log(value)
  %1492 = extractvalue %dx.types.CBufRet.f32 %1486, 3
  %1493 = fmul fast float %1492, %1491
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 2
  %1496 = fmul fast float %1493, %1495
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1498 = uitofp i32 %1476 to float
  %1499 = uitofp i32 %1479 to float
  %1500 = fadd fast float %1498, 5.000000e-01
  %1501 = fadd fast float %1499, 5.000000e-01
  %1502 = fmul fast float %1495, %1500
  %1503 = fmul fast float %1495, %1501
  %1504 = fadd fast float %1502, 0x3F0FFB4800000000
  %1505 = fadd fast float %1503, 0xBF0FFB4800000000
  %1506 = call float @dx.op.binary.f32(i32 35, float %1497, float %1504)  ; FMax(a,b)
  %1507 = call float @dx.op.binary.f32(i32 36, float %1506, float %1505)  ; FMin(a,b)
  %1508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.f32 %1508, 1
  %1510 = extractvalue %dx.types.CBufRet.f32 %1508, 2
  %1511 = extractvalue %dx.types.CBufRet.f32 %1508, 0
  %1512 = select i1 %882, float %1511, float 0.000000e+00
  %1513 = fmul fast float %1509, %1507
  %1514 = fadd fast float %1512, %1513
  %1515 = fadd fast float %1512, %1510
  %1516 = fsub fast float %1509, %1510
  %1517 = fadd fast float %1516, %1512
  %1518 = call float @dx.op.binary.f32(i32 35, float %1514, float %1515)  ; FMax(a,b)
  %1519 = call float @dx.op.binary.f32(i32 36, float %1518, float %1517)  ; FMin(a,b)
  %1520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1451, float %1452, float %1519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1521 = extractvalue %dx.types.ResRet.f32 %1520, 0
  %1522 = extractvalue %dx.types.ResRet.f32 %1520, 1
  %1523 = extractvalue %dx.types.ResRet.f32 %1520, 2
  %1524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1451, float %1452, float %1519, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1525 = extractvalue %dx.types.ResRet.f32 %1524, 0
  %1526 = extractvalue %dx.types.ResRet.f32 %1524, 1
  %1527 = extractvalue %dx.types.ResRet.f32 %1524, 2
  %1528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.f32 %1528, 1
  %1530 = fmul fast float %1529, %1525
  %1531 = fmul fast float %1529, %1526
  %1532 = fmul fast float %1529, %1527
  br label %1533

; <label>:1533                                    ; preds = %1481, %1438
  %1534 = phi float [ %1521, %1481 ], [ 1.000000e+00, %1438 ]
  %1535 = phi float [ %1522, %1481 ], [ 1.000000e+00, %1438 ]
  %1536 = phi float [ %1523, %1481 ], [ 1.000000e+00, %1438 ]
  %1537 = phi float [ %1530, %1481 ], [ 0.000000e+00, %1438 ]
  %1538 = phi float [ %1531, %1481 ], [ 0.000000e+00, %1438 ]
  %1539 = phi float [ %1532, %1481 ], [ 0.000000e+00, %1438 ]
  %1540 = fmul fast float %1537, %899
  %1541 = fmul fast float %1538, %899
  %1542 = fmul fast float %1539, %899
  %1543 = fmul fast float %1534, %1445
  %1544 = call float @dx.op.dot3.f32(i32 55, float %1534, float %1535, float %1536, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1545 = call float @dx.op.dot3.f32(i32 55, float %1540, float %1541, float %1542, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1546 = select i1 %114, float %1544, float %1534
  %1547 = select i1 %114, float %1544, float %1535
  %1548 = select i1 %114, float 1.000000e+00, float %1536
  %1549 = select i1 %114, float %1545, float %1540
  %1550 = select i1 %114, float 0.000000e+00, float %1541
  %1551 = select i1 %114, float 0.000000e+00, float %1542
  %1552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1553 = extractvalue %dx.types.CBufRet.i32 %1552, 3
  %1554 = and i32 %1553, 3
  %1555 = icmp ne i32 %1554, 0
  %1556 = and i32 %1553, 4
  %1557 = icmp ne i32 %1556, 0
  %1558 = and i1 %1555, %1557
  %1559 = and i1 %114, %1558
  br i1 %1559, label %1560, label %1566

; <label>:1560                                    ; preds = %1533
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 1
  %1563 = fadd fast float %1543, -1.000000e+00
  %1564 = fmul fast float %1562, %1563
  %1565 = fadd fast float %1564, 1.000000e+00
  br label %1566

; <label>:1566                                    ; preds = %1560, %1533
  %1567 = phi float [ %1565, %1560 ], [ %1543, %1533 ]
  %1568 = fadd fast float %1442, %1439
  %1569 = fmul fast float %1546, %1568
  %1570 = fadd fast float %1569, %1549
  %1571 = fadd fast float %1443, %1440
  %1572 = fmul fast float %1547, %1571
  %1573 = fadd fast float %1572, %1550
  %1574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.f32 %1574, 0
  br i1 %114, label %1576, label %1598

; <label>:1576                                    ; preds = %1566
  %1577 = fadd fast float %1570, %1573
  %1578 = fmul fast float %1575, %1577
  %1579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1580 = extractvalue %dx.types.CBufRet.f32 %1579, 3
  %1581 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %1582 = fsub fast float %907, %1581
  %1583 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %1584 = fmul fast float %1582, %1583
  %1585 = call float @dx.op.unary.f32(i32 7, float %1584)  ; Saturate(value)
  %1586 = fsub fast float %1585, %1580
  %1587 = fmul fast float %1586, %1567
  %1588 = fadd fast float %1587, %1580
  %1589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.f32 %1589, 0
  %1591 = fsub fast float %1588, %1590
  %1592 = fmul fast float %1591, 1.000000e+01
  %1593 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  %1594 = fsub fast float %858, %899
  %1595 = fmul fast float %1593, %1594
  %1596 = fadd fast float %1595, %899
  %1597 = fmul fast float %1596, %1588
  br label %1610

; <label>:1598                                    ; preds = %1566
  %1599 = fadd fast float %1444, %1441
  %1600 = fmul fast float %1548, %1599
  %1601 = fadd fast float %1600, %1551
  %1602 = fmul fast float %1575, %1570
  %1603 = fmul fast float %1575, %1573
  %1604 = fmul fast float %1575, %1601
  %1605 = call float @dx.op.binary.f32(i32 35, float %1603, float %1604)  ; FMax(a,b)
  %1606 = call float @dx.op.binary.f32(i32 35, float %1602, float %1605)  ; FMax(a,b)
  %1607 = call float @dx.op.binary.f32(i32 35, float %1606, float %899)  ; FMax(a,b)
  %1608 = fcmp fast ugt float %1607, 0x3F10000000000000
  br i1 %1608, label %1610, label %1609

; <label>:1609                                    ; preds = %1598
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1610

; <label>:1610                                    ; preds = %1609, %1598, %1576
  %1611 = phi float [ %1578, %1576 ], [ %1602, %1609 ], [ %1602, %1598 ]
  %1612 = phi float [ %1597, %1576 ], [ %1603, %1609 ], [ %1603, %1598 ]
  %1613 = phi float [ %1596, %1576 ], [ %1604, %1609 ], [ %1604, %1598 ]
  %1614 = phi float [ %1596, %1576 ], [ %899, %1609 ], [ %899, %1598 ]
  %1615 = fadd fast float %560, 0x3FE3C6EF40000000
  %1616 = call float @dx.op.unary.f32(i32 22, float %1615)  ; Frc(value)
  %1617 = call float @dx.op.unary.f32(i32 23, float %1611)  ; Log(value)
  %1618 = fadd fast float %1617, -7.000000e+00
  %1619 = call float @dx.op.unary.f32(i32 21, float %1618)  ; Exp(value)
  %1620 = fmul fast float %1616, 2.000000e+00
  %1621 = fadd fast float %1620, -1.000000e+00
  %1622 = fmul fast float %1619, %1621
  %1623 = fcmp fast ogt float %1611, 0.000000e+00
  %1624 = select i1 %1623, float %1622, float 0.000000e+00
  %1625 = fadd fast float %1624, %1611
  %1626 = fadd fast float %560, 0x3FF3C6EF40000000
  %1627 = call float @dx.op.unary.f32(i32 22, float %1626)  ; Frc(value)
  %1628 = call float @dx.op.unary.f32(i32 23, float %1612)  ; Log(value)
  %1629 = fadd fast float %1628, -7.000000e+00
  %1630 = call float @dx.op.unary.f32(i32 21, float %1629)  ; Exp(value)
  %1631 = fmul fast float %1627, 2.000000e+00
  %1632 = fadd fast float %1631, -1.000000e+00
  %1633 = fmul fast float %1630, %1632
  %1634 = fcmp fast ogt float %1612, 0.000000e+00
  %1635 = select i1 %1634, float %1633, float 0.000000e+00
  %1636 = fadd fast float %1635, %1612
  %1637 = fadd fast float %560, 0x3FFDAA66E0000000
  %1638 = call float @dx.op.unary.f32(i32 22, float %1637)  ; Frc(value)
  %1639 = call float @dx.op.unary.f32(i32 23, float %1613)  ; Log(value)
  %1640 = fadd fast float %1639, -6.000000e+00
  %1641 = call float @dx.op.unary.f32(i32 21, float %1640)  ; Exp(value)
  %1642 = fmul fast float %1638, 2.000000e+00
  %1643 = fadd fast float %1642, -1.000000e+00
  %1644 = fmul fast float %1641, %1643
  %1645 = fcmp fast ogt float %1613, 0.000000e+00
  %1646 = select i1 %1645, float %1644, float 0.000000e+00
  %1647 = fadd fast float %1646, %1613
  %1648 = select i1 %114, float %1612, float %1636
  %1649 = select i1 %114, float %1613, float %1647
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1650 = call float @dx.op.binary.f32(i32 36, float %1625, float 3.225500e+04)  ; FMin(a,b)
  %1651 = call float @dx.op.binary.f32(i32 36, float %1648, float 3.225500e+04)  ; FMin(a,b)
  %1652 = call float @dx.op.binary.f32(i32 36, float %1649, float 3.225500e+04)  ; FMin(a,b)
  %1653 = call float @dx.op.binary.f32(i32 36, float %1614, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1650)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1651)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1652)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1653)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1614)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1614)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1614)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1614)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

