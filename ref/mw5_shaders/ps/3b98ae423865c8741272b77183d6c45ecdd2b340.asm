;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xy w
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
; shader hash: b2ae366569066d8d07138d946506cc07
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
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
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
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = fmul fast float %51, %45
  %53 = fmul fast float %51, %46
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
  %87 = fmul fast float %82, %48
  %88 = fmul fast float %84, %48
  %89 = fmul fast float %86, %48
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 3
  %92 = and i32 %91, 3
  %93 = icmp ne i32 %92, 0
  %94 = and i32 %91, 4
  %95 = icmp ne i32 %94, 0
  %96 = and i1 %93, %95
  br i1 %96, label %97, label %106

; <label>:97                                      ; preds = %0
  %98 = fmul fast float %56, %53
  %99 = fmul fast float %55, %52
  %100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %99, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = fsub fast float 1.000000e+00, %101
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fcmp fast olt float %102, %104
  br label %109

; <label>:106                                     ; preds = %0
  %107 = icmp eq i32 %94, 0
  %108 = and i1 %93, %107
  br label %109

; <label>:109                                     ; preds = %106, %97
  %110 = phi i1 [ %105, %97 ], [ %108, %106 ]
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %112, %52
  %115 = fmul fast float %113, %53
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = and i32 %117, 114688
  %119 = icmp ne i32 %118, 0
  %120 = select i1 %119, float %114, float 0.000000e+00
  %121 = select i1 %119, float %115, float 0.000000e+00
  %122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %120, float %121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = fmul fast float %123, 2.550000e+02
  %125 = fptoui float %124 to i32
  %126 = select i1 %119, i32 %125, i32 0
  %127 = mul i32 %21, 208
  %128 = add i32 %127, 188
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  %131 = and i32 %91, 114688
  %132 = and i32 %91, 8
  %133 = icmp ne i32 %132, 0
  %134 = or i1 %110, %133
  %135 = select i1 %134, i32 %131, i32 16384
  %136 = and i32 %135, %130
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

; <label>:138                                     ; preds = %109
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %139

; <label>:139                                     ; preds = %138, %109
  %140 = and i32 %130, 512
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %166, label %142

; <label>:142                                     ; preds = %139
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %146 = fmul fast float %144, %52
  %147 = fmul fast float %145, %53
  %148 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %150 = fdiv fast float %148, %149
  %151 = fcmp fast ogt float %150, 0x3FFC71C720000000
  br i1 %151, label %152, label %158

; <label>:152                                     ; preds = %142
  %153 = fdiv fast float 0x3FFC71C720000000, %150
  %154 = fmul fast float %153, %147
  %155 = fsub fast float 1.000000e+00, %153
  %156 = fmul fast float %155, 5.000000e-01
  %157 = fadd fast float %156, %154
  br label %166

; <label>:158                                     ; preds = %142
  %159 = fcmp fast olt float %150, 0x3FFC71C720000000
  br i1 %159, label %160, label %166

; <label>:160                                     ; preds = %158
  %161 = fmul fast float %146, 5.625000e-01
  %162 = fmul fast float %161, %150
  %163 = fmul fast float %150, 2.812500e-01
  %164 = fsub fast float 5.000000e-01, %163
  %165 = fadd fast float %164, %162
  br label %166

; <label>:166                                     ; preds = %160, %158, %152, %139
  %167 = phi float [ %40, %139 ], [ %146, %152 ], [ %165, %160 ], [ %146, %158 ]
  %168 = phi float [ %41, %139 ], [ %157, %152 ], [ %147, %160 ], [ %147, %158 ]
  %169 = fadd fast float %40, %37
  %170 = fadd fast float %41, %38
  %171 = add i32 %22, 72
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = extractvalue %dx.types.ResRet.i32 %172, 1
  %175 = bitcast i32 %173 to float
  %176 = bitcast i32 %174 to float
  %177 = fmul fast float %175, %40
  %178 = fmul fast float %176, %41
  %179 = call float @dx.op.unary.f32(i32 22, float %177)  ; Frc(value)
  %180 = call float @dx.op.unary.f32(i32 22, float %178)  ; Frc(value)
  %181 = and i32 %130, 16
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %189, label %183, !dx.controlflow.hints !62

; <label>:183                                     ; preds = %166
  %184 = fsub fast float %44, %43
  %185 = fsub fast float 1.000000e+00, %43
  %186 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %185)  ; FMax(a,b)
  %187 = fdiv fast float %184, %186
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  br label %189

; <label>:189                                     ; preds = %183, %166
  %190 = phi float [ %188, %183 ], [ %44, %166 ]
  %191 = fcmp fast ogt float %190, 0.000000e+00
  br i1 %191, label %193, label %192

; <label>:192                                     ; preds = %189
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %193

; <label>:193                                     ; preds = %192, %189
  %194 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %195 = fmul fast float %52, 5.000000e-01
  %196 = fmul fast float %53, 5.000000e-01
  %197 = fptosi float %195 to i32
  %198 = fptosi float %196 to i32
  %199 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %197, i32 %198, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = lshr i32 %200, 18
  %202 = uitofp i32 %201 to float
  %203 = fmul fast float %202, 0x3F4C00EBA0000000
  %204 = call float @dx.op.unary.f32(i32 21, float %203)  ; Exp(value)
  %205 = fadd fast float %204, -1.000000e+00
  %206 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %207 = extractvalue %dx.types.Dimensions %206, 0
  %208 = sitofp i32 %207 to float
  %209 = extractvalue %dx.types.Dimensions %206, 1
  %210 = sitofp i32 %209 to float
  %211 = fcmp fast oge float %195, %208
  %212 = fcmp fast oge float %196, %210
  %213 = or i1 %211, %212
  %214 = select i1 %213, float 0x4197782600000000, float %205
  %215 = fsub fast float %214, %48
  %216 = fcmp fast ogt float %215, 0.000000e+00
  %217 = and i32 %126, -2
  %218 = icmp eq i32 %217, 2
  %219 = and i1 %218, %216
  %220 = xor i1 %216, true
  %221 = icmp eq i32 %126, 1
  %222 = and i1 %221, %220
  %223 = or i1 %219, %222
  %224 = and i32 %130, 262144
  %225 = icmp ne i32 %224, 0
  %226 = and i1 %225, %223
  %227 = xor i1 %223, true
  %228 = and i32 %130, 131072
  %229 = icmp ne i32 %228, 0
  %230 = and i1 %229, %227
  %231 = or i1 %226, %230
  br i1 %231, label %232, label %233

; <label>:232                                     ; preds = %193
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %233

; <label>:233                                     ; preds = %232, %193
  %234 = and i32 %130, 32
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %452, label %236, !dx.controlflow.hints !63

; <label>:236                                     ; preds = %233
  %237 = add i32 %127, 80
  %238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = extractvalue %dx.types.ResRet.f32 %238, 1
  %241 = extractvalue %dx.types.ResRet.f32 %238, 2
  %242 = extractvalue %dx.types.ResRet.f32 %238, 3
  %243 = add i32 %127, 96
  %244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = extractvalue %dx.types.ResRet.f32 %244, 1
  %247 = extractvalue %dx.types.ResRet.f32 %244, 2
  %248 = add i32 %127, 112
  %249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 3
  %251 = add i32 %127, 128
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 3
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 4096
  %257 = icmp ne i32 %256, 0
  %258 = fcmp fast une float %247, 0.000000e+00
  %259 = and i32 %255, 64
  %260 = icmp ne i32 %259, 0
  %261 = and i32 %255, 128
  %262 = icmp eq i32 %261, 0
  %263 = and i32 %255, 2048
  %264 = icmp eq i32 %263, 0
  %265 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %266 = extractvalue %dx.types.Dimensions %265, 0
  %267 = sitofp i32 %266 to float
  %268 = extractvalue %dx.types.Dimensions %265, 1
  %269 = sitofp i32 %268 to float
  %270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.f32 %270, 2
  %272 = extractvalue %dx.types.CBufRet.f32 %270, 3
  %273 = fmul fast float %271, %52
  %274 = fmul fast float %272, %53
  %275 = fmul fast float %273, %267
  %276 = fmul fast float %274, %269
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 1
  %279 = fsub fast float -0.000000e+00, %278
  %280 = fptoui float %279 to i32
  %281 = fptoui float %275 to i32
  %282 = fptoui float %276 to i32
  %283 = and i32 %280, 31
  %284 = lshr i32 %281, %283
  %285 = lshr i32 %282, %283
  %286 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %280, i32 %284, i32 %285, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = fcmp fast ogt float %287, -1.000000e+00
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 1
  %291 = select i1 %288, float %290, float 1.000000e+00
  %292 = fadd fast float %287, 1.000000e+00
  %293 = fmul fast float %291, %292
  %294 = call float @dx.op.unary.f32(i32 6, float %293)  ; FAbs(value)
  %295 = extractvalue %dx.types.CBufRet.f32 %289, 3
  %296 = fcmp fast oge float %294, %295
  %297 = select i1 %296, float 0x4197782600000000, float %294
  br i1 %264, label %363, label %298, !dx.controlflow.hints !64

; <label>:298                                     ; preds = %236
  %299 = fmul fast float %57, %271
  %300 = fmul fast float %59, %272
  %301 = fsub fast float 1.000000e+00, %299
  %302 = fsub fast float 1.000000e+00, %300
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 0
  %305 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %306 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %307 = fmul fast float %301, %304
  %308 = fmul fast float %301, %305
  %309 = fmul fast float %301, %306
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 0
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %313 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %314 = fmul fast float %302, %311
  %315 = fmul fast float %302, %312
  %316 = fmul fast float %302, %313
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %320 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %321 = fadd fast float %314, %318
  %322 = fadd fast float %321, %307
  %323 = fadd fast float %315, %319
  %324 = fadd fast float %323, %308
  %325 = fadd fast float %316, %320
  %326 = fadd fast float %325, %309
  %327 = fmul fast float %322, %297
  %328 = fmul fast float %324, %297
  %329 = fmul fast float %326, %297
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %333 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %334 = fsub fast float %331, %23
  %335 = fadd fast float %334, %327
  %336 = fsub fast float %332, %24
  %337 = fadd fast float %336, %328
  %338 = fsub fast float %333, %25
  %339 = fadd fast float %338, %329
  %340 = fmul fast float %26, %26
  %341 = call float @dx.op.dot3.f32(i32 55, float %335, float %337, float %339, float %335, float %337, float %339)  ; Dot3(ax,ay,az,bx,by,bz)
  %342 = fsub fast float %340, %341
  %343 = fmul fast float %246, %340
  %344 = fmul fast float %245, %340
  %345 = fcmp fast olt float %342, %343
  %346 = fcmp fast ogt float %342, %344
  %347 = or i1 %345, %346
  %348 = select i1 %347, float 0.000000e+00, float %342
  %349 = fsub fast float %245, %246
  %350 = fmul fast float %349, %340
  %351 = fsub fast float %348, %343
  %352 = fdiv fast float %351, %350
  %353 = call float @dx.op.unary.f32(i32 7, float %352)  ; Saturate(value)
  %354 = fmul fast float %353, 2.000000e+00
  %355 = fsub fast float 3.000000e+00, %354
  %356 = fsub fast float %250, %253
  %357 = fmul fast float %353, %353
  %358 = fmul fast float %357, %356
  %359 = fmul fast float %358, %355
  %360 = fadd fast float %359, %253
  %361 = fmul fast float %239, %239
  %362 = fmul fast float %361, %348
  br label %446

; <label>:363                                     ; preds = %236
  %364 = and i32 %255, 256
  %365 = icmp eq i32 %364, 0
  %366 = fsub fast float %297, %48
  br i1 %365, label %403, label %367

; <label>:367                                     ; preds = %363
  %368 = fadd fast float %245, %48
  %369 = fcmp fast olt float %297, %48
  %370 = fcmp fast ogt float %297, %368
  %371 = or i1 %369, %370
  %372 = select i1 %371, float 0.000000e+00, float %366
  %373 = call float @dx.op.unary.f32(i32 83, float %297)  ; DerivCoarseX(value)
  %374 = call float @dx.op.unary.f32(i32 84, float %297)  ; DerivCoarseY(value)
  %375 = fmul fast float %373, %373
  %376 = fmul fast float %374, %374
  %377 = fadd fast float %376, %375
  %378 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %379 = extractvalue %dx.types.CBufRet.f32 %277, 2
  %380 = fmul fast float %379, %378
  %381 = call float @dx.op.unary.f32(i32 7, float %380)  ; Saturate(value)
  %382 = fmul fast float %381, %246
  %383 = fdiv fast float %366, %382
  %384 = call float @dx.op.unary.f32(i32 7, float %383)  ; Saturate(value)
  %385 = fmul fast float %384, 2.000000e+00
  %386 = fsub fast float 3.000000e+00, %385
  %387 = fmul fast float %384, %384
  %388 = fmul fast float %387, %386
  %389 = fsub fast float %297, %368
  %390 = fadd fast float %389, %382
  %391 = fdiv fast float %390, %382
  %392 = call float @dx.op.unary.f32(i32 7, float %391)  ; Saturate(value)
  %393 = fmul fast float %392, 2.000000e+00
  %394 = fsub fast float 3.000000e+00, %393
  %395 = fmul fast float %392, %392
  %396 = fmul fast float %395, %394
  %397 = fsub fast float %388, %396
  %398 = fsub fast float %250, %253
  %399 = fmul fast float %397, %398
  %400 = fadd fast float %399, %253
  %401 = fmul fast float %372, %239
  %402 = call float @dx.op.unary.f32(i32 6, float %401)  ; FAbs(value)
  br label %446

; <label>:403                                     ; preds = %363
  br i1 %258, label %404, label %417

; <label>:404                                     ; preds = %403
  %405 = fdiv fast float 5.000000e+01, %26
  %406 = select i1 %260, float %405, float 1.000000e+00
  %407 = fmul fast float %406, %239
  %408 = fmul fast float %179, 2.000000e+00
  %409 = fmul fast float %180, 2.000000e+00
  %410 = fadd fast float %408, -1.000000e+00
  %411 = fadd fast float %409, -1.000000e+00
  %412 = call float @dx.op.dot2.f32(i32 54, float %410, float %411, float %410, float %411)  ; Dot2(ax,ay,bx,by)
  %413 = fmul fast float %247, %26
  %414 = fmul fast float %413, %412
  %415 = fsub fast float %366, %414
  %416 = fmul fast float %407, %415
  br label %446

; <label>:417                                     ; preds = %403
  br i1 %262, label %438, label %418

; <label>:418                                     ; preds = %417
  %419 = fmul fast float %26, 0x3F947AE140000000
  %420 = select i1 %260, float %419, float 1.000000e+00
  %421 = fdiv fast float 1.000000e+00, %420
  %422 = fmul fast float %420, %240
  %423 = fmul fast float %420, %241
  %424 = fmul fast float %421, %242
  %425 = call float @dx.op.unary.f32(i32 6, float %366)  ; FAbs(value)
  %426 = fcmp fast olt float %425, %422
  br i1 %426, label %427, label %431, !dx.controlflow.hints !65

; <label>:427                                     ; preds = %418
  %428 = fmul fast float %421, %239
  %429 = fmul fast float %428, %425
  %430 = call float @dx.op.unary.f32(i32 6, float %429)  ; FAbs(value)
  br label %446

; <label>:431                                     ; preds = %418
  %432 = fcmp fast ogt float %425, %423
  br i1 %432, label %433, label %446

; <label>:433                                     ; preds = %431
  %434 = fsub fast float %425, %423
  %435 = fmul fast float %424, %434
  %436 = call float @dx.op.unary.f32(i32 6, float %435)  ; FAbs(value)
  %437 = fsub fast float 1.000000e+00, %436
  br label %446

; <label>:438                                     ; preds = %417
  %439 = fdiv fast float 5.000000e+01, %26
  %440 = select i1 %260, float %439, float 1.000000e+00
  %441 = fmul fast float %440, %239
  %442 = call float @dx.op.unary.f32(i32 6, float %215)  ; FAbs(value)
  %443 = select i1 %257, float %442, float 0x47EFFFFFE0000000
  %444 = call float @dx.op.binary.f32(i32 36, float %366, float %443)  ; FMin(a,b)
  %445 = fmul fast float %441, %444
  br label %446

; <label>:446                                     ; preds = %438, %433, %431, %427, %404, %367, %298
  %447 = phi float [ %362, %298 ], [ %402, %367 ], [ %416, %404 ], [ %445, %438 ], [ %430, %427 ], [ %437, %433 ], [ %425, %431 ]
  %448 = phi float [ %360, %298 ], [ %400, %367 ], [ 1.000000e+00, %404 ], [ 1.000000e+00, %438 ], [ 1.000000e+00, %427 ], [ 1.000000e+00, %433 ], [ 1.000000e+00, %431 ]
  %449 = call float @dx.op.unary.f32(i32 7, float %447)  ; Saturate(value)
  %450 = fmul fast float %448, %194
  %451 = fmul fast float %450, %449
  br label %452

; <label>:452                                     ; preds = %446, %233
  %453 = phi float [ %451, %446 ], [ %194, %233 ]
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 2
  %456 = fptosi float %48 to i32
  %457 = sitofp i32 %456 to float
  %458 = fadd fast float %455, %457
  %459 = fmul fast float %458, 0x3FE3C6EF40000000
  %460 = frem fast float %52, 2.560000e+02
  %461 = frem fast float %53, 2.560000e+02
  %462 = fptoui float %460 to i32
  %463 = fptoui float %461 to i32
  %464 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %462, i32 %463, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = fadd fast float %465, %459
  %467 = call float @dx.op.unary.f32(i32 22, float %466)  ; Frc(value)
  %468 = and i32 %130, 1
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %526, label %470, !dx.controlflow.hints !66

; <label>:470                                     ; preds = %452
  %471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %127, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 2
  %473 = extractvalue %dx.types.ResRet.f32 %471, 3
  %474 = add i32 %127, 16
  %475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = extractvalue %dx.types.ResRet.f32 %475, 1
  %478 = extractvalue %dx.types.ResRet.f32 %475, 2
  %479 = add i32 %127, 32
  %480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = extractvalue %dx.types.ResRet.f32 %480, 1
  %483 = extractvalue %dx.types.ResRet.f32 %480, 2
  %484 = and i32 %130, 2
  %485 = icmp eq i32 %484, 0
  %486 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %487 = call float @dx.op.unary.f32(i32 25, float %486)  ; Rsqrt(value)
  %488 = fmul fast float %487, %33
  %489 = fmul fast float %487, %34
  %490 = fmul fast float %487, %35
  %491 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %492 = call float @dx.op.unary.f32(i32 25, float %491)  ; Rsqrt(value)
  %493 = fmul fast float %492, %87
  %494 = fmul fast float %492, %88
  %495 = fmul fast float %492, %89
  %496 = call float @dx.op.dot3.f32(i32 55, float %493, float %494, float %495, float %488, float %489, float %490)  ; Dot3(ax,ay,az,bx,by,bz)
  %497 = fmul fast float %496, %496
  %498 = fmul fast float %497, %472
  %499 = fadd fast float %498, %473
  %500 = call float @dx.op.unary.f32(i32 7, float %499)  ; Saturate(value)
  br i1 %485, label %501, label %511, !dx.controlflow.hints !67

; <label>:501                                     ; preds = %470
  %502 = extractvalue %dx.types.ResRet.f32 %471, 1
  %503 = extractvalue %dx.types.ResRet.f32 %471, 0
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 3
  %506 = fmul fast float %505, %491
  %507 = fsub fast float %503, %506
  %508 = fmul fast float %507, %502
  %509 = call float @dx.op.unary.f32(i32 7, float %508)  ; Saturate(value)
  %510 = fmul fast float %509, %500
  br label %511

; <label>:511                                     ; preds = %501, %470
  %512 = phi float [ %510, %501 ], [ %500, %470 ]
  %513 = fsub fast float %476, %481
  %514 = fsub fast float %477, %482
  %515 = fsub fast float %478, %483
  %516 = fmul fast float %512, %513
  %517 = fmul fast float %512, %514
  %518 = fmul fast float %512, %515
  %519 = fadd fast float %516, %481
  %520 = fadd fast float %517, %482
  %521 = fadd fast float %518, %483
  %522 = fmul fast float %519, %30
  %523 = fmul fast float %520, %30
  %524 = fmul fast float %521, %30
  %525 = fmul fast float %512, %453
  br label %526

; <label>:526                                     ; preds = %511, %452
  %527 = phi float [ %525, %511 ], [ %453, %452 ]
  %528 = phi float [ %522, %511 ], [ %30, %452 ]
  %529 = phi float [ %523, %511 ], [ %30, %452 ]
  %530 = phi float [ %524, %511 ], [ %30, %452 ]
  %531 = add i32 %22, 104
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = add i32 %533, 0
  %535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %535, %dx.types.Handle %49, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = extractvalue %dx.types.ResRet.f32 %536, 1
  %539 = extractvalue %dx.types.ResRet.f32 %536, 2
  %540 = call float @dx.op.dot3.f32(i32 55, float %537, float %538, float %539, float %27, float %28, float %29)  ; Dot3(ax,ay,az,bx,by,bz)
  %541 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %540)  ; FMin(a,b)
  %542 = add i32 %22, 108
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = add i32 %544, 0
  %546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %545, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %546, %dx.types.Handle %16, float %541, float %42, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = extractvalue %dx.types.ResRet.f32 %547, 1
  %550 = extractvalue %dx.types.ResRet.f32 %547, 2
  %551 = add i32 %22, 44
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = shl i32 %553, 4
  %555 = and i32 %554, 32752
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %553, 7
  %558 = and i32 %557, 32752
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = lshr i32 %553, 22
  %561 = shl nuw nsw i32 %560, 5
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = fmul fast float %556, %548
  %564 = fmul fast float %559, %549
  %565 = fmul fast float %562, %550
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %568 = fmul fast float %563, %567
  %569 = fmul fast float %564, %567
  %570 = fmul fast float %565, %567
  %571 = add i32 %22, 48
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = lshr i32 %573, 22
  %575 = shl nuw nsw i32 %574, 5
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = fmul fast float %576, %568
  %578 = select i1 %110, float %577, float %568
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = add i32 %580, 0
  %582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %582, %dx.types.Handle %49, float %169, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = call float @dx.op.dot3.f32(i32 55, float %584, float %585, float %586, float %27, float %28, float %29)  ; Dot3(ax,ay,az,bx,by,bz)
  %588 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %587)  ; FMin(a,b)
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = add i32 %590, 0
  %592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %592, %dx.types.Handle %16, float %588, float %42, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = extractvalue %dx.types.ResRet.f32 %593, 2
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = shl i32 %598, 4
  %600 = and i32 %599, 32752
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = lshr i32 %598, 7
  %603 = and i32 %602, 32752
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = lshr i32 %598, 22
  %606 = shl nuw nsw i32 %605, 5
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = fmul fast float %601, %594
  %609 = fmul fast float %604, %595
  %610 = fmul fast float %607, %596
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %613 = fmul fast float %608, %612
  %614 = fmul fast float %609, %612
  %615 = fmul fast float %610, %612
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = lshr i32 %617, 22
  %619 = shl nuw nsw i32 %618, 5
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = fmul fast float %620, %613
  %622 = select i1 %110, float %621, float %613
  %623 = fsub fast float %622, %578
  %624 = fsub fast float %614, %569
  %625 = fsub fast float %615, %570
  %626 = fmul fast float %623, %39
  %627 = fmul fast float %624, %39
  %628 = fmul fast float %625, %39
  %629 = fadd fast float %626, %578
  %630 = fadd fast float %627, %569
  %631 = fadd fast float %628, %570
  %632 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  %634 = extractvalue %dx.types.ResRet.f32 %632, 1
  %635 = extractvalue %dx.types.ResRet.f32 %632, 2
  %636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.f32 %636, 1
  %638 = fmul fast float %629, %528
  %639 = fmul fast float %630, %529
  %640 = fmul fast float %631, %530
  %641 = call float @dx.op.dot3.f32(i32 55, float %638, float %639, float %640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %642 = select i1 %110, float 0.000000e+00, float %638
  %643 = select i1 %110, float %641, float %639
  %644 = select i1 %110, float 0.000000e+00, float %640
  %645 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %197, i32 %198, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = lshr i32 %646, 18
  %648 = uitofp i32 %647 to float
  %649 = fmul fast float %648, 0x3F4C00EBA0000000
  %650 = call float @dx.op.unary.f32(i32 21, float %649)  ; Exp(value)
  %651 = fadd fast float %650, -1.000000e+00
  %652 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %653 = extractvalue %dx.types.Dimensions %652, 0
  %654 = sitofp i32 %653 to float
  %655 = extractvalue %dx.types.Dimensions %652, 1
  %656 = sitofp i32 %655 to float
  %657 = fcmp fast oge float %195, %654
  %658 = fcmp fast oge float %196, %656
  %659 = or i1 %657, %658
  %660 = select i1 %659, float 0x4197782600000000, float %651
  %661 = icmp eq i32 %126, 3
  %662 = fcmp fast ogt float %48, %660
  %663 = and i1 %221, %662
  %664 = or i1 %661, %663
  %665 = icmp eq i32 %126, 2
  %666 = fcmp fast ole float %48, %660
  %667 = and i1 %665, %666
  %668 = or i1 %667, %664
  %669 = fmul fast float %629, %36
  %670 = fmul fast float %669, %633
  %671 = fmul fast float %670, %637
  %672 = fmul fast float %630, %36
  %673 = fmul fast float %672, %634
  %674 = fmul fast float %673, %637
  %675 = fmul fast float %631, %36
  %676 = fmul fast float %675, %635
  %677 = fmul fast float %676, %637
  %678 = fadd fast float %671, %642
  %679 = fadd fast float %643, %674
  %680 = fadd fast float %677, %644
  %681 = fmul fast float %678, %527
  %682 = fmul fast float %679, %527
  %683 = fmul fast float %680, %527
  %684 = and i32 %130, 1048576
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %777, label %686, !dx.controlflow.hints !68

; <label>:686                                     ; preds = %526
  %687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %688 = extractvalue %dx.types.CBufRet.f32 %687, 2
  %689 = extractvalue %dx.types.CBufRet.f32 %687, 3
  %690 = fmul fast float %688, %52
  %691 = fmul fast float %689, %53
  %692 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  %693 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %694 = select i1 %668, i32 2, i32 0
  %695 = or i32 %694, 1
  %696 = uitofp i32 %695 to float
  %697 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %692, float %693, float %696, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %698 = extractvalue %dx.types.ResRet.f32 %697, 0
  %699 = extractvalue %dx.types.ResRet.f32 %697, 1
  %700 = extractvalue %dx.types.ResRet.f32 %697, 2
  %701 = extractvalue %dx.types.ResRet.f32 %697, 3
  %702 = add nuw nsw i32 %694, 2
  %703 = uitofp i32 %702 to float
  %704 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %692, float %693, float %703, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = extractvalue %dx.types.ResRet.f32 %704, 1
  %707 = extractvalue %dx.types.ResRet.f32 %704, 2
  %708 = extractvalue %dx.types.ResRet.f32 %704, 3
  %709 = call float @dx.op.binary.f32(i32 35, float %699, float %700)  ; FMax(a,b)
  %710 = call float @dx.op.binary.f32(i32 35, float %698, float %709)  ; FMax(a,b)
  %711 = call float @dx.op.binary.f32(i32 35, float %710, float %701)  ; FMax(a,b)
  %712 = call float @dx.op.binary.f32(i32 36, float %706, float %707)  ; FMin(a,b)
  %713 = call float @dx.op.binary.f32(i32 36, float %705, float %712)  ; FMin(a,b)
  %714 = call float @dx.op.binary.f32(i32 36, float %713, float %708)  ; FMin(a,b)
  %715 = fmul fast float %711, 2.550000e+02
  %716 = fadd fast float %715, 0x3F70101020000000
  %717 = fptoui float %716 to i32
  %718 = fmul fast float %714, 2.550000e+02
  %719 = fadd fast float %718, 0x3F70101020000000
  %720 = fptoui float %719 to i32
  %721 = icmp ult i32 %717, %720
  br i1 %721, label %722, label %770

; <label>:722                                     ; preds = %686
  %723 = fcmp fast ogt float %47, 9.843750e-01
  %724 = fadd fast float %48, -4.000000e+00
  %725 = select i1 %723, float -4.000000e+00, float %724
  %726 = call float @dx.op.binary.f32(i32 35, float %725, float 0.000000e+00)  ; FMax(a,b)
  %727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %728 = extractvalue %dx.types.CBufRet.f32 %727, 0
  %729 = fadd fast float %728, %726
  %730 = extractvalue %dx.types.CBufRet.f32 %727, 2
  %731 = fmul fast float %729, %730
  %732 = call float @dx.op.unary.f32(i32 23, float %731)  ; Log(value)
  %733 = extractvalue %dx.types.CBufRet.f32 %727, 3
  %734 = fmul fast float %733, %732
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %737 = fmul fast float %734, %736
  %738 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %739 = uitofp i32 %717 to float
  %740 = uitofp i32 %720 to float
  %741 = fadd fast float %739, 5.000000e-01
  %742 = fadd fast float %740, 5.000000e-01
  %743 = fmul fast float %736, %741
  %744 = fmul fast float %736, %742
  %745 = fadd fast float %743, 0x3F0FFB4800000000
  %746 = fadd fast float %744, 0xBF0FFB4800000000
  %747 = call float @dx.op.binary.f32(i32 35, float %738, float %745)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 36, float %747, float %746)  ; FMin(a,b)
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 1
  %751 = extractvalue %dx.types.CBufRet.f32 %749, 2
  %752 = extractvalue %dx.types.CBufRet.f32 %749, 0
  %753 = select i1 %668, float %752, float 0.000000e+00
  %754 = fmul fast float %750, %748
  %755 = fadd fast float %753, %754
  %756 = fadd fast float %753, %751
  %757 = fsub fast float %750, %751
  %758 = fadd fast float %757, %753
  %759 = call float @dx.op.binary.f32(i32 35, float %755, float %756)  ; FMax(a,b)
  %760 = call float @dx.op.binary.f32(i32 36, float %759, float %758)  ; FMin(a,b)
  %761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %692, float %693, float %760, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  %763 = extractvalue %dx.types.ResRet.f32 %761, 1
  %764 = extractvalue %dx.types.ResRet.f32 %761, 2
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 1
  %767 = fmul fast float %766, %762
  %768 = fmul fast float %766, %763
  %769 = fmul fast float %766, %764
  br label %770

; <label>:770                                     ; preds = %722, %686
  %771 = phi float [ %767, %722 ], [ 1.000000e+00, %686 ]
  %772 = phi float [ %768, %722 ], [ 1.000000e+00, %686 ]
  %773 = phi float [ %769, %722 ], [ 1.000000e+00, %686 ]
  %774 = fmul fast float %771, %681
  %775 = fmul fast float %772, %682
  %776 = fmul fast float %773, %683
  br label %777

; <label>:777                                     ; preds = %770, %526
  %778 = phi float [ %774, %770 ], [ %681, %526 ]
  %779 = phi float [ %775, %770 ], [ %682, %526 ]
  %780 = phi float [ %776, %770 ], [ %683, %526 ]
  %781 = and i32 %130, 2097152
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %787, label %783, !dx.controlflow.hints !69

; <label>:783                                     ; preds = %777
  %784 = add i32 %127, 192
  %785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %784, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  br label %790

; <label>:787                                     ; preds = %777
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 3
  br label %790

; <label>:790                                     ; preds = %787, %783
  %791 = phi float [ %786, %783 ], [ %789, %787 ]
  br i1 %663, label %792, label %876

; <label>:792                                     ; preds = %790
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 2
  %795 = extractvalue %dx.types.CBufRet.f32 %793, 3
  %796 = fmul fast float %794, %52
  %797 = fmul fast float %795, %53
  %798 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  %799 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %800 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %798, float %799, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %801 = extractvalue %dx.types.ResRet.f32 %800, 0
  %802 = extractvalue %dx.types.ResRet.f32 %800, 1
  %803 = extractvalue %dx.types.ResRet.f32 %800, 2
  %804 = extractvalue %dx.types.ResRet.f32 %800, 3
  %805 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %798, float %799, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = extractvalue %dx.types.ResRet.f32 %805, 1
  %808 = extractvalue %dx.types.ResRet.f32 %805, 2
  %809 = extractvalue %dx.types.ResRet.f32 %805, 3
  %810 = call float @dx.op.binary.f32(i32 35, float %802, float %803)  ; FMax(a,b)
  %811 = call float @dx.op.binary.f32(i32 35, float %801, float %810)  ; FMax(a,b)
  %812 = call float @dx.op.binary.f32(i32 35, float %811, float %804)  ; FMax(a,b)
  %813 = call float @dx.op.binary.f32(i32 36, float %807, float %808)  ; FMin(a,b)
  %814 = call float @dx.op.binary.f32(i32 36, float %806, float %813)  ; FMin(a,b)
  %815 = call float @dx.op.binary.f32(i32 36, float %814, float %809)  ; FMin(a,b)
  %816 = fmul fast float %812, 2.550000e+02
  %817 = fadd fast float %816, 0x3F70101020000000
  %818 = fptoui float %817 to i32
  %819 = fmul fast float %815, 2.550000e+02
  %820 = fadd fast float %819, 0x3F70101020000000
  %821 = fptoui float %820 to i32
  %822 = icmp ult i32 %818, %821
  br i1 %822, label %823, label %865

; <label>:823                                     ; preds = %792
  %824 = fcmp fast ogt float %47, 9.843750e-01
  %825 = fadd fast float %48, -4.000000e+00
  %826 = select i1 %824, float -4.000000e+00, float %825
  %827 = call float @dx.op.binary.f32(i32 35, float %826, float 0.000000e+00)  ; FMax(a,b)
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %830 = fadd fast float %829, %827
  %831 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %832 = fmul fast float %830, %831
  %833 = call float @dx.op.unary.f32(i32 23, float %832)  ; Log(value)
  %834 = extractvalue %dx.types.CBufRet.f32 %828, 3
  %835 = fmul fast float %834, %833
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 2
  %838 = fmul fast float %835, %837
  %839 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  %840 = uitofp i32 %818 to float
  %841 = uitofp i32 %821 to float
  %842 = fadd fast float %840, 5.000000e-01
  %843 = fadd fast float %841, 5.000000e-01
  %844 = fmul fast float %837, %842
  %845 = fmul fast float %837, %843
  %846 = fadd fast float %844, 0x3F0FFB4800000000
  %847 = fadd fast float %845, 0xBF0FFB4800000000
  %848 = call float @dx.op.binary.f32(i32 35, float %839, float %846)  ; FMax(a,b)
  %849 = call float @dx.op.binary.f32(i32 36, float %848, float %847)  ; FMin(a,b)
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 1
  %852 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %853 = extractvalue %dx.types.CBufRet.f32 %850, 0
  %854 = fmul fast float %851, %849
  %855 = fadd fast float %853, %854
  %856 = fadd fast float %853, %852
  %857 = fsub fast float %851, %852
  %858 = fadd fast float %857, %853
  %859 = call float @dx.op.binary.f32(i32 35, float %855, float %856)  ; FMax(a,b)
  %860 = call float @dx.op.binary.f32(i32 36, float %859, float %858)  ; FMin(a,b)
  %861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %798, float %799, float %860, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %862 = extractvalue %dx.types.ResRet.f32 %861, 0
  %863 = extractvalue %dx.types.ResRet.f32 %861, 1
  %864 = extractvalue %dx.types.ResRet.f32 %861, 2
  br label %865

; <label>:865                                     ; preds = %823, %792
  %866 = phi float [ %862, %823 ], [ 1.000000e+00, %792 ]
  %867 = phi float [ %863, %823 ], [ 1.000000e+00, %792 ]
  %868 = phi float [ %864, %823 ], [ 1.000000e+00, %792 ]
  %869 = call float @dx.op.dot3.f32(i32 55, float %866, float %867, float %868, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %870 = select i1 %110, float %869, float %866
  %871 = select i1 %110, float %869, float %867
  %872 = select i1 %110, float 1.000000e+00, float %868
  %873 = fmul fast float %870, %778
  %874 = fmul fast float %871, %779
  %875 = fmul fast float %872, %780
  br label %876

; <label>:876                                     ; preds = %865, %790
  %877 = phi float [ %660, %865 ], [ %48, %790 ]
  %878 = phi float [ %873, %865 ], [ %778, %790 ]
  %879 = phi float [ %874, %865 ], [ %779, %790 ]
  %880 = phi float [ %875, %865 ], [ %780, %790 ]
  br i1 %668, label %1121, label %881

; <label>:881                                     ; preds = %876
  %882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %883 = extractvalue %dx.types.ResRet.f32 %882, 0
  %884 = extractvalue %dx.types.ResRet.f32 %882, 1
  %885 = extractvalue %dx.types.ResRet.f32 %882, 2
  %886 = call float @dx.op.dot3.f32(i32 55, float %883, float %884, float %885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %887 = select i1 %110, float %886, float %883
  %888 = select i1 %110, float %886, float %884
  %889 = select i1 %110, float 1.000000e+00, float %885
  %890 = fmul fast float %887, %878
  %891 = fmul fast float %888, %879
  %892 = fmul fast float %889, %880
  %893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.i32 %893, 0
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %1121, label %896, !dx.controlflow.hints !70

; <label>:896                                     ; preds = %881
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 2
  %899 = extractvalue %dx.types.CBufRet.f32 %897, 3
  %900 = fmul fast float %898, %52
  %901 = fmul fast float %899, %53
  %902 = fmul fast float %900, 2.000000e+00
  %903 = fmul fast float %901, 2.000000e+00
  %904 = fsub fast float 1.000000e+00, %902
  %905 = fsub fast float 1.000000e+00, %903
  %906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %907 = extractvalue %dx.types.CBufRet.f32 %906, 0
  %908 = extractvalue %dx.types.CBufRet.f32 %906, 1
  %909 = extractvalue %dx.types.CBufRet.f32 %906, 2
  %910 = fmul fast float %904, %907
  %911 = fmul fast float %904, %908
  %912 = fmul fast float %904, %909
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %915 = extractvalue %dx.types.CBufRet.f32 %913, 1
  %916 = extractvalue %dx.types.CBufRet.f32 %913, 2
  %917 = fmul fast float %905, %914
  %918 = fmul fast float %905, %915
  %919 = fmul fast float %905, %916
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 0
  %922 = extractvalue %dx.types.CBufRet.f32 %920, 1
  %923 = extractvalue %dx.types.CBufRet.f32 %920, 2
  %924 = fadd fast float %917, %921
  %925 = fadd fast float %924, %910
  %926 = fadd fast float %918, %922
  %927 = fadd fast float %926, %911
  %928 = fadd fast float %919, %923
  %929 = fadd fast float %928, %912
  %930 = fmul fast float %925, %877
  %931 = fmul fast float %927, %877
  %932 = fmul fast float %929, %877
  %933 = fmul fast float %930, %930
  %934 = fmul fast float %931, %931
  %935 = fadd fast float %933, %934
  %936 = fmul fast float %932, %932
  %937 = fadd fast float %935, %936
  %938 = call float @dx.op.unary.f32(i32 24, float %937)  ; Sqrt(value)
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 0
  %941 = fsub fast float %938, %940
  %942 = extractvalue %dx.types.CBufRet.f32 %939, 2
  %943 = fmul fast float %941, %942
  %944 = call float @dx.op.unary.f32(i32 7, float %943)  ; Saturate(value)
  %945 = fadd fast float %944, -5.000000e-01
  %946 = fmul fast float %945, 2.000000e+00
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 2
  %949 = call float @dx.op.binary.f32(i32 36, float %948, float %946)  ; FMin(a,b)
  %950 = fsub fast float -0.000000e+00, %948
  %951 = fcmp fast ogt float %949, %950
  br i1 %951, label %952, label %1121, !dx.controlflow.hints !71

; <label>:952                                     ; preds = %896
  %953 = fmul fast float %949, 5.000000e-01
  %954 = fadd fast float %953, 5.000000e-01
  %955 = call float @dx.op.unary.f32(i32 22, float %954)  ; Frc(value)
  %956 = call float @dx.op.unary.f32(i32 27, float %955)  ; Round_ni(value)
  %957 = call float @dx.op.unary.f32(i32 22, float %955)  ; Frc(value)
  %958 = fmul fast float %957, 2.000000e+00
  %959 = fadd fast float %958, -1.000000e+00
  %960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %900, float %901, float %956, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = extractvalue %dx.types.ResRet.f32 %960, 1
  %963 = extractvalue %dx.types.ResRet.f32 %960, 2
  %964 = extractvalue %dx.types.ResRet.f32 %960, 3
  %965 = fadd fast float %961, -5.000000e-01
  %966 = fadd fast float %963, -5.000000e-01
  %967 = fmul fast float %965, 0xBFD5555560000000
  %968 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %966, float %967)  ; FMad(a,b,c)
  %969 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %962, float 0.000000e+00)  ; FMad(a,b,c)
  %970 = fadd fast float %969, %964
  %971 = fmul fast float %965, -7.500000e-01
  %972 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %966, float %971)  ; FMad(a,b,c)
  %973 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %962, float 0.000000e+00)  ; FMad(a,b,c)
  %974 = fadd fast float %973, %964
  %975 = call float @dx.op.binary.f32(i32 35, float %968, float -1.000000e+00)  ; FMax(a,b)
  %976 = call float @dx.op.binary.f32(i32 35, float %970, float -1.000000e+00)  ; FMax(a,b)
  %977 = call float @dx.op.binary.f32(i32 35, float %972, float -1.000000e+00)  ; FMax(a,b)
  %978 = call float @dx.op.binary.f32(i32 35, float %974, float -1.000000e+00)  ; FMax(a,b)
  %979 = call float @dx.op.binary.f32(i32 36, float %975, float 1.000000e+00)  ; FMin(a,b)
  %980 = call float @dx.op.binary.f32(i32 36, float %976, float 1.000000e+00)  ; FMin(a,b)
  %981 = call float @dx.op.binary.f32(i32 36, float %977, float 1.000000e+00)  ; FMin(a,b)
  %982 = call float @dx.op.binary.f32(i32 36, float %978, float 1.000000e+00)  ; FMin(a,b)
  %983 = fcmp fast olt float %979, 0x3FEFFF8020000000
  br i1 %983, label %984, label %1099, !dx.controlflow.hints !72

; <label>:984                                     ; preds = %952
  %985 = extractvalue %dx.types.CBufRet.f32 %947, 3
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %988 = extractvalue %dx.types.CBufRet.f32 %986, 1
  %989 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %990 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %991 = fsub fast float %987, %979
  %992 = fsub fast float %988, %980
  %993 = fsub fast float %989, %981
  %994 = fsub fast float %990, %982
  %995 = fmul fast float %991, %985
  %996 = fmul fast float %992, %985
  %997 = fmul fast float %993, %985
  %998 = fmul fast float %994, %985
  %999 = fadd fast float %995, %979
  %1000 = fadd fast float %996, %980
  %1001 = fsub fast float -0.000000e+00, %1000
  %1002 = fadd fast float %997, %981
  %1003 = fadd fast float %998, %982
  %1004 = fmul fast float %999, %999
  %1005 = fsub fast float %1000, %1004
  %1006 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1005)  ; FMax(a,b)
  %1007 = fdiv fast float 1.000000e+00, %1006
  %1008 = fmul fast float %1000, %999
  %1009 = fsub fast float %1002, %1008
  %1010 = fsub fast float %959, %999
  %1011 = fmul fast float %959, %959
  %1012 = fsub fast float %1011, %1000
  %1013 = fmul fast float %1010, %1007
  %1014 = fmul fast float %1013, %1009
  %1015 = fsub fast float %1012, %1014
  %1016 = fmul fast float %1000, %1000
  %1017 = fsub fast float %1003, %1016
  %1018 = fmul fast float %1009, %1009
  %1019 = fmul fast float %1018, %1007
  %1020 = fsub fast float %1017, %1019
  %1021 = fdiv fast float %1015, %1020
  %1022 = fmul fast float %1009, %1021
  %1023 = fsub fast float %1010, %1022
  %1024 = fmul fast float %1023, %1007
  %1025 = fmul fast float %1024, %999
  %1026 = fsub fast float 1.000000e+00, %1025
  %1027 = fmul fast float %1000, %1021
  %1028 = fsub fast float %1026, %1027
  %1029 = fmul fast float %1024, %1024
  %1030 = fmul fast float %1021, 4.000000e+00
  %1031 = fmul fast float %1030, %1028
  %1032 = fsub fast float %1029, %1031
  %1033 = call float @dx.op.unary.f32(i32 24, float %1032)  ; Sqrt(value)
  %1034 = fcmp fast oge float %1024, 0.000000e+00
  %1035 = fsub fast float -0.000000e+00, %1033
  %1036 = select i1 %1034, float %1035, float %1033
  %1037 = fsub fast float %1036, %1024
  %1038 = fdiv fast float %1037, %1021
  %1039 = fdiv fast float %1028, %1037
  %1040 = fmul fast float %1038, 5.000000e-01
  %1041 = fmul fast float %1039, 2.000000e+00
  %1042 = select i1 %1034, float %1040, float %1041
  %1043 = select i1 %1034, float %1041, float %1040
  %1044 = call float @dx.op.binary.f32(i32 35, float %1042, float %1043)  ; FMax(a,b)
  %1045 = call float @dx.op.binary.f32(i32 36, float %1042, float %1043)  ; FMin(a,b)
  %1046 = fcmp fast ogt float %959, %1045
  br i1 %1046, label %1047, label %1057

; <label>:1047                                    ; preds = %984
  %1048 = fsub fast float %959, %1045
  %1049 = fsub fast float %1044, %1045
  %1050 = fmul fast float %1048, %1049
  %1051 = fmul fast float %1044, %959
  %1052 = fadd fast float %1044, %959
  %1053 = fmul fast float %1052, %999
  %1054 = fadd fast float %1051, %1000
  %1055 = fsub fast float %1054, %1053
  %1056 = fdiv fast float %1055, %1050
  br label %1057

; <label>:1057                                    ; preds = %1047, %984
  %1058 = phi float [ %1056, %1047 ], [ 0.000000e+00, %984 ]
  %1059 = fcmp fast ogt float %959, %1044
  %1060 = fsub fast float %959, %1044
  br i1 %1059, label %1061, label %1071

; <label>:1061                                    ; preds = %1057
  %1062 = fsub fast float %1044, %1045
  %1063 = fmul fast float %1062, %1060
  %1064 = fmul fast float %1045, %959
  %1065 = fadd fast float %1045, %959
  %1066 = fmul fast float %1065, %999
  %1067 = fsub fast float %1001, %1064
  %1068 = fadd fast float %1067, %1066
  %1069 = fdiv fast float %1068, %1063
  %1070 = fadd fast float %1069, %1058
  br label %1071

; <label>:1071                                    ; preds = %1061, %1057
  %1072 = phi float [ %1070, %1061 ], [ %1058, %1057 ]
  %1073 = fsub fast float %959, %1045
  %1074 = fmul fast float %1073, %1060
  %1075 = fmul fast float %1045, %1044
  %1076 = fadd fast float %1045, %1044
  %1077 = fmul fast float %1076, %999
  %1078 = fadd fast float %1075, %1000
  %1079 = fsub fast float %1078, %1077
  %1080 = fdiv fast float %1079, %1074
  %1081 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1082 = fcmp fast oeq float %791, 0.000000e+00
  %1083 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %1084 = fcmp fast oeq float %1083, 0.000000e+00
  %1085 = or i1 %1082, %1084
  %1086 = fmul fast float %1083, 2.000000e+00
  %1087 = fadd fast float %948, %949
  %1088 = fdiv fast float %1087, %1086
  %1089 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  %1090 = fmul fast float %1089, 2.000000e+00
  %1091 = fsub fast float 3.000000e+00, %1090
  %1092 = fmul fast float %1089, %1089
  %1093 = fmul fast float %1092, %1091
  %1094 = select i1 %1085, float 1.000000e+00, float %1093
  %1095 = fmul fast float %1080, %791
  %1096 = fadd fast float %1081, %1095
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1098 = fmul fast float %1094, %1097
  br label %1099

; <label>:1099                                    ; preds = %1071, %952
  %1100 = phi float [ %1098, %1071 ], [ 0.000000e+00, %952 ]
  %1101 = fsub fast float 1.000000e+00, %1100
  %1102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %900, float %901, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1103 = extractvalue %dx.types.ResRet.f32 %1102, 0
  %1104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.i32 %1104, 2
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1112, label %1107

; <label>:1107                                    ; preds = %1099
  %1108 = call float @dx.op.unary.f32(i32 7, float %1100)  ; Saturate(value)
  %1109 = fadd fast float %1103, -1.000000e+00
  %1110 = fmul fast float %1108, %1109
  %1111 = fadd fast float %1110, 1.000000e+00
  br label %1112

; <label>:1112                                    ; preds = %1107, %1099
  %1113 = phi float [ %1111, %1107 ], [ %1101, %1099 ]
  %1114 = call float @dx.op.binary.f32(i32 35, float %1103, float %1113)  ; FMax(a,b)
  %1115 = call float @dx.op.dot3.f32(i32 55, float %1114, float %1114, float %1114, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1116 = select i1 %110, float %1115, float %1114
  %1117 = select i1 %110, float 1.000000e+00, float %1114
  %1118 = fmul fast float %1116, %890
  %1119 = fmul fast float %1116, %891
  %1120 = fmul fast float %1117, %892
  br label %1121

; <label>:1121                                    ; preds = %1112, %896, %881, %876
  %1122 = phi float [ %878, %876 ], [ %890, %881 ], [ %1118, %1112 ], [ %890, %896 ]
  %1123 = phi float [ %879, %876 ], [ %891, %881 ], [ %1119, %1112 ], [ %891, %896 ]
  %1124 = phi float [ %880, %876 ], [ %892, %881 ], [ %1120, %1112 ], [ %892, %896 ]
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 2
  %1127 = extractvalue %dx.types.CBufRet.f32 %1125, 3
  %1128 = fmul fast float %1126, %52
  %1129 = fmul fast float %1127, %53
  %1130 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  %1131 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  %1132 = select i1 %668, i32 2, i32 0
  %1133 = or i32 %1132, 1
  %1134 = uitofp i32 %1133 to float
  %1135 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1130, float %1131, float %1134, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.ResRet.f32 %1135, 2
  %1139 = extractvalue %dx.types.ResRet.f32 %1135, 3
  %1140 = add nuw nsw i32 %1132, 2
  %1141 = uitofp i32 %1140 to float
  %1142 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1130, float %1131, float %1141, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  %1144 = extractvalue %dx.types.ResRet.f32 %1142, 1
  %1145 = extractvalue %dx.types.ResRet.f32 %1142, 2
  %1146 = extractvalue %dx.types.ResRet.f32 %1142, 3
  %1147 = call float @dx.op.binary.f32(i32 35, float %1137, float %1138)  ; FMax(a,b)
  %1148 = call float @dx.op.binary.f32(i32 35, float %1136, float %1147)  ; FMax(a,b)
  %1149 = call float @dx.op.binary.f32(i32 35, float %1148, float %1139)  ; FMax(a,b)
  %1150 = call float @dx.op.binary.f32(i32 36, float %1144, float %1145)  ; FMin(a,b)
  %1151 = call float @dx.op.binary.f32(i32 36, float %1143, float %1150)  ; FMin(a,b)
  %1152 = call float @dx.op.binary.f32(i32 36, float %1151, float %1146)  ; FMin(a,b)
  %1153 = fmul fast float %1149, 2.550000e+02
  %1154 = fadd fast float %1153, 0x3F70101020000000
  %1155 = fptoui float %1154 to i32
  %1156 = fmul fast float %1152, 2.550000e+02
  %1157 = fadd fast float %1156, 0x3F70101020000000
  %1158 = fptoui float %1157 to i32
  %1159 = icmp ult i32 %1155, %1158
  br i1 %1159, label %1160, label %1203

; <label>:1160                                    ; preds = %1121
  %1161 = fcmp fast ogt float %47, 9.843750e-01
  %1162 = fadd fast float %877, -4.000000e+00
  %1163 = select i1 %1161, float -4.000000e+00, float %1162
  %1164 = call float @dx.op.binary.f32(i32 35, float %1163, float 0.000000e+00)  ; FMax(a,b)
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 0
  %1167 = fadd fast float %1166, %1164
  %1168 = extractvalue %dx.types.CBufRet.f32 %1165, 2
  %1169 = fmul fast float %1167, %1168
  %1170 = call float @dx.op.unary.f32(i32 23, float %1169)  ; Log(value)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1165, 3
  %1172 = fmul fast float %1171, %1170
  %1173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1173, 2
  %1175 = fmul fast float %1172, %1174
  %1176 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  %1177 = uitofp i32 %1155 to float
  %1178 = uitofp i32 %1158 to float
  %1179 = fadd fast float %1177, 5.000000e-01
  %1180 = fadd fast float %1178, 5.000000e-01
  %1181 = fmul fast float %1174, %1179
  %1182 = fmul fast float %1174, %1180
  %1183 = fadd fast float %1181, 0x3F0FFB4800000000
  %1184 = fadd fast float %1182, 0xBF0FFB4800000000
  %1185 = call float @dx.op.binary.f32(i32 35, float %1176, float %1183)  ; FMax(a,b)
  %1186 = call float @dx.op.binary.f32(i32 36, float %1185, float %1184)  ; FMin(a,b)
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 1
  %1189 = extractvalue %dx.types.CBufRet.f32 %1187, 2
  %1190 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1191 = select i1 %668, float %1190, float 0.000000e+00
  %1192 = fmul fast float %1188, %1186
  %1193 = fadd fast float %1191, %1192
  %1194 = fadd fast float %1191, %1189
  %1195 = fsub fast float %1188, %1189
  %1196 = fadd fast float %1195, %1191
  %1197 = call float @dx.op.binary.f32(i32 35, float %1193, float %1194)  ; FMax(a,b)
  %1198 = call float @dx.op.binary.f32(i32 36, float %1197, float %1196)  ; FMin(a,b)
  %1199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1130, float %1131, float %1198, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.ResRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.ResRet.f32 %1199, 2
  br label %1203

; <label>:1203                                    ; preds = %1160, %1121
  %1204 = phi float [ %1200, %1160 ], [ 1.000000e+00, %1121 ]
  %1205 = phi float [ %1201, %1160 ], [ 1.000000e+00, %1121 ]
  %1206 = phi float [ %1202, %1160 ], [ 1.000000e+00, %1121 ]
  %1207 = call float @dx.op.dot3.f32(i32 55, float %1204, float %1205, float %1206, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1208 = select i1 %110, float %1207, float %1204
  %1209 = select i1 %110, float %1207, float %1205
  %1210 = fmul fast float %1208, %1122
  %1211 = fmul fast float %1209, %1123
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 0
  br i1 %110, label %1214, label %1217

; <label>:1214                                    ; preds = %1203
  %1215 = fadd fast float %1210, %1211
  %1216 = fmul fast float %1213, %1215
  br label %1227

; <label>:1217                                    ; preds = %1203
  %1218 = fmul fast float %1206, %1124
  %1219 = fmul fast float %1213, %1210
  %1220 = fmul fast float %1213, %1211
  %1221 = fmul fast float %1218, %1213
  %1222 = call float @dx.op.binary.f32(i32 35, float %1220, float %1221)  ; FMax(a,b)
  %1223 = call float @dx.op.binary.f32(i32 35, float %1219, float %1222)  ; FMax(a,b)
  %1224 = call float @dx.op.binary.f32(i32 35, float %1223, float 0.000000e+00)  ; FMax(a,b)
  %1225 = fcmp fast ugt float %1224, 0x3F10000000000000
  br i1 %1225, label %1227, label %1226

; <label>:1226                                    ; preds = %1217
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1227

; <label>:1227                                    ; preds = %1226, %1217, %1214
  %1228 = phi float [ %1216, %1214 ], [ %1219, %1226 ], [ %1219, %1217 ]
  %1229 = phi float [ 0.000000e+00, %1214 ], [ %1220, %1226 ], [ %1220, %1217 ]
  %1230 = phi float [ 0.000000e+00, %1214 ], [ %1221, %1226 ], [ %1221, %1217 ]
  %1231 = fadd fast float %467, 0x3FE3C6EF40000000
  %1232 = call float @dx.op.unary.f32(i32 22, float %1231)  ; Frc(value)
  %1233 = call float @dx.op.unary.f32(i32 23, float %1228)  ; Log(value)
  %1234 = fadd fast float %1233, -7.000000e+00
  %1235 = call float @dx.op.unary.f32(i32 21, float %1234)  ; Exp(value)
  %1236 = fmul fast float %1232, 2.000000e+00
  %1237 = fadd fast float %1236, -1.000000e+00
  %1238 = fmul fast float %1235, %1237
  %1239 = fcmp fast ogt float %1228, 0.000000e+00
  %1240 = select i1 %1239, float %1238, float 0.000000e+00
  %1241 = fadd fast float %1240, %1228
  %1242 = fadd fast float %467, 0x3FF3C6EF40000000
  %1243 = call float @dx.op.unary.f32(i32 22, float %1242)  ; Frc(value)
  %1244 = call float @dx.op.unary.f32(i32 23, float %1229)  ; Log(value)
  %1245 = fadd fast float %1244, -7.000000e+00
  %1246 = call float @dx.op.unary.f32(i32 21, float %1245)  ; Exp(value)
  %1247 = fmul fast float %1243, 2.000000e+00
  %1248 = fadd fast float %1247, -1.000000e+00
  %1249 = fmul fast float %1246, %1248
  %1250 = fcmp fast ogt float %1229, 0.000000e+00
  %1251 = select i1 %1250, float %1249, float 0.000000e+00
  %1252 = fadd fast float %1251, %1229
  %1253 = fadd fast float %467, 0x3FFDAA66E0000000
  %1254 = call float @dx.op.unary.f32(i32 22, float %1253)  ; Frc(value)
  %1255 = call float @dx.op.unary.f32(i32 23, float %1230)  ; Log(value)
  %1256 = fadd fast float %1255, -6.000000e+00
  %1257 = call float @dx.op.unary.f32(i32 21, float %1256)  ; Exp(value)
  %1258 = fmul fast float %1254, 2.000000e+00
  %1259 = fadd fast float %1258, -1.000000e+00
  %1260 = fmul fast float %1257, %1259
  %1261 = fcmp fast ogt float %1230, 0.000000e+00
  %1262 = select i1 %1261, float %1260, float 0.000000e+00
  %1263 = fadd fast float %1262, %1230
  %1264 = select i1 %110, float %1229, float %1252
  %1265 = select i1 %110, float %1230, float %1263
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1266 = call float @dx.op.binary.f32(i32 36, float %1241, float 3.225500e+04)  ; FMin(a,b)
  %1267 = call float @dx.op.binary.f32(i32 36, float %1264, float 3.225500e+04)  ; FMin(a,b)
  %1268 = call float @dx.op.binary.f32(i32 36, float %1265, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1266)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1267)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1268)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[37 x i32] [i32 35, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !61}
!35 = !{!36, !57, null}
!36 = !{!37, !40, !42, !44, !47, !49, !51, !53, !54, !56}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 11}
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
!54 = !{i32 8, !"COLOR", i8 5, i8 0, !48, i8 1, i32 1, i8 3, i32 8, i8 0, !55}
!55 = !{i32 3, i32 5}
!56 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!57 = !{!58, !59}
!58 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!59 = !{i32 1, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!60 = !{i32 1}
!61 = !{i32 0, i64 24}
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

