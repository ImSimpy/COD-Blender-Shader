;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 5   xy          4     NONE   float   xy  
; TEXCOORD                 8   xyzw        5     NONE   float   xyzw
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
; shader hash: 0c91f2a9b2868c133a3119800b8dfebe
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
;                                   texture     f32          3d     T15     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 31, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
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
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = fmul fast float %46, %40
  %48 = fmul fast float %46, %41
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %52 = fmul fast float %47, 2.000000e+00
  %53 = fmul fast float %52, %50
  %54 = fmul fast float %48, 2.000000e+00
  %55 = fmul fast float %54, %51
  %56 = fsub fast float 1.000000e+00, %53
  %57 = fsub fast float 1.000000e+00, %55
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = fmul fast float %56, %59
  %63 = fmul fast float %56, %60
  %64 = fmul fast float %56, %61
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %69 = fmul fast float %57, %66
  %70 = fmul fast float %57, %67
  %71 = fmul fast float %57, %68
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = fadd fast float %69, %73
  %77 = fadd fast float %76, %62
  %78 = fadd fast float %70, %74
  %79 = fadd fast float %78, %63
  %80 = fadd fast float %71, %75
  %81 = fadd fast float %80, %64
  %82 = fmul fast float %77, %43
  %83 = fmul fast float %79, %43
  %84 = fmul fast float %81, %43
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %95 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %94, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = fsub fast float 1.000000e+00, %96
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = fcmp fast olt float %97, %99
  br label %104

; <label>:101                                     ; preds = %0
  %102 = icmp eq i32 %89, 0
  %103 = and i1 %88, %102
  br label %104

; <label>:104                                     ; preds = %101, %92
  %105 = phi i1 [ %100, %92 ], [ %103, %101 ]
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %109 = fmul fast float %107, %47
  %110 = fmul fast float %108, %48
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = and i32 %112, 114688
  %114 = icmp ne i32 %113, 0
  %115 = select i1 %114, float %109, float 0.000000e+00
  %116 = select i1 %114, float %110, float 0.000000e+00
  %117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %115, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fmul fast float %118, 2.550000e+02
  %120 = fptoui float %119 to i32
  %121 = select i1 %114, i32 %120, i32 0
  %122 = mul i32 %21, 208
  %123 = add i32 %122, 188
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %162 = phi float [ %37, %134 ], [ %141, %147 ], [ %160, %155 ], [ %141, %153 ]
  %163 = phi float [ %38, %134 ], [ %152, %147 ], [ %142, %155 ], [ %142, %153 ]
  %164 = and i32 %125, 16
  %165 = icmp ne i32 %164, 0
  %166 = select i1 %165, float 1.000000e+00, float %39
  %167 = icmp eq i32 %164, 0
  br i1 %167, label %187, label %168, !dx.controlflow.hints !59

; <label>:168                                     ; preds = %161
  %169 = add i32 %122, 64
  %170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = fadd fast float %171, 1.000000e+00
  %173 = fmul fast float %172, %39
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
  %197 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %195, i32 %196, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = lshr i32 %198, 18
  %200 = uitofp i32 %199 to float
  %201 = fmul fast float %200, 0x3F4C00EBA0000000
  %202 = call float @dx.op.unary.f32(i32 21, float %201)  ; Exp(value)
  %203 = fadd fast float %202, -1.000000e+00
  %204 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %205 = extractvalue %dx.types.Dimensions %204, 0
  %206 = sitofp i32 %205 to float
  %207 = extractvalue %dx.types.Dimensions %204, 1
  %208 = sitofp i32 %207 to float
  %209 = fcmp fast oge float %193, %206
  %210 = fcmp fast oge float %194, %208
  %211 = or i1 %209, %210
  %212 = select i1 %211, float 0x4197782600000000, float %203
  %213 = fsub fast float %212, %43
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
  br i1 %233, label %484, label %234, !dx.controlflow.hints !60

; <label>:234                                     ; preds = %231
  %235 = add i32 %122, 80
  %236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = extractvalue %dx.types.ResRet.f32 %236, 2
  %240 = extractvalue %dx.types.ResRet.f32 %236, 3
  %241 = add i32 %122, 96
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = add i32 %122, 112
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  %251 = extractvalue %dx.types.ResRet.f32 %247, 3
  %252 = add i32 %122, 128
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = extractvalue %dx.types.ResRet.f32 %253, 3
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %269 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %270 = extractvalue %dx.types.Dimensions %269, 0
  %271 = sitofp i32 %270 to float
  %272 = extractvalue %dx.types.Dimensions %269, 1
  %273 = sitofp i32 %272 to float
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 2
  %276 = extractvalue %dx.types.CBufRet.f32 %274, 3
  %277 = fmul fast float %275, %47
  %278 = fmul fast float %276, %48
  %279 = fmul fast float %277, %271
  %280 = fmul fast float %278, %273
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %283 = fsub fast float -0.000000e+00, %282
  %284 = fptoui float %283 to i32
  %285 = fptoui float %279 to i32
  %286 = fptoui float %280 to i32
  %287 = and i32 %284, 31
  %288 = lshr i32 %285, %287
  %289 = lshr i32 %286, %287
  %290 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %284, i32 %288, i32 %289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = fcmp fast ogt float %291, -1.000000e+00
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %295 = select i1 %292, float %294, float 1.000000e+00
  %296 = fadd fast float %291, 1.000000e+00
  %297 = fmul fast float %295, %296
  %298 = call float @dx.op.unary.f32(i32 6, float %297)  ; FAbs(value)
  %299 = extractvalue %dx.types.CBufRet.f32 %293, 3
  %300 = fcmp fast oge float %298, %299
  %301 = select i1 %300, float 0x4197782600000000, float %298
  br i1 %268, label %379, label %302, !dx.controlflow.hints !61

; <label>:302                                     ; preds = %234
  %303 = fmul fast float %52, %275
  %304 = fmul fast float %54, %276
  %305 = fsub fast float 1.000000e+00, %303
  %306 = fsub fast float 1.000000e+00, %304
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %309 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %310 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %311 = fmul fast float %305, %308
  %312 = fmul fast float %305, %309
  %313 = fmul fast float %305, %310
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %317 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %318 = fmul fast float %306, %315
  %319 = fmul fast float %306, %316
  %320 = fmul fast float %306, %317
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %338 = fsub fast float %335, %23
  %339 = fadd fast float %338, %331
  %340 = fsub fast float %336, %24
  %341 = fadd fast float %340, %332
  %342 = fsub fast float %337, %25
  %343 = fadd fast float %342, %333
  %344 = fmul fast float %26, %26
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
  %362 = fsub fast float %251, %257
  %363 = fmul fast float %361, %362
  %364 = fadd fast float %363, %257
  %365 = fmul fast float %248, %27
  %366 = fmul fast float %249, %28
  %367 = fmul fast float %250, %29
  %368 = fsub fast float %365, %254
  %369 = fsub fast float %366, %255
  %370 = fsub fast float %367, %256
  %371 = fmul fast float %361, %368
  %372 = fmul fast float %361, %369
  %373 = fmul fast float %361, %370
  %374 = fadd fast float %371, %254
  %375 = fadd fast float %372, %255
  %376 = fadd fast float %373, %256
  %377 = fmul fast float %237, %237
  %378 = fmul fast float %377, %352
  br label %474

; <label>:379                                     ; preds = %234
  %380 = and i32 %259, 256
  %381 = icmp eq i32 %380, 0
  %382 = fsub fast float %301, %43
  br i1 %381, label %431, label %383

; <label>:383                                     ; preds = %379
  %384 = fadd fast float %243, %43
  %385 = fcmp fast olt float %301, %43
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
  %414 = fsub fast float %251, %257
  %415 = fmul fast float %413, %414
  %416 = fadd fast float %415, %257
  %417 = fmul fast float %248, %27
  %418 = fmul fast float %249, %28
  %419 = fmul fast float %250, %29
  %420 = fsub fast float %417, %254
  %421 = fsub fast float %418, %255
  %422 = fsub fast float %419, %256
  %423 = fmul fast float %413, %420
  %424 = fmul fast float %413, %421
  %425 = fmul fast float %413, %422
  %426 = fadd fast float %423, %254
  %427 = fadd fast float %424, %255
  %428 = fadd fast float %425, %256
  %429 = fmul fast float %388, %237
  %430 = call float @dx.op.unary.f32(i32 6, float %429)  ; FAbs(value)
  br label %474

; <label>:431                                     ; preds = %379
  br i1 %262, label %432, label %445

; <label>:432                                     ; preds = %431
  %433 = fdiv fast float 5.000000e+01, %26
  %434 = select i1 %264, float %433, float 1.000000e+00
  %435 = fmul fast float %434, %237
  %436 = fmul fast float %37, 2.000000e+00
  %437 = fmul fast float %38, 2.000000e+00
  %438 = fadd fast float %436, -1.000000e+00
  %439 = fadd fast float %437, -1.000000e+00
  %440 = call float @dx.op.dot2.f32(i32 54, float %438, float %439, float %438, float %439)  ; Dot2(ax,ay,bx,by)
  %441 = fmul fast float %245, %26
  %442 = fmul fast float %441, %440
  %443 = fsub fast float %382, %442
  %444 = fmul fast float %435, %443
  br label %474

; <label>:445                                     ; preds = %431
  br i1 %266, label %466, label %446

; <label>:446                                     ; preds = %445
  %447 = fmul fast float %26, 0x3F947AE140000000
  %448 = select i1 %264, float %447, float 1.000000e+00
  %449 = fdiv fast float 1.000000e+00, %448
  %450 = fmul fast float %448, %238
  %451 = fmul fast float %448, %239
  %452 = fmul fast float %449, %240
  %453 = call float @dx.op.unary.f32(i32 6, float %382)  ; FAbs(value)
  %454 = fcmp fast olt float %453, %450
  br i1 %454, label %455, label %459, !dx.controlflow.hints !62

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
  %467 = fdiv fast float 5.000000e+01, %26
  %468 = select i1 %264, float %467, float 1.000000e+00
  %469 = fmul fast float %468, %237
  %470 = call float @dx.op.unary.f32(i32 6, float %213)  ; FAbs(value)
  %471 = select i1 %261, float %470, float 0x47EFFFFFE0000000
  %472 = call float @dx.op.binary.f32(i32 36, float %382, float %471)  ; FMin(a,b)
  %473 = fmul fast float %469, %472
  br label %474

; <label>:474                                     ; preds = %466, %461, %459, %455, %432, %383, %302
  %475 = phi float [ %378, %302 ], [ %430, %383 ], [ %444, %432 ], [ %473, %466 ], [ %458, %455 ], [ %465, %461 ], [ %453, %459 ]
  %476 = phi float [ %374, %302 ], [ %426, %383 ], [ %27, %432 ], [ %27, %466 ], [ %27, %455 ], [ %27, %461 ], [ %27, %459 ]
  %477 = phi float [ %375, %302 ], [ %427, %383 ], [ %28, %432 ], [ %28, %466 ], [ %28, %455 ], [ %28, %461 ], [ %28, %459 ]
  %478 = phi float [ %376, %302 ], [ %428, %383 ], [ %29, %432 ], [ %29, %466 ], [ %29, %455 ], [ %29, %461 ], [ %29, %459 ]
  %479 = phi float [ %364, %302 ], [ %416, %383 ], [ 1.000000e+00, %432 ], [ 1.000000e+00, %466 ], [ 1.000000e+00, %455 ], [ 1.000000e+00, %461 ], [ 1.000000e+00, %459 ]
  %480 = call float @dx.op.unary.f32(i32 7, float %475)  ; Saturate(value)
  %481 = fmul fast float %480, %39
  %482 = fmul fast float %479, %192
  %483 = fmul fast float %482, %480
  br label %484

; <label>:484                                     ; preds = %474, %231
  %485 = phi float [ %483, %474 ], [ %192, %231 ]
  %486 = phi float [ %481, %474 ], [ %39, %231 ]
  %487 = phi float [ %476, %474 ], [ %27, %231 ]
  %488 = phi float [ %477, %474 ], [ %28, %231 ]
  %489 = phi float [ %478, %474 ], [ %29, %231 ]
  %490 = fmul fast float %487, %30
  %491 = fmul fast float %488, %30
  %492 = fmul fast float %489, %30
  %493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %494 = extractvalue %dx.types.CBufRet.f32 %493, 2
  %495 = fptosi float %43 to i32
  %496 = sitofp i32 %495 to float
  %497 = fadd fast float %494, %496
  %498 = fmul fast float %497, 0x3FE3C6EF40000000
  %499 = frem fast float %47, 2.560000e+02
  %500 = frem fast float %48, 2.560000e+02
  %501 = fptoui float %499 to i32
  %502 = fptoui float %500 to i32
  %503 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %501, i32 %502, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = fadd fast float %504, %498
  %506 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %507 = and i32 %125, 1
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %566, label %509, !dx.controlflow.hints !63

; <label>:509                                     ; preds = %484
  %510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 2
  %512 = extractvalue %dx.types.ResRet.f32 %510, 3
  %513 = add i32 %122, 16
  %514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = extractvalue %dx.types.ResRet.f32 %514, 2
  %518 = add i32 %122, 32
  %519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = and i32 %125, 2
  %524 = icmp eq i32 %523, 0
  %525 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %526 = call float @dx.op.unary.f32(i32 25, float %525)  ; Rsqrt(value)
  %527 = fmul fast float %526, %33
  %528 = fmul fast float %526, %34
  %529 = fmul fast float %526, %35
  %530 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %531 = call float @dx.op.unary.f32(i32 25, float %530)  ; Rsqrt(value)
  %532 = fmul fast float %531, %82
  %533 = fmul fast float %531, %83
  %534 = fmul fast float %531, %84
  %535 = call float @dx.op.dot3.f32(i32 55, float %532, float %533, float %534, float %527, float %528, float %529)  ; Dot3(ax,ay,az,bx,by,bz)
  %536 = fmul fast float %535, %535
  %537 = fmul fast float %536, %511
  %538 = fadd fast float %537, %512
  %539 = call float @dx.op.unary.f32(i32 7, float %538)  ; Saturate(value)
  br i1 %524, label %540, label %550, !dx.controlflow.hints !64

; <label>:540                                     ; preds = %509
  %541 = extractvalue %dx.types.ResRet.f32 %510, 1
  %542 = extractvalue %dx.types.ResRet.f32 %510, 0
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %545 = fmul fast float %544, %530
  %546 = fsub fast float %542, %545
  %547 = fmul fast float %546, %541
  %548 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %549 = fmul fast float %548, %539
  br label %550

; <label>:550                                     ; preds = %540, %509
  %551 = phi float [ %549, %540 ], [ %539, %509 ]
  %552 = fsub fast float %515, %520
  %553 = fsub fast float %516, %521
  %554 = fsub fast float %517, %522
  %555 = fmul fast float %551, %552
  %556 = fmul fast float %551, %553
  %557 = fmul fast float %551, %554
  %558 = fadd fast float %555, %520
  %559 = fadd fast float %556, %521
  %560 = fadd fast float %557, %522
  %561 = fmul fast float %558, %490
  %562 = fmul fast float %559, %491
  %563 = fmul fast float %560, %492
  %564 = fmul fast float %551, %485
  %565 = fmul fast float %551, %486
  br label %566

; <label>:566                                     ; preds = %550, %484
  %567 = phi float [ %564, %550 ], [ %485, %484 ]
  %568 = phi float [ %565, %550 ], [ %486, %484 ]
  %569 = phi float [ %561, %550 ], [ %490, %484 ]
  %570 = phi float [ %562, %550 ], [ %491, %484 ]
  %571 = phi float [ %563, %550 ], [ %492, %484 ]
  %572 = add i32 %22, 88
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = add i32 %574, 0
  %576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %577 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %576, %dx.types.Handle %44, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %578 = extractvalue %dx.types.ResRet.f32 %577, 0
  %579 = extractvalue %dx.types.ResRet.f32 %577, 1
  %580 = extractvalue %dx.types.ResRet.f32 %577, 2
  %581 = add i32 %22, 44
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = shl i32 %583, 4
  %585 = and i32 %584, 32752
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = lshr i32 %583, 7
  %588 = and i32 %587, 32752
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = lshr i32 %583, 22
  %591 = shl nuw nsw i32 %590, 5
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = fmul fast float %586, %578
  %594 = fmul fast float %589, %579
  %595 = fmul fast float %592, %580
  %596 = add i32 %22, 48
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = lshr i32 %598, 22
  %600 = shl nuw nsw i32 %599, 5
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = fmul fast float %601, %593
  %603 = select i1 %105, float %602, float %593
  %604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 1
  %610 = fmul fast float %603, %569
  %611 = fmul fast float %594, %570
  %612 = fmul fast float %595, %571
  %613 = call float @dx.op.dot3.f32(i32 55, float %610, float %611, float %612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %614 = select i1 %105, float 0.000000e+00, float %610
  %615 = select i1 %105, float %613, float %611
  %616 = select i1 %105, float 0.000000e+00, float %612
  %617 = call float @dx.op.dot3.f32(i32 55, float %578, float %579, float %580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %618 = add i32 %22, 32
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = lshr i32 %620, 8
  %624 = and i32 %623, 255
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %625, %617
  %627 = fadd fast float %626, %622
  %628 = fmul fast float %627, 0x3F70101020000000
  %629 = call float @dx.op.unary.f32(i32 7, float %628)  ; Saturate(value)
  %630 = and i32 %125, 8192
  %631 = icmp eq i32 %630, 0
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 0
  br i1 %631, label %640, label %634, !dx.controlflow.hints !65

; <label>:634                                     ; preds = %566
  %635 = add i32 %122, 176
  %636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = fcmp fast oge float %637, 0.000000e+00
  %639 = select i1 %638, float %637, float %633
  br label %647

; <label>:640                                     ; preds = %566
  %641 = add i32 %22, 72
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = bitcast i32 %643 to float
  %645 = fcmp fast oge float %644, 0.000000e+00
  %646 = select i1 %645, float %644, float %633
  br label %647

; <label>:647                                     ; preds = %640, %634
  %648 = phi float [ %639, %634 ], [ %646, %640 ]
  %649 = fmul fast float %617, %568
  %650 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %195, i32 %196, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = lshr i32 %651, 18
  %653 = uitofp i32 %652 to float
  %654 = fmul fast float %653, 0x3F4C00EBA0000000
  %655 = call float @dx.op.unary.f32(i32 21, float %654)  ; Exp(value)
  %656 = fadd fast float %655, -1.000000e+00
  %657 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %658 = extractvalue %dx.types.Dimensions %657, 0
  %659 = sitofp i32 %658 to float
  %660 = extractvalue %dx.types.Dimensions %657, 1
  %661 = sitofp i32 %660 to float
  %662 = fcmp fast oge float %193, %659
  %663 = fcmp fast oge float %194, %661
  %664 = or i1 %662, %663
  %665 = select i1 %664, float 0x4197782600000000, float %656
  %666 = icmp eq i32 %121, 3
  %667 = fcmp fast ogt float %43, %665
  %668 = and i1 %219, %667
  %669 = or i1 %666, %668
  %670 = icmp eq i32 %121, 2
  %671 = fcmp fast ole float %43, %665
  %672 = and i1 %670, %671
  %673 = or i1 %672, %669
  %674 = fmul fast float %487, %36
  %675 = fmul fast float %674, %603
  %676 = fmul fast float %675, %605
  %677 = fmul fast float %676, %609
  %678 = fmul fast float %488, %36
  %679 = fmul fast float %678, %594
  %680 = fmul fast float %679, %606
  %681 = fmul fast float %680, %609
  %682 = fmul fast float %489, %36
  %683 = fmul fast float %682, %595
  %684 = fmul fast float %683, %607
  %685 = fmul fast float %684, %609
  %686 = fadd fast float %677, %614
  %687 = fadd fast float %615, %681
  %688 = fadd fast float %685, %616
  %689 = fmul fast float %686, %567
  %690 = fmul fast float %687, %567
  %691 = fmul fast float %688, %567
  %692 = fmul fast float %648, %629
  %693 = fsub fast float 1.000000e+00, %629
  %694 = fsub fast float %693, %649
  %695 = call float @dx.op.unary.f32(i32 7, float %694)  ; Saturate(value)
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 3
  %698 = fmul fast float %697, %695
  %699 = fadd fast float %698, %692
  %700 = and i32 %125, 1048576
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %793, label %702, !dx.controlflow.hints !66

; <label>:702                                     ; preds = %647
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 2
  %705 = extractvalue %dx.types.CBufRet.f32 %703, 3
  %706 = fmul fast float %704, %47
  %707 = fmul fast float %705, %48
  %708 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  %709 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  %710 = select i1 %673, i32 2, i32 0
  %711 = or i32 %710, 1
  %712 = uitofp i32 %711 to float
  %713 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %708, float %709, float %712, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = extractvalue %dx.types.ResRet.f32 %713, 1
  %716 = extractvalue %dx.types.ResRet.f32 %713, 2
  %717 = extractvalue %dx.types.ResRet.f32 %713, 3
  %718 = add nuw nsw i32 %710, 2
  %719 = uitofp i32 %718 to float
  %720 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %708, float %709, float %719, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %721 = extractvalue %dx.types.ResRet.f32 %720, 0
  %722 = extractvalue %dx.types.ResRet.f32 %720, 1
  %723 = extractvalue %dx.types.ResRet.f32 %720, 2
  %724 = extractvalue %dx.types.ResRet.f32 %720, 3
  %725 = call float @dx.op.binary.f32(i32 35, float %715, float %716)  ; FMax(a,b)
  %726 = call float @dx.op.binary.f32(i32 35, float %714, float %725)  ; FMax(a,b)
  %727 = call float @dx.op.binary.f32(i32 35, float %726, float %717)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 36, float %722, float %723)  ; FMin(a,b)
  %729 = call float @dx.op.binary.f32(i32 36, float %721, float %728)  ; FMin(a,b)
  %730 = call float @dx.op.binary.f32(i32 36, float %729, float %724)  ; FMin(a,b)
  %731 = fmul fast float %727, 2.550000e+02
  %732 = fadd fast float %731, 0x3F70101020000000
  %733 = fptoui float %732 to i32
  %734 = fmul fast float %730, 2.550000e+02
  %735 = fadd fast float %734, 0x3F70101020000000
  %736 = fptoui float %735 to i32
  %737 = icmp ult i32 %733, %736
  br i1 %737, label %738, label %786

; <label>:738                                     ; preds = %702
  %739 = fcmp fast ogt float %42, 9.843750e-01
  %740 = fadd fast float %43, -4.000000e+00
  %741 = select i1 %739, float -4.000000e+00, float %740
  %742 = call float @dx.op.binary.f32(i32 35, float %741, float 0.000000e+00)  ; FMax(a,b)
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 0
  %745 = fadd fast float %744, %742
  %746 = extractvalue %dx.types.CBufRet.f32 %743, 2
  %747 = fmul fast float %745, %746
  %748 = call float @dx.op.unary.f32(i32 23, float %747)  ; Log(value)
  %749 = extractvalue %dx.types.CBufRet.f32 %743, 3
  %750 = fmul fast float %749, %748
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 2
  %753 = fmul fast float %750, %752
  %754 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %755 = uitofp i32 %733 to float
  %756 = uitofp i32 %736 to float
  %757 = fadd fast float %755, 5.000000e-01
  %758 = fadd fast float %756, 5.000000e-01
  %759 = fmul fast float %752, %757
  %760 = fmul fast float %752, %758
  %761 = fadd fast float %759, 0x3F0FFB4800000000
  %762 = fadd fast float %760, 0xBF0FFB4800000000
  %763 = call float @dx.op.binary.f32(i32 35, float %754, float %761)  ; FMax(a,b)
  %764 = call float @dx.op.binary.f32(i32 36, float %763, float %762)  ; FMin(a,b)
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 1
  %767 = extractvalue %dx.types.CBufRet.f32 %765, 2
  %768 = extractvalue %dx.types.CBufRet.f32 %765, 0
  %769 = select i1 %673, float %768, float 0.000000e+00
  %770 = fmul fast float %766, %764
  %771 = fadd fast float %769, %770
  %772 = fadd fast float %769, %767
  %773 = fsub fast float %766, %767
  %774 = fadd fast float %773, %769
  %775 = call float @dx.op.binary.f32(i32 35, float %771, float %772)  ; FMax(a,b)
  %776 = call float @dx.op.binary.f32(i32 36, float %775, float %774)  ; FMin(a,b)
  %777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %708, float %709, float %776, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 1
  %783 = fmul fast float %782, %778
  %784 = fmul fast float %782, %779
  %785 = fmul fast float %782, %780
  br label %786

; <label>:786                                     ; preds = %738, %702
  %787 = phi float [ %783, %738 ], [ 1.000000e+00, %702 ]
  %788 = phi float [ %784, %738 ], [ 1.000000e+00, %702 ]
  %789 = phi float [ %785, %738 ], [ 1.000000e+00, %702 ]
  %790 = fmul fast float %787, %689
  %791 = fmul fast float %788, %690
  %792 = fmul fast float %789, %691
  br label %793

; <label>:793                                     ; preds = %786, %647
  %794 = phi float [ %790, %786 ], [ %689, %647 ]
  %795 = phi float [ %791, %786 ], [ %690, %647 ]
  %796 = phi float [ %792, %786 ], [ %691, %647 ]
  %797 = and i32 %125, 2097152
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %803, label %799, !dx.controlflow.hints !67

; <label>:799                                     ; preds = %793
  %800 = add i32 %122, 192
  %801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  br label %806

; <label>:803                                     ; preds = %793
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 3
  br label %806

; <label>:806                                     ; preds = %803, %799
  %807 = phi float [ %802, %799 ], [ %805, %803 ]
  br i1 %668, label %808, label %892

; <label>:808                                     ; preds = %806
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %811 = extractvalue %dx.types.CBufRet.f32 %809, 3
  %812 = fmul fast float %810, %47
  %813 = fmul fast float %811, %48
  %814 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  %815 = call float @dx.op.unary.f32(i32 7, float %813)  ; Saturate(value)
  %816 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %814, float %815, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = extractvalue %dx.types.ResRet.f32 %816, 1
  %819 = extractvalue %dx.types.ResRet.f32 %816, 2
  %820 = extractvalue %dx.types.ResRet.f32 %816, 3
  %821 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %814, float %815, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  %823 = extractvalue %dx.types.ResRet.f32 %821, 1
  %824 = extractvalue %dx.types.ResRet.f32 %821, 2
  %825 = extractvalue %dx.types.ResRet.f32 %821, 3
  %826 = call float @dx.op.binary.f32(i32 35, float %818, float %819)  ; FMax(a,b)
  %827 = call float @dx.op.binary.f32(i32 35, float %817, float %826)  ; FMax(a,b)
  %828 = call float @dx.op.binary.f32(i32 35, float %827, float %820)  ; FMax(a,b)
  %829 = call float @dx.op.binary.f32(i32 36, float %823, float %824)  ; FMin(a,b)
  %830 = call float @dx.op.binary.f32(i32 36, float %822, float %829)  ; FMin(a,b)
  %831 = call float @dx.op.binary.f32(i32 36, float %830, float %825)  ; FMin(a,b)
  %832 = fmul fast float %828, 2.550000e+02
  %833 = fadd fast float %832, 0x3F70101020000000
  %834 = fptoui float %833 to i32
  %835 = fmul fast float %831, 2.550000e+02
  %836 = fadd fast float %835, 0x3F70101020000000
  %837 = fptoui float %836 to i32
  %838 = icmp ult i32 %834, %837
  br i1 %838, label %839, label %881

; <label>:839                                     ; preds = %808
  %840 = fcmp fast ogt float %42, 9.843750e-01
  %841 = fadd fast float %43, -4.000000e+00
  %842 = select i1 %840, float -4.000000e+00, float %841
  %843 = call float @dx.op.binary.f32(i32 35, float %842, float 0.000000e+00)  ; FMax(a,b)
  %844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %845 = extractvalue %dx.types.CBufRet.f32 %844, 0
  %846 = fadd fast float %845, %843
  %847 = extractvalue %dx.types.CBufRet.f32 %844, 2
  %848 = fmul fast float %846, %847
  %849 = call float @dx.op.unary.f32(i32 23, float %848)  ; Log(value)
  %850 = extractvalue %dx.types.CBufRet.f32 %844, 3
  %851 = fmul fast float %850, %849
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 2
  %854 = fmul fast float %851, %853
  %855 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  %856 = uitofp i32 %834 to float
  %857 = uitofp i32 %837 to float
  %858 = fadd fast float %856, 5.000000e-01
  %859 = fadd fast float %857, 5.000000e-01
  %860 = fmul fast float %853, %858
  %861 = fmul fast float %853, %859
  %862 = fadd fast float %860, 0x3F0FFB4800000000
  %863 = fadd fast float %861, 0xBF0FFB4800000000
  %864 = call float @dx.op.binary.f32(i32 35, float %855, float %862)  ; FMax(a,b)
  %865 = call float @dx.op.binary.f32(i32 36, float %864, float %863)  ; FMin(a,b)
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 1
  %868 = extractvalue %dx.types.CBufRet.f32 %866, 2
  %869 = extractvalue %dx.types.CBufRet.f32 %866, 0
  %870 = fmul fast float %867, %865
  %871 = fadd fast float %869, %870
  %872 = fadd fast float %869, %868
  %873 = fsub fast float %867, %868
  %874 = fadd fast float %873, %869
  %875 = call float @dx.op.binary.f32(i32 35, float %871, float %872)  ; FMax(a,b)
  %876 = call float @dx.op.binary.f32(i32 36, float %875, float %874)  ; FMin(a,b)
  %877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %814, float %815, float %876, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %878 = extractvalue %dx.types.ResRet.f32 %877, 0
  %879 = extractvalue %dx.types.ResRet.f32 %877, 1
  %880 = extractvalue %dx.types.ResRet.f32 %877, 2
  br label %881

; <label>:881                                     ; preds = %839, %808
  %882 = phi float [ %878, %839 ], [ 1.000000e+00, %808 ]
  %883 = phi float [ %879, %839 ], [ 1.000000e+00, %808 ]
  %884 = phi float [ %880, %839 ], [ 1.000000e+00, %808 ]
  %885 = call float @dx.op.dot3.f32(i32 55, float %882, float %883, float %884, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %886 = select i1 %105, float %885, float %882
  %887 = select i1 %105, float %885, float %883
  %888 = select i1 %105, float 1.000000e+00, float %884
  %889 = fmul fast float %886, %794
  %890 = fmul fast float %887, %795
  %891 = fmul fast float %888, %796
  br label %892

; <label>:892                                     ; preds = %881, %806
  %893 = phi float [ %665, %881 ], [ %43, %806 ]
  %894 = phi float [ %889, %881 ], [ %794, %806 ]
  %895 = phi float [ %890, %881 ], [ %795, %806 ]
  %896 = phi float [ %891, %881 ], [ %796, %806 ]
  %897 = phi float [ %882, %881 ], [ 1.000000e+00, %806 ]
  br i1 %673, label %1140, label %898

; <label>:898                                     ; preds = %892
  %899 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = extractvalue %dx.types.ResRet.f32 %899, 1
  %902 = extractvalue %dx.types.ResRet.f32 %899, 2
  %903 = fmul fast float %900, %897
  %904 = call float @dx.op.dot3.f32(i32 55, float %900, float %901, float %902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %905 = select i1 %105, float %904, float %900
  %906 = select i1 %105, float %904, float %901
  %907 = select i1 %105, float 1.000000e+00, float %902
  %908 = fmul fast float %905, %894
  %909 = fmul fast float %906, %895
  %910 = fmul fast float %907, %896
  %911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.i32 %911, 0
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %1140, label %914, !dx.controlflow.hints !68

; <label>:914                                     ; preds = %898
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 2
  %917 = extractvalue %dx.types.CBufRet.f32 %915, 3
  %918 = fmul fast float %916, %47
  %919 = fmul fast float %917, %48
  %920 = fmul fast float %918, 2.000000e+00
  %921 = fmul fast float %919, 2.000000e+00
  %922 = fsub fast float 1.000000e+00, %920
  %923 = fsub fast float 1.000000e+00, %921
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 0
  %926 = extractvalue %dx.types.CBufRet.f32 %924, 1
  %927 = extractvalue %dx.types.CBufRet.f32 %924, 2
  %928 = fmul fast float %922, %925
  %929 = fmul fast float %922, %926
  %930 = fmul fast float %922, %927
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %933 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %934 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %935 = fmul fast float %923, %932
  %936 = fmul fast float %923, %933
  %937 = fmul fast float %923, %934
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 1
  %941 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %942 = fadd fast float %935, %939
  %943 = fadd fast float %942, %928
  %944 = fadd fast float %936, %940
  %945 = fadd fast float %944, %929
  %946 = fadd fast float %937, %941
  %947 = fadd fast float %946, %930
  %948 = fmul fast float %943, %893
  %949 = fmul fast float %945, %893
  %950 = fmul fast float %947, %893
  %951 = fmul fast float %948, %948
  %952 = fmul fast float %949, %949
  %953 = fadd fast float %951, %952
  %954 = fmul fast float %950, %950
  %955 = fadd fast float %953, %954
  %956 = call float @dx.op.unary.f32(i32 24, float %955)  ; Sqrt(value)
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = fsub fast float %956, %958
  %960 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %961 = fmul fast float %959, %960
  %962 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  %963 = fadd fast float %962, -5.000000e-01
  %964 = fmul fast float %963, 2.000000e+00
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %967 = call float @dx.op.binary.f32(i32 36, float %966, float %964)  ; FMin(a,b)
  %968 = fsub fast float -0.000000e+00, %966
  %969 = fcmp fast ogt float %967, %968
  br i1 %969, label %970, label %1140, !dx.controlflow.hints !69

; <label>:970                                     ; preds = %914
  %971 = fmul fast float %967, 5.000000e-01
  %972 = fadd fast float %971, 5.000000e-01
  %973 = call float @dx.op.unary.f32(i32 22, float %972)  ; Frc(value)
  %974 = call float @dx.op.unary.f32(i32 27, float %973)  ; Round_ni(value)
  %975 = call float @dx.op.unary.f32(i32 22, float %973)  ; Frc(value)
  %976 = fmul fast float %975, 2.000000e+00
  %977 = fadd fast float %976, -1.000000e+00
  %978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %918, float %919, float %974, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %979 = extractvalue %dx.types.ResRet.f32 %978, 0
  %980 = extractvalue %dx.types.ResRet.f32 %978, 1
  %981 = extractvalue %dx.types.ResRet.f32 %978, 2
  %982 = extractvalue %dx.types.ResRet.f32 %978, 3
  %983 = fadd fast float %979, -5.000000e-01
  %984 = fadd fast float %981, -5.000000e-01
  %985 = fmul fast float %983, 0xBFD5555560000000
  %986 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %984, float %985)  ; FMad(a,b,c)
  %987 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %980, float 0.000000e+00)  ; FMad(a,b,c)
  %988 = fadd fast float %987, %982
  %989 = fmul fast float %983, -7.500000e-01
  %990 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %984, float %989)  ; FMad(a,b,c)
  %991 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %980, float 0.000000e+00)  ; FMad(a,b,c)
  %992 = fadd fast float %991, %982
  %993 = call float @dx.op.binary.f32(i32 35, float %986, float -1.000000e+00)  ; FMax(a,b)
  %994 = call float @dx.op.binary.f32(i32 35, float %988, float -1.000000e+00)  ; FMax(a,b)
  %995 = call float @dx.op.binary.f32(i32 35, float %990, float -1.000000e+00)  ; FMax(a,b)
  %996 = call float @dx.op.binary.f32(i32 35, float %992, float -1.000000e+00)  ; FMax(a,b)
  %997 = call float @dx.op.binary.f32(i32 36, float %993, float 1.000000e+00)  ; FMin(a,b)
  %998 = call float @dx.op.binary.f32(i32 36, float %994, float 1.000000e+00)  ; FMin(a,b)
  %999 = call float @dx.op.binary.f32(i32 36, float %995, float 1.000000e+00)  ; FMin(a,b)
  %1000 = call float @dx.op.binary.f32(i32 36, float %996, float 1.000000e+00)  ; FMin(a,b)
  %1001 = fcmp fast olt float %997, 0x3FEFFF8020000000
  br i1 %1001, label %1002, label %1117, !dx.controlflow.hints !70

; <label>:1002                                    ; preds = %970
  %1003 = extractvalue %dx.types.CBufRet.f32 %965, 3
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1008 = extractvalue %dx.types.CBufRet.f32 %1004, 3
  %1009 = fsub fast float %1005, %997
  %1010 = fsub fast float %1006, %998
  %1011 = fsub fast float %1007, %999
  %1012 = fsub fast float %1008, %1000
  %1013 = fmul fast float %1009, %1003
  %1014 = fmul fast float %1010, %1003
  %1015 = fmul fast float %1011, %1003
  %1016 = fmul fast float %1012, %1003
  %1017 = fadd fast float %1013, %997
  %1018 = fadd fast float %1014, %998
  %1019 = fsub fast float -0.000000e+00, %1018
  %1020 = fadd fast float %1015, %999
  %1021 = fadd fast float %1016, %1000
  %1022 = fmul fast float %1017, %1017
  %1023 = fsub fast float %1018, %1022
  %1024 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1023)  ; FMax(a,b)
  %1025 = fdiv fast float 1.000000e+00, %1024
  %1026 = fmul fast float %1018, %1017
  %1027 = fsub fast float %1020, %1026
  %1028 = fsub fast float %977, %1017
  %1029 = fmul fast float %977, %977
  %1030 = fsub fast float %1029, %1018
  %1031 = fmul fast float %1028, %1025
  %1032 = fmul fast float %1031, %1027
  %1033 = fsub fast float %1030, %1032
  %1034 = fmul fast float %1018, %1018
  %1035 = fsub fast float %1021, %1034
  %1036 = fmul fast float %1027, %1027
  %1037 = fmul fast float %1036, %1025
  %1038 = fsub fast float %1035, %1037
  %1039 = fdiv fast float %1033, %1038
  %1040 = fmul fast float %1027, %1039
  %1041 = fsub fast float %1028, %1040
  %1042 = fmul fast float %1041, %1025
  %1043 = fmul fast float %1042, %1017
  %1044 = fsub fast float 1.000000e+00, %1043
  %1045 = fmul fast float %1018, %1039
  %1046 = fsub fast float %1044, %1045
  %1047 = fmul fast float %1042, %1042
  %1048 = fmul fast float %1039, 4.000000e+00
  %1049 = fmul fast float %1048, %1046
  %1050 = fsub fast float %1047, %1049
  %1051 = call float @dx.op.unary.f32(i32 24, float %1050)  ; Sqrt(value)
  %1052 = fcmp fast oge float %1042, 0.000000e+00
  %1053 = fsub fast float -0.000000e+00, %1051
  %1054 = select i1 %1052, float %1053, float %1051
  %1055 = fsub fast float %1054, %1042
  %1056 = fdiv fast float %1055, %1039
  %1057 = fdiv fast float %1046, %1055
  %1058 = fmul fast float %1056, 5.000000e-01
  %1059 = fmul fast float %1057, 2.000000e+00
  %1060 = select i1 %1052, float %1058, float %1059
  %1061 = select i1 %1052, float %1059, float %1058
  %1062 = call float @dx.op.binary.f32(i32 35, float %1060, float %1061)  ; FMax(a,b)
  %1063 = call float @dx.op.binary.f32(i32 36, float %1060, float %1061)  ; FMin(a,b)
  %1064 = fcmp fast ogt float %977, %1063
  br i1 %1064, label %1065, label %1075

; <label>:1065                                    ; preds = %1002
  %1066 = fsub fast float %977, %1063
  %1067 = fsub fast float %1062, %1063
  %1068 = fmul fast float %1066, %1067
  %1069 = fmul fast float %1062, %977
  %1070 = fadd fast float %1062, %977
  %1071 = fmul fast float %1070, %1017
  %1072 = fadd fast float %1069, %1018
  %1073 = fsub fast float %1072, %1071
  %1074 = fdiv fast float %1073, %1068
  br label %1075

; <label>:1075                                    ; preds = %1065, %1002
  %1076 = phi float [ %1074, %1065 ], [ 0.000000e+00, %1002 ]
  %1077 = fcmp fast ogt float %977, %1062
  %1078 = fsub fast float %977, %1062
  br i1 %1077, label %1079, label %1089

; <label>:1079                                    ; preds = %1075
  %1080 = fsub fast float %1062, %1063
  %1081 = fmul fast float %1080, %1078
  %1082 = fmul fast float %1063, %977
  %1083 = fadd fast float %1063, %977
  %1084 = fmul fast float %1083, %1017
  %1085 = fsub fast float %1019, %1082
  %1086 = fadd fast float %1085, %1084
  %1087 = fdiv fast float %1086, %1081
  %1088 = fadd fast float %1087, %1076
  br label %1089

; <label>:1089                                    ; preds = %1079, %1075
  %1090 = phi float [ %1088, %1079 ], [ %1076, %1075 ]
  %1091 = fsub fast float %977, %1063
  %1092 = fmul fast float %1091, %1078
  %1093 = fmul fast float %1063, %1062
  %1094 = fadd fast float %1063, %1062
  %1095 = fmul fast float %1094, %1017
  %1096 = fadd fast float %1093, %1018
  %1097 = fsub fast float %1096, %1095
  %1098 = fdiv fast float %1097, %1092
  %1099 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  %1100 = fcmp fast oeq float %807, 0.000000e+00
  %1101 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %1102 = fcmp fast oeq float %1101, 0.000000e+00
  %1103 = or i1 %1100, %1102
  %1104 = fmul fast float %1101, 2.000000e+00
  %1105 = fadd fast float %966, %967
  %1106 = fdiv fast float %1105, %1104
  %1107 = call float @dx.op.unary.f32(i32 7, float %1106)  ; Saturate(value)
  %1108 = fmul fast float %1107, 2.000000e+00
  %1109 = fsub fast float 3.000000e+00, %1108
  %1110 = fmul fast float %1107, %1107
  %1111 = fmul fast float %1110, %1109
  %1112 = select i1 %1103, float 1.000000e+00, float %1111
  %1113 = fmul fast float %1098, %807
  %1114 = fadd fast float %1099, %1113
  %1115 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  %1116 = fmul fast float %1112, %1115
  br label %1117

; <label>:1117                                    ; preds = %1089, %970
  %1118 = phi float [ %1116, %1089 ], [ 0.000000e+00, %970 ]
  %1119 = fsub fast float 1.000000e+00, %1118
  %1120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %918, float %919, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.i32 %1122, 2
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1130, label %1125

; <label>:1125                                    ; preds = %1117
  %1126 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1127 = fadd fast float %1121, -1.000000e+00
  %1128 = fmul fast float %1126, %1127
  %1129 = fadd fast float %1128, 1.000000e+00
  br label %1130

; <label>:1130                                    ; preds = %1125, %1117
  %1131 = phi float [ %1129, %1125 ], [ %1119, %1117 ]
  %1132 = call float @dx.op.binary.f32(i32 35, float %1121, float %1131)  ; FMax(a,b)
  %1133 = fmul fast float %1132, %903
  %1134 = call float @dx.op.dot3.f32(i32 55, float %1132, float %1132, float %1132, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1135 = select i1 %105, float %1134, float %1132
  %1136 = select i1 %105, float 1.000000e+00, float %1132
  %1137 = fmul fast float %1135, %908
  %1138 = fmul fast float %1135, %909
  %1139 = fmul fast float %1136, %910
  br label %1140

; <label>:1140                                    ; preds = %1130, %914, %898, %892
  %1141 = phi float [ %894, %892 ], [ %908, %898 ], [ %1137, %1130 ], [ %908, %914 ]
  %1142 = phi float [ %895, %892 ], [ %909, %898 ], [ %1138, %1130 ], [ %909, %914 ]
  %1143 = phi float [ %896, %892 ], [ %910, %898 ], [ %1139, %1130 ], [ %910, %914 ]
  %1144 = phi float [ %897, %892 ], [ %903, %898 ], [ %1133, %1130 ], [ %903, %914 ]
  %1145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1146 = extractvalue %dx.types.CBufRet.f32 %1145, 2
  %1147 = extractvalue %dx.types.CBufRet.f32 %1145, 3
  %1148 = fmul fast float %1146, %47
  %1149 = fmul fast float %1147, %48
  %1150 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1151 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  %1152 = select i1 %673, i32 2, i32 0
  %1153 = or i32 %1152, 1
  %1154 = uitofp i32 %1153 to float
  %1155 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1150, float %1151, float %1154, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1157 = extractvalue %dx.types.ResRet.f32 %1155, 1
  %1158 = extractvalue %dx.types.ResRet.f32 %1155, 2
  %1159 = extractvalue %dx.types.ResRet.f32 %1155, 3
  %1160 = add nuw nsw i32 %1152, 2
  %1161 = uitofp i32 %1160 to float
  %1162 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1150, float %1151, float %1161, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = extractvalue %dx.types.ResRet.f32 %1162, 1
  %1165 = extractvalue %dx.types.ResRet.f32 %1162, 2
  %1166 = extractvalue %dx.types.ResRet.f32 %1162, 3
  %1167 = call float @dx.op.binary.f32(i32 35, float %1157, float %1158)  ; FMax(a,b)
  %1168 = call float @dx.op.binary.f32(i32 35, float %1156, float %1167)  ; FMax(a,b)
  %1169 = call float @dx.op.binary.f32(i32 35, float %1168, float %1159)  ; FMax(a,b)
  %1170 = call float @dx.op.binary.f32(i32 36, float %1164, float %1165)  ; FMin(a,b)
  %1171 = call float @dx.op.binary.f32(i32 36, float %1163, float %1170)  ; FMin(a,b)
  %1172 = call float @dx.op.binary.f32(i32 36, float %1171, float %1166)  ; FMin(a,b)
  %1173 = fmul fast float %1169, 2.550000e+02
  %1174 = fadd fast float %1173, 0x3F70101020000000
  %1175 = fptoui float %1174 to i32
  %1176 = fmul fast float %1172, 2.550000e+02
  %1177 = fadd fast float %1176, 0x3F70101020000000
  %1178 = fptoui float %1177 to i32
  %1179 = icmp ult i32 %1175, %1178
  br i1 %1179, label %1180, label %1223

; <label>:1180                                    ; preds = %1140
  %1181 = fcmp fast ogt float %42, 9.843750e-01
  %1182 = fadd fast float %893, -4.000000e+00
  %1183 = select i1 %1181, float -4.000000e+00, float %1182
  %1184 = call float @dx.op.binary.f32(i32 35, float %1183, float 0.000000e+00)  ; FMax(a,b)
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1187 = fadd fast float %1186, %1184
  %1188 = extractvalue %dx.types.CBufRet.f32 %1185, 2
  %1189 = fmul fast float %1187, %1188
  %1190 = call float @dx.op.unary.f32(i32 23, float %1189)  ; Log(value)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1185, 3
  %1192 = fmul fast float %1191, %1190
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 2
  %1195 = fmul fast float %1192, %1194
  %1196 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1197 = uitofp i32 %1175 to float
  %1198 = uitofp i32 %1178 to float
  %1199 = fadd fast float %1197, 5.000000e-01
  %1200 = fadd fast float %1198, 5.000000e-01
  %1201 = fmul fast float %1194, %1199
  %1202 = fmul fast float %1194, %1200
  %1203 = fadd fast float %1201, 0x3F0FFB4800000000
  %1204 = fadd fast float %1202, 0xBF0FFB4800000000
  %1205 = call float @dx.op.binary.f32(i32 35, float %1196, float %1203)  ; FMax(a,b)
  %1206 = call float @dx.op.binary.f32(i32 36, float %1205, float %1204)  ; FMin(a,b)
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 1
  %1209 = extractvalue %dx.types.CBufRet.f32 %1207, 2
  %1210 = extractvalue %dx.types.CBufRet.f32 %1207, 0
  %1211 = select i1 %673, float %1210, float 0.000000e+00
  %1212 = fmul fast float %1208, %1206
  %1213 = fadd fast float %1211, %1212
  %1214 = fadd fast float %1211, %1209
  %1215 = fsub fast float %1208, %1209
  %1216 = fadd fast float %1215, %1211
  %1217 = call float @dx.op.binary.f32(i32 35, float %1213, float %1214)  ; FMax(a,b)
  %1218 = call float @dx.op.binary.f32(i32 36, float %1217, float %1216)  ; FMin(a,b)
  %1219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1150, float %1151, float %1218, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.ResRet.f32 %1219, 1
  %1222 = extractvalue %dx.types.ResRet.f32 %1219, 2
  br label %1223

; <label>:1223                                    ; preds = %1180, %1140
  %1224 = phi float [ %1220, %1180 ], [ 1.000000e+00, %1140 ]
  %1225 = phi float [ %1221, %1180 ], [ 1.000000e+00, %1140 ]
  %1226 = phi float [ %1222, %1180 ], [ 1.000000e+00, %1140 ]
  %1227 = fmul fast float %1224, %1144
  %1228 = call float @dx.op.dot3.f32(i32 55, float %1224, float %1225, float %1226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1229 = select i1 %105, float %1228, float %1224
  %1230 = select i1 %105, float %1228, float %1225
  %1231 = select i1 %105, float 1.000000e+00, float %1226
  %1232 = fmul fast float %1229, %1141
  %1233 = fmul fast float %1230, %1142
  %1234 = fmul fast float %1231, %1143
  %1235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.i32 %1235, 3
  %1237 = and i32 %1236, 3
  %1238 = icmp ne i32 %1237, 0
  %1239 = and i32 %1236, 4
  %1240 = icmp ne i32 %1239, 0
  %1241 = and i1 %1238, %1240
  %1242 = and i1 %105, %1241
  br i1 %1242, label %1243, label %1249

; <label>:1243                                    ; preds = %1223
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 1
  %1246 = fadd fast float %1227, -1.000000e+00
  %1247 = fmul fast float %1245, %1246
  %1248 = fadd fast float %1247, 1.000000e+00
  br label %1249

; <label>:1249                                    ; preds = %1243, %1223
  %1250 = phi float [ %1248, %1243 ], [ %1227, %1223 ]
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  br i1 %105, label %1253, label %1273

; <label>:1253                                    ; preds = %1249
  %1254 = fadd fast float %1232, %1233
  %1255 = fmul fast float %1252, %1254
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 3
  %1258 = extractvalue %dx.types.CBufRet.f32 %696, 1
  %1259 = fsub fast float %699, %1258
  %1260 = extractvalue %dx.types.CBufRet.f32 %696, 2
  %1261 = fmul fast float %1259, %1260
  %1262 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1263 = fsub fast float %1262, %1257
  %1264 = fmul fast float %1263, %1250
  %1265 = fadd fast float %1264, %1257
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1268 = fsub fast float %1265, %1267
  %1269 = fmul fast float %1268, 1.000000e+01
  %1270 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1271 = fmul fast float %1270, %649
  %1272 = fmul fast float %1265, %1271
  br label %1282

; <label>:1273                                    ; preds = %1249
  %1274 = fmul fast float %1252, %1232
  %1275 = fmul fast float %1252, %1233
  %1276 = fmul fast float %1234, %1252
  %1277 = call float @dx.op.binary.f32(i32 35, float %1275, float %1276)  ; FMax(a,b)
  %1278 = call float @dx.op.binary.f32(i32 35, float %1274, float %1277)  ; FMax(a,b)
  %1279 = call float @dx.op.binary.f32(i32 35, float %1278, float 0.000000e+00)  ; FMax(a,b)
  %1280 = fcmp fast ugt float %1279, 0x3F10000000000000
  br i1 %1280, label %1282, label %1281

; <label>:1281                                    ; preds = %1273
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1282

; <label>:1282                                    ; preds = %1281, %1273, %1253
  %1283 = phi float [ %1255, %1253 ], [ %1274, %1281 ], [ %1274, %1273 ]
  %1284 = phi float [ %1272, %1253 ], [ %1275, %1281 ], [ %1275, %1273 ]
  %1285 = phi float [ %1271, %1253 ], [ %1276, %1281 ], [ %1276, %1273 ]
  %1286 = phi float [ %1271, %1253 ], [ 0.000000e+00, %1281 ], [ 0.000000e+00, %1273 ]
  %1287 = fadd fast float %506, 0x3FE3C6EF40000000
  %1288 = call float @dx.op.unary.f32(i32 22, float %1287)  ; Frc(value)
  %1289 = call float @dx.op.unary.f32(i32 23, float %1283)  ; Log(value)
  %1290 = fadd fast float %1289, -7.000000e+00
  %1291 = call float @dx.op.unary.f32(i32 21, float %1290)  ; Exp(value)
  %1292 = fmul fast float %1288, 2.000000e+00
  %1293 = fadd fast float %1292, -1.000000e+00
  %1294 = fmul fast float %1291, %1293
  %1295 = fcmp fast ogt float %1283, 0.000000e+00
  %1296 = select i1 %1295, float %1294, float 0.000000e+00
  %1297 = fadd fast float %1296, %1283
  %1298 = fadd fast float %506, 0x3FF3C6EF40000000
  %1299 = call float @dx.op.unary.f32(i32 22, float %1298)  ; Frc(value)
  %1300 = call float @dx.op.unary.f32(i32 23, float %1284)  ; Log(value)
  %1301 = fadd fast float %1300, -7.000000e+00
  %1302 = call float @dx.op.unary.f32(i32 21, float %1301)  ; Exp(value)
  %1303 = fmul fast float %1299, 2.000000e+00
  %1304 = fadd fast float %1303, -1.000000e+00
  %1305 = fmul fast float %1302, %1304
  %1306 = fcmp fast ogt float %1284, 0.000000e+00
  %1307 = select i1 %1306, float %1305, float 0.000000e+00
  %1308 = fadd fast float %1307, %1284
  %1309 = fadd fast float %506, 0x3FFDAA66E0000000
  %1310 = call float @dx.op.unary.f32(i32 22, float %1309)  ; Frc(value)
  %1311 = call float @dx.op.unary.f32(i32 23, float %1285)  ; Log(value)
  %1312 = fadd fast float %1311, -6.000000e+00
  %1313 = call float @dx.op.unary.f32(i32 21, float %1312)  ; Exp(value)
  %1314 = fmul fast float %1310, 2.000000e+00
  %1315 = fadd fast float %1314, -1.000000e+00
  %1316 = fmul fast float %1313, %1315
  %1317 = fcmp fast ogt float %1285, 0.000000e+00
  %1318 = select i1 %1317, float %1316, float 0.000000e+00
  %1319 = fadd fast float %1318, %1285
  %1320 = select i1 %105, float %1284, float %1308
  %1321 = select i1 %105, float %1285, float %1319
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1322 = call float @dx.op.binary.f32(i32 36, float %1297, float 3.225500e+04)  ; FMin(a,b)
  %1323 = call float @dx.op.binary.f32(i32 36, float %1320, float 3.225500e+04)  ; FMin(a,b)
  %1324 = call float @dx.op.binary.f32(i32 36, float %1321, float 3.225500e+04)  ; FMin(a,b)
  %1325 = call float @dx.op.binary.f32(i32 36, float %1286, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1322)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1323)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1324)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1325)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1286)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1286)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1286)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1286)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !58}
!35 = !{!36, !54, null}
!36 = !{!37, !40, !42, !44, !46, !48, !50, !51, !53}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 8}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 3, i8 0, !39}
!45 = !{i32 3}
!46 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !47, i8 3, i32 1, i8 2, i32 4, i8 0, !43}
!47 = !{i32 5}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 5, i8 0, !39}
!49 = !{i32 8}
!50 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 6, i8 0, !39}
!51 = !{i32 7, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 7, i8 0, !52}
!52 = !{i32 3, i32 5}
!53 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!54 = !{!55, !56}
!55 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!56 = !{i32 1, !"SV_Target", i8 9, i8 16, !57, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!57 = !{i32 1}
!58 = !{i32 0, i64 24}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}

