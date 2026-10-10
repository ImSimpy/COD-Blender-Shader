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
; shader hash: f767695e4b2dca54c83367db7b4abdce
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
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 26, 27, 28, 29, 30, 31, 32, 34 }
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
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = fmul fast float %49, %43
  %51 = fmul fast float %49, %44
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %55 = fmul fast float %50, 2.000000e+00
  %56 = fmul fast float %55, %53
  %57 = fmul fast float %51, 2.000000e+00
  %58 = fmul fast float %57, %54
  %59 = fsub fast float 1.000000e+00, %56
  %60 = fsub fast float 1.000000e+00, %58
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %65 = fmul fast float %59, %62
  %66 = fmul fast float %59, %63
  %67 = fmul fast float %59, %64
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fmul fast float %60, %69
  %73 = fmul fast float %60, %70
  %74 = fmul fast float %60, %71
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fadd fast float %72, %76
  %80 = fadd fast float %79, %65
  %81 = fadd fast float %73, %77
  %82 = fadd fast float %81, %66
  %83 = fadd fast float %74, %78
  %84 = fadd fast float %83, %67
  %85 = fmul fast float %80, %46
  %86 = fmul fast float %82, %46
  %87 = fmul fast float %84, %46
  %88 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.i32 %88, 3
  %90 = and i32 %89, 3
  %91 = icmp ne i32 %90, 0
  %92 = and i32 %89, 4
  %93 = icmp ne i32 %92, 0
  %94 = and i1 %91, %93
  br i1 %94, label %95, label %104

; <label>:95                                      ; preds = %0
  %96 = fmul fast float %54, %51
  %97 = fmul fast float %53, %50
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
  %112 = fmul fast float %110, %50
  %113 = fmul fast float %111, %51
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
  %144 = fmul fast float %142, %50
  %145 = fmul fast float %143, %51
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
  %165 = phi float [ %40, %137 ], [ %144, %150 ], [ %163, %158 ], [ %144, %156 ]
  %166 = phi float [ %41, %137 ], [ %155, %150 ], [ %145, %158 ], [ %145, %156 ]
  %167 = fadd fast float %40, %37
  %168 = fadd fast float %41, %38
  %169 = add i32 %22, 72
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = bitcast i32 %171 to float
  %174 = bitcast i32 %172 to float
  %175 = fmul fast float %173, %40
  %176 = fmul fast float %174, %41
  %177 = call float @dx.op.unary.f32(i32 22, float %175)  ; Frc(value)
  %178 = call float @dx.op.unary.f32(i32 22, float %176)  ; Frc(value)
  %179 = and i32 %128, 16
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %180, float 1.000000e+00, float %42
  %182 = icmp eq i32 %179, 0
  br i1 %182, label %202, label %183, !dx.controlflow.hints !62

; <label>:183                                     ; preds = %164
  %184 = add i32 %125, 64
  %185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.f32 %185, 0
  %187 = fadd fast float %186, 1.000000e+00
  %188 = fmul fast float %187, %42
  %189 = fsub fast float %188, %186
  %190 = fsub fast float %187, %189
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = fsub fast float 1.000000e+00, %188
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = fsub fast float %191, %193
  %195 = fsub fast float %181, %193
  %196 = fdiv fast float %195, %194
  %197 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %198 = fmul fast float %197, 2.000000e+00
  %199 = fsub fast float 3.000000e+00, %198
  %200 = fmul fast float %197, %197
  %201 = fmul fast float %200, %199
  br label %202

; <label>:202                                     ; preds = %183, %164
  %203 = phi float [ %201, %183 ], [ %181, %164 ]
  %204 = fcmp fast ogt float %203, 0.000000e+00
  br i1 %204, label %206, label %205

; <label>:205                                     ; preds = %202
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %206

; <label>:206                                     ; preds = %205, %202
  %207 = call float @dx.op.unary.f32(i32 7, float %203)  ; Saturate(value)
  %208 = fmul fast float %50, 5.000000e-01
  %209 = fmul fast float %51, 5.000000e-01
  %210 = fptosi float %208 to i32
  %211 = fptosi float %209 to i32
  %212 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = lshr i32 %213, 18
  %215 = uitofp i32 %214 to float
  %216 = fmul fast float %215, 0x3F4C00EBA0000000
  %217 = call float @dx.op.unary.f32(i32 21, float %216)  ; Exp(value)
  %218 = fadd fast float %217, -1.000000e+00
  %219 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %220 = extractvalue %dx.types.Dimensions %219, 0
  %221 = sitofp i32 %220 to float
  %222 = extractvalue %dx.types.Dimensions %219, 1
  %223 = sitofp i32 %222 to float
  %224 = fcmp fast oge float %208, %221
  %225 = fcmp fast oge float %209, %223
  %226 = or i1 %224, %225
  %227 = select i1 %226, float 0x4197782600000000, float %218
  %228 = fsub fast float %227, %46
  %229 = fcmp fast ogt float %228, 0.000000e+00
  %230 = and i32 %124, -2
  %231 = icmp eq i32 %230, 2
  %232 = and i1 %231, %229
  %233 = xor i1 %229, true
  %234 = icmp eq i32 %124, 1
  %235 = and i1 %234, %233
  %236 = or i1 %232, %235
  %237 = and i32 %128, 262144
  %238 = icmp ne i32 %237, 0
  %239 = and i1 %238, %236
  %240 = xor i1 %236, true
  %241 = and i32 %128, 131072
  %242 = icmp ne i32 %241, 0
  %243 = and i1 %242, %240
  %244 = or i1 %239, %243
  br i1 %244, label %245, label %246

; <label>:245                                     ; preds = %206
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %246

; <label>:246                                     ; preds = %245, %206
  %247 = and i32 %128, 32
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %498, label %249, !dx.controlflow.hints !63

; <label>:249                                     ; preds = %246
  %250 = add i32 %125, 80
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = extractvalue %dx.types.ResRet.f32 %251, 3
  %256 = add i32 %125, 96
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = add i32 %125, 112
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = extractvalue %dx.types.ResRet.f32 %262, 3
  %267 = add i32 %125, 128
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = extractvalue %dx.types.ResRet.f32 %268, 3
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 4096
  %276 = icmp ne i32 %275, 0
  %277 = fcmp fast une float %260, 0.000000e+00
  %278 = and i32 %274, 64
  %279 = icmp ne i32 %278, 0
  %280 = and i32 %274, 128
  %281 = icmp eq i32 %280, 0
  %282 = and i32 %274, 2048
  %283 = icmp eq i32 %282, 0
  %284 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %285 = extractvalue %dx.types.Dimensions %284, 0
  %286 = sitofp i32 %285 to float
  %287 = extractvalue %dx.types.Dimensions %284, 1
  %288 = sitofp i32 %287 to float
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 2
  %291 = extractvalue %dx.types.CBufRet.f32 %289, 3
  %292 = fmul fast float %290, %50
  %293 = fmul fast float %291, %51
  %294 = fmul fast float %292, %286
  %295 = fmul fast float %293, %288
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %298 = fsub fast float -0.000000e+00, %297
  %299 = fptoui float %298 to i32
  %300 = fptoui float %294 to i32
  %301 = fptoui float %295 to i32
  %302 = and i32 %299, 31
  %303 = lshr i32 %300, %302
  %304 = lshr i32 %301, %302
  %305 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %299, i32 %303, i32 %304, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = fcmp fast ogt float %306, -1.000000e+00
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %310 = select i1 %307, float %309, float 1.000000e+00
  %311 = fadd fast float %306, 1.000000e+00
  %312 = fmul fast float %310, %311
  %313 = call float @dx.op.unary.f32(i32 6, float %312)  ; FAbs(value)
  %314 = extractvalue %dx.types.CBufRet.f32 %308, 3
  %315 = fcmp fast oge float %313, %314
  %316 = select i1 %315, float 0x4197782600000000, float %313
  br i1 %283, label %394, label %317, !dx.controlflow.hints !64

; <label>:317                                     ; preds = %249
  %318 = fmul fast float %55, %290
  %319 = fmul fast float %57, %291
  %320 = fsub fast float 1.000000e+00, %318
  %321 = fsub fast float 1.000000e+00, %319
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %325 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %326 = fmul fast float %320, %323
  %327 = fmul fast float %320, %324
  %328 = fmul fast float %320, %325
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %333 = fmul fast float %321, %330
  %334 = fmul fast float %321, %331
  %335 = fmul fast float %321, %332
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = fadd fast float %333, %337
  %341 = fadd fast float %340, %326
  %342 = fadd fast float %334, %338
  %343 = fadd fast float %342, %327
  %344 = fadd fast float %335, %339
  %345 = fadd fast float %344, %328
  %346 = fmul fast float %341, %316
  %347 = fmul fast float %343, %316
  %348 = fmul fast float %345, %316
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %353 = fsub fast float %350, %23
  %354 = fadd fast float %353, %346
  %355 = fsub fast float %351, %24
  %356 = fadd fast float %355, %347
  %357 = fsub fast float %352, %25
  %358 = fadd fast float %357, %348
  %359 = fmul fast float %26, %26
  %360 = call float @dx.op.dot3.f32(i32 55, float %354, float %356, float %358, float %354, float %356, float %358)  ; Dot3(ax,ay,az,bx,by,bz)
  %361 = fsub fast float %359, %360
  %362 = fmul fast float %259, %359
  %363 = fmul fast float %258, %359
  %364 = fcmp fast olt float %361, %362
  %365 = fcmp fast ogt float %361, %363
  %366 = or i1 %364, %365
  %367 = select i1 %366, float 0.000000e+00, float %361
  %368 = fsub fast float %258, %259
  %369 = fmul fast float %368, %359
  %370 = fsub fast float %367, %362
  %371 = fdiv fast float %370, %369
  %372 = call float @dx.op.unary.f32(i32 7, float %371)  ; Saturate(value)
  %373 = fmul fast float %372, 2.000000e+00
  %374 = fsub fast float 3.000000e+00, %373
  %375 = fmul fast float %372, %372
  %376 = fmul fast float %375, %374
  %377 = fsub fast float %266, %272
  %378 = fmul fast float %376, %377
  %379 = fadd fast float %378, %272
  %380 = fmul fast float %263, %27
  %381 = fmul fast float %264, %28
  %382 = fmul fast float %265, %29
  %383 = fsub fast float %380, %269
  %384 = fsub fast float %381, %270
  %385 = fsub fast float %382, %271
  %386 = fmul fast float %376, %383
  %387 = fmul fast float %376, %384
  %388 = fmul fast float %376, %385
  %389 = fadd fast float %386, %269
  %390 = fadd fast float %387, %270
  %391 = fadd fast float %388, %271
  %392 = fmul fast float %252, %252
  %393 = fmul fast float %392, %367
  br label %489

; <label>:394                                     ; preds = %249
  %395 = and i32 %274, 256
  %396 = icmp eq i32 %395, 0
  %397 = fsub fast float %316, %46
  br i1 %396, label %446, label %398

; <label>:398                                     ; preds = %394
  %399 = fadd fast float %258, %46
  %400 = fcmp fast olt float %316, %46
  %401 = fcmp fast ogt float %316, %399
  %402 = or i1 %400, %401
  %403 = select i1 %402, float 0.000000e+00, float %397
  %404 = call float @dx.op.unary.f32(i32 83, float %316)  ; DerivCoarseX(value)
  %405 = call float @dx.op.unary.f32(i32 84, float %316)  ; DerivCoarseY(value)
  %406 = fmul fast float %404, %404
  %407 = fmul fast float %405, %405
  %408 = fadd fast float %407, %406
  %409 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %410 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %411 = fmul fast float %410, %409
  %412 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %413 = fmul fast float %412, %259
  %414 = fdiv fast float %397, %413
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %416 = fmul fast float %415, 2.000000e+00
  %417 = fsub fast float 3.000000e+00, %416
  %418 = fmul fast float %415, %415
  %419 = fmul fast float %418, %417
  %420 = fsub fast float %316, %399
  %421 = fadd fast float %420, %413
  %422 = fdiv fast float %421, %413
  %423 = call float @dx.op.unary.f32(i32 7, float %422)  ; Saturate(value)
  %424 = fmul fast float %423, 2.000000e+00
  %425 = fsub fast float 3.000000e+00, %424
  %426 = fmul fast float %423, %423
  %427 = fmul fast float %426, %425
  %428 = fsub fast float %419, %427
  %429 = fsub fast float %266, %272
  %430 = fmul fast float %428, %429
  %431 = fadd fast float %430, %272
  %432 = fmul fast float %263, %27
  %433 = fmul fast float %264, %28
  %434 = fmul fast float %265, %29
  %435 = fsub fast float %432, %269
  %436 = fsub fast float %433, %270
  %437 = fsub fast float %434, %271
  %438 = fmul fast float %428, %435
  %439 = fmul fast float %428, %436
  %440 = fmul fast float %428, %437
  %441 = fadd fast float %438, %269
  %442 = fadd fast float %439, %270
  %443 = fadd fast float %440, %271
  %444 = fmul fast float %403, %252
  %445 = call float @dx.op.unary.f32(i32 6, float %444)  ; FAbs(value)
  br label %489

; <label>:446                                     ; preds = %394
  br i1 %277, label %447, label %460

; <label>:447                                     ; preds = %446
  %448 = fdiv fast float 5.000000e+01, %26
  %449 = select i1 %279, float %448, float 1.000000e+00
  %450 = fmul fast float %449, %252
  %451 = fmul fast float %177, 2.000000e+00
  %452 = fmul fast float %178, 2.000000e+00
  %453 = fadd fast float %451, -1.000000e+00
  %454 = fadd fast float %452, -1.000000e+00
  %455 = call float @dx.op.dot2.f32(i32 54, float %453, float %454, float %453, float %454)  ; Dot2(ax,ay,bx,by)
  %456 = fmul fast float %260, %26
  %457 = fmul fast float %456, %455
  %458 = fsub fast float %397, %457
  %459 = fmul fast float %450, %458
  br label %489

; <label>:460                                     ; preds = %446
  br i1 %281, label %481, label %461

; <label>:461                                     ; preds = %460
  %462 = fmul fast float %26, 0x3F947AE140000000
  %463 = select i1 %279, float %462, float 1.000000e+00
  %464 = fdiv fast float 1.000000e+00, %463
  %465 = fmul fast float %463, %253
  %466 = fmul fast float %463, %254
  %467 = fmul fast float %464, %255
  %468 = call float @dx.op.unary.f32(i32 6, float %397)  ; FAbs(value)
  %469 = fcmp fast olt float %468, %465
  br i1 %469, label %470, label %474, !dx.controlflow.hints !65

; <label>:470                                     ; preds = %461
  %471 = fmul fast float %464, %252
  %472 = fmul fast float %471, %468
  %473 = call float @dx.op.unary.f32(i32 6, float %472)  ; FAbs(value)
  br label %489

; <label>:474                                     ; preds = %461
  %475 = fcmp fast ogt float %468, %466
  br i1 %475, label %476, label %489

; <label>:476                                     ; preds = %474
  %477 = fsub fast float %468, %466
  %478 = fmul fast float %467, %477
  %479 = call float @dx.op.unary.f32(i32 6, float %478)  ; FAbs(value)
  %480 = fsub fast float 1.000000e+00, %479
  br label %489

; <label>:481                                     ; preds = %460
  %482 = fdiv fast float 5.000000e+01, %26
  %483 = select i1 %279, float %482, float 1.000000e+00
  %484 = fmul fast float %483, %252
  %485 = call float @dx.op.unary.f32(i32 6, float %228)  ; FAbs(value)
  %486 = select i1 %276, float %485, float 0x47EFFFFFE0000000
  %487 = call float @dx.op.binary.f32(i32 36, float %397, float %486)  ; FMin(a,b)
  %488 = fmul fast float %484, %487
  br label %489

; <label>:489                                     ; preds = %481, %476, %474, %470, %447, %398, %317
  %490 = phi float [ %393, %317 ], [ %445, %398 ], [ %459, %447 ], [ %488, %481 ], [ %473, %470 ], [ %480, %476 ], [ %468, %474 ]
  %491 = phi float [ %389, %317 ], [ %441, %398 ], [ %27, %447 ], [ %27, %481 ], [ %27, %470 ], [ %27, %476 ], [ %27, %474 ]
  %492 = phi float [ %390, %317 ], [ %442, %398 ], [ %28, %447 ], [ %28, %481 ], [ %28, %470 ], [ %28, %476 ], [ %28, %474 ]
  %493 = phi float [ %391, %317 ], [ %443, %398 ], [ %29, %447 ], [ %29, %481 ], [ %29, %470 ], [ %29, %476 ], [ %29, %474 ]
  %494 = phi float [ %379, %317 ], [ %431, %398 ], [ 1.000000e+00, %447 ], [ 1.000000e+00, %481 ], [ 1.000000e+00, %470 ], [ 1.000000e+00, %476 ], [ 1.000000e+00, %474 ]
  %495 = call float @dx.op.unary.f32(i32 7, float %490)  ; Saturate(value)
  %496 = fmul fast float %494, %207
  %497 = fmul fast float %496, %495
  br label %498

; <label>:498                                     ; preds = %489, %246
  %499 = phi float [ %497, %489 ], [ %207, %246 ]
  %500 = phi float [ %491, %489 ], [ %27, %246 ]
  %501 = phi float [ %492, %489 ], [ %28, %246 ]
  %502 = phi float [ %493, %489 ], [ %29, %246 ]
  %503 = fmul fast float %500, %30
  %504 = fmul fast float %501, %30
  %505 = fmul fast float %502, %30
  %506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %507 = extractvalue %dx.types.CBufRet.f32 %506, 2
  %508 = fptosi float %46 to i32
  %509 = sitofp i32 %508 to float
  %510 = fadd fast float %507, %509
  %511 = fmul fast float %510, 0x3FE3C6EF40000000
  %512 = frem fast float %50, 2.560000e+02
  %513 = frem fast float %51, 2.560000e+02
  %514 = fptoui float %512 to i32
  %515 = fptoui float %513 to i32
  %516 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %514, i32 %515, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  %518 = fadd fast float %517, %511
  %519 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %520 = and i32 %128, 1
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %578, label %522, !dx.controlflow.hints !66

; <label>:522                                     ; preds = %498
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
  %538 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %539 = call float @dx.op.unary.f32(i32 25, float %538)  ; Rsqrt(value)
  %540 = fmul fast float %539, %33
  %541 = fmul fast float %539, %34
  %542 = fmul fast float %539, %35
  %543 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %544 = call float @dx.op.unary.f32(i32 25, float %543)  ; Rsqrt(value)
  %545 = fmul fast float %544, %85
  %546 = fmul fast float %544, %86
  %547 = fmul fast float %544, %87
  %548 = call float @dx.op.dot3.f32(i32 55, float %545, float %546, float %547, float %540, float %541, float %542)  ; Dot3(ax,ay,az,bx,by,bz)
  %549 = fmul fast float %548, %548
  %550 = fmul fast float %549, %524
  %551 = fadd fast float %550, %525
  %552 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  br i1 %537, label %553, label %563, !dx.controlflow.hints !67

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
  %577 = fmul fast float %564, %499
  br label %578

; <label>:578                                     ; preds = %563, %498
  %579 = phi float [ %577, %563 ], [ %499, %498 ]
  %580 = phi float [ %574, %563 ], [ %503, %498 ]
  %581 = phi float [ %575, %563 ], [ %504, %498 ]
  %582 = phi float [ %576, %563 ], [ %505, %498 ]
  %583 = add i32 %22, 104
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = add i32 %585, 0
  %587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %586, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %588 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %587, %dx.types.Handle %47, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = extractvalue %dx.types.ResRet.f32 %588, 1
  %591 = extractvalue %dx.types.ResRet.f32 %588, 2
  %592 = add i32 %22, 44
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = shl i32 %594, 4
  %596 = and i32 %595, 32752
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = lshr i32 %594, 7
  %599 = and i32 %598, 32752
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = lshr i32 %594, 22
  %602 = shl nuw nsw i32 %601, 5
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = fmul fast float %597, %589
  %605 = fmul fast float %600, %590
  %606 = fmul fast float %603, %591
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %609 = fmul fast float %604, %608
  %610 = fmul fast float %605, %608
  %611 = fmul fast float %606, %608
  %612 = add i32 %22, 48
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = lshr i32 %614, 22
  %616 = shl nuw nsw i32 %615, 5
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = fmul fast float %617, %609
  %619 = select i1 %108, float %618, float %609
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = add i32 %621, 0
  %623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %622, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %623, %dx.types.Handle %47, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %625 = extractvalue %dx.types.ResRet.f32 %624, 0
  %626 = extractvalue %dx.types.ResRet.f32 %624, 1
  %627 = extractvalue %dx.types.ResRet.f32 %624, 2
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = shl i32 %629, 4
  %631 = and i32 %630, 32752
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = lshr i32 %629, 7
  %634 = and i32 %633, 32752
  %635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %634)  ; LegacyF16ToF32(value)
  %636 = lshr i32 %629, 22
  %637 = shl nuw nsw i32 %636, 5
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = fmul fast float %632, %625
  %640 = fmul fast float %635, %626
  %641 = fmul fast float %638, %627
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %644 = fmul fast float %639, %643
  %645 = fmul fast float %640, %643
  %646 = fmul fast float %641, %643
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = lshr i32 %648, 22
  %650 = shl nuw nsw i32 %649, 5
  %651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %650)  ; LegacyF16ToF32(value)
  %652 = fmul fast float %651, %644
  %653 = select i1 %108, float %652, float %644
  %654 = fsub fast float %653, %619
  %655 = fsub fast float %645, %610
  %656 = fsub fast float %646, %611
  %657 = fmul fast float %654, %39
  %658 = fmul fast float %655, %39
  %659 = fmul fast float %656, %39
  %660 = fadd fast float %657, %619
  %661 = fadd fast float %658, %610
  %662 = fadd fast float %659, %611
  %663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = extractvalue %dx.types.ResRet.f32 %663, 1
  %666 = extractvalue %dx.types.ResRet.f32 %663, 2
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 1
  %669 = fmul fast float %660, %580
  %670 = fmul fast float %661, %581
  %671 = fmul fast float %662, %582
  %672 = call float @dx.op.dot3.f32(i32 55, float %669, float %670, float %671, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %673 = select i1 %108, float 0.000000e+00, float %669
  %674 = select i1 %108, float %672, float %670
  %675 = select i1 %108, float 0.000000e+00, float %671
  %676 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %210, i32 %211, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = lshr i32 %677, 18
  %679 = uitofp i32 %678 to float
  %680 = fmul fast float %679, 0x3F4C00EBA0000000
  %681 = call float @dx.op.unary.f32(i32 21, float %680)  ; Exp(value)
  %682 = fadd fast float %681, -1.000000e+00
  %683 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %684 = extractvalue %dx.types.Dimensions %683, 0
  %685 = sitofp i32 %684 to float
  %686 = extractvalue %dx.types.Dimensions %683, 1
  %687 = sitofp i32 %686 to float
  %688 = fcmp fast oge float %208, %685
  %689 = fcmp fast oge float %209, %687
  %690 = or i1 %688, %689
  %691 = select i1 %690, float 0x4197782600000000, float %682
  %692 = icmp eq i32 %124, 3
  %693 = fcmp fast ogt float %46, %691
  %694 = and i1 %234, %693
  %695 = or i1 %692, %694
  %696 = icmp eq i32 %124, 2
  %697 = fcmp fast ole float %46, %691
  %698 = and i1 %696, %697
  %699 = or i1 %698, %695
  %700 = fmul fast float %500, %36
  %701 = fmul fast float %700, %660
  %702 = fmul fast float %701, %664
  %703 = fmul fast float %702, %668
  %704 = fmul fast float %501, %36
  %705 = fmul fast float %704, %661
  %706 = fmul fast float %705, %665
  %707 = fmul fast float %706, %668
  %708 = fmul fast float %502, %36
  %709 = fmul fast float %708, %662
  %710 = fmul fast float %709, %666
  %711 = fmul fast float %710, %668
  %712 = fadd fast float %703, %673
  %713 = fadd fast float %674, %707
  %714 = fadd fast float %711, %675
  %715 = fmul fast float %712, %579
  %716 = fmul fast float %713, %579
  %717 = fmul fast float %714, %579
  %718 = and i32 %128, 1048576
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %811, label %720, !dx.controlflow.hints !68

; <label>:720                                     ; preds = %578
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 2
  %723 = extractvalue %dx.types.CBufRet.f32 %721, 3
  %724 = fmul fast float %722, %50
  %725 = fmul fast float %723, %51
  %726 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %727 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  %728 = select i1 %699, i32 2, i32 0
  %729 = or i32 %728, 1
  %730 = uitofp i32 %729 to float
  %731 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %726, float %727, float %730, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %732 = extractvalue %dx.types.ResRet.f32 %731, 0
  %733 = extractvalue %dx.types.ResRet.f32 %731, 1
  %734 = extractvalue %dx.types.ResRet.f32 %731, 2
  %735 = extractvalue %dx.types.ResRet.f32 %731, 3
  %736 = add nuw nsw i32 %728, 2
  %737 = uitofp i32 %736 to float
  %738 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %726, float %727, float %737, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = extractvalue %dx.types.ResRet.f32 %738, 3
  %743 = call float @dx.op.binary.f32(i32 35, float %733, float %734)  ; FMax(a,b)
  %744 = call float @dx.op.binary.f32(i32 35, float %732, float %743)  ; FMax(a,b)
  %745 = call float @dx.op.binary.f32(i32 35, float %744, float %735)  ; FMax(a,b)
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
  br i1 %755, label %756, label %804

; <label>:756                                     ; preds = %720
  %757 = fcmp fast ogt float %45, 9.843750e-01
  %758 = fadd fast float %46, -4.000000e+00
  %759 = select i1 %757, float -4.000000e+00, float %758
  %760 = call float @dx.op.binary.f32(i32 35, float %759, float 0.000000e+00)  ; FMax(a,b)
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 0
  %763 = fadd fast float %762, %760
  %764 = extractvalue %dx.types.CBufRet.f32 %761, 2
  %765 = fmul fast float %763, %764
  %766 = call float @dx.op.unary.f32(i32 23, float %765)  ; Log(value)
  %767 = extractvalue %dx.types.CBufRet.f32 %761, 3
  %768 = fmul fast float %767, %766
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
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
  %783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.f32 %783, 1
  %785 = extractvalue %dx.types.CBufRet.f32 %783, 2
  %786 = extractvalue %dx.types.CBufRet.f32 %783, 0
  %787 = select i1 %699, float %786, float 0.000000e+00
  %788 = fmul fast float %784, %782
  %789 = fadd fast float %787, %788
  %790 = fadd fast float %787, %785
  %791 = fsub fast float %784, %785
  %792 = fadd fast float %791, %787
  %793 = call float @dx.op.binary.f32(i32 35, float %789, float %790)  ; FMax(a,b)
  %794 = call float @dx.op.binary.f32(i32 36, float %793, float %792)  ; FMin(a,b)
  %795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %726, float %727, float %794, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.f32 %799, 1
  %801 = fmul fast float %800, %796
  %802 = fmul fast float %800, %797
  %803 = fmul fast float %800, %798
  br label %804

; <label>:804                                     ; preds = %756, %720
  %805 = phi float [ %801, %756 ], [ 1.000000e+00, %720 ]
  %806 = phi float [ %802, %756 ], [ 1.000000e+00, %720 ]
  %807 = phi float [ %803, %756 ], [ 1.000000e+00, %720 ]
  %808 = fmul fast float %805, %715
  %809 = fmul fast float %806, %716
  %810 = fmul fast float %807, %717
  br label %811

; <label>:811                                     ; preds = %804, %578
  %812 = phi float [ %808, %804 ], [ %715, %578 ]
  %813 = phi float [ %809, %804 ], [ %716, %578 ]
  %814 = phi float [ %810, %804 ], [ %717, %578 ]
  %815 = and i32 %128, 2097152
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %821, label %817, !dx.controlflow.hints !69

; <label>:817                                     ; preds = %811
  %818 = add i32 %125, 192
  %819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  br label %824

; <label>:821                                     ; preds = %811
  %822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %823 = extractvalue %dx.types.CBufRet.f32 %822, 3
  br label %824

; <label>:824                                     ; preds = %821, %817
  %825 = phi float [ %820, %817 ], [ %823, %821 ]
  br i1 %694, label %826, label %910

; <label>:826                                     ; preds = %824
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 2
  %829 = extractvalue %dx.types.CBufRet.f32 %827, 3
  %830 = fmul fast float %828, %50
  %831 = fmul fast float %829, %51
  %832 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %833 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  %834 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %832, float %833, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %835 = extractvalue %dx.types.ResRet.f32 %834, 0
  %836 = extractvalue %dx.types.ResRet.f32 %834, 1
  %837 = extractvalue %dx.types.ResRet.f32 %834, 2
  %838 = extractvalue %dx.types.ResRet.f32 %834, 3
  %839 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %832, float %833, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = extractvalue %dx.types.ResRet.f32 %839, 1
  %842 = extractvalue %dx.types.ResRet.f32 %839, 2
  %843 = extractvalue %dx.types.ResRet.f32 %839, 3
  %844 = call float @dx.op.binary.f32(i32 35, float %836, float %837)  ; FMax(a,b)
  %845 = call float @dx.op.binary.f32(i32 35, float %835, float %844)  ; FMax(a,b)
  %846 = call float @dx.op.binary.f32(i32 35, float %845, float %838)  ; FMax(a,b)
  %847 = call float @dx.op.binary.f32(i32 36, float %841, float %842)  ; FMin(a,b)
  %848 = call float @dx.op.binary.f32(i32 36, float %840, float %847)  ; FMin(a,b)
  %849 = call float @dx.op.binary.f32(i32 36, float %848, float %843)  ; FMin(a,b)
  %850 = fmul fast float %846, 2.550000e+02
  %851 = fadd fast float %850, 0x3F70101020000000
  %852 = fptoui float %851 to i32
  %853 = fmul fast float %849, 2.550000e+02
  %854 = fadd fast float %853, 0x3F70101020000000
  %855 = fptoui float %854 to i32
  %856 = icmp ult i32 %852, %855
  br i1 %856, label %857, label %899

; <label>:857                                     ; preds = %826
  %858 = fcmp fast ogt float %45, 9.843750e-01
  %859 = fadd fast float %46, -4.000000e+00
  %860 = select i1 %858, float -4.000000e+00, float %859
  %861 = call float @dx.op.binary.f32(i32 35, float %860, float 0.000000e+00)  ; FMax(a,b)
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %864 = fadd fast float %863, %861
  %865 = extractvalue %dx.types.CBufRet.f32 %862, 2
  %866 = fmul fast float %864, %865
  %867 = call float @dx.op.unary.f32(i32 23, float %866)  ; Log(value)
  %868 = extractvalue %dx.types.CBufRet.f32 %862, 3
  %869 = fmul fast float %868, %867
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %872 = fmul fast float %869, %871
  %873 = call float @dx.op.unary.f32(i32 7, float %872)  ; Saturate(value)
  %874 = uitofp i32 %852 to float
  %875 = uitofp i32 %855 to float
  %876 = fadd fast float %874, 5.000000e-01
  %877 = fadd fast float %875, 5.000000e-01
  %878 = fmul fast float %871, %876
  %879 = fmul fast float %871, %877
  %880 = fadd fast float %878, 0x3F0FFB4800000000
  %881 = fadd fast float %879, 0xBF0FFB4800000000
  %882 = call float @dx.op.binary.f32(i32 35, float %873, float %880)  ; FMax(a,b)
  %883 = call float @dx.op.binary.f32(i32 36, float %882, float %881)  ; FMin(a,b)
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 1
  %886 = extractvalue %dx.types.CBufRet.f32 %884, 2
  %887 = extractvalue %dx.types.CBufRet.f32 %884, 0
  %888 = fmul fast float %885, %883
  %889 = fadd fast float %887, %888
  %890 = fadd fast float %887, %886
  %891 = fsub fast float %885, %886
  %892 = fadd fast float %891, %887
  %893 = call float @dx.op.binary.f32(i32 35, float %889, float %890)  ; FMax(a,b)
  %894 = call float @dx.op.binary.f32(i32 36, float %893, float %892)  ; FMin(a,b)
  %895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %832, float %833, float %894, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 0
  %897 = extractvalue %dx.types.ResRet.f32 %895, 1
  %898 = extractvalue %dx.types.ResRet.f32 %895, 2
  br label %899

; <label>:899                                     ; preds = %857, %826
  %900 = phi float [ %896, %857 ], [ 1.000000e+00, %826 ]
  %901 = phi float [ %897, %857 ], [ 1.000000e+00, %826 ]
  %902 = phi float [ %898, %857 ], [ 1.000000e+00, %826 ]
  %903 = call float @dx.op.dot3.f32(i32 55, float %900, float %901, float %902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %904 = select i1 %108, float %903, float %900
  %905 = select i1 %108, float %903, float %901
  %906 = select i1 %108, float 1.000000e+00, float %902
  %907 = fmul fast float %904, %812
  %908 = fmul fast float %905, %813
  %909 = fmul fast float %906, %814
  br label %910

; <label>:910                                     ; preds = %899, %824
  %911 = phi float [ %691, %899 ], [ %46, %824 ]
  %912 = phi float [ %907, %899 ], [ %812, %824 ]
  %913 = phi float [ %908, %899 ], [ %813, %824 ]
  %914 = phi float [ %909, %899 ], [ %814, %824 ]
  br i1 %699, label %1155, label %915

; <label>:915                                     ; preds = %910
  %916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %917 = extractvalue %dx.types.ResRet.f32 %916, 0
  %918 = extractvalue %dx.types.ResRet.f32 %916, 1
  %919 = extractvalue %dx.types.ResRet.f32 %916, 2
  %920 = call float @dx.op.dot3.f32(i32 55, float %917, float %918, float %919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %921 = select i1 %108, float %920, float %917
  %922 = select i1 %108, float %920, float %918
  %923 = select i1 %108, float 1.000000e+00, float %919
  %924 = fmul fast float %921, %912
  %925 = fmul fast float %922, %913
  %926 = fmul fast float %923, %914
  %927 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.i32 %927, 0
  %929 = icmp eq i32 %928, 0
  br i1 %929, label %1155, label %930, !dx.controlflow.hints !70

; <label>:930                                     ; preds = %915
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %933 = extractvalue %dx.types.CBufRet.f32 %931, 3
  %934 = fmul fast float %932, %50
  %935 = fmul fast float %933, %51
  %936 = fmul fast float %934, 2.000000e+00
  %937 = fmul fast float %935, 2.000000e+00
  %938 = fsub fast float 1.000000e+00, %936
  %939 = fsub fast float 1.000000e+00, %937
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 0
  %942 = extractvalue %dx.types.CBufRet.f32 %940, 1
  %943 = extractvalue %dx.types.CBufRet.f32 %940, 2
  %944 = fmul fast float %938, %941
  %945 = fmul fast float %938, %942
  %946 = fmul fast float %938, %943
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = extractvalue %dx.types.CBufRet.f32 %947, 1
  %950 = extractvalue %dx.types.CBufRet.f32 %947, 2
  %951 = fmul fast float %939, %948
  %952 = fmul fast float %939, %949
  %953 = fmul fast float %939, %950
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 0
  %956 = extractvalue %dx.types.CBufRet.f32 %954, 1
  %957 = extractvalue %dx.types.CBufRet.f32 %954, 2
  %958 = fadd fast float %951, %955
  %959 = fadd fast float %958, %944
  %960 = fadd fast float %952, %956
  %961 = fadd fast float %960, %945
  %962 = fadd fast float %953, %957
  %963 = fadd fast float %962, %946
  %964 = fmul fast float %959, %911
  %965 = fmul fast float %961, %911
  %966 = fmul fast float %963, %911
  %967 = fmul fast float %964, %964
  %968 = fmul fast float %965, %965
  %969 = fadd fast float %967, %968
  %970 = fmul fast float %966, %966
  %971 = fadd fast float %969, %970
  %972 = call float @dx.op.unary.f32(i32 24, float %971)  ; Sqrt(value)
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 0
  %975 = fsub fast float %972, %974
  %976 = extractvalue %dx.types.CBufRet.f32 %973, 2
  %977 = fmul fast float %975, %976
  %978 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %979 = fadd fast float %978, -5.000000e-01
  %980 = fmul fast float %979, 2.000000e+00
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %983 = call float @dx.op.binary.f32(i32 36, float %982, float %980)  ; FMin(a,b)
  %984 = fsub fast float -0.000000e+00, %982
  %985 = fcmp fast ogt float %983, %984
  br i1 %985, label %986, label %1155, !dx.controlflow.hints !71

; <label>:986                                     ; preds = %930
  %987 = fmul fast float %983, 5.000000e-01
  %988 = fadd fast float %987, 5.000000e-01
  %989 = call float @dx.op.unary.f32(i32 22, float %988)  ; Frc(value)
  %990 = call float @dx.op.unary.f32(i32 27, float %989)  ; Round_ni(value)
  %991 = call float @dx.op.unary.f32(i32 22, float %989)  ; Frc(value)
  %992 = fmul fast float %991, 2.000000e+00
  %993 = fadd fast float %992, -1.000000e+00
  %994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %934, float %935, float %990, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = extractvalue %dx.types.ResRet.f32 %994, 1
  %997 = extractvalue %dx.types.ResRet.f32 %994, 2
  %998 = extractvalue %dx.types.ResRet.f32 %994, 3
  %999 = fadd fast float %995, -5.000000e-01
  %1000 = fadd fast float %997, -5.000000e-01
  %1001 = fmul fast float %999, 0xBFD5555560000000
  %1002 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1000, float %1001)  ; FMad(a,b,c)
  %1003 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %996, float 0.000000e+00)  ; FMad(a,b,c)
  %1004 = fadd fast float %1003, %998
  %1005 = fmul fast float %999, -7.500000e-01
  %1006 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1000, float %1005)  ; FMad(a,b,c)
  %1007 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %996, float 0.000000e+00)  ; FMad(a,b,c)
  %1008 = fadd fast float %1007, %998
  %1009 = call float @dx.op.binary.f32(i32 35, float %1002, float -1.000000e+00)  ; FMax(a,b)
  %1010 = call float @dx.op.binary.f32(i32 35, float %1004, float -1.000000e+00)  ; FMax(a,b)
  %1011 = call float @dx.op.binary.f32(i32 35, float %1006, float -1.000000e+00)  ; FMax(a,b)
  %1012 = call float @dx.op.binary.f32(i32 35, float %1008, float -1.000000e+00)  ; FMax(a,b)
  %1013 = call float @dx.op.binary.f32(i32 36, float %1009, float 1.000000e+00)  ; FMin(a,b)
  %1014 = call float @dx.op.binary.f32(i32 36, float %1010, float 1.000000e+00)  ; FMin(a,b)
  %1015 = call float @dx.op.binary.f32(i32 36, float %1011, float 1.000000e+00)  ; FMin(a,b)
  %1016 = call float @dx.op.binary.f32(i32 36, float %1012, float 1.000000e+00)  ; FMin(a,b)
  %1017 = fcmp fast olt float %1013, 0x3FEFFF8020000000
  br i1 %1017, label %1018, label %1133, !dx.controlflow.hints !72

; <label>:1018                                    ; preds = %986
  %1019 = extractvalue %dx.types.CBufRet.f32 %981, 3
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.CBufRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.CBufRet.f32 %1020, 2
  %1024 = extractvalue %dx.types.CBufRet.f32 %1020, 3
  %1025 = fsub fast float %1021, %1013
  %1026 = fsub fast float %1022, %1014
  %1027 = fsub fast float %1023, %1015
  %1028 = fsub fast float %1024, %1016
  %1029 = fmul fast float %1025, %1019
  %1030 = fmul fast float %1026, %1019
  %1031 = fmul fast float %1027, %1019
  %1032 = fmul fast float %1028, %1019
  %1033 = fadd fast float %1029, %1013
  %1034 = fadd fast float %1030, %1014
  %1035 = fsub fast float -0.000000e+00, %1034
  %1036 = fadd fast float %1031, %1015
  %1037 = fadd fast float %1032, %1016
  %1038 = fmul fast float %1033, %1033
  %1039 = fsub fast float %1034, %1038
  %1040 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1039)  ; FMax(a,b)
  %1041 = fdiv fast float 1.000000e+00, %1040
  %1042 = fmul fast float %1034, %1033
  %1043 = fsub fast float %1036, %1042
  %1044 = fsub fast float %993, %1033
  %1045 = fmul fast float %993, %993
  %1046 = fsub fast float %1045, %1034
  %1047 = fmul fast float %1044, %1041
  %1048 = fmul fast float %1047, %1043
  %1049 = fsub fast float %1046, %1048
  %1050 = fmul fast float %1034, %1034
  %1051 = fsub fast float %1037, %1050
  %1052 = fmul fast float %1043, %1043
  %1053 = fmul fast float %1052, %1041
  %1054 = fsub fast float %1051, %1053
  %1055 = fdiv fast float %1049, %1054
  %1056 = fmul fast float %1043, %1055
  %1057 = fsub fast float %1044, %1056
  %1058 = fmul fast float %1057, %1041
  %1059 = fmul fast float %1058, %1033
  %1060 = fsub fast float 1.000000e+00, %1059
  %1061 = fmul fast float %1034, %1055
  %1062 = fsub fast float %1060, %1061
  %1063 = fmul fast float %1058, %1058
  %1064 = fmul fast float %1055, 4.000000e+00
  %1065 = fmul fast float %1064, %1062
  %1066 = fsub fast float %1063, %1065
  %1067 = call float @dx.op.unary.f32(i32 24, float %1066)  ; Sqrt(value)
  %1068 = fcmp fast oge float %1058, 0.000000e+00
  %1069 = fsub fast float -0.000000e+00, %1067
  %1070 = select i1 %1068, float %1069, float %1067
  %1071 = fsub fast float %1070, %1058
  %1072 = fdiv fast float %1071, %1055
  %1073 = fdiv fast float %1062, %1071
  %1074 = fmul fast float %1072, 5.000000e-01
  %1075 = fmul fast float %1073, 2.000000e+00
  %1076 = select i1 %1068, float %1074, float %1075
  %1077 = select i1 %1068, float %1075, float %1074
  %1078 = call float @dx.op.binary.f32(i32 35, float %1076, float %1077)  ; FMax(a,b)
  %1079 = call float @dx.op.binary.f32(i32 36, float %1076, float %1077)  ; FMin(a,b)
  %1080 = fcmp fast ogt float %993, %1079
  br i1 %1080, label %1081, label %1091

; <label>:1081                                    ; preds = %1018
  %1082 = fsub fast float %993, %1079
  %1083 = fsub fast float %1078, %1079
  %1084 = fmul fast float %1082, %1083
  %1085 = fmul fast float %1078, %993
  %1086 = fadd fast float %1078, %993
  %1087 = fmul fast float %1086, %1033
  %1088 = fadd fast float %1085, %1034
  %1089 = fsub fast float %1088, %1087
  %1090 = fdiv fast float %1089, %1084
  br label %1091

; <label>:1091                                    ; preds = %1081, %1018
  %1092 = phi float [ %1090, %1081 ], [ 0.000000e+00, %1018 ]
  %1093 = fcmp fast ogt float %993, %1078
  %1094 = fsub fast float %993, %1078
  br i1 %1093, label %1095, label %1105

; <label>:1095                                    ; preds = %1091
  %1096 = fsub fast float %1078, %1079
  %1097 = fmul fast float %1096, %1094
  %1098 = fmul fast float %1079, %993
  %1099 = fadd fast float %1079, %993
  %1100 = fmul fast float %1099, %1033
  %1101 = fsub fast float %1035, %1098
  %1102 = fadd fast float %1101, %1100
  %1103 = fdiv fast float %1102, %1097
  %1104 = fadd fast float %1103, %1092
  br label %1105

; <label>:1105                                    ; preds = %1095, %1091
  %1106 = phi float [ %1104, %1095 ], [ %1092, %1091 ]
  %1107 = fsub fast float %993, %1079
  %1108 = fmul fast float %1107, %1094
  %1109 = fmul fast float %1079, %1078
  %1110 = fadd fast float %1079, %1078
  %1111 = fmul fast float %1110, %1033
  %1112 = fadd fast float %1109, %1034
  %1113 = fsub fast float %1112, %1111
  %1114 = fdiv fast float %1113, %1108
  %1115 = call float @dx.op.unary.f32(i32 7, float %1106)  ; Saturate(value)
  %1116 = fcmp fast oeq float %825, 0.000000e+00
  %1117 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %1118 = fcmp fast oeq float %1117, 0.000000e+00
  %1119 = or i1 %1116, %1118
  %1120 = fmul fast float %1117, 2.000000e+00
  %1121 = fadd fast float %982, %983
  %1122 = fdiv fast float %1121, %1120
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1124 = fmul fast float %1123, 2.000000e+00
  %1125 = fsub fast float 3.000000e+00, %1124
  %1126 = fmul fast float %1123, %1123
  %1127 = fmul fast float %1126, %1125
  %1128 = select i1 %1119, float 1.000000e+00, float %1127
  %1129 = fmul fast float %1114, %825
  %1130 = fadd fast float %1115, %1129
  %1131 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  %1132 = fmul fast float %1128, %1131
  br label %1133

; <label>:1133                                    ; preds = %1105, %986
  %1134 = phi float [ %1132, %1105 ], [ 0.000000e+00, %986 ]
  %1135 = fsub fast float 1.000000e+00, %1134
  %1136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %934, float %935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.i32 %1138, 2
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1146, label %1141

; <label>:1141                                    ; preds = %1133
  %1142 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1143 = fadd fast float %1137, -1.000000e+00
  %1144 = fmul fast float %1142, %1143
  %1145 = fadd fast float %1144, 1.000000e+00
  br label %1146

; <label>:1146                                    ; preds = %1141, %1133
  %1147 = phi float [ %1145, %1141 ], [ %1135, %1133 ]
  %1148 = call float @dx.op.binary.f32(i32 35, float %1137, float %1147)  ; FMax(a,b)
  %1149 = call float @dx.op.dot3.f32(i32 55, float %1148, float %1148, float %1148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1150 = select i1 %108, float %1149, float %1148
  %1151 = select i1 %108, float 1.000000e+00, float %1148
  %1152 = fmul fast float %1150, %924
  %1153 = fmul fast float %1150, %925
  %1154 = fmul fast float %1151, %926
  br label %1155

; <label>:1155                                    ; preds = %1146, %930, %915, %910
  %1156 = phi float [ %912, %910 ], [ %924, %915 ], [ %1152, %1146 ], [ %924, %930 ]
  %1157 = phi float [ %913, %910 ], [ %925, %915 ], [ %1153, %1146 ], [ %925, %930 ]
  %1158 = phi float [ %914, %910 ], [ %926, %915 ], [ %1154, %1146 ], [ %926, %930 ]
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 2
  %1161 = extractvalue %dx.types.CBufRet.f32 %1159, 3
  %1162 = fmul fast float %1160, %50
  %1163 = fmul fast float %1161, %51
  %1164 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  %1165 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1166 = select i1 %699, i32 2, i32 0
  %1167 = or i32 %1166, 1
  %1168 = uitofp i32 %1167 to float
  %1169 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1164, float %1165, float %1168, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.ResRet.f32 %1169, 1
  %1172 = extractvalue %dx.types.ResRet.f32 %1169, 2
  %1173 = extractvalue %dx.types.ResRet.f32 %1169, 3
  %1174 = add nuw nsw i32 %1166, 2
  %1175 = uitofp i32 %1174 to float
  %1176 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1164, float %1165, float %1175, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  %1178 = extractvalue %dx.types.ResRet.f32 %1176, 1
  %1179 = extractvalue %dx.types.ResRet.f32 %1176, 2
  %1180 = extractvalue %dx.types.ResRet.f32 %1176, 3
  %1181 = call float @dx.op.binary.f32(i32 35, float %1171, float %1172)  ; FMax(a,b)
  %1182 = call float @dx.op.binary.f32(i32 35, float %1170, float %1181)  ; FMax(a,b)
  %1183 = call float @dx.op.binary.f32(i32 35, float %1182, float %1173)  ; FMax(a,b)
  %1184 = call float @dx.op.binary.f32(i32 36, float %1178, float %1179)  ; FMin(a,b)
  %1185 = call float @dx.op.binary.f32(i32 36, float %1177, float %1184)  ; FMin(a,b)
  %1186 = call float @dx.op.binary.f32(i32 36, float %1185, float %1180)  ; FMin(a,b)
  %1187 = fmul fast float %1183, 2.550000e+02
  %1188 = fadd fast float %1187, 0x3F70101020000000
  %1189 = fptoui float %1188 to i32
  %1190 = fmul fast float %1186, 2.550000e+02
  %1191 = fadd fast float %1190, 0x3F70101020000000
  %1192 = fptoui float %1191 to i32
  %1193 = icmp ult i32 %1189, %1192
  br i1 %1193, label %1194, label %1237

; <label>:1194                                    ; preds = %1155
  %1195 = fcmp fast ogt float %45, 9.843750e-01
  %1196 = fadd fast float %911, -4.000000e+00
  %1197 = select i1 %1195, float -4.000000e+00, float %1196
  %1198 = call float @dx.op.binary.f32(i32 35, float %1197, float 0.000000e+00)  ; FMax(a,b)
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 0
  %1201 = fadd fast float %1200, %1198
  %1202 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1203 = fmul fast float %1201, %1202
  %1204 = call float @dx.op.unary.f32(i32 23, float %1203)  ; Log(value)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1199, 3
  %1206 = fmul fast float %1205, %1204
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 2
  %1209 = fmul fast float %1206, %1208
  %1210 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  %1211 = uitofp i32 %1189 to float
  %1212 = uitofp i32 %1192 to float
  %1213 = fadd fast float %1211, 5.000000e-01
  %1214 = fadd fast float %1212, 5.000000e-01
  %1215 = fmul fast float %1208, %1213
  %1216 = fmul fast float %1208, %1214
  %1217 = fadd fast float %1215, 0x3F0FFB4800000000
  %1218 = fadd fast float %1216, 0xBF0FFB4800000000
  %1219 = call float @dx.op.binary.f32(i32 35, float %1210, float %1217)  ; FMax(a,b)
  %1220 = call float @dx.op.binary.f32(i32 36, float %1219, float %1218)  ; FMin(a,b)
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 1
  %1223 = extractvalue %dx.types.CBufRet.f32 %1221, 2
  %1224 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1225 = select i1 %699, float %1224, float 0.000000e+00
  %1226 = fmul fast float %1222, %1220
  %1227 = fadd fast float %1225, %1226
  %1228 = fadd fast float %1225, %1223
  %1229 = fsub fast float %1222, %1223
  %1230 = fadd fast float %1229, %1225
  %1231 = call float @dx.op.binary.f32(i32 35, float %1227, float %1228)  ; FMax(a,b)
  %1232 = call float @dx.op.binary.f32(i32 36, float %1231, float %1230)  ; FMin(a,b)
  %1233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1164, float %1165, float %1232, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1234 = extractvalue %dx.types.ResRet.f32 %1233, 0
  %1235 = extractvalue %dx.types.ResRet.f32 %1233, 1
  %1236 = extractvalue %dx.types.ResRet.f32 %1233, 2
  br label %1237

; <label>:1237                                    ; preds = %1194, %1155
  %1238 = phi float [ %1234, %1194 ], [ 1.000000e+00, %1155 ]
  %1239 = phi float [ %1235, %1194 ], [ 1.000000e+00, %1155 ]
  %1240 = phi float [ %1236, %1194 ], [ 1.000000e+00, %1155 ]
  %1241 = call float @dx.op.dot3.f32(i32 55, float %1238, float %1239, float %1240, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1242 = select i1 %108, float %1241, float %1238
  %1243 = select i1 %108, float %1241, float %1239
  %1244 = fmul fast float %1242, %1156
  %1245 = fmul fast float %1243, %1157
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 0
  br i1 %108, label %1248, label %1251

; <label>:1248                                    ; preds = %1237
  %1249 = fadd fast float %1244, %1245
  %1250 = fmul fast float %1247, %1249
  br label %1261

; <label>:1251                                    ; preds = %1237
  %1252 = fmul fast float %1240, %1158
  %1253 = fmul fast float %1247, %1244
  %1254 = fmul fast float %1247, %1245
  %1255 = fmul fast float %1252, %1247
  %1256 = call float @dx.op.binary.f32(i32 35, float %1254, float %1255)  ; FMax(a,b)
  %1257 = call float @dx.op.binary.f32(i32 35, float %1253, float %1256)  ; FMax(a,b)
  %1258 = call float @dx.op.binary.f32(i32 35, float %1257, float 0.000000e+00)  ; FMax(a,b)
  %1259 = fcmp fast ugt float %1258, 0x3F10000000000000
  br i1 %1259, label %1261, label %1260

; <label>:1260                                    ; preds = %1251
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1261

; <label>:1261                                    ; preds = %1260, %1251, %1248
  %1262 = phi float [ %1250, %1248 ], [ %1253, %1260 ], [ %1253, %1251 ]
  %1263 = phi float [ 0.000000e+00, %1248 ], [ %1254, %1260 ], [ %1254, %1251 ]
  %1264 = phi float [ 0.000000e+00, %1248 ], [ %1255, %1260 ], [ %1255, %1251 ]
  %1265 = fadd fast float %519, 0x3FE3C6EF40000000
  %1266 = call float @dx.op.unary.f32(i32 22, float %1265)  ; Frc(value)
  %1267 = call float @dx.op.unary.f32(i32 23, float %1262)  ; Log(value)
  %1268 = fadd fast float %1267, -7.000000e+00
  %1269 = call float @dx.op.unary.f32(i32 21, float %1268)  ; Exp(value)
  %1270 = fmul fast float %1266, 2.000000e+00
  %1271 = fadd fast float %1270, -1.000000e+00
  %1272 = fmul fast float %1269, %1271
  %1273 = fcmp fast ogt float %1262, 0.000000e+00
  %1274 = select i1 %1273, float %1272, float 0.000000e+00
  %1275 = fadd fast float %1274, %1262
  %1276 = fadd fast float %519, 0x3FF3C6EF40000000
  %1277 = call float @dx.op.unary.f32(i32 22, float %1276)  ; Frc(value)
  %1278 = call float @dx.op.unary.f32(i32 23, float %1263)  ; Log(value)
  %1279 = fadd fast float %1278, -7.000000e+00
  %1280 = call float @dx.op.unary.f32(i32 21, float %1279)  ; Exp(value)
  %1281 = fmul fast float %1277, 2.000000e+00
  %1282 = fadd fast float %1281, -1.000000e+00
  %1283 = fmul fast float %1280, %1282
  %1284 = fcmp fast ogt float %1263, 0.000000e+00
  %1285 = select i1 %1284, float %1283, float 0.000000e+00
  %1286 = fadd fast float %1285, %1263
  %1287 = fadd fast float %519, 0x3FFDAA66E0000000
  %1288 = call float @dx.op.unary.f32(i32 22, float %1287)  ; Frc(value)
  %1289 = call float @dx.op.unary.f32(i32 23, float %1264)  ; Log(value)
  %1290 = fadd fast float %1289, -6.000000e+00
  %1291 = call float @dx.op.unary.f32(i32 21, float %1290)  ; Exp(value)
  %1292 = fmul fast float %1288, 2.000000e+00
  %1293 = fadd fast float %1292, -1.000000e+00
  %1294 = fmul fast float %1291, %1293
  %1295 = fcmp fast ogt float %1264, 0.000000e+00
  %1296 = select i1 %1295, float %1294, float 0.000000e+00
  %1297 = fadd fast float %1296, %1264
  %1298 = select i1 %108, float %1263, float %1286
  %1299 = select i1 %108, float %1264, float %1297
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1300 = call float @dx.op.binary.f32(i32 36, float %1275, float 3.225500e+04)  ; FMin(a,b)
  %1301 = call float @dx.op.binary.f32(i32 36, float %1298, float 3.225500e+04)  ; FMin(a,b)
  %1302 = call float @dx.op.binary.f32(i32 36, float %1299, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1300)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1301)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1302)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[37 x i32] [i32 35, i32 8, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !61}
!35 = !{!36, !57, null}
!36 = !{!37, !40, !42, !44, !47, !49, !51, !53, !54, !56}
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

