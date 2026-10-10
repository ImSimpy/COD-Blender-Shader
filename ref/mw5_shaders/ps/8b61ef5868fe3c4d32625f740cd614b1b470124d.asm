;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xyzw        2     NONE   float   xyzw
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 4   xyzw        4     NONE   float   xy  
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
; shader hash: e95ce121e606d0d814277a6272470e53
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
; TEXCOORD                 4                 linear       
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 26, 27, 28, 29, 30, 31, 32, 34 }
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
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.i32 %91, 3
  %93 = and i32 %92, 3
  %94 = icmp ne i32 %93, 0
  %95 = and i32 %92, 4
  %96 = icmp ne i32 %95, 0
  %97 = and i1 %94, %96
  br i1 %97, label %98, label %109

; <label>:98                                      ; preds = %0
  %99 = extractvalue %dx.types.CBufRet.f32 %90, 3
  %100 = fmul fast float %99, %53
  %101 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %102 = fmul fast float %101, %52
  %103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %102, float %100, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %104 = extractvalue %dx.types.ResRet.f32 %103, 0
  %105 = fsub fast float 1.000000e+00, %104
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = fcmp fast olt float %105, %107
  br label %112

; <label>:109                                     ; preds = %0
  %110 = icmp eq i32 %95, 0
  %111 = and i1 %94, %110
  br label %112

; <label>:112                                     ; preds = %109, %98
  %113 = phi i1 [ %108, %98 ], [ %111, %109 ]
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 3
  %117 = fmul fast float %115, %52
  %118 = fmul fast float %116, %53
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = and i32 %120, 114688
  %122 = icmp ne i32 %121, 0
  %123 = select i1 %122, float %117, float 0.000000e+00
  %124 = select i1 %122, float %118, float 0.000000e+00
  %125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %123, float %124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = fmul fast float %126, 2.550000e+02
  %128 = fptoui float %127 to i32
  %129 = select i1 %122, i32 %128, i32 0
  %130 = mul i32 %21, 208
  %131 = add i32 %130, 188
  %132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %133 = extractvalue %dx.types.ResRet.i32 %132, 0
  %134 = and i32 %92, 114688
  %135 = and i32 %92, 8
  %136 = icmp ne i32 %135, 0
  %137 = or i1 %113, %136
  %138 = select i1 %137, i32 %134, i32 16384
  %139 = and i32 %138, %133
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

; <label>:141                                     ; preds = %112
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %142

; <label>:142                                     ; preds = %141, %112
  %143 = and i32 %133, 512
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %169, label %145

; <label>:145                                     ; preds = %142
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %149 = fmul fast float %147, %52
  %150 = fmul fast float %148, %53
  %151 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %152 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %153 = fdiv fast float %151, %152
  %154 = fcmp fast ogt float %153, 0x3FFC71C720000000
  br i1 %154, label %155, label %161

; <label>:155                                     ; preds = %145
  %156 = fdiv fast float 0x3FFC71C720000000, %153
  %157 = fmul fast float %156, %150
  %158 = fsub fast float 1.000000e+00, %156
  %159 = fmul fast float %158, 5.000000e-01
  %160 = fadd fast float %159, %157
  br label %169

; <label>:161                                     ; preds = %145
  %162 = fcmp fast olt float %153, 0x3FFC71C720000000
  br i1 %162, label %163, label %169

; <label>:163                                     ; preds = %161
  %164 = fmul fast float %149, 5.625000e-01
  %165 = fmul fast float %164, %153
  %166 = fmul fast float %153, 2.812500e-01
  %167 = fsub fast float 5.000000e-01, %166
  %168 = fadd fast float %167, %165
  br label %169

; <label>:169                                     ; preds = %163, %161, %155, %142
  %170 = phi float [ %39, %142 ], [ %149, %155 ], [ %168, %163 ], [ %149, %161 ]
  %171 = phi float [ %40, %142 ], [ %160, %155 ], [ %150, %163 ], [ %150, %161 ]
  %172 = and i32 %133, 16
  %173 = icmp ne i32 %172, 0
  %174 = select i1 %173, float 1.000000e+00, float %43
  %175 = icmp eq i32 %172, 0
  br i1 %175, label %195, label %176, !dx.controlflow.hints !61

; <label>:176                                     ; preds = %169
  %177 = add i32 %130, 64
  %178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = fadd fast float %179, 1.000000e+00
  %181 = fmul fast float %180, %43
  %182 = fsub fast float %181, %179
  %183 = fsub fast float %180, %182
  %184 = call float @dx.op.unary.f32(i32 7, float %183)  ; Saturate(value)
  %185 = fsub fast float 1.000000e+00, %181
  %186 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %187 = fsub fast float %184, %186
  %188 = fsub fast float %174, %186
  %189 = fdiv fast float %188, %187
  %190 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  %191 = fmul fast float %190, 2.000000e+00
  %192 = fsub fast float 3.000000e+00, %191
  %193 = fmul fast float %190, %190
  %194 = fmul fast float %193, %192
  br label %195

; <label>:195                                     ; preds = %176, %169
  %196 = phi float [ %194, %176 ], [ %174, %169 ]
  %197 = and i32 %133, 1024
  %198 = icmp eq i32 %197, 0
  %199 = add i32 %22, 76
  br i1 %198, label %232, label %200, !dx.controlflow.hints !62

; <label>:200                                     ; preds = %195
  %201 = add i32 %130, 48
  %202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = extractvalue %dx.types.ResRet.f32 %202, 1
  %205 = fadd fast float %41, -5.000000e-01
  %206 = fmul fast float %205, 2.000000e+00
  %207 = fmul fast float %33, %206
  %208 = fmul fast float %34, %206
  %209 = fmul fast float %207, %204
  %210 = fmul fast float %208, %204
  %211 = call float @dx.op.dot2.f32(i32 54, float %33, float %34, float %33, float %34)  ; Dot2(ax,ay,bx,by)
  %212 = call float @dx.op.unary.f32(i32 25, float %211)  ; Rsqrt(value)
  %213 = fmul fast float %209, %212
  %214 = fmul fast float %210, %212
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %217 = extractvalue %dx.types.CBufRet.f32 %215, 1
  %218 = fsub fast float %87, %209
  %219 = fadd fast float %218, %216
  %220 = fadd fast float %219, %213
  %221 = fsub fast float %88, %210
  %222 = fadd fast float %221, %217
  %223 = fadd fast float %222, %214
  %224 = fmul fast float %220, %203
  %225 = fmul fast float %223, %203
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = add i32 %227, 0
  %229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %228, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %230 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %229, %dx.types.Handle %49, float %225, float %224, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  br label %239

; <label>:232                                     ; preds = %195
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = add i32 %234, 0
  %236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %236, %dx.types.Handle %49, float %41, float %42, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  br label %239

; <label>:239                                     ; preds = %232, %200
  %240 = phi float [ %231, %200 ], [ %238, %232 ]
  %241 = fmul fast float %240, %196
  %242 = fcmp fast ogt float %241, 0.000000e+00
  br i1 %242, label %244, label %243

; <label>:243                                     ; preds = %239
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %244

; <label>:244                                     ; preds = %243, %239
  %245 = call float @dx.op.unary.f32(i32 7, float %241)  ; Saturate(value)
  %246 = fmul fast float %52, 5.000000e-01
  %247 = fmul fast float %53, 5.000000e-01
  %248 = fptosi float %246 to i32
  %249 = fptosi float %247 to i32
  %250 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %248, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = lshr i32 %251, 18
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F4C00EBA0000000
  %255 = call float @dx.op.unary.f32(i32 21, float %254)  ; Exp(value)
  %256 = fadd fast float %255, -1.000000e+00
  %257 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %258 = extractvalue %dx.types.Dimensions %257, 0
  %259 = sitofp i32 %258 to float
  %260 = extractvalue %dx.types.Dimensions %257, 1
  %261 = sitofp i32 %260 to float
  %262 = fcmp fast oge float %246, %259
  %263 = fcmp fast oge float %247, %261
  %264 = or i1 %262, %263
  %265 = select i1 %264, float 0x4197782600000000, float %256
  %266 = fsub fast float %265, %47
  %267 = fcmp fast ogt float %266, 0.000000e+00
  %268 = and i32 %129, -2
  %269 = icmp eq i32 %268, 2
  %270 = and i1 %269, %267
  %271 = xor i1 %267, true
  %272 = icmp eq i32 %129, 1
  %273 = and i1 %272, %271
  %274 = or i1 %270, %273
  %275 = and i32 %133, 262144
  %276 = icmp ne i32 %275, 0
  %277 = and i1 %276, %274
  %278 = xor i1 %274, true
  %279 = and i32 %133, 131072
  %280 = icmp ne i32 %279, 0
  %281 = and i1 %280, %278
  %282 = or i1 %277, %281
  br i1 %282, label %283, label %284

; <label>:283                                     ; preds = %244
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %284

; <label>:284                                     ; preds = %283, %244
  %285 = and i32 %133, 32
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %536, label %287, !dx.controlflow.hints !63

; <label>:287                                     ; preds = %284
  %288 = add i32 %130, 80
  %289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = extractvalue %dx.types.ResRet.f32 %289, 2
  %293 = extractvalue %dx.types.ResRet.f32 %289, 3
  %294 = add i32 %130, 96
  %295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = extractvalue %dx.types.ResRet.f32 %295, 1
  %298 = extractvalue %dx.types.ResRet.f32 %295, 2
  %299 = add i32 %130, 112
  %300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = extractvalue %dx.types.ResRet.f32 %300, 1
  %303 = extractvalue %dx.types.ResRet.f32 %300, 2
  %304 = extractvalue %dx.types.ResRet.f32 %300, 3
  %305 = add i32 %130, 128
  %306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = extractvalue %dx.types.ResRet.f32 %306, 1
  %309 = extractvalue %dx.types.ResRet.f32 %306, 2
  %310 = extractvalue %dx.types.ResRet.f32 %306, 3
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 4096
  %314 = icmp ne i32 %313, 0
  %315 = fcmp fast une float %298, 0.000000e+00
  %316 = and i32 %312, 64
  %317 = icmp ne i32 %316, 0
  %318 = and i32 %312, 128
  %319 = icmp eq i32 %318, 0
  %320 = and i32 %312, 2048
  %321 = icmp eq i32 %320, 0
  %322 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %323 = extractvalue %dx.types.Dimensions %322, 0
  %324 = sitofp i32 %323 to float
  %325 = extractvalue %dx.types.Dimensions %322, 1
  %326 = sitofp i32 %325 to float
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 3
  %330 = fmul fast float %328, %52
  %331 = fmul fast float %329, %53
  %332 = fmul fast float %330, %324
  %333 = fmul fast float %331, %326
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %336 = fsub fast float -0.000000e+00, %335
  %337 = fptoui float %336 to i32
  %338 = fptoui float %332 to i32
  %339 = fptoui float %333 to i32
  %340 = and i32 %337, 31
  %341 = lshr i32 %338, %340
  %342 = lshr i32 %339, %340
  %343 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %337, i32 %341, i32 %342, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %344 = extractvalue %dx.types.ResRet.f32 %343, 0
  %345 = fcmp fast ogt float %344, -1.000000e+00
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 1
  %348 = select i1 %345, float %347, float 1.000000e+00
  %349 = fadd fast float %344, 1.000000e+00
  %350 = fmul fast float %348, %349
  %351 = call float @dx.op.unary.f32(i32 6, float %350)  ; FAbs(value)
  %352 = extractvalue %dx.types.CBufRet.f32 %346, 3
  %353 = fcmp fast oge float %351, %352
  %354 = select i1 %353, float 0x4197782600000000, float %351
  br i1 %321, label %432, label %355, !dx.controlflow.hints !64

; <label>:355                                     ; preds = %287
  %356 = fmul fast float %57, %328
  %357 = fmul fast float %59, %329
  %358 = fsub fast float 1.000000e+00, %356
  %359 = fsub fast float 1.000000e+00, %357
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = fmul fast float %358, %361
  %365 = fmul fast float %358, %362
  %366 = fmul fast float %358, %363
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %371 = fmul fast float %359, %368
  %372 = fmul fast float %359, %369
  %373 = fmul fast float %359, %370
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.f32 %374, 0
  %376 = extractvalue %dx.types.CBufRet.f32 %374, 1
  %377 = extractvalue %dx.types.CBufRet.f32 %374, 2
  %378 = fadd fast float %371, %375
  %379 = fadd fast float %378, %364
  %380 = fadd fast float %372, %376
  %381 = fadd fast float %380, %365
  %382 = fadd fast float %373, %377
  %383 = fadd fast float %382, %366
  %384 = fmul fast float %379, %354
  %385 = fmul fast float %381, %354
  %386 = fmul fast float %383, %354
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 0
  %389 = extractvalue %dx.types.CBufRet.f32 %387, 1
  %390 = extractvalue %dx.types.CBufRet.f32 %387, 2
  %391 = fsub fast float %388, %23
  %392 = fadd fast float %391, %384
  %393 = fsub fast float %389, %24
  %394 = fadd fast float %393, %385
  %395 = fsub fast float %390, %25
  %396 = fadd fast float %395, %386
  %397 = fmul fast float %26, %26
  %398 = call float @dx.op.dot3.f32(i32 55, float %392, float %394, float %396, float %392, float %394, float %396)  ; Dot3(ax,ay,az,bx,by,bz)
  %399 = fsub fast float %397, %398
  %400 = fmul fast float %297, %397
  %401 = fmul fast float %296, %397
  %402 = fcmp fast olt float %399, %400
  %403 = fcmp fast ogt float %399, %401
  %404 = or i1 %402, %403
  %405 = select i1 %404, float 0.000000e+00, float %399
  %406 = fsub fast float %296, %297
  %407 = fmul fast float %406, %397
  %408 = fsub fast float %405, %400
  %409 = fdiv fast float %408, %407
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %411 = fmul fast float %410, 2.000000e+00
  %412 = fsub fast float 3.000000e+00, %411
  %413 = fmul fast float %410, %410
  %414 = fmul fast float %413, %412
  %415 = fsub fast float %304, %310
  %416 = fmul fast float %414, %415
  %417 = fadd fast float %416, %310
  %418 = fmul fast float %301, %27
  %419 = fmul fast float %302, %28
  %420 = fmul fast float %303, %29
  %421 = fsub fast float %418, %307
  %422 = fsub fast float %419, %308
  %423 = fsub fast float %420, %309
  %424 = fmul fast float %414, %421
  %425 = fmul fast float %414, %422
  %426 = fmul fast float %414, %423
  %427 = fadd fast float %424, %307
  %428 = fadd fast float %425, %308
  %429 = fadd fast float %426, %309
  %430 = fmul fast float %290, %290
  %431 = fmul fast float %430, %405
  br label %527

; <label>:432                                     ; preds = %287
  %433 = and i32 %312, 256
  %434 = icmp eq i32 %433, 0
  %435 = fsub fast float %354, %47
  br i1 %434, label %484, label %436

; <label>:436                                     ; preds = %432
  %437 = fadd fast float %296, %47
  %438 = fcmp fast olt float %354, %47
  %439 = fcmp fast ogt float %354, %437
  %440 = or i1 %438, %439
  %441 = select i1 %440, float 0.000000e+00, float %435
  %442 = call float @dx.op.unary.f32(i32 83, float %354)  ; DerivCoarseX(value)
  %443 = call float @dx.op.unary.f32(i32 84, float %354)  ; DerivCoarseY(value)
  %444 = fmul fast float %442, %442
  %445 = fmul fast float %443, %443
  %446 = fadd fast float %445, %444
  %447 = call float @dx.op.unary.f32(i32 24, float %446)  ; Sqrt(value)
  %448 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %449 = fmul fast float %448, %447
  %450 = call float @dx.op.unary.f32(i32 7, float %449)  ; Saturate(value)
  %451 = fmul fast float %450, %297
  %452 = fdiv fast float %435, %451
  %453 = call float @dx.op.unary.f32(i32 7, float %452)  ; Saturate(value)
  %454 = fmul fast float %453, 2.000000e+00
  %455 = fsub fast float 3.000000e+00, %454
  %456 = fmul fast float %453, %453
  %457 = fmul fast float %456, %455
  %458 = fsub fast float %354, %437
  %459 = fadd fast float %458, %451
  %460 = fdiv fast float %459, %451
  %461 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %462 = fmul fast float %461, 2.000000e+00
  %463 = fsub fast float 3.000000e+00, %462
  %464 = fmul fast float %461, %461
  %465 = fmul fast float %464, %463
  %466 = fsub fast float %457, %465
  %467 = fsub fast float %304, %310
  %468 = fmul fast float %466, %467
  %469 = fadd fast float %468, %310
  %470 = fmul fast float %301, %27
  %471 = fmul fast float %302, %28
  %472 = fmul fast float %303, %29
  %473 = fsub fast float %470, %307
  %474 = fsub fast float %471, %308
  %475 = fsub fast float %472, %309
  %476 = fmul fast float %466, %473
  %477 = fmul fast float %466, %474
  %478 = fmul fast float %466, %475
  %479 = fadd fast float %476, %307
  %480 = fadd fast float %477, %308
  %481 = fadd fast float %478, %309
  %482 = fmul fast float %441, %290
  %483 = call float @dx.op.unary.f32(i32 6, float %482)  ; FAbs(value)
  br label %527

; <label>:484                                     ; preds = %432
  br i1 %315, label %485, label %498

; <label>:485                                     ; preds = %484
  %486 = fdiv fast float 5.000000e+01, %26
  %487 = select i1 %317, float %486, float 1.000000e+00
  %488 = fmul fast float %487, %290
  %489 = fmul fast float %39, 2.000000e+00
  %490 = fmul fast float %40, 2.000000e+00
  %491 = fadd fast float %489, -1.000000e+00
  %492 = fadd fast float %490, -1.000000e+00
  %493 = call float @dx.op.dot2.f32(i32 54, float %491, float %492, float %491, float %492)  ; Dot2(ax,ay,bx,by)
  %494 = fmul fast float %298, %26
  %495 = fmul fast float %494, %493
  %496 = fsub fast float %435, %495
  %497 = fmul fast float %488, %496
  br label %527

; <label>:498                                     ; preds = %484
  br i1 %319, label %519, label %499

; <label>:499                                     ; preds = %498
  %500 = fmul fast float %26, 0x3F947AE140000000
  %501 = select i1 %317, float %500, float 1.000000e+00
  %502 = fdiv fast float 1.000000e+00, %501
  %503 = fmul fast float %501, %291
  %504 = fmul fast float %501, %292
  %505 = fmul fast float %502, %293
  %506 = call float @dx.op.unary.f32(i32 6, float %435)  ; FAbs(value)
  %507 = fcmp fast olt float %506, %503
  br i1 %507, label %508, label %512, !dx.controlflow.hints !65

; <label>:508                                     ; preds = %499
  %509 = fmul fast float %502, %290
  %510 = fmul fast float %509, %506
  %511 = call float @dx.op.unary.f32(i32 6, float %510)  ; FAbs(value)
  br label %527

; <label>:512                                     ; preds = %499
  %513 = fcmp fast ogt float %506, %504
  br i1 %513, label %514, label %527

; <label>:514                                     ; preds = %512
  %515 = fsub fast float %506, %504
  %516 = fmul fast float %505, %515
  %517 = call float @dx.op.unary.f32(i32 6, float %516)  ; FAbs(value)
  %518 = fsub fast float 1.000000e+00, %517
  br label %527

; <label>:519                                     ; preds = %498
  %520 = fdiv fast float 5.000000e+01, %26
  %521 = select i1 %317, float %520, float 1.000000e+00
  %522 = fmul fast float %521, %290
  %523 = call float @dx.op.unary.f32(i32 6, float %266)  ; FAbs(value)
  %524 = select i1 %314, float %523, float 0x47EFFFFFE0000000
  %525 = call float @dx.op.binary.f32(i32 36, float %435, float %524)  ; FMin(a,b)
  %526 = fmul fast float %522, %525
  br label %527

; <label>:527                                     ; preds = %519, %514, %512, %508, %485, %436, %355
  %528 = phi float [ %431, %355 ], [ %483, %436 ], [ %497, %485 ], [ %526, %519 ], [ %511, %508 ], [ %518, %514 ], [ %506, %512 ]
  %529 = phi float [ %427, %355 ], [ %479, %436 ], [ %27, %485 ], [ %27, %519 ], [ %27, %508 ], [ %27, %514 ], [ %27, %512 ]
  %530 = phi float [ %428, %355 ], [ %480, %436 ], [ %28, %485 ], [ %28, %519 ], [ %28, %508 ], [ %28, %514 ], [ %28, %512 ]
  %531 = phi float [ %429, %355 ], [ %481, %436 ], [ %29, %485 ], [ %29, %519 ], [ %29, %508 ], [ %29, %514 ], [ %29, %512 ]
  %532 = phi float [ %417, %355 ], [ %469, %436 ], [ 1.000000e+00, %485 ], [ 1.000000e+00, %519 ], [ 1.000000e+00, %508 ], [ 1.000000e+00, %514 ], [ 1.000000e+00, %512 ]
  %533 = call float @dx.op.unary.f32(i32 7, float %528)  ; Saturate(value)
  %534 = fmul fast float %532, %245
  %535 = fmul fast float %534, %533
  br label %536

; <label>:536                                     ; preds = %527, %284
  %537 = phi float [ %535, %527 ], [ %245, %284 ]
  %538 = phi float [ %529, %527 ], [ %27, %284 ]
  %539 = phi float [ %530, %527 ], [ %28, %284 ]
  %540 = phi float [ %531, %527 ], [ %29, %284 ]
  %541 = fmul fast float %538, %30
  %542 = fmul fast float %539, %30
  %543 = fmul fast float %540, %30
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %546 = fptosi float %47 to i32
  %547 = sitofp i32 %546 to float
  %548 = fadd fast float %545, %547
  %549 = fmul fast float %548, 0x3FE3C6EF40000000
  %550 = frem fast float %52, 2.560000e+02
  %551 = frem fast float %53, 2.560000e+02
  %552 = fptoui float %550 to i32
  %553 = fptoui float %551 to i32
  %554 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %552, i32 %553, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  %556 = fadd fast float %555, %549
  %557 = call float @dx.op.unary.f32(i32 22, float %556)  ; Frc(value)
  %558 = and i32 %133, 1
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %616, label %560, !dx.controlflow.hints !66

; <label>:560                                     ; preds = %536
  %561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 2
  %563 = extractvalue %dx.types.ResRet.f32 %561, 3
  %564 = add i32 %130, 16
  %565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = extractvalue %dx.types.ResRet.f32 %565, 2
  %569 = add i32 %130, 32
  %570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = extractvalue %dx.types.ResRet.f32 %570, 1
  %573 = extractvalue %dx.types.ResRet.f32 %570, 2
  %574 = and i32 %133, 2
  %575 = icmp eq i32 %574, 0
  %576 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %577 = call float @dx.op.unary.f32(i32 25, float %576)  ; Rsqrt(value)
  %578 = fmul fast float %577, %35
  %579 = fmul fast float %577, %36
  %580 = fmul fast float %577, %37
  %581 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %582 = call float @dx.op.unary.f32(i32 25, float %581)  ; Rsqrt(value)
  %583 = fmul fast float %582, %87
  %584 = fmul fast float %582, %88
  %585 = fmul fast float %582, %89
  %586 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %578, float %579, float %580)  ; Dot3(ax,ay,az,bx,by,bz)
  %587 = fmul fast float %586, %586
  %588 = fmul fast float %587, %562
  %589 = fadd fast float %588, %563
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  br i1 %575, label %591, label %601, !dx.controlflow.hints !67

; <label>:591                                     ; preds = %560
  %592 = extractvalue %dx.types.ResRet.f32 %561, 1
  %593 = extractvalue %dx.types.ResRet.f32 %561, 0
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 3
  %596 = fmul fast float %595, %581
  %597 = fsub fast float %593, %596
  %598 = fmul fast float %597, %592
  %599 = call float @dx.op.unary.f32(i32 7, float %598)  ; Saturate(value)
  %600 = fmul fast float %599, %590
  br label %601

; <label>:601                                     ; preds = %591, %560
  %602 = phi float [ %600, %591 ], [ %590, %560 ]
  %603 = fsub fast float %566, %571
  %604 = fsub fast float %567, %572
  %605 = fsub fast float %568, %573
  %606 = fmul fast float %602, %603
  %607 = fmul fast float %602, %604
  %608 = fmul fast float %602, %605
  %609 = fadd fast float %606, %571
  %610 = fadd fast float %607, %572
  %611 = fadd fast float %608, %573
  %612 = fmul fast float %609, %541
  %613 = fmul fast float %610, %542
  %614 = fmul fast float %611, %543
  %615 = fmul fast float %602, %537
  br label %616

; <label>:616                                     ; preds = %601, %536
  %617 = phi float [ %615, %601 ], [ %537, %536 ]
  %618 = phi float [ %612, %601 ], [ %541, %536 ]
  %619 = phi float [ %613, %601 ], [ %542, %536 ]
  %620 = phi float [ %614, %601 ], [ %543, %536 ]
  %621 = add i32 %22, 72
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = add i32 %623, 0
  %625 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %624, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %626 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %625, %dx.types.Handle %48, float %170, float %171, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %627 = extractvalue %dx.types.ResRet.f32 %626, 0
  %628 = extractvalue %dx.types.ResRet.f32 %626, 1
  %629 = extractvalue %dx.types.ResRet.f32 %626, 2
  %630 = add i32 %22, 44
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = shl i32 %632, 4
  %634 = and i32 %633, 32752
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = lshr i32 %632, 7
  %637 = and i32 %636, 32752
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = lshr i32 %632, 22
  %640 = shl nuw nsw i32 %639, 5
  %641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %640)  ; LegacyF16ToF32(value)
  %642 = fmul fast float %635, %627
  %643 = fmul fast float %638, %628
  %644 = fmul fast float %641, %629
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %647 = fmul fast float %642, %646
  %648 = fmul fast float %643, %646
  %649 = fmul fast float %644, %646
  %650 = add i32 %22, 48
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = lshr i32 %652, 22
  %654 = shl nuw nsw i32 %653, 5
  %655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %654)  ; LegacyF16ToF32(value)
  %656 = fmul fast float %655, %647
  %657 = select i1 %113, float %656, float %647
  %658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  %660 = extractvalue %dx.types.ResRet.f32 %658, 1
  %661 = extractvalue %dx.types.ResRet.f32 %658, 2
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 1
  %664 = fmul fast float %657, %618
  %665 = fmul fast float %648, %619
  %666 = fmul fast float %649, %620
  %667 = call float @dx.op.dot3.f32(i32 55, float %664, float %665, float %666, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %668 = select i1 %113, float 0.000000e+00, float %664
  %669 = select i1 %113, float %667, float %665
  %670 = select i1 %113, float 0.000000e+00, float %666
  %671 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %248, i32 %249, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = lshr i32 %672, 18
  %674 = uitofp i32 %673 to float
  %675 = fmul fast float %674, 0x3F4C00EBA0000000
  %676 = call float @dx.op.unary.f32(i32 21, float %675)  ; Exp(value)
  %677 = fadd fast float %676, -1.000000e+00
  %678 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %679 = extractvalue %dx.types.Dimensions %678, 0
  %680 = sitofp i32 %679 to float
  %681 = extractvalue %dx.types.Dimensions %678, 1
  %682 = sitofp i32 %681 to float
  %683 = fcmp fast oge float %246, %680
  %684 = fcmp fast oge float %247, %682
  %685 = or i1 %683, %684
  %686 = select i1 %685, float 0x4197782600000000, float %677
  %687 = icmp eq i32 %129, 3
  %688 = fcmp fast ogt float %47, %686
  %689 = and i1 %272, %688
  %690 = or i1 %687, %689
  %691 = icmp eq i32 %129, 2
  %692 = fcmp fast ole float %47, %686
  %693 = and i1 %691, %692
  %694 = or i1 %693, %690
  %695 = fmul fast float %538, %38
  %696 = fmul fast float %695, %657
  %697 = fmul fast float %696, %659
  %698 = fmul fast float %697, %663
  %699 = fmul fast float %539, %38
  %700 = fmul fast float %699, %648
  %701 = fmul fast float %700, %660
  %702 = fmul fast float %701, %663
  %703 = fmul fast float %540, %38
  %704 = fmul fast float %703, %649
  %705 = fmul fast float %704, %661
  %706 = fmul fast float %705, %663
  %707 = fadd fast float %698, %668
  %708 = fadd fast float %669, %702
  %709 = fadd fast float %706, %670
  %710 = fmul fast float %707, %617
  %711 = fmul fast float %708, %617
  %712 = fmul fast float %709, %617
  %713 = and i32 %133, 1048576
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %806, label %715, !dx.controlflow.hints !68

; <label>:715                                     ; preds = %616
  %716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.f32 %716, 2
  %718 = extractvalue %dx.types.CBufRet.f32 %716, 3
  %719 = fmul fast float %717, %52
  %720 = fmul fast float %718, %53
  %721 = call float @dx.op.unary.f32(i32 7, float %719)  ; Saturate(value)
  %722 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %723 = select i1 %694, i32 2, i32 0
  %724 = or i32 %723, 1
  %725 = uitofp i32 %724 to float
  %726 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %721, float %722, float %725, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  %728 = extractvalue %dx.types.ResRet.f32 %726, 1
  %729 = extractvalue %dx.types.ResRet.f32 %726, 2
  %730 = extractvalue %dx.types.ResRet.f32 %726, 3
  %731 = add nuw nsw i32 %723, 2
  %732 = uitofp i32 %731 to float
  %733 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %721, float %722, float %732, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %734 = extractvalue %dx.types.ResRet.f32 %733, 0
  %735 = extractvalue %dx.types.ResRet.f32 %733, 1
  %736 = extractvalue %dx.types.ResRet.f32 %733, 2
  %737 = extractvalue %dx.types.ResRet.f32 %733, 3
  %738 = call float @dx.op.binary.f32(i32 35, float %728, float %729)  ; FMax(a,b)
  %739 = call float @dx.op.binary.f32(i32 35, float %727, float %738)  ; FMax(a,b)
  %740 = call float @dx.op.binary.f32(i32 35, float %739, float %730)  ; FMax(a,b)
  %741 = call float @dx.op.binary.f32(i32 36, float %735, float %736)  ; FMin(a,b)
  %742 = call float @dx.op.binary.f32(i32 36, float %734, float %741)  ; FMin(a,b)
  %743 = call float @dx.op.binary.f32(i32 36, float %742, float %737)  ; FMin(a,b)
  %744 = fmul fast float %740, 2.550000e+02
  %745 = fadd fast float %744, 0x3F70101020000000
  %746 = fptoui float %745 to i32
  %747 = fmul fast float %743, 2.550000e+02
  %748 = fadd fast float %747, 0x3F70101020000000
  %749 = fptoui float %748 to i32
  %750 = icmp ult i32 %746, %749
  br i1 %750, label %751, label %799

; <label>:751                                     ; preds = %715
  %752 = fcmp fast ogt float %46, 9.843750e-01
  %753 = fadd fast float %47, -4.000000e+00
  %754 = select i1 %752, float -4.000000e+00, float %753
  %755 = call float @dx.op.binary.f32(i32 35, float %754, float 0.000000e+00)  ; FMax(a,b)
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 0
  %758 = fadd fast float %757, %755
  %759 = extractvalue %dx.types.CBufRet.f32 %756, 2
  %760 = fmul fast float %758, %759
  %761 = call float @dx.op.unary.f32(i32 23, float %760)  ; Log(value)
  %762 = extractvalue %dx.types.CBufRet.f32 %756, 3
  %763 = fmul fast float %762, %761
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 2
  %766 = fmul fast float %763, %765
  %767 = call float @dx.op.unary.f32(i32 7, float %766)  ; Saturate(value)
  %768 = uitofp i32 %746 to float
  %769 = uitofp i32 %749 to float
  %770 = fadd fast float %768, 5.000000e-01
  %771 = fadd fast float %769, 5.000000e-01
  %772 = fmul fast float %765, %770
  %773 = fmul fast float %765, %771
  %774 = fadd fast float %772, 0x3F0FFB4800000000
  %775 = fadd fast float %773, 0xBF0FFB4800000000
  %776 = call float @dx.op.binary.f32(i32 35, float %767, float %774)  ; FMax(a,b)
  %777 = call float @dx.op.binary.f32(i32 36, float %776, float %775)  ; FMin(a,b)
  %778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %779 = extractvalue %dx.types.CBufRet.f32 %778, 1
  %780 = extractvalue %dx.types.CBufRet.f32 %778, 2
  %781 = extractvalue %dx.types.CBufRet.f32 %778, 0
  %782 = select i1 %694, float %781, float 0.000000e+00
  %783 = fmul fast float %779, %777
  %784 = fadd fast float %782, %783
  %785 = fadd fast float %782, %780
  %786 = fsub fast float %779, %780
  %787 = fadd fast float %786, %782
  %788 = call float @dx.op.binary.f32(i32 35, float %784, float %785)  ; FMax(a,b)
  %789 = call float @dx.op.binary.f32(i32 36, float %788, float %787)  ; FMin(a,b)
  %790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %721, float %722, float %789, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  %792 = extractvalue %dx.types.ResRet.f32 %790, 1
  %793 = extractvalue %dx.types.ResRet.f32 %790, 2
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 1
  %796 = fmul fast float %795, %791
  %797 = fmul fast float %795, %792
  %798 = fmul fast float %795, %793
  br label %799

; <label>:799                                     ; preds = %751, %715
  %800 = phi float [ %796, %751 ], [ 1.000000e+00, %715 ]
  %801 = phi float [ %797, %751 ], [ 1.000000e+00, %715 ]
  %802 = phi float [ %798, %751 ], [ 1.000000e+00, %715 ]
  %803 = fmul fast float %800, %710
  %804 = fmul fast float %801, %711
  %805 = fmul fast float %802, %712
  br label %806

; <label>:806                                     ; preds = %799, %616
  %807 = phi float [ %803, %799 ], [ %710, %616 ]
  %808 = phi float [ %804, %799 ], [ %711, %616 ]
  %809 = phi float [ %805, %799 ], [ %712, %616 ]
  %810 = and i32 %133, 2097152
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %816, label %812, !dx.controlflow.hints !69

; <label>:812                                     ; preds = %806
  %813 = add i32 %130, 192
  %814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 0
  br label %819

; <label>:816                                     ; preds = %806
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 3
  br label %819

; <label>:819                                     ; preds = %816, %812
  %820 = phi float [ %815, %812 ], [ %818, %816 ]
  br i1 %689, label %821, label %905

; <label>:821                                     ; preds = %819
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 2
  %824 = extractvalue %dx.types.CBufRet.f32 %822, 3
  %825 = fmul fast float %823, %52
  %826 = fmul fast float %824, %53
  %827 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %828 = call float @dx.op.unary.f32(i32 7, float %826)  ; Saturate(value)
  %829 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %827, float %828, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = extractvalue %dx.types.ResRet.f32 %829, 1
  %832 = extractvalue %dx.types.ResRet.f32 %829, 2
  %833 = extractvalue %dx.types.ResRet.f32 %829, 3
  %834 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %827, float %828, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %835 = extractvalue %dx.types.ResRet.f32 %834, 0
  %836 = extractvalue %dx.types.ResRet.f32 %834, 1
  %837 = extractvalue %dx.types.ResRet.f32 %834, 2
  %838 = extractvalue %dx.types.ResRet.f32 %834, 3
  %839 = call float @dx.op.binary.f32(i32 35, float %831, float %832)  ; FMax(a,b)
  %840 = call float @dx.op.binary.f32(i32 35, float %830, float %839)  ; FMax(a,b)
  %841 = call float @dx.op.binary.f32(i32 35, float %840, float %833)  ; FMax(a,b)
  %842 = call float @dx.op.binary.f32(i32 36, float %836, float %837)  ; FMin(a,b)
  %843 = call float @dx.op.binary.f32(i32 36, float %835, float %842)  ; FMin(a,b)
  %844 = call float @dx.op.binary.f32(i32 36, float %843, float %838)  ; FMin(a,b)
  %845 = fmul fast float %841, 2.550000e+02
  %846 = fadd fast float %845, 0x3F70101020000000
  %847 = fptoui float %846 to i32
  %848 = fmul fast float %844, 2.550000e+02
  %849 = fadd fast float %848, 0x3F70101020000000
  %850 = fptoui float %849 to i32
  %851 = icmp ult i32 %847, %850
  br i1 %851, label %852, label %894

; <label>:852                                     ; preds = %821
  %853 = fcmp fast ogt float %46, 9.843750e-01
  %854 = fadd fast float %47, -4.000000e+00
  %855 = select i1 %853, float -4.000000e+00, float %854
  %856 = call float @dx.op.binary.f32(i32 35, float %855, float 0.000000e+00)  ; FMax(a,b)
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = fadd fast float %858, %856
  %860 = extractvalue %dx.types.CBufRet.f32 %857, 2
  %861 = fmul fast float %859, %860
  %862 = call float @dx.op.unary.f32(i32 23, float %861)  ; Log(value)
  %863 = extractvalue %dx.types.CBufRet.f32 %857, 3
  %864 = fmul fast float %863, %862
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %867 = fmul fast float %864, %866
  %868 = call float @dx.op.unary.f32(i32 7, float %867)  ; Saturate(value)
  %869 = uitofp i32 %847 to float
  %870 = uitofp i32 %850 to float
  %871 = fadd fast float %869, 5.000000e-01
  %872 = fadd fast float %870, 5.000000e-01
  %873 = fmul fast float %866, %871
  %874 = fmul fast float %866, %872
  %875 = fadd fast float %873, 0x3F0FFB4800000000
  %876 = fadd fast float %874, 0xBF0FFB4800000000
  %877 = call float @dx.op.binary.f32(i32 35, float %868, float %875)  ; FMax(a,b)
  %878 = call float @dx.op.binary.f32(i32 36, float %877, float %876)  ; FMin(a,b)
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 1
  %881 = extractvalue %dx.types.CBufRet.f32 %879, 2
  %882 = extractvalue %dx.types.CBufRet.f32 %879, 0
  %883 = fmul fast float %880, %878
  %884 = fadd fast float %882, %883
  %885 = fadd fast float %882, %881
  %886 = fsub fast float %880, %881
  %887 = fadd fast float %886, %882
  %888 = call float @dx.op.binary.f32(i32 35, float %884, float %885)  ; FMax(a,b)
  %889 = call float @dx.op.binary.f32(i32 36, float %888, float %887)  ; FMin(a,b)
  %890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %827, float %828, float %889, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = extractvalue %dx.types.ResRet.f32 %890, 1
  %893 = extractvalue %dx.types.ResRet.f32 %890, 2
  br label %894

; <label>:894                                     ; preds = %852, %821
  %895 = phi float [ %891, %852 ], [ 1.000000e+00, %821 ]
  %896 = phi float [ %892, %852 ], [ 1.000000e+00, %821 ]
  %897 = phi float [ %893, %852 ], [ 1.000000e+00, %821 ]
  %898 = call float @dx.op.dot3.f32(i32 55, float %895, float %896, float %897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %899 = select i1 %113, float %898, float %895
  %900 = select i1 %113, float %898, float %896
  %901 = select i1 %113, float 1.000000e+00, float %897
  %902 = fmul fast float %899, %807
  %903 = fmul fast float %900, %808
  %904 = fmul fast float %901, %809
  br label %905

; <label>:905                                     ; preds = %894, %819
  %906 = phi float [ %686, %894 ], [ %47, %819 ]
  %907 = phi float [ %902, %894 ], [ %807, %819 ]
  %908 = phi float [ %903, %894 ], [ %808, %819 ]
  %909 = phi float [ %904, %894 ], [ %809, %819 ]
  br i1 %694, label %1150, label %910

; <label>:910                                     ; preds = %905
  %911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %912 = extractvalue %dx.types.ResRet.f32 %911, 0
  %913 = extractvalue %dx.types.ResRet.f32 %911, 1
  %914 = extractvalue %dx.types.ResRet.f32 %911, 2
  %915 = call float @dx.op.dot3.f32(i32 55, float %912, float %913, float %914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %916 = select i1 %113, float %915, float %912
  %917 = select i1 %113, float %915, float %913
  %918 = select i1 %113, float 1.000000e+00, float %914
  %919 = fmul fast float %916, %907
  %920 = fmul fast float %917, %908
  %921 = fmul fast float %918, %909
  %922 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.i32 %922, 0
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %1150, label %925, !dx.controlflow.hints !70

; <label>:925                                     ; preds = %910
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %928 = extractvalue %dx.types.CBufRet.f32 %926, 3
  %929 = fmul fast float %927, %52
  %930 = fmul fast float %928, %53
  %931 = fmul fast float %929, 2.000000e+00
  %932 = fmul fast float %930, 2.000000e+00
  %933 = fsub fast float 1.000000e+00, %931
  %934 = fsub fast float 1.000000e+00, %932
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %938 = extractvalue %dx.types.CBufRet.f32 %935, 2
  %939 = fmul fast float %933, %936
  %940 = fmul fast float %933, %937
  %941 = fmul fast float %933, %938
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 0
  %944 = extractvalue %dx.types.CBufRet.f32 %942, 1
  %945 = extractvalue %dx.types.CBufRet.f32 %942, 2
  %946 = fmul fast float %934, %943
  %947 = fmul fast float %934, %944
  %948 = fmul fast float %934, %945
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %952 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %953 = fadd fast float %946, %950
  %954 = fadd fast float %953, %939
  %955 = fadd fast float %947, %951
  %956 = fadd fast float %955, %940
  %957 = fadd fast float %948, %952
  %958 = fadd fast float %957, %941
  %959 = fmul fast float %954, %906
  %960 = fmul fast float %956, %906
  %961 = fmul fast float %958, %906
  %962 = fmul fast float %959, %959
  %963 = fmul fast float %960, %960
  %964 = fadd fast float %962, %963
  %965 = fmul fast float %961, %961
  %966 = fadd fast float %964, %965
  %967 = call float @dx.op.unary.f32(i32 24, float %966)  ; Sqrt(value)
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 0
  %970 = fsub fast float %967, %969
  %971 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %972 = fmul fast float %970, %971
  %973 = call float @dx.op.unary.f32(i32 7, float %972)  ; Saturate(value)
  %974 = fadd fast float %973, -5.000000e-01
  %975 = fmul fast float %974, 2.000000e+00
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 2
  %978 = call float @dx.op.binary.f32(i32 36, float %977, float %975)  ; FMin(a,b)
  %979 = fsub fast float -0.000000e+00, %977
  %980 = fcmp fast ogt float %978, %979
  br i1 %980, label %981, label %1150, !dx.controlflow.hints !71

; <label>:981                                     ; preds = %925
  %982 = fmul fast float %978, 5.000000e-01
  %983 = fadd fast float %982, 5.000000e-01
  %984 = call float @dx.op.unary.f32(i32 22, float %983)  ; Frc(value)
  %985 = call float @dx.op.unary.f32(i32 27, float %984)  ; Round_ni(value)
  %986 = call float @dx.op.unary.f32(i32 22, float %984)  ; Frc(value)
  %987 = fmul fast float %986, 2.000000e+00
  %988 = fadd fast float %987, -1.000000e+00
  %989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %929, float %930, float %985, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = extractvalue %dx.types.ResRet.f32 %989, 1
  %992 = extractvalue %dx.types.ResRet.f32 %989, 2
  %993 = extractvalue %dx.types.ResRet.f32 %989, 3
  %994 = fadd fast float %990, -5.000000e-01
  %995 = fadd fast float %992, -5.000000e-01
  %996 = fmul fast float %994, 0xBFD5555560000000
  %997 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %995, float %996)  ; FMad(a,b,c)
  %998 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %991, float 0.000000e+00)  ; FMad(a,b,c)
  %999 = fadd fast float %998, %993
  %1000 = fmul fast float %994, -7.500000e-01
  %1001 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %995, float %1000)  ; FMad(a,b,c)
  %1002 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %991, float 0.000000e+00)  ; FMad(a,b,c)
  %1003 = fadd fast float %1002, %993
  %1004 = call float @dx.op.binary.f32(i32 35, float %997, float -1.000000e+00)  ; FMax(a,b)
  %1005 = call float @dx.op.binary.f32(i32 35, float %999, float -1.000000e+00)  ; FMax(a,b)
  %1006 = call float @dx.op.binary.f32(i32 35, float %1001, float -1.000000e+00)  ; FMax(a,b)
  %1007 = call float @dx.op.binary.f32(i32 35, float %1003, float -1.000000e+00)  ; FMax(a,b)
  %1008 = call float @dx.op.binary.f32(i32 36, float %1004, float 1.000000e+00)  ; FMin(a,b)
  %1009 = call float @dx.op.binary.f32(i32 36, float %1005, float 1.000000e+00)  ; FMin(a,b)
  %1010 = call float @dx.op.binary.f32(i32 36, float %1006, float 1.000000e+00)  ; FMin(a,b)
  %1011 = call float @dx.op.binary.f32(i32 36, float %1007, float 1.000000e+00)  ; FMin(a,b)
  %1012 = fcmp fast olt float %1008, 0x3FEFFF8020000000
  br i1 %1012, label %1013, label %1128, !dx.controlflow.hints !72

; <label>:1013                                    ; preds = %981
  %1014 = extractvalue %dx.types.CBufRet.f32 %976, 3
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.CBufRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.CBufRet.f32 %1015, 2
  %1019 = extractvalue %dx.types.CBufRet.f32 %1015, 3
  %1020 = fsub fast float %1016, %1008
  %1021 = fsub fast float %1017, %1009
  %1022 = fsub fast float %1018, %1010
  %1023 = fsub fast float %1019, %1011
  %1024 = fmul fast float %1020, %1014
  %1025 = fmul fast float %1021, %1014
  %1026 = fmul fast float %1022, %1014
  %1027 = fmul fast float %1023, %1014
  %1028 = fadd fast float %1024, %1008
  %1029 = fadd fast float %1025, %1009
  %1030 = fsub fast float -0.000000e+00, %1029
  %1031 = fadd fast float %1026, %1010
  %1032 = fadd fast float %1027, %1011
  %1033 = fmul fast float %1028, %1028
  %1034 = fsub fast float %1029, %1033
  %1035 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1034)  ; FMax(a,b)
  %1036 = fdiv fast float 1.000000e+00, %1035
  %1037 = fmul fast float %1029, %1028
  %1038 = fsub fast float %1031, %1037
  %1039 = fsub fast float %988, %1028
  %1040 = fmul fast float %988, %988
  %1041 = fsub fast float %1040, %1029
  %1042 = fmul fast float %1039, %1036
  %1043 = fmul fast float %1042, %1038
  %1044 = fsub fast float %1041, %1043
  %1045 = fmul fast float %1029, %1029
  %1046 = fsub fast float %1032, %1045
  %1047 = fmul fast float %1038, %1038
  %1048 = fmul fast float %1047, %1036
  %1049 = fsub fast float %1046, %1048
  %1050 = fdiv fast float %1044, %1049
  %1051 = fmul fast float %1038, %1050
  %1052 = fsub fast float %1039, %1051
  %1053 = fmul fast float %1052, %1036
  %1054 = fmul fast float %1053, %1028
  %1055 = fsub fast float 1.000000e+00, %1054
  %1056 = fmul fast float %1029, %1050
  %1057 = fsub fast float %1055, %1056
  %1058 = fmul fast float %1053, %1053
  %1059 = fmul fast float %1050, 4.000000e+00
  %1060 = fmul fast float %1059, %1057
  %1061 = fsub fast float %1058, %1060
  %1062 = call float @dx.op.unary.f32(i32 24, float %1061)  ; Sqrt(value)
  %1063 = fcmp fast oge float %1053, 0.000000e+00
  %1064 = fsub fast float -0.000000e+00, %1062
  %1065 = select i1 %1063, float %1064, float %1062
  %1066 = fsub fast float %1065, %1053
  %1067 = fdiv fast float %1066, %1050
  %1068 = fdiv fast float %1057, %1066
  %1069 = fmul fast float %1067, 5.000000e-01
  %1070 = fmul fast float %1068, 2.000000e+00
  %1071 = select i1 %1063, float %1069, float %1070
  %1072 = select i1 %1063, float %1070, float %1069
  %1073 = call float @dx.op.binary.f32(i32 35, float %1071, float %1072)  ; FMax(a,b)
  %1074 = call float @dx.op.binary.f32(i32 36, float %1071, float %1072)  ; FMin(a,b)
  %1075 = fcmp fast ogt float %988, %1074
  br i1 %1075, label %1076, label %1086

; <label>:1076                                    ; preds = %1013
  %1077 = fsub fast float %988, %1074
  %1078 = fsub fast float %1073, %1074
  %1079 = fmul fast float %1077, %1078
  %1080 = fmul fast float %1073, %988
  %1081 = fadd fast float %1073, %988
  %1082 = fmul fast float %1081, %1028
  %1083 = fadd fast float %1080, %1029
  %1084 = fsub fast float %1083, %1082
  %1085 = fdiv fast float %1084, %1079
  br label %1086

; <label>:1086                                    ; preds = %1076, %1013
  %1087 = phi float [ %1085, %1076 ], [ 0.000000e+00, %1013 ]
  %1088 = fcmp fast ogt float %988, %1073
  %1089 = fsub fast float %988, %1073
  br i1 %1088, label %1090, label %1100

; <label>:1090                                    ; preds = %1086
  %1091 = fsub fast float %1073, %1074
  %1092 = fmul fast float %1091, %1089
  %1093 = fmul fast float %1074, %988
  %1094 = fadd fast float %1074, %988
  %1095 = fmul fast float %1094, %1028
  %1096 = fsub fast float %1030, %1093
  %1097 = fadd fast float %1096, %1095
  %1098 = fdiv fast float %1097, %1092
  %1099 = fadd fast float %1098, %1087
  br label %1100

; <label>:1100                                    ; preds = %1090, %1086
  %1101 = phi float [ %1099, %1090 ], [ %1087, %1086 ]
  %1102 = fsub fast float %988, %1074
  %1103 = fmul fast float %1102, %1089
  %1104 = fmul fast float %1074, %1073
  %1105 = fadd fast float %1074, %1073
  %1106 = fmul fast float %1105, %1028
  %1107 = fadd fast float %1104, %1029
  %1108 = fsub fast float %1107, %1106
  %1109 = fdiv fast float %1108, %1103
  %1110 = call float @dx.op.unary.f32(i32 7, float %1101)  ; Saturate(value)
  %1111 = fcmp fast oeq float %820, 0.000000e+00
  %1112 = extractvalue %dx.types.CBufRet.f32 %976, 0
  %1113 = fcmp fast oeq float %1112, 0.000000e+00
  %1114 = or i1 %1111, %1113
  %1115 = fmul fast float %1112, 2.000000e+00
  %1116 = fadd fast float %977, %978
  %1117 = fdiv fast float %1116, %1115
  %1118 = call float @dx.op.unary.f32(i32 7, float %1117)  ; Saturate(value)
  %1119 = fmul fast float %1118, 2.000000e+00
  %1120 = fsub fast float 3.000000e+00, %1119
  %1121 = fmul fast float %1118, %1118
  %1122 = fmul fast float %1121, %1120
  %1123 = select i1 %1114, float 1.000000e+00, float %1122
  %1124 = fmul fast float %1109, %820
  %1125 = fadd fast float %1110, %1124
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1127 = fmul fast float %1123, %1126
  br label %1128

; <label>:1128                                    ; preds = %1100, %981
  %1129 = phi float [ %1127, %1100 ], [ 0.000000e+00, %981 ]
  %1130 = fsub fast float 1.000000e+00, %1129
  %1131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %929, float %930, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.i32 %1133, 2
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1141, label %1136

; <label>:1136                                    ; preds = %1128
  %1137 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  %1138 = fadd fast float %1132, -1.000000e+00
  %1139 = fmul fast float %1137, %1138
  %1140 = fadd fast float %1139, 1.000000e+00
  br label %1141

; <label>:1141                                    ; preds = %1136, %1128
  %1142 = phi float [ %1140, %1136 ], [ %1130, %1128 ]
  %1143 = call float @dx.op.binary.f32(i32 35, float %1132, float %1142)  ; FMax(a,b)
  %1144 = call float @dx.op.dot3.f32(i32 55, float %1143, float %1143, float %1143, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1145 = select i1 %113, float %1144, float %1143
  %1146 = select i1 %113, float 1.000000e+00, float %1143
  %1147 = fmul fast float %1145, %919
  %1148 = fmul fast float %1145, %920
  %1149 = fmul fast float %1146, %921
  br label %1150

; <label>:1150                                    ; preds = %1141, %925, %910, %905
  %1151 = phi float [ %907, %905 ], [ %919, %910 ], [ %1147, %1141 ], [ %919, %925 ]
  %1152 = phi float [ %908, %905 ], [ %920, %910 ], [ %1148, %1141 ], [ %920, %925 ]
  %1153 = phi float [ %909, %905 ], [ %921, %910 ], [ %1149, %1141 ], [ %921, %925 ]
  %1154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1154, 2
  %1156 = extractvalue %dx.types.CBufRet.f32 %1154, 3
  %1157 = fmul fast float %1155, %52
  %1158 = fmul fast float %1156, %53
  %1159 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1160 = call float @dx.op.unary.f32(i32 7, float %1158)  ; Saturate(value)
  %1161 = select i1 %694, i32 2, i32 0
  %1162 = or i32 %1161, 1
  %1163 = uitofp i32 %1162 to float
  %1164 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1159, float %1160, float %1163, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  %1168 = extractvalue %dx.types.ResRet.f32 %1164, 3
  %1169 = add nuw nsw i32 %1161, 2
  %1170 = uitofp i32 %1169 to float
  %1171 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1159, float %1160, float %1170, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1173 = extractvalue %dx.types.ResRet.f32 %1171, 1
  %1174 = extractvalue %dx.types.ResRet.f32 %1171, 2
  %1175 = extractvalue %dx.types.ResRet.f32 %1171, 3
  %1176 = call float @dx.op.binary.f32(i32 35, float %1166, float %1167)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 35, float %1165, float %1176)  ; FMax(a,b)
  %1178 = call float @dx.op.binary.f32(i32 35, float %1177, float %1168)  ; FMax(a,b)
  %1179 = call float @dx.op.binary.f32(i32 36, float %1173, float %1174)  ; FMin(a,b)
  %1180 = call float @dx.op.binary.f32(i32 36, float %1172, float %1179)  ; FMin(a,b)
  %1181 = call float @dx.op.binary.f32(i32 36, float %1180, float %1175)  ; FMin(a,b)
  %1182 = fmul fast float %1178, 2.550000e+02
  %1183 = fadd fast float %1182, 0x3F70101020000000
  %1184 = fptoui float %1183 to i32
  %1185 = fmul fast float %1181, 2.550000e+02
  %1186 = fadd fast float %1185, 0x3F70101020000000
  %1187 = fptoui float %1186 to i32
  %1188 = icmp ult i32 %1184, %1187
  br i1 %1188, label %1189, label %1232

; <label>:1189                                    ; preds = %1150
  %1190 = fcmp fast ogt float %46, 9.843750e-01
  %1191 = fadd fast float %906, -4.000000e+00
  %1192 = select i1 %1190, float -4.000000e+00, float %1191
  %1193 = call float @dx.op.binary.f32(i32 35, float %1192, float 0.000000e+00)  ; FMax(a,b)
  %1194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.f32 %1194, 0
  %1196 = fadd fast float %1195, %1193
  %1197 = extractvalue %dx.types.CBufRet.f32 %1194, 2
  %1198 = fmul fast float %1196, %1197
  %1199 = call float @dx.op.unary.f32(i32 23, float %1198)  ; Log(value)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1194, 3
  %1201 = fmul fast float %1200, %1199
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1204 = fmul fast float %1201, %1203
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = uitofp i32 %1184 to float
  %1207 = uitofp i32 %1187 to float
  %1208 = fadd fast float %1206, 5.000000e-01
  %1209 = fadd fast float %1207, 5.000000e-01
  %1210 = fmul fast float %1203, %1208
  %1211 = fmul fast float %1203, %1209
  %1212 = fadd fast float %1210, 0x3F0FFB4800000000
  %1213 = fadd fast float %1211, 0xBF0FFB4800000000
  %1214 = call float @dx.op.binary.f32(i32 35, float %1205, float %1212)  ; FMax(a,b)
  %1215 = call float @dx.op.binary.f32(i32 36, float %1214, float %1213)  ; FMin(a,b)
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 1
  %1218 = extractvalue %dx.types.CBufRet.f32 %1216, 2
  %1219 = extractvalue %dx.types.CBufRet.f32 %1216, 0
  %1220 = select i1 %694, float %1219, float 0.000000e+00
  %1221 = fmul fast float %1217, %1215
  %1222 = fadd fast float %1220, %1221
  %1223 = fadd fast float %1220, %1218
  %1224 = fsub fast float %1217, %1218
  %1225 = fadd fast float %1224, %1220
  %1226 = call float @dx.op.binary.f32(i32 35, float %1222, float %1223)  ; FMax(a,b)
  %1227 = call float @dx.op.binary.f32(i32 36, float %1226, float %1225)  ; FMin(a,b)
  %1228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1159, float %1160, float %1227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = extractvalue %dx.types.ResRet.f32 %1228, 1
  %1231 = extractvalue %dx.types.ResRet.f32 %1228, 2
  br label %1232

; <label>:1232                                    ; preds = %1189, %1150
  %1233 = phi float [ %1229, %1189 ], [ 1.000000e+00, %1150 ]
  %1234 = phi float [ %1230, %1189 ], [ 1.000000e+00, %1150 ]
  %1235 = phi float [ %1231, %1189 ], [ 1.000000e+00, %1150 ]
  %1236 = call float @dx.op.dot3.f32(i32 55, float %1233, float %1234, float %1235, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1237 = select i1 %113, float %1236, float %1233
  %1238 = select i1 %113, float %1236, float %1234
  %1239 = fmul fast float %1237, %1151
  %1240 = fmul fast float %1238, %1152
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  br i1 %113, label %1243, label %1246

; <label>:1243                                    ; preds = %1232
  %1244 = fadd fast float %1239, %1240
  %1245 = fmul fast float %1242, %1244
  br label %1256

; <label>:1246                                    ; preds = %1232
  %1247 = fmul fast float %1235, %1153
  %1248 = fmul fast float %1242, %1239
  %1249 = fmul fast float %1242, %1240
  %1250 = fmul fast float %1247, %1242
  %1251 = call float @dx.op.binary.f32(i32 35, float %1249, float %1250)  ; FMax(a,b)
  %1252 = call float @dx.op.binary.f32(i32 35, float %1248, float %1251)  ; FMax(a,b)
  %1253 = call float @dx.op.binary.f32(i32 35, float %1252, float 0.000000e+00)  ; FMax(a,b)
  %1254 = fcmp fast ugt float %1253, 0x3F10000000000000
  br i1 %1254, label %1256, label %1255

; <label>:1255                                    ; preds = %1246
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1256

; <label>:1256                                    ; preds = %1255, %1246, %1243
  %1257 = phi float [ %1245, %1243 ], [ %1248, %1255 ], [ %1248, %1246 ]
  %1258 = phi float [ 0.000000e+00, %1243 ], [ %1249, %1255 ], [ %1249, %1246 ]
  %1259 = phi float [ 0.000000e+00, %1243 ], [ %1250, %1255 ], [ %1250, %1246 ]
  %1260 = fadd fast float %557, 0x3FE3C6EF40000000
  %1261 = call float @dx.op.unary.f32(i32 22, float %1260)  ; Frc(value)
  %1262 = call float @dx.op.unary.f32(i32 23, float %1257)  ; Log(value)
  %1263 = fadd fast float %1262, -7.000000e+00
  %1264 = call float @dx.op.unary.f32(i32 21, float %1263)  ; Exp(value)
  %1265 = fmul fast float %1261, 2.000000e+00
  %1266 = fadd fast float %1265, -1.000000e+00
  %1267 = fmul fast float %1264, %1266
  %1268 = fcmp fast ogt float %1257, 0.000000e+00
  %1269 = select i1 %1268, float %1267, float 0.000000e+00
  %1270 = fadd fast float %1269, %1257
  %1271 = fadd fast float %557, 0x3FF3C6EF40000000
  %1272 = call float @dx.op.unary.f32(i32 22, float %1271)  ; Frc(value)
  %1273 = call float @dx.op.unary.f32(i32 23, float %1258)  ; Log(value)
  %1274 = fadd fast float %1273, -7.000000e+00
  %1275 = call float @dx.op.unary.f32(i32 21, float %1274)  ; Exp(value)
  %1276 = fmul fast float %1272, 2.000000e+00
  %1277 = fadd fast float %1276, -1.000000e+00
  %1278 = fmul fast float %1275, %1277
  %1279 = fcmp fast ogt float %1258, 0.000000e+00
  %1280 = select i1 %1279, float %1278, float 0.000000e+00
  %1281 = fadd fast float %1280, %1258
  %1282 = fadd fast float %557, 0x3FFDAA66E0000000
  %1283 = call float @dx.op.unary.f32(i32 22, float %1282)  ; Frc(value)
  %1284 = call float @dx.op.unary.f32(i32 23, float %1259)  ; Log(value)
  %1285 = fadd fast float %1284, -6.000000e+00
  %1286 = call float @dx.op.unary.f32(i32 21, float %1285)  ; Exp(value)
  %1287 = fmul fast float %1283, 2.000000e+00
  %1288 = fadd fast float %1287, -1.000000e+00
  %1289 = fmul fast float %1286, %1288
  %1290 = fcmp fast ogt float %1259, 0.000000e+00
  %1291 = select i1 %1290, float %1289, float 0.000000e+00
  %1292 = fadd fast float %1291, %1259
  %1293 = select i1 %113, float %1258, float %1281
  %1294 = select i1 %113, float %1259, float %1292
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1295 = call float @dx.op.binary.f32(i32 36, float %1270, float 3.225500e+04)  ; FMin(a,b)
  %1296 = call float @dx.op.binary.f32(i32 36, float %1293, float 3.225500e+04)  ; FMin(a,b)
  %1297 = call float @dx.op.binary.f32(i32 36, float %1294, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1295)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1296)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1297)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!33 = !{[37 x i32] [i32 35, i32 8, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !60}
!35 = !{!36, !56, null}
!36 = !{!37, !40, !42, !43, !45, !48, !50, !52, !53, !55}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 8}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 2, i8 0, !39}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 3, i8 0, !39}
!44 = !{i32 3}
!45 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 4, i8 0, !47}
!46 = !{i32 4}
!47 = !{i32 3, i32 3}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 3, i32 1, i8 2, i32 5, i8 0, !47}
!49 = !{i32 5}
!50 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 6, i8 0, !39}
!51 = !{i32 8}
!52 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 7, i8 0, !39}
!53 = !{i32 8, !"COLOR", i8 5, i8 0, !44, i8 1, i32 1, i8 3, i32 8, i8 0, !54}
!54 = !{i32 3, i32 5}
!55 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!56 = !{!57, !58}
!57 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!58 = !{i32 1, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!59 = !{i32 1}
!60 = !{i32 0, i64 24}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}

