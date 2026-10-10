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
; shader hash: 55f36a0782765a0494406511e5aae0ca
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
;                                   texture     f32          3d      T9     t45,space2     1
;                                   texture     f32     2darray     T10     t47,space2     1
;                                   textureunorm_f32     2darray     T11     t85,space2     1
;                                   texture     f32          2d     T12     t83,space2     1
;                                   texture     f32     2darray     T13             t1     1
;                                   texture    byte         r/o     T14             t2     1
;                                   texture     f32          3d     T15     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 26, 27, 28, 29, 30, 31, 32, 33, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = fmul fast float %54, %47
  %56 = fmul fast float %54, %48
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 3
  %60 = fmul fast float %55, 2.000000e+00
  %61 = fmul fast float %60, %58
  %62 = fmul fast float %56, 2.000000e+00
  %63 = fmul fast float %62, %59
  %64 = fsub fast float 1.000000e+00, %61
  %65 = fsub fast float 1.000000e+00, %63
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = fmul fast float %64, %67
  %71 = fmul fast float %64, %68
  %72 = fmul fast float %64, %69
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fmul fast float %65, %74
  %78 = fmul fast float %65, %75
  %79 = fmul fast float %65, %76
  %80 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.f32 %80, 0
  %82 = extractvalue %dx.types.CBufRet.f32 %80, 1
  %83 = extractvalue %dx.types.CBufRet.f32 %80, 2
  %84 = fadd fast float %77, %81
  %85 = fadd fast float %84, %70
  %86 = fadd fast float %78, %82
  %87 = fadd fast float %86, %71
  %88 = fadd fast float %79, %83
  %89 = fadd fast float %88, %72
  %90 = fmul fast float %85, %50
  %91 = fmul fast float %87, %50
  %92 = fmul fast float %89, %50
  %93 = bitcast i32 %22 to float
  %94 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.i32 %94, 3
  %96 = and i32 %95, 3
  %97 = icmp ne i32 %96, 0
  %98 = and i32 %95, 4
  %99 = icmp ne i32 %98, 0
  %100 = and i1 %97, %99
  br i1 %100, label %101, label %110

; <label>:101                                     ; preds = %0
  %102 = fmul fast float %59, %56
  %103 = fmul fast float %58, %55
  %104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %103, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = fsub fast float 1.000000e+00, %105
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = fcmp fast olt float %106, %108
  br label %113

; <label>:110                                     ; preds = %0
  %111 = icmp eq i32 %98, 0
  %112 = and i1 %97, %111
  br label %113

; <label>:113                                     ; preds = %110, %101
  %114 = phi i1 [ %109, %101 ], [ %112, %110 ]
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %118 = fmul fast float %116, %55
  %119 = fmul fast float %117, %56
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = and i32 %121, 114688
  %123 = icmp ne i32 %122, 0
  %124 = select i1 %123, float %118, float 0.000000e+00
  %125 = select i1 %123, float %119, float 0.000000e+00
  %126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %124, float %125, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = fmul fast float %127, 2.550000e+02
  %129 = fptoui float %128 to i32
  %130 = select i1 %123, i32 %129, i32 0
  %131 = mul i32 %21, 208
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
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %150 = fmul fast float %148, %55
  %151 = fmul fast float %149, %56
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
  %171 = phi float [ %41, %143 ], [ %150, %156 ], [ %169, %164 ], [ %150, %162 ]
  %172 = phi float [ %42, %143 ], [ %161, %156 ], [ %151, %164 ], [ %151, %162 ]
  %173 = fadd fast float %41, %38
  %174 = fadd fast float %42, %39
  %175 = add i32 %23, 72
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = extractvalue %dx.types.ResRet.i32 %176, 1
  %179 = bitcast i32 %177 to float
  %180 = bitcast i32 %178 to float
  %181 = fmul fast float %179, %41
  %182 = fmul fast float %180, %42
  %183 = call float @dx.op.unary.f32(i32 22, float %181)  ; Frc(value)
  %184 = call float @dx.op.unary.f32(i32 22, float %182)  ; Frc(value)
  %185 = and i32 %134, 16
  %186 = icmp ne i32 %185, 0
  %187 = select i1 %186, float 1.000000e+00, float %46
  %188 = icmp eq i32 %185, 0
  br i1 %188, label %208, label %189, !dx.controlflow.hints !60

; <label>:189                                     ; preds = %170
  %190 = add i32 %131, 64
  %191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = fadd fast float %192, 1.000000e+00
  %194 = fmul fast float %193, %46
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
  %214 = fmul fast float %55, 5.000000e-01
  %215 = fmul fast float %56, 5.000000e-01
  %216 = fptosi float %214 to i32
  %217 = fptosi float %215 to i32
  %218 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %216, i32 %217, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = lshr i32 %219, 18
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F4C00EBA0000000
  %223 = call float @dx.op.unary.f32(i32 21, float %222)  ; Exp(value)
  %224 = fadd fast float %223, -1.000000e+00
  %225 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %226 = extractvalue %dx.types.Dimensions %225, 0
  %227 = sitofp i32 %226 to float
  %228 = extractvalue %dx.types.Dimensions %225, 1
  %229 = sitofp i32 %228 to float
  %230 = fcmp fast oge float %214, %227
  %231 = fcmp fast oge float %215, %229
  %232 = or i1 %230, %231
  %233 = select i1 %232, float 0x4197782600000000, float %224
  %234 = fsub fast float %233, %50
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
  br i1 %254, label %532, label %255, !dx.controlflow.hints !61

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
  %290 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %291 = extractvalue %dx.types.Dimensions %290, 0
  %292 = sitofp i32 %291 to float
  %293 = extractvalue %dx.types.Dimensions %290, 1
  %294 = sitofp i32 %293 to float
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %297 = extractvalue %dx.types.CBufRet.f32 %295, 3
  %298 = fmul fast float %296, %55
  %299 = fmul fast float %297, %56
  %300 = fmul fast float %298, %292
  %301 = fmul fast float %299, %294
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %304 = fsub fast float -0.000000e+00, %303
  %305 = fptoui float %304 to i32
  %306 = fptoui float %300 to i32
  %307 = fptoui float %301 to i32
  %308 = and i32 %305, 31
  %309 = lshr i32 %306, %308
  %310 = lshr i32 %307, %308
  %311 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %305, i32 %309, i32 %310, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %312 = extractvalue %dx.types.ResRet.f32 %311, 0
  %313 = fcmp fast ogt float %312, -1.000000e+00
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %316 = select i1 %313, float %315, float 1.000000e+00
  %317 = fadd fast float %312, 1.000000e+00
  %318 = fmul fast float %316, %317
  %319 = call float @dx.op.unary.f32(i32 6, float %318)  ; FAbs(value)
  %320 = extractvalue %dx.types.CBufRet.f32 %314, 3
  %321 = fcmp fast oge float %319, %320
  %322 = select i1 %321, float 0x4197782600000000, float %319
  br i1 %289, label %412, label %323, !dx.controlflow.hints !62

; <label>:323                                     ; preds = %255
  %324 = fmul fast float %60, %296
  %325 = fmul fast float %62, %297
  %326 = fsub fast float 1.000000e+00, %324
  %327 = fsub fast float 1.000000e+00, %325
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 0
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 1
  %331 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %332 = fmul fast float %326, %329
  %333 = fmul fast float %326, %330
  %334 = fmul fast float %326, %331
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 0
  %337 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %338 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %339 = fmul fast float %327, %336
  %340 = fmul fast float %327, %337
  %341 = fmul fast float %327, %338
  %342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %356 = extractvalue %dx.types.CBufRet.f32 %355, 0
  %357 = extractvalue %dx.types.CBufRet.f32 %355, 1
  %358 = extractvalue %dx.types.CBufRet.f32 %355, 2
  %359 = fsub fast float %356, %24
  %360 = fadd fast float %359, %352
  %361 = fsub fast float %357, %25
  %362 = fadd fast float %361, %353
  %363 = fsub fast float %358, %26
  %364 = fadd fast float %363, %354
  %365 = fmul fast float %27, %27
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
  %383 = fmul fast float %269, %43
  %384 = fmul fast float %270, %44
  %385 = fmul fast float %271, %45
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
  %398 = fmul fast float %269, %28
  %399 = fmul fast float %270, %29
  %400 = fmul fast float %271, %30
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
  %415 = fsub fast float %322, %50
  br i1 %414, label %476, label %416

; <label>:416                                     ; preds = %412
  %417 = fadd fast float %264, %50
  %418 = fcmp fast olt float %322, %50
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
  %447 = fmul fast float %269, %43
  %448 = fmul fast float %270, %44
  %449 = fmul fast float %271, %45
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
  %462 = fmul fast float %269, %28
  %463 = fmul fast float %270, %29
  %464 = fmul fast float %271, %30
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
  %478 = fdiv fast float 5.000000e+01, %27
  %479 = select i1 %285, float %478, float 1.000000e+00
  %480 = fmul fast float %479, %258
  %481 = fmul fast float %183, 2.000000e+00
  %482 = fmul fast float %184, 2.000000e+00
  %483 = fadd fast float %481, -1.000000e+00
  %484 = fadd fast float %482, -1.000000e+00
  %485 = call float @dx.op.dot2.f32(i32 54, float %483, float %484, float %483, float %484)  ; Dot2(ax,ay,bx,by)
  %486 = fmul fast float %266, %27
  %487 = fmul fast float %486, %485
  %488 = fsub fast float %415, %487
  %489 = fmul fast float %480, %488
  br label %519

; <label>:490                                     ; preds = %476
  br i1 %287, label %511, label %491

; <label>:491                                     ; preds = %490
  %492 = fmul fast float %27, 0x3F947AE140000000
  %493 = select i1 %285, float %492, float 1.000000e+00
  %494 = fdiv fast float 1.000000e+00, %493
  %495 = fmul fast float %493, %259
  %496 = fmul fast float %493, %260
  %497 = fmul fast float %494, %261
  %498 = call float @dx.op.unary.f32(i32 6, float %415)  ; FAbs(value)
  %499 = fcmp fast olt float %498, %495
  br i1 %499, label %500, label %504, !dx.controlflow.hints !63

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
  %512 = fdiv fast float 5.000000e+01, %27
  %513 = select i1 %285, float %512, float 1.000000e+00
  %514 = fmul fast float %513, %258
  %515 = call float @dx.op.unary.f32(i32 6, float %234)  ; FAbs(value)
  %516 = select i1 %282, float %515, float 0x47EFFFFFE0000000
  %517 = call float @dx.op.binary.f32(i32 36, float %415, float %516)  ; FMin(a,b)
  %518 = fmul fast float %514, %517
  br label %519

; <label>:519                                     ; preds = %511, %506, %504, %500, %477, %416, %323
  %520 = phi float [ %411, %323 ], [ %475, %416 ], [ %489, %477 ], [ %518, %511 ], [ %503, %500 ], [ %510, %506 ], [ %498, %504 ]
  %521 = phi float [ %407, %323 ], [ %471, %416 ], [ %28, %477 ], [ %28, %511 ], [ %28, %500 ], [ %28, %506 ], [ %28, %504 ]
  %522 = phi float [ %408, %323 ], [ %472, %416 ], [ %29, %477 ], [ %29, %511 ], [ %29, %500 ], [ %29, %506 ], [ %29, %504 ]
  %523 = phi float [ %409, %323 ], [ %473, %416 ], [ %30, %477 ], [ %30, %511 ], [ %30, %500 ], [ %30, %506 ], [ %30, %504 ]
  %524 = phi float [ %394, %323 ], [ %458, %416 ], [ %43, %477 ], [ %43, %511 ], [ %43, %500 ], [ %43, %506 ], [ %43, %504 ]
  %525 = phi float [ %395, %323 ], [ %459, %416 ], [ %44, %477 ], [ %44, %511 ], [ %44, %500 ], [ %44, %506 ], [ %44, %504 ]
  %526 = phi float [ %396, %323 ], [ %460, %416 ], [ %45, %477 ], [ %45, %511 ], [ %45, %500 ], [ %45, %506 ], [ %45, %504 ]
  %527 = phi float [ %397, %323 ], [ %461, %416 ], [ 1.000000e+00, %477 ], [ 1.000000e+00, %511 ], [ 1.000000e+00, %500 ], [ 1.000000e+00, %506 ], [ 1.000000e+00, %504 ]
  %528 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  %529 = fmul fast float %528, %46
  %530 = fmul fast float %527, %213
  %531 = fmul fast float %530, %528
  br label %532

; <label>:532                                     ; preds = %519, %252
  %533 = phi float [ %524, %519 ], [ %43, %252 ]
  %534 = phi float [ %525, %519 ], [ %44, %252 ]
  %535 = phi float [ %526, %519 ], [ %45, %252 ]
  %536 = phi float [ %531, %519 ], [ %213, %252 ]
  %537 = phi float [ %529, %519 ], [ %46, %252 ]
  %538 = phi float [ %521, %519 ], [ %28, %252 ]
  %539 = phi float [ %522, %519 ], [ %29, %252 ]
  %540 = phi float [ %523, %519 ], [ %30, %252 ]
  %541 = fmul fast float %538, %31
  %542 = fmul fast float %539, %31
  %543 = fmul fast float %540, %31
  %544 = fmul fast float %538, %37
  %545 = fmul fast float %539, %37
  %546 = fmul fast float %540, %37
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 2
  %549 = fptosi float %50 to i32
  %550 = sitofp i32 %549 to float
  %551 = fadd fast float %548, %550
  %552 = fmul fast float %551, 0x3FE3C6EF40000000
  %553 = frem fast float %55, 2.560000e+02
  %554 = frem fast float %56, 2.560000e+02
  %555 = fptoui float %553 to i32
  %556 = fptoui float %554 to i32
  %557 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %555, i32 %556, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 0
  %559 = fadd fast float %558, %552
  %560 = call float @dx.op.unary.f32(i32 22, float %559)  ; Frc(value)
  %561 = and i32 %134, 1
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %623, label %563, !dx.controlflow.hints !64

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
  %579 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float %34, float %35, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %580 = call float @dx.op.unary.f32(i32 25, float %579)  ; Rsqrt(value)
  %581 = fmul fast float %580, %34
  %582 = fmul fast float %580, %35
  %583 = fmul fast float %580, %36
  %584 = call float @dx.op.dot3.f32(i32 55, float %90, float %91, float %92, float %90, float %91, float %92)  ; Dot3(ax,ay,az,bx,by,bz)
  %585 = call float @dx.op.unary.f32(i32 25, float %584)  ; Rsqrt(value)
  %586 = fmul fast float %585, %90
  %587 = fmul fast float %585, %91
  %588 = fmul fast float %585, %92
  %589 = call float @dx.op.dot3.f32(i32 55, float %586, float %587, float %588, float %581, float %582, float %583)  ; Dot3(ax,ay,az,bx,by,bz)
  %590 = fmul fast float %589, %589
  %591 = fmul fast float %590, %565
  %592 = fadd fast float %591, %566
  %593 = call float @dx.op.unary.f32(i32 7, float %592)  ; Saturate(value)
  br i1 %578, label %594, label %604, !dx.controlflow.hints !65

; <label>:594                                     ; preds = %563
  %595 = extractvalue %dx.types.ResRet.f32 %564, 1
  %596 = extractvalue %dx.types.ResRet.f32 %564, 0
  %597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
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
  %632 = add i32 %23, 120
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = add i32 %634, 0
  %636 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %635, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %637 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %636, %dx.types.Handle %51, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  %641 = add i32 %23, 56
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = add i32 %662, 0
  %664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %665 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %664, %dx.types.Handle %51, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = extractvalue %dx.types.ResRet.f32 %665, 1
  %668 = extractvalue %dx.types.ResRet.f32 %665, 2
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %691 = fmul fast float %688, %40
  %692 = fmul fast float %689, %40
  %693 = fmul fast float %690, %40
  %694 = fadd fast float %691, %656
  %695 = fadd fast float %692, %658
  %696 = fadd fast float %693, %660
  %697 = fmul fast float %694, %624
  %698 = fmul fast float %695, %625
  %699 = fmul fast float %696, %626
  %700 = add i32 %23, 124
  %701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = add i32 %702, 0
  %704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %703, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %705 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %704, %dx.types.Handle %51, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  %707 = extractvalue %dx.types.ResRet.f32 %705, 1
  %708 = extractvalue %dx.types.ResRet.f32 %705, 2
  %709 = add i32 %23, 44
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 0
  %726 = fmul fast float %721, %725
  %727 = fmul fast float %722, %725
  %728 = fmul fast float %723, %725
  %729 = add i32 %23, 48
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = lshr i32 %731, 22
  %733 = shl nuw nsw i32 %732, 5
  %734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %733)  ; LegacyF16ToF32(value)
  %735 = fmul fast float %734, %726
  %736 = select i1 %114, float %735, float %726
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = add i32 %738, 0
  %740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %739, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %741 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %740, %dx.types.Handle %51, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = extractvalue %dx.types.ResRet.f32 %741, 1
  %744 = extractvalue %dx.types.ResRet.f32 %741, 2
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = shl i32 %746, 4
  %748 = and i32 %747, 32752
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = lshr i32 %746, 7
  %751 = and i32 %750, 32752
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = lshr i32 %746, 22
  %754 = shl nuw nsw i32 %753, 5
  %755 = call float @dx.op.legacyF16ToF32(i32 131, i32 %754)  ; LegacyF16ToF32(value)
  %756 = fmul fast float %749, %742
  %757 = fmul fast float %752, %743
  %758 = fmul fast float %755, %744
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 0
  %761 = fmul fast float %756, %760
  %762 = fmul fast float %757, %760
  %763 = fmul fast float %758, %760
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = lshr i32 %765, 22
  %767 = shl nuw nsw i32 %766, 5
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = fmul fast float %768, %761
  %770 = select i1 %114, float %769, float %761
  %771 = fsub fast float %770, %736
  %772 = fsub fast float %762, %727
  %773 = fsub fast float %763, %728
  %774 = fmul fast float %771, %40
  %775 = fmul fast float %772, %40
  %776 = fmul fast float %773, %40
  %777 = fadd fast float %774, %736
  %778 = fadd fast float %775, %727
  %779 = fadd fast float %776, %728
  %780 = fsub fast float %742, %706
  %781 = fsub fast float %743, %707
  %782 = fsub fast float %744, %708
  %783 = fmul fast float %780, %40
  %784 = fmul fast float %781, %40
  %785 = fmul fast float %782, %40
  %786 = fadd fast float %783, %706
  %787 = fadd fast float %784, %707
  %788 = fadd fast float %785, %708
  %789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = extractvalue %dx.types.ResRet.f32 %789, 1
  %792 = extractvalue %dx.types.ResRet.f32 %789, 2
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %795 = fmul fast float %794, %790
  %796 = fmul fast float %794, %791
  %797 = fmul fast float %794, %792
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = fmul fast float %697, %799
  %801 = fmul fast float %698, %799
  %802 = fmul fast float %699, %799
  %803 = fmul fast float %777, %629
  %804 = fmul fast float %778, %630
  %805 = fmul fast float %779, %631
  %806 = call float @dx.op.dot3.f32(i32 55, float %803, float %804, float %805, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %807 = select i1 %114, float 0.000000e+00, float %803
  %808 = select i1 %114, float %806, float %804
  %809 = select i1 %114, float 0.000000e+00, float %805
  %810 = fmul fast float %544, %777
  %811 = fmul fast float %545, %778
  %812 = fmul fast float %546, %779
  %813 = call float @dx.op.dot3.f32(i32 55, float %800, float %801, float %802, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %814 = add i32 %23, 32
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 255
  %818 = uitofp i32 %817 to float
  %819 = lshr i32 %816, 8
  %820 = and i32 %819, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, %813
  %823 = fadd fast float %822, %818
  %824 = fmul fast float %823, 0x3F70101020000000
  %825 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  %826 = add i32 %23, 128
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = add i32 %828, 0
  %830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %829, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %830, %dx.types.Handle %52, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = and i32 %134, 8192
  %834 = icmp eq i32 %833, 0
  %835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %836 = extractvalue %dx.types.CBufRet.f32 %835, 0
  br i1 %834, label %847, label %837, !dx.controlflow.hints !66

; <label>:837                                     ; preds = %623
  %838 = add i32 %131, 176
  %839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = extractvalue %dx.types.ResRet.f32 %839, 1
  %842 = fcmp fast oge float %840, 0.000000e+00
  %843 = select i1 %842, float %840, float %836
  %844 = fmul fast float %832, %93
  %845 = fmul fast float %844, %841
  %846 = fadd fast float %845, %843
  br label %858

; <label>:847                                     ; preds = %623
  %848 = add i32 %23, 104
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %848, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = extractvalue %dx.types.ResRet.i32 %849, 1
  %852 = bitcast i32 %850 to float
  %853 = bitcast i32 %851 to float
  %854 = fcmp fast oge float %852, 0.000000e+00
  %855 = select i1 %854, float %852, float %836
  %856 = fmul fast float %853, %832
  %857 = fadd fast float %855, %856
  br label %858

; <label>:858                                     ; preds = %847, %837
  %859 = phi float [ %846, %837 ], [ %857, %847 ]
  %860 = call float @dx.op.dot3.f32(i32 55, float %786, float %787, float %788, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %861 = fmul fast float %860, %628
  %862 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %216, i32 %217, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = lshr i32 %863, 18
  %865 = uitofp i32 %864 to float
  %866 = fmul fast float %865, 0x3F4C00EBA0000000
  %867 = call float @dx.op.unary.f32(i32 21, float %866)  ; Exp(value)
  %868 = fadd fast float %867, -1.000000e+00
  %869 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %870 = extractvalue %dx.types.Dimensions %869, 0
  %871 = sitofp i32 %870 to float
  %872 = extractvalue %dx.types.Dimensions %869, 1
  %873 = sitofp i32 %872 to float
  %874 = fcmp fast oge float %214, %871
  %875 = fcmp fast oge float %215, %873
  %876 = or i1 %874, %875
  %877 = select i1 %876, float 0x4197782600000000, float %868
  %878 = icmp eq i32 %130, 3
  %879 = fcmp fast ogt float %50, %877
  %880 = and i1 %240, %879
  %881 = or i1 %878, %880
  %882 = icmp eq i32 %130, 2
  %883 = fcmp fast ole float %50, %877
  %884 = and i1 %882, %883
  %885 = or i1 %884, %881
  %886 = fmul fast float %810, %795
  %887 = fmul fast float %811, %796
  %888 = fmul fast float %812, %797
  %889 = fadd fast float %886, %807
  %890 = fadd fast float %808, %887
  %891 = fadd fast float %888, %809
  %892 = fmul fast float %889, %627
  %893 = fmul fast float %890, %627
  %894 = fmul fast float %891, %627
  %895 = fmul fast float %795, %627
  %896 = fmul fast float %796, %627
  %897 = fmul fast float %797, %627
  %898 = fmul fast float %859, %825
  %899 = fsub fast float 1.000000e+00, %825
  %900 = fsub fast float %899, %861
  %901 = call float @dx.op.unary.f32(i32 7, float %900)  ; Saturate(value)
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 3
  %904 = fmul fast float %903, %901
  %905 = fadd fast float %904, %898
  %906 = and i32 %134, 1048576
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %999, label %908, !dx.controlflow.hints !67

; <label>:908                                     ; preds = %858
  %909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.f32 %909, 2
  %911 = extractvalue %dx.types.CBufRet.f32 %909, 3
  %912 = fmul fast float %910, %55
  %913 = fmul fast float %911, %56
  %914 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  %915 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %916 = select i1 %885, i32 2, i32 0
  %917 = or i32 %916, 1
  %918 = uitofp i32 %917 to float
  %919 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %914, float %915, float %918, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %920 = extractvalue %dx.types.ResRet.f32 %919, 0
  %921 = extractvalue %dx.types.ResRet.f32 %919, 1
  %922 = extractvalue %dx.types.ResRet.f32 %919, 2
  %923 = extractvalue %dx.types.ResRet.f32 %919, 3
  %924 = add nuw nsw i32 %916, 2
  %925 = uitofp i32 %924 to float
  %926 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %914, float %915, float %925, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = extractvalue %dx.types.ResRet.f32 %926, 1
  %929 = extractvalue %dx.types.ResRet.f32 %926, 2
  %930 = extractvalue %dx.types.ResRet.f32 %926, 3
  %931 = call float @dx.op.binary.f32(i32 35, float %921, float %922)  ; FMax(a,b)
  %932 = call float @dx.op.binary.f32(i32 35, float %920, float %931)  ; FMax(a,b)
  %933 = call float @dx.op.binary.f32(i32 35, float %932, float %923)  ; FMax(a,b)
  %934 = call float @dx.op.binary.f32(i32 36, float %928, float %929)  ; FMin(a,b)
  %935 = call float @dx.op.binary.f32(i32 36, float %927, float %934)  ; FMin(a,b)
  %936 = call float @dx.op.binary.f32(i32 36, float %935, float %930)  ; FMin(a,b)
  %937 = fmul fast float %933, 2.550000e+02
  %938 = fadd fast float %937, 0x3F70101020000000
  %939 = fptoui float %938 to i32
  %940 = fmul fast float %936, 2.550000e+02
  %941 = fadd fast float %940, 0x3F70101020000000
  %942 = fptoui float %941 to i32
  %943 = icmp ult i32 %939, %942
  br i1 %943, label %944, label %992

; <label>:944                                     ; preds = %908
  %945 = fcmp fast ogt float %49, 9.843750e-01
  %946 = fadd fast float %50, -4.000000e+00
  %947 = select i1 %945, float -4.000000e+00, float %946
  %948 = call float @dx.op.binary.f32(i32 35, float %947, float 0.000000e+00)  ; FMax(a,b)
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = fadd fast float %950, %948
  %952 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %953 = fmul fast float %951, %952
  %954 = call float @dx.op.unary.f32(i32 23, float %953)  ; Log(value)
  %955 = extractvalue %dx.types.CBufRet.f32 %949, 3
  %956 = fmul fast float %955, %954
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %959 = fmul fast float %956, %958
  %960 = call float @dx.op.unary.f32(i32 7, float %959)  ; Saturate(value)
  %961 = uitofp i32 %939 to float
  %962 = uitofp i32 %942 to float
  %963 = fadd fast float %961, 5.000000e-01
  %964 = fadd fast float %962, 5.000000e-01
  %965 = fmul fast float %958, %963
  %966 = fmul fast float %958, %964
  %967 = fadd fast float %965, 0x3F0FFB4800000000
  %968 = fadd fast float %966, 0xBF0FFB4800000000
  %969 = call float @dx.op.binary.f32(i32 35, float %960, float %967)  ; FMax(a,b)
  %970 = call float @dx.op.binary.f32(i32 36, float %969, float %968)  ; FMin(a,b)
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 1
  %973 = extractvalue %dx.types.CBufRet.f32 %971, 2
  %974 = extractvalue %dx.types.CBufRet.f32 %971, 0
  %975 = select i1 %885, float %974, float 0.000000e+00
  %976 = fmul fast float %972, %970
  %977 = fadd fast float %975, %976
  %978 = fadd fast float %975, %973
  %979 = fsub fast float %972, %973
  %980 = fadd fast float %979, %975
  %981 = call float @dx.op.binary.f32(i32 35, float %977, float %978)  ; FMax(a,b)
  %982 = call float @dx.op.binary.f32(i32 36, float %981, float %980)  ; FMin(a,b)
  %983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %914, float %915, float %982, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %984 = extractvalue %dx.types.ResRet.f32 %983, 0
  %985 = extractvalue %dx.types.ResRet.f32 %983, 1
  %986 = extractvalue %dx.types.ResRet.f32 %983, 2
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 1
  %989 = fmul fast float %988, %984
  %990 = fmul fast float %988, %985
  %991 = fmul fast float %988, %986
  br label %992

; <label>:992                                     ; preds = %944, %908
  %993 = phi float [ %989, %944 ], [ 1.000000e+00, %908 ]
  %994 = phi float [ %990, %944 ], [ 1.000000e+00, %908 ]
  %995 = phi float [ %991, %944 ], [ 1.000000e+00, %908 ]
  %996 = fmul fast float %993, %892
  %997 = fmul fast float %994, %893
  %998 = fmul fast float %995, %894
  br label %999

; <label>:999                                     ; preds = %992, %858
  %1000 = phi float [ %996, %992 ], [ %892, %858 ]
  %1001 = phi float [ %997, %992 ], [ %893, %858 ]
  %1002 = phi float [ %998, %992 ], [ %894, %858 ]
  %1003 = and i32 %134, 2097152
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1009, label %1005, !dx.controlflow.hints !68

; <label>:1005                                    ; preds = %999
  %1006 = add i32 %131, 192
  %1007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  br label %1012

; <label>:1009                                    ; preds = %999
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 3
  br label %1012

; <label>:1012                                    ; preds = %1009, %1005
  %1013 = phi float [ %1008, %1005 ], [ %1011, %1009 ]
  %1014 = fmul fast float %895, %800
  %1015 = fmul fast float %896, %801
  %1016 = fmul fast float %897, %802
  br i1 %880, label %1017, label %1104

; <label>:1017                                    ; preds = %1012
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 3
  %1021 = fmul fast float %1019, %55
  %1022 = fmul fast float %1020, %56
  %1023 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  %1024 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  %1025 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1023, float %1024, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.ResRet.f32 %1025, 2
  %1029 = extractvalue %dx.types.ResRet.f32 %1025, 3
  %1030 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1023, float %1024, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1034 = extractvalue %dx.types.ResRet.f32 %1030, 3
  %1035 = call float @dx.op.binary.f32(i32 35, float %1027, float %1028)  ; FMax(a,b)
  %1036 = call float @dx.op.binary.f32(i32 35, float %1026, float %1035)  ; FMax(a,b)
  %1037 = call float @dx.op.binary.f32(i32 35, float %1036, float %1029)  ; FMax(a,b)
  %1038 = call float @dx.op.binary.f32(i32 36, float %1032, float %1033)  ; FMin(a,b)
  %1039 = call float @dx.op.binary.f32(i32 36, float %1031, float %1038)  ; FMin(a,b)
  %1040 = call float @dx.op.binary.f32(i32 36, float %1039, float %1034)  ; FMin(a,b)
  %1041 = fmul fast float %1037, 2.550000e+02
  %1042 = fadd fast float %1041, 0x3F70101020000000
  %1043 = fptoui float %1042 to i32
  %1044 = fmul fast float %1040, 2.550000e+02
  %1045 = fadd fast float %1044, 0x3F70101020000000
  %1046 = fptoui float %1045 to i32
  %1047 = icmp ult i32 %1043, %1046
  br i1 %1047, label %1048, label %1090

; <label>:1048                                    ; preds = %1017
  %1049 = fcmp fast ogt float %49, 9.843750e-01
  %1050 = fadd fast float %50, -4.000000e+00
  %1051 = select i1 %1049, float -4.000000e+00, float %1050
  %1052 = call float @dx.op.binary.f32(i32 35, float %1051, float 0.000000e+00)  ; FMax(a,b)
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1055 = fadd fast float %1054, %1052
  %1056 = extractvalue %dx.types.CBufRet.f32 %1053, 2
  %1057 = fmul fast float %1055, %1056
  %1058 = call float @dx.op.unary.f32(i32 23, float %1057)  ; Log(value)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1053, 3
  %1060 = fmul fast float %1059, %1058
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 2
  %1063 = fmul fast float %1060, %1062
  %1064 = call float @dx.op.unary.f32(i32 7, float %1063)  ; Saturate(value)
  %1065 = uitofp i32 %1043 to float
  %1066 = uitofp i32 %1046 to float
  %1067 = fadd fast float %1065, 5.000000e-01
  %1068 = fadd fast float %1066, 5.000000e-01
  %1069 = fmul fast float %1062, %1067
  %1070 = fmul fast float %1062, %1068
  %1071 = fadd fast float %1069, 0x3F0FFB4800000000
  %1072 = fadd fast float %1070, 0xBF0FFB4800000000
  %1073 = call float @dx.op.binary.f32(i32 35, float %1064, float %1071)  ; FMax(a,b)
  %1074 = call float @dx.op.binary.f32(i32 36, float %1073, float %1072)  ; FMin(a,b)
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 1
  %1077 = extractvalue %dx.types.CBufRet.f32 %1075, 2
  %1078 = extractvalue %dx.types.CBufRet.f32 %1075, 0
  %1079 = fmul fast float %1076, %1074
  %1080 = fadd fast float %1078, %1079
  %1081 = fadd fast float %1078, %1077
  %1082 = fsub fast float %1076, %1077
  %1083 = fadd fast float %1082, %1078
  %1084 = call float @dx.op.binary.f32(i32 35, float %1080, float %1081)  ; FMax(a,b)
  %1085 = call float @dx.op.binary.f32(i32 36, float %1084, float %1083)  ; FMin(a,b)
  %1086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1023, float %1024, float %1085, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.ResRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1086, 2
  br label %1090

; <label>:1090                                    ; preds = %1048, %1017
  %1091 = phi float [ %1087, %1048 ], [ 1.000000e+00, %1017 ]
  %1092 = phi float [ %1088, %1048 ], [ 1.000000e+00, %1017 ]
  %1093 = phi float [ %1089, %1048 ], [ 1.000000e+00, %1017 ]
  %1094 = call float @dx.op.dot3.f32(i32 55, float %1091, float %1092, float %1093, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1095 = select i1 %114, float %1094, float %1091
  %1096 = select i1 %114, float %1094, float %1092
  %1097 = select i1 %114, float 1.000000e+00, float %1093
  %1098 = fmul fast float %1095, %1014
  %1099 = fmul fast float %1096, %1015
  %1100 = fmul fast float %1097, %1016
  %1101 = fmul fast float %1095, %1000
  %1102 = fmul fast float %1096, %1001
  %1103 = fmul fast float %1097, %1002
  br label %1104

; <label>:1104                                    ; preds = %1090, %1012
  %1105 = phi float [ %877, %1090 ], [ %50, %1012 ]
  %1106 = phi float [ %1098, %1090 ], [ %1014, %1012 ]
  %1107 = phi float [ %1099, %1090 ], [ %1015, %1012 ]
  %1108 = phi float [ %1100, %1090 ], [ %1016, %1012 ]
  %1109 = phi float [ %1101, %1090 ], [ %1000, %1012 ]
  %1110 = phi float [ %1102, %1090 ], [ %1001, %1012 ]
  %1111 = phi float [ %1103, %1090 ], [ %1002, %1012 ]
  %1112 = phi float [ %1091, %1090 ], [ 1.000000e+00, %1012 ]
  br i1 %885, label %1361, label %1113

; <label>:1113                                    ; preds = %1104
  %1114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %32, float %33, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = fmul fast float %1115, %1112
  %1119 = call float @dx.op.dot3.f32(i32 55, float %1115, float %1116, float %1117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = select i1 %114, float %1119, float %1115
  %1121 = select i1 %114, float %1119, float %1116
  %1122 = select i1 %114, float 1.000000e+00, float %1117
  %1123 = fmul fast float %1120, %1106
  %1124 = fmul fast float %1121, %1107
  %1125 = fmul fast float %1122, %1108
  %1126 = fmul fast float %1120, %1109
  %1127 = fmul fast float %1121, %1110
  %1128 = fmul fast float %1122, %1111
  %1129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.i32 %1129, 0
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1361, label %1132, !dx.controlflow.hints !69

; <label>:1132                                    ; preds = %1113
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 2
  %1135 = extractvalue %dx.types.CBufRet.f32 %1133, 3
  %1136 = fmul fast float %1134, %55
  %1137 = fmul fast float %1135, %56
  %1138 = fmul fast float %1136, 2.000000e+00
  %1139 = fmul fast float %1137, 2.000000e+00
  %1140 = fsub fast float 1.000000e+00, %1138
  %1141 = fsub fast float 1.000000e+00, %1139
  %1142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1143 = extractvalue %dx.types.CBufRet.f32 %1142, 0
  %1144 = extractvalue %dx.types.CBufRet.f32 %1142, 1
  %1145 = extractvalue %dx.types.CBufRet.f32 %1142, 2
  %1146 = fmul fast float %1140, %1143
  %1147 = fmul fast float %1140, %1144
  %1148 = fmul fast float %1140, %1145
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 0
  %1151 = extractvalue %dx.types.CBufRet.f32 %1149, 1
  %1152 = extractvalue %dx.types.CBufRet.f32 %1149, 2
  %1153 = fmul fast float %1141, %1150
  %1154 = fmul fast float %1141, %1151
  %1155 = fmul fast float %1141, %1152
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = extractvalue %dx.types.CBufRet.f32 %1156, 1
  %1159 = extractvalue %dx.types.CBufRet.f32 %1156, 2
  %1160 = fadd fast float %1153, %1157
  %1161 = fadd fast float %1160, %1146
  %1162 = fadd fast float %1154, %1158
  %1163 = fadd fast float %1162, %1147
  %1164 = fadd fast float %1155, %1159
  %1165 = fadd fast float %1164, %1148
  %1166 = fmul fast float %1161, %1105
  %1167 = fmul fast float %1163, %1105
  %1168 = fmul fast float %1165, %1105
  %1169 = fmul fast float %1166, %1166
  %1170 = fmul fast float %1167, %1167
  %1171 = fadd fast float %1169, %1170
  %1172 = fmul fast float %1168, %1168
  %1173 = fadd fast float %1171, %1172
  %1174 = call float @dx.op.unary.f32(i32 24, float %1173)  ; Sqrt(value)
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = fsub fast float %1174, %1176
  %1178 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1179 = fmul fast float %1177, %1178
  %1180 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1181 = fadd fast float %1180, -5.000000e-01
  %1182 = fmul fast float %1181, 2.000000e+00
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 2
  %1185 = call float @dx.op.binary.f32(i32 36, float %1184, float %1182)  ; FMin(a,b)
  %1186 = fsub fast float -0.000000e+00, %1184
  %1187 = fcmp fast ogt float %1185, %1186
  br i1 %1187, label %1188, label %1361, !dx.controlflow.hints !70

; <label>:1188                                    ; preds = %1132
  %1189 = fmul fast float %1185, 5.000000e-01
  %1190 = fadd fast float %1189, 5.000000e-01
  %1191 = call float @dx.op.unary.f32(i32 22, float %1190)  ; Frc(value)
  %1192 = call float @dx.op.unary.f32(i32 27, float %1191)  ; Round_ni(value)
  %1193 = call float @dx.op.unary.f32(i32 22, float %1191)  ; Frc(value)
  %1194 = fmul fast float %1193, 2.000000e+00
  %1195 = fadd fast float %1194, -1.000000e+00
  %1196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %1136, float %1137, float %1192, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1198 = extractvalue %dx.types.ResRet.f32 %1196, 1
  %1199 = extractvalue %dx.types.ResRet.f32 %1196, 2
  %1200 = extractvalue %dx.types.ResRet.f32 %1196, 3
  %1201 = fadd fast float %1197, -5.000000e-01
  %1202 = fadd fast float %1199, -5.000000e-01
  %1203 = fmul fast float %1201, 0xBFD5555560000000
  %1204 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1202, float %1203)  ; FMad(a,b,c)
  %1205 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1198, float 0.000000e+00)  ; FMad(a,b,c)
  %1206 = fadd fast float %1205, %1200
  %1207 = fmul fast float %1201, -7.500000e-01
  %1208 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1202, float %1207)  ; FMad(a,b,c)
  %1209 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1198, float 0.000000e+00)  ; FMad(a,b,c)
  %1210 = fadd fast float %1209, %1200
  %1211 = call float @dx.op.binary.f32(i32 35, float %1204, float -1.000000e+00)  ; FMax(a,b)
  %1212 = call float @dx.op.binary.f32(i32 35, float %1206, float -1.000000e+00)  ; FMax(a,b)
  %1213 = call float @dx.op.binary.f32(i32 35, float %1208, float -1.000000e+00)  ; FMax(a,b)
  %1214 = call float @dx.op.binary.f32(i32 35, float %1210, float -1.000000e+00)  ; FMax(a,b)
  %1215 = call float @dx.op.binary.f32(i32 36, float %1211, float 1.000000e+00)  ; FMin(a,b)
  %1216 = call float @dx.op.binary.f32(i32 36, float %1212, float 1.000000e+00)  ; FMin(a,b)
  %1217 = call float @dx.op.binary.f32(i32 36, float %1213, float 1.000000e+00)  ; FMin(a,b)
  %1218 = call float @dx.op.binary.f32(i32 36, float %1214, float 1.000000e+00)  ; FMin(a,b)
  %1219 = fcmp fast olt float %1215, 0x3FEFFF8020000000
  br i1 %1219, label %1220, label %1335, !dx.controlflow.hints !71

; <label>:1220                                    ; preds = %1188
  %1221 = extractvalue %dx.types.CBufRet.f32 %1183, 3
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1226 = extractvalue %dx.types.CBufRet.f32 %1222, 3
  %1227 = fsub fast float %1223, %1215
  %1228 = fsub fast float %1224, %1216
  %1229 = fsub fast float %1225, %1217
  %1230 = fsub fast float %1226, %1218
  %1231 = fmul fast float %1227, %1221
  %1232 = fmul fast float %1228, %1221
  %1233 = fmul fast float %1229, %1221
  %1234 = fmul fast float %1230, %1221
  %1235 = fadd fast float %1231, %1215
  %1236 = fadd fast float %1232, %1216
  %1237 = fsub fast float -0.000000e+00, %1236
  %1238 = fadd fast float %1233, %1217
  %1239 = fadd fast float %1234, %1218
  %1240 = fmul fast float %1235, %1235
  %1241 = fsub fast float %1236, %1240
  %1242 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1241)  ; FMax(a,b)
  %1243 = fdiv fast float 1.000000e+00, %1242
  %1244 = fmul fast float %1236, %1235
  %1245 = fsub fast float %1238, %1244
  %1246 = fsub fast float %1195, %1235
  %1247 = fmul fast float %1195, %1195
  %1248 = fsub fast float %1247, %1236
  %1249 = fmul fast float %1246, %1243
  %1250 = fmul fast float %1249, %1245
  %1251 = fsub fast float %1248, %1250
  %1252 = fmul fast float %1236, %1236
  %1253 = fsub fast float %1239, %1252
  %1254 = fmul fast float %1245, %1245
  %1255 = fmul fast float %1254, %1243
  %1256 = fsub fast float %1253, %1255
  %1257 = fdiv fast float %1251, %1256
  %1258 = fmul fast float %1245, %1257
  %1259 = fsub fast float %1246, %1258
  %1260 = fmul fast float %1259, %1243
  %1261 = fmul fast float %1260, %1235
  %1262 = fsub fast float 1.000000e+00, %1261
  %1263 = fmul fast float %1236, %1257
  %1264 = fsub fast float %1262, %1263
  %1265 = fmul fast float %1260, %1260
  %1266 = fmul fast float %1257, 4.000000e+00
  %1267 = fmul fast float %1266, %1264
  %1268 = fsub fast float %1265, %1267
  %1269 = call float @dx.op.unary.f32(i32 24, float %1268)  ; Sqrt(value)
  %1270 = fcmp fast oge float %1260, 0.000000e+00
  %1271 = fsub fast float -0.000000e+00, %1269
  %1272 = select i1 %1270, float %1271, float %1269
  %1273 = fsub fast float %1272, %1260
  %1274 = fdiv fast float %1273, %1257
  %1275 = fdiv fast float %1264, %1273
  %1276 = fmul fast float %1274, 5.000000e-01
  %1277 = fmul fast float %1275, 2.000000e+00
  %1278 = select i1 %1270, float %1276, float %1277
  %1279 = select i1 %1270, float %1277, float %1276
  %1280 = call float @dx.op.binary.f32(i32 35, float %1278, float %1279)  ; FMax(a,b)
  %1281 = call float @dx.op.binary.f32(i32 36, float %1278, float %1279)  ; FMin(a,b)
  %1282 = fcmp fast ogt float %1195, %1281
  br i1 %1282, label %1283, label %1293

; <label>:1283                                    ; preds = %1220
  %1284 = fsub fast float %1195, %1281
  %1285 = fsub fast float %1280, %1281
  %1286 = fmul fast float %1284, %1285
  %1287 = fmul fast float %1280, %1195
  %1288 = fadd fast float %1280, %1195
  %1289 = fmul fast float %1288, %1235
  %1290 = fadd fast float %1287, %1236
  %1291 = fsub fast float %1290, %1289
  %1292 = fdiv fast float %1291, %1286
  br label %1293

; <label>:1293                                    ; preds = %1283, %1220
  %1294 = phi float [ %1292, %1283 ], [ 0.000000e+00, %1220 ]
  %1295 = fcmp fast ogt float %1195, %1280
  %1296 = fsub fast float %1195, %1280
  br i1 %1295, label %1297, label %1307

; <label>:1297                                    ; preds = %1293
  %1298 = fsub fast float %1280, %1281
  %1299 = fmul fast float %1298, %1296
  %1300 = fmul fast float %1281, %1195
  %1301 = fadd fast float %1281, %1195
  %1302 = fmul fast float %1301, %1235
  %1303 = fsub fast float %1237, %1300
  %1304 = fadd fast float %1303, %1302
  %1305 = fdiv fast float %1304, %1299
  %1306 = fadd fast float %1305, %1294
  br label %1307

; <label>:1307                                    ; preds = %1297, %1293
  %1308 = phi float [ %1306, %1297 ], [ %1294, %1293 ]
  %1309 = fsub fast float %1195, %1281
  %1310 = fmul fast float %1309, %1296
  %1311 = fmul fast float %1281, %1280
  %1312 = fadd fast float %1281, %1280
  %1313 = fmul fast float %1312, %1235
  %1314 = fadd fast float %1311, %1236
  %1315 = fsub fast float %1314, %1313
  %1316 = fdiv fast float %1315, %1310
  %1317 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1318 = fcmp fast oeq float %1013, 0.000000e+00
  %1319 = extractvalue %dx.types.CBufRet.f32 %1183, 0
  %1320 = fcmp fast oeq float %1319, 0.000000e+00
  %1321 = or i1 %1318, %1320
  %1322 = fmul fast float %1319, 2.000000e+00
  %1323 = fadd fast float %1184, %1185
  %1324 = fdiv fast float %1323, %1322
  %1325 = call float @dx.op.unary.f32(i32 7, float %1324)  ; Saturate(value)
  %1326 = fmul fast float %1325, 2.000000e+00
  %1327 = fsub fast float 3.000000e+00, %1326
  %1328 = fmul fast float %1325, %1325
  %1329 = fmul fast float %1328, %1327
  %1330 = select i1 %1321, float 1.000000e+00, float %1329
  %1331 = fmul fast float %1316, %1013
  %1332 = fadd fast float %1317, %1331
  %1333 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  %1334 = fmul fast float %1330, %1333
  br label %1335

; <label>:1335                                    ; preds = %1307, %1188
  %1336 = phi float [ %1334, %1307 ], [ 0.000000e+00, %1188 ]
  %1337 = fsub fast float 1.000000e+00, %1336
  %1338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1136, float %1137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1339 = extractvalue %dx.types.ResRet.f32 %1338, 0
  %1340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.i32 %1340, 2
  %1342 = icmp eq i32 %1341, 0
  br i1 %1342, label %1348, label %1343

; <label>:1343                                    ; preds = %1335
  %1344 = call float @dx.op.unary.f32(i32 7, float %1336)  ; Saturate(value)
  %1345 = fadd fast float %1339, -1.000000e+00
  %1346 = fmul fast float %1344, %1345
  %1347 = fadd fast float %1346, 1.000000e+00
  br label %1348

; <label>:1348                                    ; preds = %1343, %1335
  %1349 = phi float [ %1347, %1343 ], [ %1337, %1335 ]
  %1350 = call float @dx.op.binary.f32(i32 35, float %1339, float %1349)  ; FMax(a,b)
  %1351 = fmul fast float %1350, %1118
  %1352 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1350, float %1350, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1353 = select i1 %114, float %1352, float %1350
  %1354 = select i1 %114, float 1.000000e+00, float %1350
  %1355 = fmul fast float %1353, %1123
  %1356 = fmul fast float %1353, %1124
  %1357 = fmul fast float %1354, %1125
  %1358 = fmul fast float %1353, %1126
  %1359 = fmul fast float %1353, %1127
  %1360 = fmul fast float %1354, %1128
  br label %1361

; <label>:1361                                    ; preds = %1348, %1132, %1113, %1104
  %1362 = phi float [ %1106, %1104 ], [ %1123, %1113 ], [ %1355, %1348 ], [ %1123, %1132 ]
  %1363 = phi float [ %1107, %1104 ], [ %1124, %1113 ], [ %1356, %1348 ], [ %1124, %1132 ]
  %1364 = phi float [ %1108, %1104 ], [ %1125, %1113 ], [ %1357, %1348 ], [ %1125, %1132 ]
  %1365 = phi float [ %1109, %1104 ], [ %1126, %1113 ], [ %1358, %1348 ], [ %1126, %1132 ]
  %1366 = phi float [ %1110, %1104 ], [ %1127, %1113 ], [ %1359, %1348 ], [ %1127, %1132 ]
  %1367 = phi float [ %1111, %1104 ], [ %1128, %1113 ], [ %1360, %1348 ], [ %1128, %1132 ]
  %1368 = phi float [ %1112, %1104 ], [ %1118, %1113 ], [ %1351, %1348 ], [ %1118, %1132 ]
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 2
  %1371 = extractvalue %dx.types.CBufRet.f32 %1369, 3
  %1372 = fmul fast float %1370, %55
  %1373 = fmul fast float %1371, %56
  %1374 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1375 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1376 = select i1 %885, i32 2, i32 0
  %1377 = or i32 %1376, 1
  %1378 = uitofp i32 %1377 to float
  %1379 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1374, float %1375, float %1378, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = extractvalue %dx.types.ResRet.f32 %1379, 1
  %1382 = extractvalue %dx.types.ResRet.f32 %1379, 2
  %1383 = extractvalue %dx.types.ResRet.f32 %1379, 3
  %1384 = add nuw nsw i32 %1376, 2
  %1385 = uitofp i32 %1384 to float
  %1386 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1374, float %1375, float %1385, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  %1388 = extractvalue %dx.types.ResRet.f32 %1386, 1
  %1389 = extractvalue %dx.types.ResRet.f32 %1386, 2
  %1390 = extractvalue %dx.types.ResRet.f32 %1386, 3
  %1391 = call float @dx.op.binary.f32(i32 35, float %1381, float %1382)  ; FMax(a,b)
  %1392 = call float @dx.op.binary.f32(i32 35, float %1380, float %1391)  ; FMax(a,b)
  %1393 = call float @dx.op.binary.f32(i32 35, float %1392, float %1383)  ; FMax(a,b)
  %1394 = call float @dx.op.binary.f32(i32 36, float %1388, float %1389)  ; FMin(a,b)
  %1395 = call float @dx.op.binary.f32(i32 36, float %1387, float %1394)  ; FMin(a,b)
  %1396 = call float @dx.op.binary.f32(i32 36, float %1395, float %1390)  ; FMin(a,b)
  %1397 = fmul fast float %1393, 2.550000e+02
  %1398 = fadd fast float %1397, 0x3F70101020000000
  %1399 = fptoui float %1398 to i32
  %1400 = fmul fast float %1396, 2.550000e+02
  %1401 = fadd fast float %1400, 0x3F70101020000000
  %1402 = fptoui float %1401 to i32
  %1403 = icmp ult i32 %1399, %1402
  br i1 %1403, label %1404, label %1447

; <label>:1404                                    ; preds = %1361
  %1405 = fcmp fast ogt float %49, 9.843750e-01
  %1406 = fadd fast float %1105, -4.000000e+00
  %1407 = select i1 %1405, float -4.000000e+00, float %1406
  %1408 = call float @dx.op.binary.f32(i32 35, float %1407, float 0.000000e+00)  ; FMax(a,b)
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 0
  %1411 = fadd fast float %1410, %1408
  %1412 = extractvalue %dx.types.CBufRet.f32 %1409, 2
  %1413 = fmul fast float %1411, %1412
  %1414 = call float @dx.op.unary.f32(i32 23, float %1413)  ; Log(value)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1409, 3
  %1416 = fmul fast float %1415, %1414
  %1417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.f32 %1417, 2
  %1419 = fmul fast float %1416, %1418
  %1420 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1421 = uitofp i32 %1399 to float
  %1422 = uitofp i32 %1402 to float
  %1423 = fadd fast float %1421, 5.000000e-01
  %1424 = fadd fast float %1422, 5.000000e-01
  %1425 = fmul fast float %1418, %1423
  %1426 = fmul fast float %1418, %1424
  %1427 = fadd fast float %1425, 0x3F0FFB4800000000
  %1428 = fadd fast float %1426, 0xBF0FFB4800000000
  %1429 = call float @dx.op.binary.f32(i32 35, float %1420, float %1427)  ; FMax(a,b)
  %1430 = call float @dx.op.binary.f32(i32 36, float %1429, float %1428)  ; FMin(a,b)
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 1
  %1433 = extractvalue %dx.types.CBufRet.f32 %1431, 2
  %1434 = extractvalue %dx.types.CBufRet.f32 %1431, 0
  %1435 = select i1 %885, float %1434, float 0.000000e+00
  %1436 = fmul fast float %1432, %1430
  %1437 = fadd fast float %1435, %1436
  %1438 = fadd fast float %1435, %1433
  %1439 = fsub fast float %1432, %1433
  %1440 = fadd fast float %1439, %1435
  %1441 = call float @dx.op.binary.f32(i32 35, float %1437, float %1438)  ; FMax(a,b)
  %1442 = call float @dx.op.binary.f32(i32 36, float %1441, float %1440)  ; FMin(a,b)
  %1443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1374, float %1375, float %1442, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.ResRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.ResRet.f32 %1443, 2
  br label %1447

; <label>:1447                                    ; preds = %1404, %1361
  %1448 = phi float [ %1444, %1404 ], [ 1.000000e+00, %1361 ]
  %1449 = phi float [ %1445, %1404 ], [ 1.000000e+00, %1361 ]
  %1450 = phi float [ %1446, %1404 ], [ 1.000000e+00, %1361 ]
  %1451 = fmul fast float %1448, %1368
  %1452 = call float @dx.op.dot3.f32(i32 55, float %1448, float %1449, float %1450, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1453 = select i1 %114, float %1452, float %1448
  %1454 = select i1 %114, float %1452, float %1449
  %1455 = select i1 %114, float 1.000000e+00, float %1450
  %1456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.i32 %1456, 3
  %1458 = and i32 %1457, 3
  %1459 = icmp ne i32 %1458, 0
  %1460 = and i32 %1457, 4
  %1461 = icmp ne i32 %1460, 0
  %1462 = and i1 %1459, %1461
  %1463 = and i1 %114, %1462
  br i1 %1463, label %1464, label %1470

; <label>:1464                                    ; preds = %1447
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 1
  %1467 = fadd fast float %1451, -1.000000e+00
  %1468 = fmul fast float %1466, %1467
  %1469 = fadd fast float %1468, 1.000000e+00
  br label %1470

; <label>:1470                                    ; preds = %1464, %1447
  %1471 = phi float [ %1469, %1464 ], [ %1451, %1447 ]
  %1472 = fadd fast float %1365, %1362
  %1473 = fmul fast float %1453, %1472
  %1474 = fadd fast float %1366, %1363
  %1475 = fmul fast float %1454, %1474
  %1476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1477 = extractvalue %dx.types.CBufRet.f32 %1476, 0
  br i1 %114, label %1478, label %1498

; <label>:1478                                    ; preds = %1470
  %1479 = fadd fast float %1473, %1475
  %1480 = fmul fast float %1477, %1479
  %1481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.f32 %1481, 3
  %1483 = extractvalue %dx.types.CBufRet.f32 %902, 1
  %1484 = fsub fast float %905, %1483
  %1485 = extractvalue %dx.types.CBufRet.f32 %902, 2
  %1486 = fmul fast float %1484, %1485
  %1487 = call float @dx.op.unary.f32(i32 7, float %1486)  ; Saturate(value)
  %1488 = fsub fast float %1487, %1482
  %1489 = fmul fast float %1488, %1471
  %1490 = fadd fast float %1489, %1482
  %1491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1492 = extractvalue %dx.types.CBufRet.f32 %1491, 0
  %1493 = fsub fast float %1490, %1492
  %1494 = fmul fast float %1493, 1.000000e+01
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1496 = fmul fast float %1495, %861
  %1497 = fmul fast float %1490, %1496
  br label %1509

; <label>:1498                                    ; preds = %1470
  %1499 = fadd fast float %1367, %1364
  %1500 = fmul fast float %1455, %1499
  %1501 = fmul fast float %1477, %1473
  %1502 = fmul fast float %1477, %1475
  %1503 = fmul fast float %1500, %1477
  %1504 = call float @dx.op.binary.f32(i32 35, float %1502, float %1503)  ; FMax(a,b)
  %1505 = call float @dx.op.binary.f32(i32 35, float %1501, float %1504)  ; FMax(a,b)
  %1506 = call float @dx.op.binary.f32(i32 35, float %1505, float 0.000000e+00)  ; FMax(a,b)
  %1507 = fcmp fast ugt float %1506, 0x3F10000000000000
  br i1 %1507, label %1509, label %1508

; <label>:1508                                    ; preds = %1498
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1509

; <label>:1509                                    ; preds = %1508, %1498, %1478
  %1510 = phi float [ %1480, %1478 ], [ %1501, %1508 ], [ %1501, %1498 ]
  %1511 = phi float [ %1497, %1478 ], [ %1502, %1508 ], [ %1502, %1498 ]
  %1512 = phi float [ %1496, %1478 ], [ %1503, %1508 ], [ %1503, %1498 ]
  %1513 = phi float [ %1496, %1478 ], [ 0.000000e+00, %1508 ], [ 0.000000e+00, %1498 ]
  %1514 = fadd fast float %560, 0x3FE3C6EF40000000
  %1515 = call float @dx.op.unary.f32(i32 22, float %1514)  ; Frc(value)
  %1516 = call float @dx.op.unary.f32(i32 23, float %1510)  ; Log(value)
  %1517 = fadd fast float %1516, -7.000000e+00
  %1518 = call float @dx.op.unary.f32(i32 21, float %1517)  ; Exp(value)
  %1519 = fmul fast float %1515, 2.000000e+00
  %1520 = fadd fast float %1519, -1.000000e+00
  %1521 = fmul fast float %1518, %1520
  %1522 = fcmp fast ogt float %1510, 0.000000e+00
  %1523 = select i1 %1522, float %1521, float 0.000000e+00
  %1524 = fadd fast float %1523, %1510
  %1525 = fadd fast float %560, 0x3FF3C6EF40000000
  %1526 = call float @dx.op.unary.f32(i32 22, float %1525)  ; Frc(value)
  %1527 = call float @dx.op.unary.f32(i32 23, float %1511)  ; Log(value)
  %1528 = fadd fast float %1527, -7.000000e+00
  %1529 = call float @dx.op.unary.f32(i32 21, float %1528)  ; Exp(value)
  %1530 = fmul fast float %1526, 2.000000e+00
  %1531 = fadd fast float %1530, -1.000000e+00
  %1532 = fmul fast float %1529, %1531
  %1533 = fcmp fast ogt float %1511, 0.000000e+00
  %1534 = select i1 %1533, float %1532, float 0.000000e+00
  %1535 = fadd fast float %1534, %1511
  %1536 = fadd fast float %560, 0x3FFDAA66E0000000
  %1537 = call float @dx.op.unary.f32(i32 22, float %1536)  ; Frc(value)
  %1538 = call float @dx.op.unary.f32(i32 23, float %1512)  ; Log(value)
  %1539 = fadd fast float %1538, -6.000000e+00
  %1540 = call float @dx.op.unary.f32(i32 21, float %1539)  ; Exp(value)
  %1541 = fmul fast float %1537, 2.000000e+00
  %1542 = fadd fast float %1541, -1.000000e+00
  %1543 = fmul fast float %1540, %1542
  %1544 = fcmp fast ogt float %1512, 0.000000e+00
  %1545 = select i1 %1544, float %1543, float 0.000000e+00
  %1546 = fadd fast float %1545, %1512
  %1547 = select i1 %114, float %1511, float %1535
  %1548 = select i1 %114, float %1512, float %1546
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1549 = call float @dx.op.binary.f32(i32 36, float %1524, float 3.225500e+04)  ; FMin(a,b)
  %1550 = call float @dx.op.binary.f32(i32 36, float %1547, float 3.225500e+04)  ; FMin(a,b)
  %1551 = call float @dx.op.binary.f32(i32 36, float %1548, float 3.225500e+04)  ; FMin(a,b)
  %1552 = call float @dx.op.binary.f32(i32 36, float %1513, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1549)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1551)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1552)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1513)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1513)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1513)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1513)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!33}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24}
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
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !20}
!20 = !{i32 0, i32 14}
!21 = !{i32 12, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!22 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !7}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!24 = !{i32 15, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !59}
!35 = !{!36, !55, null}
!36 = !{!37, !40, !41, !43, !46, !48, !50, !52, !53, !54}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !39}
!41 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !42}
!42 = !{i32 3, i32 3}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 1, i32 1, i8 4, i32 3, i8 0, !45}
!44 = !{i32 2}
!45 = !{i32 3, i32 7}
!46 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 4, i8 0, !39}
!47 = !{i32 3}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 3, i32 1, i8 2, i32 5, i8 0, !42}
!49 = !{i32 5}
!50 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 6, i8 0, !39}
!51 = !{i32 8}
!52 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 7, i8 0, !39}
!53 = !{i32 8, !"COLOR", i8 5, i8 0, !47, i8 1, i32 1, i8 3, i32 8, i8 0, !45}
!54 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
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
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}

