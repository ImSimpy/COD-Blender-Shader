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
; shader hash: 60a6f45fe3b03f1f5c47b76ade8e91f6
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
  %164 = add i32 %23, 72
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = extractvalue %dx.types.ResRet.i32 %165, 1
  %168 = bitcast i32 %166 to float
  %169 = bitcast i32 %167 to float
  %170 = fmul fast float %168, %33
  %171 = fmul fast float %169, %34
  %172 = call float @dx.op.unary.f32(i32 22, float %170)  ; Frc(value)
  %173 = call float @dx.op.unary.f32(i32 22, float %171)  ; Frc(value)
  %174 = and i32 %125, 16
  %175 = icmp ne i32 %174, 0
  %176 = select i1 %175, float 1.000000e+00, float %38
  %177 = add i32 %23, 108
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = add i32 %179, 0
  %181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %181, %dx.types.Handle %44, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float %183, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = fmul fast float %185, %176
  %187 = icmp eq i32 %174, 0
  br i1 %187, label %207, label %188, !dx.controlflow.hints !60

; <label>:188                                     ; preds = %161
  %189 = add i32 %122, 64
  %190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = fadd fast float %191, 1.000000e+00
  %193 = fmul fast float %192, %38
  %194 = fsub fast float %193, %191
  %195 = fsub fast float %192, %194
  %196 = call float @dx.op.unary.f32(i32 7, float %195)  ; Saturate(value)
  %197 = fsub fast float 1.000000e+00, %193
  %198 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %199 = fsub fast float %196, %198
  %200 = fsub fast float %186, %198
  %201 = fdiv fast float %200, %199
  %202 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  %203 = fmul fast float %202, 2.000000e+00
  %204 = fsub fast float 3.000000e+00, %203
  %205 = fmul fast float %202, %202
  %206 = fmul fast float %205, %204
  br label %207

; <label>:207                                     ; preds = %188, %161
  %208 = phi float [ %206, %188 ], [ %186, %161 ]
  %209 = fcmp fast ogt float %208, 0.000000e+00
  br i1 %209, label %211, label %210

; <label>:210                                     ; preds = %207
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %211

; <label>:211                                     ; preds = %210, %207
  %212 = call float @dx.op.unary.f32(i32 7, float %208)  ; Saturate(value)
  %213 = fmul fast float %47, 5.000000e-01
  %214 = fmul fast float %48, 5.000000e-01
  %215 = fptosi float %213 to i32
  %216 = fptosi float %214 to i32
  %217 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %215, i32 %216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = lshr i32 %218, 18
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F4C00EBA0000000
  %222 = call float @dx.op.unary.f32(i32 21, float %221)  ; Exp(value)
  %223 = fadd fast float %222, -1.000000e+00
  %224 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %225 = extractvalue %dx.types.Dimensions %224, 0
  %226 = sitofp i32 %225 to float
  %227 = extractvalue %dx.types.Dimensions %224, 1
  %228 = sitofp i32 %227 to float
  %229 = fcmp fast oge float %213, %226
  %230 = fcmp fast oge float %214, %228
  %231 = or i1 %229, %230
  %232 = select i1 %231, float 0x4197782600000000, float %223
  %233 = fsub fast float %232, %42
  %234 = fcmp fast ogt float %233, 0.000000e+00
  %235 = and i32 %121, -2
  %236 = icmp eq i32 %235, 2
  %237 = and i1 %236, %234
  %238 = xor i1 %234, true
  %239 = icmp eq i32 %121, 1
  %240 = and i1 %239, %238
  %241 = or i1 %237, %240
  %242 = and i32 %125, 262144
  %243 = icmp ne i32 %242, 0
  %244 = and i1 %243, %241
  %245 = xor i1 %241, true
  %246 = and i32 %125, 131072
  %247 = icmp ne i32 %246, 0
  %248 = and i1 %247, %245
  %249 = or i1 %244, %248
  br i1 %249, label %250, label %251

; <label>:250                                     ; preds = %211
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %251

; <label>:251                                     ; preds = %250, %211
  %252 = and i32 %125, 32
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %503, label %254, !dx.controlflow.hints !61

; <label>:254                                     ; preds = %251
  %255 = add i32 %122, 80
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = extractvalue %dx.types.ResRet.f32 %256, 1
  %259 = extractvalue %dx.types.ResRet.f32 %256, 2
  %260 = extractvalue %dx.types.ResRet.f32 %256, 3
  %261 = add i32 %122, 96
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = add i32 %122, 112
  %267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = extractvalue %dx.types.ResRet.f32 %267, 1
  %270 = extractvalue %dx.types.ResRet.f32 %267, 2
  %271 = extractvalue %dx.types.ResRet.f32 %267, 3
  %272 = add i32 %122, 128
  %273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = extractvalue %dx.types.ResRet.f32 %273, 3
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 4096
  %281 = icmp ne i32 %280, 0
  %282 = fcmp fast une float %265, 0.000000e+00
  %283 = and i32 %279, 64
  %284 = icmp ne i32 %283, 0
  %285 = and i32 %279, 128
  %286 = icmp eq i32 %285, 0
  %287 = and i32 %279, 2048
  %288 = icmp eq i32 %287, 0
  %289 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %290 = extractvalue %dx.types.Dimensions %289, 0
  %291 = sitofp i32 %290 to float
  %292 = extractvalue %dx.types.Dimensions %289, 1
  %293 = sitofp i32 %292 to float
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %296 = extractvalue %dx.types.CBufRet.f32 %294, 3
  %297 = fmul fast float %295, %47
  %298 = fmul fast float %296, %48
  %299 = fmul fast float %297, %291
  %300 = fmul fast float %298, %293
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %303 = fsub fast float -0.000000e+00, %302
  %304 = fptoui float %303 to i32
  %305 = fptoui float %299 to i32
  %306 = fptoui float %300 to i32
  %307 = and i32 %304, 31
  %308 = lshr i32 %305, %307
  %309 = lshr i32 %306, %307
  %310 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %304, i32 %308, i32 %309, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  %312 = fcmp fast ogt float %311, -1.000000e+00
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %315 = select i1 %312, float %314, float 1.000000e+00
  %316 = fadd fast float %311, 1.000000e+00
  %317 = fmul fast float %315, %316
  %318 = call float @dx.op.unary.f32(i32 6, float %317)  ; FAbs(value)
  %319 = extractvalue %dx.types.CBufRet.f32 %313, 3
  %320 = fcmp fast oge float %318, %319
  %321 = select i1 %320, float 0x4197782600000000, float %318
  br i1 %288, label %399, label %322, !dx.controlflow.hints !62

; <label>:322                                     ; preds = %254
  %323 = fmul fast float %52, %295
  %324 = fmul fast float %54, %296
  %325 = fsub fast float 1.000000e+00, %323
  %326 = fsub fast float 1.000000e+00, %324
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = fmul fast float %325, %328
  %332 = fmul fast float %325, %329
  %333 = fmul fast float %325, %330
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %338 = fmul fast float %326, %335
  %339 = fmul fast float %326, %336
  %340 = fmul fast float %326, %337
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 0
  %343 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %344 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %345 = fadd fast float %338, %342
  %346 = fadd fast float %345, %331
  %347 = fadd fast float %339, %343
  %348 = fadd fast float %347, %332
  %349 = fadd fast float %340, %344
  %350 = fadd fast float %349, %333
  %351 = fmul fast float %346, %321
  %352 = fmul fast float %348, %321
  %353 = fmul fast float %350, %321
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 0
  %356 = extractvalue %dx.types.CBufRet.f32 %354, 1
  %357 = extractvalue %dx.types.CBufRet.f32 %354, 2
  %358 = fsub fast float %355, %24
  %359 = fadd fast float %358, %351
  %360 = fsub fast float %356, %25
  %361 = fadd fast float %360, %352
  %362 = fsub fast float %357, %26
  %363 = fadd fast float %362, %353
  %364 = fmul fast float %27, %27
  %365 = call float @dx.op.dot3.f32(i32 55, float %359, float %361, float %363, float %359, float %361, float %363)  ; Dot3(ax,ay,az,bx,by,bz)
  %366 = fsub fast float %364, %365
  %367 = fmul fast float %264, %364
  %368 = fmul fast float %263, %364
  %369 = fcmp fast olt float %366, %367
  %370 = fcmp fast ogt float %366, %368
  %371 = or i1 %369, %370
  %372 = select i1 %371, float 0.000000e+00, float %366
  %373 = fsub fast float %263, %264
  %374 = fmul fast float %373, %364
  %375 = fsub fast float %372, %367
  %376 = fdiv fast float %375, %374
  %377 = call float @dx.op.unary.f32(i32 7, float %376)  ; Saturate(value)
  %378 = fmul fast float %377, 2.000000e+00
  %379 = fsub fast float 3.000000e+00, %378
  %380 = fmul fast float %377, %377
  %381 = fmul fast float %380, %379
  %382 = fmul fast float %268, %35
  %383 = fmul fast float %269, %36
  %384 = fmul fast float %270, %37
  %385 = fsub fast float %382, %274
  %386 = fsub fast float %383, %275
  %387 = fsub fast float %384, %276
  %388 = fsub fast float %271, %277
  %389 = fmul fast float %381, %385
  %390 = fmul fast float %381, %386
  %391 = fmul fast float %381, %387
  %392 = fmul fast float %381, %388
  %393 = fadd fast float %389, %274
  %394 = fadd fast float %390, %275
  %395 = fadd fast float %391, %276
  %396 = fadd fast float %392, %277
  %397 = fmul fast float %257, %257
  %398 = fmul fast float %397, %372
  br label %494

; <label>:399                                     ; preds = %254
  %400 = and i32 %279, 256
  %401 = icmp eq i32 %400, 0
  %402 = fsub fast float %321, %42
  br i1 %401, label %451, label %403

; <label>:403                                     ; preds = %399
  %404 = fadd fast float %263, %42
  %405 = fcmp fast olt float %321, %42
  %406 = fcmp fast ogt float %321, %404
  %407 = or i1 %405, %406
  %408 = select i1 %407, float 0.000000e+00, float %402
  %409 = call float @dx.op.unary.f32(i32 83, float %321)  ; DerivCoarseX(value)
  %410 = call float @dx.op.unary.f32(i32 84, float %321)  ; DerivCoarseY(value)
  %411 = fmul fast float %409, %409
  %412 = fmul fast float %410, %410
  %413 = fadd fast float %412, %411
  %414 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %415 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %416 = fmul fast float %415, %414
  %417 = call float @dx.op.unary.f32(i32 7, float %416)  ; Saturate(value)
  %418 = fmul fast float %417, %264
  %419 = fdiv fast float %402, %418
  %420 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %421 = fmul fast float %420, 2.000000e+00
  %422 = fsub fast float 3.000000e+00, %421
  %423 = fmul fast float %420, %420
  %424 = fmul fast float %423, %422
  %425 = fsub fast float %321, %404
  %426 = fadd fast float %425, %418
  %427 = fdiv fast float %426, %418
  %428 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %429 = fmul fast float %428, 2.000000e+00
  %430 = fsub fast float 3.000000e+00, %429
  %431 = fmul fast float %428, %428
  %432 = fmul fast float %431, %430
  %433 = fsub fast float %424, %432
  %434 = fmul fast float %268, %35
  %435 = fmul fast float %269, %36
  %436 = fmul fast float %270, %37
  %437 = fsub fast float %434, %274
  %438 = fsub fast float %435, %275
  %439 = fsub fast float %436, %276
  %440 = fsub fast float %271, %277
  %441 = fmul fast float %433, %437
  %442 = fmul fast float %433, %438
  %443 = fmul fast float %433, %439
  %444 = fmul fast float %433, %440
  %445 = fadd fast float %441, %274
  %446 = fadd fast float %442, %275
  %447 = fadd fast float %443, %276
  %448 = fadd fast float %444, %277
  %449 = fmul fast float %408, %257
  %450 = call float @dx.op.unary.f32(i32 6, float %449)  ; FAbs(value)
  br label %494

; <label>:451                                     ; preds = %399
  br i1 %282, label %452, label %465

; <label>:452                                     ; preds = %451
  %453 = fdiv fast float 5.000000e+01, %27
  %454 = select i1 %284, float %453, float 1.000000e+00
  %455 = fmul fast float %454, %257
  %456 = fmul fast float %172, 2.000000e+00
  %457 = fmul fast float %173, 2.000000e+00
  %458 = fadd fast float %456, -1.000000e+00
  %459 = fadd fast float %457, -1.000000e+00
  %460 = call float @dx.op.dot2.f32(i32 54, float %458, float %459, float %458, float %459)  ; Dot2(ax,ay,bx,by)
  %461 = fmul fast float %265, %27
  %462 = fmul fast float %461, %460
  %463 = fsub fast float %402, %462
  %464 = fmul fast float %455, %463
  br label %494

; <label>:465                                     ; preds = %451
  br i1 %286, label %486, label %466

; <label>:466                                     ; preds = %465
  %467 = fmul fast float %27, 0x3F947AE140000000
  %468 = select i1 %284, float %467, float 1.000000e+00
  %469 = fdiv fast float 1.000000e+00, %468
  %470 = fmul fast float %468, %258
  %471 = fmul fast float %468, %259
  %472 = fmul fast float %469, %260
  %473 = call float @dx.op.unary.f32(i32 6, float %402)  ; FAbs(value)
  %474 = fcmp fast olt float %473, %470
  br i1 %474, label %475, label %479, !dx.controlflow.hints !63

; <label>:475                                     ; preds = %466
  %476 = fmul fast float %469, %257
  %477 = fmul fast float %476, %473
  %478 = call float @dx.op.unary.f32(i32 6, float %477)  ; FAbs(value)
  br label %494

; <label>:479                                     ; preds = %466
  %480 = fcmp fast ogt float %473, %471
  br i1 %480, label %481, label %494

; <label>:481                                     ; preds = %479
  %482 = fsub fast float %473, %471
  %483 = fmul fast float %472, %482
  %484 = call float @dx.op.unary.f32(i32 6, float %483)  ; FAbs(value)
  %485 = fsub fast float 1.000000e+00, %484
  br label %494

; <label>:486                                     ; preds = %465
  %487 = fdiv fast float 5.000000e+01, %27
  %488 = select i1 %284, float %487, float 1.000000e+00
  %489 = fmul fast float %488, %257
  %490 = call float @dx.op.unary.f32(i32 6, float %233)  ; FAbs(value)
  %491 = select i1 %281, float %490, float 0x47EFFFFFE0000000
  %492 = call float @dx.op.binary.f32(i32 36, float %402, float %491)  ; FMin(a,b)
  %493 = fmul fast float %489, %492
  br label %494

; <label>:494                                     ; preds = %486, %481, %479, %475, %452, %403, %322
  %495 = phi float [ %398, %322 ], [ %450, %403 ], [ %464, %452 ], [ %493, %486 ], [ %478, %475 ], [ %485, %481 ], [ %473, %479 ]
  %496 = phi float [ %393, %322 ], [ %445, %403 ], [ %35, %452 ], [ %35, %486 ], [ %35, %475 ], [ %35, %481 ], [ %35, %479 ]
  %497 = phi float [ %394, %322 ], [ %446, %403 ], [ %36, %452 ], [ %36, %486 ], [ %36, %475 ], [ %36, %481 ], [ %36, %479 ]
  %498 = phi float [ %395, %322 ], [ %447, %403 ], [ %37, %452 ], [ %37, %486 ], [ %37, %475 ], [ %37, %481 ], [ %37, %479 ]
  %499 = phi float [ %396, %322 ], [ %448, %403 ], [ 1.000000e+00, %452 ], [ 1.000000e+00, %486 ], [ 1.000000e+00, %475 ], [ 1.000000e+00, %481 ], [ 1.000000e+00, %479 ]
  %500 = call float @dx.op.unary.f32(i32 7, float %495)  ; Saturate(value)
  %501 = fmul fast float %499, %212
  %502 = fmul fast float %501, %500
  br label %503

; <label>:503                                     ; preds = %494, %251
  %504 = phi float [ %496, %494 ], [ %35, %251 ]
  %505 = phi float [ %497, %494 ], [ %36, %251 ]
  %506 = phi float [ %498, %494 ], [ %37, %251 ]
  %507 = phi float [ %502, %494 ], [ %212, %251 ]
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 2
  %510 = fptosi float %42 to i32
  %511 = sitofp i32 %510 to float
  %512 = fadd fast float %509, %511
  %513 = fmul fast float %512, 0x3FE3C6EF40000000
  %514 = frem fast float %47, 2.560000e+02
  %515 = frem fast float %48, 2.560000e+02
  %516 = fptoui float %514 to i32
  %517 = fptoui float %515 to i32
  %518 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %516, i32 %517, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = fadd fast float %519, %513
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = and i32 %125, 1
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %580, label %524, !dx.controlflow.hints !64

; <label>:524                                     ; preds = %503
  %525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 2
  %527 = extractvalue %dx.types.ResRet.f32 %525, 3
  %528 = add i32 %122, 16
  %529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = extractvalue %dx.types.ResRet.f32 %529, 2
  %533 = add i32 %122, 32
  %534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = extractvalue %dx.types.ResRet.f32 %534, 1
  %537 = extractvalue %dx.types.ResRet.f32 %534, 2
  %538 = and i32 %125, 2
  %539 = icmp eq i32 %538, 0
  %540 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %541 = call float @dx.op.unary.f32(i32 25, float %540)  ; Rsqrt(value)
  %542 = fmul fast float %541, %30
  %543 = fmul fast float %541, %31
  %544 = fmul fast float %541, %32
  %545 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %546 = call float @dx.op.unary.f32(i32 25, float %545)  ; Rsqrt(value)
  %547 = fmul fast float %546, %82
  %548 = fmul fast float %546, %83
  %549 = fmul fast float %546, %84
  %550 = call float @dx.op.dot3.f32(i32 55, float %547, float %548, float %549, float %542, float %543, float %544)  ; Dot3(ax,ay,az,bx,by,bz)
  %551 = fmul fast float %550, %550
  %552 = fmul fast float %551, %526
  %553 = fadd fast float %552, %527
  %554 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  br i1 %539, label %555, label %565, !dx.controlflow.hints !65

; <label>:555                                     ; preds = %524
  %556 = extractvalue %dx.types.ResRet.f32 %525, 1
  %557 = extractvalue %dx.types.ResRet.f32 %525, 0
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %560 = fmul fast float %559, %545
  %561 = fsub fast float %557, %560
  %562 = fmul fast float %561, %556
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %564 = fmul fast float %563, %554
  br label %565

; <label>:565                                     ; preds = %555, %524
  %566 = phi float [ %564, %555 ], [ %554, %524 ]
  %567 = fsub fast float %530, %535
  %568 = fsub fast float %531, %536
  %569 = fsub fast float %532, %537
  %570 = fmul fast float %566, %567
  %571 = fmul fast float %566, %568
  %572 = fmul fast float %566, %569
  %573 = fadd fast float %570, %535
  %574 = fadd fast float %571, %536
  %575 = fadd fast float %572, %537
  %576 = fmul fast float %573, %504
  %577 = fmul fast float %574, %505
  %578 = fmul fast float %575, %506
  %579 = fmul fast float %566, %507
  br label %580

; <label>:580                                     ; preds = %565, %503
  %581 = phi float [ %576, %565 ], [ %504, %503 ]
  %582 = phi float [ %577, %565 ], [ %505, %503 ]
  %583 = phi float [ %578, %565 ], [ %506, %503 ]
  %584 = phi float [ %579, %565 ], [ %507, %503 ]
  %585 = add i32 %23, 104
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = add i32 %587, 0
  %589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %588, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %590 = add i32 %23, 24
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %589, %dx.types.Handle %43, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = extractvalue %dx.types.ResRet.f32 %593, 2
  %597 = extractvalue %dx.types.ResRet.f32 %593, 3
  %598 = and i32 %592, 255
  %599 = uitofp i32 %598 to float
  %600 = lshr i32 %592, 8
  %601 = and i32 %600, 255
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %597, %599
  %604 = fadd fast float %603, %602
  %605 = fmul fast float %604, 0x3F70101000000000
  %606 = add i32 %23, 56
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = and i32 %608, 255
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = lshr i32 %608, 8
  %613 = and i32 %612, 255
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = lshr i32 %608, 16
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 1
  %626 = fadd fast float %605, 0xBFB99999A0000000
  %627 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %628 = fmul fast float %627, 0x3FF1C71C80000000
  %629 = fsub fast float 1.000000e+00, %628
  %630 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %631 = fmul fast float %594, %581
  %632 = fmul fast float %611, %611
  %633 = fmul fast float %632, %631
  %634 = fmul fast float %633, %630
  %635 = fmul fast float %595, %582
  %636 = fmul fast float %615, %615
  %637 = fmul fast float %636, %635
  %638 = fmul fast float %637, %630
  %639 = fmul fast float %596, %583
  %640 = fmul fast float %619, %619
  %641 = fmul fast float %640, %639
  %642 = fmul fast float %641, %630
  %643 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %644 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  %645 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %646 = call float @dx.op.dot3.f32(i32 55, float %643, float %644, float %645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %647 = add i32 %23, 32
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = lshr i32 %649, 8
  %653 = and i32 %652, 255
  %654 = uitofp i32 %653 to float
  %655 = fmul fast float %654, %646
  %656 = fadd fast float %655, %651
  %657 = fmul fast float %656, 0x3F70101020000000
  %658 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %659 = and i32 %125, 8192
  %660 = icmp eq i32 %659, 0
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 0
  br i1 %660, label %669, label %663, !dx.controlflow.hints !66

; <label>:663                                     ; preds = %580
  %664 = add i32 %122, 176
  %665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = fcmp fast oge float %666, 0.000000e+00
  %668 = select i1 %667, float %666, float %662
  br label %669

; <label>:669                                     ; preds = %663, %580
  %670 = phi float [ %668, %663 ], [ %662, %580 ]
  %671 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %215, i32 %216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = lshr i32 %672, 18
  %674 = uitofp i32 %673 to float
  %675 = fmul fast float %674, 0x3F4C00EBA0000000
  %676 = call float @dx.op.unary.f32(i32 21, float %675)  ; Exp(value)
  %677 = fadd fast float %676, -1.000000e+00
  %678 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %679 = extractvalue %dx.types.Dimensions %678, 0
  %680 = sitofp i32 %679 to float
  %681 = extractvalue %dx.types.Dimensions %678, 1
  %682 = sitofp i32 %681 to float
  %683 = fcmp fast oge float %213, %680
  %684 = fcmp fast oge float %214, %682
  %685 = or i1 %683, %684
  %686 = select i1 %685, float 0x4197782600000000, float %677
  %687 = fsub fast float 1.000000e+00, %584
  %688 = call float @dx.op.dot3.f32(i32 55, float %687, float %687, float %687, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %689 = fsub fast float 1.000000e+00, %688
  %690 = fmul fast float %670, %658
  %691 = fsub fast float 1.000000e+00, %658
  %692 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 3
  %695 = fmul fast float %694, %692
  %696 = fadd fast float %695, %690
  %697 = and i32 %125, 2097152
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %703, label %699, !dx.controlflow.hints !67

; <label>:699                                     ; preds = %669
  %700 = add i32 %122, 192
  %701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %700, i32 undef)  ; BufferLoad(srv,index,wot)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  br label %706

; <label>:703                                     ; preds = %669
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 3
  br label %706

; <label>:706                                     ; preds = %703, %699
  %707 = phi float [ %702, %699 ], [ %705, %703 ]
  %708 = fmul fast float %621, %584
  %709 = fmul fast float %708, %625
  %710 = fmul fast float %709, %643
  %711 = fmul fast float %622, %584
  %712 = fmul fast float %711, %625
  %713 = fmul fast float %712, %644
  %714 = fmul fast float %623, %584
  %715 = fmul fast float %714, %625
  %716 = fmul fast float %715, %645
  %717 = icmp eq i32 %121, 3
  %718 = fcmp fast ogt float %42, %686
  %719 = and i1 %239, %718
  %720 = or i1 %717, %719
  %721 = icmp eq i32 %121, 2
  %722 = fcmp fast ole float %42, %686
  %723 = and i1 %721, %722
  %724 = or i1 %723, %720
  br i1 %719, label %725, label %831

; <label>:725                                     ; preds = %706
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 2
  %728 = extractvalue %dx.types.CBufRet.f32 %726, 3
  %729 = fmul fast float %727, %47
  %730 = fmul fast float %728, %48
  %731 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %732 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  %733 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %731, float %732, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %734 = extractvalue %dx.types.ResRet.f32 %733, 0
  %735 = extractvalue %dx.types.ResRet.f32 %733, 1
  %736 = extractvalue %dx.types.ResRet.f32 %733, 2
  %737 = extractvalue %dx.types.ResRet.f32 %733, 3
  %738 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %731, float %732, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = extractvalue %dx.types.ResRet.f32 %738, 3
  %743 = call float @dx.op.binary.f32(i32 35, float %735, float %736)  ; FMax(a,b)
  %744 = call float @dx.op.binary.f32(i32 35, float %734, float %743)  ; FMax(a,b)
  %745 = call float @dx.op.binary.f32(i32 35, float %744, float %737)  ; FMax(a,b)
  %746 = call float @dx.op.binary.f32(i32 36, float %740, float %741)  ; FMin(a,b)
  %747 = call float @dx.op.binary.f32(i32 36, float %739, float %746)  ; FMin(a,b)
  %748 = call float @dx.op.binary.f32(i32 36, float %747, float %742)  ; FMin(a,b)
  %749 = fmul fast float %745, 2.550000e+02
  %750 = fadd fast float %749, 0x3F70101020000000
  %751 = fptoui float %750 to i32
  %752 = fmul fast float %748, 2.550000e+02
  %753 = fadd fast float %752, 0x3F70101020000000
  %754 = fptoui float %753 to i32
  %755 = icmp ult i32 %751, %754
  br i1 %755, label %756, label %807

; <label>:756                                     ; preds = %725
  %757 = fcmp fast ogt float %41, 9.843750e-01
  %758 = fadd fast float %42, -4.000000e+00
  %759 = select i1 %757, float -4.000000e+00, float %758
  %760 = call float @dx.op.binary.f32(i32 35, float %759, float 0.000000e+00)  ; FMax(a,b)
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 0
  %763 = fadd fast float %762, %760
  %764 = extractvalue %dx.types.CBufRet.f32 %761, 2
  %765 = fmul fast float %763, %764
  %766 = call float @dx.op.unary.f32(i32 23, float %765)  ; Log(value)
  %767 = extractvalue %dx.types.CBufRet.f32 %761, 3
  %768 = fmul fast float %767, %766
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %771 = fmul fast float %768, %770
  %772 = call float @dx.op.unary.f32(i32 7, float %771)  ; Saturate(value)
  %773 = uitofp i32 %751 to float
  %774 = uitofp i32 %754 to float
  %775 = fadd fast float %773, 5.000000e-01
  %776 = fadd fast float %774, 5.000000e-01
  %777 = fmul fast float %770, %775
  %778 = fmul fast float %770, %776
  %779 = fadd fast float %777, 0x3F0FFB4800000000
  %780 = fadd fast float %778, 0xBF0FFB4800000000
  %781 = call float @dx.op.binary.f32(i32 35, float %772, float %779)  ; FMax(a,b)
  %782 = call float @dx.op.binary.f32(i32 36, float %781, float %780)  ; FMin(a,b)
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 1
  %785 = extractvalue %dx.types.CBufRet.f32 %783, 2
  %786 = extractvalue %dx.types.CBufRet.f32 %783, 0
  %787 = fmul fast float %784, %782
  %788 = fadd fast float %786, %787
  %789 = fadd fast float %786, %785
  %790 = fsub fast float %784, %785
  %791 = fadd fast float %790, %786
  %792 = call float @dx.op.binary.f32(i32 35, float %788, float %789)  ; FMax(a,b)
  %793 = call float @dx.op.binary.f32(i32 36, float %792, float %791)  ; FMin(a,b)
  %794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %731, float %732, float %793, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %795 = extractvalue %dx.types.ResRet.f32 %794, 0
  %796 = extractvalue %dx.types.ResRet.f32 %794, 1
  %797 = extractvalue %dx.types.ResRet.f32 %794, 2
  %798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %731, float %732, float %793, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = extractvalue %dx.types.ResRet.f32 %798, 1
  %801 = extractvalue %dx.types.ResRet.f32 %798, 2
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 1
  %804 = fmul fast float %803, %799
  %805 = fmul fast float %803, %800
  %806 = fmul fast float %803, %801
  br label %807

; <label>:807                                     ; preds = %756, %725
  %808 = phi float [ %795, %756 ], [ 1.000000e+00, %725 ]
  %809 = phi float [ %796, %756 ], [ 1.000000e+00, %725 ]
  %810 = phi float [ %797, %756 ], [ 1.000000e+00, %725 ]
  %811 = phi float [ %804, %756 ], [ 0.000000e+00, %725 ]
  %812 = phi float [ %805, %756 ], [ 0.000000e+00, %725 ]
  %813 = phi float [ %806, %756 ], [ 0.000000e+00, %725 ]
  %814 = fmul fast float %811, %689
  %815 = fmul fast float %812, %689
  %816 = fmul fast float %813, %689
  %817 = call float @dx.op.dot3.f32(i32 55, float %808, float %809, float %810, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %818 = call float @dx.op.dot3.f32(i32 55, float %814, float %815, float %816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = select i1 %105, float %817, float %808
  %820 = select i1 %105, float %817, float %809
  %821 = select i1 %105, float 1.000000e+00, float %810
  %822 = select i1 %105, float %818, float %814
  %823 = select i1 %105, float 0.000000e+00, float %815
  %824 = select i1 %105, float 0.000000e+00, float %816
  %825 = fmul fast float %819, %710
  %826 = fmul fast float %820, %713
  %827 = fmul fast float %821, %716
  %828 = fadd fast float %825, %822
  %829 = fadd fast float %826, %823
  %830 = fadd fast float %824, %827
  br label %831

; <label>:831                                     ; preds = %807, %706
  %832 = phi float [ %686, %807 ], [ %42, %706 ]
  %833 = phi float [ %828, %807 ], [ %710, %706 ]
  %834 = phi float [ %829, %807 ], [ %713, %706 ]
  %835 = phi float [ %830, %807 ], [ %716, %706 ]
  %836 = phi float [ %808, %807 ], [ 1.000000e+00, %706 ]
  br i1 %724, label %1132, label %837

; <label>:837                                     ; preds = %831
  %838 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %839 = extractvalue %dx.types.ResRet.f32 %838, 0
  %840 = extractvalue %dx.types.ResRet.f32 %838, 1
  %841 = extractvalue %dx.types.ResRet.f32 %838, 2
  %842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = extractvalue %dx.types.ResRet.f32 %842, 1
  %845 = extractvalue %dx.types.ResRet.f32 %842, 2
  %846 = fmul fast float %839, %689
  %847 = fmul fast float %840, %689
  %848 = fmul fast float %841, %689
  %849 = fmul fast float %843, %836
  %850 = call float @dx.op.dot3.f32(i32 55, float %843, float %844, float %845, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %851 = call float @dx.op.dot3.f32(i32 55, float %846, float %847, float %848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %852 = select i1 %105, float %850, float %843
  %853 = select i1 %105, float %850, float %844
  %854 = select i1 %105, float 1.000000e+00, float %845
  %855 = select i1 %105, float %851, float %846
  %856 = select i1 %105, float 0.000000e+00, float %847
  %857 = select i1 %105, float 0.000000e+00, float %848
  %858 = fmul fast float %852, %833
  %859 = fmul fast float %853, %834
  %860 = fmul fast float %854, %835
  %861 = fadd fast float %858, %855
  %862 = fadd fast float %859, %856
  %863 = fadd fast float %860, %857
  %864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.i32 %864, 0
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %1132, label %867, !dx.controlflow.hints !68

; <label>:867                                     ; preds = %837
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 3
  %871 = fmul fast float %869, %47
  %872 = fmul fast float %870, %48
  %873 = fmul fast float %871, 2.000000e+00
  %874 = fmul fast float %872, 2.000000e+00
  %875 = fsub fast float 1.000000e+00, %873
  %876 = fsub fast float 1.000000e+00, %874
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 0
  %879 = extractvalue %dx.types.CBufRet.f32 %877, 1
  %880 = extractvalue %dx.types.CBufRet.f32 %877, 2
  %881 = fmul fast float %875, %878
  %882 = fmul fast float %875, %879
  %883 = fmul fast float %875, %880
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 0
  %886 = extractvalue %dx.types.CBufRet.f32 %884, 1
  %887 = extractvalue %dx.types.CBufRet.f32 %884, 2
  %888 = fmul fast float %876, %885
  %889 = fmul fast float %876, %886
  %890 = fmul fast float %876, %887
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %894 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %895 = fadd fast float %888, %892
  %896 = fadd fast float %895, %881
  %897 = fadd fast float %889, %893
  %898 = fadd fast float %897, %882
  %899 = fadd fast float %890, %894
  %900 = fadd fast float %899, %883
  %901 = fmul fast float %896, %832
  %902 = fmul fast float %898, %832
  %903 = fmul fast float %900, %832
  %904 = fmul fast float %901, %901
  %905 = fmul fast float %902, %902
  %906 = fadd fast float %904, %905
  %907 = fmul fast float %903, %903
  %908 = fadd fast float %906, %907
  %909 = call float @dx.op.unary.f32(i32 24, float %908)  ; Sqrt(value)
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 0
  %912 = fsub fast float %909, %911
  %913 = extractvalue %dx.types.CBufRet.f32 %910, 2
  %914 = fmul fast float %912, %913
  %915 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %916 = fadd fast float %915, -5.000000e-01
  %917 = fmul fast float %916, 2.000000e+00
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %920 = call float @dx.op.binary.f32(i32 36, float %919, float %917)  ; FMin(a,b)
  %921 = fsub fast float -0.000000e+00, %919
  %922 = fcmp fast ogt float %920, %921
  br i1 %922, label %923, label %1132, !dx.controlflow.hints !69

; <label>:923                                     ; preds = %867
  %924 = fmul fast float %920, 5.000000e-01
  %925 = fadd fast float %924, 5.000000e-01
  %926 = call float @dx.op.unary.f32(i32 22, float %925)  ; Frc(value)
  %927 = call float @dx.op.unary.f32(i32 27, float %926)  ; Round_ni(value)
  %928 = call float @dx.op.unary.f32(i32 22, float %926)  ; Frc(value)
  %929 = fmul fast float %928, 2.000000e+00
  %930 = fadd fast float %929, -1.000000e+00
  %931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %871, float %872, float %927, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %932 = extractvalue %dx.types.ResRet.f32 %931, 0
  %933 = extractvalue %dx.types.ResRet.f32 %931, 1
  %934 = extractvalue %dx.types.ResRet.f32 %931, 2
  %935 = extractvalue %dx.types.ResRet.f32 %931, 3
  %936 = fadd fast float %932, -5.000000e-01
  %937 = fadd fast float %934, -5.000000e-01
  %938 = fmul fast float %936, 0xBFD5555560000000
  %939 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %937, float %938)  ; FMad(a,b,c)
  %940 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %933, float 0.000000e+00)  ; FMad(a,b,c)
  %941 = fadd fast float %940, %935
  %942 = fmul fast float %936, -7.500000e-01
  %943 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %937, float %942)  ; FMad(a,b,c)
  %944 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %933, float 0.000000e+00)  ; FMad(a,b,c)
  %945 = fadd fast float %944, %935
  %946 = call float @dx.op.binary.f32(i32 35, float %939, float -1.000000e+00)  ; FMax(a,b)
  %947 = call float @dx.op.binary.f32(i32 35, float %941, float -1.000000e+00)  ; FMax(a,b)
  %948 = call float @dx.op.binary.f32(i32 35, float %943, float -1.000000e+00)  ; FMax(a,b)
  %949 = call float @dx.op.binary.f32(i32 35, float %945, float -1.000000e+00)  ; FMax(a,b)
  %950 = call float @dx.op.binary.f32(i32 36, float %946, float 1.000000e+00)  ; FMin(a,b)
  %951 = call float @dx.op.binary.f32(i32 36, float %947, float 1.000000e+00)  ; FMin(a,b)
  %952 = call float @dx.op.binary.f32(i32 36, float %948, float 1.000000e+00)  ; FMin(a,b)
  %953 = call float @dx.op.binary.f32(i32 36, float %949, float 1.000000e+00)  ; FMin(a,b)
  %954 = fcmp fast olt float %950, 0x3FEFFF8020000000
  br i1 %954, label %955, label %1070, !dx.controlflow.hints !70

; <label>:955                                     ; preds = %923
  %956 = extractvalue %dx.types.CBufRet.f32 %918, 3
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %960 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %961 = extractvalue %dx.types.CBufRet.f32 %957, 3
  %962 = fsub fast float %958, %950
  %963 = fsub fast float %959, %951
  %964 = fsub fast float %960, %952
  %965 = fsub fast float %961, %953
  %966 = fmul fast float %962, %956
  %967 = fmul fast float %963, %956
  %968 = fmul fast float %964, %956
  %969 = fmul fast float %965, %956
  %970 = fadd fast float %966, %950
  %971 = fadd fast float %967, %951
  %972 = fsub fast float -0.000000e+00, %971
  %973 = fadd fast float %968, %952
  %974 = fadd fast float %969, %953
  %975 = fmul fast float %970, %970
  %976 = fsub fast float %971, %975
  %977 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %976)  ; FMax(a,b)
  %978 = fdiv fast float 1.000000e+00, %977
  %979 = fmul fast float %971, %970
  %980 = fsub fast float %973, %979
  %981 = fsub fast float %930, %970
  %982 = fmul fast float %930, %930
  %983 = fsub fast float %982, %971
  %984 = fmul fast float %981, %978
  %985 = fmul fast float %984, %980
  %986 = fsub fast float %983, %985
  %987 = fmul fast float %971, %971
  %988 = fsub fast float %974, %987
  %989 = fmul fast float %980, %980
  %990 = fmul fast float %989, %978
  %991 = fsub fast float %988, %990
  %992 = fdiv fast float %986, %991
  %993 = fmul fast float %980, %992
  %994 = fsub fast float %981, %993
  %995 = fmul fast float %994, %978
  %996 = fmul fast float %995, %970
  %997 = fsub fast float 1.000000e+00, %996
  %998 = fmul fast float %971, %992
  %999 = fsub fast float %997, %998
  %1000 = fmul fast float %995, %995
  %1001 = fmul fast float %992, 4.000000e+00
  %1002 = fmul fast float %1001, %999
  %1003 = fsub fast float %1000, %1002
  %1004 = call float @dx.op.unary.f32(i32 24, float %1003)  ; Sqrt(value)
  %1005 = fcmp fast oge float %995, 0.000000e+00
  %1006 = fsub fast float -0.000000e+00, %1004
  %1007 = select i1 %1005, float %1006, float %1004
  %1008 = fsub fast float %1007, %995
  %1009 = fdiv fast float %1008, %992
  %1010 = fdiv fast float %999, %1008
  %1011 = fmul fast float %1009, 5.000000e-01
  %1012 = fmul fast float %1010, 2.000000e+00
  %1013 = select i1 %1005, float %1011, float %1012
  %1014 = select i1 %1005, float %1012, float %1011
  %1015 = call float @dx.op.binary.f32(i32 35, float %1013, float %1014)  ; FMax(a,b)
  %1016 = call float @dx.op.binary.f32(i32 36, float %1013, float %1014)  ; FMin(a,b)
  %1017 = fcmp fast ogt float %930, %1016
  br i1 %1017, label %1018, label %1028

; <label>:1018                                    ; preds = %955
  %1019 = fsub fast float %930, %1016
  %1020 = fsub fast float %1015, %1016
  %1021 = fmul fast float %1019, %1020
  %1022 = fmul fast float %1015, %930
  %1023 = fadd fast float %1015, %930
  %1024 = fmul fast float %1023, %970
  %1025 = fadd fast float %1022, %971
  %1026 = fsub fast float %1025, %1024
  %1027 = fdiv fast float %1026, %1021
  br label %1028

; <label>:1028                                    ; preds = %1018, %955
  %1029 = phi float [ %1027, %1018 ], [ 0.000000e+00, %955 ]
  %1030 = fcmp fast ogt float %930, %1015
  %1031 = fsub fast float %930, %1015
  br i1 %1030, label %1032, label %1042

; <label>:1032                                    ; preds = %1028
  %1033 = fsub fast float %1015, %1016
  %1034 = fmul fast float %1033, %1031
  %1035 = fmul fast float %1016, %930
  %1036 = fadd fast float %1016, %930
  %1037 = fmul fast float %1036, %970
  %1038 = fsub fast float %972, %1035
  %1039 = fadd fast float %1038, %1037
  %1040 = fdiv fast float %1039, %1034
  %1041 = fadd fast float %1040, %1029
  br label %1042

; <label>:1042                                    ; preds = %1032, %1028
  %1043 = phi float [ %1041, %1032 ], [ %1029, %1028 ]
  %1044 = fsub fast float %930, %1016
  %1045 = fmul fast float %1044, %1031
  %1046 = fmul fast float %1016, %1015
  %1047 = fadd fast float %1016, %1015
  %1048 = fmul fast float %1047, %970
  %1049 = fadd fast float %1046, %971
  %1050 = fsub fast float %1049, %1048
  %1051 = fdiv fast float %1050, %1045
  %1052 = call float @dx.op.unary.f32(i32 7, float %1043)  ; Saturate(value)
  %1053 = fcmp fast oeq float %707, 0.000000e+00
  %1054 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %1055 = fcmp fast oeq float %1054, 0.000000e+00
  %1056 = or i1 %1053, %1055
  %1057 = fmul fast float %1054, 2.000000e+00
  %1058 = fadd fast float %919, %920
  %1059 = fdiv fast float %1058, %1057
  %1060 = call float @dx.op.unary.f32(i32 7, float %1059)  ; Saturate(value)
  %1061 = fmul fast float %1060, 2.000000e+00
  %1062 = fsub fast float 3.000000e+00, %1061
  %1063 = fmul fast float %1060, %1060
  %1064 = fmul fast float %1063, %1062
  %1065 = select i1 %1056, float 1.000000e+00, float %1064
  %1066 = fmul fast float %1051, %707
  %1067 = fadd fast float %1052, %1066
  %1068 = call float @dx.op.unary.f32(i32 7, float %1067)  ; Saturate(value)
  %1069 = fmul fast float %1065, %1068
  br label %1070

; <label>:1070                                    ; preds = %1042, %923
  %1071 = phi float [ %1069, %1042 ], [ 0.000000e+00, %923 ]
  %1072 = fsub fast float 1.000000e+00, %1071
  %1073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %871, float %872, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.i32 %1075, 2
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1083, label %1078

; <label>:1078                                    ; preds = %1070
  %1079 = call float @dx.op.unary.f32(i32 7, float %1071)  ; Saturate(value)
  %1080 = fadd fast float %1074, -1.000000e+00
  %1081 = fmul fast float %1079, %1080
  %1082 = fadd fast float %1081, 1.000000e+00
  br label %1083

; <label>:1083                                    ; preds = %1078, %1070
  %1084 = phi float [ %1082, %1078 ], [ %1072, %1070 ]
  %1085 = call float @dx.op.binary.f32(i32 35, float %1074, float %1084)  ; FMax(a,b)
  %1086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.i32 %1086, 2
  %1088 = and i32 %1087, 1
  %1089 = icmp eq i32 %1088, 0
  %1090 = fcmp fast une float %1085, 1.000000e+00
  %1091 = and i1 %1090, %1089
  br i1 %1091, label %1092, label %1111

; <label>:1092                                    ; preds = %1083
  %1093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %871, float %872, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.ResRet.f32 %1093, 2
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 1
  %1099 = fmul fast float %1098, %1094
  %1100 = fmul fast float %1098, %1095
  %1101 = fmul fast float %1098, %1096
  %1102 = fcmp fast ogt float %1074, 0x3FEFFF2E40000000
  %1103 = fsub fast float 1.000000e+00, %1085
  %1104 = fsub fast float 1.000000e+00, %1074
  %1105 = fdiv fast float %1103, %1104
  %1106 = call float @dx.op.unary.f32(i32 7, float %1105)  ; Saturate(value)
  %1107 = select i1 %1102, float 0.000000e+00, float %1106
  %1108 = fmul fast float %1099, %1107
  %1109 = fmul fast float %1100, %1107
  %1110 = fmul fast float %1101, %1107
  br label %1111

; <label>:1111                                    ; preds = %1092, %1083
  %1112 = phi float [ 0.000000e+00, %1083 ], [ %1108, %1092 ]
  %1113 = phi float [ 0.000000e+00, %1083 ], [ %1109, %1092 ]
  %1114 = phi float [ 0.000000e+00, %1083 ], [ %1110, %1092 ]
  %1115 = fmul fast float %1112, %689
  %1116 = fmul fast float %1113, %689
  %1117 = fmul fast float %1114, %689
  %1118 = fmul fast float %1085, %849
  %1119 = call float @dx.op.dot3.f32(i32 55, float %1085, float %1085, float %1085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1120 = call float @dx.op.dot3.f32(i32 55, float %1115, float %1116, float %1117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1121 = select i1 %105, float %1119, float %1085
  %1122 = select i1 %105, float 1.000000e+00, float %1085
  %1123 = select i1 %105, float %1120, float %1115
  %1124 = select i1 %105, float 0.000000e+00, float %1116
  %1125 = select i1 %105, float 0.000000e+00, float %1117
  %1126 = fmul fast float %1121, %861
  %1127 = fmul fast float %1121, %862
  %1128 = fmul fast float %1122, %863
  %1129 = fadd fast float %1126, %1123
  %1130 = fadd fast float %1127, %1124
  %1131 = fadd fast float %1125, %1128
  br label %1132

; <label>:1132                                    ; preds = %1111, %867, %837, %831
  %1133 = phi float [ %833, %831 ], [ %861, %837 ], [ %1129, %1111 ], [ %861, %867 ]
  %1134 = phi float [ %834, %831 ], [ %862, %837 ], [ %1130, %1111 ], [ %862, %867 ]
  %1135 = phi float [ %835, %831 ], [ %863, %837 ], [ %1131, %1111 ], [ %863, %867 ]
  %1136 = phi float [ %836, %831 ], [ %849, %837 ], [ %1118, %1111 ], [ %849, %867 ]
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 2
  %1139 = extractvalue %dx.types.CBufRet.f32 %1137, 3
  %1140 = fmul fast float %1138, %47
  %1141 = fmul fast float %1139, %48
  %1142 = call float @dx.op.unary.f32(i32 7, float %1140)  ; Saturate(value)
  %1143 = call float @dx.op.unary.f32(i32 7, float %1141)  ; Saturate(value)
  %1144 = select i1 %724, i32 2, i32 0
  %1145 = or i32 %1144, 1
  %1146 = uitofp i32 %1145 to float
  %1147 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1142, float %1143, float %1146, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1148 = extractvalue %dx.types.ResRet.f32 %1147, 0
  %1149 = extractvalue %dx.types.ResRet.f32 %1147, 1
  %1150 = extractvalue %dx.types.ResRet.f32 %1147, 2
  %1151 = extractvalue %dx.types.ResRet.f32 %1147, 3
  %1152 = add nuw nsw i32 %1144, 2
  %1153 = uitofp i32 %1152 to float
  %1154 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1142, float %1143, float %1153, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  %1156 = extractvalue %dx.types.ResRet.f32 %1154, 1
  %1157 = extractvalue %dx.types.ResRet.f32 %1154, 2
  %1158 = extractvalue %dx.types.ResRet.f32 %1154, 3
  %1159 = call float @dx.op.binary.f32(i32 35, float %1149, float %1150)  ; FMax(a,b)
  %1160 = call float @dx.op.binary.f32(i32 35, float %1148, float %1159)  ; FMax(a,b)
  %1161 = call float @dx.op.binary.f32(i32 35, float %1160, float %1151)  ; FMax(a,b)
  %1162 = call float @dx.op.binary.f32(i32 36, float %1156, float %1157)  ; FMin(a,b)
  %1163 = call float @dx.op.binary.f32(i32 36, float %1155, float %1162)  ; FMin(a,b)
  %1164 = call float @dx.op.binary.f32(i32 36, float %1163, float %1158)  ; FMin(a,b)
  %1165 = fmul fast float %1161, 2.550000e+02
  %1166 = fadd fast float %1165, 0x3F70101020000000
  %1167 = fptoui float %1166 to i32
  %1168 = fmul fast float %1164, 2.550000e+02
  %1169 = fadd fast float %1168, 0x3F70101020000000
  %1170 = fptoui float %1169 to i32
  %1171 = icmp ult i32 %1167, %1170
  br i1 %1171, label %1172, label %1224

; <label>:1172                                    ; preds = %1132
  %1173 = fcmp fast ogt float %41, 9.843750e-01
  %1174 = fadd fast float %832, -4.000000e+00
  %1175 = select i1 %1173, float -4.000000e+00, float %1174
  %1176 = call float @dx.op.binary.f32(i32 35, float %1175, float 0.000000e+00)  ; FMax(a,b)
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 0
  %1179 = fadd fast float %1178, %1176
  %1180 = extractvalue %dx.types.CBufRet.f32 %1177, 2
  %1181 = fmul fast float %1179, %1180
  %1182 = call float @dx.op.unary.f32(i32 23, float %1181)  ; Log(value)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1177, 3
  %1184 = fmul fast float %1183, %1182
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 2
  %1187 = fmul fast float %1184, %1186
  %1188 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1189 = uitofp i32 %1167 to float
  %1190 = uitofp i32 %1170 to float
  %1191 = fadd fast float %1189, 5.000000e-01
  %1192 = fadd fast float %1190, 5.000000e-01
  %1193 = fmul fast float %1186, %1191
  %1194 = fmul fast float %1186, %1192
  %1195 = fadd fast float %1193, 0x3F0FFB4800000000
  %1196 = fadd fast float %1194, 0xBF0FFB4800000000
  %1197 = call float @dx.op.binary.f32(i32 35, float %1188, float %1195)  ; FMax(a,b)
  %1198 = call float @dx.op.binary.f32(i32 36, float %1197, float %1196)  ; FMin(a,b)
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1201 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1202 = extractvalue %dx.types.CBufRet.f32 %1199, 0
  %1203 = select i1 %724, float %1202, float 0.000000e+00
  %1204 = fmul fast float %1200, %1198
  %1205 = fadd fast float %1203, %1204
  %1206 = fadd fast float %1203, %1201
  %1207 = fsub fast float %1200, %1201
  %1208 = fadd fast float %1207, %1203
  %1209 = call float @dx.op.binary.f32(i32 35, float %1205, float %1206)  ; FMax(a,b)
  %1210 = call float @dx.op.binary.f32(i32 36, float %1209, float %1208)  ; FMin(a,b)
  %1211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1142, float %1143, float %1210, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.ResRet.f32 %1211, 1
  %1214 = extractvalue %dx.types.ResRet.f32 %1211, 2
  %1215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1142, float %1143, float %1210, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.ResRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.ResRet.f32 %1215, 2
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 1
  %1221 = fmul fast float %1220, %1216
  %1222 = fmul fast float %1220, %1217
  %1223 = fmul fast float %1220, %1218
  br label %1224

; <label>:1224                                    ; preds = %1172, %1132
  %1225 = phi float [ %1212, %1172 ], [ 1.000000e+00, %1132 ]
  %1226 = phi float [ %1213, %1172 ], [ 1.000000e+00, %1132 ]
  %1227 = phi float [ %1214, %1172 ], [ 1.000000e+00, %1132 ]
  %1228 = phi float [ %1221, %1172 ], [ 0.000000e+00, %1132 ]
  %1229 = phi float [ %1222, %1172 ], [ 0.000000e+00, %1132 ]
  %1230 = phi float [ %1223, %1172 ], [ 0.000000e+00, %1132 ]
  %1231 = fmul fast float %1228, %689
  %1232 = fmul fast float %1229, %689
  %1233 = fmul fast float %1230, %689
  %1234 = fmul fast float %1225, %1136
  %1235 = call float @dx.op.dot3.f32(i32 55, float %1225, float %1226, float %1227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1236 = call float @dx.op.dot3.f32(i32 55, float %1231, float %1232, float %1233, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1237 = select i1 %105, float %1235, float %1225
  %1238 = select i1 %105, float %1235, float %1226
  %1239 = select i1 %105, float 1.000000e+00, float %1227
  %1240 = select i1 %105, float %1236, float %1231
  %1241 = select i1 %105, float 0.000000e+00, float %1232
  %1242 = select i1 %105, float 0.000000e+00, float %1233
  %1243 = fmul fast float %1237, %1133
  %1244 = fmul fast float %1238, %1134
  %1245 = fmul fast float %1239, %1135
  %1246 = fadd fast float %1243, %1240
  %1247 = fadd fast float %1244, %1241
  %1248 = fadd fast float %1242, %1245
  %1249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.i32 %1249, 3
  %1251 = and i32 %1250, 3
  %1252 = icmp ne i32 %1251, 0
  %1253 = and i32 %1250, 4
  %1254 = icmp ne i32 %1253, 0
  %1255 = and i1 %1252, %1254
  %1256 = and i1 %105, %1255
  br i1 %1256, label %1257, label %1263

; <label>:1257                                    ; preds = %1224
  %1258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1259 = extractvalue %dx.types.CBufRet.f32 %1258, 1
  %1260 = fadd fast float %1234, -1.000000e+00
  %1261 = fmul fast float %1259, %1260
  %1262 = fadd fast float %1261, 1.000000e+00
  br label %1263

; <label>:1263                                    ; preds = %1257, %1224
  %1264 = phi float [ %1262, %1257 ], [ %1234, %1224 ]
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  br i1 %105, label %1267, label %1288

; <label>:1267                                    ; preds = %1263
  %1268 = fadd fast float %1246, %1247
  %1269 = fmul fast float %1266, %1268
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 3
  %1272 = extractvalue %dx.types.CBufRet.f32 %693, 1
  %1273 = fsub fast float %696, %1272
  %1274 = extractvalue %dx.types.CBufRet.f32 %693, 2
  %1275 = fmul fast float %1273, %1274
  %1276 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  %1277 = fsub fast float %1276, %1271
  %1278 = fmul fast float %1277, %1264
  %1279 = fadd fast float %1278, %1271
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = fsub fast float %1279, %1281
  %1283 = fmul fast float %1282, 1.000000e+01
  %1284 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  %1285 = fmul fast float %1284, %689
  %1286 = fsub fast float %689, %1285
  %1287 = fmul fast float %1286, %1279
  br label %1297

; <label>:1288                                    ; preds = %1263
  %1289 = fmul fast float %1266, %1246
  %1290 = fmul fast float %1266, %1247
  %1291 = fmul fast float %1266, %1248
  %1292 = call float @dx.op.binary.f32(i32 35, float %1290, float %1291)  ; FMax(a,b)
  %1293 = call float @dx.op.binary.f32(i32 35, float %1289, float %1292)  ; FMax(a,b)
  %1294 = call float @dx.op.binary.f32(i32 35, float %1293, float %689)  ; FMax(a,b)
  %1295 = fcmp fast ugt float %1294, 0x3F10000000000000
  br i1 %1295, label %1297, label %1296

; <label>:1296                                    ; preds = %1288
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1297

; <label>:1297                                    ; preds = %1296, %1288, %1267
  %1298 = phi float [ %1269, %1267 ], [ %1289, %1296 ], [ %1289, %1288 ]
  %1299 = phi float [ %1287, %1267 ], [ %1290, %1296 ], [ %1290, %1288 ]
  %1300 = phi float [ %1286, %1267 ], [ %1291, %1296 ], [ %1291, %1288 ]
  %1301 = phi float [ %1286, %1267 ], [ %689, %1296 ], [ %689, %1288 ]
  %1302 = fadd fast float %521, 0x3FE3C6EF40000000
  %1303 = call float @dx.op.unary.f32(i32 22, float %1302)  ; Frc(value)
  %1304 = call float @dx.op.unary.f32(i32 23, float %1298)  ; Log(value)
  %1305 = fadd fast float %1304, -7.000000e+00
  %1306 = call float @dx.op.unary.f32(i32 21, float %1305)  ; Exp(value)
  %1307 = fmul fast float %1303, 2.000000e+00
  %1308 = fadd fast float %1307, -1.000000e+00
  %1309 = fmul fast float %1306, %1308
  %1310 = fcmp fast ogt float %1298, 0.000000e+00
  %1311 = select i1 %1310, float %1309, float 0.000000e+00
  %1312 = fadd fast float %1311, %1298
  %1313 = fadd fast float %521, 0x3FF3C6EF40000000
  %1314 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1315 = call float @dx.op.unary.f32(i32 23, float %1299)  ; Log(value)
  %1316 = fadd fast float %1315, -7.000000e+00
  %1317 = call float @dx.op.unary.f32(i32 21, float %1316)  ; Exp(value)
  %1318 = fmul fast float %1314, 2.000000e+00
  %1319 = fadd fast float %1318, -1.000000e+00
  %1320 = fmul fast float %1317, %1319
  %1321 = fcmp fast ogt float %1299, 0.000000e+00
  %1322 = select i1 %1321, float %1320, float 0.000000e+00
  %1323 = fadd fast float %1322, %1299
  %1324 = fadd fast float %521, 0x3FFDAA66E0000000
  %1325 = call float @dx.op.unary.f32(i32 22, float %1324)  ; Frc(value)
  %1326 = call float @dx.op.unary.f32(i32 23, float %1300)  ; Log(value)
  %1327 = fadd fast float %1326, -6.000000e+00
  %1328 = call float @dx.op.unary.f32(i32 21, float %1327)  ; Exp(value)
  %1329 = fmul fast float %1325, 2.000000e+00
  %1330 = fadd fast float %1329, -1.000000e+00
  %1331 = fmul fast float %1328, %1330
  %1332 = fcmp fast ogt float %1300, 0.000000e+00
  %1333 = select i1 %1332, float %1331, float 0.000000e+00
  %1334 = fadd fast float %1333, %1300
  %1335 = select i1 %105, float %1299, float %1323
  %1336 = select i1 %105, float %1300, float %1334
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1337 = call float @dx.op.binary.f32(i32 36, float %1312, float 3.225500e+04)  ; FMin(a,b)
  %1338 = call float @dx.op.binary.f32(i32 36, float %1335, float 3.225500e+04)  ; FMin(a,b)
  %1339 = call float @dx.op.binary.f32(i32 36, float %1336, float 3.225500e+04)  ; FMin(a,b)
  %1340 = call float @dx.op.binary.f32(i32 36, float %1301, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1337)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1338)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1339)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1340)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1301)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1301)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1301)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1301)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

