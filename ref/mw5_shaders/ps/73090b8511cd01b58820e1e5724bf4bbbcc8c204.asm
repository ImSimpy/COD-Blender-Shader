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
; shader hash: 11c52cbc26946b9812c91212afa25f14
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
;                                   texture     f32          3d      T9     t45,space2     1
;                                   texture     f32     2darray     T10     t47,space2     1
;                                   textureunorm_f32     2darray     T11     t85,space2     1
;                                   texture     f32          2d     T12     t83,space2     1
;                                   texture     f32     2darray     T13             t1     1
;                                   texture    byte         r/o     T14             t2     1
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
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = fmul fast float %43, %37
  %45 = fmul fast float %43, %38
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %49 = fmul fast float %44, 2.000000e+00
  %50 = fmul fast float %49, %47
  %51 = fmul fast float %45, 2.000000e+00
  %52 = fmul fast float %51, %48
  %53 = fsub fast float 1.000000e+00, %50
  %54 = fsub fast float 1.000000e+00, %52
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = fmul fast float %53, %56
  %60 = fmul fast float %53, %57
  %61 = fmul fast float %53, %58
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fmul fast float %54, %63
  %67 = fmul fast float %54, %64
  %68 = fmul fast float %54, %65
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = fadd fast float %66, %70
  %74 = fadd fast float %73, %59
  %75 = fadd fast float %67, %71
  %76 = fadd fast float %75, %60
  %77 = fadd fast float %68, %72
  %78 = fadd fast float %77, %61
  %79 = fmul fast float %74, %40
  %80 = fmul fast float %76, %40
  %81 = fmul fast float %78, %40
  %82 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %92 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %16, float %91, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = fsub fast float 1.000000e+00, %93
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = fcmp fast olt float %94, %96
  br label %101

; <label>:98                                      ; preds = %0
  %99 = icmp eq i32 %86, 0
  %100 = and i1 %85, %99
  br label %101

; <label>:101                                     ; preds = %98, %89
  %102 = phi i1 [ %97, %89 ], [ %100, %98 ]
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 3
  %106 = fmul fast float %104, %44
  %107 = fmul fast float %105, %45
  %108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.i32 %108, 0
  %110 = and i32 %109, 114688
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %111, float %106, float 0.000000e+00
  %113 = select i1 %111, float %107, float 0.000000e+00
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %17, float %112, float %113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fmul fast float %115, 2.550000e+02
  %117 = fptoui float %116 to i32
  %118 = select i1 %111, i32 %117, i32 0
  %119 = mul i32 %20, 208
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
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %159 = phi float [ %31, %131 ], [ %138, %144 ], [ %157, %152 ], [ %138, %150 ]
  %160 = phi float [ %32, %131 ], [ %149, %144 ], [ %139, %152 ], [ %139, %150 ]
  %161 = and i32 %122, 16
  %162 = icmp ne i32 %161, 0
  %163 = select i1 %162, float 1.000000e+00, float %36
  %164 = icmp eq i32 %161, 0
  br i1 %164, label %184, label %165, !dx.controlflow.hints !58

; <label>:165                                     ; preds = %158
  %166 = add i32 %119, 64
  %167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = fadd fast float %168, 1.000000e+00
  %170 = fmul fast float %169, %36
  %171 = fsub fast float %170, %168
  %172 = fsub fast float %169, %171
  %173 = call float @dx.op.unary.f32(i32 7, float %172)  ; Saturate(value)
  %174 = fsub fast float 1.000000e+00, %170
  %175 = call float @dx.op.unary.f32(i32 7, float %174)  ; Saturate(value)
  %176 = fsub fast float %173, %175
  %177 = fsub fast float %163, %175
  %178 = fdiv fast float %177, %176
  %179 = call float @dx.op.unary.f32(i32 7, float %178)  ; Saturate(value)
  %180 = fmul fast float %179, 2.000000e+00
  %181 = fsub fast float 3.000000e+00, %180
  %182 = fmul fast float %179, %179
  %183 = fmul fast float %182, %181
  br label %184

; <label>:184                                     ; preds = %165, %158
  %185 = phi float [ %183, %165 ], [ %163, %158 ]
  %186 = fcmp fast ogt float %185, 0.000000e+00
  br i1 %186, label %188, label %187

; <label>:187                                     ; preds = %184
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %188

; <label>:188                                     ; preds = %187, %184
  %189 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %190 = fmul fast float %44, 5.000000e-01
  %191 = fmul fast float %45, 5.000000e-01
  %192 = fptosi float %190 to i32
  %193 = fptosi float %191 to i32
  %194 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %192, i32 %193, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = lshr i32 %195, 18
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F4C00EBA0000000
  %199 = call float @dx.op.unary.f32(i32 21, float %198)  ; Exp(value)
  %200 = fadd fast float %199, -1.000000e+00
  %201 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %202 = extractvalue %dx.types.Dimensions %201, 0
  %203 = sitofp i32 %202 to float
  %204 = extractvalue %dx.types.Dimensions %201, 1
  %205 = sitofp i32 %204 to float
  %206 = fcmp fast oge float %190, %203
  %207 = fcmp fast oge float %191, %205
  %208 = or i1 %206, %207
  %209 = select i1 %208, float 0x4197782600000000, float %200
  %210 = fsub fast float %209, %40
  %211 = fcmp fast ogt float %210, 0.000000e+00
  %212 = and i32 %118, -2
  %213 = icmp eq i32 %212, 2
  %214 = and i1 %213, %211
  %215 = xor i1 %211, true
  %216 = icmp eq i32 %118, 1
  %217 = and i1 %216, %215
  %218 = or i1 %214, %217
  %219 = and i32 %122, 262144
  %220 = icmp ne i32 %219, 0
  %221 = and i1 %220, %218
  %222 = xor i1 %218, true
  %223 = and i32 %122, 131072
  %224 = icmp ne i32 %223, 0
  %225 = and i1 %224, %222
  %226 = or i1 %221, %225
  br i1 %226, label %227, label %228

; <label>:227                                     ; preds = %188
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %228

; <label>:228                                     ; preds = %227, %188
  %229 = and i32 %122, 32
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %480, label %231, !dx.controlflow.hints !59

; <label>:231                                     ; preds = %228
  %232 = add i32 %119, 80
  %233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = extractvalue %dx.types.ResRet.f32 %233, 1
  %236 = extractvalue %dx.types.ResRet.f32 %233, 2
  %237 = extractvalue %dx.types.ResRet.f32 %233, 3
  %238 = add i32 %119, 96
  %239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = extractvalue %dx.types.ResRet.f32 %239, 1
  %242 = extractvalue %dx.types.ResRet.f32 %239, 2
  %243 = add i32 %119, 112
  %244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = extractvalue %dx.types.ResRet.f32 %244, 1
  %247 = extractvalue %dx.types.ResRet.f32 %244, 2
  %248 = extractvalue %dx.types.ResRet.f32 %244, 3
  %249 = add i32 %119, 128
  %250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = extractvalue %dx.types.ResRet.f32 %250, 1
  %253 = extractvalue %dx.types.ResRet.f32 %250, 2
  %254 = extractvalue %dx.types.ResRet.f32 %250, 3
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 4096
  %258 = icmp ne i32 %257, 0
  %259 = fcmp fast une float %242, 0.000000e+00
  %260 = and i32 %256, 64
  %261 = icmp ne i32 %260, 0
  %262 = and i32 %256, 128
  %263 = icmp eq i32 %262, 0
  %264 = and i32 %256, 2048
  %265 = icmp eq i32 %264, 0
  %266 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %267 = extractvalue %dx.types.Dimensions %266, 0
  %268 = sitofp i32 %267 to float
  %269 = extractvalue %dx.types.Dimensions %266, 1
  %270 = sitofp i32 %269 to float
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %273 = extractvalue %dx.types.CBufRet.f32 %271, 3
  %274 = fmul fast float %272, %44
  %275 = fmul fast float %273, %45
  %276 = fmul fast float %274, %268
  %277 = fmul fast float %275, %270
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 1
  %280 = fsub fast float -0.000000e+00, %279
  %281 = fptoui float %280 to i32
  %282 = fptoui float %276 to i32
  %283 = fptoui float %277 to i32
  %284 = and i32 %281, 31
  %285 = lshr i32 %282, %284
  %286 = lshr i32 %283, %284
  %287 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %10, i32 %281, i32 %285, i32 %286, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = fcmp fast ogt float %288, -1.000000e+00
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 1
  %292 = select i1 %289, float %291, float 1.000000e+00
  %293 = fadd fast float %288, 1.000000e+00
  %294 = fmul fast float %292, %293
  %295 = call float @dx.op.unary.f32(i32 6, float %294)  ; FAbs(value)
  %296 = extractvalue %dx.types.CBufRet.f32 %290, 3
  %297 = fcmp fast oge float %295, %296
  %298 = select i1 %297, float 0x4197782600000000, float %295
  br i1 %265, label %376, label %299, !dx.controlflow.hints !60

; <label>:299                                     ; preds = %231
  %300 = fmul fast float %49, %272
  %301 = fmul fast float %51, %273
  %302 = fsub fast float 1.000000e+00, %300
  %303 = fsub fast float 1.000000e+00, %301
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %306 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %307 = extractvalue %dx.types.CBufRet.f32 %304, 2
  %308 = fmul fast float %302, %305
  %309 = fmul fast float %302, %306
  %310 = fmul fast float %302, %307
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %314 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %315 = fmul fast float %303, %312
  %316 = fmul fast float %303, %313
  %317 = fmul fast float %303, %314
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %322 = fadd fast float %315, %319
  %323 = fadd fast float %322, %308
  %324 = fadd fast float %316, %320
  %325 = fadd fast float %324, %309
  %326 = fadd fast float %317, %321
  %327 = fadd fast float %326, %310
  %328 = fmul fast float %323, %298
  %329 = fmul fast float %325, %298
  %330 = fmul fast float %327, %298
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %335 = fsub fast float %332, %22
  %336 = fadd fast float %335, %328
  %337 = fsub fast float %333, %23
  %338 = fadd fast float %337, %329
  %339 = fsub fast float %334, %24
  %340 = fadd fast float %339, %330
  %341 = fmul fast float %25, %25
  %342 = call float @dx.op.dot3.f32(i32 55, float %336, float %338, float %340, float %336, float %338, float %340)  ; Dot3(ax,ay,az,bx,by,bz)
  %343 = fsub fast float %341, %342
  %344 = fmul fast float %241, %341
  %345 = fmul fast float %240, %341
  %346 = fcmp fast olt float %343, %344
  %347 = fcmp fast ogt float %343, %345
  %348 = or i1 %346, %347
  %349 = select i1 %348, float 0.000000e+00, float %343
  %350 = fsub fast float %240, %241
  %351 = fmul fast float %350, %341
  %352 = fsub fast float %349, %344
  %353 = fdiv fast float %352, %351
  %354 = call float @dx.op.unary.f32(i32 7, float %353)  ; Saturate(value)
  %355 = fmul fast float %354, 2.000000e+00
  %356 = fsub fast float 3.000000e+00, %355
  %357 = fmul fast float %354, %354
  %358 = fmul fast float %357, %356
  %359 = fmul fast float %245, %33
  %360 = fmul fast float %246, %34
  %361 = fmul fast float %247, %35
  %362 = fsub fast float %359, %251
  %363 = fsub fast float %360, %252
  %364 = fsub fast float %361, %253
  %365 = fsub fast float %248, %254
  %366 = fmul fast float %358, %362
  %367 = fmul fast float %358, %363
  %368 = fmul fast float %358, %364
  %369 = fmul fast float %358, %365
  %370 = fadd fast float %366, %251
  %371 = fadd fast float %367, %252
  %372 = fadd fast float %368, %253
  %373 = fadd fast float %369, %254
  %374 = fmul fast float %234, %234
  %375 = fmul fast float %374, %349
  br label %471

; <label>:376                                     ; preds = %231
  %377 = and i32 %256, 256
  %378 = icmp eq i32 %377, 0
  %379 = fsub fast float %298, %40
  br i1 %378, label %428, label %380

; <label>:380                                     ; preds = %376
  %381 = fadd fast float %240, %40
  %382 = fcmp fast olt float %298, %40
  %383 = fcmp fast ogt float %298, %381
  %384 = or i1 %382, %383
  %385 = select i1 %384, float 0.000000e+00, float %379
  %386 = call float @dx.op.unary.f32(i32 83, float %298)  ; DerivCoarseX(value)
  %387 = call float @dx.op.unary.f32(i32 84, float %298)  ; DerivCoarseY(value)
  %388 = fmul fast float %386, %386
  %389 = fmul fast float %387, %387
  %390 = fadd fast float %389, %388
  %391 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %392 = extractvalue %dx.types.CBufRet.f32 %278, 2
  %393 = fmul fast float %392, %391
  %394 = call float @dx.op.unary.f32(i32 7, float %393)  ; Saturate(value)
  %395 = fmul fast float %394, %241
  %396 = fdiv fast float %379, %395
  %397 = call float @dx.op.unary.f32(i32 7, float %396)  ; Saturate(value)
  %398 = fmul fast float %397, 2.000000e+00
  %399 = fsub fast float 3.000000e+00, %398
  %400 = fmul fast float %397, %397
  %401 = fmul fast float %400, %399
  %402 = fsub fast float %298, %381
  %403 = fadd fast float %402, %395
  %404 = fdiv fast float %403, %395
  %405 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %406 = fmul fast float %405, 2.000000e+00
  %407 = fsub fast float 3.000000e+00, %406
  %408 = fmul fast float %405, %405
  %409 = fmul fast float %408, %407
  %410 = fsub fast float %401, %409
  %411 = fmul fast float %245, %33
  %412 = fmul fast float %246, %34
  %413 = fmul fast float %247, %35
  %414 = fsub fast float %411, %251
  %415 = fsub fast float %412, %252
  %416 = fsub fast float %413, %253
  %417 = fsub fast float %248, %254
  %418 = fmul fast float %410, %414
  %419 = fmul fast float %410, %415
  %420 = fmul fast float %410, %416
  %421 = fmul fast float %410, %417
  %422 = fadd fast float %418, %251
  %423 = fadd fast float %419, %252
  %424 = fadd fast float %420, %253
  %425 = fadd fast float %421, %254
  %426 = fmul fast float %385, %234
  %427 = call float @dx.op.unary.f32(i32 6, float %426)  ; FAbs(value)
  br label %471

; <label>:428                                     ; preds = %376
  br i1 %259, label %429, label %442

; <label>:429                                     ; preds = %428
  %430 = fdiv fast float 5.000000e+01, %25
  %431 = select i1 %261, float %430, float 1.000000e+00
  %432 = fmul fast float %431, %234
  %433 = fmul fast float %31, 2.000000e+00
  %434 = fmul fast float %32, 2.000000e+00
  %435 = fadd fast float %433, -1.000000e+00
  %436 = fadd fast float %434, -1.000000e+00
  %437 = call float @dx.op.dot2.f32(i32 54, float %435, float %436, float %435, float %436)  ; Dot2(ax,ay,bx,by)
  %438 = fmul fast float %242, %25
  %439 = fmul fast float %438, %437
  %440 = fsub fast float %379, %439
  %441 = fmul fast float %432, %440
  br label %471

; <label>:442                                     ; preds = %428
  br i1 %263, label %463, label %443

; <label>:443                                     ; preds = %442
  %444 = fmul fast float %25, 0x3F947AE140000000
  %445 = select i1 %261, float %444, float 1.000000e+00
  %446 = fdiv fast float 1.000000e+00, %445
  %447 = fmul fast float %445, %235
  %448 = fmul fast float %445, %236
  %449 = fmul fast float %446, %237
  %450 = call float @dx.op.unary.f32(i32 6, float %379)  ; FAbs(value)
  %451 = fcmp fast olt float %450, %447
  br i1 %451, label %452, label %456, !dx.controlflow.hints !61

; <label>:452                                     ; preds = %443
  %453 = fmul fast float %446, %234
  %454 = fmul fast float %453, %450
  %455 = call float @dx.op.unary.f32(i32 6, float %454)  ; FAbs(value)
  br label %471

; <label>:456                                     ; preds = %443
  %457 = fcmp fast ogt float %450, %448
  br i1 %457, label %458, label %471

; <label>:458                                     ; preds = %456
  %459 = fsub fast float %450, %448
  %460 = fmul fast float %449, %459
  %461 = call float @dx.op.unary.f32(i32 6, float %460)  ; FAbs(value)
  %462 = fsub fast float 1.000000e+00, %461
  br label %471

; <label>:463                                     ; preds = %442
  %464 = fdiv fast float 5.000000e+01, %25
  %465 = select i1 %261, float %464, float 1.000000e+00
  %466 = fmul fast float %465, %234
  %467 = call float @dx.op.unary.f32(i32 6, float %210)  ; FAbs(value)
  %468 = select i1 %258, float %467, float 0x47EFFFFFE0000000
  %469 = call float @dx.op.binary.f32(i32 36, float %379, float %468)  ; FMin(a,b)
  %470 = fmul fast float %466, %469
  br label %471

; <label>:471                                     ; preds = %463, %458, %456, %452, %429, %380, %299
  %472 = phi float [ %375, %299 ], [ %427, %380 ], [ %441, %429 ], [ %470, %463 ], [ %455, %452 ], [ %462, %458 ], [ %450, %456 ]
  %473 = phi float [ %370, %299 ], [ %422, %380 ], [ %33, %429 ], [ %33, %463 ], [ %33, %452 ], [ %33, %458 ], [ %33, %456 ]
  %474 = phi float [ %371, %299 ], [ %423, %380 ], [ %34, %429 ], [ %34, %463 ], [ %34, %452 ], [ %34, %458 ], [ %34, %456 ]
  %475 = phi float [ %372, %299 ], [ %424, %380 ], [ %35, %429 ], [ %35, %463 ], [ %35, %452 ], [ %35, %458 ], [ %35, %456 ]
  %476 = phi float [ %373, %299 ], [ %425, %380 ], [ 1.000000e+00, %429 ], [ 1.000000e+00, %463 ], [ 1.000000e+00, %452 ], [ 1.000000e+00, %458 ], [ 1.000000e+00, %456 ]
  %477 = call float @dx.op.unary.f32(i32 7, float %472)  ; Saturate(value)
  %478 = fmul fast float %476, %189
  %479 = fmul fast float %478, %477
  br label %480

; <label>:480                                     ; preds = %471, %228
  %481 = phi float [ %473, %471 ], [ %33, %228 ]
  %482 = phi float [ %474, %471 ], [ %34, %228 ]
  %483 = phi float [ %475, %471 ], [ %35, %228 ]
  %484 = phi float [ %479, %471 ], [ %189, %228 ]
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 2
  %487 = fptosi float %40 to i32
  %488 = sitofp i32 %487 to float
  %489 = fadd fast float %486, %488
  %490 = fmul fast float %489, 0x3FE3C6EF40000000
  %491 = frem fast float %44, 2.560000e+02
  %492 = frem fast float %45, 2.560000e+02
  %493 = fptoui float %491 to i32
  %494 = fptoui float %492 to i32
  %495 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %493, i32 %494, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = fadd fast float %496, %490
  %498 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %499 = and i32 %122, 1
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %557, label %501, !dx.controlflow.hints !62

; <label>:501                                     ; preds = %480
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 2
  %504 = extractvalue %dx.types.ResRet.f32 %502, 3
  %505 = add i32 %119, 16
  %506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = extractvalue %dx.types.ResRet.f32 %506, 2
  %510 = add i32 %119, 32
  %511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = extractvalue %dx.types.ResRet.f32 %511, 1
  %514 = extractvalue %dx.types.ResRet.f32 %511, 2
  %515 = and i32 %122, 2
  %516 = icmp eq i32 %515, 0
  %517 = call float @dx.op.dot3.f32(i32 55, float %28, float %29, float %30, float %28, float %29, float %30)  ; Dot3(ax,ay,az,bx,by,bz)
  %518 = call float @dx.op.unary.f32(i32 25, float %517)  ; Rsqrt(value)
  %519 = fmul fast float %518, %28
  %520 = fmul fast float %518, %29
  %521 = fmul fast float %518, %30
  %522 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %523 = call float @dx.op.unary.f32(i32 25, float %522)  ; Rsqrt(value)
  %524 = fmul fast float %523, %79
  %525 = fmul fast float %523, %80
  %526 = fmul fast float %523, %81
  %527 = call float @dx.op.dot3.f32(i32 55, float %524, float %525, float %526, float %519, float %520, float %521)  ; Dot3(ax,ay,az,bx,by,bz)
  %528 = fmul fast float %527, %527
  %529 = fmul fast float %528, %503
  %530 = fadd fast float %529, %504
  %531 = call float @dx.op.unary.f32(i32 7, float %530)  ; Saturate(value)
  br i1 %516, label %532, label %542, !dx.controlflow.hints !63

; <label>:532                                     ; preds = %501
  %533 = extractvalue %dx.types.ResRet.f32 %502, 1
  %534 = extractvalue %dx.types.ResRet.f32 %502, 0
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 3
  %537 = fmul fast float %536, %522
  %538 = fsub fast float %534, %537
  %539 = fmul fast float %538, %533
  %540 = call float @dx.op.unary.f32(i32 7, float %539)  ; Saturate(value)
  %541 = fmul fast float %540, %531
  br label %542

; <label>:542                                     ; preds = %532, %501
  %543 = phi float [ %541, %532 ], [ %531, %501 ]
  %544 = fsub fast float %507, %512
  %545 = fsub fast float %508, %513
  %546 = fsub fast float %509, %514
  %547 = fmul fast float %543, %544
  %548 = fmul fast float %543, %545
  %549 = fmul fast float %543, %546
  %550 = fadd fast float %547, %512
  %551 = fadd fast float %548, %513
  %552 = fadd fast float %549, %514
  %553 = fmul fast float %550, %481
  %554 = fmul fast float %551, %482
  %555 = fmul fast float %552, %483
  %556 = fmul fast float %543, %484
  br label %557

; <label>:557                                     ; preds = %542, %480
  %558 = phi float [ %553, %542 ], [ %481, %480 ]
  %559 = phi float [ %554, %542 ], [ %482, %480 ]
  %560 = phi float [ %555, %542 ], [ %483, %480 ]
  %561 = phi float [ %556, %542 ], [ %484, %480 ]
  %562 = add i32 %21, 72
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = add i32 %564, 0
  %566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %566, %dx.types.Handle %41, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  %569 = extractvalue %dx.types.ResRet.f32 %567, 1
  %570 = extractvalue %dx.types.ResRet.f32 %567, 2
  %571 = add i32 %21, 56
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 255
  %575 = uitofp i32 %574 to float
  %576 = fmul fast float %575, 0x3F70101020000000
  %577 = lshr i32 %573, 8
  %578 = and i32 %577, 255
  %579 = uitofp i32 %578 to float
  %580 = fmul fast float %579, 0x3F70101020000000
  %581 = lshr i32 %573, 16
  %582 = and i32 %581, 255
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %583, 0x3F70101020000000
  %585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = extractvalue %dx.types.ResRet.f32 %585, 1
  %588 = extractvalue %dx.types.ResRet.f32 %585, 2
  %589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %590 = extractvalue %dx.types.CBufRet.f32 %589, 1
  %591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %592 = extractvalue %dx.types.CBufRet.f32 %591, 0
  %593 = fmul fast float %568, %558
  %594 = fmul fast float %576, %576
  %595 = fmul fast float %594, %593
  %596 = fmul fast float %595, %592
  %597 = fmul fast float %569, %559
  %598 = fmul fast float %580, %580
  %599 = fmul fast float %598, %597
  %600 = fmul fast float %599, %592
  %601 = fmul fast float %570, %560
  %602 = fmul fast float %584, %584
  %603 = fmul fast float %602, %601
  %604 = fmul fast float %603, %592
  %605 = call float @dx.op.dot3.f32(i32 55, float %596, float %600, float %604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %606 = add i32 %21, 32
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = and i32 %608, 255
  %610 = uitofp i32 %609 to float
  %611 = lshr i32 %608, 8
  %612 = and i32 %611, 255
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %613, %605
  %615 = fadd fast float %614, %610
  %616 = fmul fast float %615, 0x3F70101020000000
  %617 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %618 = and i32 %122, 8192
  %619 = icmp eq i32 %618, 0
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 0
  br i1 %619, label %628, label %622, !dx.controlflow.hints !64

; <label>:622                                     ; preds = %557
  %623 = add i32 %119, 176
  %624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.f32 %624, 0
  %626 = fcmp fast oge float %625, 0.000000e+00
  %627 = select i1 %626, float %625, float %621
  br label %628

; <label>:628                                     ; preds = %622, %557
  %629 = phi float [ %627, %622 ], [ %621, %557 ]
  %630 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %7, i32 0, i32 %192, i32 %193, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = lshr i32 %631, 18
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, 0x3F4C00EBA0000000
  %635 = call float @dx.op.unary.f32(i32 21, float %634)  ; Exp(value)
  %636 = fadd fast float %635, -1.000000e+00
  %637 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %7, i32 0)  ; GetDimensions(handle,mipLevel)
  %638 = extractvalue %dx.types.Dimensions %637, 0
  %639 = sitofp i32 %638 to float
  %640 = extractvalue %dx.types.Dimensions %637, 1
  %641 = sitofp i32 %640 to float
  %642 = fcmp fast oge float %190, %639
  %643 = fcmp fast oge float %191, %641
  %644 = or i1 %642, %643
  %645 = select i1 %644, float 0x4197782600000000, float %636
  %646 = fmul fast float %629, %617
  %647 = fsub fast float -0.000000e+00, %617
  %648 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 3
  %651 = fmul fast float %650, %648
  %652 = fadd fast float %651, %646
  %653 = and i32 %122, 2097152
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %659, label %655, !dx.controlflow.hints !65

; <label>:655                                     ; preds = %628
  %656 = add i32 %119, 192
  %657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.f32 %657, 0
  br label %662

; <label>:659                                     ; preds = %628
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 3
  br label %662

; <label>:662                                     ; preds = %659, %655
  %663 = phi float [ %658, %655 ], [ %661, %659 ]
  %664 = fmul fast float %586, %561
  %665 = fmul fast float %664, %590
  %666 = fmul fast float %665, %596
  %667 = fmul fast float %587, %561
  %668 = fmul fast float %667, %590
  %669 = fmul fast float %668, %600
  %670 = fmul fast float %588, %561
  %671 = fmul fast float %670, %590
  %672 = fmul fast float %671, %604
  %673 = icmp eq i32 %118, 3
  %674 = fcmp fast ogt float %40, %645
  %675 = and i1 %216, %674
  %676 = or i1 %673, %675
  %677 = icmp eq i32 %118, 2
  %678 = fcmp fast ole float %40, %645
  %679 = and i1 %677, %678
  %680 = or i1 %679, %676
  br i1 %675, label %681, label %765

; <label>:681                                     ; preds = %662
  %682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %683 = extractvalue %dx.types.CBufRet.f32 %682, 2
  %684 = extractvalue %dx.types.CBufRet.f32 %682, 3
  %685 = fmul fast float %683, %44
  %686 = fmul fast float %684, %45
  %687 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %688 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %689 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %687, float %688, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %690 = extractvalue %dx.types.ResRet.f32 %689, 0
  %691 = extractvalue %dx.types.ResRet.f32 %689, 1
  %692 = extractvalue %dx.types.ResRet.f32 %689, 2
  %693 = extractvalue %dx.types.ResRet.f32 %689, 3
  %694 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %687, float %688, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %695 = extractvalue %dx.types.ResRet.f32 %694, 0
  %696 = extractvalue %dx.types.ResRet.f32 %694, 1
  %697 = extractvalue %dx.types.ResRet.f32 %694, 2
  %698 = extractvalue %dx.types.ResRet.f32 %694, 3
  %699 = call float @dx.op.binary.f32(i32 35, float %691, float %692)  ; FMax(a,b)
  %700 = call float @dx.op.binary.f32(i32 35, float %690, float %699)  ; FMax(a,b)
  %701 = call float @dx.op.binary.f32(i32 35, float %700, float %693)  ; FMax(a,b)
  %702 = call float @dx.op.binary.f32(i32 36, float %696, float %697)  ; FMin(a,b)
  %703 = call float @dx.op.binary.f32(i32 36, float %695, float %702)  ; FMin(a,b)
  %704 = call float @dx.op.binary.f32(i32 36, float %703, float %698)  ; FMin(a,b)
  %705 = fmul fast float %701, 2.550000e+02
  %706 = fadd fast float %705, 0x3F70101020000000
  %707 = fptoui float %706 to i32
  %708 = fmul fast float %704, 2.550000e+02
  %709 = fadd fast float %708, 0x3F70101020000000
  %710 = fptoui float %709 to i32
  %711 = icmp ult i32 %707, %710
  br i1 %711, label %712, label %754

; <label>:712                                     ; preds = %681
  %713 = fcmp fast ogt float %39, 9.843750e-01
  %714 = fadd fast float %40, -4.000000e+00
  %715 = select i1 %713, float -4.000000e+00, float %714
  %716 = call float @dx.op.binary.f32(i32 35, float %715, float 0.000000e+00)  ; FMax(a,b)
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 0
  %719 = fadd fast float %718, %716
  %720 = extractvalue %dx.types.CBufRet.f32 %717, 2
  %721 = fmul fast float %719, %720
  %722 = call float @dx.op.unary.f32(i32 23, float %721)  ; Log(value)
  %723 = extractvalue %dx.types.CBufRet.f32 %717, 3
  %724 = fmul fast float %723, %722
  %725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %726 = extractvalue %dx.types.CBufRet.f32 %725, 2
  %727 = fmul fast float %724, %726
  %728 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %729 = uitofp i32 %707 to float
  %730 = uitofp i32 %710 to float
  %731 = fadd fast float %729, 5.000000e-01
  %732 = fadd fast float %730, 5.000000e-01
  %733 = fmul fast float %726, %731
  %734 = fmul fast float %726, %732
  %735 = fadd fast float %733, 0x3F0FFB4800000000
  %736 = fadd fast float %734, 0xBF0FFB4800000000
  %737 = call float @dx.op.binary.f32(i32 35, float %728, float %735)  ; FMax(a,b)
  %738 = call float @dx.op.binary.f32(i32 36, float %737, float %736)  ; FMin(a,b)
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 1
  %741 = extractvalue %dx.types.CBufRet.f32 %739, 2
  %742 = extractvalue %dx.types.CBufRet.f32 %739, 0
  %743 = fmul fast float %740, %738
  %744 = fadd fast float %742, %743
  %745 = fadd fast float %742, %741
  %746 = fsub fast float %740, %741
  %747 = fadd fast float %746, %742
  %748 = call float @dx.op.binary.f32(i32 35, float %744, float %745)  ; FMax(a,b)
  %749 = call float @dx.op.binary.f32(i32 36, float %748, float %747)  ; FMin(a,b)
  %750 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %687, float %688, float %749, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = extractvalue %dx.types.ResRet.f32 %750, 1
  %753 = extractvalue %dx.types.ResRet.f32 %750, 2
  br label %754

; <label>:754                                     ; preds = %712, %681
  %755 = phi float [ %751, %712 ], [ 1.000000e+00, %681 ]
  %756 = phi float [ %752, %712 ], [ 1.000000e+00, %681 ]
  %757 = phi float [ %753, %712 ], [ 1.000000e+00, %681 ]
  %758 = call float @dx.op.dot3.f32(i32 55, float %755, float %756, float %757, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %759 = select i1 %102, float %758, float %755
  %760 = select i1 %102, float %758, float %756
  %761 = select i1 %102, float 1.000000e+00, float %757
  %762 = fmul fast float %759, %666
  %763 = fmul fast float %760, %669
  %764 = fmul fast float %761, %672
  br label %765

; <label>:765                                     ; preds = %754, %662
  %766 = phi float [ %645, %754 ], [ %40, %662 ]
  %767 = phi float [ %762, %754 ], [ %666, %662 ]
  %768 = phi float [ %763, %754 ], [ %669, %662 ]
  %769 = phi float [ %764, %754 ], [ %672, %662 ]
  %770 = phi float [ %755, %754 ], [ 1.000000e+00, %662 ]
  br i1 %680, label %1013, label %771

; <label>:771                                     ; preds = %765
  %772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %16, float %26, float %27, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %773 = extractvalue %dx.types.ResRet.f32 %772, 0
  %774 = extractvalue %dx.types.ResRet.f32 %772, 1
  %775 = extractvalue %dx.types.ResRet.f32 %772, 2
  %776 = fmul fast float %773, %770
  %777 = call float @dx.op.dot3.f32(i32 55, float %773, float %774, float %775, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %778 = select i1 %102, float %777, float %773
  %779 = select i1 %102, float %777, float %774
  %780 = select i1 %102, float 1.000000e+00, float %775
  %781 = fmul fast float %778, %767
  %782 = fmul fast float %779, %768
  %783 = fmul fast float %780, %769
  %784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.i32 %784, 0
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %1013, label %787, !dx.controlflow.hints !66

; <label>:787                                     ; preds = %771
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 2
  %790 = extractvalue %dx.types.CBufRet.f32 %788, 3
  %791 = fmul fast float %789, %44
  %792 = fmul fast float %790, %45
  %793 = fmul fast float %791, 2.000000e+00
  %794 = fmul fast float %792, 2.000000e+00
  %795 = fsub fast float 1.000000e+00, %793
  %796 = fsub fast float 1.000000e+00, %794
  %797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %798 = extractvalue %dx.types.CBufRet.f32 %797, 0
  %799 = extractvalue %dx.types.CBufRet.f32 %797, 1
  %800 = extractvalue %dx.types.CBufRet.f32 %797, 2
  %801 = fmul fast float %795, %798
  %802 = fmul fast float %795, %799
  %803 = fmul fast float %795, %800
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = extractvalue %dx.types.CBufRet.f32 %804, 1
  %807 = extractvalue %dx.types.CBufRet.f32 %804, 2
  %808 = fmul fast float %796, %805
  %809 = fmul fast float %796, %806
  %810 = fmul fast float %796, %807
  %811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %812 = extractvalue %dx.types.CBufRet.f32 %811, 0
  %813 = extractvalue %dx.types.CBufRet.f32 %811, 1
  %814 = extractvalue %dx.types.CBufRet.f32 %811, 2
  %815 = fadd fast float %808, %812
  %816 = fadd fast float %815, %801
  %817 = fadd fast float %809, %813
  %818 = fadd fast float %817, %802
  %819 = fadd fast float %810, %814
  %820 = fadd fast float %819, %803
  %821 = fmul fast float %816, %766
  %822 = fmul fast float %818, %766
  %823 = fmul fast float %820, %766
  %824 = fmul fast float %821, %821
  %825 = fmul fast float %822, %822
  %826 = fadd fast float %824, %825
  %827 = fmul fast float %823, %823
  %828 = fadd fast float %826, %827
  %829 = call float @dx.op.unary.f32(i32 24, float %828)  ; Sqrt(value)
  %830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.f32 %830, 0
  %832 = fsub fast float %829, %831
  %833 = extractvalue %dx.types.CBufRet.f32 %830, 2
  %834 = fmul fast float %832, %833
  %835 = call float @dx.op.unary.f32(i32 7, float %834)  ; Saturate(value)
  %836 = fadd fast float %835, -5.000000e-01
  %837 = fmul fast float %836, 2.000000e+00
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 2
  %840 = call float @dx.op.binary.f32(i32 36, float %839, float %837)  ; FMin(a,b)
  %841 = fsub fast float -0.000000e+00, %839
  %842 = fcmp fast ogt float %840, %841
  br i1 %842, label %843, label %1013, !dx.controlflow.hints !67

; <label>:843                                     ; preds = %787
  %844 = fmul fast float %840, 5.000000e-01
  %845 = fadd fast float %844, 5.000000e-01
  %846 = call float @dx.op.unary.f32(i32 22, float %845)  ; Frc(value)
  %847 = call float @dx.op.unary.f32(i32 27, float %846)  ; Round_ni(value)
  %848 = call float @dx.op.unary.f32(i32 22, float %846)  ; Frc(value)
  %849 = fmul fast float %848, 2.000000e+00
  %850 = fadd fast float %849, -1.000000e+00
  %851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %16, float %791, float %792, float %847, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %852 = extractvalue %dx.types.ResRet.f32 %851, 0
  %853 = extractvalue %dx.types.ResRet.f32 %851, 1
  %854 = extractvalue %dx.types.ResRet.f32 %851, 2
  %855 = extractvalue %dx.types.ResRet.f32 %851, 3
  %856 = fadd fast float %852, -5.000000e-01
  %857 = fadd fast float %854, -5.000000e-01
  %858 = fmul fast float %856, 0xBFD5555560000000
  %859 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %857, float %858)  ; FMad(a,b,c)
  %860 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %853, float 0.000000e+00)  ; FMad(a,b,c)
  %861 = fadd fast float %860, %855
  %862 = fmul fast float %856, -7.500000e-01
  %863 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %857, float %862)  ; FMad(a,b,c)
  %864 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %853, float 0.000000e+00)  ; FMad(a,b,c)
  %865 = fadd fast float %864, %855
  %866 = call float @dx.op.binary.f32(i32 35, float %859, float -1.000000e+00)  ; FMax(a,b)
  %867 = call float @dx.op.binary.f32(i32 35, float %861, float -1.000000e+00)  ; FMax(a,b)
  %868 = call float @dx.op.binary.f32(i32 35, float %863, float -1.000000e+00)  ; FMax(a,b)
  %869 = call float @dx.op.binary.f32(i32 35, float %865, float -1.000000e+00)  ; FMax(a,b)
  %870 = call float @dx.op.binary.f32(i32 36, float %866, float 1.000000e+00)  ; FMin(a,b)
  %871 = call float @dx.op.binary.f32(i32 36, float %867, float 1.000000e+00)  ; FMin(a,b)
  %872 = call float @dx.op.binary.f32(i32 36, float %868, float 1.000000e+00)  ; FMin(a,b)
  %873 = call float @dx.op.binary.f32(i32 36, float %869, float 1.000000e+00)  ; FMin(a,b)
  %874 = fcmp fast olt float %870, 0x3FEFFF8020000000
  br i1 %874, label %875, label %990, !dx.controlflow.hints !68

; <label>:875                                     ; preds = %843
  %876 = extractvalue %dx.types.CBufRet.f32 %838, 3
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 0
  %879 = extractvalue %dx.types.CBufRet.f32 %877, 1
  %880 = extractvalue %dx.types.CBufRet.f32 %877, 2
  %881 = extractvalue %dx.types.CBufRet.f32 %877, 3
  %882 = fsub fast float %878, %870
  %883 = fsub fast float %879, %871
  %884 = fsub fast float %880, %872
  %885 = fsub fast float %881, %873
  %886 = fmul fast float %882, %876
  %887 = fmul fast float %883, %876
  %888 = fmul fast float %884, %876
  %889 = fmul fast float %885, %876
  %890 = fadd fast float %886, %870
  %891 = fadd fast float %887, %871
  %892 = fsub fast float -0.000000e+00, %891
  %893 = fadd fast float %888, %872
  %894 = fadd fast float %889, %873
  %895 = fmul fast float %890, %890
  %896 = fsub fast float %891, %895
  %897 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %896)  ; FMax(a,b)
  %898 = fdiv fast float 1.000000e+00, %897
  %899 = fmul fast float %891, %890
  %900 = fsub fast float %893, %899
  %901 = fsub fast float %850, %890
  %902 = fmul fast float %850, %850
  %903 = fsub fast float %902, %891
  %904 = fmul fast float %901, %898
  %905 = fmul fast float %904, %900
  %906 = fsub fast float %903, %905
  %907 = fmul fast float %891, %891
  %908 = fsub fast float %894, %907
  %909 = fmul fast float %900, %900
  %910 = fmul fast float %909, %898
  %911 = fsub fast float %908, %910
  %912 = fdiv fast float %906, %911
  %913 = fmul fast float %900, %912
  %914 = fsub fast float %901, %913
  %915 = fmul fast float %914, %898
  %916 = fmul fast float %915, %890
  %917 = fsub fast float 1.000000e+00, %916
  %918 = fmul fast float %891, %912
  %919 = fsub fast float %917, %918
  %920 = fmul fast float %915, %915
  %921 = fmul fast float %912, 4.000000e+00
  %922 = fmul fast float %921, %919
  %923 = fsub fast float %920, %922
  %924 = call float @dx.op.unary.f32(i32 24, float %923)  ; Sqrt(value)
  %925 = fcmp fast oge float %915, 0.000000e+00
  %926 = fsub fast float -0.000000e+00, %924
  %927 = select i1 %925, float %926, float %924
  %928 = fsub fast float %927, %915
  %929 = fdiv fast float %928, %912
  %930 = fdiv fast float %919, %928
  %931 = fmul fast float %929, 5.000000e-01
  %932 = fmul fast float %930, 2.000000e+00
  %933 = select i1 %925, float %931, float %932
  %934 = select i1 %925, float %932, float %931
  %935 = call float @dx.op.binary.f32(i32 35, float %933, float %934)  ; FMax(a,b)
  %936 = call float @dx.op.binary.f32(i32 36, float %933, float %934)  ; FMin(a,b)
  %937 = fcmp fast ogt float %850, %936
  br i1 %937, label %938, label %948

; <label>:938                                     ; preds = %875
  %939 = fsub fast float %850, %936
  %940 = fsub fast float %935, %936
  %941 = fmul fast float %939, %940
  %942 = fmul fast float %935, %850
  %943 = fadd fast float %935, %850
  %944 = fmul fast float %943, %890
  %945 = fadd fast float %942, %891
  %946 = fsub fast float %945, %944
  %947 = fdiv fast float %946, %941
  br label %948

; <label>:948                                     ; preds = %938, %875
  %949 = phi float [ %947, %938 ], [ 0.000000e+00, %875 ]
  %950 = fcmp fast ogt float %850, %935
  %951 = fsub fast float %850, %935
  br i1 %950, label %952, label %962

; <label>:952                                     ; preds = %948
  %953 = fsub fast float %935, %936
  %954 = fmul fast float %953, %951
  %955 = fmul fast float %936, %850
  %956 = fadd fast float %936, %850
  %957 = fmul fast float %956, %890
  %958 = fsub fast float %892, %955
  %959 = fadd fast float %958, %957
  %960 = fdiv fast float %959, %954
  %961 = fadd fast float %960, %949
  br label %962

; <label>:962                                     ; preds = %952, %948
  %963 = phi float [ %961, %952 ], [ %949, %948 ]
  %964 = fsub fast float %850, %936
  %965 = fmul fast float %964, %951
  %966 = fmul fast float %936, %935
  %967 = fadd fast float %936, %935
  %968 = fmul fast float %967, %890
  %969 = fadd fast float %966, %891
  %970 = fsub fast float %969, %968
  %971 = fdiv fast float %970, %965
  %972 = call float @dx.op.unary.f32(i32 7, float %963)  ; Saturate(value)
  %973 = fcmp fast oeq float %663, 0.000000e+00
  %974 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %975 = fcmp fast oeq float %974, 0.000000e+00
  %976 = or i1 %973, %975
  %977 = fmul fast float %974, 2.000000e+00
  %978 = fadd fast float %839, %840
  %979 = fdiv fast float %978, %977
  %980 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  %981 = fmul fast float %980, 2.000000e+00
  %982 = fsub fast float 3.000000e+00, %981
  %983 = fmul fast float %980, %980
  %984 = fmul fast float %983, %982
  %985 = select i1 %976, float 1.000000e+00, float %984
  %986 = fmul fast float %971, %663
  %987 = fadd fast float %972, %986
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  %989 = fmul fast float %985, %988
  br label %990

; <label>:990                                     ; preds = %962, %843
  %991 = phi float [ %989, %962 ], [ 0.000000e+00, %843 ]
  %992 = fsub fast float 1.000000e+00, %991
  %993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %16, float %791, float %792, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.i32 %995, 2
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %1003, label %998

; <label>:998                                     ; preds = %990
  %999 = call float @dx.op.unary.f32(i32 7, float %991)  ; Saturate(value)
  %1000 = fadd fast float %994, -1.000000e+00
  %1001 = fmul fast float %999, %1000
  %1002 = fadd fast float %1001, 1.000000e+00
  br label %1003

; <label>:1003                                    ; preds = %998, %990
  %1004 = phi float [ %1002, %998 ], [ %992, %990 ]
  %1005 = call float @dx.op.binary.f32(i32 35, float %994, float %1004)  ; FMax(a,b)
  %1006 = fmul fast float %1005, %776
  %1007 = call float @dx.op.dot3.f32(i32 55, float %1005, float %1005, float %1005, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1008 = select i1 %102, float %1007, float %1005
  %1009 = select i1 %102, float 1.000000e+00, float %1005
  %1010 = fmul fast float %1008, %781
  %1011 = fmul fast float %1008, %782
  %1012 = fmul fast float %1009, %783
  br label %1013

; <label>:1013                                    ; preds = %1003, %787, %771, %765
  %1014 = phi float [ %767, %765 ], [ %781, %771 ], [ %1010, %1003 ], [ %781, %787 ]
  %1015 = phi float [ %768, %765 ], [ %782, %771 ], [ %1011, %1003 ], [ %782, %787 ]
  %1016 = phi float [ %769, %765 ], [ %783, %771 ], [ %1012, %1003 ], [ %783, %787 ]
  %1017 = phi float [ %770, %765 ], [ %776, %771 ], [ %1006, %1003 ], [ %776, %787 ]
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 3
  %1021 = fmul fast float %1019, %44
  %1022 = fmul fast float %1020, %45
  %1023 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  %1024 = call float @dx.op.unary.f32(i32 7, float %1022)  ; Saturate(value)
  %1025 = select i1 %680, i32 2, i32 0
  %1026 = or i32 %1025, 1
  %1027 = uitofp i32 %1026 to float
  %1028 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %1023, float %1024, float %1027, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1029 = extractvalue %dx.types.ResRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.ResRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.ResRet.f32 %1028, 2
  %1032 = extractvalue %dx.types.ResRet.f32 %1028, 3
  %1033 = add nuw nsw i32 %1025, 2
  %1034 = uitofp i32 %1033 to float
  %1035 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %1023, float %1024, float %1034, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.ResRet.f32 %1035, 2
  %1039 = extractvalue %dx.types.ResRet.f32 %1035, 3
  %1040 = call float @dx.op.binary.f32(i32 35, float %1030, float %1031)  ; FMax(a,b)
  %1041 = call float @dx.op.binary.f32(i32 35, float %1029, float %1040)  ; FMax(a,b)
  %1042 = call float @dx.op.binary.f32(i32 35, float %1041, float %1032)  ; FMax(a,b)
  %1043 = call float @dx.op.binary.f32(i32 36, float %1037, float %1038)  ; FMin(a,b)
  %1044 = call float @dx.op.binary.f32(i32 36, float %1036, float %1043)  ; FMin(a,b)
  %1045 = call float @dx.op.binary.f32(i32 36, float %1044, float %1039)  ; FMin(a,b)
  %1046 = fmul fast float %1042, 2.550000e+02
  %1047 = fadd fast float %1046, 0x3F70101020000000
  %1048 = fptoui float %1047 to i32
  %1049 = fmul fast float %1045, 2.550000e+02
  %1050 = fadd fast float %1049, 0x3F70101020000000
  %1051 = fptoui float %1050 to i32
  %1052 = icmp ult i32 %1048, %1051
  br i1 %1052, label %1053, label %1096

; <label>:1053                                    ; preds = %1013
  %1054 = fcmp fast ogt float %39, 9.843750e-01
  %1055 = fadd fast float %766, -4.000000e+00
  %1056 = select i1 %1054, float -4.000000e+00, float %1055
  %1057 = call float @dx.op.binary.f32(i32 35, float %1056, float 0.000000e+00)  ; FMax(a,b)
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = fadd fast float %1059, %1057
  %1061 = extractvalue %dx.types.CBufRet.f32 %1058, 2
  %1062 = fmul fast float %1060, %1061
  %1063 = call float @dx.op.unary.f32(i32 23, float %1062)  ; Log(value)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1058, 3
  %1065 = fmul fast float %1064, %1063
  %1066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.f32 %1066, 2
  %1068 = fmul fast float %1065, %1067
  %1069 = call float @dx.op.unary.f32(i32 7, float %1068)  ; Saturate(value)
  %1070 = uitofp i32 %1048 to float
  %1071 = uitofp i32 %1051 to float
  %1072 = fadd fast float %1070, 5.000000e-01
  %1073 = fadd fast float %1071, 5.000000e-01
  %1074 = fmul fast float %1067, %1072
  %1075 = fmul fast float %1067, %1073
  %1076 = fadd fast float %1074, 0x3F0FFB4800000000
  %1077 = fadd fast float %1075, 0xBF0FFB4800000000
  %1078 = call float @dx.op.binary.f32(i32 35, float %1069, float %1076)  ; FMax(a,b)
  %1079 = call float @dx.op.binary.f32(i32 36, float %1078, float %1077)  ; FMin(a,b)
  %1080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1081 = extractvalue %dx.types.CBufRet.f32 %1080, 1
  %1082 = extractvalue %dx.types.CBufRet.f32 %1080, 2
  %1083 = extractvalue %dx.types.CBufRet.f32 %1080, 0
  %1084 = select i1 %680, float %1083, float 0.000000e+00
  %1085 = fmul fast float %1081, %1079
  %1086 = fadd fast float %1084, %1085
  %1087 = fadd fast float %1084, %1082
  %1088 = fsub fast float %1081, %1082
  %1089 = fadd fast float %1088, %1084
  %1090 = call float @dx.op.binary.f32(i32 35, float %1086, float %1087)  ; FMax(a,b)
  %1091 = call float @dx.op.binary.f32(i32 36, float %1090, float %1089)  ; FMin(a,b)
  %1092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %1023, float %1024, float %1091, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = extractvalue %dx.types.ResRet.f32 %1092, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1092, 2
  br label %1096

; <label>:1096                                    ; preds = %1053, %1013
  %1097 = phi float [ %1093, %1053 ], [ 1.000000e+00, %1013 ]
  %1098 = phi float [ %1094, %1053 ], [ 1.000000e+00, %1013 ]
  %1099 = phi float [ %1095, %1053 ], [ 1.000000e+00, %1013 ]
  %1100 = fmul fast float %1097, %1017
  %1101 = call float @dx.op.dot3.f32(i32 55, float %1097, float %1098, float %1099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = select i1 %102, float %1101, float %1097
  %1103 = select i1 %102, float %1101, float %1098
  %1104 = select i1 %102, float 1.000000e+00, float %1099
  %1105 = fmul fast float %1102, %1014
  %1106 = fmul fast float %1103, %1015
  %1107 = fmul fast float %1104, %1016
  %1108 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.i32 %1108, 3
  %1110 = and i32 %1109, 3
  %1111 = icmp ne i32 %1110, 0
  %1112 = and i32 %1109, 4
  %1113 = icmp ne i32 %1112, 0
  %1114 = and i1 %1111, %1113
  %1115 = and i1 %102, %1114
  br i1 %1115, label %1116, label %1122

; <label>:1116                                    ; preds = %1096
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 1
  %1119 = fadd fast float %1100, -1.000000e+00
  %1120 = fmul fast float %1118, %1119
  %1121 = fadd fast float %1120, 1.000000e+00
  br label %1122

; <label>:1122                                    ; preds = %1116, %1096
  %1123 = phi float [ %1121, %1116 ], [ %1100, %1096 ]
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  br i1 %102, label %1126, label %1145

; <label>:1126                                    ; preds = %1122
  %1127 = fadd fast float %1105, %1106
  %1128 = fmul fast float %1125, %1127
  %1129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1129, 3
  %1131 = extractvalue %dx.types.CBufRet.f32 %649, 1
  %1132 = fsub fast float %652, %1131
  %1133 = extractvalue %dx.types.CBufRet.f32 %649, 2
  %1134 = fmul fast float %1132, %1133
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1136 = fsub fast float %1135, %1130
  %1137 = fmul fast float %1136, %1123
  %1138 = fadd fast float %1137, %1130
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1141 = fsub fast float %1138, %1140
  %1142 = fmul fast float %1141, 1.000000e+01
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  %1144 = fmul fast float %1138, %1143
  br label %1154

; <label>:1145                                    ; preds = %1122
  %1146 = fmul fast float %1125, %1105
  %1147 = fmul fast float %1125, %1106
  %1148 = fmul fast float %1107, %1125
  %1149 = call float @dx.op.binary.f32(i32 35, float %1147, float %1148)  ; FMax(a,b)
  %1150 = call float @dx.op.binary.f32(i32 35, float %1146, float %1149)  ; FMax(a,b)
  %1151 = call float @dx.op.binary.f32(i32 35, float %1150, float 0.000000e+00)  ; FMax(a,b)
  %1152 = fcmp fast ugt float %1151, 0x3F10000000000000
  br i1 %1152, label %1154, label %1153

; <label>:1153                                    ; preds = %1145
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1154

; <label>:1154                                    ; preds = %1153, %1145, %1126
  %1155 = phi float [ %1128, %1126 ], [ %1146, %1153 ], [ %1146, %1145 ]
  %1156 = phi float [ %1144, %1126 ], [ %1147, %1153 ], [ %1147, %1145 ]
  %1157 = phi float [ %1143, %1126 ], [ %1148, %1153 ], [ %1148, %1145 ]
  %1158 = phi float [ %1143, %1126 ], [ 0.000000e+00, %1153 ], [ 0.000000e+00, %1145 ]
  %1159 = fadd fast float %498, 0x3FE3C6EF40000000
  %1160 = call float @dx.op.unary.f32(i32 22, float %1159)  ; Frc(value)
  %1161 = call float @dx.op.unary.f32(i32 23, float %1155)  ; Log(value)
  %1162 = fadd fast float %1161, -7.000000e+00
  %1163 = call float @dx.op.unary.f32(i32 21, float %1162)  ; Exp(value)
  %1164 = fmul fast float %1160, 2.000000e+00
  %1165 = fadd fast float %1164, -1.000000e+00
  %1166 = fmul fast float %1163, %1165
  %1167 = fcmp fast ogt float %1155, 0.000000e+00
  %1168 = select i1 %1167, float %1166, float 0.000000e+00
  %1169 = fadd fast float %1168, %1155
  %1170 = fadd fast float %498, 0x3FF3C6EF40000000
  %1171 = call float @dx.op.unary.f32(i32 22, float %1170)  ; Frc(value)
  %1172 = call float @dx.op.unary.f32(i32 23, float %1156)  ; Log(value)
  %1173 = fadd fast float %1172, -7.000000e+00
  %1174 = call float @dx.op.unary.f32(i32 21, float %1173)  ; Exp(value)
  %1175 = fmul fast float %1171, 2.000000e+00
  %1176 = fadd fast float %1175, -1.000000e+00
  %1177 = fmul fast float %1174, %1176
  %1178 = fcmp fast ogt float %1156, 0.000000e+00
  %1179 = select i1 %1178, float %1177, float 0.000000e+00
  %1180 = fadd fast float %1179, %1156
  %1181 = fadd fast float %498, 0x3FFDAA66E0000000
  %1182 = call float @dx.op.unary.f32(i32 22, float %1181)  ; Frc(value)
  %1183 = call float @dx.op.unary.f32(i32 23, float %1157)  ; Log(value)
  %1184 = fadd fast float %1183, -6.000000e+00
  %1185 = call float @dx.op.unary.f32(i32 21, float %1184)  ; Exp(value)
  %1186 = fmul fast float %1182, 2.000000e+00
  %1187 = fadd fast float %1186, -1.000000e+00
  %1188 = fmul fast float %1185, %1187
  %1189 = fcmp fast ogt float %1157, 0.000000e+00
  %1190 = select i1 %1189, float %1188, float 0.000000e+00
  %1191 = fadd fast float %1190, %1157
  %1192 = select i1 %102, float %1156, float %1180
  %1193 = select i1 %102, float %1157, float %1191
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1194 = call float @dx.op.binary.f32(i32 36, float %1169, float 3.225500e+04)  ; FMin(a,b)
  %1195 = call float @dx.op.binary.f32(i32 36, float %1192, float 3.225500e+04)  ; FMin(a,b)
  %1196 = call float @dx.op.binary.f32(i32 36, float %1193, float 3.225500e+04)  ; FMin(a,b)
  %1197 = call float @dx.op.binary.f32(i32 36, float %1158, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1194)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1195)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1196)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1197)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1158)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1158)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1158)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1158)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!32}
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !24, !27}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23}
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
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!27 = !{!28, !29, !30, !31}
!28 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!29 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!32 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 7, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!33 = !{void ()* @ps_main, !"ps_main", !34, !4, !57}
!34 = !{!35, !53, null}
!35 = !{!36, !39, !40, !42, !45, !47, !49, !50, !52}
!36 = !{i32 0, !"SV_Position", i8 9, i8 3, !37, i8 4, i32 1, i8 4, i32 0, i8 0, !38}
!37 = !{i32 0}
!38 = !{i32 3, i32 15}
!39 = !{i32 1, !"COLOR", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 1, i8 0, !38}
!40 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 2, i32 2, i8 0, !41}
!41 = !{i32 3, i32 3}
!42 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !43, i8 2, i32 1, i8 4, i32 3, i8 0, !44}
!43 = !{i32 3}
!44 = !{i32 3, i32 7}
!45 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !46, i8 3, i32 1, i8 2, i32 4, i8 0, !41}
!46 = !{i32 5}
!47 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 5, i8 0, null}
!48 = !{i32 8}
!49 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !37, i8 1, i32 1, i8 4, i32 6, i8 0, !38}
!50 = !{i32 7, !"COLOR", i8 5, i8 0, !43, i8 1, i32 1, i8 3, i32 7, i8 0, !51}
!51 = !{i32 3, i32 5}
!52 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !37, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!53 = !{!54, !55}
!54 = !{i32 0, !"SV_Target", i8 9, i8 16, !37, i8 0, i32 1, i8 4, i32 0, i8 0, !38}
!55 = !{i32 1, !"SV_Target", i8 9, i8 16, !56, i8 0, i32 1, i8 4, i32 1, i8 0, !38}
!56 = !{i32 1}
!57 = !{i32 0, i64 24}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}

