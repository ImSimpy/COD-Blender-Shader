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
; shader hash: 3afc2cebaa2474bf125f34de157aceed
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
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32          2d      T2     t37,space2     1
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t77,space2     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture     f32          2d      T6             t0     1
;                                   texture     f32          2d      T7     t57,space2     1
;                                   texture    byte         r/o      T8     t69,space1     1
;                                   texture     u32          2d      T9     t56,space2     1
;                                   texture     f32          3d     T10     t45,space2     1
;                                   texture     f32     2darray     T11     t47,space2     1
;                                   textureunorm_f32     2darray     T12     t85,space2     1
;                                   texture     f32          2d     T13     t83,space2     1
;                                   texture     f32     2darray     T14             t1     1
;                                   texture    byte         r/o     T15             t2     1
;                                   texture     f32          3d     T16     t46,space2     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = fmul fast float %47, %41
  %49 = fmul fast float %47, %42
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %53 = fmul fast float %48, 2.000000e+00
  %54 = fmul fast float %53, %51
  %55 = fmul fast float %49, 2.000000e+00
  %56 = fmul fast float %55, %52
  %57 = fsub fast float 1.000000e+00, %54
  %58 = fsub fast float 1.000000e+00, %56
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fmul fast float %57, %60
  %64 = fmul fast float %57, %61
  %65 = fmul fast float %57, %62
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = fmul fast float %58, %67
  %71 = fmul fast float %58, %68
  %72 = fmul fast float %58, %69
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fadd fast float %70, %74
  %78 = fadd fast float %77, %63
  %79 = fadd fast float %71, %75
  %80 = fadd fast float %79, %64
  %81 = fadd fast float %72, %76
  %82 = fadd fast float %81, %65
  %83 = fmul fast float %78, %44
  %84 = fmul fast float %80, %44
  %85 = fmul fast float %82, %44
  %86 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.i32 %86, 3
  %88 = and i32 %87, 3
  %89 = icmp ne i32 %88, 0
  %90 = and i32 %87, 4
  %91 = icmp ne i32 %90, 0
  %92 = and i1 %89, %91
  br i1 %92, label %93, label %102

; <label>:93                                      ; preds = %0
  %94 = fmul fast float %52, %49
  %95 = fmul fast float %51, %48
  %96 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %18, float %95, float %94, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = fsub fast float 1.000000e+00, %97
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = fcmp fast olt float %98, %100
  br label %105

; <label>:102                                     ; preds = %0
  %103 = icmp eq i32 %90, 0
  %104 = and i1 %89, %103
  br label %105

; <label>:105                                     ; preds = %102, %93
  %106 = phi i1 [ %101, %93 ], [ %104, %102 ]
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %110 = fmul fast float %108, %48
  %111 = fmul fast float %109, %49
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = and i32 %113, 114688
  %115 = icmp ne i32 %114, 0
  %116 = select i1 %115, float %110, float 0.000000e+00
  %117 = select i1 %115, float %111, float 0.000000e+00
  %118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %19, float %116, float %117, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = fmul fast float %119, 2.550000e+02
  %121 = fptoui float %120 to i32
  %122 = select i1 %115, i32 %121, i32 0
  %123 = mul i32 %22, 208
  %124 = add i32 %123, 188
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = and i32 %87, 114688
  %128 = and i32 %87, 8
  %129 = icmp ne i32 %128, 0
  %130 = or i1 %106, %129
  %131 = select i1 %130, i32 %127, i32 16384
  %132 = and i32 %131, %126
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

; <label>:134                                     ; preds = %105
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %135

; <label>:135                                     ; preds = %134, %105
  %136 = add i32 %23, 112
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %136, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = add i32 %138, 0
  %140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %141 = add i32 %23, 108
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %141, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = add i32 %143, 0
  %145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %145, %dx.types.Handle %17, float %38, float %39, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = extractvalue %dx.types.ResRet.f32 %146, 1
  %149 = extractvalue %dx.types.ResRet.f32 %146, 2
  %150 = fmul fast float %147, 2.000000e+00
  %151 = fmul fast float %148, 2.000000e+00
  %152 = fadd fast float %150, -1.000000e+00
  %153 = fadd fast float %151, -1.000000e+00
  %154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %140, %dx.types.Handle %17, float %38, float %39, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = extractvalue %dx.types.ResRet.f32 %154, 3
  %157 = add i32 %23, 72
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = extractvalue %dx.types.ResRet.i32 %158, 1
  %161 = bitcast i32 %159 to float
  %162 = bitcast i32 %160 to float
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %165 = fmul fast float %162, 5.000000e-01
  %166 = fadd fast float %164, %156
  %167 = fadd fast float %166, %165
  %168 = fdiv fast float %166, %162
  %169 = fdiv fast float %167, %162
  %170 = fsub fast float -0.000000e+00, %168
  %171 = fsub fast float -0.000000e+00, %169
  %172 = fcmp fast oge float %168, %170
  %173 = fcmp fast oge float %169, %171
  %174 = call float @dx.op.unary.f32(i32 6, float %168)  ; FAbs(value)
  %175 = call float @dx.op.unary.f32(i32 6, float %169)  ; FAbs(value)
  %176 = call float @dx.op.unary.f32(i32 22, float %174)  ; Frc(value)
  %177 = call float @dx.op.unary.f32(i32 22, float %175)  ; Frc(value)
  %178 = fsub fast float -0.000000e+00, %176
  %179 = fsub fast float -0.000000e+00, %177
  %180 = select i1 %172, float %176, float %178
  %181 = select i1 %173, float %177, float %179
  %182 = fmul fast float %180, %162
  %183 = fmul fast float %181, %162
  %184 = fmul fast float %161, %149
  %185 = fmul fast float %184, %152
  %186 = fmul fast float %184, %153
  %187 = fmul fast float %182, %185
  %188 = fmul fast float %182, %186
  %189 = fmul fast float %183, %185
  %190 = fmul fast float %183, %186
  %191 = fsub fast float %38, %187
  %192 = fsub fast float %39, %188
  %193 = fsub fast float %38, %189
  %194 = fsub fast float %39, %190
  %195 = fsub fast float 5.000000e-01, %180
  %196 = fmul fast float %195, %162
  %197 = call float @dx.op.unary.f32(i32 6, float %196)  ; FAbs(value)
  %198 = fdiv fast float %197, %165
  %199 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %200 = fmul fast float %155, %40
  %201 = and i32 %126, 16
  %202 = icmp ne i32 %201, 0
  %203 = select i1 %202, float 1.000000e+00, float %200
  %204 = icmp eq i32 %201, 0
  br i1 %204, label %224, label %205, !dx.controlflow.hints !61

; <label>:205                                     ; preds = %135
  %206 = add i32 %123, 64
  %207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fadd fast float %208, 1.000000e+00
  %210 = fmul fast float %209, %200
  %211 = fsub fast float %210, %208
  %212 = fsub fast float %209, %211
  %213 = call float @dx.op.unary.f32(i32 7, float %212)  ; Saturate(value)
  %214 = fsub fast float 1.000000e+00, %210
  %215 = call float @dx.op.unary.f32(i32 7, float %214)  ; Saturate(value)
  %216 = fsub fast float %213, %215
  %217 = fsub fast float %203, %215
  %218 = fdiv fast float %217, %216
  %219 = call float @dx.op.unary.f32(i32 7, float %218)  ; Saturate(value)
  %220 = fmul fast float %219, 2.000000e+00
  %221 = fsub fast float 3.000000e+00, %220
  %222 = fmul fast float %219, %219
  %223 = fmul fast float %222, %221
  br label %224

; <label>:224                                     ; preds = %205, %135
  %225 = phi float [ %223, %205 ], [ %203, %135 ]
  %226 = fcmp fast ogt float %225, 0.000000e+00
  br i1 %226, label %228, label %227

; <label>:227                                     ; preds = %224
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %228

; <label>:228                                     ; preds = %227, %224
  %229 = call float @dx.op.unary.f32(i32 7, float %225)  ; Saturate(value)
  %230 = fmul fast float %48, 5.000000e-01
  %231 = fmul fast float %49, 5.000000e-01
  %232 = fptosi float %230 to i32
  %233 = fptosi float %231 to i32
  %234 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %232, i32 %233, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = lshr i32 %235, 18
  %237 = uitofp i32 %236 to float
  %238 = fmul fast float %237, 0x3F4C00EBA0000000
  %239 = call float @dx.op.unary.f32(i32 21, float %238)  ; Exp(value)
  %240 = fadd fast float %239, -1.000000e+00
  %241 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %242 = extractvalue %dx.types.Dimensions %241, 0
  %243 = sitofp i32 %242 to float
  %244 = extractvalue %dx.types.Dimensions %241, 1
  %245 = sitofp i32 %244 to float
  %246 = fcmp fast oge float %230, %243
  %247 = fcmp fast oge float %231, %245
  %248 = or i1 %246, %247
  %249 = select i1 %248, float 0x4197782600000000, float %240
  %250 = fsub fast float %249, %44
  %251 = fcmp fast ogt float %250, 0.000000e+00
  %252 = and i32 %122, -2
  %253 = icmp eq i32 %252, 2
  %254 = and i1 %253, %251
  %255 = xor i1 %251, true
  %256 = icmp eq i32 %122, 1
  %257 = and i1 %256, %255
  %258 = or i1 %254, %257
  %259 = and i32 %126, 262144
  %260 = icmp ne i32 %259, 0
  %261 = and i1 %260, %258
  %262 = xor i1 %258, true
  %263 = and i32 %126, 131072
  %264 = icmp ne i32 %263, 0
  %265 = and i1 %264, %262
  %266 = or i1 %261, %265
  br i1 %266, label %267, label %268

; <label>:267                                     ; preds = %228
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %268

; <label>:268                                     ; preds = %267, %228
  %269 = and i32 %126, 32
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %521, label %271, !dx.controlflow.hints !62

; <label>:271                                     ; preds = %268
  %272 = add i32 %123, 80
  %273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = extractvalue %dx.types.ResRet.f32 %273, 3
  %278 = add i32 %123, 96
  %279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = extractvalue %dx.types.ResRet.f32 %279, 1
  %282 = extractvalue %dx.types.ResRet.f32 %279, 2
  %283 = add i32 %123, 112
  %284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = extractvalue %dx.types.ResRet.f32 %284, 1
  %287 = extractvalue %dx.types.ResRet.f32 %284, 2
  %288 = extractvalue %dx.types.ResRet.f32 %284, 3
  %289 = add i32 %123, 128
  %290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  %294 = extractvalue %dx.types.ResRet.f32 %290, 3
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 4096
  %298 = icmp ne i32 %297, 0
  %299 = fcmp fast une float %282, 0.000000e+00
  %300 = and i32 %296, 64
  %301 = icmp ne i32 %300, 0
  %302 = and i32 %296, 128
  %303 = icmp eq i32 %302, 0
  %304 = and i32 %296, 2048
  %305 = icmp eq i32 %304, 0
  %306 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %307 = extractvalue %dx.types.Dimensions %306, 0
  %308 = sitofp i32 %307 to float
  %309 = extractvalue %dx.types.Dimensions %306, 1
  %310 = sitofp i32 %309 to float
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %313 = extractvalue %dx.types.CBufRet.f32 %311, 3
  %314 = fmul fast float %312, %48
  %315 = fmul fast float %313, %49
  %316 = fmul fast float %314, %308
  %317 = fmul fast float %315, %310
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %320 = fsub fast float -0.000000e+00, %319
  %321 = fptoui float %320 to i32
  %322 = fptoui float %316 to i32
  %323 = fptoui float %317 to i32
  %324 = and i32 %321, 31
  %325 = lshr i32 %322, %324
  %326 = lshr i32 %323, %324
  %327 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %321, i32 %325, i32 %326, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %328 = extractvalue %dx.types.ResRet.f32 %327, 0
  %329 = fcmp fast ogt float %328, -1.000000e+00
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %332 = select i1 %329, float %331, float 1.000000e+00
  %333 = fadd fast float %328, 1.000000e+00
  %334 = fmul fast float %332, %333
  %335 = call float @dx.op.unary.f32(i32 6, float %334)  ; FAbs(value)
  %336 = extractvalue %dx.types.CBufRet.f32 %330, 3
  %337 = fcmp fast oge float %335, %336
  %338 = select i1 %337, float 0x4197782600000000, float %335
  br i1 %305, label %416, label %339, !dx.controlflow.hints !63

; <label>:339                                     ; preds = %271
  %340 = fmul fast float %53, %312
  %341 = fmul fast float %55, %313
  %342 = fsub fast float 1.000000e+00, %340
  %343 = fsub fast float 1.000000e+00, %341
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %348 = fmul fast float %342, %345
  %349 = fmul fast float %342, %346
  %350 = fmul fast float %342, %347
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 0
  %353 = extractvalue %dx.types.CBufRet.f32 %351, 1
  %354 = extractvalue %dx.types.CBufRet.f32 %351, 2
  %355 = fmul fast float %343, %352
  %356 = fmul fast float %343, %353
  %357 = fmul fast float %343, %354
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 0
  %360 = extractvalue %dx.types.CBufRet.f32 %358, 1
  %361 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %362 = fadd fast float %355, %359
  %363 = fadd fast float %362, %348
  %364 = fadd fast float %356, %360
  %365 = fadd fast float %364, %349
  %366 = fadd fast float %357, %361
  %367 = fadd fast float %366, %350
  %368 = fmul fast float %363, %338
  %369 = fmul fast float %365, %338
  %370 = fmul fast float %367, %338
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 0
  %373 = extractvalue %dx.types.CBufRet.f32 %371, 1
  %374 = extractvalue %dx.types.CBufRet.f32 %371, 2
  %375 = fsub fast float %372, %24
  %376 = fadd fast float %375, %368
  %377 = fsub fast float %373, %25
  %378 = fadd fast float %377, %369
  %379 = fsub fast float %374, %26
  %380 = fadd fast float %379, %370
  %381 = fmul fast float %27, %27
  %382 = call float @dx.op.dot3.f32(i32 55, float %376, float %378, float %380, float %376, float %378, float %380)  ; Dot3(ax,ay,az,bx,by,bz)
  %383 = fsub fast float %381, %382
  %384 = fmul fast float %281, %381
  %385 = fmul fast float %280, %381
  %386 = fcmp fast olt float %383, %384
  %387 = fcmp fast ogt float %383, %385
  %388 = or i1 %386, %387
  %389 = select i1 %388, float 0.000000e+00, float %383
  %390 = fsub fast float %280, %281
  %391 = fmul fast float %390, %381
  %392 = fsub fast float %389, %384
  %393 = fdiv fast float %392, %391
  %394 = call float @dx.op.unary.f32(i32 7, float %393)  ; Saturate(value)
  %395 = fmul fast float %394, 2.000000e+00
  %396 = fsub fast float 3.000000e+00, %395
  %397 = fmul fast float %394, %394
  %398 = fmul fast float %397, %396
  %399 = fsub fast float %288, %294
  %400 = fmul fast float %398, %399
  %401 = fadd fast float %400, %294
  %402 = fmul fast float %285, %28
  %403 = fmul fast float %286, %29
  %404 = fmul fast float %287, %30
  %405 = fsub fast float %402, %291
  %406 = fsub fast float %403, %292
  %407 = fsub fast float %404, %293
  %408 = fmul fast float %398, %405
  %409 = fmul fast float %398, %406
  %410 = fmul fast float %398, %407
  %411 = fadd fast float %408, %291
  %412 = fadd fast float %409, %292
  %413 = fadd fast float %410, %293
  %414 = fmul fast float %274, %274
  %415 = fmul fast float %414, %389
  br label %511

; <label>:416                                     ; preds = %271
  %417 = and i32 %296, 256
  %418 = icmp eq i32 %417, 0
  %419 = fsub fast float %338, %44
  br i1 %418, label %468, label %420

; <label>:420                                     ; preds = %416
  %421 = fadd fast float %280, %44
  %422 = fcmp fast olt float %338, %44
  %423 = fcmp fast ogt float %338, %421
  %424 = or i1 %422, %423
  %425 = select i1 %424, float 0.000000e+00, float %419
  %426 = call float @dx.op.unary.f32(i32 83, float %338)  ; DerivCoarseX(value)
  %427 = call float @dx.op.unary.f32(i32 84, float %338)  ; DerivCoarseY(value)
  %428 = fmul fast float %426, %426
  %429 = fmul fast float %427, %427
  %430 = fadd fast float %429, %428
  %431 = call float @dx.op.unary.f32(i32 24, float %430)  ; Sqrt(value)
  %432 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %433 = fmul fast float %432, %431
  %434 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %435 = fmul fast float %434, %281
  %436 = fdiv fast float %419, %435
  %437 = call float @dx.op.unary.f32(i32 7, float %436)  ; Saturate(value)
  %438 = fmul fast float %437, 2.000000e+00
  %439 = fsub fast float 3.000000e+00, %438
  %440 = fmul fast float %437, %437
  %441 = fmul fast float %440, %439
  %442 = fsub fast float %338, %421
  %443 = fadd fast float %442, %435
  %444 = fdiv fast float %443, %435
  %445 = call float @dx.op.unary.f32(i32 7, float %444)  ; Saturate(value)
  %446 = fmul fast float %445, 2.000000e+00
  %447 = fsub fast float 3.000000e+00, %446
  %448 = fmul fast float %445, %445
  %449 = fmul fast float %448, %447
  %450 = fsub fast float %441, %449
  %451 = fsub fast float %288, %294
  %452 = fmul fast float %450, %451
  %453 = fadd fast float %452, %294
  %454 = fmul fast float %285, %28
  %455 = fmul fast float %286, %29
  %456 = fmul fast float %287, %30
  %457 = fsub fast float %454, %291
  %458 = fsub fast float %455, %292
  %459 = fsub fast float %456, %293
  %460 = fmul fast float %450, %457
  %461 = fmul fast float %450, %458
  %462 = fmul fast float %450, %459
  %463 = fadd fast float %460, %291
  %464 = fadd fast float %461, %292
  %465 = fadd fast float %462, %293
  %466 = fmul fast float %425, %274
  %467 = call float @dx.op.unary.f32(i32 6, float %466)  ; FAbs(value)
  br label %511

; <label>:468                                     ; preds = %416
  br i1 %299, label %469, label %482

; <label>:469                                     ; preds = %468
  %470 = fdiv fast float 5.000000e+01, %27
  %471 = select i1 %301, float %470, float 1.000000e+00
  %472 = fmul fast float %471, %274
  %473 = fmul fast float %191, 2.000000e+00
  %474 = fmul fast float %192, 2.000000e+00
  %475 = fadd fast float %473, -1.000000e+00
  %476 = fadd fast float %474, -1.000000e+00
  %477 = call float @dx.op.dot2.f32(i32 54, float %475, float %476, float %475, float %476)  ; Dot2(ax,ay,bx,by)
  %478 = fmul fast float %282, %27
  %479 = fmul fast float %478, %477
  %480 = fsub fast float %419, %479
  %481 = fmul fast float %472, %480
  br label %511

; <label>:482                                     ; preds = %468
  br i1 %303, label %503, label %483

; <label>:483                                     ; preds = %482
  %484 = fmul fast float %27, 0x3F947AE140000000
  %485 = select i1 %301, float %484, float 1.000000e+00
  %486 = fdiv fast float 1.000000e+00, %485
  %487 = fmul fast float %485, %275
  %488 = fmul fast float %485, %276
  %489 = fmul fast float %486, %277
  %490 = call float @dx.op.unary.f32(i32 6, float %419)  ; FAbs(value)
  %491 = fcmp fast olt float %490, %487
  br i1 %491, label %492, label %496, !dx.controlflow.hints !64

; <label>:492                                     ; preds = %483
  %493 = fmul fast float %486, %274
  %494 = fmul fast float %493, %490
  %495 = call float @dx.op.unary.f32(i32 6, float %494)  ; FAbs(value)
  br label %511

; <label>:496                                     ; preds = %483
  %497 = fcmp fast ogt float %490, %488
  br i1 %497, label %498, label %511

; <label>:498                                     ; preds = %496
  %499 = fsub fast float %490, %488
  %500 = fmul fast float %489, %499
  %501 = call float @dx.op.unary.f32(i32 6, float %500)  ; FAbs(value)
  %502 = fsub fast float 1.000000e+00, %501
  br label %511

; <label>:503                                     ; preds = %482
  %504 = fdiv fast float 5.000000e+01, %27
  %505 = select i1 %301, float %504, float 1.000000e+00
  %506 = fmul fast float %505, %274
  %507 = call float @dx.op.unary.f32(i32 6, float %250)  ; FAbs(value)
  %508 = select i1 %298, float %507, float 0x47EFFFFFE0000000
  %509 = call float @dx.op.binary.f32(i32 36, float %419, float %508)  ; FMin(a,b)
  %510 = fmul fast float %506, %509
  br label %511

; <label>:511                                     ; preds = %503, %498, %496, %492, %469, %420, %339
  %512 = phi float [ %415, %339 ], [ %467, %420 ], [ %481, %469 ], [ %510, %503 ], [ %495, %492 ], [ %502, %498 ], [ %490, %496 ]
  %513 = phi float [ %411, %339 ], [ %463, %420 ], [ %28, %469 ], [ %28, %503 ], [ %28, %492 ], [ %28, %498 ], [ %28, %496 ]
  %514 = phi float [ %412, %339 ], [ %464, %420 ], [ %29, %469 ], [ %29, %503 ], [ %29, %492 ], [ %29, %498 ], [ %29, %496 ]
  %515 = phi float [ %413, %339 ], [ %465, %420 ], [ %30, %469 ], [ %30, %503 ], [ %30, %492 ], [ %30, %498 ], [ %30, %496 ]
  %516 = phi float [ %401, %339 ], [ %453, %420 ], [ 1.000000e+00, %469 ], [ 1.000000e+00, %503 ], [ 1.000000e+00, %492 ], [ 1.000000e+00, %498 ], [ 1.000000e+00, %496 ]
  %517 = call float @dx.op.unary.f32(i32 7, float %512)  ; Saturate(value)
  %518 = fmul fast float %517, %40
  %519 = fmul fast float %516, %229
  %520 = fmul fast float %519, %517
  br label %521

; <label>:521                                     ; preds = %511, %268
  %522 = phi float [ %520, %511 ], [ %229, %268 ]
  %523 = phi float [ %518, %511 ], [ %40, %268 ]
  %524 = phi float [ %513, %511 ], [ %28, %268 ]
  %525 = phi float [ %514, %511 ], [ %29, %268 ]
  %526 = phi float [ %515, %511 ], [ %30, %268 ]
  %527 = fmul fast float %524, %31
  %528 = fmul fast float %525, %31
  %529 = fmul fast float %526, %31
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %532 = fptosi float %44 to i32
  %533 = sitofp i32 %532 to float
  %534 = fadd fast float %531, %533
  %535 = fmul fast float %534, 0x3FE3C6EF40000000
  %536 = frem fast float %48, 2.560000e+02
  %537 = frem fast float %49, 2.560000e+02
  %538 = fptoui float %536 to i32
  %539 = fptoui float %537 to i32
  %540 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %538, i32 %539, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = fadd fast float %541, %535
  %543 = call float @dx.op.unary.f32(i32 22, float %542)  ; Frc(value)
  %544 = and i32 %126, 1
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %603, label %546, !dx.controlflow.hints !65

; <label>:546                                     ; preds = %521
  %547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 2
  %549 = extractvalue %dx.types.ResRet.f32 %547, 3
  %550 = add i32 %123, 16
  %551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = extractvalue %dx.types.ResRet.f32 %551, 1
  %554 = extractvalue %dx.types.ResRet.f32 %551, 2
  %555 = add i32 %123, 32
  %556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 2
  %560 = and i32 %126, 2
  %561 = icmp eq i32 %560, 0
  %562 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float %34, float %35, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %563 = call float @dx.op.unary.f32(i32 25, float %562)  ; Rsqrt(value)
  %564 = fmul fast float %563, %34
  %565 = fmul fast float %563, %35
  %566 = fmul fast float %563, %36
  %567 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %568 = call float @dx.op.unary.f32(i32 25, float %567)  ; Rsqrt(value)
  %569 = fmul fast float %568, %83
  %570 = fmul fast float %568, %84
  %571 = fmul fast float %568, %85
  %572 = call float @dx.op.dot3.f32(i32 55, float %569, float %570, float %571, float %564, float %565, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %573 = fmul fast float %572, %572
  %574 = fmul fast float %573, %548
  %575 = fadd fast float %574, %549
  %576 = call float @dx.op.unary.f32(i32 7, float %575)  ; Saturate(value)
  br i1 %561, label %577, label %587, !dx.controlflow.hints !66

; <label>:577                                     ; preds = %546
  %578 = extractvalue %dx.types.ResRet.f32 %547, 1
  %579 = extractvalue %dx.types.ResRet.f32 %547, 0
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 3
  %582 = fmul fast float %581, %567
  %583 = fsub fast float %579, %582
  %584 = fmul fast float %583, %578
  %585 = call float @dx.op.unary.f32(i32 7, float %584)  ; Saturate(value)
  %586 = fmul fast float %585, %576
  br label %587

; <label>:587                                     ; preds = %577, %546
  %588 = phi float [ %586, %577 ], [ %576, %546 ]
  %589 = fsub fast float %552, %557
  %590 = fsub fast float %553, %558
  %591 = fsub fast float %554, %559
  %592 = fmul fast float %588, %589
  %593 = fmul fast float %588, %590
  %594 = fmul fast float %588, %591
  %595 = fadd fast float %592, %557
  %596 = fadd fast float %593, %558
  %597 = fadd fast float %594, %559
  %598 = fmul fast float %595, %527
  %599 = fmul fast float %596, %528
  %600 = fmul fast float %597, %529
  %601 = fmul fast float %588, %522
  %602 = fmul fast float %588, %523
  br label %603

; <label>:603                                     ; preds = %587, %521
  %604 = phi float [ %601, %587 ], [ %522, %521 ]
  %605 = phi float [ %602, %587 ], [ %523, %521 ]
  %606 = phi float [ %598, %587 ], [ %527, %521 ]
  %607 = phi float [ %599, %587 ], [ %528, %521 ]
  %608 = phi float [ %600, %587 ], [ %529, %521 ]
  %609 = add i32 %23, 104
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = add i32 %611, 0
  %613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %613, %dx.types.Handle %45, float %191, float %192, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = extractvalue %dx.types.ResRet.f32 %614, 1
  %617 = extractvalue %dx.types.ResRet.f32 %614, 2
  %618 = add i32 %23, 44
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = shl i32 %620, 4
  %622 = and i32 %621, 32752
  %623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %622)  ; LegacyF16ToF32(value)
  %624 = lshr i32 %620, 7
  %625 = and i32 %624, 32752
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = lshr i32 %620, 22
  %628 = shl nuw nsw i32 %627, 5
  %629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %628)  ; LegacyF16ToF32(value)
  %630 = fmul fast float %623, %615
  %631 = fmul fast float %626, %616
  %632 = fmul fast float %629, %617
  %633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.f32 %633, 0
  %635 = fmul fast float %630, %634
  %636 = fmul fast float %631, %634
  %637 = fmul fast float %632, %634
  %638 = add i32 %23, 48
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = lshr i32 %640, 22
  %642 = shl nuw nsw i32 %641, 5
  %643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %642)  ; LegacyF16ToF32(value)
  %644 = fmul fast float %643, %635
  %645 = select i1 %106, float %644, float %635
  %646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.i32 %646, 0
  %648 = add i32 %647, 0
  %649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %649, %dx.types.Handle %45, float %193, float %194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = extractvalue %dx.types.ResRet.f32 %650, 1
  %653 = extractvalue %dx.types.ResRet.f32 %650, 2
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = shl i32 %655, 4
  %657 = and i32 %656, 32752
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = lshr i32 %655, 7
  %660 = and i32 %659, 32752
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = lshr i32 %655, 22
  %663 = shl nuw nsw i32 %662, 5
  %664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %663)  ; LegacyF16ToF32(value)
  %665 = fmul fast float %658, %651
  %666 = fmul fast float %661, %652
  %667 = fmul fast float %664, %653
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 0
  %670 = fmul fast float %665, %669
  %671 = fmul fast float %666, %669
  %672 = fmul fast float %667, %669
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = lshr i32 %674, 22
  %676 = shl nuw nsw i32 %675, 5
  %677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %676)  ; LegacyF16ToF32(value)
  %678 = fmul fast float %677, %670
  %679 = select i1 %106, float %678, float %670
  %680 = fsub fast float %679, %645
  %681 = fsub fast float %671, %636
  %682 = fsub fast float %672, %637
  %683 = fmul fast float %680, %199
  %684 = fmul fast float %681, %199
  %685 = fmul fast float %682, %199
  %686 = fadd fast float %683, %645
  %687 = fadd fast float %684, %636
  %688 = fadd fast float %685, %637
  %689 = fsub fast float %651, %615
  %690 = fsub fast float %652, %616
  %691 = fsub fast float %653, %617
  %692 = fmul fast float %689, %199
  %693 = fmul fast float %690, %199
  %694 = fmul fast float %691, %199
  %695 = fadd fast float %692, %615
  %696 = fadd fast float %693, %616
  %697 = fadd fast float %694, %617
  %698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = extractvalue %dx.types.ResRet.f32 %698, 1
  %701 = extractvalue %dx.types.ResRet.f32 %698, 2
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 1
  %704 = fmul fast float %686, %606
  %705 = fmul fast float %687, %607
  %706 = fmul fast float %688, %608
  %707 = call float @dx.op.dot3.f32(i32 55, float %704, float %705, float %706, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %708 = select i1 %106, float 0.000000e+00, float %704
  %709 = select i1 %106, float %707, float %705
  %710 = select i1 %106, float 0.000000e+00, float %706
  %711 = call float @dx.op.dot3.f32(i32 55, float %695, float %696, float %697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %712 = add i32 %23, 32
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 255
  %716 = uitofp i32 %715 to float
  %717 = lshr i32 %714, 8
  %718 = and i32 %717, 255
  %719 = uitofp i32 %718 to float
  %720 = fmul fast float %719, %711
  %721 = fadd fast float %720, %716
  %722 = fmul fast float %721, 0x3F70101020000000
  %723 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %724 = and i32 %126, 8192
  %725 = icmp eq i32 %724, 0
  %726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %727 = extractvalue %dx.types.CBufRet.f32 %726, 0
  br i1 %725, label %734, label %728, !dx.controlflow.hints !67

; <label>:728                                     ; preds = %603
  %729 = add i32 %123, 176
  %730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  %732 = fcmp fast oge float %731, 0.000000e+00
  %733 = select i1 %732, float %731, float %727
  br label %741

; <label>:734                                     ; preds = %603
  %735 = add i32 %23, 88
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = bitcast i32 %737 to float
  %739 = fcmp fast oge float %738, 0.000000e+00
  %740 = select i1 %739, float %738, float %727
  br label %741

; <label>:741                                     ; preds = %734, %728
  %742 = phi float [ %733, %728 ], [ %740, %734 ]
  %743 = fmul fast float %711, %605
  %744 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %232, i32 %233, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = lshr i32 %745, 18
  %747 = uitofp i32 %746 to float
  %748 = fmul fast float %747, 0x3F4C00EBA0000000
  %749 = call float @dx.op.unary.f32(i32 21, float %748)  ; Exp(value)
  %750 = fadd fast float %749, -1.000000e+00
  %751 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %752 = extractvalue %dx.types.Dimensions %751, 0
  %753 = sitofp i32 %752 to float
  %754 = extractvalue %dx.types.Dimensions %751, 1
  %755 = sitofp i32 %754 to float
  %756 = fcmp fast oge float %230, %753
  %757 = fcmp fast oge float %231, %755
  %758 = or i1 %756, %757
  %759 = select i1 %758, float 0x4197782600000000, float %750
  %760 = icmp eq i32 %122, 3
  %761 = fcmp fast ogt float %44, %759
  %762 = and i1 %256, %761
  %763 = or i1 %760, %762
  %764 = icmp eq i32 %122, 2
  %765 = fcmp fast ole float %44, %759
  %766 = and i1 %764, %765
  %767 = or i1 %766, %763
  %768 = fmul fast float %524, %37
  %769 = fmul fast float %768, %686
  %770 = fmul fast float %769, %699
  %771 = fmul fast float %770, %703
  %772 = fmul fast float %525, %37
  %773 = fmul fast float %772, %687
  %774 = fmul fast float %773, %700
  %775 = fmul fast float %774, %703
  %776 = fmul fast float %526, %37
  %777 = fmul fast float %776, %688
  %778 = fmul fast float %777, %701
  %779 = fmul fast float %778, %703
  %780 = fadd fast float %771, %708
  %781 = fadd fast float %709, %775
  %782 = fadd fast float %779, %710
  %783 = fmul fast float %780, %604
  %784 = fmul fast float %781, %604
  %785 = fmul fast float %782, %604
  %786 = fmul fast float %742, %723
  %787 = fsub fast float 1.000000e+00, %723
  %788 = fsub fast float %787, %743
  %789 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 3
  %792 = fmul fast float %791, %789
  %793 = fadd fast float %792, %786
  %794 = and i32 %126, 1048576
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %887, label %796, !dx.controlflow.hints !68

; <label>:796                                     ; preds = %741
  %797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %798 = extractvalue %dx.types.CBufRet.f32 %797, 2
  %799 = extractvalue %dx.types.CBufRet.f32 %797, 3
  %800 = fmul fast float %798, %48
  %801 = fmul fast float %799, %49
  %802 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %803 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %804 = select i1 %767, i32 2, i32 0
  %805 = or i32 %804, 1
  %806 = uitofp i32 %805 to float
  %807 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %802, float %803, float %806, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %808 = extractvalue %dx.types.ResRet.f32 %807, 0
  %809 = extractvalue %dx.types.ResRet.f32 %807, 1
  %810 = extractvalue %dx.types.ResRet.f32 %807, 2
  %811 = extractvalue %dx.types.ResRet.f32 %807, 3
  %812 = add nuw nsw i32 %804, 2
  %813 = uitofp i32 %812 to float
  %814 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %802, float %803, float %813, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 0
  %816 = extractvalue %dx.types.ResRet.f32 %814, 1
  %817 = extractvalue %dx.types.ResRet.f32 %814, 2
  %818 = extractvalue %dx.types.ResRet.f32 %814, 3
  %819 = call float @dx.op.binary.f32(i32 35, float %809, float %810)  ; FMax(a,b)
  %820 = call float @dx.op.binary.f32(i32 35, float %808, float %819)  ; FMax(a,b)
  %821 = call float @dx.op.binary.f32(i32 35, float %820, float %811)  ; FMax(a,b)
  %822 = call float @dx.op.binary.f32(i32 36, float %816, float %817)  ; FMin(a,b)
  %823 = call float @dx.op.binary.f32(i32 36, float %815, float %822)  ; FMin(a,b)
  %824 = call float @dx.op.binary.f32(i32 36, float %823, float %818)  ; FMin(a,b)
  %825 = fmul fast float %821, 2.550000e+02
  %826 = fadd fast float %825, 0x3F70101020000000
  %827 = fptoui float %826 to i32
  %828 = fmul fast float %824, 2.550000e+02
  %829 = fadd fast float %828, 0x3F70101020000000
  %830 = fptoui float %829 to i32
  %831 = icmp ult i32 %827, %830
  br i1 %831, label %832, label %880

; <label>:832                                     ; preds = %796
  %833 = fcmp fast ogt float %43, 9.843750e-01
  %834 = fadd fast float %44, -4.000000e+00
  %835 = select i1 %833, float -4.000000e+00, float %834
  %836 = call float @dx.op.binary.f32(i32 35, float %835, float 0.000000e+00)  ; FMax(a,b)
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 0
  %839 = fadd fast float %838, %836
  %840 = extractvalue %dx.types.CBufRet.f32 %837, 2
  %841 = fmul fast float %839, %840
  %842 = call float @dx.op.unary.f32(i32 23, float %841)  ; Log(value)
  %843 = extractvalue %dx.types.CBufRet.f32 %837, 3
  %844 = fmul fast float %843, %842
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %847 = fmul fast float %844, %846
  %848 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %849 = uitofp i32 %827 to float
  %850 = uitofp i32 %830 to float
  %851 = fadd fast float %849, 5.000000e-01
  %852 = fadd fast float %850, 5.000000e-01
  %853 = fmul fast float %846, %851
  %854 = fmul fast float %846, %852
  %855 = fadd fast float %853, 0x3F0FFB4800000000
  %856 = fadd fast float %854, 0xBF0FFB4800000000
  %857 = call float @dx.op.binary.f32(i32 35, float %848, float %855)  ; FMax(a,b)
  %858 = call float @dx.op.binary.f32(i32 36, float %857, float %856)  ; FMin(a,b)
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 1
  %861 = extractvalue %dx.types.CBufRet.f32 %859, 2
  %862 = extractvalue %dx.types.CBufRet.f32 %859, 0
  %863 = select i1 %767, float %862, float 0.000000e+00
  %864 = fmul fast float %860, %858
  %865 = fadd fast float %863, %864
  %866 = fadd fast float %863, %861
  %867 = fsub fast float %860, %861
  %868 = fadd fast float %867, %863
  %869 = call float @dx.op.binary.f32(i32 35, float %865, float %866)  ; FMax(a,b)
  %870 = call float @dx.op.binary.f32(i32 36, float %869, float %868)  ; FMin(a,b)
  %871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %802, float %803, float %870, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = extractvalue %dx.types.ResRet.f32 %871, 1
  %874 = extractvalue %dx.types.ResRet.f32 %871, 2
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 1
  %877 = fmul fast float %876, %872
  %878 = fmul fast float %876, %873
  %879 = fmul fast float %876, %874
  br label %880

; <label>:880                                     ; preds = %832, %796
  %881 = phi float [ %877, %832 ], [ 1.000000e+00, %796 ]
  %882 = phi float [ %878, %832 ], [ 1.000000e+00, %796 ]
  %883 = phi float [ %879, %832 ], [ 1.000000e+00, %796 ]
  %884 = fmul fast float %881, %783
  %885 = fmul fast float %882, %784
  %886 = fmul fast float %883, %785
  br label %887

; <label>:887                                     ; preds = %880, %741
  %888 = phi float [ %884, %880 ], [ %783, %741 ]
  %889 = phi float [ %885, %880 ], [ %784, %741 ]
  %890 = phi float [ %886, %880 ], [ %785, %741 ]
  %891 = and i32 %126, 2097152
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %897, label %893, !dx.controlflow.hints !69

; <label>:893                                     ; preds = %887
  %894 = add i32 %123, 192
  %895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 0
  br label %900

; <label>:897                                     ; preds = %887
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 3
  br label %900

; <label>:900                                     ; preds = %897, %893
  %901 = phi float [ %896, %893 ], [ %899, %897 ]
  br i1 %762, label %902, label %986

; <label>:902                                     ; preds = %900
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 2
  %905 = extractvalue %dx.types.CBufRet.f32 %903, 3
  %906 = fmul fast float %904, %48
  %907 = fmul fast float %905, %49
  %908 = call float @dx.op.unary.f32(i32 7, float %906)  ; Saturate(value)
  %909 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  %910 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %908, float %909, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = extractvalue %dx.types.ResRet.f32 %910, 1
  %913 = extractvalue %dx.types.ResRet.f32 %910, 2
  %914 = extractvalue %dx.types.ResRet.f32 %910, 3
  %915 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %908, float %909, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = extractvalue %dx.types.ResRet.f32 %915, 1
  %918 = extractvalue %dx.types.ResRet.f32 %915, 2
  %919 = extractvalue %dx.types.ResRet.f32 %915, 3
  %920 = call float @dx.op.binary.f32(i32 35, float %912, float %913)  ; FMax(a,b)
  %921 = call float @dx.op.binary.f32(i32 35, float %911, float %920)  ; FMax(a,b)
  %922 = call float @dx.op.binary.f32(i32 35, float %921, float %914)  ; FMax(a,b)
  %923 = call float @dx.op.binary.f32(i32 36, float %917, float %918)  ; FMin(a,b)
  %924 = call float @dx.op.binary.f32(i32 36, float %916, float %923)  ; FMin(a,b)
  %925 = call float @dx.op.binary.f32(i32 36, float %924, float %919)  ; FMin(a,b)
  %926 = fmul fast float %922, 2.550000e+02
  %927 = fadd fast float %926, 0x3F70101020000000
  %928 = fptoui float %927 to i32
  %929 = fmul fast float %925, 2.550000e+02
  %930 = fadd fast float %929, 0x3F70101020000000
  %931 = fptoui float %930 to i32
  %932 = icmp ult i32 %928, %931
  br i1 %932, label %933, label %975

; <label>:933                                     ; preds = %902
  %934 = fcmp fast ogt float %43, 9.843750e-01
  %935 = fadd fast float %44, -4.000000e+00
  %936 = select i1 %934, float -4.000000e+00, float %935
  %937 = call float @dx.op.binary.f32(i32 35, float %936, float 0.000000e+00)  ; FMax(a,b)
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %940 = fadd fast float %939, %937
  %941 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %942 = fmul fast float %940, %941
  %943 = call float @dx.op.unary.f32(i32 23, float %942)  ; Log(value)
  %944 = extractvalue %dx.types.CBufRet.f32 %938, 3
  %945 = fmul fast float %944, %943
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %948 = fmul fast float %945, %947
  %949 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  %950 = uitofp i32 %928 to float
  %951 = uitofp i32 %931 to float
  %952 = fadd fast float %950, 5.000000e-01
  %953 = fadd fast float %951, 5.000000e-01
  %954 = fmul fast float %947, %952
  %955 = fmul fast float %947, %953
  %956 = fadd fast float %954, 0x3F0FFB4800000000
  %957 = fadd fast float %955, 0xBF0FFB4800000000
  %958 = call float @dx.op.binary.f32(i32 35, float %949, float %956)  ; FMax(a,b)
  %959 = call float @dx.op.binary.f32(i32 36, float %958, float %957)  ; FMin(a,b)
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 1
  %962 = extractvalue %dx.types.CBufRet.f32 %960, 2
  %963 = extractvalue %dx.types.CBufRet.f32 %960, 0
  %964 = fmul fast float %961, %959
  %965 = fadd fast float %963, %964
  %966 = fadd fast float %963, %962
  %967 = fsub fast float %961, %962
  %968 = fadd fast float %967, %963
  %969 = call float @dx.op.binary.f32(i32 35, float %965, float %966)  ; FMax(a,b)
  %970 = call float @dx.op.binary.f32(i32 36, float %969, float %968)  ; FMin(a,b)
  %971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %908, float %909, float %970, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = extractvalue %dx.types.ResRet.f32 %971, 1
  %974 = extractvalue %dx.types.ResRet.f32 %971, 2
  br label %975

; <label>:975                                     ; preds = %933, %902
  %976 = phi float [ %972, %933 ], [ 1.000000e+00, %902 ]
  %977 = phi float [ %973, %933 ], [ 1.000000e+00, %902 ]
  %978 = phi float [ %974, %933 ], [ 1.000000e+00, %902 ]
  %979 = call float @dx.op.dot3.f32(i32 55, float %976, float %977, float %978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %980 = select i1 %106, float %979, float %976
  %981 = select i1 %106, float %979, float %977
  %982 = select i1 %106, float 1.000000e+00, float %978
  %983 = fmul fast float %980, %888
  %984 = fmul fast float %981, %889
  %985 = fmul fast float %982, %890
  br label %986

; <label>:986                                     ; preds = %975, %900
  %987 = phi float [ %759, %975 ], [ %44, %900 ]
  %988 = phi float [ %983, %975 ], [ %888, %900 ]
  %989 = phi float [ %984, %975 ], [ %889, %900 ]
  %990 = phi float [ %985, %975 ], [ %890, %900 ]
  %991 = phi float [ %976, %975 ], [ 1.000000e+00, %900 ]
  br i1 %767, label %1234, label %992

; <label>:992                                     ; preds = %986
  %993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %32, float %33, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = extractvalue %dx.types.ResRet.f32 %993, 1
  %996 = extractvalue %dx.types.ResRet.f32 %993, 2
  %997 = fmul fast float %994, %991
  %998 = call float @dx.op.dot3.f32(i32 55, float %994, float %995, float %996, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %999 = select i1 %106, float %998, float %994
  %1000 = select i1 %106, float %998, float %995
  %1001 = select i1 %106, float 1.000000e+00, float %996
  %1002 = fmul fast float %999, %988
  %1003 = fmul fast float %1000, %989
  %1004 = fmul fast float %1001, %990
  %1005 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.i32 %1005, 0
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1234, label %1008, !dx.controlflow.hints !70

; <label>:1008                                    ; preds = %992
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 2
  %1011 = extractvalue %dx.types.CBufRet.f32 %1009, 3
  %1012 = fmul fast float %1010, %48
  %1013 = fmul fast float %1011, %49
  %1014 = fmul fast float %1012, 2.000000e+00
  %1015 = fmul fast float %1013, 2.000000e+00
  %1016 = fsub fast float 1.000000e+00, %1014
  %1017 = fsub fast float 1.000000e+00, %1015
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1022 = fmul fast float %1016, %1019
  %1023 = fmul fast float %1016, %1020
  %1024 = fmul fast float %1016, %1021
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.CBufRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.CBufRet.f32 %1025, 2
  %1029 = fmul fast float %1017, %1026
  %1030 = fmul fast float %1017, %1027
  %1031 = fmul fast float %1017, %1028
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.CBufRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.CBufRet.f32 %1032, 2
  %1036 = fadd fast float %1029, %1033
  %1037 = fadd fast float %1036, %1022
  %1038 = fadd fast float %1030, %1034
  %1039 = fadd fast float %1038, %1023
  %1040 = fadd fast float %1031, %1035
  %1041 = fadd fast float %1040, %1024
  %1042 = fmul fast float %1037, %987
  %1043 = fmul fast float %1039, %987
  %1044 = fmul fast float %1041, %987
  %1045 = fmul fast float %1042, %1042
  %1046 = fmul fast float %1043, %1043
  %1047 = fadd fast float %1045, %1046
  %1048 = fmul fast float %1044, %1044
  %1049 = fadd fast float %1047, %1048
  %1050 = call float @dx.op.unary.f32(i32 24, float %1049)  ; Sqrt(value)
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 0
  %1053 = fsub fast float %1050, %1052
  %1054 = extractvalue %dx.types.CBufRet.f32 %1051, 2
  %1055 = fmul fast float %1053, %1054
  %1056 = call float @dx.op.unary.f32(i32 7, float %1055)  ; Saturate(value)
  %1057 = fadd fast float %1056, -5.000000e-01
  %1058 = fmul fast float %1057, 2.000000e+00
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 2
  %1061 = call float @dx.op.binary.f32(i32 36, float %1060, float %1058)  ; FMin(a,b)
  %1062 = fsub fast float -0.000000e+00, %1060
  %1063 = fcmp fast ogt float %1061, %1062
  br i1 %1063, label %1064, label %1234, !dx.controlflow.hints !71

; <label>:1064                                    ; preds = %1008
  %1065 = fmul fast float %1061, 5.000000e-01
  %1066 = fadd fast float %1065, 5.000000e-01
  %1067 = call float @dx.op.unary.f32(i32 22, float %1066)  ; Frc(value)
  %1068 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1069 = call float @dx.op.unary.f32(i32 22, float %1067)  ; Frc(value)
  %1070 = fmul fast float %1069, 2.000000e+00
  %1071 = fadd fast float %1070, -1.000000e+00
  %1072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %1012, float %1013, float %1068, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.f32 %1072, 2
  %1076 = extractvalue %dx.types.ResRet.f32 %1072, 3
  %1077 = fadd fast float %1073, -5.000000e-01
  %1078 = fadd fast float %1075, -5.000000e-01
  %1079 = fmul fast float %1077, 0xBFD5555560000000
  %1080 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1078, float %1079)  ; FMad(a,b,c)
  %1081 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1074, float 0.000000e+00)  ; FMad(a,b,c)
  %1082 = fadd fast float %1081, %1076
  %1083 = fmul fast float %1077, -7.500000e-01
  %1084 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1078, float %1083)  ; FMad(a,b,c)
  %1085 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1074, float 0.000000e+00)  ; FMad(a,b,c)
  %1086 = fadd fast float %1085, %1076
  %1087 = call float @dx.op.binary.f32(i32 35, float %1080, float -1.000000e+00)  ; FMax(a,b)
  %1088 = call float @dx.op.binary.f32(i32 35, float %1082, float -1.000000e+00)  ; FMax(a,b)
  %1089 = call float @dx.op.binary.f32(i32 35, float %1084, float -1.000000e+00)  ; FMax(a,b)
  %1090 = call float @dx.op.binary.f32(i32 35, float %1086, float -1.000000e+00)  ; FMax(a,b)
  %1091 = call float @dx.op.binary.f32(i32 36, float %1087, float 1.000000e+00)  ; FMin(a,b)
  %1092 = call float @dx.op.binary.f32(i32 36, float %1088, float 1.000000e+00)  ; FMin(a,b)
  %1093 = call float @dx.op.binary.f32(i32 36, float %1089, float 1.000000e+00)  ; FMin(a,b)
  %1094 = call float @dx.op.binary.f32(i32 36, float %1090, float 1.000000e+00)  ; FMin(a,b)
  %1095 = fcmp fast olt float %1091, 0x3FEFFF8020000000
  br i1 %1095, label %1096, label %1211, !dx.controlflow.hints !72

; <label>:1096                                    ; preds = %1064
  %1097 = extractvalue %dx.types.CBufRet.f32 %1059, 3
  %1098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.f32 %1098, 0
  %1100 = extractvalue %dx.types.CBufRet.f32 %1098, 1
  %1101 = extractvalue %dx.types.CBufRet.f32 %1098, 2
  %1102 = extractvalue %dx.types.CBufRet.f32 %1098, 3
  %1103 = fsub fast float %1099, %1091
  %1104 = fsub fast float %1100, %1092
  %1105 = fsub fast float %1101, %1093
  %1106 = fsub fast float %1102, %1094
  %1107 = fmul fast float %1103, %1097
  %1108 = fmul fast float %1104, %1097
  %1109 = fmul fast float %1105, %1097
  %1110 = fmul fast float %1106, %1097
  %1111 = fadd fast float %1107, %1091
  %1112 = fadd fast float %1108, %1092
  %1113 = fsub fast float -0.000000e+00, %1112
  %1114 = fadd fast float %1109, %1093
  %1115 = fadd fast float %1110, %1094
  %1116 = fmul fast float %1111, %1111
  %1117 = fsub fast float %1112, %1116
  %1118 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1117)  ; FMax(a,b)
  %1119 = fdiv fast float 1.000000e+00, %1118
  %1120 = fmul fast float %1112, %1111
  %1121 = fsub fast float %1114, %1120
  %1122 = fsub fast float %1071, %1111
  %1123 = fmul fast float %1071, %1071
  %1124 = fsub fast float %1123, %1112
  %1125 = fmul fast float %1122, %1119
  %1126 = fmul fast float %1125, %1121
  %1127 = fsub fast float %1124, %1126
  %1128 = fmul fast float %1112, %1112
  %1129 = fsub fast float %1115, %1128
  %1130 = fmul fast float %1121, %1121
  %1131 = fmul fast float %1130, %1119
  %1132 = fsub fast float %1129, %1131
  %1133 = fdiv fast float %1127, %1132
  %1134 = fmul fast float %1121, %1133
  %1135 = fsub fast float %1122, %1134
  %1136 = fmul fast float %1135, %1119
  %1137 = fmul fast float %1136, %1111
  %1138 = fsub fast float 1.000000e+00, %1137
  %1139 = fmul fast float %1112, %1133
  %1140 = fsub fast float %1138, %1139
  %1141 = fmul fast float %1136, %1136
  %1142 = fmul fast float %1133, 4.000000e+00
  %1143 = fmul fast float %1142, %1140
  %1144 = fsub fast float %1141, %1143
  %1145 = call float @dx.op.unary.f32(i32 24, float %1144)  ; Sqrt(value)
  %1146 = fcmp fast oge float %1136, 0.000000e+00
  %1147 = fsub fast float -0.000000e+00, %1145
  %1148 = select i1 %1146, float %1147, float %1145
  %1149 = fsub fast float %1148, %1136
  %1150 = fdiv fast float %1149, %1133
  %1151 = fdiv fast float %1140, %1149
  %1152 = fmul fast float %1150, 5.000000e-01
  %1153 = fmul fast float %1151, 2.000000e+00
  %1154 = select i1 %1146, float %1152, float %1153
  %1155 = select i1 %1146, float %1153, float %1152
  %1156 = call float @dx.op.binary.f32(i32 35, float %1154, float %1155)  ; FMax(a,b)
  %1157 = call float @dx.op.binary.f32(i32 36, float %1154, float %1155)  ; FMin(a,b)
  %1158 = fcmp fast ogt float %1071, %1157
  br i1 %1158, label %1159, label %1169

; <label>:1159                                    ; preds = %1096
  %1160 = fsub fast float %1071, %1157
  %1161 = fsub fast float %1156, %1157
  %1162 = fmul fast float %1160, %1161
  %1163 = fmul fast float %1156, %1071
  %1164 = fadd fast float %1156, %1071
  %1165 = fmul fast float %1164, %1111
  %1166 = fadd fast float %1163, %1112
  %1167 = fsub fast float %1166, %1165
  %1168 = fdiv fast float %1167, %1162
  br label %1169

; <label>:1169                                    ; preds = %1159, %1096
  %1170 = phi float [ %1168, %1159 ], [ 0.000000e+00, %1096 ]
  %1171 = fcmp fast ogt float %1071, %1156
  %1172 = fsub fast float %1071, %1156
  br i1 %1171, label %1173, label %1183

; <label>:1173                                    ; preds = %1169
  %1174 = fsub fast float %1156, %1157
  %1175 = fmul fast float %1174, %1172
  %1176 = fmul fast float %1157, %1071
  %1177 = fadd fast float %1157, %1071
  %1178 = fmul fast float %1177, %1111
  %1179 = fsub fast float %1113, %1176
  %1180 = fadd fast float %1179, %1178
  %1181 = fdiv fast float %1180, %1175
  %1182 = fadd fast float %1181, %1170
  br label %1183

; <label>:1183                                    ; preds = %1173, %1169
  %1184 = phi float [ %1182, %1173 ], [ %1170, %1169 ]
  %1185 = fsub fast float %1071, %1157
  %1186 = fmul fast float %1185, %1172
  %1187 = fmul fast float %1157, %1156
  %1188 = fadd fast float %1157, %1156
  %1189 = fmul fast float %1188, %1111
  %1190 = fadd fast float %1187, %1112
  %1191 = fsub fast float %1190, %1189
  %1192 = fdiv fast float %1191, %1186
  %1193 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  %1194 = fcmp fast oeq float %901, 0.000000e+00
  %1195 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1196 = fcmp fast oeq float %1195, 0.000000e+00
  %1197 = or i1 %1194, %1196
  %1198 = fmul fast float %1195, 2.000000e+00
  %1199 = fadd fast float %1060, %1061
  %1200 = fdiv fast float %1199, %1198
  %1201 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1202 = fmul fast float %1201, 2.000000e+00
  %1203 = fsub fast float 3.000000e+00, %1202
  %1204 = fmul fast float %1201, %1201
  %1205 = fmul fast float %1204, %1203
  %1206 = select i1 %1197, float 1.000000e+00, float %1205
  %1207 = fmul fast float %1192, %901
  %1208 = fadd fast float %1193, %1207
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1210 = fmul fast float %1206, %1209
  br label %1211

; <label>:1211                                    ; preds = %1183, %1064
  %1212 = phi float [ %1210, %1183 ], [ 0.000000e+00, %1064 ]
  %1213 = fsub fast float 1.000000e+00, %1212
  %1214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %1012, float %1013, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.i32 %1216, 2
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1224, label %1219

; <label>:1219                                    ; preds = %1211
  %1220 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1221 = fadd fast float %1215, -1.000000e+00
  %1222 = fmul fast float %1220, %1221
  %1223 = fadd fast float %1222, 1.000000e+00
  br label %1224

; <label>:1224                                    ; preds = %1219, %1211
  %1225 = phi float [ %1223, %1219 ], [ %1213, %1211 ]
  %1226 = call float @dx.op.binary.f32(i32 35, float %1215, float %1225)  ; FMax(a,b)
  %1227 = fmul fast float %1226, %997
  %1228 = call float @dx.op.dot3.f32(i32 55, float %1226, float %1226, float %1226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1229 = select i1 %106, float %1228, float %1226
  %1230 = select i1 %106, float 1.000000e+00, float %1226
  %1231 = fmul fast float %1229, %1002
  %1232 = fmul fast float %1229, %1003
  %1233 = fmul fast float %1230, %1004
  br label %1234

; <label>:1234                                    ; preds = %1224, %1008, %992, %986
  %1235 = phi float [ %988, %986 ], [ %1002, %992 ], [ %1231, %1224 ], [ %1002, %1008 ]
  %1236 = phi float [ %989, %986 ], [ %1003, %992 ], [ %1232, %1224 ], [ %1003, %1008 ]
  %1237 = phi float [ %990, %986 ], [ %1004, %992 ], [ %1233, %1224 ], [ %1004, %1008 ]
  %1238 = phi float [ %991, %986 ], [ %997, %992 ], [ %1227, %1224 ], [ %997, %1008 ]
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 2
  %1241 = extractvalue %dx.types.CBufRet.f32 %1239, 3
  %1242 = fmul fast float %1240, %48
  %1243 = fmul fast float %1241, %49
  %1244 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1245 = call float @dx.op.unary.f32(i32 7, float %1243)  ; Saturate(value)
  %1246 = select i1 %767, i32 2, i32 0
  %1247 = or i32 %1246, 1
  %1248 = uitofp i32 %1247 to float
  %1249 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1244, float %1245, float %1248, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = extractvalue %dx.types.ResRet.f32 %1249, 3
  %1254 = add nuw nsw i32 %1246, 2
  %1255 = uitofp i32 %1254 to float
  %1256 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1244, float %1245, float %1255, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  %1260 = extractvalue %dx.types.ResRet.f32 %1256, 3
  %1261 = call float @dx.op.binary.f32(i32 35, float %1251, float %1252)  ; FMax(a,b)
  %1262 = call float @dx.op.binary.f32(i32 35, float %1250, float %1261)  ; FMax(a,b)
  %1263 = call float @dx.op.binary.f32(i32 35, float %1262, float %1253)  ; FMax(a,b)
  %1264 = call float @dx.op.binary.f32(i32 36, float %1258, float %1259)  ; FMin(a,b)
  %1265 = call float @dx.op.binary.f32(i32 36, float %1257, float %1264)  ; FMin(a,b)
  %1266 = call float @dx.op.binary.f32(i32 36, float %1265, float %1260)  ; FMin(a,b)
  %1267 = fmul fast float %1263, 2.550000e+02
  %1268 = fadd fast float %1267, 0x3F70101020000000
  %1269 = fptoui float %1268 to i32
  %1270 = fmul fast float %1266, 2.550000e+02
  %1271 = fadd fast float %1270, 0x3F70101020000000
  %1272 = fptoui float %1271 to i32
  %1273 = icmp ult i32 %1269, %1272
  br i1 %1273, label %1274, label %1317

; <label>:1274                                    ; preds = %1234
  %1275 = fcmp fast ogt float %43, 9.843750e-01
  %1276 = fadd fast float %987, -4.000000e+00
  %1277 = select i1 %1275, float -4.000000e+00, float %1276
  %1278 = call float @dx.op.binary.f32(i32 35, float %1277, float 0.000000e+00)  ; FMax(a,b)
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1281 = fadd fast float %1280, %1278
  %1282 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1283 = fmul fast float %1281, %1282
  %1284 = call float @dx.op.unary.f32(i32 23, float %1283)  ; Log(value)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1279, 3
  %1286 = fmul fast float %1285, %1284
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 2
  %1289 = fmul fast float %1286, %1288
  %1290 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  %1291 = uitofp i32 %1269 to float
  %1292 = uitofp i32 %1272 to float
  %1293 = fadd fast float %1291, 5.000000e-01
  %1294 = fadd fast float %1292, 5.000000e-01
  %1295 = fmul fast float %1288, %1293
  %1296 = fmul fast float %1288, %1294
  %1297 = fadd fast float %1295, 0x3F0FFB4800000000
  %1298 = fadd fast float %1296, 0xBF0FFB4800000000
  %1299 = call float @dx.op.binary.f32(i32 35, float %1290, float %1297)  ; FMax(a,b)
  %1300 = call float @dx.op.binary.f32(i32 36, float %1299, float %1298)  ; FMin(a,b)
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1303 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1304 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1305 = select i1 %767, float %1304, float 0.000000e+00
  %1306 = fmul fast float %1302, %1300
  %1307 = fadd fast float %1305, %1306
  %1308 = fadd fast float %1305, %1303
  %1309 = fsub fast float %1302, %1303
  %1310 = fadd fast float %1309, %1305
  %1311 = call float @dx.op.binary.f32(i32 35, float %1307, float %1308)  ; FMax(a,b)
  %1312 = call float @dx.op.binary.f32(i32 36, float %1311, float %1310)  ; FMin(a,b)
  %1313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1244, float %1245, float %1312, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1314 = extractvalue %dx.types.ResRet.f32 %1313, 0
  %1315 = extractvalue %dx.types.ResRet.f32 %1313, 1
  %1316 = extractvalue %dx.types.ResRet.f32 %1313, 2
  br label %1317

; <label>:1317                                    ; preds = %1274, %1234
  %1318 = phi float [ %1314, %1274 ], [ 1.000000e+00, %1234 ]
  %1319 = phi float [ %1315, %1274 ], [ 1.000000e+00, %1234 ]
  %1320 = phi float [ %1316, %1274 ], [ 1.000000e+00, %1234 ]
  %1321 = fmul fast float %1318, %1238
  %1322 = call float @dx.op.dot3.f32(i32 55, float %1318, float %1319, float %1320, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1323 = select i1 %106, float %1322, float %1318
  %1324 = select i1 %106, float %1322, float %1319
  %1325 = select i1 %106, float 1.000000e+00, float %1320
  %1326 = fmul fast float %1323, %1235
  %1327 = fmul fast float %1324, %1236
  %1328 = fmul fast float %1325, %1237
  %1329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.i32 %1329, 3
  %1331 = and i32 %1330, 3
  %1332 = icmp ne i32 %1331, 0
  %1333 = and i32 %1330, 4
  %1334 = icmp ne i32 %1333, 0
  %1335 = and i1 %1332, %1334
  %1336 = and i1 %106, %1335
  br i1 %1336, label %1337, label %1343

; <label>:1337                                    ; preds = %1317
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 1
  %1340 = fadd fast float %1321, -1.000000e+00
  %1341 = fmul fast float %1339, %1340
  %1342 = fadd fast float %1341, 1.000000e+00
  br label %1343

; <label>:1343                                    ; preds = %1337, %1317
  %1344 = phi float [ %1342, %1337 ], [ %1321, %1317 ]
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 0
  br i1 %106, label %1347, label %1367

; <label>:1347                                    ; preds = %1343
  %1348 = fadd fast float %1326, %1327
  %1349 = fmul fast float %1346, %1348
  %1350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.f32 %1350, 3
  %1352 = extractvalue %dx.types.CBufRet.f32 %790, 1
  %1353 = fsub fast float %793, %1352
  %1354 = extractvalue %dx.types.CBufRet.f32 %790, 2
  %1355 = fmul fast float %1353, %1354
  %1356 = call float @dx.op.unary.f32(i32 7, float %1355)  ; Saturate(value)
  %1357 = fsub fast float %1356, %1351
  %1358 = fmul fast float %1357, %1344
  %1359 = fadd fast float %1358, %1351
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 0
  %1362 = fsub fast float %1359, %1361
  %1363 = fmul fast float %1362, 1.000000e+01
  %1364 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1365 = fmul fast float %1364, %743
  %1366 = fmul fast float %1359, %1365
  br label %1376

; <label>:1367                                    ; preds = %1343
  %1368 = fmul fast float %1346, %1326
  %1369 = fmul fast float %1346, %1327
  %1370 = fmul fast float %1328, %1346
  %1371 = call float @dx.op.binary.f32(i32 35, float %1369, float %1370)  ; FMax(a,b)
  %1372 = call float @dx.op.binary.f32(i32 35, float %1368, float %1371)  ; FMax(a,b)
  %1373 = call float @dx.op.binary.f32(i32 35, float %1372, float 0.000000e+00)  ; FMax(a,b)
  %1374 = fcmp fast ugt float %1373, 0x3F10000000000000
  br i1 %1374, label %1376, label %1375

; <label>:1375                                    ; preds = %1367
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1376

; <label>:1376                                    ; preds = %1375, %1367, %1347
  %1377 = phi float [ %1349, %1347 ], [ %1368, %1375 ], [ %1368, %1367 ]
  %1378 = phi float [ %1366, %1347 ], [ %1369, %1375 ], [ %1369, %1367 ]
  %1379 = phi float [ %1365, %1347 ], [ %1370, %1375 ], [ %1370, %1367 ]
  %1380 = phi float [ %1365, %1347 ], [ 0.000000e+00, %1375 ], [ 0.000000e+00, %1367 ]
  %1381 = fadd fast float %543, 0x3FE3C6EF40000000
  %1382 = call float @dx.op.unary.f32(i32 22, float %1381)  ; Frc(value)
  %1383 = call float @dx.op.unary.f32(i32 23, float %1377)  ; Log(value)
  %1384 = fadd fast float %1383, -7.000000e+00
  %1385 = call float @dx.op.unary.f32(i32 21, float %1384)  ; Exp(value)
  %1386 = fmul fast float %1382, 2.000000e+00
  %1387 = fadd fast float %1386, -1.000000e+00
  %1388 = fmul fast float %1385, %1387
  %1389 = fcmp fast ogt float %1377, 0.000000e+00
  %1390 = select i1 %1389, float %1388, float 0.000000e+00
  %1391 = fadd fast float %1390, %1377
  %1392 = fadd fast float %543, 0x3FF3C6EF40000000
  %1393 = call float @dx.op.unary.f32(i32 22, float %1392)  ; Frc(value)
  %1394 = call float @dx.op.unary.f32(i32 23, float %1378)  ; Log(value)
  %1395 = fadd fast float %1394, -7.000000e+00
  %1396 = call float @dx.op.unary.f32(i32 21, float %1395)  ; Exp(value)
  %1397 = fmul fast float %1393, 2.000000e+00
  %1398 = fadd fast float %1397, -1.000000e+00
  %1399 = fmul fast float %1396, %1398
  %1400 = fcmp fast ogt float %1378, 0.000000e+00
  %1401 = select i1 %1400, float %1399, float 0.000000e+00
  %1402 = fadd fast float %1401, %1378
  %1403 = fadd fast float %543, 0x3FFDAA66E0000000
  %1404 = call float @dx.op.unary.f32(i32 22, float %1403)  ; Frc(value)
  %1405 = call float @dx.op.unary.f32(i32 23, float %1379)  ; Log(value)
  %1406 = fadd fast float %1405, -6.000000e+00
  %1407 = call float @dx.op.unary.f32(i32 21, float %1406)  ; Exp(value)
  %1408 = fmul fast float %1404, 2.000000e+00
  %1409 = fadd fast float %1408, -1.000000e+00
  %1410 = fmul fast float %1407, %1409
  %1411 = fcmp fast ogt float %1379, 0.000000e+00
  %1412 = select i1 %1411, float %1410, float 0.000000e+00
  %1413 = fadd fast float %1412, %1379
  %1414 = select i1 %106, float %1378, float %1402
  %1415 = select i1 %106, float %1379, float %1413
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1416 = call float @dx.op.binary.f32(i32 36, float %1391, float 3.225500e+04)  ; FMin(a,b)
  %1417 = call float @dx.op.binary.f32(i32 36, float %1414, float 3.225500e+04)  ; FMin(a,b)
  %1418 = call float @dx.op.binary.f32(i32 36, float %1415, float 3.225500e+04)  ; FMin(a,b)
  %1419 = call float @dx.op.binary.f32(i32 36, float %1380, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1416)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1417)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1418)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1419)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1380)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1380)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1380)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1380)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!35}
!dx.entryPoints = !{!36}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !26, !29}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !21}
!21 = !{i32 0, i32 14}
!22 = !{i32 13, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!23 = !{i32 14, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !7}
!24 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!25 = !{i32 16, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!29 = !{!30, !31, !32, !33, !34}
!30 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!34 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!35 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!36 = !{void ()* @ps_main, !"ps_main", !37, !4, !60}
!37 = !{!38, !56, null}
!38 = !{!39, !42, !44, !46, !48, !50, !52, !53, !55}
!39 = !{i32 0, !"SV_Position", i8 9, i8 3, !40, i8 4, i32 1, i8 4, i32 0, i8 0, !41}
!40 = !{i32 0}
!41 = !{i32 3, i32 15}
!42 = !{i32 1, !"COLOR", i8 9, i8 0, !40, i8 2, i32 1, i8 4, i32 1, i8 0, !43}
!43 = !{i32 3, i32 8}
!44 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 2, i8 0, !45}
!45 = !{i32 3, i32 3}
!46 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 3, i8 0, !41}
!47 = !{i32 3}
!48 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !49, i8 3, i32 1, i8 2, i32 4, i8 0, !45}
!49 = !{i32 5}
!50 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 5, i8 0, !41}
!51 = !{i32 8}
!52 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !40, i8 1, i32 1, i8 4, i32 6, i8 0, !41}
!53 = !{i32 7, !"COLOR", i8 5, i8 0, !47, i8 1, i32 1, i8 3, i32 7, i8 0, !54}
!54 = !{i32 3, i32 5}
!55 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !40, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!56 = !{!57, !58}
!57 = !{i32 0, !"SV_Target", i8 9, i8 16, !40, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!58 = !{i32 1, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 1, i8 0, !41}
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
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}

