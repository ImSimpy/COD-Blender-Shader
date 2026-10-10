;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float      w
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
; shader hash: ae69e7b14b007e4ba6ccb554bc0ee18f
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 26, 27, 28, 29, 30, 31, 32, 33, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
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
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = fmul fast float %51, %44
  %53 = fmul fast float %51, %45
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 3
  %57 = fmul fast float %52, 2.000000e+00
  %58 = fmul fast float %57, %55
  %59 = fmul fast float %53, 2.000000e+00
  %60 = fmul fast float %59, %56
  %61 = fsub fast float 1.000000e+00, %58
  %62 = fsub fast float 1.000000e+00, %60
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %66 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %67 = fmul fast float %61, %64
  %68 = fmul fast float %61, %65
  %69 = fmul fast float %61, %66
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %74 = fmul fast float %62, %71
  %75 = fmul fast float %62, %72
  %76 = fmul fast float %62, %73
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = extractvalue %dx.types.CBufRet.f32 %77, 1
  %80 = extractvalue %dx.types.CBufRet.f32 %77, 2
  %81 = fadd fast float %74, %78
  %82 = fadd fast float %81, %67
  %83 = fadd fast float %75, %79
  %84 = fadd fast float %83, %68
  %85 = fadd fast float %76, %80
  %86 = fadd fast float %85, %69
  %87 = fmul fast float %82, %47
  %88 = fmul fast float %84, %47
  %89 = fmul fast float %86, %47
  %90 = bitcast i32 %22 to float
  %91 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.i32 %91, 3
  %93 = and i32 %92, 3
  %94 = icmp ne i32 %93, 0
  %95 = and i32 %92, 4
  %96 = icmp ne i32 %95, 0
  %97 = and i1 %94, %96
  br i1 %97, label %98, label %107

; <label>:98                                      ; preds = %0
  %99 = fmul fast float %56, %53
  %100 = fmul fast float %55, %52
  %101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %100, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = fsub fast float 1.000000e+00, %102
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = fcmp fast olt float %103, %105
  br label %110

; <label>:107                                     ; preds = %0
  %108 = icmp eq i32 %95, 0
  %109 = and i1 %94, %108
  br label %110

; <label>:110                                     ; preds = %107, %98
  %111 = phi i1 [ %106, %98 ], [ %109, %107 ]
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %113, %52
  %116 = fmul fast float %114, %53
  %117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  %119 = and i32 %118, 114688
  %120 = icmp ne i32 %119, 0
  %121 = select i1 %120, float %115, float 0.000000e+00
  %122 = select i1 %120, float %116, float 0.000000e+00
  %123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %121, float %122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = fmul fast float %124, 2.550000e+02
  %126 = fptoui float %125 to i32
  %127 = select i1 %120, i32 %126, i32 0
  %128 = mul i32 %21, 208
  %129 = add i32 %128, 188
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = and i32 %92, 114688
  %133 = and i32 %92, 8
  %134 = icmp ne i32 %133, 0
  %135 = or i1 %111, %134
  %136 = select i1 %135, i32 %132, i32 16384
  %137 = and i32 %136, %131
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

; <label>:139                                     ; preds = %110
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %140

; <label>:140                                     ; preds = %139, %110
  %141 = and i32 %131, 512
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %167, label %143

; <label>:143                                     ; preds = %140
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %147 = fmul fast float %145, %52
  %148 = fmul fast float %146, %53
  %149 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %151 = fdiv fast float %149, %150
  %152 = fcmp fast ogt float %151, 0x3FFC71C720000000
  br i1 %152, label %153, label %159

; <label>:153                                     ; preds = %143
  %154 = fdiv fast float 0x3FFC71C720000000, %151
  %155 = fmul fast float %154, %148
  %156 = fsub fast float 1.000000e+00, %154
  %157 = fmul fast float %156, 5.000000e-01
  %158 = fadd fast float %157, %155
  br label %167

; <label>:159                                     ; preds = %143
  %160 = fcmp fast olt float %151, 0x3FFC71C720000000
  br i1 %160, label %161, label %167

; <label>:161                                     ; preds = %159
  %162 = fmul fast float %147, 5.625000e-01
  %163 = fmul fast float %162, %151
  %164 = fmul fast float %151, 2.812500e-01
  %165 = fsub fast float 5.000000e-01, %164
  %166 = fadd fast float %165, %163
  br label %167

; <label>:167                                     ; preds = %161, %159, %153, %140
  %168 = phi float [ %41, %140 ], [ %147, %153 ], [ %166, %161 ], [ %147, %159 ]
  %169 = phi float [ %42, %140 ], [ %158, %153 ], [ %148, %161 ], [ %148, %159 ]
  %170 = fadd fast float %41, %38
  %171 = fadd fast float %42, %39
  %172 = add i32 %23, 72
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = extractvalue %dx.types.ResRet.i32 %173, 1
  %176 = bitcast i32 %174 to float
  %177 = bitcast i32 %175 to float
  %178 = fmul fast float %176, %41
  %179 = fmul fast float %177, %42
  %180 = call float @dx.op.unary.f32(i32 22, float %178)  ; Frc(value)
  %181 = call float @dx.op.unary.f32(i32 22, float %179)  ; Frc(value)
  %182 = and i32 %131, 16
  %183 = icmp ne i32 %182, 0
  %184 = select i1 %183, float 1.000000e+00, float %43
  %185 = icmp eq i32 %182, 0
  br i1 %185, label %205, label %186, !dx.controlflow.hints !61

; <label>:186                                     ; preds = %167
  %187 = add i32 %128, 64
  %188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = fadd fast float %189, 1.000000e+00
  %191 = fmul fast float %190, %43
  %192 = fsub fast float %191, %189
  %193 = fsub fast float %190, %192
  %194 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %195 = fsub fast float 1.000000e+00, %191
  %196 = call float @dx.op.unary.f32(i32 7, float %195)  ; Saturate(value)
  %197 = fsub fast float %194, %196
  %198 = fsub fast float %184, %196
  %199 = fdiv fast float %198, %197
  %200 = call float @dx.op.unary.f32(i32 7, float %199)  ; Saturate(value)
  %201 = fmul fast float %200, 2.000000e+00
  %202 = fsub fast float 3.000000e+00, %201
  %203 = fmul fast float %200, %200
  %204 = fmul fast float %203, %202
  br label %205

; <label>:205                                     ; preds = %186, %167
  %206 = phi float [ %204, %186 ], [ %184, %167 ]
  %207 = fcmp fast ogt float %206, 0.000000e+00
  br i1 %207, label %209, label %208

; <label>:208                                     ; preds = %205
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %209

; <label>:209                                     ; preds = %208, %205
  %210 = call float @dx.op.unary.f32(i32 7, float %206)  ; Saturate(value)
  %211 = fmul fast float %52, 5.000000e-01
  %212 = fmul fast float %53, 5.000000e-01
  %213 = fptosi float %211 to i32
  %214 = fptosi float %212 to i32
  %215 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %213, i32 %214, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = lshr i32 %216, 18
  %218 = uitofp i32 %217 to float
  %219 = fmul fast float %218, 0x3F4C00EBA0000000
  %220 = call float @dx.op.unary.f32(i32 21, float %219)  ; Exp(value)
  %221 = fadd fast float %220, -1.000000e+00
  %222 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %223 = extractvalue %dx.types.Dimensions %222, 0
  %224 = sitofp i32 %223 to float
  %225 = extractvalue %dx.types.Dimensions %222, 1
  %226 = sitofp i32 %225 to float
  %227 = fcmp fast oge float %211, %224
  %228 = fcmp fast oge float %212, %226
  %229 = or i1 %227, %228
  %230 = select i1 %229, float 0x4197782600000000, float %221
  %231 = fsub fast float %230, %47
  %232 = fcmp fast ogt float %231, 0.000000e+00
  %233 = and i32 %127, -2
  %234 = icmp eq i32 %233, 2
  %235 = and i1 %234, %232
  %236 = xor i1 %232, true
  %237 = icmp eq i32 %127, 1
  %238 = and i1 %237, %236
  %239 = or i1 %235, %238
  %240 = and i32 %131, 262144
  %241 = icmp ne i32 %240, 0
  %242 = and i1 %241, %239
  %243 = xor i1 %239, true
  %244 = and i32 %131, 131072
  %245 = icmp ne i32 %244, 0
  %246 = and i1 %245, %243
  %247 = or i1 %242, %246
  br i1 %247, label %248, label %249

; <label>:248                                     ; preds = %209
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %249

; <label>:249                                     ; preds = %248, %209
  %250 = and i32 %131, 32
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %502, label %252, !dx.controlflow.hints !62

; <label>:252                                     ; preds = %249
  %253 = add i32 %128, 80
  %254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  %256 = extractvalue %dx.types.ResRet.f32 %254, 1
  %257 = extractvalue %dx.types.ResRet.f32 %254, 2
  %258 = extractvalue %dx.types.ResRet.f32 %254, 3
  %259 = add i32 %128, 96
  %260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = extractvalue %dx.types.ResRet.f32 %260, 1
  %263 = extractvalue %dx.types.ResRet.f32 %260, 2
  %264 = add i32 %128, 112
  %265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = extractvalue %dx.types.ResRet.f32 %265, 1
  %268 = extractvalue %dx.types.ResRet.f32 %265, 2
  %269 = extractvalue %dx.types.ResRet.f32 %265, 3
  %270 = add i32 %128, 128
  %271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  %273 = extractvalue %dx.types.ResRet.f32 %271, 1
  %274 = extractvalue %dx.types.ResRet.f32 %271, 2
  %275 = extractvalue %dx.types.ResRet.f32 %271, 3
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 4096
  %279 = icmp ne i32 %278, 0
  %280 = fcmp fast une float %263, 0.000000e+00
  %281 = and i32 %277, 64
  %282 = icmp ne i32 %281, 0
  %283 = and i32 %277, 128
  %284 = icmp eq i32 %283, 0
  %285 = and i32 %277, 2048
  %286 = icmp eq i32 %285, 0
  %287 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %288 = extractvalue %dx.types.Dimensions %287, 0
  %289 = sitofp i32 %288 to float
  %290 = extractvalue %dx.types.Dimensions %287, 1
  %291 = sitofp i32 %290 to float
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 3
  %295 = fmul fast float %293, %52
  %296 = fmul fast float %294, %53
  %297 = fmul fast float %295, %289
  %298 = fmul fast float %296, %291
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %301 = fsub fast float -0.000000e+00, %300
  %302 = fptoui float %301 to i32
  %303 = fptoui float %297 to i32
  %304 = fptoui float %298 to i32
  %305 = and i32 %302, 31
  %306 = lshr i32 %303, %305
  %307 = lshr i32 %304, %305
  %308 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %302, i32 %306, i32 %307, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 0
  %310 = fcmp fast ogt float %309, -1.000000e+00
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %313 = select i1 %310, float %312, float 1.000000e+00
  %314 = fadd fast float %309, 1.000000e+00
  %315 = fmul fast float %313, %314
  %316 = call float @dx.op.unary.f32(i32 6, float %315)  ; FAbs(value)
  %317 = extractvalue %dx.types.CBufRet.f32 %311, 3
  %318 = fcmp fast oge float %316, %317
  %319 = select i1 %318, float 0x4197782600000000, float %316
  br i1 %286, label %397, label %320, !dx.controlflow.hints !63

; <label>:320                                     ; preds = %252
  %321 = fmul fast float %57, %293
  %322 = fmul fast float %59, %294
  %323 = fsub fast float 1.000000e+00, %321
  %324 = fsub fast float 1.000000e+00, %322
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %328 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %329 = fmul fast float %323, %326
  %330 = fmul fast float %323, %327
  %331 = fmul fast float %323, %328
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 0
  %334 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %335 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %336 = fmul fast float %324, %333
  %337 = fmul fast float %324, %334
  %338 = fmul fast float %324, %335
  %339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %340 = extractvalue %dx.types.CBufRet.f32 %339, 0
  %341 = extractvalue %dx.types.CBufRet.f32 %339, 1
  %342 = extractvalue %dx.types.CBufRet.f32 %339, 2
  %343 = fadd fast float %336, %340
  %344 = fadd fast float %343, %329
  %345 = fadd fast float %337, %341
  %346 = fadd fast float %345, %330
  %347 = fadd fast float %338, %342
  %348 = fadd fast float %347, %331
  %349 = fmul fast float %344, %319
  %350 = fmul fast float %346, %319
  %351 = fmul fast float %348, %319
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %354 = extractvalue %dx.types.CBufRet.f32 %352, 1
  %355 = extractvalue %dx.types.CBufRet.f32 %352, 2
  %356 = fsub fast float %353, %24
  %357 = fadd fast float %356, %349
  %358 = fsub fast float %354, %25
  %359 = fadd fast float %358, %350
  %360 = fsub fast float %355, %26
  %361 = fadd fast float %360, %351
  %362 = fmul fast float %27, %27
  %363 = call float @dx.op.dot3.f32(i32 55, float %357, float %359, float %361, float %357, float %359, float %361)  ; Dot3(ax,ay,az,bx,by,bz)
  %364 = fsub fast float %362, %363
  %365 = fmul fast float %262, %362
  %366 = fmul fast float %261, %362
  %367 = fcmp fast olt float %364, %365
  %368 = fcmp fast ogt float %364, %366
  %369 = or i1 %367, %368
  %370 = select i1 %369, float 0.000000e+00, float %364
  %371 = fsub fast float %261, %262
  %372 = fmul fast float %371, %362
  %373 = fsub fast float %370, %365
  %374 = fdiv fast float %373, %372
  %375 = call float @dx.op.unary.f32(i32 7, float %374)  ; Saturate(value)
  %376 = fmul fast float %375, 2.000000e+00
  %377 = fsub fast float 3.000000e+00, %376
  %378 = fmul fast float %375, %375
  %379 = fmul fast float %378, %377
  %380 = fsub fast float %269, %275
  %381 = fmul fast float %379, %380
  %382 = fadd fast float %381, %275
  %383 = fmul fast float %266, %28
  %384 = fmul fast float %267, %29
  %385 = fmul fast float %268, %30
  %386 = fsub fast float %383, %272
  %387 = fsub fast float %384, %273
  %388 = fsub fast float %385, %274
  %389 = fmul fast float %379, %386
  %390 = fmul fast float %379, %387
  %391 = fmul fast float %379, %388
  %392 = fadd fast float %389, %272
  %393 = fadd fast float %390, %273
  %394 = fadd fast float %391, %274
  %395 = fmul fast float %255, %255
  %396 = fmul fast float %395, %370
  br label %492

; <label>:397                                     ; preds = %252
  %398 = and i32 %277, 256
  %399 = icmp eq i32 %398, 0
  %400 = fsub fast float %319, %47
  br i1 %399, label %449, label %401

; <label>:401                                     ; preds = %397
  %402 = fadd fast float %261, %47
  %403 = fcmp fast olt float %319, %47
  %404 = fcmp fast ogt float %319, %402
  %405 = or i1 %403, %404
  %406 = select i1 %405, float 0.000000e+00, float %400
  %407 = call float @dx.op.unary.f32(i32 83, float %319)  ; DerivCoarseX(value)
  %408 = call float @dx.op.unary.f32(i32 84, float %319)  ; DerivCoarseY(value)
  %409 = fmul fast float %407, %407
  %410 = fmul fast float %408, %408
  %411 = fadd fast float %410, %409
  %412 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %413 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %414 = fmul fast float %413, %412
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %416 = fmul fast float %415, %262
  %417 = fdiv fast float %400, %416
  %418 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %419 = fmul fast float %418, 2.000000e+00
  %420 = fsub fast float 3.000000e+00, %419
  %421 = fmul fast float %418, %418
  %422 = fmul fast float %421, %420
  %423 = fsub fast float %319, %402
  %424 = fadd fast float %423, %416
  %425 = fdiv fast float %424, %416
  %426 = call float @dx.op.unary.f32(i32 7, float %425)  ; Saturate(value)
  %427 = fmul fast float %426, 2.000000e+00
  %428 = fsub fast float 3.000000e+00, %427
  %429 = fmul fast float %426, %426
  %430 = fmul fast float %429, %428
  %431 = fsub fast float %422, %430
  %432 = fsub fast float %269, %275
  %433 = fmul fast float %431, %432
  %434 = fadd fast float %433, %275
  %435 = fmul fast float %266, %28
  %436 = fmul fast float %267, %29
  %437 = fmul fast float %268, %30
  %438 = fsub fast float %435, %272
  %439 = fsub fast float %436, %273
  %440 = fsub fast float %437, %274
  %441 = fmul fast float %431, %438
  %442 = fmul fast float %431, %439
  %443 = fmul fast float %431, %440
  %444 = fadd fast float %441, %272
  %445 = fadd fast float %442, %273
  %446 = fadd fast float %443, %274
  %447 = fmul fast float %406, %255
  %448 = call float @dx.op.unary.f32(i32 6, float %447)  ; FAbs(value)
  br label %492

; <label>:449                                     ; preds = %397
  br i1 %280, label %450, label %463

; <label>:450                                     ; preds = %449
  %451 = fdiv fast float 5.000000e+01, %27
  %452 = select i1 %282, float %451, float 1.000000e+00
  %453 = fmul fast float %452, %255
  %454 = fmul fast float %180, 2.000000e+00
  %455 = fmul fast float %181, 2.000000e+00
  %456 = fadd fast float %454, -1.000000e+00
  %457 = fadd fast float %455, -1.000000e+00
  %458 = call float @dx.op.dot2.f32(i32 54, float %456, float %457, float %456, float %457)  ; Dot2(ax,ay,bx,by)
  %459 = fmul fast float %263, %27
  %460 = fmul fast float %459, %458
  %461 = fsub fast float %400, %460
  %462 = fmul fast float %453, %461
  br label %492

; <label>:463                                     ; preds = %449
  br i1 %284, label %484, label %464

; <label>:464                                     ; preds = %463
  %465 = fmul fast float %27, 0x3F947AE140000000
  %466 = select i1 %282, float %465, float 1.000000e+00
  %467 = fdiv fast float 1.000000e+00, %466
  %468 = fmul fast float %466, %256
  %469 = fmul fast float %466, %257
  %470 = fmul fast float %467, %258
  %471 = call float @dx.op.unary.f32(i32 6, float %400)  ; FAbs(value)
  %472 = fcmp fast olt float %471, %468
  br i1 %472, label %473, label %477, !dx.controlflow.hints !64

; <label>:473                                     ; preds = %464
  %474 = fmul fast float %467, %255
  %475 = fmul fast float %474, %471
  %476 = call float @dx.op.unary.f32(i32 6, float %475)  ; FAbs(value)
  br label %492

; <label>:477                                     ; preds = %464
  %478 = fcmp fast ogt float %471, %469
  br i1 %478, label %479, label %492

; <label>:479                                     ; preds = %477
  %480 = fsub fast float %471, %469
  %481 = fmul fast float %470, %480
  %482 = call float @dx.op.unary.f32(i32 6, float %481)  ; FAbs(value)
  %483 = fsub fast float 1.000000e+00, %482
  br label %492

; <label>:484                                     ; preds = %463
  %485 = fdiv fast float 5.000000e+01, %27
  %486 = select i1 %282, float %485, float 1.000000e+00
  %487 = fmul fast float %486, %255
  %488 = call float @dx.op.unary.f32(i32 6, float %231)  ; FAbs(value)
  %489 = select i1 %279, float %488, float 0x47EFFFFFE0000000
  %490 = call float @dx.op.binary.f32(i32 36, float %400, float %489)  ; FMin(a,b)
  %491 = fmul fast float %487, %490
  br label %492

; <label>:492                                     ; preds = %484, %479, %477, %473, %450, %401, %320
  %493 = phi float [ %396, %320 ], [ %448, %401 ], [ %462, %450 ], [ %491, %484 ], [ %476, %473 ], [ %483, %479 ], [ %471, %477 ]
  %494 = phi float [ %392, %320 ], [ %444, %401 ], [ %28, %450 ], [ %28, %484 ], [ %28, %473 ], [ %28, %479 ], [ %28, %477 ]
  %495 = phi float [ %393, %320 ], [ %445, %401 ], [ %29, %450 ], [ %29, %484 ], [ %29, %473 ], [ %29, %479 ], [ %29, %477 ]
  %496 = phi float [ %394, %320 ], [ %446, %401 ], [ %30, %450 ], [ %30, %484 ], [ %30, %473 ], [ %30, %479 ], [ %30, %477 ]
  %497 = phi float [ %382, %320 ], [ %434, %401 ], [ 1.000000e+00, %450 ], [ 1.000000e+00, %484 ], [ 1.000000e+00, %473 ], [ 1.000000e+00, %479 ], [ 1.000000e+00, %477 ]
  %498 = call float @dx.op.unary.f32(i32 7, float %493)  ; Saturate(value)
  %499 = fmul fast float %498, %43
  %500 = fmul fast float %497, %210
  %501 = fmul fast float %500, %498
  br label %502

; <label>:502                                     ; preds = %492, %249
  %503 = phi float [ %501, %492 ], [ %210, %249 ]
  %504 = phi float [ %499, %492 ], [ %43, %249 ]
  %505 = phi float [ %494, %492 ], [ %28, %249 ]
  %506 = phi float [ %495, %492 ], [ %29, %249 ]
  %507 = phi float [ %496, %492 ], [ %30, %249 ]
  %508 = fmul fast float %505, %31
  %509 = fmul fast float %506, %31
  %510 = fmul fast float %507, %31
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 2
  %513 = fptosi float %47 to i32
  %514 = sitofp i32 %513 to float
  %515 = fadd fast float %512, %514
  %516 = fmul fast float %515, 0x3FE3C6EF40000000
  %517 = frem fast float %52, 2.560000e+02
  %518 = frem fast float %53, 2.560000e+02
  %519 = fptoui float %517 to i32
  %520 = fptoui float %518 to i32
  %521 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %519, i32 %520, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = fadd fast float %522, %516
  %524 = call float @dx.op.unary.f32(i32 22, float %523)  ; Frc(value)
  %525 = and i32 %131, 1
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %584, label %527, !dx.controlflow.hints !65

; <label>:527                                     ; preds = %502
  %528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 2
  %530 = extractvalue %dx.types.ResRet.f32 %528, 3
  %531 = add i32 %128, 16
  %532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = extractvalue %dx.types.ResRet.f32 %532, 1
  %535 = extractvalue %dx.types.ResRet.f32 %532, 2
  %536 = add i32 %128, 32
  %537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = extractvalue %dx.types.ResRet.f32 %537, 1
  %540 = extractvalue %dx.types.ResRet.f32 %537, 2
  %541 = and i32 %131, 2
  %542 = icmp eq i32 %541, 0
  %543 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float %34, float %35, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %544 = call float @dx.op.unary.f32(i32 25, float %543)  ; Rsqrt(value)
  %545 = fmul fast float %544, %34
  %546 = fmul fast float %544, %35
  %547 = fmul fast float %544, %36
  %548 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %549 = call float @dx.op.unary.f32(i32 25, float %548)  ; Rsqrt(value)
  %550 = fmul fast float %549, %87
  %551 = fmul fast float %549, %88
  %552 = fmul fast float %549, %89
  %553 = call float @dx.op.dot3.f32(i32 55, float %550, float %551, float %552, float %545, float %546, float %547)  ; Dot3(ax,ay,az,bx,by,bz)
  %554 = fmul fast float %553, %553
  %555 = fmul fast float %554, %529
  %556 = fadd fast float %555, %530
  %557 = call float @dx.op.unary.f32(i32 7, float %556)  ; Saturate(value)
  br i1 %542, label %558, label %568, !dx.controlflow.hints !66

; <label>:558                                     ; preds = %527
  %559 = extractvalue %dx.types.ResRet.f32 %528, 1
  %560 = extractvalue %dx.types.ResRet.f32 %528, 0
  %561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %562 = extractvalue %dx.types.CBufRet.f32 %561, 3
  %563 = fmul fast float %562, %548
  %564 = fsub fast float %560, %563
  %565 = fmul fast float %564, %559
  %566 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  %567 = fmul fast float %566, %557
  br label %568

; <label>:568                                     ; preds = %558, %527
  %569 = phi float [ %567, %558 ], [ %557, %527 ]
  %570 = fsub fast float %533, %538
  %571 = fsub fast float %534, %539
  %572 = fsub fast float %535, %540
  %573 = fmul fast float %569, %570
  %574 = fmul fast float %569, %571
  %575 = fmul fast float %569, %572
  %576 = fadd fast float %573, %538
  %577 = fadd fast float %574, %539
  %578 = fadd fast float %575, %540
  %579 = fmul fast float %576, %508
  %580 = fmul fast float %577, %509
  %581 = fmul fast float %578, %510
  %582 = fmul fast float %569, %503
  %583 = fmul fast float %569, %504
  br label %584

; <label>:584                                     ; preds = %568, %502
  %585 = phi float [ %582, %568 ], [ %503, %502 ]
  %586 = phi float [ %583, %568 ], [ %504, %502 ]
  %587 = phi float [ %579, %568 ], [ %508, %502 ]
  %588 = phi float [ %580, %568 ], [ %509, %502 ]
  %589 = phi float [ %581, %568 ], [ %510, %502 ]
  %590 = add i32 %23, 120
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = add i32 %592, 0
  %594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %594, %dx.types.Handle %48, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = extractvalue %dx.types.ResRet.f32 %595, 1
  %598 = extractvalue %dx.types.ResRet.f32 %595, 2
  %599 = add i32 %23, 44
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = shl i32 %601, 4
  %603 = and i32 %602, 32752
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = lshr i32 %601, 7
  %606 = and i32 %605, 32752
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = lshr i32 %601, 22
  %609 = shl nuw nsw i32 %608, 5
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = fmul fast float %604, %596
  %612 = fmul fast float %607, %597
  %613 = fmul fast float %610, %598
  %614 = add i32 %23, 48
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = lshr i32 %616, 22
  %618 = shl nuw nsw i32 %617, 5
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = fmul fast float %619, %611
  %621 = select i1 %111, float %620, float %611
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = add i32 %623, 0
  %625 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %624, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %626 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %625, %dx.types.Handle %48, float %170, float %171, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %627 = extractvalue %dx.types.ResRet.f32 %626, 0
  %628 = extractvalue %dx.types.ResRet.f32 %626, 1
  %629 = extractvalue %dx.types.ResRet.f32 %626, 2
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = shl i32 %631, 4
  %633 = and i32 %632, 32752
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = lshr i32 %631, 7
  %636 = and i32 %635, 32752
  %637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %636)  ; LegacyF16ToF32(value)
  %638 = lshr i32 %631, 22
  %639 = shl nuw nsw i32 %638, 5
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = fmul fast float %634, %627
  %642 = fmul fast float %637, %628
  %643 = fmul fast float %640, %629
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = lshr i32 %645, 22
  %647 = shl nuw nsw i32 %646, 5
  %648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %647)  ; LegacyF16ToF32(value)
  %649 = fmul fast float %648, %641
  %650 = select i1 %111, float %649, float %641
  %651 = fsub fast float %650, %621
  %652 = fsub fast float %642, %612
  %653 = fsub fast float %643, %613
  %654 = fmul fast float %651, %40
  %655 = fmul fast float %652, %40
  %656 = fmul fast float %653, %40
  %657 = fadd fast float %654, %621
  %658 = fadd fast float %655, %612
  %659 = fadd fast float %656, %613
  %660 = fsub fast float %627, %596
  %661 = fsub fast float %628, %597
  %662 = fsub fast float %629, %598
  %663 = fmul fast float %660, %40
  %664 = fmul fast float %661, %40
  %665 = fmul fast float %662, %40
  %666 = fadd fast float %663, %596
  %667 = fadd fast float %664, %597
  %668 = fadd fast float %665, %598
  %669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = extractvalue %dx.types.ResRet.f32 %669, 1
  %672 = extractvalue %dx.types.ResRet.f32 %669, 2
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 1
  %675 = fmul fast float %657, %587
  %676 = fmul fast float %658, %588
  %677 = fmul fast float %659, %589
  %678 = call float @dx.op.dot3.f32(i32 55, float %675, float %676, float %677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %679 = select i1 %111, float 0.000000e+00, float %675
  %680 = select i1 %111, float %678, float %676
  %681 = select i1 %111, float 0.000000e+00, float %677
  %682 = call float @dx.op.dot3.f32(i32 55, float %666, float %667, float %668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %683 = add i32 %23, 32
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 255
  %687 = uitofp i32 %686 to float
  %688 = lshr i32 %685, 8
  %689 = and i32 %688, 255
  %690 = uitofp i32 %689 to float
  %691 = fmul fast float %690, %682
  %692 = fadd fast float %691, %687
  %693 = fmul fast float %692, 0x3F70101020000000
  %694 = call float @dx.op.unary.f32(i32 7, float %693)  ; Saturate(value)
  %695 = add i32 %23, 124
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = add i32 %697, 0
  %699 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %698, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %700 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %699, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %701 = extractvalue %dx.types.ResRet.f32 %700, 0
  %702 = and i32 %131, 8192
  %703 = icmp eq i32 %702, 0
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 0
  br i1 %703, label %716, label %706, !dx.controlflow.hints !67

; <label>:706                                     ; preds = %584
  %707 = add i32 %128, 176
  %708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %707, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  %710 = extractvalue %dx.types.ResRet.f32 %708, 1
  %711 = fcmp fast oge float %709, 0.000000e+00
  %712 = select i1 %711, float %709, float %705
  %713 = fmul fast float %701, %90
  %714 = fmul fast float %713, %710
  %715 = fadd fast float %714, %712
  br label %727

; <label>:716                                     ; preds = %584
  %717 = add i32 %23, 104
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = extractvalue %dx.types.ResRet.i32 %718, 1
  %721 = bitcast i32 %719 to float
  %722 = bitcast i32 %720 to float
  %723 = fcmp fast oge float %721, 0.000000e+00
  %724 = select i1 %723, float %721, float %705
  %725 = fmul fast float %722, %701
  %726 = fadd fast float %724, %725
  br label %727

; <label>:727                                     ; preds = %716, %706
  %728 = phi float [ %715, %706 ], [ %726, %716 ]
  %729 = fmul fast float %682, %586
  %730 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %213, i32 %214, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = lshr i32 %731, 18
  %733 = uitofp i32 %732 to float
  %734 = fmul fast float %733, 0x3F4C00EBA0000000
  %735 = call float @dx.op.unary.f32(i32 21, float %734)  ; Exp(value)
  %736 = fadd fast float %735, -1.000000e+00
  %737 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %738 = extractvalue %dx.types.Dimensions %737, 0
  %739 = sitofp i32 %738 to float
  %740 = extractvalue %dx.types.Dimensions %737, 1
  %741 = sitofp i32 %740 to float
  %742 = fcmp fast oge float %211, %739
  %743 = fcmp fast oge float %212, %741
  %744 = or i1 %742, %743
  %745 = select i1 %744, float 0x4197782600000000, float %736
  %746 = icmp eq i32 %127, 3
  %747 = fcmp fast ogt float %47, %745
  %748 = and i1 %237, %747
  %749 = or i1 %746, %748
  %750 = icmp eq i32 %127, 2
  %751 = fcmp fast ole float %47, %745
  %752 = and i1 %750, %751
  %753 = or i1 %752, %749
  %754 = fmul fast float %505, %37
  %755 = fmul fast float %754, %657
  %756 = fmul fast float %755, %670
  %757 = fmul fast float %756, %674
  %758 = fmul fast float %506, %37
  %759 = fmul fast float %758, %658
  %760 = fmul fast float %759, %671
  %761 = fmul fast float %760, %674
  %762 = fmul fast float %507, %37
  %763 = fmul fast float %762, %659
  %764 = fmul fast float %763, %672
  %765 = fmul fast float %764, %674
  %766 = fadd fast float %757, %679
  %767 = fadd fast float %680, %761
  %768 = fadd fast float %765, %681
  %769 = fmul fast float %766, %585
  %770 = fmul fast float %767, %585
  %771 = fmul fast float %768, %585
  %772 = fmul fast float %728, %694
  %773 = fsub fast float 1.000000e+00, %694
  %774 = fsub fast float %773, %729
  %775 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 3
  %778 = fmul fast float %777, %775
  %779 = fadd fast float %778, %772
  %780 = and i32 %131, 1048576
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %873, label %782, !dx.controlflow.hints !68

; <label>:782                                     ; preds = %727
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 2
  %785 = extractvalue %dx.types.CBufRet.f32 %783, 3
  %786 = fmul fast float %784, %52
  %787 = fmul fast float %785, %53
  %788 = call float @dx.op.unary.f32(i32 7, float %786)  ; Saturate(value)
  %789 = call float @dx.op.unary.f32(i32 7, float %787)  ; Saturate(value)
  %790 = select i1 %753, i32 2, i32 0
  %791 = or i32 %790, 1
  %792 = uitofp i32 %791 to float
  %793 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %788, float %789, float %792, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %794 = extractvalue %dx.types.ResRet.f32 %793, 0
  %795 = extractvalue %dx.types.ResRet.f32 %793, 1
  %796 = extractvalue %dx.types.ResRet.f32 %793, 2
  %797 = extractvalue %dx.types.ResRet.f32 %793, 3
  %798 = add nuw nsw i32 %790, 2
  %799 = uitofp i32 %798 to float
  %800 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %788, float %789, float %799, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = extractvalue %dx.types.ResRet.f32 %800, 1
  %803 = extractvalue %dx.types.ResRet.f32 %800, 2
  %804 = extractvalue %dx.types.ResRet.f32 %800, 3
  %805 = call float @dx.op.binary.f32(i32 35, float %795, float %796)  ; FMax(a,b)
  %806 = call float @dx.op.binary.f32(i32 35, float %794, float %805)  ; FMax(a,b)
  %807 = call float @dx.op.binary.f32(i32 35, float %806, float %797)  ; FMax(a,b)
  %808 = call float @dx.op.binary.f32(i32 36, float %802, float %803)  ; FMin(a,b)
  %809 = call float @dx.op.binary.f32(i32 36, float %801, float %808)  ; FMin(a,b)
  %810 = call float @dx.op.binary.f32(i32 36, float %809, float %804)  ; FMin(a,b)
  %811 = fmul fast float %807, 2.550000e+02
  %812 = fadd fast float %811, 0x3F70101020000000
  %813 = fptoui float %812 to i32
  %814 = fmul fast float %810, 2.550000e+02
  %815 = fadd fast float %814, 0x3F70101020000000
  %816 = fptoui float %815 to i32
  %817 = icmp ult i32 %813, %816
  br i1 %817, label %818, label %866

; <label>:818                                     ; preds = %782
  %819 = fcmp fast ogt float %46, 9.843750e-01
  %820 = fadd fast float %47, -4.000000e+00
  %821 = select i1 %819, float -4.000000e+00, float %820
  %822 = call float @dx.op.binary.f32(i32 35, float %821, float 0.000000e+00)  ; FMax(a,b)
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 0
  %825 = fadd fast float %824, %822
  %826 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %827 = fmul fast float %825, %826
  %828 = call float @dx.op.unary.f32(i32 23, float %827)  ; Log(value)
  %829 = extractvalue %dx.types.CBufRet.f32 %823, 3
  %830 = fmul fast float %829, %828
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 2
  %833 = fmul fast float %830, %832
  %834 = call float @dx.op.unary.f32(i32 7, float %833)  ; Saturate(value)
  %835 = uitofp i32 %813 to float
  %836 = uitofp i32 %816 to float
  %837 = fadd fast float %835, 5.000000e-01
  %838 = fadd fast float %836, 5.000000e-01
  %839 = fmul fast float %832, %837
  %840 = fmul fast float %832, %838
  %841 = fadd fast float %839, 0x3F0FFB4800000000
  %842 = fadd fast float %840, 0xBF0FFB4800000000
  %843 = call float @dx.op.binary.f32(i32 35, float %834, float %841)  ; FMax(a,b)
  %844 = call float @dx.op.binary.f32(i32 36, float %843, float %842)  ; FMin(a,b)
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %847 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %848 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %849 = select i1 %753, float %848, float 0.000000e+00
  %850 = fmul fast float %846, %844
  %851 = fadd fast float %849, %850
  %852 = fadd fast float %849, %847
  %853 = fsub fast float %846, %847
  %854 = fadd fast float %853, %849
  %855 = call float @dx.op.binary.f32(i32 35, float %851, float %852)  ; FMax(a,b)
  %856 = call float @dx.op.binary.f32(i32 36, float %855, float %854)  ; FMin(a,b)
  %857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %788, float %789, float %856, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = extractvalue %dx.types.ResRet.f32 %857, 1
  %860 = extractvalue %dx.types.ResRet.f32 %857, 2
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 1
  %863 = fmul fast float %862, %858
  %864 = fmul fast float %862, %859
  %865 = fmul fast float %862, %860
  br label %866

; <label>:866                                     ; preds = %818, %782
  %867 = phi float [ %863, %818 ], [ 1.000000e+00, %782 ]
  %868 = phi float [ %864, %818 ], [ 1.000000e+00, %782 ]
  %869 = phi float [ %865, %818 ], [ 1.000000e+00, %782 ]
  %870 = fmul fast float %867, %769
  %871 = fmul fast float %868, %770
  %872 = fmul fast float %869, %771
  br label %873

; <label>:873                                     ; preds = %866, %727
  %874 = phi float [ %870, %866 ], [ %769, %727 ]
  %875 = phi float [ %871, %866 ], [ %770, %727 ]
  %876 = phi float [ %872, %866 ], [ %771, %727 ]
  %877 = and i32 %131, 2097152
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %883, label %879, !dx.controlflow.hints !69

; <label>:879                                     ; preds = %873
  %880 = add i32 %128, 192
  %881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %880, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  br label %886

; <label>:883                                     ; preds = %873
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 3
  br label %886

; <label>:886                                     ; preds = %883, %879
  %887 = phi float [ %882, %879 ], [ %885, %883 ]
  br i1 %748, label %888, label %972

; <label>:888                                     ; preds = %886
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 2
  %891 = extractvalue %dx.types.CBufRet.f32 %889, 3
  %892 = fmul fast float %890, %52
  %893 = fmul fast float %891, %53
  %894 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %895 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  %896 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %894, float %895, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = extractvalue %dx.types.ResRet.f32 %896, 1
  %899 = extractvalue %dx.types.ResRet.f32 %896, 2
  %900 = extractvalue %dx.types.ResRet.f32 %896, 3
  %901 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %894, float %895, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %902 = extractvalue %dx.types.ResRet.f32 %901, 0
  %903 = extractvalue %dx.types.ResRet.f32 %901, 1
  %904 = extractvalue %dx.types.ResRet.f32 %901, 2
  %905 = extractvalue %dx.types.ResRet.f32 %901, 3
  %906 = call float @dx.op.binary.f32(i32 35, float %898, float %899)  ; FMax(a,b)
  %907 = call float @dx.op.binary.f32(i32 35, float %897, float %906)  ; FMax(a,b)
  %908 = call float @dx.op.binary.f32(i32 35, float %907, float %900)  ; FMax(a,b)
  %909 = call float @dx.op.binary.f32(i32 36, float %903, float %904)  ; FMin(a,b)
  %910 = call float @dx.op.binary.f32(i32 36, float %902, float %909)  ; FMin(a,b)
  %911 = call float @dx.op.binary.f32(i32 36, float %910, float %905)  ; FMin(a,b)
  %912 = fmul fast float %908, 2.550000e+02
  %913 = fadd fast float %912, 0x3F70101020000000
  %914 = fptoui float %913 to i32
  %915 = fmul fast float %911, 2.550000e+02
  %916 = fadd fast float %915, 0x3F70101020000000
  %917 = fptoui float %916 to i32
  %918 = icmp ult i32 %914, %917
  br i1 %918, label %919, label %961

; <label>:919                                     ; preds = %888
  %920 = fcmp fast ogt float %46, 9.843750e-01
  %921 = fadd fast float %47, -4.000000e+00
  %922 = select i1 %920, float -4.000000e+00, float %921
  %923 = call float @dx.op.binary.f32(i32 35, float %922, float 0.000000e+00)  ; FMax(a,b)
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 0
  %926 = fadd fast float %925, %923
  %927 = extractvalue %dx.types.CBufRet.f32 %924, 2
  %928 = fmul fast float %926, %927
  %929 = call float @dx.op.unary.f32(i32 23, float %928)  ; Log(value)
  %930 = extractvalue %dx.types.CBufRet.f32 %924, 3
  %931 = fmul fast float %930, %929
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 2
  %934 = fmul fast float %931, %933
  %935 = call float @dx.op.unary.f32(i32 7, float %934)  ; Saturate(value)
  %936 = uitofp i32 %914 to float
  %937 = uitofp i32 %917 to float
  %938 = fadd fast float %936, 5.000000e-01
  %939 = fadd fast float %937, 5.000000e-01
  %940 = fmul fast float %933, %938
  %941 = fmul fast float %933, %939
  %942 = fadd fast float %940, 0x3F0FFB4800000000
  %943 = fadd fast float %941, 0xBF0FFB4800000000
  %944 = call float @dx.op.binary.f32(i32 35, float %935, float %942)  ; FMax(a,b)
  %945 = call float @dx.op.binary.f32(i32 36, float %944, float %943)  ; FMin(a,b)
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %948 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %949 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %950 = fmul fast float %947, %945
  %951 = fadd fast float %949, %950
  %952 = fadd fast float %949, %948
  %953 = fsub fast float %947, %948
  %954 = fadd fast float %953, %949
  %955 = call float @dx.op.binary.f32(i32 35, float %951, float %952)  ; FMax(a,b)
  %956 = call float @dx.op.binary.f32(i32 36, float %955, float %954)  ; FMin(a,b)
  %957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %894, float %895, float %956, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = extractvalue %dx.types.ResRet.f32 %957, 1
  %960 = extractvalue %dx.types.ResRet.f32 %957, 2
  br label %961

; <label>:961                                     ; preds = %919, %888
  %962 = phi float [ %958, %919 ], [ 1.000000e+00, %888 ]
  %963 = phi float [ %959, %919 ], [ 1.000000e+00, %888 ]
  %964 = phi float [ %960, %919 ], [ 1.000000e+00, %888 ]
  %965 = call float @dx.op.dot3.f32(i32 55, float %962, float %963, float %964, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %966 = select i1 %111, float %965, float %962
  %967 = select i1 %111, float %965, float %963
  %968 = select i1 %111, float 1.000000e+00, float %964
  %969 = fmul fast float %966, %874
  %970 = fmul fast float %967, %875
  %971 = fmul fast float %968, %876
  br label %972

; <label>:972                                     ; preds = %961, %886
  %973 = phi float [ %745, %961 ], [ %47, %886 ]
  %974 = phi float [ %969, %961 ], [ %874, %886 ]
  %975 = phi float [ %970, %961 ], [ %875, %886 ]
  %976 = phi float [ %971, %961 ], [ %876, %886 ]
  %977 = phi float [ %962, %961 ], [ 1.000000e+00, %886 ]
  br i1 %753, label %1220, label %978

; <label>:978                                     ; preds = %972
  %979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %32, float %33, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %980 = extractvalue %dx.types.ResRet.f32 %979, 0
  %981 = extractvalue %dx.types.ResRet.f32 %979, 1
  %982 = extractvalue %dx.types.ResRet.f32 %979, 2
  %983 = fmul fast float %980, %977
  %984 = call float @dx.op.dot3.f32(i32 55, float %980, float %981, float %982, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %985 = select i1 %111, float %984, float %980
  %986 = select i1 %111, float %984, float %981
  %987 = select i1 %111, float 1.000000e+00, float %982
  %988 = fmul fast float %985, %974
  %989 = fmul fast float %986, %975
  %990 = fmul fast float %987, %976
  %991 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.i32 %991, 0
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1220, label %994, !dx.controlflow.hints !70

; <label>:994                                     ; preds = %978
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 3
  %998 = fmul fast float %996, %52
  %999 = fmul fast float %997, %53
  %1000 = fmul fast float %998, 2.000000e+00
  %1001 = fmul fast float %999, 2.000000e+00
  %1002 = fsub fast float 1.000000e+00, %1000
  %1003 = fsub fast float 1.000000e+00, %1001
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1008 = fmul fast float %1002, %1005
  %1009 = fmul fast float %1002, %1006
  %1010 = fmul fast float %1002, %1007
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1015 = fmul fast float %1003, %1012
  %1016 = fmul fast float %1003, %1013
  %1017 = fmul fast float %1003, %1014
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1022 = fadd fast float %1015, %1019
  %1023 = fadd fast float %1022, %1008
  %1024 = fadd fast float %1016, %1020
  %1025 = fadd fast float %1024, %1009
  %1026 = fadd fast float %1017, %1021
  %1027 = fadd fast float %1026, %1010
  %1028 = fmul fast float %1023, %973
  %1029 = fmul fast float %1025, %973
  %1030 = fmul fast float %1027, %973
  %1031 = fmul fast float %1028, %1028
  %1032 = fmul fast float %1029, %1029
  %1033 = fadd fast float %1031, %1032
  %1034 = fmul fast float %1030, %1030
  %1035 = fadd fast float %1033, %1034
  %1036 = call float @dx.op.unary.f32(i32 24, float %1035)  ; Sqrt(value)
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1039 = fsub fast float %1036, %1038
  %1040 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1041 = fmul fast float %1039, %1040
  %1042 = call float @dx.op.unary.f32(i32 7, float %1041)  ; Saturate(value)
  %1043 = fadd fast float %1042, -5.000000e-01
  %1044 = fmul fast float %1043, 2.000000e+00
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 2
  %1047 = call float @dx.op.binary.f32(i32 36, float %1046, float %1044)  ; FMin(a,b)
  %1048 = fsub fast float -0.000000e+00, %1046
  %1049 = fcmp fast ogt float %1047, %1048
  br i1 %1049, label %1050, label %1220, !dx.controlflow.hints !71

; <label>:1050                                    ; preds = %994
  %1051 = fmul fast float %1047, 5.000000e-01
  %1052 = fadd fast float %1051, 5.000000e-01
  %1053 = call float @dx.op.unary.f32(i32 22, float %1052)  ; Frc(value)
  %1054 = call float @dx.op.unary.f32(i32 27, float %1053)  ; Round_ni(value)
  %1055 = call float @dx.op.unary.f32(i32 22, float %1053)  ; Frc(value)
  %1056 = fmul fast float %1055, 2.000000e+00
  %1057 = fadd fast float %1056, -1.000000e+00
  %1058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %998, float %999, float %1054, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.ResRet.f32 %1058, 2
  %1062 = extractvalue %dx.types.ResRet.f32 %1058, 3
  %1063 = fadd fast float %1059, -5.000000e-01
  %1064 = fadd fast float %1061, -5.000000e-01
  %1065 = fmul fast float %1063, 0xBFD5555560000000
  %1066 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1064, float %1065)  ; FMad(a,b,c)
  %1067 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1060, float 0.000000e+00)  ; FMad(a,b,c)
  %1068 = fadd fast float %1067, %1062
  %1069 = fmul fast float %1063, -7.500000e-01
  %1070 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1064, float %1069)  ; FMad(a,b,c)
  %1071 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1060, float 0.000000e+00)  ; FMad(a,b,c)
  %1072 = fadd fast float %1071, %1062
  %1073 = call float @dx.op.binary.f32(i32 35, float %1066, float -1.000000e+00)  ; FMax(a,b)
  %1074 = call float @dx.op.binary.f32(i32 35, float %1068, float -1.000000e+00)  ; FMax(a,b)
  %1075 = call float @dx.op.binary.f32(i32 35, float %1070, float -1.000000e+00)  ; FMax(a,b)
  %1076 = call float @dx.op.binary.f32(i32 35, float %1072, float -1.000000e+00)  ; FMax(a,b)
  %1077 = call float @dx.op.binary.f32(i32 36, float %1073, float 1.000000e+00)  ; FMin(a,b)
  %1078 = call float @dx.op.binary.f32(i32 36, float %1074, float 1.000000e+00)  ; FMin(a,b)
  %1079 = call float @dx.op.binary.f32(i32 36, float %1075, float 1.000000e+00)  ; FMin(a,b)
  %1080 = call float @dx.op.binary.f32(i32 36, float %1076, float 1.000000e+00)  ; FMin(a,b)
  %1081 = fcmp fast olt float %1077, 0x3FEFFF8020000000
  br i1 %1081, label %1082, label %1197, !dx.controlflow.hints !72

; <label>:1082                                    ; preds = %1050
  %1083 = extractvalue %dx.types.CBufRet.f32 %1045, 3
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.CBufRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1088 = extractvalue %dx.types.CBufRet.f32 %1084, 3
  %1089 = fsub fast float %1085, %1077
  %1090 = fsub fast float %1086, %1078
  %1091 = fsub fast float %1087, %1079
  %1092 = fsub fast float %1088, %1080
  %1093 = fmul fast float %1089, %1083
  %1094 = fmul fast float %1090, %1083
  %1095 = fmul fast float %1091, %1083
  %1096 = fmul fast float %1092, %1083
  %1097 = fadd fast float %1093, %1077
  %1098 = fadd fast float %1094, %1078
  %1099 = fsub fast float -0.000000e+00, %1098
  %1100 = fadd fast float %1095, %1079
  %1101 = fadd fast float %1096, %1080
  %1102 = fmul fast float %1097, %1097
  %1103 = fsub fast float %1098, %1102
  %1104 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1103)  ; FMax(a,b)
  %1105 = fdiv fast float 1.000000e+00, %1104
  %1106 = fmul fast float %1098, %1097
  %1107 = fsub fast float %1100, %1106
  %1108 = fsub fast float %1057, %1097
  %1109 = fmul fast float %1057, %1057
  %1110 = fsub fast float %1109, %1098
  %1111 = fmul fast float %1108, %1105
  %1112 = fmul fast float %1111, %1107
  %1113 = fsub fast float %1110, %1112
  %1114 = fmul fast float %1098, %1098
  %1115 = fsub fast float %1101, %1114
  %1116 = fmul fast float %1107, %1107
  %1117 = fmul fast float %1116, %1105
  %1118 = fsub fast float %1115, %1117
  %1119 = fdiv fast float %1113, %1118
  %1120 = fmul fast float %1107, %1119
  %1121 = fsub fast float %1108, %1120
  %1122 = fmul fast float %1121, %1105
  %1123 = fmul fast float %1122, %1097
  %1124 = fsub fast float 1.000000e+00, %1123
  %1125 = fmul fast float %1098, %1119
  %1126 = fsub fast float %1124, %1125
  %1127 = fmul fast float %1122, %1122
  %1128 = fmul fast float %1119, 4.000000e+00
  %1129 = fmul fast float %1128, %1126
  %1130 = fsub fast float %1127, %1129
  %1131 = call float @dx.op.unary.f32(i32 24, float %1130)  ; Sqrt(value)
  %1132 = fcmp fast oge float %1122, 0.000000e+00
  %1133 = fsub fast float -0.000000e+00, %1131
  %1134 = select i1 %1132, float %1133, float %1131
  %1135 = fsub fast float %1134, %1122
  %1136 = fdiv fast float %1135, %1119
  %1137 = fdiv fast float %1126, %1135
  %1138 = fmul fast float %1136, 5.000000e-01
  %1139 = fmul fast float %1137, 2.000000e+00
  %1140 = select i1 %1132, float %1138, float %1139
  %1141 = select i1 %1132, float %1139, float %1138
  %1142 = call float @dx.op.binary.f32(i32 35, float %1140, float %1141)  ; FMax(a,b)
  %1143 = call float @dx.op.binary.f32(i32 36, float %1140, float %1141)  ; FMin(a,b)
  %1144 = fcmp fast ogt float %1057, %1143
  br i1 %1144, label %1145, label %1155

; <label>:1145                                    ; preds = %1082
  %1146 = fsub fast float %1057, %1143
  %1147 = fsub fast float %1142, %1143
  %1148 = fmul fast float %1146, %1147
  %1149 = fmul fast float %1142, %1057
  %1150 = fadd fast float %1142, %1057
  %1151 = fmul fast float %1150, %1097
  %1152 = fadd fast float %1149, %1098
  %1153 = fsub fast float %1152, %1151
  %1154 = fdiv fast float %1153, %1148
  br label %1155

; <label>:1155                                    ; preds = %1145, %1082
  %1156 = phi float [ %1154, %1145 ], [ 0.000000e+00, %1082 ]
  %1157 = fcmp fast ogt float %1057, %1142
  %1158 = fsub fast float %1057, %1142
  br i1 %1157, label %1159, label %1169

; <label>:1159                                    ; preds = %1155
  %1160 = fsub fast float %1142, %1143
  %1161 = fmul fast float %1160, %1158
  %1162 = fmul fast float %1143, %1057
  %1163 = fadd fast float %1143, %1057
  %1164 = fmul fast float %1163, %1097
  %1165 = fsub fast float %1099, %1162
  %1166 = fadd fast float %1165, %1164
  %1167 = fdiv fast float %1166, %1161
  %1168 = fadd fast float %1167, %1156
  br label %1169

; <label>:1169                                    ; preds = %1159, %1155
  %1170 = phi float [ %1168, %1159 ], [ %1156, %1155 ]
  %1171 = fsub fast float %1057, %1143
  %1172 = fmul fast float %1171, %1158
  %1173 = fmul fast float %1143, %1142
  %1174 = fadd fast float %1143, %1142
  %1175 = fmul fast float %1174, %1097
  %1176 = fadd fast float %1173, %1098
  %1177 = fsub fast float %1176, %1175
  %1178 = fdiv fast float %1177, %1172
  %1179 = call float @dx.op.unary.f32(i32 7, float %1170)  ; Saturate(value)
  %1180 = fcmp fast oeq float %887, 0.000000e+00
  %1181 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1182 = fcmp fast oeq float %1181, 0.000000e+00
  %1183 = or i1 %1180, %1182
  %1184 = fmul fast float %1181, 2.000000e+00
  %1185 = fadd fast float %1046, %1047
  %1186 = fdiv fast float %1185, %1184
  %1187 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1188 = fmul fast float %1187, 2.000000e+00
  %1189 = fsub fast float 3.000000e+00, %1188
  %1190 = fmul fast float %1187, %1187
  %1191 = fmul fast float %1190, %1189
  %1192 = select i1 %1183, float 1.000000e+00, float %1191
  %1193 = fmul fast float %1178, %887
  %1194 = fadd fast float %1179, %1193
  %1195 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1196 = fmul fast float %1192, %1195
  br label %1197

; <label>:1197                                    ; preds = %1169, %1050
  %1198 = phi float [ %1196, %1169 ], [ 0.000000e+00, %1050 ]
  %1199 = fsub fast float 1.000000e+00, %1198
  %1200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %998, float %999, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.i32 %1202, 2
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1210, label %1205

; <label>:1205                                    ; preds = %1197
  %1206 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1207 = fadd fast float %1201, -1.000000e+00
  %1208 = fmul fast float %1206, %1207
  %1209 = fadd fast float %1208, 1.000000e+00
  br label %1210

; <label>:1210                                    ; preds = %1205, %1197
  %1211 = phi float [ %1209, %1205 ], [ %1199, %1197 ]
  %1212 = call float @dx.op.binary.f32(i32 35, float %1201, float %1211)  ; FMax(a,b)
  %1213 = fmul fast float %1212, %983
  %1214 = call float @dx.op.dot3.f32(i32 55, float %1212, float %1212, float %1212, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1215 = select i1 %111, float %1214, float %1212
  %1216 = select i1 %111, float 1.000000e+00, float %1212
  %1217 = fmul fast float %1215, %988
  %1218 = fmul fast float %1215, %989
  %1219 = fmul fast float %1216, %990
  br label %1220

; <label>:1220                                    ; preds = %1210, %994, %978, %972
  %1221 = phi float [ %974, %972 ], [ %988, %978 ], [ %1217, %1210 ], [ %988, %994 ]
  %1222 = phi float [ %975, %972 ], [ %989, %978 ], [ %1218, %1210 ], [ %989, %994 ]
  %1223 = phi float [ %976, %972 ], [ %990, %978 ], [ %1219, %1210 ], [ %990, %994 ]
  %1224 = phi float [ %977, %972 ], [ %983, %978 ], [ %1213, %1210 ], [ %983, %994 ]
  %1225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1225, 2
  %1227 = extractvalue %dx.types.CBufRet.f32 %1225, 3
  %1228 = fmul fast float %1226, %52
  %1229 = fmul fast float %1227, %53
  %1230 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1231 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  %1232 = select i1 %753, i32 2, i32 0
  %1233 = or i32 %1232, 1
  %1234 = uitofp i32 %1233 to float
  %1235 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1230, float %1231, float %1234, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = extractvalue %dx.types.ResRet.f32 %1235, 1
  %1238 = extractvalue %dx.types.ResRet.f32 %1235, 2
  %1239 = extractvalue %dx.types.ResRet.f32 %1235, 3
  %1240 = add nuw nsw i32 %1232, 2
  %1241 = uitofp i32 %1240 to float
  %1242 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1230, float %1231, float %1241, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.ResRet.f32 %1242, 1
  %1245 = extractvalue %dx.types.ResRet.f32 %1242, 2
  %1246 = extractvalue %dx.types.ResRet.f32 %1242, 3
  %1247 = call float @dx.op.binary.f32(i32 35, float %1237, float %1238)  ; FMax(a,b)
  %1248 = call float @dx.op.binary.f32(i32 35, float %1236, float %1247)  ; FMax(a,b)
  %1249 = call float @dx.op.binary.f32(i32 35, float %1248, float %1239)  ; FMax(a,b)
  %1250 = call float @dx.op.binary.f32(i32 36, float %1244, float %1245)  ; FMin(a,b)
  %1251 = call float @dx.op.binary.f32(i32 36, float %1243, float %1250)  ; FMin(a,b)
  %1252 = call float @dx.op.binary.f32(i32 36, float %1251, float %1246)  ; FMin(a,b)
  %1253 = fmul fast float %1249, 2.550000e+02
  %1254 = fadd fast float %1253, 0x3F70101020000000
  %1255 = fptoui float %1254 to i32
  %1256 = fmul fast float %1252, 2.550000e+02
  %1257 = fadd fast float %1256, 0x3F70101020000000
  %1258 = fptoui float %1257 to i32
  %1259 = icmp ult i32 %1255, %1258
  br i1 %1259, label %1260, label %1303

; <label>:1260                                    ; preds = %1220
  %1261 = fcmp fast ogt float %46, 9.843750e-01
  %1262 = fadd fast float %973, -4.000000e+00
  %1263 = select i1 %1261, float -4.000000e+00, float %1262
  %1264 = call float @dx.op.binary.f32(i32 35, float %1263, float 0.000000e+00)  ; FMax(a,b)
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1267 = fadd fast float %1266, %1264
  %1268 = extractvalue %dx.types.CBufRet.f32 %1265, 2
  %1269 = fmul fast float %1267, %1268
  %1270 = call float @dx.op.unary.f32(i32 23, float %1269)  ; Log(value)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1265, 3
  %1272 = fmul fast float %1271, %1270
  %1273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1274 = extractvalue %dx.types.CBufRet.f32 %1273, 2
  %1275 = fmul fast float %1272, %1274
  %1276 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  %1277 = uitofp i32 %1255 to float
  %1278 = uitofp i32 %1258 to float
  %1279 = fadd fast float %1277, 5.000000e-01
  %1280 = fadd fast float %1278, 5.000000e-01
  %1281 = fmul fast float %1274, %1279
  %1282 = fmul fast float %1274, %1280
  %1283 = fadd fast float %1281, 0x3F0FFB4800000000
  %1284 = fadd fast float %1282, 0xBF0FFB4800000000
  %1285 = call float @dx.op.binary.f32(i32 35, float %1276, float %1283)  ; FMax(a,b)
  %1286 = call float @dx.op.binary.f32(i32 36, float %1285, float %1284)  ; FMin(a,b)
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 1
  %1289 = extractvalue %dx.types.CBufRet.f32 %1287, 2
  %1290 = extractvalue %dx.types.CBufRet.f32 %1287, 0
  %1291 = select i1 %753, float %1290, float 0.000000e+00
  %1292 = fmul fast float %1288, %1286
  %1293 = fadd fast float %1291, %1292
  %1294 = fadd fast float %1291, %1289
  %1295 = fsub fast float %1288, %1289
  %1296 = fadd fast float %1295, %1291
  %1297 = call float @dx.op.binary.f32(i32 35, float %1293, float %1294)  ; FMax(a,b)
  %1298 = call float @dx.op.binary.f32(i32 36, float %1297, float %1296)  ; FMin(a,b)
  %1299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1230, float %1231, float %1298, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.ResRet.f32 %1299, 2
  br label %1303

; <label>:1303                                    ; preds = %1260, %1220
  %1304 = phi float [ %1300, %1260 ], [ 1.000000e+00, %1220 ]
  %1305 = phi float [ %1301, %1260 ], [ 1.000000e+00, %1220 ]
  %1306 = phi float [ %1302, %1260 ], [ 1.000000e+00, %1220 ]
  %1307 = fmul fast float %1304, %1224
  %1308 = call float @dx.op.dot3.f32(i32 55, float %1304, float %1305, float %1306, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1309 = select i1 %111, float %1308, float %1304
  %1310 = select i1 %111, float %1308, float %1305
  %1311 = select i1 %111, float 1.000000e+00, float %1306
  %1312 = fmul fast float %1309, %1221
  %1313 = fmul fast float %1310, %1222
  %1314 = fmul fast float %1311, %1223
  %1315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.i32 %1315, 3
  %1317 = and i32 %1316, 3
  %1318 = icmp ne i32 %1317, 0
  %1319 = and i32 %1316, 4
  %1320 = icmp ne i32 %1319, 0
  %1321 = and i1 %1318, %1320
  %1322 = and i1 %111, %1321
  br i1 %1322, label %1323, label %1329

; <label>:1323                                    ; preds = %1303
  %1324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1324, 1
  %1326 = fadd fast float %1307, -1.000000e+00
  %1327 = fmul fast float %1325, %1326
  %1328 = fadd fast float %1327, 1.000000e+00
  br label %1329

; <label>:1329                                    ; preds = %1323, %1303
  %1330 = phi float [ %1328, %1323 ], [ %1307, %1303 ]
  %1331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1332 = extractvalue %dx.types.CBufRet.f32 %1331, 0
  br i1 %111, label %1333, label %1353

; <label>:1333                                    ; preds = %1329
  %1334 = fadd fast float %1312, %1313
  %1335 = fmul fast float %1332, %1334
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 3
  %1338 = extractvalue %dx.types.CBufRet.f32 %776, 1
  %1339 = fsub fast float %779, %1338
  %1340 = extractvalue %dx.types.CBufRet.f32 %776, 2
  %1341 = fmul fast float %1339, %1340
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1343 = fsub fast float %1342, %1337
  %1344 = fmul fast float %1343, %1330
  %1345 = fadd fast float %1344, %1337
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 0
  %1348 = fsub fast float %1345, %1347
  %1349 = fmul fast float %1348, 1.000000e+01
  %1350 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1351 = fmul fast float %1350, %729
  %1352 = fmul fast float %1345, %1351
  br label %1362

; <label>:1353                                    ; preds = %1329
  %1354 = fmul fast float %1332, %1312
  %1355 = fmul fast float %1332, %1313
  %1356 = fmul fast float %1314, %1332
  %1357 = call float @dx.op.binary.f32(i32 35, float %1355, float %1356)  ; FMax(a,b)
  %1358 = call float @dx.op.binary.f32(i32 35, float %1354, float %1357)  ; FMax(a,b)
  %1359 = call float @dx.op.binary.f32(i32 35, float %1358, float 0.000000e+00)  ; FMax(a,b)
  %1360 = fcmp fast ugt float %1359, 0x3F10000000000000
  br i1 %1360, label %1362, label %1361

; <label>:1361                                    ; preds = %1353
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1362

; <label>:1362                                    ; preds = %1361, %1353, %1333
  %1363 = phi float [ %1335, %1333 ], [ %1354, %1361 ], [ %1354, %1353 ]
  %1364 = phi float [ %1352, %1333 ], [ %1355, %1361 ], [ %1355, %1353 ]
  %1365 = phi float [ %1351, %1333 ], [ %1356, %1361 ], [ %1356, %1353 ]
  %1366 = phi float [ %1351, %1333 ], [ 0.000000e+00, %1361 ], [ 0.000000e+00, %1353 ]
  %1367 = fadd fast float %524, 0x3FE3C6EF40000000
  %1368 = call float @dx.op.unary.f32(i32 22, float %1367)  ; Frc(value)
  %1369 = call float @dx.op.unary.f32(i32 23, float %1363)  ; Log(value)
  %1370 = fadd fast float %1369, -7.000000e+00
  %1371 = call float @dx.op.unary.f32(i32 21, float %1370)  ; Exp(value)
  %1372 = fmul fast float %1368, 2.000000e+00
  %1373 = fadd fast float %1372, -1.000000e+00
  %1374 = fmul fast float %1371, %1373
  %1375 = fcmp fast ogt float %1363, 0.000000e+00
  %1376 = select i1 %1375, float %1374, float 0.000000e+00
  %1377 = fadd fast float %1376, %1363
  %1378 = fadd fast float %524, 0x3FF3C6EF40000000
  %1379 = call float @dx.op.unary.f32(i32 22, float %1378)  ; Frc(value)
  %1380 = call float @dx.op.unary.f32(i32 23, float %1364)  ; Log(value)
  %1381 = fadd fast float %1380, -7.000000e+00
  %1382 = call float @dx.op.unary.f32(i32 21, float %1381)  ; Exp(value)
  %1383 = fmul fast float %1379, 2.000000e+00
  %1384 = fadd fast float %1383, -1.000000e+00
  %1385 = fmul fast float %1382, %1384
  %1386 = fcmp fast ogt float %1364, 0.000000e+00
  %1387 = select i1 %1386, float %1385, float 0.000000e+00
  %1388 = fadd fast float %1387, %1364
  %1389 = fadd fast float %524, 0x3FFDAA66E0000000
  %1390 = call float @dx.op.unary.f32(i32 22, float %1389)  ; Frc(value)
  %1391 = call float @dx.op.unary.f32(i32 23, float %1365)  ; Log(value)
  %1392 = fadd fast float %1391, -6.000000e+00
  %1393 = call float @dx.op.unary.f32(i32 21, float %1392)  ; Exp(value)
  %1394 = fmul fast float %1390, 2.000000e+00
  %1395 = fadd fast float %1394, -1.000000e+00
  %1396 = fmul fast float %1393, %1395
  %1397 = fcmp fast ogt float %1365, 0.000000e+00
  %1398 = select i1 %1397, float %1396, float 0.000000e+00
  %1399 = fadd fast float %1398, %1365
  %1400 = select i1 %111, float %1364, float %1388
  %1401 = select i1 %111, float %1365, float %1399
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1402 = call float @dx.op.binary.f32(i32 36, float %1377, float 3.225500e+04)  ; FMin(a,b)
  %1403 = call float @dx.op.binary.f32(i32 36, float %1400, float 3.225500e+04)  ; FMin(a,b)
  %1404 = call float @dx.op.binary.f32(i32 36, float %1401, float 3.225500e+04)  ; FMin(a,b)
  %1405 = call float @dx.op.binary.f32(i32 36, float %1366, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1402)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1403)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1404)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1405)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1366)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1366)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1366)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1366)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !60}
!35 = !{!36, !56, null}
!36 = !{!37, !40, !42, !44, !47, !49, !51, !53, !54, !55}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 8}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 1, i32 1, i8 4, i32 3, i8 0, !46}
!45 = !{i32 2}
!46 = !{i32 3, i32 7}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 4, i8 0, !39}
!48 = !{i32 3}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 3, i32 1, i8 2, i32 5, i8 0, !43}
!50 = !{i32 5}
!51 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, !39}
!52 = !{i32 8}
!53 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 7, i8 0, !39}
!54 = !{i32 8, !"COLOR", i8 5, i8 0, !48, i8 1, i32 1, i8 3, i32 8, i8 0, !46}
!55 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!56 = !{!57, !58}
!57 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!58 = !{i32 1, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
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

