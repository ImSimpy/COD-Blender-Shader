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
; shader hash: bd7055ec109dab0a6161f99204b3e2c6
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
  %609 = add i32 %23, 48
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = lshr i32 %611, 22
  %613 = shl nuw nsw i32 %612, 5
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = fmul fast float %614, %606
  %616 = select i1 %108, float %615, float %606
  %617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %618 = extractvalue %dx.types.ResRet.f32 %617, 0
  %619 = extractvalue %dx.types.ResRet.f32 %617, 1
  %620 = extractvalue %dx.types.ResRet.f32 %617, 2
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 1
  %623 = fmul fast float %616, %582
  %624 = fmul fast float %607, %583
  %625 = fmul fast float %608, %584
  %626 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = select i1 %108, float 0.000000e+00, float %623
  %628 = select i1 %108, float %626, float %624
  %629 = select i1 %108, float 0.000000e+00, float %625
  %630 = call float @dx.op.dot3.f32(i32 55, float %591, float %592, float %593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %631 = add i32 %23, 32
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = and i32 %633, 255
  %635 = uitofp i32 %634 to float
  %636 = lshr i32 %633, 8
  %637 = and i32 %636, 255
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %638, %630
  %640 = fadd fast float %639, %635
  %641 = fmul fast float %640, 0x3F70101020000000
  %642 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  %643 = add i32 %23, 124
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = add i32 %645, 0
  %647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %648 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %647, %dx.types.Handle %46, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = and i32 %128, 8192
  %651 = icmp eq i32 %650, 0
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 0
  br i1 %651, label %664, label %654, !dx.controlflow.hints !65

; <label>:654                                     ; preds = %579
  %655 = add i32 %125, 176
  %656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  %658 = extractvalue %dx.types.ResRet.f32 %656, 1
  %659 = fcmp fast oge float %657, 0.000000e+00
  %660 = select i1 %659, float %657, float %653
  %661 = fmul fast float %649, %87
  %662 = fmul fast float %661, %658
  %663 = fadd fast float %662, %660
  br label %675

; <label>:664                                     ; preds = %579
  %665 = add i32 %23, 104
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = extractvalue %dx.types.ResRet.i32 %666, 1
  %669 = bitcast i32 %667 to float
  %670 = bitcast i32 %668 to float
  %671 = fcmp fast oge float %669, 0.000000e+00
  %672 = select i1 %671, float %669, float %653
  %673 = fmul fast float %670, %649
  %674 = fadd fast float %672, %673
  br label %675

; <label>:675                                     ; preds = %664, %654
  %676 = phi float [ %663, %654 ], [ %674, %664 ]
  %677 = fmul fast float %630, %581
  %678 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = lshr i32 %679, 18
  %681 = uitofp i32 %680 to float
  %682 = fmul fast float %681, 0x3F4C00EBA0000000
  %683 = call float @dx.op.unary.f32(i32 21, float %682)  ; Exp(value)
  %684 = fadd fast float %683, -1.000000e+00
  %685 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %686 = extractvalue %dx.types.Dimensions %685, 0
  %687 = sitofp i32 %686 to float
  %688 = extractvalue %dx.types.Dimensions %685, 1
  %689 = sitofp i32 %688 to float
  %690 = fcmp fast oge float %206, %687
  %691 = fcmp fast oge float %207, %689
  %692 = or i1 %690, %691
  %693 = select i1 %692, float 0x4197782600000000, float %684
  %694 = icmp eq i32 %124, 3
  %695 = fcmp fast ogt float %44, %693
  %696 = and i1 %232, %695
  %697 = or i1 %694, %696
  %698 = icmp eq i32 %124, 2
  %699 = fcmp fast ole float %44, %693
  %700 = and i1 %698, %699
  %701 = or i1 %700, %697
  %702 = fmul fast float %500, %37
  %703 = fmul fast float %702, %616
  %704 = fmul fast float %703, %618
  %705 = fmul fast float %704, %622
  %706 = fmul fast float %501, %37
  %707 = fmul fast float %706, %607
  %708 = fmul fast float %707, %619
  %709 = fmul fast float %708, %622
  %710 = fmul fast float %502, %37
  %711 = fmul fast float %710, %608
  %712 = fmul fast float %711, %620
  %713 = fmul fast float %712, %622
  %714 = fadd fast float %705, %627
  %715 = fadd fast float %628, %709
  %716 = fadd fast float %713, %629
  %717 = fmul fast float %714, %580
  %718 = fmul fast float %715, %580
  %719 = fmul fast float %716, %580
  %720 = fmul fast float %676, %642
  %721 = fsub fast float 1.000000e+00, %642
  %722 = fsub fast float %721, %677
  %723 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 3
  %726 = fmul fast float %725, %723
  %727 = fadd fast float %726, %720
  %728 = and i32 %128, 1048576
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %821, label %730, !dx.controlflow.hints !66

; <label>:730                                     ; preds = %675
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 2
  %733 = extractvalue %dx.types.CBufRet.f32 %731, 3
  %734 = fmul fast float %732, %49
  %735 = fmul fast float %733, %50
  %736 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %737 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  %738 = select i1 %701, i32 2, i32 0
  %739 = or i32 %738, 1
  %740 = uitofp i32 %739 to float
  %741 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %736, float %737, float %740, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = extractvalue %dx.types.ResRet.f32 %741, 1
  %744 = extractvalue %dx.types.ResRet.f32 %741, 2
  %745 = extractvalue %dx.types.ResRet.f32 %741, 3
  %746 = add nuw nsw i32 %738, 2
  %747 = uitofp i32 %746 to float
  %748 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %736, float %737, float %747, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  %750 = extractvalue %dx.types.ResRet.f32 %748, 1
  %751 = extractvalue %dx.types.ResRet.f32 %748, 2
  %752 = extractvalue %dx.types.ResRet.f32 %748, 3
  %753 = call float @dx.op.binary.f32(i32 35, float %743, float %744)  ; FMax(a,b)
  %754 = call float @dx.op.binary.f32(i32 35, float %742, float %753)  ; FMax(a,b)
  %755 = call float @dx.op.binary.f32(i32 35, float %754, float %745)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 36, float %750, float %751)  ; FMin(a,b)
  %757 = call float @dx.op.binary.f32(i32 36, float %749, float %756)  ; FMin(a,b)
  %758 = call float @dx.op.binary.f32(i32 36, float %757, float %752)  ; FMin(a,b)
  %759 = fmul fast float %755, 2.550000e+02
  %760 = fadd fast float %759, 0x3F70101020000000
  %761 = fptoui float %760 to i32
  %762 = fmul fast float %758, 2.550000e+02
  %763 = fadd fast float %762, 0x3F70101020000000
  %764 = fptoui float %763 to i32
  %765 = icmp ult i32 %761, %764
  br i1 %765, label %766, label %814

; <label>:766                                     ; preds = %730
  %767 = fcmp fast ogt float %43, 9.843750e-01
  %768 = fadd fast float %44, -4.000000e+00
  %769 = select i1 %767, float -4.000000e+00, float %768
  %770 = call float @dx.op.binary.f32(i32 35, float %769, float 0.000000e+00)  ; FMax(a,b)
  %771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.f32 %771, 0
  %773 = fadd fast float %772, %770
  %774 = extractvalue %dx.types.CBufRet.f32 %771, 2
  %775 = fmul fast float %773, %774
  %776 = call float @dx.op.unary.f32(i32 23, float %775)  ; Log(value)
  %777 = extractvalue %dx.types.CBufRet.f32 %771, 3
  %778 = fmul fast float %777, %776
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 2
  %781 = fmul fast float %778, %780
  %782 = call float @dx.op.unary.f32(i32 7, float %781)  ; Saturate(value)
  %783 = uitofp i32 %761 to float
  %784 = uitofp i32 %764 to float
  %785 = fadd fast float %783, 5.000000e-01
  %786 = fadd fast float %784, 5.000000e-01
  %787 = fmul fast float %780, %785
  %788 = fmul fast float %780, %786
  %789 = fadd fast float %787, 0x3F0FFB4800000000
  %790 = fadd fast float %788, 0xBF0FFB4800000000
  %791 = call float @dx.op.binary.f32(i32 35, float %782, float %789)  ; FMax(a,b)
  %792 = call float @dx.op.binary.f32(i32 36, float %791, float %790)  ; FMin(a,b)
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %795 = extractvalue %dx.types.CBufRet.f32 %793, 2
  %796 = extractvalue %dx.types.CBufRet.f32 %793, 0
  %797 = select i1 %701, float %796, float 0.000000e+00
  %798 = fmul fast float %794, %792
  %799 = fadd fast float %797, %798
  %800 = fadd fast float %797, %795
  %801 = fsub fast float %794, %795
  %802 = fadd fast float %801, %797
  %803 = call float @dx.op.binary.f32(i32 35, float %799, float %800)  ; FMax(a,b)
  %804 = call float @dx.op.binary.f32(i32 36, float %803, float %802)  ; FMin(a,b)
  %805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %736, float %737, float %804, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = extractvalue %dx.types.ResRet.f32 %805, 1
  %808 = extractvalue %dx.types.ResRet.f32 %805, 2
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %811 = fmul fast float %810, %806
  %812 = fmul fast float %810, %807
  %813 = fmul fast float %810, %808
  br label %814

; <label>:814                                     ; preds = %766, %730
  %815 = phi float [ %811, %766 ], [ 1.000000e+00, %730 ]
  %816 = phi float [ %812, %766 ], [ 1.000000e+00, %730 ]
  %817 = phi float [ %813, %766 ], [ 1.000000e+00, %730 ]
  %818 = fmul fast float %815, %717
  %819 = fmul fast float %816, %718
  %820 = fmul fast float %817, %719
  br label %821

; <label>:821                                     ; preds = %814, %675
  %822 = phi float [ %818, %814 ], [ %717, %675 ]
  %823 = phi float [ %819, %814 ], [ %718, %675 ]
  %824 = phi float [ %820, %814 ], [ %719, %675 ]
  %825 = and i32 %128, 2097152
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %831, label %827, !dx.controlflow.hints !67

; <label>:827                                     ; preds = %821
  %828 = add i32 %125, 192
  %829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  br label %834

; <label>:831                                     ; preds = %821
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 3
  br label %834

; <label>:834                                     ; preds = %831, %827
  %835 = phi float [ %830, %827 ], [ %833, %831 ]
  br i1 %696, label %836, label %920

; <label>:836                                     ; preds = %834
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 2
  %839 = extractvalue %dx.types.CBufRet.f32 %837, 3
  %840 = fmul fast float %838, %49
  %841 = fmul fast float %839, %50
  %842 = call float @dx.op.unary.f32(i32 7, float %840)  ; Saturate(value)
  %843 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  %844 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %842, float %843, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = extractvalue %dx.types.ResRet.f32 %844, 1
  %847 = extractvalue %dx.types.ResRet.f32 %844, 2
  %848 = extractvalue %dx.types.ResRet.f32 %844, 3
  %849 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %842, float %843, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = extractvalue %dx.types.ResRet.f32 %849, 1
  %852 = extractvalue %dx.types.ResRet.f32 %849, 2
  %853 = extractvalue %dx.types.ResRet.f32 %849, 3
  %854 = call float @dx.op.binary.f32(i32 35, float %846, float %847)  ; FMax(a,b)
  %855 = call float @dx.op.binary.f32(i32 35, float %845, float %854)  ; FMax(a,b)
  %856 = call float @dx.op.binary.f32(i32 35, float %855, float %848)  ; FMax(a,b)
  %857 = call float @dx.op.binary.f32(i32 36, float %851, float %852)  ; FMin(a,b)
  %858 = call float @dx.op.binary.f32(i32 36, float %850, float %857)  ; FMin(a,b)
  %859 = call float @dx.op.binary.f32(i32 36, float %858, float %853)  ; FMin(a,b)
  %860 = fmul fast float %856, 2.550000e+02
  %861 = fadd fast float %860, 0x3F70101020000000
  %862 = fptoui float %861 to i32
  %863 = fmul fast float %859, 2.550000e+02
  %864 = fadd fast float %863, 0x3F70101020000000
  %865 = fptoui float %864 to i32
  %866 = icmp ult i32 %862, %865
  br i1 %866, label %867, label %909

; <label>:867                                     ; preds = %836
  %868 = fcmp fast ogt float %43, 9.843750e-01
  %869 = fadd fast float %44, -4.000000e+00
  %870 = select i1 %868, float -4.000000e+00, float %869
  %871 = call float @dx.op.binary.f32(i32 35, float %870, float 0.000000e+00)  ; FMax(a,b)
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 0
  %874 = fadd fast float %873, %871
  %875 = extractvalue %dx.types.CBufRet.f32 %872, 2
  %876 = fmul fast float %874, %875
  %877 = call float @dx.op.unary.f32(i32 23, float %876)  ; Log(value)
  %878 = extractvalue %dx.types.CBufRet.f32 %872, 3
  %879 = fmul fast float %878, %877
  %880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.f32 %880, 2
  %882 = fmul fast float %879, %881
  %883 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %884 = uitofp i32 %862 to float
  %885 = uitofp i32 %865 to float
  %886 = fadd fast float %884, 5.000000e-01
  %887 = fadd fast float %885, 5.000000e-01
  %888 = fmul fast float %881, %886
  %889 = fmul fast float %881, %887
  %890 = fadd fast float %888, 0x3F0FFB4800000000
  %891 = fadd fast float %889, 0xBF0FFB4800000000
  %892 = call float @dx.op.binary.f32(i32 35, float %883, float %890)  ; FMax(a,b)
  %893 = call float @dx.op.binary.f32(i32 36, float %892, float %891)  ; FMin(a,b)
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 2
  %897 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %898 = fmul fast float %895, %893
  %899 = fadd fast float %897, %898
  %900 = fadd fast float %897, %896
  %901 = fsub fast float %895, %896
  %902 = fadd fast float %901, %897
  %903 = call float @dx.op.binary.f32(i32 35, float %899, float %900)  ; FMax(a,b)
  %904 = call float @dx.op.binary.f32(i32 36, float %903, float %902)  ; FMin(a,b)
  %905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %842, float %843, float %904, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %906 = extractvalue %dx.types.ResRet.f32 %905, 0
  %907 = extractvalue %dx.types.ResRet.f32 %905, 1
  %908 = extractvalue %dx.types.ResRet.f32 %905, 2
  br label %909

; <label>:909                                     ; preds = %867, %836
  %910 = phi float [ %906, %867 ], [ 1.000000e+00, %836 ]
  %911 = phi float [ %907, %867 ], [ 1.000000e+00, %836 ]
  %912 = phi float [ %908, %867 ], [ 1.000000e+00, %836 ]
  %913 = call float @dx.op.dot3.f32(i32 55, float %910, float %911, float %912, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %914 = select i1 %108, float %913, float %910
  %915 = select i1 %108, float %913, float %911
  %916 = select i1 %108, float 1.000000e+00, float %912
  %917 = fmul fast float %914, %822
  %918 = fmul fast float %915, %823
  %919 = fmul fast float %916, %824
  br label %920

; <label>:920                                     ; preds = %909, %834
  %921 = phi float [ %693, %909 ], [ %44, %834 ]
  %922 = phi float [ %917, %909 ], [ %822, %834 ]
  %923 = phi float [ %918, %909 ], [ %823, %834 ]
  %924 = phi float [ %919, %909 ], [ %824, %834 ]
  %925 = phi float [ %910, %909 ], [ 1.000000e+00, %834 ]
  br i1 %701, label %1168, label %926

; <label>:926                                     ; preds = %920
  %927 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %32, float %33, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %928 = extractvalue %dx.types.ResRet.f32 %927, 0
  %929 = extractvalue %dx.types.ResRet.f32 %927, 1
  %930 = extractvalue %dx.types.ResRet.f32 %927, 2
  %931 = fmul fast float %928, %925
  %932 = call float @dx.op.dot3.f32(i32 55, float %928, float %929, float %930, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %933 = select i1 %108, float %932, float %928
  %934 = select i1 %108, float %932, float %929
  %935 = select i1 %108, float 1.000000e+00, float %930
  %936 = fmul fast float %933, %922
  %937 = fmul fast float %934, %923
  %938 = fmul fast float %935, %924
  %939 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.i32 %939, 0
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %1168, label %942, !dx.controlflow.hints !68

; <label>:942                                     ; preds = %926
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 2
  %945 = extractvalue %dx.types.CBufRet.f32 %943, 3
  %946 = fmul fast float %944, %49
  %947 = fmul fast float %945, %50
  %948 = fmul fast float %946, 2.000000e+00
  %949 = fmul fast float %947, 2.000000e+00
  %950 = fsub fast float 1.000000e+00, %948
  %951 = fsub fast float 1.000000e+00, %949
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 0
  %954 = extractvalue %dx.types.CBufRet.f32 %952, 1
  %955 = extractvalue %dx.types.CBufRet.f32 %952, 2
  %956 = fmul fast float %950, %953
  %957 = fmul fast float %950, %954
  %958 = fmul fast float %950, %955
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %961 = extractvalue %dx.types.CBufRet.f32 %959, 1
  %962 = extractvalue %dx.types.CBufRet.f32 %959, 2
  %963 = fmul fast float %951, %960
  %964 = fmul fast float %951, %961
  %965 = fmul fast float %951, %962
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %969 = extractvalue %dx.types.CBufRet.f32 %966, 2
  %970 = fadd fast float %963, %967
  %971 = fadd fast float %970, %956
  %972 = fadd fast float %964, %968
  %973 = fadd fast float %972, %957
  %974 = fadd fast float %965, %969
  %975 = fadd fast float %974, %958
  %976 = fmul fast float %971, %921
  %977 = fmul fast float %973, %921
  %978 = fmul fast float %975, %921
  %979 = fmul fast float %976, %976
  %980 = fmul fast float %977, %977
  %981 = fadd fast float %979, %980
  %982 = fmul fast float %978, %978
  %983 = fadd fast float %981, %982
  %984 = call float @dx.op.unary.f32(i32 24, float %983)  ; Sqrt(value)
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 0
  %987 = fsub fast float %984, %986
  %988 = extractvalue %dx.types.CBufRet.f32 %985, 2
  %989 = fmul fast float %987, %988
  %990 = call float @dx.op.unary.f32(i32 7, float %989)  ; Saturate(value)
  %991 = fadd fast float %990, -5.000000e-01
  %992 = fmul fast float %991, 2.000000e+00
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 2
  %995 = call float @dx.op.binary.f32(i32 36, float %994, float %992)  ; FMin(a,b)
  %996 = fsub fast float -0.000000e+00, %994
  %997 = fcmp fast ogt float %995, %996
  br i1 %997, label %998, label %1168, !dx.controlflow.hints !69

; <label>:998                                     ; preds = %942
  %999 = fmul fast float %995, 5.000000e-01
  %1000 = fadd fast float %999, 5.000000e-01
  %1001 = call float @dx.op.unary.f32(i32 22, float %1000)  ; Frc(value)
  %1002 = call float @dx.op.unary.f32(i32 27, float %1001)  ; Round_ni(value)
  %1003 = call float @dx.op.unary.f32(i32 22, float %1001)  ; Frc(value)
  %1004 = fmul fast float %1003, 2.000000e+00
  %1005 = fadd fast float %1004, -1.000000e+00
  %1006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %946, float %947, float %1002, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1007 = extractvalue %dx.types.ResRet.f32 %1006, 0
  %1008 = extractvalue %dx.types.ResRet.f32 %1006, 1
  %1009 = extractvalue %dx.types.ResRet.f32 %1006, 2
  %1010 = extractvalue %dx.types.ResRet.f32 %1006, 3
  %1011 = fadd fast float %1007, -5.000000e-01
  %1012 = fadd fast float %1009, -5.000000e-01
  %1013 = fmul fast float %1011, 0xBFD5555560000000
  %1014 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1012, float %1013)  ; FMad(a,b,c)
  %1015 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1008, float 0.000000e+00)  ; FMad(a,b,c)
  %1016 = fadd fast float %1015, %1010
  %1017 = fmul fast float %1011, -7.500000e-01
  %1018 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1012, float %1017)  ; FMad(a,b,c)
  %1019 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1008, float 0.000000e+00)  ; FMad(a,b,c)
  %1020 = fadd fast float %1019, %1010
  %1021 = call float @dx.op.binary.f32(i32 35, float %1014, float -1.000000e+00)  ; FMax(a,b)
  %1022 = call float @dx.op.binary.f32(i32 35, float %1016, float -1.000000e+00)  ; FMax(a,b)
  %1023 = call float @dx.op.binary.f32(i32 35, float %1018, float -1.000000e+00)  ; FMax(a,b)
  %1024 = call float @dx.op.binary.f32(i32 35, float %1020, float -1.000000e+00)  ; FMax(a,b)
  %1025 = call float @dx.op.binary.f32(i32 36, float %1021, float 1.000000e+00)  ; FMin(a,b)
  %1026 = call float @dx.op.binary.f32(i32 36, float %1022, float 1.000000e+00)  ; FMin(a,b)
  %1027 = call float @dx.op.binary.f32(i32 36, float %1023, float 1.000000e+00)  ; FMin(a,b)
  %1028 = call float @dx.op.binary.f32(i32 36, float %1024, float 1.000000e+00)  ; FMin(a,b)
  %1029 = fcmp fast olt float %1025, 0x3FEFFF8020000000
  br i1 %1029, label %1030, label %1145, !dx.controlflow.hints !70

; <label>:1030                                    ; preds = %998
  %1031 = extractvalue %dx.types.CBufRet.f32 %993, 3
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.CBufRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.CBufRet.f32 %1032, 2
  %1036 = extractvalue %dx.types.CBufRet.f32 %1032, 3
  %1037 = fsub fast float %1033, %1025
  %1038 = fsub fast float %1034, %1026
  %1039 = fsub fast float %1035, %1027
  %1040 = fsub fast float %1036, %1028
  %1041 = fmul fast float %1037, %1031
  %1042 = fmul fast float %1038, %1031
  %1043 = fmul fast float %1039, %1031
  %1044 = fmul fast float %1040, %1031
  %1045 = fadd fast float %1041, %1025
  %1046 = fadd fast float %1042, %1026
  %1047 = fsub fast float -0.000000e+00, %1046
  %1048 = fadd fast float %1043, %1027
  %1049 = fadd fast float %1044, %1028
  %1050 = fmul fast float %1045, %1045
  %1051 = fsub fast float %1046, %1050
  %1052 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1051)  ; FMax(a,b)
  %1053 = fdiv fast float 1.000000e+00, %1052
  %1054 = fmul fast float %1046, %1045
  %1055 = fsub fast float %1048, %1054
  %1056 = fsub fast float %1005, %1045
  %1057 = fmul fast float %1005, %1005
  %1058 = fsub fast float %1057, %1046
  %1059 = fmul fast float %1056, %1053
  %1060 = fmul fast float %1059, %1055
  %1061 = fsub fast float %1058, %1060
  %1062 = fmul fast float %1046, %1046
  %1063 = fsub fast float %1049, %1062
  %1064 = fmul fast float %1055, %1055
  %1065 = fmul fast float %1064, %1053
  %1066 = fsub fast float %1063, %1065
  %1067 = fdiv fast float %1061, %1066
  %1068 = fmul fast float %1055, %1067
  %1069 = fsub fast float %1056, %1068
  %1070 = fmul fast float %1069, %1053
  %1071 = fmul fast float %1070, %1045
  %1072 = fsub fast float 1.000000e+00, %1071
  %1073 = fmul fast float %1046, %1067
  %1074 = fsub fast float %1072, %1073
  %1075 = fmul fast float %1070, %1070
  %1076 = fmul fast float %1067, 4.000000e+00
  %1077 = fmul fast float %1076, %1074
  %1078 = fsub fast float %1075, %1077
  %1079 = call float @dx.op.unary.f32(i32 24, float %1078)  ; Sqrt(value)
  %1080 = fcmp fast oge float %1070, 0.000000e+00
  %1081 = fsub fast float -0.000000e+00, %1079
  %1082 = select i1 %1080, float %1081, float %1079
  %1083 = fsub fast float %1082, %1070
  %1084 = fdiv fast float %1083, %1067
  %1085 = fdiv fast float %1074, %1083
  %1086 = fmul fast float %1084, 5.000000e-01
  %1087 = fmul fast float %1085, 2.000000e+00
  %1088 = select i1 %1080, float %1086, float %1087
  %1089 = select i1 %1080, float %1087, float %1086
  %1090 = call float @dx.op.binary.f32(i32 35, float %1088, float %1089)  ; FMax(a,b)
  %1091 = call float @dx.op.binary.f32(i32 36, float %1088, float %1089)  ; FMin(a,b)
  %1092 = fcmp fast ogt float %1005, %1091
  br i1 %1092, label %1093, label %1103

; <label>:1093                                    ; preds = %1030
  %1094 = fsub fast float %1005, %1091
  %1095 = fsub fast float %1090, %1091
  %1096 = fmul fast float %1094, %1095
  %1097 = fmul fast float %1090, %1005
  %1098 = fadd fast float %1090, %1005
  %1099 = fmul fast float %1098, %1045
  %1100 = fadd fast float %1097, %1046
  %1101 = fsub fast float %1100, %1099
  %1102 = fdiv fast float %1101, %1096
  br label %1103

; <label>:1103                                    ; preds = %1093, %1030
  %1104 = phi float [ %1102, %1093 ], [ 0.000000e+00, %1030 ]
  %1105 = fcmp fast ogt float %1005, %1090
  %1106 = fsub fast float %1005, %1090
  br i1 %1105, label %1107, label %1117

; <label>:1107                                    ; preds = %1103
  %1108 = fsub fast float %1090, %1091
  %1109 = fmul fast float %1108, %1106
  %1110 = fmul fast float %1091, %1005
  %1111 = fadd fast float %1091, %1005
  %1112 = fmul fast float %1111, %1045
  %1113 = fsub fast float %1047, %1110
  %1114 = fadd fast float %1113, %1112
  %1115 = fdiv fast float %1114, %1109
  %1116 = fadd fast float %1115, %1104
  br label %1117

; <label>:1117                                    ; preds = %1107, %1103
  %1118 = phi float [ %1116, %1107 ], [ %1104, %1103 ]
  %1119 = fsub fast float %1005, %1091
  %1120 = fmul fast float %1119, %1106
  %1121 = fmul fast float %1091, %1090
  %1122 = fadd fast float %1091, %1090
  %1123 = fmul fast float %1122, %1045
  %1124 = fadd fast float %1121, %1046
  %1125 = fsub fast float %1124, %1123
  %1126 = fdiv fast float %1125, %1120
  %1127 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1128 = fcmp fast oeq float %835, 0.000000e+00
  %1129 = extractvalue %dx.types.CBufRet.f32 %993, 0
  %1130 = fcmp fast oeq float %1129, 0.000000e+00
  %1131 = or i1 %1128, %1130
  %1132 = fmul fast float %1129, 2.000000e+00
  %1133 = fadd fast float %994, %995
  %1134 = fdiv fast float %1133, %1132
  %1135 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1136 = fmul fast float %1135, 2.000000e+00
  %1137 = fsub fast float 3.000000e+00, %1136
  %1138 = fmul fast float %1135, %1135
  %1139 = fmul fast float %1138, %1137
  %1140 = select i1 %1131, float 1.000000e+00, float %1139
  %1141 = fmul fast float %1126, %835
  %1142 = fadd fast float %1127, %1141
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  %1144 = fmul fast float %1140, %1143
  br label %1145

; <label>:1145                                    ; preds = %1117, %998
  %1146 = phi float [ %1144, %1117 ], [ 0.000000e+00, %998 ]
  %1147 = fsub fast float 1.000000e+00, %1146
  %1148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %946, float %947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  %1150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.i32 %1150, 2
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1158, label %1153

; <label>:1153                                    ; preds = %1145
  %1154 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  %1155 = fadd fast float %1149, -1.000000e+00
  %1156 = fmul fast float %1154, %1155
  %1157 = fadd fast float %1156, 1.000000e+00
  br label %1158

; <label>:1158                                    ; preds = %1153, %1145
  %1159 = phi float [ %1157, %1153 ], [ %1147, %1145 ]
  %1160 = call float @dx.op.binary.f32(i32 35, float %1149, float %1159)  ; FMax(a,b)
  %1161 = fmul fast float %1160, %931
  %1162 = call float @dx.op.dot3.f32(i32 55, float %1160, float %1160, float %1160, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1163 = select i1 %108, float %1162, float %1160
  %1164 = select i1 %108, float 1.000000e+00, float %1160
  %1165 = fmul fast float %1163, %936
  %1166 = fmul fast float %1163, %937
  %1167 = fmul fast float %1164, %938
  br label %1168

; <label>:1168                                    ; preds = %1158, %942, %926, %920
  %1169 = phi float [ %922, %920 ], [ %936, %926 ], [ %1165, %1158 ], [ %936, %942 ]
  %1170 = phi float [ %923, %920 ], [ %937, %926 ], [ %1166, %1158 ], [ %937, %942 ]
  %1171 = phi float [ %924, %920 ], [ %938, %926 ], [ %1167, %1158 ], [ %938, %942 ]
  %1172 = phi float [ %925, %920 ], [ %931, %926 ], [ %1161, %1158 ], [ %931, %942 ]
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 2
  %1175 = extractvalue %dx.types.CBufRet.f32 %1173, 3
  %1176 = fmul fast float %1174, %49
  %1177 = fmul fast float %1175, %50
  %1178 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1179 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  %1180 = select i1 %701, i32 2, i32 0
  %1181 = or i32 %1180, 1
  %1182 = uitofp i32 %1181 to float
  %1183 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1178, float %1179, float %1182, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.ResRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.ResRet.f32 %1183, 2
  %1187 = extractvalue %dx.types.ResRet.f32 %1183, 3
  %1188 = add nuw nsw i32 %1180, 2
  %1189 = uitofp i32 %1188 to float
  %1190 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1178, float %1179, float %1189, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = extractvalue %dx.types.ResRet.f32 %1190, 1
  %1193 = extractvalue %dx.types.ResRet.f32 %1190, 2
  %1194 = extractvalue %dx.types.ResRet.f32 %1190, 3
  %1195 = call float @dx.op.binary.f32(i32 35, float %1185, float %1186)  ; FMax(a,b)
  %1196 = call float @dx.op.binary.f32(i32 35, float %1184, float %1195)  ; FMax(a,b)
  %1197 = call float @dx.op.binary.f32(i32 35, float %1196, float %1187)  ; FMax(a,b)
  %1198 = call float @dx.op.binary.f32(i32 36, float %1192, float %1193)  ; FMin(a,b)
  %1199 = call float @dx.op.binary.f32(i32 36, float %1191, float %1198)  ; FMin(a,b)
  %1200 = call float @dx.op.binary.f32(i32 36, float %1199, float %1194)  ; FMin(a,b)
  %1201 = fmul fast float %1197, 2.550000e+02
  %1202 = fadd fast float %1201, 0x3F70101020000000
  %1203 = fptoui float %1202 to i32
  %1204 = fmul fast float %1200, 2.550000e+02
  %1205 = fadd fast float %1204, 0x3F70101020000000
  %1206 = fptoui float %1205 to i32
  %1207 = icmp ult i32 %1203, %1206
  br i1 %1207, label %1208, label %1251

; <label>:1208                                    ; preds = %1168
  %1209 = fcmp fast ogt float %43, 9.843750e-01
  %1210 = fadd fast float %921, -4.000000e+00
  %1211 = select i1 %1209, float -4.000000e+00, float %1210
  %1212 = call float @dx.op.binary.f32(i32 35, float %1211, float 0.000000e+00)  ; FMax(a,b)
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 0
  %1215 = fadd fast float %1214, %1212
  %1216 = extractvalue %dx.types.CBufRet.f32 %1213, 2
  %1217 = fmul fast float %1215, %1216
  %1218 = call float @dx.op.unary.f32(i32 23, float %1217)  ; Log(value)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1213, 3
  %1220 = fmul fast float %1219, %1218
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 2
  %1223 = fmul fast float %1220, %1222
  %1224 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1225 = uitofp i32 %1203 to float
  %1226 = uitofp i32 %1206 to float
  %1227 = fadd fast float %1225, 5.000000e-01
  %1228 = fadd fast float %1226, 5.000000e-01
  %1229 = fmul fast float %1222, %1227
  %1230 = fmul fast float %1222, %1228
  %1231 = fadd fast float %1229, 0x3F0FFB4800000000
  %1232 = fadd fast float %1230, 0xBF0FFB4800000000
  %1233 = call float @dx.op.binary.f32(i32 35, float %1224, float %1231)  ; FMax(a,b)
  %1234 = call float @dx.op.binary.f32(i32 36, float %1233, float %1232)  ; FMin(a,b)
  %1235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1235, 1
  %1237 = extractvalue %dx.types.CBufRet.f32 %1235, 2
  %1238 = extractvalue %dx.types.CBufRet.f32 %1235, 0
  %1239 = select i1 %701, float %1238, float 0.000000e+00
  %1240 = fmul fast float %1236, %1234
  %1241 = fadd fast float %1239, %1240
  %1242 = fadd fast float %1239, %1237
  %1243 = fsub fast float %1236, %1237
  %1244 = fadd fast float %1243, %1239
  %1245 = call float @dx.op.binary.f32(i32 35, float %1241, float %1242)  ; FMax(a,b)
  %1246 = call float @dx.op.binary.f32(i32 36, float %1245, float %1244)  ; FMin(a,b)
  %1247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1178, float %1179, float %1246, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.ResRet.f32 %1247, 2
  br label %1251

; <label>:1251                                    ; preds = %1208, %1168
  %1252 = phi float [ %1248, %1208 ], [ 1.000000e+00, %1168 ]
  %1253 = phi float [ %1249, %1208 ], [ 1.000000e+00, %1168 ]
  %1254 = phi float [ %1250, %1208 ], [ 1.000000e+00, %1168 ]
  %1255 = fmul fast float %1252, %1172
  %1256 = call float @dx.op.dot3.f32(i32 55, float %1252, float %1253, float %1254, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1257 = select i1 %108, float %1256, float %1252
  %1258 = select i1 %108, float %1256, float %1253
  %1259 = select i1 %108, float 1.000000e+00, float %1254
  %1260 = fmul fast float %1257, %1169
  %1261 = fmul fast float %1258, %1170
  %1262 = fmul fast float %1259, %1171
  %1263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.i32 %1263, 3
  %1265 = and i32 %1264, 3
  %1266 = icmp ne i32 %1265, 0
  %1267 = and i32 %1264, 4
  %1268 = icmp ne i32 %1267, 0
  %1269 = and i1 %1266, %1268
  %1270 = and i1 %108, %1269
  br i1 %1270, label %1271, label %1277

; <label>:1271                                    ; preds = %1251
  %1272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1273 = extractvalue %dx.types.CBufRet.f32 %1272, 1
  %1274 = fadd fast float %1255, -1.000000e+00
  %1275 = fmul fast float %1273, %1274
  %1276 = fadd fast float %1275, 1.000000e+00
  br label %1277

; <label>:1277                                    ; preds = %1271, %1251
  %1278 = phi float [ %1276, %1271 ], [ %1255, %1251 ]
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  br i1 %108, label %1281, label %1301

; <label>:1281                                    ; preds = %1277
  %1282 = fadd fast float %1260, %1261
  %1283 = fmul fast float %1280, %1282
  %1284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1284, 3
  %1286 = extractvalue %dx.types.CBufRet.f32 %724, 1
  %1287 = fsub fast float %727, %1286
  %1288 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %1289 = fmul fast float %1287, %1288
  %1290 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  %1291 = fsub fast float %1290, %1285
  %1292 = fmul fast float %1291, %1278
  %1293 = fadd fast float %1292, %1285
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = fsub fast float %1293, %1295
  %1297 = fmul fast float %1296, 1.000000e+01
  %1298 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1299 = fmul fast float %1298, %677
  %1300 = fmul fast float %1293, %1299
  br label %1310

; <label>:1301                                    ; preds = %1277
  %1302 = fmul fast float %1280, %1260
  %1303 = fmul fast float %1280, %1261
  %1304 = fmul fast float %1262, %1280
  %1305 = call float @dx.op.binary.f32(i32 35, float %1303, float %1304)  ; FMax(a,b)
  %1306 = call float @dx.op.binary.f32(i32 35, float %1302, float %1305)  ; FMax(a,b)
  %1307 = call float @dx.op.binary.f32(i32 35, float %1306, float 0.000000e+00)  ; FMax(a,b)
  %1308 = fcmp fast ugt float %1307, 0x3F10000000000000
  br i1 %1308, label %1310, label %1309

; <label>:1309                                    ; preds = %1301
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1310

; <label>:1310                                    ; preds = %1309, %1301, %1281
  %1311 = phi float [ %1283, %1281 ], [ %1302, %1309 ], [ %1302, %1301 ]
  %1312 = phi float [ %1300, %1281 ], [ %1303, %1309 ], [ %1303, %1301 ]
  %1313 = phi float [ %1299, %1281 ], [ %1304, %1309 ], [ %1304, %1301 ]
  %1314 = phi float [ %1299, %1281 ], [ 0.000000e+00, %1309 ], [ 0.000000e+00, %1301 ]
  %1315 = fadd fast float %519, 0x3FE3C6EF40000000
  %1316 = call float @dx.op.unary.f32(i32 22, float %1315)  ; Frc(value)
  %1317 = call float @dx.op.unary.f32(i32 23, float %1311)  ; Log(value)
  %1318 = fadd fast float %1317, -7.000000e+00
  %1319 = call float @dx.op.unary.f32(i32 21, float %1318)  ; Exp(value)
  %1320 = fmul fast float %1316, 2.000000e+00
  %1321 = fadd fast float %1320, -1.000000e+00
  %1322 = fmul fast float %1319, %1321
  %1323 = fcmp fast ogt float %1311, 0.000000e+00
  %1324 = select i1 %1323, float %1322, float 0.000000e+00
  %1325 = fadd fast float %1324, %1311
  %1326 = fadd fast float %519, 0x3FF3C6EF40000000
  %1327 = call float @dx.op.unary.f32(i32 22, float %1326)  ; Frc(value)
  %1328 = call float @dx.op.unary.f32(i32 23, float %1312)  ; Log(value)
  %1329 = fadd fast float %1328, -7.000000e+00
  %1330 = call float @dx.op.unary.f32(i32 21, float %1329)  ; Exp(value)
  %1331 = fmul fast float %1327, 2.000000e+00
  %1332 = fadd fast float %1331, -1.000000e+00
  %1333 = fmul fast float %1330, %1332
  %1334 = fcmp fast ogt float %1312, 0.000000e+00
  %1335 = select i1 %1334, float %1333, float 0.000000e+00
  %1336 = fadd fast float %1335, %1312
  %1337 = fadd fast float %519, 0x3FFDAA66E0000000
  %1338 = call float @dx.op.unary.f32(i32 22, float %1337)  ; Frc(value)
  %1339 = call float @dx.op.unary.f32(i32 23, float %1313)  ; Log(value)
  %1340 = fadd fast float %1339, -6.000000e+00
  %1341 = call float @dx.op.unary.f32(i32 21, float %1340)  ; Exp(value)
  %1342 = fmul fast float %1338, 2.000000e+00
  %1343 = fadd fast float %1342, -1.000000e+00
  %1344 = fmul fast float %1341, %1343
  %1345 = fcmp fast ogt float %1313, 0.000000e+00
  %1346 = select i1 %1345, float %1344, float 0.000000e+00
  %1347 = fadd fast float %1346, %1313
  %1348 = select i1 %108, float %1312, float %1336
  %1349 = select i1 %108, float %1313, float %1347
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1350 = call float @dx.op.binary.f32(i32 36, float %1325, float 3.225500e+04)  ; FMin(a,b)
  %1351 = call float @dx.op.binary.f32(i32 36, float %1348, float 3.225500e+04)  ; FMin(a,b)
  %1352 = call float @dx.op.binary.f32(i32 36, float %1349, float 3.225500e+04)  ; FMin(a,b)
  %1353 = call float @dx.op.binary.f32(i32 36, float %1314, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1350)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1351)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1352)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1353)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1314)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1314)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1314)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1314)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

