;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float    y w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2   xyzw        3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyzw
; TEXCOORD                 5   xy          5     NONE   float   xy  
; TEXCOORD                 8   xyzw        6     NONE   float   x  w
; COLOR                    3   xyz         7     NONE    uint   x   
; COLOR                    4      w        7     NONE    uint       
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
; shader hash: af4e0b2bfb136b16e5aa8c46eed55cbd
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
; COLOR                    3        nointerpolation       
; COLOR                    4        nointerpolation       
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
;                                   texture    byte         r/o      T2             t0     1
;                                   texture     f32          2d      T3     t77,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t1     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture     f32          3d      T9     t45,space2     1
;                                   texture     f32     2darray     T10     t47,space2     1
;                                   textureunorm_f32     2darray     T11     t85,space2     1
;                                   texture     f32          2d     T12     t83,space2     1
;                                   texture     f32     2darray     T13             t2     1
;                                   texture    byte         r/o     T14             t3     1
;                                   texture     f32          3d     T15     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 32, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 27, 28 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 27, 28 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 27, 28 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 24, 28 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 24, 28 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 24, 28 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 24, 28 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 24, 28 }
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = fmul fast float %43, %37
  %45 = fmul fast float %43, %38
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %49 = fmul fast float %44, 2.000000e+00
  %50 = fmul fast float %49, %47
  %51 = fmul fast float %45, 2.000000e+00
  %52 = fmul fast float %51, %48
  %53 = fsub fast float 1.000000e+00, %50
  %54 = fsub fast float 1.000000e+00, %52
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = fmul fast float %53, %56
  %60 = fmul fast float %53, %57
  %61 = fmul fast float %53, %58
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fmul fast float %54, %63
  %67 = fmul fast float %54, %64
  %68 = fmul fast float %54, %65
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %82 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %92 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %91, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = fsub fast float 1.000000e+00, %93
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = fcmp fast olt float %94, %96
  br label %101

; <label>:98                                      ; preds = %0
  %99 = icmp eq i32 %86, 0
  %100 = and i1 %85, %99
  br label %101

; <label>:101                                     ; preds = %98, %89
  %102 = phi i1 [ %97, %89 ], [ %100, %98 ]
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 3
  %106 = fmul fast float %104, %44
  %107 = fmul fast float %105, %45
  %108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.i32 %108, 0
  %110 = and i32 %109, 114688
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %111, float %106, float 0.000000e+00
  %113 = select i1 %111, float %107, float 0.000000e+00
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %112, float %113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fmul fast float %115, 2.550000e+02
  %117 = fptoui float %116 to i32
  %118 = select i1 %111, i32 %117, i32 0
  %119 = mul i32 %21, 208
  %120 = add i32 %119, 188
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %159 = phi float [ %33, %131 ], [ %138, %144 ], [ %157, %152 ], [ %138, %150 ]
  %160 = phi float [ %34, %131 ], [ %149, %144 ], [ %139, %152 ], [ %139, %150 ]
  %161 = fadd fast float %33, %30
  %162 = fadd fast float %34, %31
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = extractvalue %dx.types.ResRet.i32 %163, 1
  %166 = bitcast i32 %164 to float
  %167 = bitcast i32 %165 to float
  %168 = fmul fast float %166, %33
  %169 = fmul fast float %167, %34
  %170 = call float @dx.op.unary.f32(i32 22, float %168)  ; Frc(value)
  %171 = call float @dx.op.unary.f32(i32 22, float %169)  ; Frc(value)
  %172 = and i32 %122, 16
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %180, label %174, !dx.controlflow.hints !64

; <label>:174                                     ; preds = %158
  %175 = fsub fast float %36, %35
  %176 = fsub fast float 1.000000e+00, %35
  %177 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %176)  ; FMax(a,b)
  %178 = fdiv fast float %175, %177
  %179 = call float @dx.op.unary.f32(i32 7, float %178)  ; Saturate(value)
  br label %180

; <label>:180                                     ; preds = %174, %158
  %181 = phi float [ %179, %174 ], [ %36, %158 ]
  %182 = fcmp fast ogt float %181, 0.000000e+00
  br i1 %182, label %184, label %183

; <label>:183                                     ; preds = %180
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %184

; <label>:184                                     ; preds = %183, %180
  %185 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %186 = fmul fast float %44, 5.000000e-01
  %187 = fmul fast float %45, 5.000000e-01
  %188 = fptosi float %186 to i32
  %189 = fptosi float %187 to i32
  %190 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %188, i32 %189, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = lshr i32 %191, 18
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %193, 0x3F4C00EBA0000000
  %195 = call float @dx.op.unary.f32(i32 21, float %194)  ; Exp(value)
  %196 = fadd fast float %195, -1.000000e+00
  %197 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %198 = extractvalue %dx.types.Dimensions %197, 0
  %199 = sitofp i32 %198 to float
  %200 = extractvalue %dx.types.Dimensions %197, 1
  %201 = sitofp i32 %200 to float
  %202 = fcmp fast oge float %186, %199
  %203 = fcmp fast oge float %187, %201
  %204 = or i1 %202, %203
  %205 = select i1 %204, float 0x4197782600000000, float %196
  %206 = fsub fast float %205, %40
  %207 = fcmp fast ogt float %206, 0.000000e+00
  %208 = and i32 %118, -2
  %209 = icmp eq i32 %208, 2
  %210 = and i1 %209, %207
  %211 = xor i1 %207, true
  %212 = icmp eq i32 %118, 1
  %213 = and i1 %212, %211
  %214 = or i1 %210, %213
  %215 = and i32 %122, 262144
  %216 = icmp ne i32 %215, 0
  %217 = and i1 %216, %214
  %218 = xor i1 %214, true
  %219 = and i32 %122, 131072
  %220 = icmp ne i32 %219, 0
  %221 = and i1 %220, %218
  %222 = or i1 %217, %221
  br i1 %222, label %223, label %224

; <label>:223                                     ; preds = %184
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %224

; <label>:224                                     ; preds = %223, %184
  %225 = and i32 %122, 32
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %433, label %227, !dx.controlflow.hints !65

; <label>:227                                     ; preds = %224
  %228 = add i32 %119, 80
  %229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.f32 %229, 0
  %231 = extractvalue %dx.types.ResRet.f32 %229, 1
  %232 = extractvalue %dx.types.ResRet.f32 %229, 2
  %233 = extractvalue %dx.types.ResRet.f32 %229, 3
  %234 = add i32 %119, 96
  %235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = extractvalue %dx.types.ResRet.f32 %235, 1
  %238 = extractvalue %dx.types.ResRet.f32 %235, 2
  %239 = add i32 %119, 112
  %240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 3
  %242 = add i32 %119, 128
  %243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 3
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 4096
  %248 = icmp ne i32 %247, 0
  %249 = fcmp fast une float %238, 0.000000e+00
  %250 = and i32 %246, 64
  %251 = icmp ne i32 %250, 0
  %252 = and i32 %246, 128
  %253 = icmp eq i32 %252, 0
  %254 = and i32 %246, 2048
  %255 = icmp eq i32 %254, 0
  %256 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %257 = extractvalue %dx.types.Dimensions %256, 0
  %258 = sitofp i32 %257 to float
  %259 = extractvalue %dx.types.Dimensions %256, 1
  %260 = sitofp i32 %259 to float
  %261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %262 = extractvalue %dx.types.CBufRet.f32 %261, 2
  %263 = extractvalue %dx.types.CBufRet.f32 %261, 3
  %264 = fmul fast float %262, %44
  %265 = fmul fast float %263, %45
  %266 = fmul fast float %264, %258
  %267 = fmul fast float %265, %260
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 1
  %270 = fsub fast float -0.000000e+00, %269
  %271 = fptoui float %270 to i32
  %272 = fptoui float %266 to i32
  %273 = fptoui float %267 to i32
  %274 = and i32 %271, 31
  %275 = lshr i32 %272, %274
  %276 = lshr i32 %273, %274
  %277 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %271, i32 %275, i32 %276, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %278 = extractvalue %dx.types.ResRet.f32 %277, 0
  %279 = fcmp fast ogt float %278, -1.000000e+00
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %282 = select i1 %279, float %281, float 1.000000e+00
  %283 = fadd fast float %278, 1.000000e+00
  %284 = fmul fast float %282, %283
  %285 = call float @dx.op.unary.f32(i32 6, float %284)  ; FAbs(value)
  %286 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %287 = fcmp fast oge float %285, %286
  %288 = select i1 %287, float 0x4197782600000000, float %285
  br i1 %255, label %347, label %289, !dx.controlflow.hints !66

; <label>:289                                     ; preds = %227
  %290 = fmul fast float %49, %262
  %291 = fmul fast float %51, %263
  %292 = fsub fast float 1.000000e+00, %290
  %293 = fsub fast float 1.000000e+00, %291
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 0
  %296 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %297 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %298 = fmul fast float %292, %295
  %299 = fmul fast float %292, %296
  %300 = fmul fast float %292, %297
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 0
  %303 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %304 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %305 = fmul fast float %293, %302
  %306 = fmul fast float %293, %303
  %307 = fmul fast float %293, %304
  %308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.f32 %308, 0
  %310 = extractvalue %dx.types.CBufRet.f32 %308, 1
  %311 = extractvalue %dx.types.CBufRet.f32 %308, 2
  %312 = fadd fast float %305, %309
  %313 = fadd fast float %312, %298
  %314 = fadd fast float %306, %310
  %315 = fadd fast float %314, %299
  %316 = fadd fast float %307, %311
  %317 = fadd fast float %316, %300
  %318 = fmul fast float %313, %288
  %319 = fmul fast float %315, %288
  %320 = fmul fast float %317, %288
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %323 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %324 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %325 = fadd fast float %318, %322
  %326 = fadd fast float %319, %323
  %327 = fadd fast float %320, %324
  %328 = call float @dx.op.dot3.f32(i32 55, float %325, float %326, float %327, float %325, float %326, float %327)  ; Dot3(ax,ay,az,bx,by,bz)
  %329 = fsub fast float 1.000000e+00, %328
  %330 = fcmp fast olt float %329, %237
  %331 = fcmp fast ogt float %329, %236
  %332 = or i1 %330, %331
  %333 = select i1 %332, float 0.000000e+00, float %329
  %334 = fsub fast float %236, %237
  %335 = fsub fast float %333, %237
  %336 = fdiv fast float %335, %334
  %337 = call float @dx.op.unary.f32(i32 7, float %336)  ; Saturate(value)
  %338 = fmul fast float %337, 2.000000e+00
  %339 = fsub fast float 3.000000e+00, %338
  %340 = fsub fast float %241, %244
  %341 = fmul fast float %337, %337
  %342 = fmul fast float %341, %340
  %343 = fmul fast float %342, %339
  %344 = fadd fast float %343, %244
  %345 = fmul fast float %230, %230
  %346 = fmul fast float %345, %333
  br label %426

; <label>:347                                     ; preds = %227
  %348 = and i32 %246, 256
  %349 = icmp eq i32 %348, 0
  %350 = fsub fast float %288, %40
  br i1 %349, label %387, label %351

; <label>:351                                     ; preds = %347
  %352 = fadd fast float %236, %40
  %353 = fcmp fast olt float %288, %40
  %354 = fcmp fast ogt float %288, %352
  %355 = or i1 %353, %354
  %356 = select i1 %355, float 0.000000e+00, float %350
  %357 = call float @dx.op.unary.f32(i32 83, float %288)  ; DerivCoarseX(value)
  %358 = call float @dx.op.unary.f32(i32 84, float %288)  ; DerivCoarseY(value)
  %359 = fmul fast float %357, %357
  %360 = fmul fast float %358, %358
  %361 = fadd fast float %360, %359
  %362 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %363 = extractvalue %dx.types.CBufRet.f32 %268, 2
  %364 = fmul fast float %363, %362
  %365 = call float @dx.op.unary.f32(i32 7, float %364)  ; Saturate(value)
  %366 = fmul fast float %365, %237
  %367 = fdiv fast float %350, %366
  %368 = call float @dx.op.unary.f32(i32 7, float %367)  ; Saturate(value)
  %369 = fmul fast float %368, 2.000000e+00
  %370 = fsub fast float 3.000000e+00, %369
  %371 = fmul fast float %368, %368
  %372 = fmul fast float %371, %370
  %373 = fsub fast float %288, %352
  %374 = fadd fast float %373, %366
  %375 = fdiv fast float %374, %366
  %376 = call float @dx.op.unary.f32(i32 7, float %375)  ; Saturate(value)
  %377 = fmul fast float %376, 2.000000e+00
  %378 = fsub fast float 3.000000e+00, %377
  %379 = fmul fast float %376, %376
  %380 = fmul fast float %379, %378
  %381 = fsub fast float %372, %380
  %382 = fsub fast float %241, %244
  %383 = fmul fast float %381, %382
  %384 = fadd fast float %383, %244
  %385 = fmul fast float %356, %230
  %386 = call float @dx.op.unary.f32(i32 6, float %385)  ; FAbs(value)
  br label %426

; <label>:387                                     ; preds = %347
  br i1 %249, label %388, label %399

; <label>:388                                     ; preds = %387
  %389 = select i1 %251, float 5.000000e+01, float 1.000000e+00
  %390 = fmul fast float %389, %230
  %391 = fmul fast float %170, 2.000000e+00
  %392 = fmul fast float %171, 2.000000e+00
  %393 = fadd fast float %391, -1.000000e+00
  %394 = fadd fast float %392, -1.000000e+00
  %395 = call float @dx.op.dot2.f32(i32 54, float %393, float %394, float %393, float %394)  ; Dot2(ax,ay,bx,by)
  %396 = fmul fast float %395, %238
  %397 = fsub fast float %350, %396
  %398 = fmul fast float %390, %397
  br label %426

; <label>:399                                     ; preds = %387
  br i1 %253, label %419, label %400

; <label>:400                                     ; preds = %399
  %401 = select i1 %251, float 0x3F947AE140000000, float 1.000000e+00
  %402 = fdiv fast float 1.000000e+00, %401
  %403 = fmul fast float %401, %231
  %404 = fmul fast float %401, %232
  %405 = fmul fast float %402, %233
  %406 = call float @dx.op.unary.f32(i32 6, float %350)  ; FAbs(value)
  %407 = fcmp fast olt float %406, %403
  br i1 %407, label %408, label %412, !dx.controlflow.hints !67

; <label>:408                                     ; preds = %400
  %409 = fmul fast float %402, %230
  %410 = fmul fast float %409, %406
  %411 = call float @dx.op.unary.f32(i32 6, float %410)  ; FAbs(value)
  br label %426

; <label>:412                                     ; preds = %400
  %413 = fcmp fast ogt float %406, %404
  br i1 %413, label %414, label %426

; <label>:414                                     ; preds = %412
  %415 = fsub fast float %406, %404
  %416 = fmul fast float %405, %415
  %417 = call float @dx.op.unary.f32(i32 6, float %416)  ; FAbs(value)
  %418 = fsub fast float 1.000000e+00, %417
  br label %426

; <label>:419                                     ; preds = %399
  %420 = select i1 %251, float 5.000000e+01, float 1.000000e+00
  %421 = fmul fast float %420, %230
  %422 = call float @dx.op.unary.f32(i32 6, float %206)  ; FAbs(value)
  %423 = select i1 %248, float %422, float 0x47EFFFFFE0000000
  %424 = call float @dx.op.binary.f32(i32 36, float %350, float %423)  ; FMin(a,b)
  %425 = fmul fast float %421, %424
  br label %426

; <label>:426                                     ; preds = %419, %414, %412, %408, %388, %351, %289
  %427 = phi float [ %346, %289 ], [ %386, %351 ], [ %398, %388 ], [ %425, %419 ], [ %411, %408 ], [ %418, %414 ], [ %406, %412 ]
  %428 = phi float [ %344, %289 ], [ %384, %351 ], [ 1.000000e+00, %388 ], [ 1.000000e+00, %419 ], [ 1.000000e+00, %408 ], [ 1.000000e+00, %414 ], [ 1.000000e+00, %412 ]
  %429 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %430 = fmul fast float %429, %36
  %431 = fmul fast float %428, %185
  %432 = fmul fast float %431, %429
  br label %433

; <label>:433                                     ; preds = %426, %224
  %434 = phi float [ %432, %426 ], [ %185, %224 ]
  %435 = phi float [ %430, %426 ], [ %36, %224 ]
  %436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %437 = extractvalue %dx.types.CBufRet.f32 %436, 2
  %438 = fptosi float %40 to i32
  %439 = sitofp i32 %438 to float
  %440 = fadd fast float %437, %439
  %441 = fmul fast float %440, 0x3FE3C6EF40000000
  %442 = frem fast float %44, 2.560000e+02
  %443 = frem fast float %45, 2.560000e+02
  %444 = fptoui float %442 to i32
  %445 = fptoui float %443 to i32
  %446 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %444, i32 %445, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = fadd fast float %447, %441
  %449 = call float @dx.op.unary.f32(i32 22, float %448)  ; Frc(value)
  %450 = and i32 %122, 1
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %509, label %452, !dx.controlflow.hints !68

; <label>:452                                     ; preds = %433
  %453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 2
  %455 = extractvalue %dx.types.ResRet.f32 %453, 3
  %456 = add i32 %119, 16
  %457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = extractvalue %dx.types.ResRet.f32 %457, 1
  %460 = extractvalue %dx.types.ResRet.f32 %457, 2
  %461 = add i32 %119, 32
  %462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = extractvalue %dx.types.ResRet.f32 %462, 1
  %465 = extractvalue %dx.types.ResRet.f32 %462, 2
  %466 = and i32 %122, 2
  %467 = icmp eq i32 %466, 0
  %468 = call float @dx.op.dot3.f32(i32 55, float %26, float %27, float %28, float %26, float %27, float %28)  ; Dot3(ax,ay,az,bx,by,bz)
  %469 = call float @dx.op.unary.f32(i32 25, float %468)  ; Rsqrt(value)
  %470 = fmul fast float %469, %26
  %471 = fmul fast float %469, %27
  %472 = fmul fast float %469, %28
  %473 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %474 = call float @dx.op.unary.f32(i32 25, float %473)  ; Rsqrt(value)
  %475 = fmul fast float %474, %79
  %476 = fmul fast float %474, %80
  %477 = fmul fast float %474, %81
  %478 = call float @dx.op.dot3.f32(i32 55, float %475, float %476, float %477, float %470, float %471, float %472)  ; Dot3(ax,ay,az,bx,by,bz)
  %479 = fmul fast float %478, %478
  %480 = fmul fast float %479, %454
  %481 = fadd fast float %480, %455
  %482 = call float @dx.op.unary.f32(i32 7, float %481)  ; Saturate(value)
  br i1 %467, label %483, label %493, !dx.controlflow.hints !69

; <label>:483                                     ; preds = %452
  %484 = extractvalue %dx.types.ResRet.f32 %453, 1
  %485 = extractvalue %dx.types.ResRet.f32 %453, 0
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 3
  %488 = fmul fast float %487, %473
  %489 = fsub fast float %485, %488
  %490 = fmul fast float %489, %484
  %491 = call float @dx.op.unary.f32(i32 7, float %490)  ; Saturate(value)
  %492 = fmul fast float %491, %482
  br label %493

; <label>:493                                     ; preds = %483, %452
  %494 = phi float [ %492, %483 ], [ %482, %452 ]
  %495 = fsub fast float %458, %463
  %496 = fsub fast float %459, %464
  %497 = fsub fast float %460, %465
  %498 = fmul fast float %494, %495
  %499 = fmul fast float %494, %496
  %500 = fmul fast float %494, %497
  %501 = fadd fast float %498, %463
  %502 = fadd fast float %499, %464
  %503 = fadd fast float %500, %465
  %504 = fmul fast float %501, %23
  %505 = fmul fast float %502, %23
  %506 = fmul fast float %503, %23
  %507 = fmul fast float %494, %434
  %508 = fmul fast float %494, %435
  br label %509

; <label>:509                                     ; preds = %493, %433
  %510 = phi float [ %507, %493 ], [ %434, %433 ]
  %511 = phi float [ %508, %493 ], [ %435, %433 ]
  %512 = phi float [ %504, %493 ], [ %23, %433 ]
  %513 = phi float [ %505, %493 ], [ %23, %433 ]
  %514 = phi float [ %506, %493 ], [ %23, %433 ]
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = add i32 %516, 0
  %518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %518, %dx.types.Handle %41, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = add i32 %522, 0
  %524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %524, %dx.types.Handle %16, float %520, float %22, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = shl i32 %530, 4
  %532 = and i32 %531, 32752
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = lshr i32 %530, 7
  %535 = and i32 %534, 32752
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = lshr i32 %530, 22
  %538 = shl nuw nsw i32 %537, 5
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = fmul fast float %533, %526
  %541 = fmul fast float %536, %527
  %542 = fmul fast float %539, %528
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 0
  %545 = fmul fast float %540, %544
  %546 = fmul fast float %541, %544
  %547 = fmul fast float %542, %544
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = lshr i32 %549, 22
  %551 = shl nuw nsw i32 %550, 5
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = fmul fast float %552, %545
  %554 = select i1 %102, float %553, float %545
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = add i32 %556, 0
  %558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %558, %dx.types.Handle %41, float %161, float %162, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = add i32 %562, 0
  %564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %564, %dx.types.Handle %16, float %560, float %22, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = extractvalue %dx.types.ResRet.f32 %565, 2
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = shl i32 %570, 4
  %572 = and i32 %571, 32752
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = lshr i32 %570, 7
  %575 = and i32 %574, 32752
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = lshr i32 %570, 22
  %578 = shl nuw nsw i32 %577, 5
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = fmul fast float %573, %566
  %581 = fmul fast float %576, %567
  %582 = fmul fast float %579, %568
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 0
  %585 = fmul fast float %580, %584
  %586 = fmul fast float %581, %584
  %587 = fmul fast float %582, %584
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = lshr i32 %589, 22
  %591 = shl nuw nsw i32 %590, 5
  %592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %591)  ; LegacyF16ToF32(value)
  %593 = fmul fast float %592, %585
  %594 = select i1 %102, float %593, float %585
  %595 = fsub fast float %594, %554
  %596 = fsub fast float %586, %546
  %597 = fsub fast float %587, %547
  %598 = fmul fast float %595, %32
  %599 = fmul fast float %596, %32
  %600 = fmul fast float %597, %32
  %601 = fadd fast float %598, %554
  %602 = fadd fast float %599, %546
  %603 = fadd fast float %600, %547
  %604 = fsub fast float %566, %526
  %605 = fsub fast float %567, %527
  %606 = fsub fast float %568, %528
  %607 = fmul fast float %604, %32
  %608 = fmul fast float %605, %32
  %609 = fmul fast float %606, %32
  %610 = fadd fast float %607, %526
  %611 = fadd fast float %608, %527
  %612 = fadd fast float %609, %528
  %613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %618 = extractvalue %dx.types.CBufRet.f32 %617, 1
  %619 = fmul fast float %601, %512
  %620 = fmul fast float %602, %513
  %621 = fmul fast float %603, %514
  %622 = call float @dx.op.dot3.f32(i32 55, float %619, float %620, float %621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %623 = select i1 %102, float 0.000000e+00, float %619
  %624 = select i1 %102, float %622, float %620
  %625 = select i1 %102, float 0.000000e+00, float %621
  %626 = call float @dx.op.dot3.f32(i32 55, float %610, float %611, float %612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = and i32 %628, 255
  %630 = uitofp i32 %629 to float
  %631 = lshr i32 %628, 8
  %632 = and i32 %631, 255
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, %626
  %635 = fadd fast float %634, %630
  %636 = fmul fast float %635, 0x3F70101020000000
  %637 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %638 = and i32 %122, 8192
  %639 = icmp eq i32 %638, 0
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 0
  br i1 %639, label %648, label %642, !dx.controlflow.hints !70

; <label>:642                                     ; preds = %509
  %643 = add i32 %119, 176
  %644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = fcmp fast oge float %645, 0.000000e+00
  %647 = select i1 %646, float %645, float %641
  br label %654

; <label>:648                                     ; preds = %509
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = bitcast i32 %650 to float
  %652 = fcmp fast oge float %651, 0.000000e+00
  %653 = select i1 %652, float %651, float %641
  br label %654

; <label>:654                                     ; preds = %648, %642
  %655 = phi float [ %647, %642 ], [ %653, %648 ]
  %656 = fmul fast float %626, %511
  %657 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %188, i32 %189, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = lshr i32 %658, 18
  %660 = uitofp i32 %659 to float
  %661 = fmul fast float %660, 0x3F4C00EBA0000000
  %662 = call float @dx.op.unary.f32(i32 21, float %661)  ; Exp(value)
  %663 = fadd fast float %662, -1.000000e+00
  %664 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %665 = extractvalue %dx.types.Dimensions %664, 0
  %666 = sitofp i32 %665 to float
  %667 = extractvalue %dx.types.Dimensions %664, 1
  %668 = sitofp i32 %667 to float
  %669 = fcmp fast oge float %186, %666
  %670 = fcmp fast oge float %187, %668
  %671 = or i1 %669, %670
  %672 = select i1 %671, float 0x4197782600000000, float %663
  %673 = icmp eq i32 %118, 3
  %674 = fcmp fast ogt float %40, %672
  %675 = and i1 %212, %674
  %676 = or i1 %673, %675
  %677 = icmp eq i32 %118, 2
  %678 = fcmp fast ole float %40, %672
  %679 = and i1 %677, %678
  %680 = or i1 %679, %676
  %681 = fmul fast float %601, %29
  %682 = fmul fast float %681, %614
  %683 = fmul fast float %682, %618
  %684 = fmul fast float %602, %29
  %685 = fmul fast float %684, %615
  %686 = fmul fast float %685, %618
  %687 = fmul fast float %603, %29
  %688 = fmul fast float %687, %616
  %689 = fmul fast float %688, %618
  %690 = fadd fast float %683, %623
  %691 = fadd fast float %624, %686
  %692 = fadd fast float %689, %625
  %693 = fmul fast float %690, %510
  %694 = fmul fast float %691, %510
  %695 = fmul fast float %692, %510
  %696 = fmul fast float %655, %637
  %697 = fsub fast float 1.000000e+00, %637
  %698 = fsub fast float %697, %656
  %699 = call float @dx.op.unary.f32(i32 7, float %698)  ; Saturate(value)
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 3
  %702 = fmul fast float %701, %699
  %703 = fadd fast float %702, %696
  %704 = and i32 %122, 1048576
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %797, label %706, !dx.controlflow.hints !71

; <label>:706                                     ; preds = %654
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %709 = extractvalue %dx.types.CBufRet.f32 %707, 3
  %710 = fmul fast float %708, %44
  %711 = fmul fast float %709, %45
  %712 = call float @dx.op.unary.f32(i32 7, float %710)  ; Saturate(value)
  %713 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  %714 = select i1 %680, i32 2, i32 0
  %715 = or i32 %714, 1
  %716 = uitofp i32 %715 to float
  %717 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %712, float %713, float %716, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %718 = extractvalue %dx.types.ResRet.f32 %717, 0
  %719 = extractvalue %dx.types.ResRet.f32 %717, 1
  %720 = extractvalue %dx.types.ResRet.f32 %717, 2
  %721 = extractvalue %dx.types.ResRet.f32 %717, 3
  %722 = add nuw nsw i32 %714, 2
  %723 = uitofp i32 %722 to float
  %724 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %712, float %713, float %723, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  %726 = extractvalue %dx.types.ResRet.f32 %724, 1
  %727 = extractvalue %dx.types.ResRet.f32 %724, 2
  %728 = extractvalue %dx.types.ResRet.f32 %724, 3
  %729 = call float @dx.op.binary.f32(i32 35, float %719, float %720)  ; FMax(a,b)
  %730 = call float @dx.op.binary.f32(i32 35, float %718, float %729)  ; FMax(a,b)
  %731 = call float @dx.op.binary.f32(i32 35, float %730, float %721)  ; FMax(a,b)
  %732 = call float @dx.op.binary.f32(i32 36, float %726, float %727)  ; FMin(a,b)
  %733 = call float @dx.op.binary.f32(i32 36, float %725, float %732)  ; FMin(a,b)
  %734 = call float @dx.op.binary.f32(i32 36, float %733, float %728)  ; FMin(a,b)
  %735 = fmul fast float %731, 2.550000e+02
  %736 = fadd fast float %735, 0x3F70101020000000
  %737 = fptoui float %736 to i32
  %738 = fmul fast float %734, 2.550000e+02
  %739 = fadd fast float %738, 0x3F70101020000000
  %740 = fptoui float %739 to i32
  %741 = icmp ult i32 %737, %740
  br i1 %741, label %742, label %790

; <label>:742                                     ; preds = %706
  %743 = fcmp fast ogt float %39, 9.843750e-01
  %744 = fadd fast float %40, -4.000000e+00
  %745 = select i1 %743, float -4.000000e+00, float %744
  %746 = call float @dx.op.binary.f32(i32 35, float %745, float 0.000000e+00)  ; FMax(a,b)
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 0
  %749 = fadd fast float %748, %746
  %750 = extractvalue %dx.types.CBufRet.f32 %747, 2
  %751 = fmul fast float %749, %750
  %752 = call float @dx.op.unary.f32(i32 23, float %751)  ; Log(value)
  %753 = extractvalue %dx.types.CBufRet.f32 %747, 3
  %754 = fmul fast float %753, %752
  %755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %756 = extractvalue %dx.types.CBufRet.f32 %755, 2
  %757 = fmul fast float %754, %756
  %758 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %759 = uitofp i32 %737 to float
  %760 = uitofp i32 %740 to float
  %761 = fadd fast float %759, 5.000000e-01
  %762 = fadd fast float %760, 5.000000e-01
  %763 = fmul fast float %756, %761
  %764 = fmul fast float %756, %762
  %765 = fadd fast float %763, 0x3F0FFB4800000000
  %766 = fadd fast float %764, 0xBF0FFB4800000000
  %767 = call float @dx.op.binary.f32(i32 35, float %758, float %765)  ; FMax(a,b)
  %768 = call float @dx.op.binary.f32(i32 36, float %767, float %766)  ; FMin(a,b)
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 1
  %771 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %772 = extractvalue %dx.types.CBufRet.f32 %769, 0
  %773 = select i1 %680, float %772, float 0.000000e+00
  %774 = fmul fast float %770, %768
  %775 = fadd fast float %773, %774
  %776 = fadd fast float %773, %771
  %777 = fsub fast float %770, %771
  %778 = fadd fast float %777, %773
  %779 = call float @dx.op.binary.f32(i32 35, float %775, float %776)  ; FMax(a,b)
  %780 = call float @dx.op.binary.f32(i32 36, float %779, float %778)  ; FMin(a,b)
  %781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %712, float %713, float %780, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = extractvalue %dx.types.ResRet.f32 %781, 1
  %784 = extractvalue %dx.types.ResRet.f32 %781, 2
  %785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.f32 %785, 1
  %787 = fmul fast float %786, %782
  %788 = fmul fast float %786, %783
  %789 = fmul fast float %786, %784
  br label %790

; <label>:790                                     ; preds = %742, %706
  %791 = phi float [ %787, %742 ], [ 1.000000e+00, %706 ]
  %792 = phi float [ %788, %742 ], [ 1.000000e+00, %706 ]
  %793 = phi float [ %789, %742 ], [ 1.000000e+00, %706 ]
  %794 = fmul fast float %791, %693
  %795 = fmul fast float %792, %694
  %796 = fmul fast float %793, %695
  br label %797

; <label>:797                                     ; preds = %790, %654
  %798 = phi float [ %794, %790 ], [ %693, %654 ]
  %799 = phi float [ %795, %790 ], [ %694, %654 ]
  %800 = phi float [ %796, %790 ], [ %695, %654 ]
  %801 = and i32 %122, 2097152
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %807, label %803, !dx.controlflow.hints !72

; <label>:803                                     ; preds = %797
  %804 = add i32 %119, 192
  %805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  br label %810

; <label>:807                                     ; preds = %797
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 3
  br label %810

; <label>:810                                     ; preds = %807, %803
  %811 = phi float [ %806, %803 ], [ %809, %807 ]
  br i1 %675, label %812, label %896

; <label>:812                                     ; preds = %810
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 2
  %815 = extractvalue %dx.types.CBufRet.f32 %813, 3
  %816 = fmul fast float %814, %44
  %817 = fmul fast float %815, %45
  %818 = call float @dx.op.unary.f32(i32 7, float %816)  ; Saturate(value)
  %819 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  %820 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %818, float %819, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = extractvalue %dx.types.ResRet.f32 %820, 2
  %824 = extractvalue %dx.types.ResRet.f32 %820, 3
  %825 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %818, float %819, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = extractvalue %dx.types.ResRet.f32 %825, 1
  %828 = extractvalue %dx.types.ResRet.f32 %825, 2
  %829 = extractvalue %dx.types.ResRet.f32 %825, 3
  %830 = call float @dx.op.binary.f32(i32 35, float %822, float %823)  ; FMax(a,b)
  %831 = call float @dx.op.binary.f32(i32 35, float %821, float %830)  ; FMax(a,b)
  %832 = call float @dx.op.binary.f32(i32 35, float %831, float %824)  ; FMax(a,b)
  %833 = call float @dx.op.binary.f32(i32 36, float %827, float %828)  ; FMin(a,b)
  %834 = call float @dx.op.binary.f32(i32 36, float %826, float %833)  ; FMin(a,b)
  %835 = call float @dx.op.binary.f32(i32 36, float %834, float %829)  ; FMin(a,b)
  %836 = fmul fast float %832, 2.550000e+02
  %837 = fadd fast float %836, 0x3F70101020000000
  %838 = fptoui float %837 to i32
  %839 = fmul fast float %835, 2.550000e+02
  %840 = fadd fast float %839, 0x3F70101020000000
  %841 = fptoui float %840 to i32
  %842 = icmp ult i32 %838, %841
  br i1 %842, label %843, label %885

; <label>:843                                     ; preds = %812
  %844 = fcmp fast ogt float %39, 9.843750e-01
  %845 = fadd fast float %40, -4.000000e+00
  %846 = select i1 %844, float -4.000000e+00, float %845
  %847 = call float @dx.op.binary.f32(i32 35, float %846, float 0.000000e+00)  ; FMax(a,b)
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 0
  %850 = fadd fast float %849, %847
  %851 = extractvalue %dx.types.CBufRet.f32 %848, 2
  %852 = fmul fast float %850, %851
  %853 = call float @dx.op.unary.f32(i32 23, float %852)  ; Log(value)
  %854 = extractvalue %dx.types.CBufRet.f32 %848, 3
  %855 = fmul fast float %854, %853
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %858 = fmul fast float %855, %857
  %859 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  %860 = uitofp i32 %838 to float
  %861 = uitofp i32 %841 to float
  %862 = fadd fast float %860, 5.000000e-01
  %863 = fadd fast float %861, 5.000000e-01
  %864 = fmul fast float %857, %862
  %865 = fmul fast float %857, %863
  %866 = fadd fast float %864, 0x3F0FFB4800000000
  %867 = fadd fast float %865, 0xBF0FFB4800000000
  %868 = call float @dx.op.binary.f32(i32 35, float %859, float %866)  ; FMax(a,b)
  %869 = call float @dx.op.binary.f32(i32 36, float %868, float %867)  ; FMin(a,b)
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 1
  %872 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %873 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %874 = fmul fast float %871, %869
  %875 = fadd fast float %873, %874
  %876 = fadd fast float %873, %872
  %877 = fsub fast float %871, %872
  %878 = fadd fast float %877, %873
  %879 = call float @dx.op.binary.f32(i32 35, float %875, float %876)  ; FMax(a,b)
  %880 = call float @dx.op.binary.f32(i32 36, float %879, float %878)  ; FMin(a,b)
  %881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %818, float %819, float %880, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = extractvalue %dx.types.ResRet.f32 %881, 1
  %884 = extractvalue %dx.types.ResRet.f32 %881, 2
  br label %885

; <label>:885                                     ; preds = %843, %812
  %886 = phi float [ %882, %843 ], [ 1.000000e+00, %812 ]
  %887 = phi float [ %883, %843 ], [ 1.000000e+00, %812 ]
  %888 = phi float [ %884, %843 ], [ 1.000000e+00, %812 ]
  %889 = call float @dx.op.dot3.f32(i32 55, float %886, float %887, float %888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %890 = select i1 %102, float %889, float %886
  %891 = select i1 %102, float %889, float %887
  %892 = select i1 %102, float 1.000000e+00, float %888
  %893 = fmul fast float %890, %798
  %894 = fmul fast float %891, %799
  %895 = fmul fast float %892, %800
  br label %896

; <label>:896                                     ; preds = %885, %810
  %897 = phi float [ %672, %885 ], [ %40, %810 ]
  %898 = phi float [ %893, %885 ], [ %798, %810 ]
  %899 = phi float [ %894, %885 ], [ %799, %810 ]
  %900 = phi float [ %895, %885 ], [ %800, %810 ]
  %901 = phi float [ %886, %885 ], [ 1.000000e+00, %810 ]
  br i1 %680, label %1244, label %902

; <label>:902                                     ; preds = %896
  %903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %24, float %25, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %904 = extractvalue %dx.types.ResRet.f32 %903, 0
  %905 = extractvalue %dx.types.ResRet.f32 %903, 1
  %906 = extractvalue %dx.types.ResRet.f32 %903, 2
  %907 = fmul fast float %904, %901
  %908 = call float @dx.op.dot3.f32(i32 55, float %904, float %905, float %906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = select i1 %102, float %908, float %904
  %910 = select i1 %102, float %908, float %905
  %911 = select i1 %102, float 1.000000e+00, float %906
  %912 = fmul fast float %909, %898
  %913 = fmul fast float %910, %899
  %914 = fmul fast float %911, %900
  %915 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.i32 %915, 0
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %1244, label %918, !dx.controlflow.hints !73

; <label>:918                                     ; preds = %902
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 2
  %921 = extractvalue %dx.types.CBufRet.f32 %919, 3
  %922 = fmul fast float %920, %44
  %923 = fmul fast float %921, %45
  %924 = fmul fast float %922, 2.000000e+00
  %925 = fmul fast float %923, 2.000000e+00
  %926 = fsub fast float 1.000000e+00, %924
  %927 = fsub fast float 1.000000e+00, %925
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %930 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %931 = extractvalue %dx.types.CBufRet.f32 %928, 2
  %932 = fmul fast float %926, %929
  %933 = fmul fast float %926, %930
  %934 = fmul fast float %926, %931
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %938 = extractvalue %dx.types.CBufRet.f32 %935, 2
  %939 = fmul fast float %927, %936
  %940 = fmul fast float %927, %937
  %941 = fmul fast float %927, %938
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 0
  %944 = extractvalue %dx.types.CBufRet.f32 %942, 1
  %945 = extractvalue %dx.types.CBufRet.f32 %942, 2
  %946 = fadd fast float %939, %943
  %947 = fadd fast float %946, %932
  %948 = fadd fast float %940, %944
  %949 = fadd fast float %948, %933
  %950 = fadd fast float %941, %945
  %951 = fadd fast float %950, %934
  %952 = fmul fast float %947, %897
  %953 = fmul fast float %949, %897
  %954 = fmul fast float %951, %897
  %955 = fmul fast float %952, %952
  %956 = fmul fast float %953, %953
  %957 = fadd fast float %955, %956
  %958 = fmul fast float %954, %954
  %959 = fadd fast float %957, %958
  %960 = call float @dx.op.unary.f32(i32 24, float %959)  ; Sqrt(value)
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %963 = fsub fast float %960, %962
  %964 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %965 = fmul fast float %963, %964
  %966 = call float @dx.op.unary.f32(i32 7, float %965)  ; Saturate(value)
  %967 = fadd fast float %966, -5.000000e-01
  %968 = fmul fast float %967, 2.000000e+00
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 2
  %971 = call float @dx.op.binary.f32(i32 36, float %970, float %968)  ; FMin(a,b)
  %972 = fsub fast float -0.000000e+00, %970
  %973 = fcmp fast ogt float %971, %972
  br i1 %973, label %974, label %1244, !dx.controlflow.hints !74

; <label>:974                                     ; preds = %918
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 3
  %977 = fcmp fast ogt float %976, 0.000000e+00
  br i1 %977, label %978, label %1053, !dx.controlflow.hints !75

; <label>:978                                     ; preds = %974
  %979 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %980 = extractvalue %dx.types.Dimensions %979, 0
  %981 = sitofp i32 %980 to float
  %982 = extractvalue %dx.types.Dimensions %979, 1
  %983 = sitofp i32 %982 to float
  %984 = fmul fast float %922, %981
  %985 = fmul fast float %923, %983
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 1
  %988 = fsub fast float -0.000000e+00, %987
  %989 = fptoui float %988 to i32
  %990 = fptoui float %984 to i32
  %991 = fptoui float %985 to i32
  %992 = and i32 %989, 31
  %993 = lshr i32 %990, %992
  %994 = lshr i32 %991, %992
  %995 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %989, i32 %993, i32 %994, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = fcmp fast olt float %996, -1.000000e+00
  %998 = fcmp fast ogt float %996, -1.000000e+00
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1001 = select i1 %998, float %1000, float 1.000000e+00
  %1002 = fadd fast float %996, 1.000000e+00
  %1003 = fmul fast float %1001, %1002
  %1004 = call float @dx.op.unary.f32(i32 6, float %1003)  ; FAbs(value)
  %1005 = extractvalue %dx.types.CBufRet.f32 %999, 3
  %1006 = fcmp fast oge float %1004, %1005
  %1007 = select i1 %1006, float 0x4197782600000000, float %1004
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.CBufRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.CBufRet.f32 %1008, 2
  %1012 = select i1 %997, float %1009, float %929
  %1013 = select i1 %997, float %1010, float %930
  %1014 = select i1 %997, float %1011, float %931
  %1015 = fmul fast float %1012, %926
  %1016 = fmul fast float %1013, %926
  %1017 = fmul fast float %1014, %926
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1022 = select i1 %997, float %1019, float %936
  %1023 = select i1 %997, float %1020, float %937
  %1024 = select i1 %997, float %1021, float %938
  %1025 = fmul fast float %1022, %927
  %1026 = fmul fast float %1023, %927
  %1027 = fmul fast float %1024, %927
  %1028 = fadd fast float %1025, %1015
  %1029 = fadd fast float %1026, %1016
  %1030 = fadd fast float %1027, %1017
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.CBufRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.CBufRet.f32 %1031, 2
  %1035 = select i1 %997, float %1032, float %943
  %1036 = select i1 %997, float %1033, float %944
  %1037 = select i1 %997, float %1034, float %945
  %1038 = fadd fast float %1028, %1035
  %1039 = fadd fast float %1029, %1036
  %1040 = fadd fast float %1030, %1037
  %1041 = fmul fast float %1038, %1007
  %1042 = fmul fast float %1039, %1007
  %1043 = fmul fast float %1040, %1007
  %1044 = fmul fast float %1041, %1041
  %1045 = fmul fast float %1042, %1042
  %1046 = fadd fast float %1044, %1045
  %1047 = fmul fast float %1043, %1043
  %1048 = fadd fast float %1046, %1047
  %1049 = call float @dx.op.unary.f32(i32 24, float %1048)  ; Sqrt(value)
  %1050 = fsub fast float %1049, %962
  %1051 = fmul fast float %1050, %964
  %1052 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  br label %1053

; <label>:1053                                    ; preds = %978, %974
  %1054 = phi float [ %1052, %978 ], [ 1.000000e+00, %974 ]
  %1055 = fmul fast float %971, 5.000000e-01
  %1056 = fadd fast float %1055, 5.000000e-01
  %1057 = call float @dx.op.unary.f32(i32 22, float %1056)  ; Frc(value)
  %1058 = call float @dx.op.unary.f32(i32 27, float %1057)  ; Round_ni(value)
  %1059 = call float @dx.op.unary.f32(i32 22, float %1057)  ; Frc(value)
  %1060 = fmul fast float %1059, 2.000000e+00
  %1061 = fadd fast float %1060, -1.000000e+00
  %1062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %922, float %923, float %1058, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1065 = extractvalue %dx.types.ResRet.f32 %1062, 2
  %1066 = extractvalue %dx.types.ResRet.f32 %1062, 3
  %1067 = fadd fast float %1063, -5.000000e-01
  %1068 = fadd fast float %1065, -5.000000e-01
  %1069 = fmul fast float %1067, 0xBFD5555560000000
  %1070 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1068, float %1069)  ; FMad(a,b,c)
  %1071 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1064, float 0.000000e+00)  ; FMad(a,b,c)
  %1072 = fadd fast float %1071, %1066
  %1073 = fmul fast float %1067, -7.500000e-01
  %1074 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1068, float %1073)  ; FMad(a,b,c)
  %1075 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1064, float 0.000000e+00)  ; FMad(a,b,c)
  %1076 = fadd fast float %1075, %1066
  %1077 = call float @dx.op.binary.f32(i32 35, float %1070, float -1.000000e+00)  ; FMax(a,b)
  %1078 = call float @dx.op.binary.f32(i32 35, float %1072, float -1.000000e+00)  ; FMax(a,b)
  %1079 = call float @dx.op.binary.f32(i32 35, float %1074, float -1.000000e+00)  ; FMax(a,b)
  %1080 = call float @dx.op.binary.f32(i32 35, float %1076, float -1.000000e+00)  ; FMax(a,b)
  %1081 = call float @dx.op.binary.f32(i32 36, float %1077, float 1.000000e+00)  ; FMin(a,b)
  %1082 = call float @dx.op.binary.f32(i32 36, float %1078, float 1.000000e+00)  ; FMin(a,b)
  %1083 = call float @dx.op.binary.f32(i32 36, float %1079, float 1.000000e+00)  ; FMin(a,b)
  %1084 = call float @dx.op.binary.f32(i32 36, float %1080, float 1.000000e+00)  ; FMin(a,b)
  %1085 = fcmp fast olt float %1081, 0x3FEFFF8020000000
  br i1 %1085, label %1086, label %1201, !dx.controlflow.hints !76

; <label>:1086                                    ; preds = %1053
  %1087 = extractvalue %dx.types.CBufRet.f32 %969, 3
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.CBufRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.CBufRet.f32 %1088, 2
  %1092 = extractvalue %dx.types.CBufRet.f32 %1088, 3
  %1093 = fsub fast float %1089, %1081
  %1094 = fsub fast float %1090, %1082
  %1095 = fsub fast float %1091, %1083
  %1096 = fsub fast float %1092, %1084
  %1097 = fmul fast float %1093, %1087
  %1098 = fmul fast float %1094, %1087
  %1099 = fmul fast float %1095, %1087
  %1100 = fmul fast float %1096, %1087
  %1101 = fadd fast float %1097, %1081
  %1102 = fadd fast float %1098, %1082
  %1103 = fsub fast float -0.000000e+00, %1102
  %1104 = fadd fast float %1099, %1083
  %1105 = fadd fast float %1100, %1084
  %1106 = fmul fast float %1101, %1101
  %1107 = fsub fast float %1102, %1106
  %1108 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1107)  ; FMax(a,b)
  %1109 = fdiv fast float 1.000000e+00, %1108
  %1110 = fmul fast float %1102, %1101
  %1111 = fsub fast float %1104, %1110
  %1112 = fsub fast float %1061, %1101
  %1113 = fmul fast float %1061, %1061
  %1114 = fsub fast float %1113, %1102
  %1115 = fmul fast float %1112, %1109
  %1116 = fmul fast float %1115, %1111
  %1117 = fsub fast float %1114, %1116
  %1118 = fmul fast float %1102, %1102
  %1119 = fsub fast float %1105, %1118
  %1120 = fmul fast float %1111, %1111
  %1121 = fmul fast float %1120, %1109
  %1122 = fsub fast float %1119, %1121
  %1123 = fdiv fast float %1117, %1122
  %1124 = fmul fast float %1111, %1123
  %1125 = fsub fast float %1112, %1124
  %1126 = fmul fast float %1125, %1109
  %1127 = fmul fast float %1126, %1101
  %1128 = fsub fast float 1.000000e+00, %1127
  %1129 = fmul fast float %1102, %1123
  %1130 = fsub fast float %1128, %1129
  %1131 = fmul fast float %1126, %1126
  %1132 = fmul fast float %1123, 4.000000e+00
  %1133 = fmul fast float %1132, %1130
  %1134 = fsub fast float %1131, %1133
  %1135 = call float @dx.op.unary.f32(i32 24, float %1134)  ; Sqrt(value)
  %1136 = fcmp fast oge float %1126, 0.000000e+00
  %1137 = fsub fast float -0.000000e+00, %1135
  %1138 = select i1 %1136, float %1137, float %1135
  %1139 = fsub fast float %1138, %1126
  %1140 = fdiv fast float %1139, %1123
  %1141 = fdiv fast float %1130, %1139
  %1142 = fmul fast float %1140, 5.000000e-01
  %1143 = fmul fast float %1141, 2.000000e+00
  %1144 = select i1 %1136, float %1142, float %1143
  %1145 = select i1 %1136, float %1143, float %1142
  %1146 = call float @dx.op.binary.f32(i32 35, float %1144, float %1145)  ; FMax(a,b)
  %1147 = call float @dx.op.binary.f32(i32 36, float %1144, float %1145)  ; FMin(a,b)
  %1148 = fcmp fast ogt float %1061, %1147
  br i1 %1148, label %1149, label %1159

; <label>:1149                                    ; preds = %1086
  %1150 = fsub fast float %1061, %1147
  %1151 = fsub fast float %1146, %1147
  %1152 = fmul fast float %1150, %1151
  %1153 = fmul fast float %1146, %1061
  %1154 = fadd fast float %1146, %1061
  %1155 = fmul fast float %1154, %1101
  %1156 = fadd fast float %1153, %1102
  %1157 = fsub fast float %1156, %1155
  %1158 = fdiv fast float %1157, %1152
  br label %1159

; <label>:1159                                    ; preds = %1149, %1086
  %1160 = phi float [ %1158, %1149 ], [ 0.000000e+00, %1086 ]
  %1161 = fcmp fast ogt float %1061, %1146
  %1162 = fsub fast float %1061, %1146
  br i1 %1161, label %1163, label %1173

; <label>:1163                                    ; preds = %1159
  %1164 = fsub fast float %1146, %1147
  %1165 = fmul fast float %1164, %1162
  %1166 = fmul fast float %1147, %1061
  %1167 = fadd fast float %1147, %1061
  %1168 = fmul fast float %1167, %1101
  %1169 = fsub fast float %1103, %1166
  %1170 = fadd fast float %1169, %1168
  %1171 = fdiv fast float %1170, %1165
  %1172 = fadd fast float %1171, %1160
  br label %1173

; <label>:1173                                    ; preds = %1163, %1159
  %1174 = phi float [ %1172, %1163 ], [ %1160, %1159 ]
  %1175 = fsub fast float %1061, %1147
  %1176 = fmul fast float %1175, %1162
  %1177 = fmul fast float %1147, %1146
  %1178 = fadd fast float %1147, %1146
  %1179 = fmul fast float %1178, %1101
  %1180 = fadd fast float %1177, %1102
  %1181 = fsub fast float %1180, %1179
  %1182 = fdiv fast float %1181, %1176
  %1183 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  %1184 = fcmp fast oeq float %811, 0.000000e+00
  %1185 = extractvalue %dx.types.CBufRet.f32 %969, 0
  %1186 = fcmp fast oeq float %1185, 0.000000e+00
  %1187 = or i1 %1184, %1186
  %1188 = fmul fast float %1185, 2.000000e+00
  %1189 = fadd fast float %970, %971
  %1190 = fdiv fast float %1189, %1188
  %1191 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1192 = fmul fast float %1191, 2.000000e+00
  %1193 = fsub fast float 3.000000e+00, %1192
  %1194 = fmul fast float %1191, %1191
  %1195 = fmul fast float %1194, %1193
  %1196 = select i1 %1187, float 1.000000e+00, float %1195
  %1197 = fmul fast float %1182, %811
  %1198 = fadd fast float %1183, %1197
  %1199 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1200 = fmul fast float %1196, %1199
  br label %1201

; <label>:1201                                    ; preds = %1173, %1053
  %1202 = phi float [ %1200, %1173 ], [ 0.000000e+00, %1053 ]
  %1203 = fsub fast float 1.000000e+00, %1202
  %1204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %922, float %923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.i32 %1206, 2
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1214, label %1209

; <label>:1209                                    ; preds = %1201
  %1210 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1211 = fadd fast float %1205, -1.000000e+00
  %1212 = fmul fast float %1210, %1211
  %1213 = fadd fast float %1212, 1.000000e+00
  br label %1214

; <label>:1214                                    ; preds = %1209, %1201
  %1215 = phi float [ %1213, %1209 ], [ %1203, %1201 ]
  br i1 %977, label %1216, label %1234

; <label>:1216                                    ; preds = %1214
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 1
  %1219 = fsub fast float %1054, %1218
  %1220 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1221 = fsub fast float %1054, %976
  %1222 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1223 = fsub fast float %1220, %1222
  %1224 = fsub fast float %1056, %1222
  %1225 = fdiv fast float %1224, %1223
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1227 = fmul fast float %1226, 2.000000e+00
  %1228 = fsub fast float 3.000000e+00, %1227
  %1229 = fsub fast float %1205, %1215
  %1230 = fmul fast float %1226, %1226
  %1231 = fmul fast float %1230, %1229
  %1232 = fmul fast float %1231, %1228
  %1233 = fadd fast float %1232, %1215
  br label %1234

; <label>:1234                                    ; preds = %1216, %1214
  %1235 = phi float [ %1233, %1216 ], [ %1215, %1214 ]
  %1236 = call float @dx.op.binary.f32(i32 35, float %1205, float %1235)  ; FMax(a,b)
  %1237 = fmul fast float %1236, %907
  %1238 = call float @dx.op.dot3.f32(i32 55, float %1236, float %1236, float %1236, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1239 = select i1 %102, float %1238, float %1236
  %1240 = select i1 %102, float 1.000000e+00, float %1236
  %1241 = fmul fast float %1239, %912
  %1242 = fmul fast float %1239, %913
  %1243 = fmul fast float %1240, %914
  br label %1244

; <label>:1244                                    ; preds = %1234, %918, %902, %896
  %1245 = phi float [ %898, %896 ], [ %912, %902 ], [ %1241, %1234 ], [ %912, %918 ]
  %1246 = phi float [ %899, %896 ], [ %913, %902 ], [ %1242, %1234 ], [ %913, %918 ]
  %1247 = phi float [ %900, %896 ], [ %914, %902 ], [ %1243, %1234 ], [ %914, %918 ]
  %1248 = phi float [ %901, %896 ], [ %907, %902 ], [ %1237, %1234 ], [ %907, %918 ]
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 2
  %1251 = extractvalue %dx.types.CBufRet.f32 %1249, 3
  %1252 = fmul fast float %1250, %44
  %1253 = fmul fast float %1251, %45
  %1254 = call float @dx.op.unary.f32(i32 7, float %1252)  ; Saturate(value)
  %1255 = call float @dx.op.unary.f32(i32 7, float %1253)  ; Saturate(value)
  %1256 = select i1 %680, i32 2, i32 0
  %1257 = or i32 %1256, 1
  %1258 = uitofp i32 %1257 to float
  %1259 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1254, float %1255, float %1258, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = extractvalue %dx.types.ResRet.f32 %1259, 1
  %1262 = extractvalue %dx.types.ResRet.f32 %1259, 2
  %1263 = extractvalue %dx.types.ResRet.f32 %1259, 3
  %1264 = add nuw nsw i32 %1256, 2
  %1265 = uitofp i32 %1264 to float
  %1266 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1254, float %1255, float %1265, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1267 = extractvalue %dx.types.ResRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.ResRet.f32 %1266, 1
  %1269 = extractvalue %dx.types.ResRet.f32 %1266, 2
  %1270 = extractvalue %dx.types.ResRet.f32 %1266, 3
  %1271 = call float @dx.op.binary.f32(i32 35, float %1261, float %1262)  ; FMax(a,b)
  %1272 = call float @dx.op.binary.f32(i32 35, float %1260, float %1271)  ; FMax(a,b)
  %1273 = call float @dx.op.binary.f32(i32 35, float %1272, float %1263)  ; FMax(a,b)
  %1274 = call float @dx.op.binary.f32(i32 36, float %1268, float %1269)  ; FMin(a,b)
  %1275 = call float @dx.op.binary.f32(i32 36, float %1267, float %1274)  ; FMin(a,b)
  %1276 = call float @dx.op.binary.f32(i32 36, float %1275, float %1270)  ; FMin(a,b)
  %1277 = fmul fast float %1273, 2.550000e+02
  %1278 = fadd fast float %1277, 0x3F70101020000000
  %1279 = fptoui float %1278 to i32
  %1280 = fmul fast float %1276, 2.550000e+02
  %1281 = fadd fast float %1280, 0x3F70101020000000
  %1282 = fptoui float %1281 to i32
  %1283 = icmp ult i32 %1279, %1282
  br i1 %1283, label %1284, label %1327

; <label>:1284                                    ; preds = %1244
  %1285 = fcmp fast ogt float %39, 9.843750e-01
  %1286 = fadd fast float %897, -4.000000e+00
  %1287 = select i1 %1285, float -4.000000e+00, float %1286
  %1288 = call float @dx.op.binary.f32(i32 35, float %1287, float 0.000000e+00)  ; FMax(a,b)
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 0
  %1291 = fadd fast float %1290, %1288
  %1292 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1293 = fmul fast float %1291, %1292
  %1294 = call float @dx.op.unary.f32(i32 23, float %1293)  ; Log(value)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1289, 3
  %1296 = fmul fast float %1295, %1294
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 2
  %1299 = fmul fast float %1296, %1298
  %1300 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1301 = uitofp i32 %1279 to float
  %1302 = uitofp i32 %1282 to float
  %1303 = fadd fast float %1301, 5.000000e-01
  %1304 = fadd fast float %1302, 5.000000e-01
  %1305 = fmul fast float %1298, %1303
  %1306 = fmul fast float %1298, %1304
  %1307 = fadd fast float %1305, 0x3F0FFB4800000000
  %1308 = fadd fast float %1306, 0xBF0FFB4800000000
  %1309 = call float @dx.op.binary.f32(i32 35, float %1300, float %1307)  ; FMax(a,b)
  %1310 = call float @dx.op.binary.f32(i32 36, float %1309, float %1308)  ; FMin(a,b)
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 1
  %1313 = extractvalue %dx.types.CBufRet.f32 %1311, 2
  %1314 = extractvalue %dx.types.CBufRet.f32 %1311, 0
  %1315 = select i1 %680, float %1314, float 0.000000e+00
  %1316 = fmul fast float %1312, %1310
  %1317 = fadd fast float %1315, %1316
  %1318 = fadd fast float %1315, %1313
  %1319 = fsub fast float %1312, %1313
  %1320 = fadd fast float %1319, %1315
  %1321 = call float @dx.op.binary.f32(i32 35, float %1317, float %1318)  ; FMax(a,b)
  %1322 = call float @dx.op.binary.f32(i32 36, float %1321, float %1320)  ; FMin(a,b)
  %1323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1254, float %1255, float %1322, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1324 = extractvalue %dx.types.ResRet.f32 %1323, 0
  %1325 = extractvalue %dx.types.ResRet.f32 %1323, 1
  %1326 = extractvalue %dx.types.ResRet.f32 %1323, 2
  br label %1327

; <label>:1327                                    ; preds = %1284, %1244
  %1328 = phi float [ %1324, %1284 ], [ 1.000000e+00, %1244 ]
  %1329 = phi float [ %1325, %1284 ], [ 1.000000e+00, %1244 ]
  %1330 = phi float [ %1326, %1284 ], [ 1.000000e+00, %1244 ]
  %1331 = fmul fast float %1328, %1248
  %1332 = call float @dx.op.dot3.f32(i32 55, float %1328, float %1329, float %1330, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1333 = select i1 %102, float %1332, float %1328
  %1334 = select i1 %102, float %1332, float %1329
  %1335 = select i1 %102, float 1.000000e+00, float %1330
  %1336 = fmul fast float %1333, %1245
  %1337 = fmul fast float %1334, %1246
  %1338 = fmul fast float %1335, %1247
  %1339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.i32 %1339, 3
  %1341 = and i32 %1340, 3
  %1342 = icmp ne i32 %1341, 0
  %1343 = and i32 %1340, 4
  %1344 = icmp ne i32 %1343, 0
  %1345 = and i1 %1342, %1344
  %1346 = and i1 %102, %1345
  br i1 %1346, label %1347, label %1353

; <label>:1347                                    ; preds = %1327
  %1348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1349 = extractvalue %dx.types.CBufRet.f32 %1348, 1
  %1350 = fadd fast float %1331, -1.000000e+00
  %1351 = fmul fast float %1349, %1350
  %1352 = fadd fast float %1351, 1.000000e+00
  br label %1353

; <label>:1353                                    ; preds = %1347, %1327
  %1354 = phi float [ %1352, %1347 ], [ %1331, %1327 ]
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 0
  br i1 %102, label %1357, label %1377

; <label>:1357                                    ; preds = %1353
  %1358 = fadd fast float %1336, %1337
  %1359 = fmul fast float %1356, %1358
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 3
  %1362 = extractvalue %dx.types.CBufRet.f32 %700, 1
  %1363 = fsub fast float %703, %1362
  %1364 = extractvalue %dx.types.CBufRet.f32 %700, 2
  %1365 = fmul fast float %1363, %1364
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1367 = fsub fast float %1366, %1361
  %1368 = fmul fast float %1367, %1354
  %1369 = fadd fast float %1368, %1361
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 0
  %1372 = fsub fast float %1369, %1371
  %1373 = fmul fast float %1372, 1.000000e+01
  %1374 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1375 = fmul fast float %1374, %656
  %1376 = fmul fast float %1369, %1375
  br label %1386

; <label>:1377                                    ; preds = %1353
  %1378 = fmul fast float %1356, %1336
  %1379 = fmul fast float %1356, %1337
  %1380 = fmul fast float %1338, %1356
  %1381 = call float @dx.op.binary.f32(i32 35, float %1379, float %1380)  ; FMax(a,b)
  %1382 = call float @dx.op.binary.f32(i32 35, float %1378, float %1381)  ; FMax(a,b)
  %1383 = call float @dx.op.binary.f32(i32 35, float %1382, float 0.000000e+00)  ; FMax(a,b)
  %1384 = fcmp fast ugt float %1383, 0x3F10000000000000
  br i1 %1384, label %1386, label %1385

; <label>:1385                                    ; preds = %1377
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1386

; <label>:1386                                    ; preds = %1385, %1377, %1357
  %1387 = phi float [ %1359, %1357 ], [ %1378, %1385 ], [ %1378, %1377 ]
  %1388 = phi float [ %1376, %1357 ], [ %1379, %1385 ], [ %1379, %1377 ]
  %1389 = phi float [ %1375, %1357 ], [ %1380, %1385 ], [ %1380, %1377 ]
  %1390 = phi float [ %1375, %1357 ], [ 0.000000e+00, %1385 ], [ 0.000000e+00, %1377 ]
  %1391 = fadd fast float %449, 0x3FE3C6EF40000000
  %1392 = call float @dx.op.unary.f32(i32 22, float %1391)  ; Frc(value)
  %1393 = call float @dx.op.unary.f32(i32 23, float %1387)  ; Log(value)
  %1394 = fadd fast float %1393, -7.000000e+00
  %1395 = call float @dx.op.unary.f32(i32 21, float %1394)  ; Exp(value)
  %1396 = fmul fast float %1392, 2.000000e+00
  %1397 = fadd fast float %1396, -1.000000e+00
  %1398 = fmul fast float %1395, %1397
  %1399 = fcmp fast ogt float %1387, 0.000000e+00
  %1400 = select i1 %1399, float %1398, float 0.000000e+00
  %1401 = fadd fast float %1400, %1387
  %1402 = fadd fast float %449, 0x3FF3C6EF40000000
  %1403 = call float @dx.op.unary.f32(i32 22, float %1402)  ; Frc(value)
  %1404 = call float @dx.op.unary.f32(i32 23, float %1388)  ; Log(value)
  %1405 = fadd fast float %1404, -7.000000e+00
  %1406 = call float @dx.op.unary.f32(i32 21, float %1405)  ; Exp(value)
  %1407 = fmul fast float %1403, 2.000000e+00
  %1408 = fadd fast float %1407, -1.000000e+00
  %1409 = fmul fast float %1406, %1408
  %1410 = fcmp fast ogt float %1388, 0.000000e+00
  %1411 = select i1 %1410, float %1409, float 0.000000e+00
  %1412 = fadd fast float %1411, %1388
  %1413 = fadd fast float %449, 0x3FFDAA66E0000000
  %1414 = call float @dx.op.unary.f32(i32 22, float %1413)  ; Frc(value)
  %1415 = call float @dx.op.unary.f32(i32 23, float %1389)  ; Log(value)
  %1416 = fadd fast float %1415, -6.000000e+00
  %1417 = call float @dx.op.unary.f32(i32 21, float %1416)  ; Exp(value)
  %1418 = fmul fast float %1414, 2.000000e+00
  %1419 = fadd fast float %1418, -1.000000e+00
  %1420 = fmul fast float %1417, %1419
  %1421 = fcmp fast ogt float %1389, 0.000000e+00
  %1422 = select i1 %1421, float %1420, float 0.000000e+00
  %1423 = fadd fast float %1422, %1389
  %1424 = select i1 %102, float %1388, float %1412
  %1425 = select i1 %102, float %1389, float %1423
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1426 = call float @dx.op.binary.f32(i32 36, float %1401, float 3.225500e+04)  ; FMin(a,b)
  %1427 = call float @dx.op.binary.f32(i32 36, float %1424, float 3.225500e+04)  ; FMin(a,b)
  %1428 = call float @dx.op.binary.f32(i32 36, float %1425, float 3.225500e+04)  ; FMin(a,b)
  %1429 = call float @dx.op.binary.f32(i32 36, float %1390, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1426)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1427)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1428)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1429)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1390)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1390)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1390)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1390)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !20}
!20 = !{i32 0, i32 14}
!21 = !{i32 12, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!22 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i32 0, !7}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!24 = !{i32 15, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[34 x i32] [i32 32, i32 8, i32 255, i32 255, i32 255, i32 255, i32 0, i32 7, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 255, i32 0, i32 0, i32 7, i32 255, i32 0, i32 0, i32 0]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !63}
!35 = !{!36, !59, null}
!36 = !{!37, !40, !42, !44, !47, !49, !51, !54, !56, !58}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 10}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 1, i32 1, i8 4, i32 3, i8 0, !46}
!45 = !{i32 2}
!46 = !{i32 3, i32 7}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 4, i8 0, !39}
!48 = !{i32 3}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 3, i32 1, i8 2, i32 5, i8 0, !43}
!50 = !{i32 5}
!51 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, !53}
!52 = !{i32 8}
!53 = !{i32 3, i32 9}
!54 = !{i32 7, !"COLOR", i8 5, i8 0, !48, i8 1, i32 1, i8 3, i32 7, i8 0, !55}
!55 = !{i32 3, i32 1}
!56 = !{i32 8, !"COLOR", i8 5, i8 0, !57, i8 1, i32 1, i8 1, i32 7, i8 3, null}
!57 = !{i32 4}
!58 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!59 = !{!60, !61}
!60 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!61 = !{i32 1, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!62 = !{i32 1}
!63 = !{i32 0, i64 24}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}

