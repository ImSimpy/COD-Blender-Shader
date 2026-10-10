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
; COLOR                    3   xyz         7     NONE    uint   xyz 
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
; shader hash: 9c4e9cc03806e43af26c8873f3766bf9
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
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24, 25, 26, 27, 28, 29, 30 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 29, 30 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 29, 30 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 29, 30 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 29, 30 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 29, 30 }
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
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %49 = fmul fast float %48, %41
  %50 = fmul fast float %48, %42
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %54 = fmul fast float %49, 2.000000e+00
  %55 = fmul fast float %54, %52
  %56 = fmul fast float %50, 2.000000e+00
  %57 = fmul fast float %56, %53
  %58 = fsub fast float 1.000000e+00, %55
  %59 = fsub fast float 1.000000e+00, %57
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = fmul fast float %58, %61
  %65 = fmul fast float %58, %62
  %66 = fmul fast float %58, %63
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fmul fast float %59, %68
  %72 = fmul fast float %59, %69
  %73 = fmul fast float %59, %70
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = fadd fast float %71, %75
  %79 = fadd fast float %78, %64
  %80 = fadd fast float %72, %76
  %81 = fadd fast float %80, %65
  %82 = fadd fast float %73, %77
  %83 = fadd fast float %82, %66
  %84 = fmul fast float %79, %44
  %85 = fmul fast float %81, %44
  %86 = fmul fast float %83, %44
  %87 = bitcast i32 %22 to float
  %88 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.i32 %88, 3
  %90 = and i32 %89, 3
  %91 = icmp ne i32 %90, 0
  %92 = and i32 %89, 4
  %93 = icmp ne i32 %92, 0
  %94 = and i1 %91, %93
  br i1 %94, label %95, label %104

; <label>:95                                      ; preds = %0
  %96 = fmul fast float %53, %50
  %97 = fmul fast float %52, %49
  %98 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %97, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fsub fast float 1.000000e+00, %99
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = fcmp fast olt float %100, %102
  br label %107

; <label>:104                                     ; preds = %0
  %105 = icmp eq i32 %92, 0
  %106 = and i1 %91, %105
  br label %107

; <label>:107                                     ; preds = %104, %95
  %108 = phi i1 [ %103, %95 ], [ %106, %104 ]
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %110, %49
  %113 = fmul fast float %111, %50
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = and i32 %115, 114688
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %117, float %112, float 0.000000e+00
  %119 = select i1 %117, float %113, float 0.000000e+00
  %120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = fmul fast float %121, 2.550000e+02
  %123 = fptoui float %122 to i32
  %124 = select i1 %117, i32 %123, i32 0
  %125 = mul i32 %21, 208
  %126 = add i32 %125, 188
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = and i32 %89, 114688
  %130 = and i32 %89, 8
  %131 = icmp ne i32 %130, 0
  %132 = or i1 %108, %131
  %133 = select i1 %132, i32 %129, i32 16384
  %134 = and i32 %133, %128
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

; <label>:136                                     ; preds = %107
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %137

; <label>:137                                     ; preds = %136, %107
  %138 = and i32 %128, 512
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %164, label %140

; <label>:140                                     ; preds = %137
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 3
  %144 = fmul fast float %142, %49
  %145 = fmul fast float %143, %50
  %146 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %148 = fdiv fast float %146, %147
  %149 = fcmp fast ogt float %148, 0x3FFC71C720000000
  br i1 %149, label %150, label %156

; <label>:150                                     ; preds = %140
  %151 = fdiv fast float 0x3FFC71C720000000, %148
  %152 = fmul fast float %151, %145
  %153 = fsub fast float 1.000000e+00, %151
  %154 = fmul fast float %153, 5.000000e-01
  %155 = fadd fast float %154, %152
  br label %164

; <label>:156                                     ; preds = %140
  %157 = fcmp fast olt float %148, 0x3FFC71C720000000
  br i1 %157, label %158, label %164

; <label>:158                                     ; preds = %156
  %159 = fmul fast float %144, 5.625000e-01
  %160 = fmul fast float %159, %148
  %161 = fmul fast float %148, 2.812500e-01
  %162 = fsub fast float 5.000000e-01, %161
  %163 = fadd fast float %162, %160
  br label %164

; <label>:164                                     ; preds = %158, %156, %150, %137
  %165 = phi float [ %38, %137 ], [ %144, %150 ], [ %163, %158 ], [ %144, %156 ]
  %166 = phi float [ %39, %137 ], [ %155, %150 ], [ %145, %158 ], [ %145, %156 ]
  %167 = add i32 %23, 72
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = extractvalue %dx.types.ResRet.i32 %168, 1
  %171 = bitcast i32 %169 to float
  %172 = bitcast i32 %170 to float
  %173 = fmul fast float %171, %38
  %174 = fmul fast float %172, %39
  %175 = call float @dx.op.unary.f32(i32 22, float %173)  ; Frc(value)
  %176 = call float @dx.op.unary.f32(i32 22, float %174)  ; Frc(value)
  %177 = and i32 %128, 16
  %178 = icmp ne i32 %177, 0
  %179 = select i1 %178, float 1.000000e+00, float %40
  %180 = icmp eq i32 %177, 0
  br i1 %180, label %200, label %181, !dx.controlflow.hints !59

; <label>:181                                     ; preds = %164
  %182 = add i32 %125, 64
  %183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = fadd fast float %184, 1.000000e+00
  %186 = fmul fast float %185, %40
  %187 = fsub fast float %186, %184
  %188 = fsub fast float %185, %187
  %189 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %190 = fsub fast float 1.000000e+00, %186
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = fsub fast float %189, %191
  %193 = fsub fast float %179, %191
  %194 = fdiv fast float %193, %192
  %195 = call float @dx.op.unary.f32(i32 7, float %194)  ; Saturate(value)
  %196 = fmul fast float %195, 2.000000e+00
  %197 = fsub fast float 3.000000e+00, %196
  %198 = fmul fast float %195, %195
  %199 = fmul fast float %198, %197
  br label %200

; <label>:200                                     ; preds = %181, %164
  %201 = phi float [ %199, %181 ], [ %179, %164 ]
  %202 = fcmp fast ogt float %201, 0.000000e+00
  br i1 %202, label %204, label %203

; <label>:203                                     ; preds = %200
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %204

; <label>:204                                     ; preds = %203, %200
  %205 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  %206 = fmul fast float %49, 5.000000e-01
  %207 = fmul fast float %50, 5.000000e-01
  %208 = fptosi float %206 to i32
  %209 = fptosi float %207 to i32
  %210 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = lshr i32 %211, 18
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F4C00EBA0000000
  %215 = call float @dx.op.unary.f32(i32 21, float %214)  ; Exp(value)
  %216 = fadd fast float %215, -1.000000e+00
  %217 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %218 = extractvalue %dx.types.Dimensions %217, 0
  %219 = sitofp i32 %218 to float
  %220 = extractvalue %dx.types.Dimensions %217, 1
  %221 = sitofp i32 %220 to float
  %222 = fcmp fast oge float %206, %219
  %223 = fcmp fast oge float %207, %221
  %224 = or i1 %222, %223
  %225 = select i1 %224, float 0x4197782600000000, float %216
  %226 = fsub fast float %225, %44
  %227 = fcmp fast ogt float %226, 0.000000e+00
  %228 = and i32 %124, -2
  %229 = icmp eq i32 %228, 2
  %230 = and i1 %229, %227
  %231 = xor i1 %227, true
  %232 = icmp eq i32 %124, 1
  %233 = and i1 %232, %231
  %234 = or i1 %230, %233
  %235 = and i32 %128, 262144
  %236 = icmp ne i32 %235, 0
  %237 = and i1 %236, %234
  %238 = xor i1 %234, true
  %239 = and i32 %128, 131072
  %240 = icmp ne i32 %239, 0
  %241 = and i1 %240, %238
  %242 = or i1 %237, %241
  br i1 %242, label %243, label %244

; <label>:243                                     ; preds = %204
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %244

; <label>:244                                     ; preds = %243, %204
  %245 = and i32 %128, 32
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %497, label %247, !dx.controlflow.hints !60

; <label>:247                                     ; preds = %244
  %248 = add i32 %125, 80
  %249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = extractvalue %dx.types.ResRet.f32 %249, 1
  %252 = extractvalue %dx.types.ResRet.f32 %249, 2
  %253 = extractvalue %dx.types.ResRet.f32 %249, 3
  %254 = add i32 %125, 96
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = extractvalue %dx.types.ResRet.f32 %255, 1
  %258 = extractvalue %dx.types.ResRet.f32 %255, 2
  %259 = add i32 %125, 112
  %260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = extractvalue %dx.types.ResRet.f32 %260, 1
  %263 = extractvalue %dx.types.ResRet.f32 %260, 2
  %264 = extractvalue %dx.types.ResRet.f32 %260, 3
  %265 = add i32 %125, 128
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = extractvalue %dx.types.ResRet.f32 %266, 1
  %269 = extractvalue %dx.types.ResRet.f32 %266, 2
  %270 = extractvalue %dx.types.ResRet.f32 %266, 3
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 4096
  %274 = icmp ne i32 %273, 0
  %275 = fcmp fast une float %258, 0.000000e+00
  %276 = and i32 %272, 64
  %277 = icmp ne i32 %276, 0
  %278 = and i32 %272, 128
  %279 = icmp eq i32 %278, 0
  %280 = and i32 %272, 2048
  %281 = icmp eq i32 %280, 0
  %282 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %283 = extractvalue %dx.types.Dimensions %282, 0
  %284 = sitofp i32 %283 to float
  %285 = extractvalue %dx.types.Dimensions %282, 1
  %286 = sitofp i32 %285 to float
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 2
  %289 = extractvalue %dx.types.CBufRet.f32 %287, 3
  %290 = fmul fast float %288, %49
  %291 = fmul fast float %289, %50
  %292 = fmul fast float %290, %284
  %293 = fmul fast float %291, %286
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %296 = fsub fast float -0.000000e+00, %295
  %297 = fptoui float %296 to i32
  %298 = fptoui float %292 to i32
  %299 = fptoui float %293 to i32
  %300 = and i32 %297, 31
  %301 = lshr i32 %298, %300
  %302 = lshr i32 %299, %300
  %303 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %297, i32 %301, i32 %302, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = fcmp fast ogt float %304, -1.000000e+00
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %308 = select i1 %305, float %307, float 1.000000e+00
  %309 = fadd fast float %304, 1.000000e+00
  %310 = fmul fast float %308, %309
  %311 = call float @dx.op.unary.f32(i32 6, float %310)  ; FAbs(value)
  %312 = extractvalue %dx.types.CBufRet.f32 %306, 3
  %313 = fcmp fast oge float %311, %312
  %314 = select i1 %313, float 0x4197782600000000, float %311
  br i1 %281, label %392, label %315, !dx.controlflow.hints !61

; <label>:315                                     ; preds = %247
  %316 = fmul fast float %54, %288
  %317 = fmul fast float %56, %289
  %318 = fsub fast float 1.000000e+00, %316
  %319 = fsub fast float 1.000000e+00, %317
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %324 = fmul fast float %318, %321
  %325 = fmul fast float %318, %322
  %326 = fmul fast float %318, %323
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = fmul fast float %319, %328
  %332 = fmul fast float %319, %329
  %333 = fmul fast float %319, %330
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %338 = fadd fast float %331, %335
  %339 = fadd fast float %338, %324
  %340 = fadd fast float %332, %336
  %341 = fadd fast float %340, %325
  %342 = fadd fast float %333, %337
  %343 = fadd fast float %342, %326
  %344 = fmul fast float %339, %314
  %345 = fmul fast float %341, %314
  %346 = fmul fast float %343, %314
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %350 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %351 = fsub fast float %348, %24
  %352 = fadd fast float %351, %344
  %353 = fsub fast float %349, %25
  %354 = fadd fast float %353, %345
  %355 = fsub fast float %350, %26
  %356 = fadd fast float %355, %346
  %357 = fmul fast float %27, %27
  %358 = call float @dx.op.dot3.f32(i32 55, float %352, float %354, float %356, float %352, float %354, float %356)  ; Dot3(ax,ay,az,bx,by,bz)
  %359 = fsub fast float %357, %358
  %360 = fmul fast float %257, %357
  %361 = fmul fast float %256, %357
  %362 = fcmp fast olt float %359, %360
  %363 = fcmp fast ogt float %359, %361
  %364 = or i1 %362, %363
  %365 = select i1 %364, float 0.000000e+00, float %359
  %366 = fsub fast float %256, %257
  %367 = fmul fast float %366, %357
  %368 = fsub fast float %365, %360
  %369 = fdiv fast float %368, %367
  %370 = call float @dx.op.unary.f32(i32 7, float %369)  ; Saturate(value)
  %371 = fmul fast float %370, 2.000000e+00
  %372 = fsub fast float 3.000000e+00, %371
  %373 = fmul fast float %370, %370
  %374 = fmul fast float %373, %372
  %375 = fsub fast float %264, %270
  %376 = fmul fast float %374, %375
  %377 = fadd fast float %376, %270
  %378 = fmul fast float %261, %28
  %379 = fmul fast float %262, %29
  %380 = fmul fast float %263, %30
  %381 = fsub fast float %378, %267
  %382 = fsub fast float %379, %268
  %383 = fsub fast float %380, %269
  %384 = fmul fast float %374, %381
  %385 = fmul fast float %374, %382
  %386 = fmul fast float %374, %383
  %387 = fadd fast float %384, %267
  %388 = fadd fast float %385, %268
  %389 = fadd fast float %386, %269
  %390 = fmul fast float %250, %250
  %391 = fmul fast float %390, %365
  br label %487

; <label>:392                                     ; preds = %247
  %393 = and i32 %272, 256
  %394 = icmp eq i32 %393, 0
  %395 = fsub fast float %314, %44
  br i1 %394, label %444, label %396

; <label>:396                                     ; preds = %392
  %397 = fadd fast float %256, %44
  %398 = fcmp fast olt float %314, %44
  %399 = fcmp fast ogt float %314, %397
  %400 = or i1 %398, %399
  %401 = select i1 %400, float 0.000000e+00, float %395
  %402 = call float @dx.op.unary.f32(i32 83, float %314)  ; DerivCoarseX(value)
  %403 = call float @dx.op.unary.f32(i32 84, float %314)  ; DerivCoarseY(value)
  %404 = fmul fast float %402, %402
  %405 = fmul fast float %403, %403
  %406 = fadd fast float %405, %404
  %407 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %408 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %409 = fmul fast float %408, %407
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %411 = fmul fast float %410, %257
  %412 = fdiv fast float %395, %411
  %413 = call float @dx.op.unary.f32(i32 7, float %412)  ; Saturate(value)
  %414 = fmul fast float %413, 2.000000e+00
  %415 = fsub fast float 3.000000e+00, %414
  %416 = fmul fast float %413, %413
  %417 = fmul fast float %416, %415
  %418 = fsub fast float %314, %397
  %419 = fadd fast float %418, %411
  %420 = fdiv fast float %419, %411
  %421 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %422 = fmul fast float %421, 2.000000e+00
  %423 = fsub fast float 3.000000e+00, %422
  %424 = fmul fast float %421, %421
  %425 = fmul fast float %424, %423
  %426 = fsub fast float %417, %425
  %427 = fsub fast float %264, %270
  %428 = fmul fast float %426, %427
  %429 = fadd fast float %428, %270
  %430 = fmul fast float %261, %28
  %431 = fmul fast float %262, %29
  %432 = fmul fast float %263, %30
  %433 = fsub fast float %430, %267
  %434 = fsub fast float %431, %268
  %435 = fsub fast float %432, %269
  %436 = fmul fast float %426, %433
  %437 = fmul fast float %426, %434
  %438 = fmul fast float %426, %435
  %439 = fadd fast float %436, %267
  %440 = fadd fast float %437, %268
  %441 = fadd fast float %438, %269
  %442 = fmul fast float %401, %250
  %443 = call float @dx.op.unary.f32(i32 6, float %442)  ; FAbs(value)
  br label %487

; <label>:444                                     ; preds = %392
  br i1 %275, label %445, label %458

; <label>:445                                     ; preds = %444
  %446 = fdiv fast float 5.000000e+01, %27
  %447 = select i1 %277, float %446, float 1.000000e+00
  %448 = fmul fast float %447, %250
  %449 = fmul fast float %175, 2.000000e+00
  %450 = fmul fast float %176, 2.000000e+00
  %451 = fadd fast float %449, -1.000000e+00
  %452 = fadd fast float %450, -1.000000e+00
  %453 = call float @dx.op.dot2.f32(i32 54, float %451, float %452, float %451, float %452)  ; Dot2(ax,ay,bx,by)
  %454 = fmul fast float %258, %27
  %455 = fmul fast float %454, %453
  %456 = fsub fast float %395, %455
  %457 = fmul fast float %448, %456
  br label %487

; <label>:458                                     ; preds = %444
  br i1 %279, label %479, label %459

; <label>:459                                     ; preds = %458
  %460 = fmul fast float %27, 0x3F947AE140000000
  %461 = select i1 %277, float %460, float 1.000000e+00
  %462 = fdiv fast float 1.000000e+00, %461
  %463 = fmul fast float %461, %251
  %464 = fmul fast float %461, %252
  %465 = fmul fast float %462, %253
  %466 = call float @dx.op.unary.f32(i32 6, float %395)  ; FAbs(value)
  %467 = fcmp fast olt float %466, %463
  br i1 %467, label %468, label %472, !dx.controlflow.hints !62

; <label>:468                                     ; preds = %459
  %469 = fmul fast float %462, %250
  %470 = fmul fast float %469, %466
  %471 = call float @dx.op.unary.f32(i32 6, float %470)  ; FAbs(value)
  br label %487

; <label>:472                                     ; preds = %459
  %473 = fcmp fast ogt float %466, %464
  br i1 %473, label %474, label %487

; <label>:474                                     ; preds = %472
  %475 = fsub fast float %466, %464
  %476 = fmul fast float %465, %475
  %477 = call float @dx.op.unary.f32(i32 6, float %476)  ; FAbs(value)
  %478 = fsub fast float 1.000000e+00, %477
  br label %487

; <label>:479                                     ; preds = %458
  %480 = fdiv fast float 5.000000e+01, %27
  %481 = select i1 %277, float %480, float 1.000000e+00
  %482 = fmul fast float %481, %250
  %483 = call float @dx.op.unary.f32(i32 6, float %226)  ; FAbs(value)
  %484 = select i1 %274, float %483, float 0x47EFFFFFE0000000
  %485 = call float @dx.op.binary.f32(i32 36, float %395, float %484)  ; FMin(a,b)
  %486 = fmul fast float %482, %485
  br label %487

; <label>:487                                     ; preds = %479, %474, %472, %468, %445, %396, %315
  %488 = phi float [ %391, %315 ], [ %443, %396 ], [ %457, %445 ], [ %486, %479 ], [ %471, %468 ], [ %478, %474 ], [ %466, %472 ]
  %489 = phi float [ %387, %315 ], [ %439, %396 ], [ %28, %445 ], [ %28, %479 ], [ %28, %468 ], [ %28, %474 ], [ %28, %472 ]
  %490 = phi float [ %388, %315 ], [ %440, %396 ], [ %29, %445 ], [ %29, %479 ], [ %29, %468 ], [ %29, %474 ], [ %29, %472 ]
  %491 = phi float [ %389, %315 ], [ %441, %396 ], [ %30, %445 ], [ %30, %479 ], [ %30, %468 ], [ %30, %474 ], [ %30, %472 ]
  %492 = phi float [ %377, %315 ], [ %429, %396 ], [ 1.000000e+00, %445 ], [ 1.000000e+00, %479 ], [ 1.000000e+00, %468 ], [ 1.000000e+00, %474 ], [ 1.000000e+00, %472 ]
  %493 = call float @dx.op.unary.f32(i32 7, float %488)  ; Saturate(value)
  %494 = fmul fast float %493, %40
  %495 = fmul fast float %492, %205
  %496 = fmul fast float %495, %493
  br label %497

; <label>:497                                     ; preds = %487, %244
  %498 = phi float [ %496, %487 ], [ %205, %244 ]
  %499 = phi float [ %494, %487 ], [ %40, %244 ]
  %500 = phi float [ %489, %487 ], [ %28, %244 ]
  %501 = phi float [ %490, %487 ], [ %29, %244 ]
  %502 = phi float [ %491, %487 ], [ %30, %244 ]
  %503 = fmul fast float %500, %31
  %504 = fmul fast float %501, %31
  %505 = fmul fast float %502, %31
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 2
  %508 = fptosi float %44 to i32
  %509 = sitofp i32 %508 to float
  %510 = fadd fast float %507, %509
  %511 = fmul fast float %510, 0x3FE3C6EF40000000
  %512 = frem fast float %49, 2.560000e+02
  %513 = frem fast float %50, 2.560000e+02
  %514 = fptoui float %512 to i32
  %515 = fptoui float %513 to i32
  %516 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %514, i32 %515, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  %518 = fadd fast float %517, %511
  %519 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %520 = and i32 %128, 1
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %579, label %522, !dx.controlflow.hints !63

; <label>:522                                     ; preds = %497
  %523 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.f32 %523, 2
  %525 = extractvalue %dx.types.ResRet.f32 %523, 3
  %526 = add i32 %125, 16
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = extractvalue %dx.types.ResRet.f32 %527, 1
  %530 = extractvalue %dx.types.ResRet.f32 %527, 2
  %531 = add i32 %125, 32
  %532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = extractvalue %dx.types.ResRet.f32 %532, 1
  %535 = extractvalue %dx.types.ResRet.f32 %532, 2
  %536 = and i32 %128, 2
  %537 = icmp eq i32 %536, 0
  %538 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float %34, float %35, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %539 = call float @dx.op.unary.f32(i32 25, float %538)  ; Rsqrt(value)
  %540 = fmul fast float %539, %34
  %541 = fmul fast float %539, %35
  %542 = fmul fast float %539, %36
  %543 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %544 = call float @dx.op.unary.f32(i32 25, float %543)  ; Rsqrt(value)
  %545 = fmul fast float %544, %84
  %546 = fmul fast float %544, %85
  %547 = fmul fast float %544, %86
  %548 = call float @dx.op.dot3.f32(i32 55, float %545, float %546, float %547, float %540, float %541, float %542)  ; Dot3(ax,ay,az,bx,by,bz)
  %549 = fmul fast float %548, %548
  %550 = fmul fast float %549, %524
  %551 = fadd fast float %550, %525
  %552 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  br i1 %537, label %553, label %563, !dx.controlflow.hints !64

; <label>:553                                     ; preds = %522
  %554 = extractvalue %dx.types.ResRet.f32 %523, 1
  %555 = extractvalue %dx.types.ResRet.f32 %523, 0
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 3
  %558 = fmul fast float %557, %543
  %559 = fsub fast float %555, %558
  %560 = fmul fast float %559, %554
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %562 = fmul fast float %561, %552
  br label %563

; <label>:563                                     ; preds = %553, %522
  %564 = phi float [ %562, %553 ], [ %552, %522 ]
  %565 = fsub fast float %528, %533
  %566 = fsub fast float %529, %534
  %567 = fsub fast float %530, %535
  %568 = fmul fast float %564, %565
  %569 = fmul fast float %564, %566
  %570 = fmul fast float %564, %567
  %571 = fadd fast float %568, %533
  %572 = fadd fast float %569, %534
  %573 = fadd fast float %570, %535
  %574 = fmul fast float %571, %503
  %575 = fmul fast float %572, %504
  %576 = fmul fast float %573, %505
  %577 = fmul fast float %564, %498
  %578 = fmul fast float %564, %499
  br label %579

; <label>:579                                     ; preds = %563, %497
  %580 = phi float [ %577, %563 ], [ %498, %497 ]
  %581 = phi float [ %578, %563 ], [ %499, %497 ]
  %582 = phi float [ %574, %563 ], [ %503, %497 ]
  %583 = phi float [ %575, %563 ], [ %504, %497 ]
  %584 = phi float [ %576, %563 ], [ %505, %497 ]
  %585 = add i32 %23, 120
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = add i32 %587, 0
  %589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %588, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %590 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %589, %dx.types.Handle %45, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %591 = extractvalue %dx.types.ResRet.f32 %590, 0
  %592 = extractvalue %dx.types.ResRet.f32 %590, 1
  %593 = extractvalue %dx.types.ResRet.f32 %590, 2
  %594 = add i32 %23, 44
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = shl i32 %596, 4
  %598 = and i32 %597, 32752
  %599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %598)  ; LegacyF16ToF32(value)
  %600 = lshr i32 %596, 7
  %601 = and i32 %600, 32752
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = lshr i32 %596, 22
  %604 = shl nuw nsw i32 %603, 5
  %605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %604)  ; LegacyF16ToF32(value)
  %606 = fmul fast float %599, %591
  %607 = fmul fast float %602, %592
  %608 = fmul fast float %605, %593
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 0
  %611 = fmul fast float %606, %610
  %612 = fmul fast float %607, %610
  %613 = fmul fast float %608, %610
  %614 = add i32 %23, 48
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = lshr i32 %616, 22
  %618 = shl nuw nsw i32 %617, 5
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = fmul fast float %619, %611
  %621 = select i1 %108, float %620, float %611
  %622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = extractvalue %dx.types.ResRet.f32 %622, 1
  %625 = extractvalue %dx.types.ResRet.f32 %622, 2
  %626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.f32 %626, 1
  %628 = fmul fast float %621, %582
  %629 = fmul fast float %612, %583
  %630 = fmul fast float %613, %584
  %631 = call float @dx.op.dot3.f32(i32 55, float %628, float %629, float %630, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %632 = select i1 %108, float 0.000000e+00, float %628
  %633 = select i1 %108, float %631, float %629
  %634 = select i1 %108, float 0.000000e+00, float %630
  %635 = call float @dx.op.dot3.f32(i32 55, float %591, float %592, float %593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %636 = add i32 %23, 32
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %636, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = lshr i32 %638, 8
  %642 = and i32 %641, 255
  %643 = uitofp i32 %642 to float
  %644 = fmul fast float %643, %635
  %645 = fadd fast float %644, %640
  %646 = fmul fast float %645, 0x3F70101020000000
  %647 = call float @dx.op.unary.f32(i32 7, float %646)  ; Saturate(value)
  %648 = add i32 %23, 124
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = add i32 %650, 0
  %652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %653 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %652, %dx.types.Handle %46, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %654 = extractvalue %dx.types.ResRet.f32 %653, 0
  %655 = and i32 %128, 8192
  %656 = icmp eq i32 %655, 0
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 0
  br i1 %656, label %669, label %659, !dx.controlflow.hints !65

; <label>:659                                     ; preds = %579
  %660 = add i32 %125, 176
  %661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = extractvalue %dx.types.ResRet.f32 %661, 1
  %664 = fcmp fast oge float %662, 0.000000e+00
  %665 = select i1 %664, float %662, float %658
  %666 = fmul fast float %654, %87
  %667 = fmul fast float %666, %663
  %668 = fadd fast float %667, %665
  br label %680

; <label>:669                                     ; preds = %579
  %670 = add i32 %23, 104
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %670, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = extractvalue %dx.types.ResRet.i32 %671, 1
  %674 = bitcast i32 %672 to float
  %675 = bitcast i32 %673 to float
  %676 = fcmp fast oge float %674, 0.000000e+00
  %677 = select i1 %676, float %674, float %658
  %678 = fmul fast float %675, %654
  %679 = fadd fast float %677, %678
  br label %680

; <label>:680                                     ; preds = %669, %659
  %681 = phi float [ %668, %659 ], [ %679, %669 ]
  %682 = fmul fast float %635, %581
  %683 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = lshr i32 %684, 18
  %686 = uitofp i32 %685 to float
  %687 = fmul fast float %686, 0x3F4C00EBA0000000
  %688 = call float @dx.op.unary.f32(i32 21, float %687)  ; Exp(value)
  %689 = fadd fast float %688, -1.000000e+00
  %690 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %691 = extractvalue %dx.types.Dimensions %690, 0
  %692 = sitofp i32 %691 to float
  %693 = extractvalue %dx.types.Dimensions %690, 1
  %694 = sitofp i32 %693 to float
  %695 = fcmp fast oge float %206, %692
  %696 = fcmp fast oge float %207, %694
  %697 = or i1 %695, %696
  %698 = select i1 %697, float 0x4197782600000000, float %689
  %699 = icmp eq i32 %124, 3
  %700 = fcmp fast ogt float %44, %698
  %701 = and i1 %232, %700
  %702 = or i1 %699, %701
  %703 = icmp eq i32 %124, 2
  %704 = fcmp fast ole float %44, %698
  %705 = and i1 %703, %704
  %706 = or i1 %705, %702
  %707 = fmul fast float %500, %37
  %708 = fmul fast float %707, %621
  %709 = fmul fast float %708, %623
  %710 = fmul fast float %709, %627
  %711 = fmul fast float %501, %37
  %712 = fmul fast float %711, %612
  %713 = fmul fast float %712, %624
  %714 = fmul fast float %713, %627
  %715 = fmul fast float %502, %37
  %716 = fmul fast float %715, %613
  %717 = fmul fast float %716, %625
  %718 = fmul fast float %717, %627
  %719 = fadd fast float %710, %632
  %720 = fadd fast float %633, %714
  %721 = fadd fast float %718, %634
  %722 = fmul fast float %719, %580
  %723 = fmul fast float %720, %580
  %724 = fmul fast float %721, %580
  %725 = fmul fast float %681, %647
  %726 = fsub fast float 1.000000e+00, %647
  %727 = fsub fast float %726, %682
  %728 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.f32 %729, 3
  %731 = fmul fast float %730, %728
  %732 = fadd fast float %731, %725
  %733 = and i32 %128, 1048576
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %826, label %735, !dx.controlflow.hints !66

; <label>:735                                     ; preds = %680
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 2
  %738 = extractvalue %dx.types.CBufRet.f32 %736, 3
  %739 = fmul fast float %737, %49
  %740 = fmul fast float %738, %50
  %741 = call float @dx.op.unary.f32(i32 7, float %739)  ; Saturate(value)
  %742 = call float @dx.op.unary.f32(i32 7, float %740)  ; Saturate(value)
  %743 = select i1 %706, i32 2, i32 0
  %744 = or i32 %743, 1
  %745 = uitofp i32 %744 to float
  %746 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %741, float %742, float %745, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  %750 = extractvalue %dx.types.ResRet.f32 %746, 3
  %751 = add nuw nsw i32 %743, 2
  %752 = uitofp i32 %751 to float
  %753 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %741, float %742, float %752, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = extractvalue %dx.types.ResRet.f32 %753, 1
  %756 = extractvalue %dx.types.ResRet.f32 %753, 2
  %757 = extractvalue %dx.types.ResRet.f32 %753, 3
  %758 = call float @dx.op.binary.f32(i32 35, float %748, float %749)  ; FMax(a,b)
  %759 = call float @dx.op.binary.f32(i32 35, float %747, float %758)  ; FMax(a,b)
  %760 = call float @dx.op.binary.f32(i32 35, float %759, float %750)  ; FMax(a,b)
  %761 = call float @dx.op.binary.f32(i32 36, float %755, float %756)  ; FMin(a,b)
  %762 = call float @dx.op.binary.f32(i32 36, float %754, float %761)  ; FMin(a,b)
  %763 = call float @dx.op.binary.f32(i32 36, float %762, float %757)  ; FMin(a,b)
  %764 = fmul fast float %760, 2.550000e+02
  %765 = fadd fast float %764, 0x3F70101020000000
  %766 = fptoui float %765 to i32
  %767 = fmul fast float %763, 2.550000e+02
  %768 = fadd fast float %767, 0x3F70101020000000
  %769 = fptoui float %768 to i32
  %770 = icmp ult i32 %766, %769
  br i1 %770, label %771, label %819

; <label>:771                                     ; preds = %735
  %772 = fcmp fast ogt float %43, 9.843750e-01
  %773 = fadd fast float %44, -4.000000e+00
  %774 = select i1 %772, float -4.000000e+00, float %773
  %775 = call float @dx.op.binary.f32(i32 35, float %774, float 0.000000e+00)  ; FMax(a,b)
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 0
  %778 = fadd fast float %777, %775
  %779 = extractvalue %dx.types.CBufRet.f32 %776, 2
  %780 = fmul fast float %778, %779
  %781 = call float @dx.op.unary.f32(i32 23, float %780)  ; Log(value)
  %782 = extractvalue %dx.types.CBufRet.f32 %776, 3
  %783 = fmul fast float %782, %781
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 2
  %786 = fmul fast float %783, %785
  %787 = call float @dx.op.unary.f32(i32 7, float %786)  ; Saturate(value)
  %788 = uitofp i32 %766 to float
  %789 = uitofp i32 %769 to float
  %790 = fadd fast float %788, 5.000000e-01
  %791 = fadd fast float %789, 5.000000e-01
  %792 = fmul fast float %785, %790
  %793 = fmul fast float %785, %791
  %794 = fadd fast float %792, 0x3F0FFB4800000000
  %795 = fadd fast float %793, 0xBF0FFB4800000000
  %796 = call float @dx.op.binary.f32(i32 35, float %787, float %794)  ; FMax(a,b)
  %797 = call float @dx.op.binary.f32(i32 36, float %796, float %795)  ; FMin(a,b)
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 1
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 2
  %801 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %802 = select i1 %706, float %801, float 0.000000e+00
  %803 = fmul fast float %799, %797
  %804 = fadd fast float %802, %803
  %805 = fadd fast float %802, %800
  %806 = fsub fast float %799, %800
  %807 = fadd fast float %806, %802
  %808 = call float @dx.op.binary.f32(i32 35, float %804, float %805)  ; FMax(a,b)
  %809 = call float @dx.op.binary.f32(i32 36, float %808, float %807)  ; FMin(a,b)
  %810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %741, float %742, float %809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = extractvalue %dx.types.ResRet.f32 %810, 2
  %814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.f32 %814, 1
  %816 = fmul fast float %815, %811
  %817 = fmul fast float %815, %812
  %818 = fmul fast float %815, %813
  br label %819

; <label>:819                                     ; preds = %771, %735
  %820 = phi float [ %816, %771 ], [ 1.000000e+00, %735 ]
  %821 = phi float [ %817, %771 ], [ 1.000000e+00, %735 ]
  %822 = phi float [ %818, %771 ], [ 1.000000e+00, %735 ]
  %823 = fmul fast float %820, %722
  %824 = fmul fast float %821, %723
  %825 = fmul fast float %822, %724
  br label %826

; <label>:826                                     ; preds = %819, %680
  %827 = phi float [ %823, %819 ], [ %722, %680 ]
  %828 = phi float [ %824, %819 ], [ %723, %680 ]
  %829 = phi float [ %825, %819 ], [ %724, %680 ]
  %830 = and i32 %128, 2097152
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %836, label %832, !dx.controlflow.hints !67

; <label>:832                                     ; preds = %826
  %833 = add i32 %125, 192
  %834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.f32 %834, 0
  br label %839

; <label>:836                                     ; preds = %826
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 3
  br label %839

; <label>:839                                     ; preds = %836, %832
  %840 = phi float [ %835, %832 ], [ %838, %836 ]
  br i1 %701, label %841, label %925

; <label>:841                                     ; preds = %839
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 2
  %844 = extractvalue %dx.types.CBufRet.f32 %842, 3
  %845 = fmul fast float %843, %49
  %846 = fmul fast float %844, %50
  %847 = call float @dx.op.unary.f32(i32 7, float %845)  ; Saturate(value)
  %848 = call float @dx.op.unary.f32(i32 7, float %846)  ; Saturate(value)
  %849 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %847, float %848, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = extractvalue %dx.types.ResRet.f32 %849, 1
  %852 = extractvalue %dx.types.ResRet.f32 %849, 2
  %853 = extractvalue %dx.types.ResRet.f32 %849, 3
  %854 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %847, float %848, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = extractvalue %dx.types.ResRet.f32 %854, 3
  %859 = call float @dx.op.binary.f32(i32 35, float %851, float %852)  ; FMax(a,b)
  %860 = call float @dx.op.binary.f32(i32 35, float %850, float %859)  ; FMax(a,b)
  %861 = call float @dx.op.binary.f32(i32 35, float %860, float %853)  ; FMax(a,b)
  %862 = call float @dx.op.binary.f32(i32 36, float %856, float %857)  ; FMin(a,b)
  %863 = call float @dx.op.binary.f32(i32 36, float %855, float %862)  ; FMin(a,b)
  %864 = call float @dx.op.binary.f32(i32 36, float %863, float %858)  ; FMin(a,b)
  %865 = fmul fast float %861, 2.550000e+02
  %866 = fadd fast float %865, 0x3F70101020000000
  %867 = fptoui float %866 to i32
  %868 = fmul fast float %864, 2.550000e+02
  %869 = fadd fast float %868, 0x3F70101020000000
  %870 = fptoui float %869 to i32
  %871 = icmp ult i32 %867, %870
  br i1 %871, label %872, label %914

; <label>:872                                     ; preds = %841
  %873 = fcmp fast ogt float %43, 9.843750e-01
  %874 = fadd fast float %44, -4.000000e+00
  %875 = select i1 %873, float -4.000000e+00, float %874
  %876 = call float @dx.op.binary.f32(i32 35, float %875, float 0.000000e+00)  ; FMax(a,b)
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 0
  %879 = fadd fast float %878, %876
  %880 = extractvalue %dx.types.CBufRet.f32 %877, 2
  %881 = fmul fast float %879, %880
  %882 = call float @dx.op.unary.f32(i32 23, float %881)  ; Log(value)
  %883 = extractvalue %dx.types.CBufRet.f32 %877, 3
  %884 = fmul fast float %883, %882
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %887 = fmul fast float %884, %886
  %888 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %889 = uitofp i32 %867 to float
  %890 = uitofp i32 %870 to float
  %891 = fadd fast float %889, 5.000000e-01
  %892 = fadd fast float %890, 5.000000e-01
  %893 = fmul fast float %886, %891
  %894 = fmul fast float %886, %892
  %895 = fadd fast float %893, 0x3F0FFB4800000000
  %896 = fadd fast float %894, 0xBF0FFB4800000000
  %897 = call float @dx.op.binary.f32(i32 35, float %888, float %895)  ; FMax(a,b)
  %898 = call float @dx.op.binary.f32(i32 36, float %897, float %896)  ; FMin(a,b)
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 1
  %901 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %902 = extractvalue %dx.types.CBufRet.f32 %899, 0
  %903 = fmul fast float %900, %898
  %904 = fadd fast float %902, %903
  %905 = fadd fast float %902, %901
  %906 = fsub fast float %900, %901
  %907 = fadd fast float %906, %902
  %908 = call float @dx.op.binary.f32(i32 35, float %904, float %905)  ; FMax(a,b)
  %909 = call float @dx.op.binary.f32(i32 36, float %908, float %907)  ; FMin(a,b)
  %910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %847, float %848, float %909, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = extractvalue %dx.types.ResRet.f32 %910, 1
  %913 = extractvalue %dx.types.ResRet.f32 %910, 2
  br label %914

; <label>:914                                     ; preds = %872, %841
  %915 = phi float [ %911, %872 ], [ 1.000000e+00, %841 ]
  %916 = phi float [ %912, %872 ], [ 1.000000e+00, %841 ]
  %917 = phi float [ %913, %872 ], [ 1.000000e+00, %841 ]
  %918 = call float @dx.op.dot3.f32(i32 55, float %915, float %916, float %917, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = select i1 %108, float %918, float %915
  %920 = select i1 %108, float %918, float %916
  %921 = select i1 %108, float 1.000000e+00, float %917
  %922 = fmul fast float %919, %827
  %923 = fmul fast float %920, %828
  %924 = fmul fast float %921, %829
  br label %925

; <label>:925                                     ; preds = %914, %839
  %926 = phi float [ %698, %914 ], [ %44, %839 ]
  %927 = phi float [ %922, %914 ], [ %827, %839 ]
  %928 = phi float [ %923, %914 ], [ %828, %839 ]
  %929 = phi float [ %924, %914 ], [ %829, %839 ]
  %930 = phi float [ %915, %914 ], [ 1.000000e+00, %839 ]
  br i1 %706, label %1173, label %931

; <label>:931                                     ; preds = %925
  %932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %32, float %33, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %933 = extractvalue %dx.types.ResRet.f32 %932, 0
  %934 = extractvalue %dx.types.ResRet.f32 %932, 1
  %935 = extractvalue %dx.types.ResRet.f32 %932, 2
  %936 = fmul fast float %933, %930
  %937 = call float @dx.op.dot3.f32(i32 55, float %933, float %934, float %935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %938 = select i1 %108, float %937, float %933
  %939 = select i1 %108, float %937, float %934
  %940 = select i1 %108, float 1.000000e+00, float %935
  %941 = fmul fast float %938, %927
  %942 = fmul fast float %939, %928
  %943 = fmul fast float %940, %929
  %944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.i32 %944, 0
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %1173, label %947, !dx.controlflow.hints !68

; <label>:947                                     ; preds = %931
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %950 = extractvalue %dx.types.CBufRet.f32 %948, 3
  %951 = fmul fast float %949, %49
  %952 = fmul fast float %950, %50
  %953 = fmul fast float %951, 2.000000e+00
  %954 = fmul fast float %952, 2.000000e+00
  %955 = fsub fast float 1.000000e+00, %953
  %956 = fsub fast float 1.000000e+00, %954
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %960 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %961 = fmul fast float %955, %958
  %962 = fmul fast float %955, %959
  %963 = fmul fast float %955, %960
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 0
  %966 = extractvalue %dx.types.CBufRet.f32 %964, 1
  %967 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %968 = fmul fast float %956, %965
  %969 = fmul fast float %956, %966
  %970 = fmul fast float %956, %967
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 0
  %973 = extractvalue %dx.types.CBufRet.f32 %971, 1
  %974 = extractvalue %dx.types.CBufRet.f32 %971, 2
  %975 = fadd fast float %968, %972
  %976 = fadd fast float %975, %961
  %977 = fadd fast float %969, %973
  %978 = fadd fast float %977, %962
  %979 = fadd fast float %970, %974
  %980 = fadd fast float %979, %963
  %981 = fmul fast float %976, %926
  %982 = fmul fast float %978, %926
  %983 = fmul fast float %980, %926
  %984 = fmul fast float %981, %981
  %985 = fmul fast float %982, %982
  %986 = fadd fast float %984, %985
  %987 = fmul fast float %983, %983
  %988 = fadd fast float %986, %987
  %989 = call float @dx.op.unary.f32(i32 24, float %988)  ; Sqrt(value)
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 0
  %992 = fsub fast float %989, %991
  %993 = extractvalue %dx.types.CBufRet.f32 %990, 2
  %994 = fmul fast float %992, %993
  %995 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  %996 = fadd fast float %995, -5.000000e-01
  %997 = fmul fast float %996, 2.000000e+00
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 2
  %1000 = call float @dx.op.binary.f32(i32 36, float %999, float %997)  ; FMin(a,b)
  %1001 = fsub fast float -0.000000e+00, %999
  %1002 = fcmp fast ogt float %1000, %1001
  br i1 %1002, label %1003, label %1173, !dx.controlflow.hints !69

; <label>:1003                                    ; preds = %947
  %1004 = fmul fast float %1000, 5.000000e-01
  %1005 = fadd fast float %1004, 5.000000e-01
  %1006 = call float @dx.op.unary.f32(i32 22, float %1005)  ; Frc(value)
  %1007 = call float @dx.op.unary.f32(i32 27, float %1006)  ; Round_ni(value)
  %1008 = call float @dx.op.unary.f32(i32 22, float %1006)  ; Frc(value)
  %1009 = fmul fast float %1008, 2.000000e+00
  %1010 = fadd fast float %1009, -1.000000e+00
  %1011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %951, float %952, float %1007, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1011, 2
  %1015 = extractvalue %dx.types.ResRet.f32 %1011, 3
  %1016 = fadd fast float %1012, -5.000000e-01
  %1017 = fadd fast float %1014, -5.000000e-01
  %1018 = fmul fast float %1016, 0xBFD5555560000000
  %1019 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1017, float %1018)  ; FMad(a,b,c)
  %1020 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1013, float 0.000000e+00)  ; FMad(a,b,c)
  %1021 = fadd fast float %1020, %1015
  %1022 = fmul fast float %1016, -7.500000e-01
  %1023 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1017, float %1022)  ; FMad(a,b,c)
  %1024 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1013, float 0.000000e+00)  ; FMad(a,b,c)
  %1025 = fadd fast float %1024, %1015
  %1026 = call float @dx.op.binary.f32(i32 35, float %1019, float -1.000000e+00)  ; FMax(a,b)
  %1027 = call float @dx.op.binary.f32(i32 35, float %1021, float -1.000000e+00)  ; FMax(a,b)
  %1028 = call float @dx.op.binary.f32(i32 35, float %1023, float -1.000000e+00)  ; FMax(a,b)
  %1029 = call float @dx.op.binary.f32(i32 35, float %1025, float -1.000000e+00)  ; FMax(a,b)
  %1030 = call float @dx.op.binary.f32(i32 36, float %1026, float 1.000000e+00)  ; FMin(a,b)
  %1031 = call float @dx.op.binary.f32(i32 36, float %1027, float 1.000000e+00)  ; FMin(a,b)
  %1032 = call float @dx.op.binary.f32(i32 36, float %1028, float 1.000000e+00)  ; FMin(a,b)
  %1033 = call float @dx.op.binary.f32(i32 36, float %1029, float 1.000000e+00)  ; FMin(a,b)
  %1034 = fcmp fast olt float %1030, 0x3FEFFF8020000000
  br i1 %1034, label %1035, label %1150, !dx.controlflow.hints !70

; <label>:1035                                    ; preds = %1003
  %1036 = extractvalue %dx.types.CBufRet.f32 %998, 3
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.CBufRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1041 = extractvalue %dx.types.CBufRet.f32 %1037, 3
  %1042 = fsub fast float %1038, %1030
  %1043 = fsub fast float %1039, %1031
  %1044 = fsub fast float %1040, %1032
  %1045 = fsub fast float %1041, %1033
  %1046 = fmul fast float %1042, %1036
  %1047 = fmul fast float %1043, %1036
  %1048 = fmul fast float %1044, %1036
  %1049 = fmul fast float %1045, %1036
  %1050 = fadd fast float %1046, %1030
  %1051 = fadd fast float %1047, %1031
  %1052 = fsub fast float -0.000000e+00, %1051
  %1053 = fadd fast float %1048, %1032
  %1054 = fadd fast float %1049, %1033
  %1055 = fmul fast float %1050, %1050
  %1056 = fsub fast float %1051, %1055
  %1057 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1056)  ; FMax(a,b)
  %1058 = fdiv fast float 1.000000e+00, %1057
  %1059 = fmul fast float %1051, %1050
  %1060 = fsub fast float %1053, %1059
  %1061 = fsub fast float %1010, %1050
  %1062 = fmul fast float %1010, %1010
  %1063 = fsub fast float %1062, %1051
  %1064 = fmul fast float %1061, %1058
  %1065 = fmul fast float %1064, %1060
  %1066 = fsub fast float %1063, %1065
  %1067 = fmul fast float %1051, %1051
  %1068 = fsub fast float %1054, %1067
  %1069 = fmul fast float %1060, %1060
  %1070 = fmul fast float %1069, %1058
  %1071 = fsub fast float %1068, %1070
  %1072 = fdiv fast float %1066, %1071
  %1073 = fmul fast float %1060, %1072
  %1074 = fsub fast float %1061, %1073
  %1075 = fmul fast float %1074, %1058
  %1076 = fmul fast float %1075, %1050
  %1077 = fsub fast float 1.000000e+00, %1076
  %1078 = fmul fast float %1051, %1072
  %1079 = fsub fast float %1077, %1078
  %1080 = fmul fast float %1075, %1075
  %1081 = fmul fast float %1072, 4.000000e+00
  %1082 = fmul fast float %1081, %1079
  %1083 = fsub fast float %1080, %1082
  %1084 = call float @dx.op.unary.f32(i32 24, float %1083)  ; Sqrt(value)
  %1085 = fcmp fast oge float %1075, 0.000000e+00
  %1086 = fsub fast float -0.000000e+00, %1084
  %1087 = select i1 %1085, float %1086, float %1084
  %1088 = fsub fast float %1087, %1075
  %1089 = fdiv fast float %1088, %1072
  %1090 = fdiv fast float %1079, %1088
  %1091 = fmul fast float %1089, 5.000000e-01
  %1092 = fmul fast float %1090, 2.000000e+00
  %1093 = select i1 %1085, float %1091, float %1092
  %1094 = select i1 %1085, float %1092, float %1091
  %1095 = call float @dx.op.binary.f32(i32 35, float %1093, float %1094)  ; FMax(a,b)
  %1096 = call float @dx.op.binary.f32(i32 36, float %1093, float %1094)  ; FMin(a,b)
  %1097 = fcmp fast ogt float %1010, %1096
  br i1 %1097, label %1098, label %1108

; <label>:1098                                    ; preds = %1035
  %1099 = fsub fast float %1010, %1096
  %1100 = fsub fast float %1095, %1096
  %1101 = fmul fast float %1099, %1100
  %1102 = fmul fast float %1095, %1010
  %1103 = fadd fast float %1095, %1010
  %1104 = fmul fast float %1103, %1050
  %1105 = fadd fast float %1102, %1051
  %1106 = fsub fast float %1105, %1104
  %1107 = fdiv fast float %1106, %1101
  br label %1108

; <label>:1108                                    ; preds = %1098, %1035
  %1109 = phi float [ %1107, %1098 ], [ 0.000000e+00, %1035 ]
  %1110 = fcmp fast ogt float %1010, %1095
  %1111 = fsub fast float %1010, %1095
  br i1 %1110, label %1112, label %1122

; <label>:1112                                    ; preds = %1108
  %1113 = fsub fast float %1095, %1096
  %1114 = fmul fast float %1113, %1111
  %1115 = fmul fast float %1096, %1010
  %1116 = fadd fast float %1096, %1010
  %1117 = fmul fast float %1116, %1050
  %1118 = fsub fast float %1052, %1115
  %1119 = fadd fast float %1118, %1117
  %1120 = fdiv fast float %1119, %1114
  %1121 = fadd fast float %1120, %1109
  br label %1122

; <label>:1122                                    ; preds = %1112, %1108
  %1123 = phi float [ %1121, %1112 ], [ %1109, %1108 ]
  %1124 = fsub fast float %1010, %1096
  %1125 = fmul fast float %1124, %1111
  %1126 = fmul fast float %1096, %1095
  %1127 = fadd fast float %1096, %1095
  %1128 = fmul fast float %1127, %1050
  %1129 = fadd fast float %1126, %1051
  %1130 = fsub fast float %1129, %1128
  %1131 = fdiv fast float %1130, %1125
  %1132 = call float @dx.op.unary.f32(i32 7, float %1123)  ; Saturate(value)
  %1133 = fcmp fast oeq float %840, 0.000000e+00
  %1134 = extractvalue %dx.types.CBufRet.f32 %998, 0
  %1135 = fcmp fast oeq float %1134, 0.000000e+00
  %1136 = or i1 %1133, %1135
  %1137 = fmul fast float %1134, 2.000000e+00
  %1138 = fadd fast float %999, %1000
  %1139 = fdiv fast float %1138, %1137
  %1140 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1141 = fmul fast float %1140, 2.000000e+00
  %1142 = fsub fast float 3.000000e+00, %1141
  %1143 = fmul fast float %1140, %1140
  %1144 = fmul fast float %1143, %1142
  %1145 = select i1 %1136, float 1.000000e+00, float %1144
  %1146 = fmul fast float %1131, %840
  %1147 = fadd fast float %1132, %1146
  %1148 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1149 = fmul fast float %1145, %1148
  br label %1150

; <label>:1150                                    ; preds = %1122, %1003
  %1151 = phi float [ %1149, %1122 ], [ 0.000000e+00, %1003 ]
  %1152 = fsub fast float 1.000000e+00, %1151
  %1153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %951, float %952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1154 = extractvalue %dx.types.ResRet.f32 %1153, 0
  %1155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1156 = extractvalue %dx.types.CBufRet.i32 %1155, 2
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1163, label %1158

; <label>:1158                                    ; preds = %1150
  %1159 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  %1160 = fadd fast float %1154, -1.000000e+00
  %1161 = fmul fast float %1159, %1160
  %1162 = fadd fast float %1161, 1.000000e+00
  br label %1163

; <label>:1163                                    ; preds = %1158, %1150
  %1164 = phi float [ %1162, %1158 ], [ %1152, %1150 ]
  %1165 = call float @dx.op.binary.f32(i32 35, float %1154, float %1164)  ; FMax(a,b)
  %1166 = fmul fast float %1165, %936
  %1167 = call float @dx.op.dot3.f32(i32 55, float %1165, float %1165, float %1165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1168 = select i1 %108, float %1167, float %1165
  %1169 = select i1 %108, float 1.000000e+00, float %1165
  %1170 = fmul fast float %1168, %941
  %1171 = fmul fast float %1168, %942
  %1172 = fmul fast float %1169, %943
  br label %1173

; <label>:1173                                    ; preds = %1163, %947, %931, %925
  %1174 = phi float [ %927, %925 ], [ %941, %931 ], [ %1170, %1163 ], [ %941, %947 ]
  %1175 = phi float [ %928, %925 ], [ %942, %931 ], [ %1171, %1163 ], [ %942, %947 ]
  %1176 = phi float [ %929, %925 ], [ %943, %931 ], [ %1172, %1163 ], [ %943, %947 ]
  %1177 = phi float [ %930, %925 ], [ %936, %931 ], [ %1166, %1163 ], [ %936, %947 ]
  %1178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1179 = extractvalue %dx.types.CBufRet.f32 %1178, 2
  %1180 = extractvalue %dx.types.CBufRet.f32 %1178, 3
  %1181 = fmul fast float %1179, %49
  %1182 = fmul fast float %1180, %50
  %1183 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1184 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1185 = select i1 %706, i32 2, i32 0
  %1186 = or i32 %1185, 1
  %1187 = uitofp i32 %1186 to float
  %1188 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1183, float %1184, float %1187, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1189 = extractvalue %dx.types.ResRet.f32 %1188, 0
  %1190 = extractvalue %dx.types.ResRet.f32 %1188, 1
  %1191 = extractvalue %dx.types.ResRet.f32 %1188, 2
  %1192 = extractvalue %dx.types.ResRet.f32 %1188, 3
  %1193 = add nuw nsw i32 %1185, 2
  %1194 = uitofp i32 %1193 to float
  %1195 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1183, float %1184, float %1194, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = extractvalue %dx.types.ResRet.f32 %1195, 3
  %1200 = call float @dx.op.binary.f32(i32 35, float %1190, float %1191)  ; FMax(a,b)
  %1201 = call float @dx.op.binary.f32(i32 35, float %1189, float %1200)  ; FMax(a,b)
  %1202 = call float @dx.op.binary.f32(i32 35, float %1201, float %1192)  ; FMax(a,b)
  %1203 = call float @dx.op.binary.f32(i32 36, float %1197, float %1198)  ; FMin(a,b)
  %1204 = call float @dx.op.binary.f32(i32 36, float %1196, float %1203)  ; FMin(a,b)
  %1205 = call float @dx.op.binary.f32(i32 36, float %1204, float %1199)  ; FMin(a,b)
  %1206 = fmul fast float %1202, 2.550000e+02
  %1207 = fadd fast float %1206, 0x3F70101020000000
  %1208 = fptoui float %1207 to i32
  %1209 = fmul fast float %1205, 2.550000e+02
  %1210 = fadd fast float %1209, 0x3F70101020000000
  %1211 = fptoui float %1210 to i32
  %1212 = icmp ult i32 %1208, %1211
  br i1 %1212, label %1213, label %1256

; <label>:1213                                    ; preds = %1173
  %1214 = fcmp fast ogt float %43, 9.843750e-01
  %1215 = fadd fast float %926, -4.000000e+00
  %1216 = select i1 %1214, float -4.000000e+00, float %1215
  %1217 = call float @dx.op.binary.f32(i32 35, float %1216, float 0.000000e+00)  ; FMax(a,b)
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1220 = fadd fast float %1219, %1217
  %1221 = extractvalue %dx.types.CBufRet.f32 %1218, 2
  %1222 = fmul fast float %1220, %1221
  %1223 = call float @dx.op.unary.f32(i32 23, float %1222)  ; Log(value)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1218, 3
  %1225 = fmul fast float %1224, %1223
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 2
  %1228 = fmul fast float %1225, %1227
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1230 = uitofp i32 %1208 to float
  %1231 = uitofp i32 %1211 to float
  %1232 = fadd fast float %1230, 5.000000e-01
  %1233 = fadd fast float %1231, 5.000000e-01
  %1234 = fmul fast float %1227, %1232
  %1235 = fmul fast float %1227, %1233
  %1236 = fadd fast float %1234, 0x3F0FFB4800000000
  %1237 = fadd fast float %1235, 0xBF0FFB4800000000
  %1238 = call float @dx.op.binary.f32(i32 35, float %1229, float %1236)  ; FMax(a,b)
  %1239 = call float @dx.op.binary.f32(i32 36, float %1238, float %1237)  ; FMin(a,b)
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1242 = extractvalue %dx.types.CBufRet.f32 %1240, 2
  %1243 = extractvalue %dx.types.CBufRet.f32 %1240, 0
  %1244 = select i1 %706, float %1243, float 0.000000e+00
  %1245 = fmul fast float %1241, %1239
  %1246 = fadd fast float %1244, %1245
  %1247 = fadd fast float %1244, %1242
  %1248 = fsub fast float %1241, %1242
  %1249 = fadd fast float %1248, %1244
  %1250 = call float @dx.op.binary.f32(i32 35, float %1246, float %1247)  ; FMax(a,b)
  %1251 = call float @dx.op.binary.f32(i32 36, float %1250, float %1249)  ; FMin(a,b)
  %1252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1183, float %1184, float %1251, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.ResRet.f32 %1252, 1
  %1255 = extractvalue %dx.types.ResRet.f32 %1252, 2
  br label %1256

; <label>:1256                                    ; preds = %1213, %1173
  %1257 = phi float [ %1253, %1213 ], [ 1.000000e+00, %1173 ]
  %1258 = phi float [ %1254, %1213 ], [ 1.000000e+00, %1173 ]
  %1259 = phi float [ %1255, %1213 ], [ 1.000000e+00, %1173 ]
  %1260 = fmul fast float %1257, %1177
  %1261 = call float @dx.op.dot3.f32(i32 55, float %1257, float %1258, float %1259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1262 = select i1 %108, float %1261, float %1257
  %1263 = select i1 %108, float %1261, float %1258
  %1264 = select i1 %108, float 1.000000e+00, float %1259
  %1265 = fmul fast float %1262, %1174
  %1266 = fmul fast float %1263, %1175
  %1267 = fmul fast float %1264, %1176
  %1268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.i32 %1268, 3
  %1270 = and i32 %1269, 3
  %1271 = icmp ne i32 %1270, 0
  %1272 = and i32 %1269, 4
  %1273 = icmp ne i32 %1272, 0
  %1274 = and i1 %1271, %1273
  %1275 = and i1 %108, %1274
  br i1 %1275, label %1276, label %1282

; <label>:1276                                    ; preds = %1256
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 1
  %1279 = fadd fast float %1260, -1.000000e+00
  %1280 = fmul fast float %1278, %1279
  %1281 = fadd fast float %1280, 1.000000e+00
  br label %1282

; <label>:1282                                    ; preds = %1276, %1256
  %1283 = phi float [ %1281, %1276 ], [ %1260, %1256 ]
  %1284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1284, 0
  br i1 %108, label %1286, label %1306

; <label>:1286                                    ; preds = %1282
  %1287 = fadd fast float %1265, %1266
  %1288 = fmul fast float %1285, %1287
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 3
  %1291 = extractvalue %dx.types.CBufRet.f32 %729, 1
  %1292 = fsub fast float %732, %1291
  %1293 = extractvalue %dx.types.CBufRet.f32 %729, 2
  %1294 = fmul fast float %1292, %1293
  %1295 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  %1296 = fsub fast float %1295, %1290
  %1297 = fmul fast float %1296, %1283
  %1298 = fadd fast float %1297, %1290
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 0
  %1301 = fsub fast float %1298, %1300
  %1302 = fmul fast float %1301, 1.000000e+01
  %1303 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1304 = fmul fast float %1303, %682
  %1305 = fmul fast float %1298, %1304
  br label %1315

; <label>:1306                                    ; preds = %1282
  %1307 = fmul fast float %1285, %1265
  %1308 = fmul fast float %1285, %1266
  %1309 = fmul fast float %1267, %1285
  %1310 = call float @dx.op.binary.f32(i32 35, float %1308, float %1309)  ; FMax(a,b)
  %1311 = call float @dx.op.binary.f32(i32 35, float %1307, float %1310)  ; FMax(a,b)
  %1312 = call float @dx.op.binary.f32(i32 35, float %1311, float 0.000000e+00)  ; FMax(a,b)
  %1313 = fcmp fast ugt float %1312, 0x3F10000000000000
  br i1 %1313, label %1315, label %1314

; <label>:1314                                    ; preds = %1306
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1315

; <label>:1315                                    ; preds = %1314, %1306, %1286
  %1316 = phi float [ %1288, %1286 ], [ %1307, %1314 ], [ %1307, %1306 ]
  %1317 = phi float [ %1305, %1286 ], [ %1308, %1314 ], [ %1308, %1306 ]
  %1318 = phi float [ %1304, %1286 ], [ %1309, %1314 ], [ %1309, %1306 ]
  %1319 = phi float [ %1304, %1286 ], [ 0.000000e+00, %1314 ], [ 0.000000e+00, %1306 ]
  %1320 = fadd fast float %519, 0x3FE3C6EF40000000
  %1321 = call float @dx.op.unary.f32(i32 22, float %1320)  ; Frc(value)
  %1322 = call float @dx.op.unary.f32(i32 23, float %1316)  ; Log(value)
  %1323 = fadd fast float %1322, -7.000000e+00
  %1324 = call float @dx.op.unary.f32(i32 21, float %1323)  ; Exp(value)
  %1325 = fmul fast float %1321, 2.000000e+00
  %1326 = fadd fast float %1325, -1.000000e+00
  %1327 = fmul fast float %1324, %1326
  %1328 = fcmp fast ogt float %1316, 0.000000e+00
  %1329 = select i1 %1328, float %1327, float 0.000000e+00
  %1330 = fadd fast float %1329, %1316
  %1331 = fadd fast float %519, 0x3FF3C6EF40000000
  %1332 = call float @dx.op.unary.f32(i32 22, float %1331)  ; Frc(value)
  %1333 = call float @dx.op.unary.f32(i32 23, float %1317)  ; Log(value)
  %1334 = fadd fast float %1333, -7.000000e+00
  %1335 = call float @dx.op.unary.f32(i32 21, float %1334)  ; Exp(value)
  %1336 = fmul fast float %1332, 2.000000e+00
  %1337 = fadd fast float %1336, -1.000000e+00
  %1338 = fmul fast float %1335, %1337
  %1339 = fcmp fast ogt float %1317, 0.000000e+00
  %1340 = select i1 %1339, float %1338, float 0.000000e+00
  %1341 = fadd fast float %1340, %1317
  %1342 = fadd fast float %519, 0x3FFDAA66E0000000
  %1343 = call float @dx.op.unary.f32(i32 22, float %1342)  ; Frc(value)
  %1344 = call float @dx.op.unary.f32(i32 23, float %1318)  ; Log(value)
  %1345 = fadd fast float %1344, -6.000000e+00
  %1346 = call float @dx.op.unary.f32(i32 21, float %1345)  ; Exp(value)
  %1347 = fmul fast float %1343, 2.000000e+00
  %1348 = fadd fast float %1347, -1.000000e+00
  %1349 = fmul fast float %1346, %1348
  %1350 = fcmp fast ogt float %1318, 0.000000e+00
  %1351 = select i1 %1350, float %1349, float 0.000000e+00
  %1352 = fadd fast float %1351, %1318
  %1353 = select i1 %108, float %1317, float %1341
  %1354 = select i1 %108, float %1318, float %1352
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1355 = call float @dx.op.binary.f32(i32 36, float %1330, float 3.225500e+04)  ; FMin(a,b)
  %1356 = call float @dx.op.binary.f32(i32 36, float %1353, float 3.225500e+04)  ; FMin(a,b)
  %1357 = call float @dx.op.binary.f32(i32 36, float %1354, float 3.225500e+04)  ; FMin(a,b)
  %1358 = call float @dx.op.binary.f32(i32 36, float %1319, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1355)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1356)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1357)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1358)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1319)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1319)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1319)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1319)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255]}
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
!52 = !{i32 3, i32 7}
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

