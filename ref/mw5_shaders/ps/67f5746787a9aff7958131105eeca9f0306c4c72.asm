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
; shader hash: 33be893d4a521336455e850bf2a7cebf
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 27, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 27, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 27, 28, 29, 30, 31, 32, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 24, 28, 29, 30, 31, 32, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 24, 28, 29, 30, 31, 32, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 24, 28, 29, 30, 31, 32, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 24, 28, 29, 30, 31, 32, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 24, 28, 29, 30, 31, 32, 34 }
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
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %49 = fmul fast float %48, %42
  %50 = fmul fast float %48, %43
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
  %84 = fmul fast float %79, %45
  %85 = fmul fast float %81, %45
  %86 = fmul fast float %83, %45
  %87 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.i32 %87, 3
  %89 = and i32 %88, 3
  %90 = icmp ne i32 %89, 0
  %91 = and i32 %88, 4
  %92 = icmp ne i32 %91, 0
  %93 = and i1 %90, %92
  br i1 %93, label %94, label %103

; <label>:94                                      ; preds = %0
  %95 = fmul fast float %53, %50
  %96 = fmul fast float %52, %49
  %97 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %96, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = fsub fast float 1.000000e+00, %98
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = fcmp fast olt float %99, %101
  br label %106

; <label>:103                                     ; preds = %0
  %104 = icmp eq i32 %91, 0
  %105 = and i1 %90, %104
  br label %106

; <label>:106                                     ; preds = %103, %94
  %107 = phi i1 [ %102, %94 ], [ %105, %103 ]
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %111 = fmul fast float %109, %49
  %112 = fmul fast float %110, %50
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = and i32 %114, 114688
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %116, float %111, float 0.000000e+00
  %118 = select i1 %116, float %112, float 0.000000e+00
  %119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %117, float %118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = fmul fast float %120, 2.550000e+02
  %122 = fptoui float %121 to i32
  %123 = select i1 %116, i32 %122, i32 0
  %124 = mul i32 %21, 208
  %125 = add i32 %124, 188
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = and i32 %88, 114688
  %129 = and i32 %88, 8
  %130 = icmp ne i32 %129, 0
  %131 = or i1 %107, %130
  %132 = select i1 %131, i32 %128, i32 16384
  %133 = and i32 %132, %127
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %106
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %136

; <label>:136                                     ; preds = %135, %106
  %137 = and i32 %127, 512
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %163, label %139

; <label>:139                                     ; preds = %136
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %143 = fmul fast float %141, %49
  %144 = fmul fast float %142, %50
  %145 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %147 = fdiv fast float %145, %146
  %148 = fcmp fast ogt float %147, 0x3FFC71C720000000
  br i1 %148, label %149, label %155

; <label>:149                                     ; preds = %139
  %150 = fdiv fast float 0x3FFC71C720000000, %147
  %151 = fmul fast float %150, %144
  %152 = fsub fast float 1.000000e+00, %150
  %153 = fmul fast float %152, 5.000000e-01
  %154 = fadd fast float %153, %151
  br label %163

; <label>:155                                     ; preds = %139
  %156 = fcmp fast olt float %147, 0x3FFC71C720000000
  br i1 %156, label %157, label %163

; <label>:157                                     ; preds = %155
  %158 = fmul fast float %143, 5.625000e-01
  %159 = fmul fast float %158, %147
  %160 = fmul fast float %147, 2.812500e-01
  %161 = fsub fast float 5.000000e-01, %160
  %162 = fadd fast float %161, %159
  br label %163

; <label>:163                                     ; preds = %157, %155, %149, %136
  %164 = phi float [ %38, %136 ], [ %143, %149 ], [ %162, %157 ], [ %143, %155 ]
  %165 = phi float [ %39, %136 ], [ %154, %149 ], [ %144, %157 ], [ %144, %155 ]
  %166 = fadd fast float %38, %35
  %167 = fadd fast float %39, %36
  %168 = add i32 %22, 72
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = extractvalue %dx.types.ResRet.i32 %169, 1
  %172 = bitcast i32 %170 to float
  %173 = bitcast i32 %171 to float
  %174 = fmul fast float %172, %38
  %175 = fmul fast float %173, %39
  %176 = call float @dx.op.unary.f32(i32 22, float %174)  ; Frc(value)
  %177 = call float @dx.op.unary.f32(i32 22, float %175)  ; Frc(value)
  %178 = and i32 %127, 16
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %186, label %180, !dx.controlflow.hints !63

; <label>:180                                     ; preds = %163
  %181 = fsub fast float %41, %40
  %182 = fsub fast float 1.000000e+00, %40
  %183 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %182)  ; FMax(a,b)
  %184 = fdiv fast float %181, %183
  %185 = call float @dx.op.unary.f32(i32 7, float %184)  ; Saturate(value)
  br label %186

; <label>:186                                     ; preds = %180, %163
  %187 = phi float [ %185, %180 ], [ %41, %163 ]
  %188 = fcmp fast ogt float %187, 0.000000e+00
  br i1 %188, label %190, label %189

; <label>:189                                     ; preds = %186
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %190

; <label>:190                                     ; preds = %189, %186
  %191 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %192 = fmul fast float %49, 5.000000e-01
  %193 = fmul fast float %50, 5.000000e-01
  %194 = fptosi float %192 to i32
  %195 = fptosi float %193 to i32
  %196 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %194, i32 %195, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = lshr i32 %197, 18
  %199 = uitofp i32 %198 to float
  %200 = fmul fast float %199, 0x3F4C00EBA0000000
  %201 = call float @dx.op.unary.f32(i32 21, float %200)  ; Exp(value)
  %202 = fadd fast float %201, -1.000000e+00
  %203 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %204 = extractvalue %dx.types.Dimensions %203, 0
  %205 = sitofp i32 %204 to float
  %206 = extractvalue %dx.types.Dimensions %203, 1
  %207 = sitofp i32 %206 to float
  %208 = fcmp fast oge float %192, %205
  %209 = fcmp fast oge float %193, %207
  %210 = or i1 %208, %209
  %211 = select i1 %210, float 0x4197782600000000, float %202
  %212 = fsub fast float %211, %45
  %213 = fcmp fast ogt float %212, 0.000000e+00
  %214 = and i32 %123, -2
  %215 = icmp eq i32 %214, 2
  %216 = and i1 %215, %213
  %217 = xor i1 %213, true
  %218 = icmp eq i32 %123, 1
  %219 = and i1 %218, %217
  %220 = or i1 %216, %219
  %221 = and i32 %127, 262144
  %222 = icmp ne i32 %221, 0
  %223 = and i1 %222, %220
  %224 = xor i1 %220, true
  %225 = and i32 %127, 131072
  %226 = icmp ne i32 %225, 0
  %227 = and i1 %226, %224
  %228 = or i1 %223, %227
  br i1 %228, label %229, label %230

; <label>:229                                     ; preds = %190
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %230

; <label>:230                                     ; preds = %229, %190
  %231 = and i32 %127, 32
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %450, label %233, !dx.controlflow.hints !64

; <label>:233                                     ; preds = %230
  %234 = add i32 %124, 80
  %235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = extractvalue %dx.types.ResRet.f32 %235, 1
  %238 = extractvalue %dx.types.ResRet.f32 %235, 2
  %239 = extractvalue %dx.types.ResRet.f32 %235, 3
  %240 = add i32 %124, 96
  %241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = extractvalue %dx.types.ResRet.f32 %241, 1
  %244 = extractvalue %dx.types.ResRet.f32 %241, 2
  %245 = add i32 %124, 112
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 3
  %248 = add i32 %124, 128
  %249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 3
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 4096
  %254 = icmp ne i32 %253, 0
  %255 = fcmp fast une float %244, 0.000000e+00
  %256 = and i32 %252, 64
  %257 = icmp ne i32 %256, 0
  %258 = and i32 %252, 128
  %259 = icmp eq i32 %258, 0
  %260 = and i32 %252, 2048
  %261 = icmp eq i32 %260, 0
  %262 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %263 = extractvalue %dx.types.Dimensions %262, 0
  %264 = sitofp i32 %263 to float
  %265 = extractvalue %dx.types.Dimensions %262, 1
  %266 = sitofp i32 %265 to float
  %267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %268 = extractvalue %dx.types.CBufRet.f32 %267, 2
  %269 = extractvalue %dx.types.CBufRet.f32 %267, 3
  %270 = fmul fast float %268, %49
  %271 = fmul fast float %269, %50
  %272 = fmul fast float %270, %264
  %273 = fmul fast float %271, %266
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 1
  %276 = fsub fast float -0.000000e+00, %275
  %277 = fptoui float %276 to i32
  %278 = fptoui float %272 to i32
  %279 = fptoui float %273 to i32
  %280 = and i32 %277, 31
  %281 = lshr i32 %278, %280
  %282 = lshr i32 %279, %280
  %283 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %277, i32 %281, i32 %282, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = fcmp fast ogt float %284, -1.000000e+00
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 1
  %288 = select i1 %285, float %287, float 1.000000e+00
  %289 = fadd fast float %284, 1.000000e+00
  %290 = fmul fast float %288, %289
  %291 = call float @dx.op.unary.f32(i32 6, float %290)  ; FAbs(value)
  %292 = extractvalue %dx.types.CBufRet.f32 %286, 3
  %293 = fcmp fast oge float %291, %292
  %294 = select i1 %293, float 0x4197782600000000, float %291
  br i1 %261, label %360, label %295, !dx.controlflow.hints !65

; <label>:295                                     ; preds = %233
  %296 = fmul fast float %54, %268
  %297 = fmul fast float %56, %269
  %298 = fsub fast float 1.000000e+00, %296
  %299 = fsub fast float 1.000000e+00, %297
  %300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %301 = extractvalue %dx.types.CBufRet.f32 %300, 0
  %302 = extractvalue %dx.types.CBufRet.f32 %300, 1
  %303 = extractvalue %dx.types.CBufRet.f32 %300, 2
  %304 = fmul fast float %298, %301
  %305 = fmul fast float %298, %302
  %306 = fmul fast float %298, %303
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %309 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %310 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %311 = fmul fast float %299, %308
  %312 = fmul fast float %299, %309
  %313 = fmul fast float %299, %310
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %317 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %318 = fadd fast float %311, %315
  %319 = fadd fast float %318, %304
  %320 = fadd fast float %312, %316
  %321 = fadd fast float %320, %305
  %322 = fadd fast float %313, %317
  %323 = fadd fast float %322, %306
  %324 = fmul fast float %319, %294
  %325 = fmul fast float %321, %294
  %326 = fmul fast float %323, %294
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = fsub fast float %328, %23
  %332 = fadd fast float %331, %324
  %333 = fsub fast float %329, %24
  %334 = fadd fast float %333, %325
  %335 = fsub fast float %330, %25
  %336 = fadd fast float %335, %326
  %337 = fmul fast float %26, %26
  %338 = call float @dx.op.dot3.f32(i32 55, float %332, float %334, float %336, float %332, float %334, float %336)  ; Dot3(ax,ay,az,bx,by,bz)
  %339 = fsub fast float %337, %338
  %340 = fmul fast float %243, %337
  %341 = fmul fast float %242, %337
  %342 = fcmp fast olt float %339, %340
  %343 = fcmp fast ogt float %339, %341
  %344 = or i1 %342, %343
  %345 = select i1 %344, float 0.000000e+00, float %339
  %346 = fsub fast float %242, %243
  %347 = fmul fast float %346, %337
  %348 = fsub fast float %345, %340
  %349 = fdiv fast float %348, %347
  %350 = call float @dx.op.unary.f32(i32 7, float %349)  ; Saturate(value)
  %351 = fmul fast float %350, 2.000000e+00
  %352 = fsub fast float 3.000000e+00, %351
  %353 = fsub fast float %247, %250
  %354 = fmul fast float %350, %350
  %355 = fmul fast float %354, %353
  %356 = fmul fast float %355, %352
  %357 = fadd fast float %356, %250
  %358 = fmul fast float %236, %236
  %359 = fmul fast float %358, %345
  br label %443

; <label>:360                                     ; preds = %233
  %361 = and i32 %252, 256
  %362 = icmp eq i32 %361, 0
  %363 = fsub fast float %294, %45
  br i1 %362, label %400, label %364

; <label>:364                                     ; preds = %360
  %365 = fadd fast float %242, %45
  %366 = fcmp fast olt float %294, %45
  %367 = fcmp fast ogt float %294, %365
  %368 = or i1 %366, %367
  %369 = select i1 %368, float 0.000000e+00, float %363
  %370 = call float @dx.op.unary.f32(i32 83, float %294)  ; DerivCoarseX(value)
  %371 = call float @dx.op.unary.f32(i32 84, float %294)  ; DerivCoarseY(value)
  %372 = fmul fast float %370, %370
  %373 = fmul fast float %371, %371
  %374 = fadd fast float %373, %372
  %375 = call float @dx.op.unary.f32(i32 24, float %374)  ; Sqrt(value)
  %376 = extractvalue %dx.types.CBufRet.f32 %274, 2
  %377 = fmul fast float %376, %375
  %378 = call float @dx.op.unary.f32(i32 7, float %377)  ; Saturate(value)
  %379 = fmul fast float %378, %243
  %380 = fdiv fast float %363, %379
  %381 = call float @dx.op.unary.f32(i32 7, float %380)  ; Saturate(value)
  %382 = fmul fast float %381, 2.000000e+00
  %383 = fsub fast float 3.000000e+00, %382
  %384 = fmul fast float %381, %381
  %385 = fmul fast float %384, %383
  %386 = fsub fast float %294, %365
  %387 = fadd fast float %386, %379
  %388 = fdiv fast float %387, %379
  %389 = call float @dx.op.unary.f32(i32 7, float %388)  ; Saturate(value)
  %390 = fmul fast float %389, 2.000000e+00
  %391 = fsub fast float 3.000000e+00, %390
  %392 = fmul fast float %389, %389
  %393 = fmul fast float %392, %391
  %394 = fsub fast float %385, %393
  %395 = fsub fast float %247, %250
  %396 = fmul fast float %394, %395
  %397 = fadd fast float %396, %250
  %398 = fmul fast float %369, %236
  %399 = call float @dx.op.unary.f32(i32 6, float %398)  ; FAbs(value)
  br label %443

; <label>:400                                     ; preds = %360
  br i1 %255, label %401, label %414

; <label>:401                                     ; preds = %400
  %402 = fdiv fast float 5.000000e+01, %26
  %403 = select i1 %257, float %402, float 1.000000e+00
  %404 = fmul fast float %403, %236
  %405 = fmul fast float %176, 2.000000e+00
  %406 = fmul fast float %177, 2.000000e+00
  %407 = fadd fast float %405, -1.000000e+00
  %408 = fadd fast float %406, -1.000000e+00
  %409 = call float @dx.op.dot2.f32(i32 54, float %407, float %408, float %407, float %408)  ; Dot2(ax,ay,bx,by)
  %410 = fmul fast float %244, %26
  %411 = fmul fast float %410, %409
  %412 = fsub fast float %363, %411
  %413 = fmul fast float %404, %412
  br label %443

; <label>:414                                     ; preds = %400
  br i1 %259, label %435, label %415

; <label>:415                                     ; preds = %414
  %416 = fmul fast float %26, 0x3F947AE140000000
  %417 = select i1 %257, float %416, float 1.000000e+00
  %418 = fdiv fast float 1.000000e+00, %417
  %419 = fmul fast float %417, %237
  %420 = fmul fast float %417, %238
  %421 = fmul fast float %418, %239
  %422 = call float @dx.op.unary.f32(i32 6, float %363)  ; FAbs(value)
  %423 = fcmp fast olt float %422, %419
  br i1 %423, label %424, label %428, !dx.controlflow.hints !66

; <label>:424                                     ; preds = %415
  %425 = fmul fast float %418, %236
  %426 = fmul fast float %425, %422
  %427 = call float @dx.op.unary.f32(i32 6, float %426)  ; FAbs(value)
  br label %443

; <label>:428                                     ; preds = %415
  %429 = fcmp fast ogt float %422, %420
  br i1 %429, label %430, label %443

; <label>:430                                     ; preds = %428
  %431 = fsub fast float %422, %420
  %432 = fmul fast float %421, %431
  %433 = call float @dx.op.unary.f32(i32 6, float %432)  ; FAbs(value)
  %434 = fsub fast float 1.000000e+00, %433
  br label %443

; <label>:435                                     ; preds = %414
  %436 = fdiv fast float 5.000000e+01, %26
  %437 = select i1 %257, float %436, float 1.000000e+00
  %438 = fmul fast float %437, %236
  %439 = call float @dx.op.unary.f32(i32 6, float %212)  ; FAbs(value)
  %440 = select i1 %254, float %439, float 0x47EFFFFFE0000000
  %441 = call float @dx.op.binary.f32(i32 36, float %363, float %440)  ; FMin(a,b)
  %442 = fmul fast float %438, %441
  br label %443

; <label>:443                                     ; preds = %435, %430, %428, %424, %401, %364, %295
  %444 = phi float [ %359, %295 ], [ %399, %364 ], [ %413, %401 ], [ %442, %435 ], [ %427, %424 ], [ %434, %430 ], [ %422, %428 ]
  %445 = phi float [ %357, %295 ], [ %397, %364 ], [ 1.000000e+00, %401 ], [ 1.000000e+00, %435 ], [ 1.000000e+00, %424 ], [ 1.000000e+00, %430 ], [ 1.000000e+00, %428 ]
  %446 = call float @dx.op.unary.f32(i32 7, float %444)  ; Saturate(value)
  %447 = fmul fast float %446, %41
  %448 = fmul fast float %445, %191
  %449 = fmul fast float %448, %446
  br label %450

; <label>:450                                     ; preds = %443, %230
  %451 = phi float [ %449, %443 ], [ %191, %230 ]
  %452 = phi float [ %447, %443 ], [ %41, %230 ]
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 2
  %455 = fptosi float %45 to i32
  %456 = sitofp i32 %455 to float
  %457 = fadd fast float %454, %456
  %458 = fmul fast float %457, 0x3FE3C6EF40000000
  %459 = frem fast float %49, 2.560000e+02
  %460 = frem fast float %50, 2.560000e+02
  %461 = fptoui float %459 to i32
  %462 = fptoui float %460 to i32
  %463 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %461, i32 %462, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = fadd fast float %464, %458
  %466 = call float @dx.op.unary.f32(i32 22, float %465)  ; Frc(value)
  %467 = and i32 %127, 1
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %526, label %469, !dx.controlflow.hints !67

; <label>:469                                     ; preds = %450
  %470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.f32 %470, 2
  %472 = extractvalue %dx.types.ResRet.f32 %470, 3
  %473 = add i32 %124, 16
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = add i32 %124, 32
  %479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = extractvalue %dx.types.ResRet.f32 %479, 1
  %482 = extractvalue %dx.types.ResRet.f32 %479, 2
  %483 = and i32 %127, 2
  %484 = icmp eq i32 %483, 0
  %485 = call float @dx.op.dot3.f32(i32 55, float %31, float %32, float %33, float %31, float %32, float %33)  ; Dot3(ax,ay,az,bx,by,bz)
  %486 = call float @dx.op.unary.f32(i32 25, float %485)  ; Rsqrt(value)
  %487 = fmul fast float %486, %31
  %488 = fmul fast float %486, %32
  %489 = fmul fast float %486, %33
  %490 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %491 = call float @dx.op.unary.f32(i32 25, float %490)  ; Rsqrt(value)
  %492 = fmul fast float %491, %84
  %493 = fmul fast float %491, %85
  %494 = fmul fast float %491, %86
  %495 = call float @dx.op.dot3.f32(i32 55, float %492, float %493, float %494, float %487, float %488, float %489)  ; Dot3(ax,ay,az,bx,by,bz)
  %496 = fmul fast float %495, %495
  %497 = fmul fast float %496, %471
  %498 = fadd fast float %497, %472
  %499 = call float @dx.op.unary.f32(i32 7, float %498)  ; Saturate(value)
  br i1 %484, label %500, label %510, !dx.controlflow.hints !68

; <label>:500                                     ; preds = %469
  %501 = extractvalue %dx.types.ResRet.f32 %470, 1
  %502 = extractvalue %dx.types.ResRet.f32 %470, 0
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 3
  %505 = fmul fast float %504, %490
  %506 = fsub fast float %502, %505
  %507 = fmul fast float %506, %501
  %508 = call float @dx.op.unary.f32(i32 7, float %507)  ; Saturate(value)
  %509 = fmul fast float %508, %499
  br label %510

; <label>:510                                     ; preds = %500, %469
  %511 = phi float [ %509, %500 ], [ %499, %469 ]
  %512 = fsub fast float %475, %480
  %513 = fsub fast float %476, %481
  %514 = fsub fast float %477, %482
  %515 = fmul fast float %511, %512
  %516 = fmul fast float %511, %513
  %517 = fmul fast float %511, %514
  %518 = fadd fast float %515, %480
  %519 = fadd fast float %516, %481
  %520 = fadd fast float %517, %482
  %521 = fmul fast float %518, %28
  %522 = fmul fast float %519, %28
  %523 = fmul fast float %520, %28
  %524 = fmul fast float %511, %451
  %525 = fmul fast float %511, %452
  br label %526

; <label>:526                                     ; preds = %510, %450
  %527 = phi float [ %524, %510 ], [ %451, %450 ]
  %528 = phi float [ %525, %510 ], [ %452, %450 ]
  %529 = phi float [ %521, %510 ], [ %28, %450 ]
  %530 = phi float [ %522, %510 ], [ %28, %450 ]
  %531 = phi float [ %523, %510 ], [ %28, %450 ]
  %532 = add i32 %22, 120
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = add i32 %534, 0
  %536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %537 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %536, %dx.types.Handle %46, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = add i32 %22, 124
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = add i32 %541, 0
  %543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %543, %dx.types.Handle %16, float %538, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = add i32 %22, 44
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = shl i32 %550, 4
  %552 = and i32 %551, 32752
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = lshr i32 %550, 7
  %555 = and i32 %554, 32752
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %550, 22
  %558 = shl nuw nsw i32 %557, 5
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = fmul fast float %553, %545
  %561 = fmul fast float %556, %546
  %562 = fmul fast float %559, %547
  %563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %564 = extractvalue %dx.types.CBufRet.f32 %563, 0
  %565 = fmul fast float %560, %564
  %566 = fmul fast float %561, %564
  %567 = fmul fast float %562, %564
  %568 = add i32 %22, 48
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = lshr i32 %570, 22
  %572 = shl nuw nsw i32 %571, 5
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = fmul fast float %573, %565
  %575 = select i1 %107, float %574, float %565
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = add i32 %577, 0
  %579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %578, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %580 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %579, %dx.types.Handle %46, float %166, float %167, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 0
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = add i32 %583, 0
  %585 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %584, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %585, %dx.types.Handle %16, float %581, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  %588 = extractvalue %dx.types.ResRet.f32 %586, 1
  %589 = extractvalue %dx.types.ResRet.f32 %586, 2
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = shl i32 %591, 4
  %593 = and i32 %592, 32752
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = lshr i32 %591, 7
  %596 = and i32 %595, 32752
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = lshr i32 %591, 22
  %599 = shl nuw nsw i32 %598, 5
  %600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %599)  ; LegacyF16ToF32(value)
  %601 = fmul fast float %594, %587
  %602 = fmul fast float %597, %588
  %603 = fmul fast float %600, %589
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 0
  %606 = fmul fast float %601, %605
  %607 = fmul fast float %602, %605
  %608 = fmul fast float %603, %605
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = lshr i32 %610, 22
  %612 = shl nuw nsw i32 %611, 5
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = fmul fast float %613, %606
  %615 = select i1 %107, float %614, float %606
  %616 = fsub fast float %615, %575
  %617 = fsub fast float %607, %566
  %618 = fsub fast float %608, %567
  %619 = fmul fast float %616, %37
  %620 = fmul fast float %617, %37
  %621 = fmul fast float %618, %37
  %622 = fadd fast float %619, %575
  %623 = fadd fast float %620, %566
  %624 = fadd fast float %621, %567
  %625 = fsub fast float %587, %545
  %626 = fsub fast float %588, %546
  %627 = fsub fast float %589, %547
  %628 = fmul fast float %625, %37
  %629 = fmul fast float %626, %37
  %630 = fmul fast float %627, %37
  %631 = fadd fast float %628, %545
  %632 = fadd fast float %629, %546
  %633 = fadd fast float %630, %547
  %634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  %636 = extractvalue %dx.types.ResRet.f32 %634, 1
  %637 = extractvalue %dx.types.ResRet.f32 %634, 2
  %638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.f32 %638, 1
  %640 = fmul fast float %622, %529
  %641 = fmul fast float %623, %530
  %642 = fmul fast float %624, %531
  %643 = call float @dx.op.dot3.f32(i32 55, float %640, float %641, float %642, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %644 = select i1 %107, float 0.000000e+00, float %640
  %645 = select i1 %107, float %643, float %641
  %646 = select i1 %107, float 0.000000e+00, float %642
  %647 = call float @dx.op.dot3.f32(i32 55, float %631, float %632, float %633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %648 = add i32 %22, 32
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = and i32 %650, 255
  %652 = uitofp i32 %651 to float
  %653 = lshr i32 %650, 8
  %654 = and i32 %653, 255
  %655 = uitofp i32 %654 to float
  %656 = fmul fast float %655, %647
  %657 = fadd fast float %656, %652
  %658 = fmul fast float %657, 0x3F70101020000000
  %659 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %660 = and i32 %127, 8192
  %661 = icmp eq i32 %660, 0
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 0
  br i1 %661, label %670, label %664, !dx.controlflow.hints !69

; <label>:664                                     ; preds = %526
  %665 = add i32 %124, 176
  %666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = fcmp fast oge float %667, 0.000000e+00
  %669 = select i1 %668, float %667, float %663
  br label %677

; <label>:670                                     ; preds = %526
  %671 = add i32 %22, 104
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %671, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = bitcast i32 %673 to float
  %675 = fcmp fast oge float %674, 0.000000e+00
  %676 = select i1 %675, float %674, float %663
  br label %677

; <label>:677                                     ; preds = %670, %664
  %678 = phi float [ %669, %664 ], [ %676, %670 ]
  %679 = fmul fast float %647, %528
  %680 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %194, i32 %195, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %681 = extractvalue %dx.types.ResRet.i32 %680, 0
  %682 = lshr i32 %681, 18
  %683 = uitofp i32 %682 to float
  %684 = fmul fast float %683, 0x3F4C00EBA0000000
  %685 = call float @dx.op.unary.f32(i32 21, float %684)  ; Exp(value)
  %686 = fadd fast float %685, -1.000000e+00
  %687 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %688 = extractvalue %dx.types.Dimensions %687, 0
  %689 = sitofp i32 %688 to float
  %690 = extractvalue %dx.types.Dimensions %687, 1
  %691 = sitofp i32 %690 to float
  %692 = fcmp fast oge float %192, %689
  %693 = fcmp fast oge float %193, %691
  %694 = or i1 %692, %693
  %695 = select i1 %694, float 0x4197782600000000, float %686
  %696 = icmp eq i32 %123, 3
  %697 = fcmp fast ogt float %45, %695
  %698 = and i1 %218, %697
  %699 = or i1 %696, %698
  %700 = icmp eq i32 %123, 2
  %701 = fcmp fast ole float %45, %695
  %702 = and i1 %700, %701
  %703 = or i1 %702, %699
  %704 = fmul fast float %622, %34
  %705 = fmul fast float %704, %635
  %706 = fmul fast float %705, %639
  %707 = fmul fast float %623, %34
  %708 = fmul fast float %707, %636
  %709 = fmul fast float %708, %639
  %710 = fmul fast float %624, %34
  %711 = fmul fast float %710, %637
  %712 = fmul fast float %711, %639
  %713 = fadd fast float %706, %644
  %714 = fadd fast float %645, %709
  %715 = fadd fast float %712, %646
  %716 = fmul fast float %713, %527
  %717 = fmul fast float %714, %527
  %718 = fmul fast float %715, %527
  %719 = fmul fast float %678, %659
  %720 = fsub fast float 1.000000e+00, %659
  %721 = fsub fast float %720, %679
  %722 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 3
  %725 = fmul fast float %724, %722
  %726 = fadd fast float %725, %719
  %727 = and i32 %127, 1048576
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %820, label %729, !dx.controlflow.hints !70

; <label>:729                                     ; preds = %677
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %733 = fmul fast float %731, %49
  %734 = fmul fast float %732, %50
  %735 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %736 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %737 = select i1 %703, i32 2, i32 0
  %738 = or i32 %737, 1
  %739 = uitofp i32 %738 to float
  %740 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %735, float %736, float %739, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = extractvalue %dx.types.ResRet.f32 %740, 2
  %744 = extractvalue %dx.types.ResRet.f32 %740, 3
  %745 = add nuw nsw i32 %737, 2
  %746 = uitofp i32 %745 to float
  %747 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %735, float %736, float %746, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = extractvalue %dx.types.ResRet.f32 %747, 1
  %750 = extractvalue %dx.types.ResRet.f32 %747, 2
  %751 = extractvalue %dx.types.ResRet.f32 %747, 3
  %752 = call float @dx.op.binary.f32(i32 35, float %742, float %743)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 35, float %741, float %752)  ; FMax(a,b)
  %754 = call float @dx.op.binary.f32(i32 35, float %753, float %744)  ; FMax(a,b)
  %755 = call float @dx.op.binary.f32(i32 36, float %749, float %750)  ; FMin(a,b)
  %756 = call float @dx.op.binary.f32(i32 36, float %748, float %755)  ; FMin(a,b)
  %757 = call float @dx.op.binary.f32(i32 36, float %756, float %751)  ; FMin(a,b)
  %758 = fmul fast float %754, 2.550000e+02
  %759 = fadd fast float %758, 0x3F70101020000000
  %760 = fptoui float %759 to i32
  %761 = fmul fast float %757, 2.550000e+02
  %762 = fadd fast float %761, 0x3F70101020000000
  %763 = fptoui float %762 to i32
  %764 = icmp ult i32 %760, %763
  br i1 %764, label %765, label %813

; <label>:765                                     ; preds = %729
  %766 = fcmp fast ogt float %44, 9.843750e-01
  %767 = fadd fast float %45, -4.000000e+00
  %768 = select i1 %766, float -4.000000e+00, float %767
  %769 = call float @dx.op.binary.f32(i32 35, float %768, float 0.000000e+00)  ; FMax(a,b)
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 0
  %772 = fadd fast float %771, %769
  %773 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %774 = fmul fast float %772, %773
  %775 = call float @dx.op.unary.f32(i32 23, float %774)  ; Log(value)
  %776 = extractvalue %dx.types.CBufRet.f32 %770, 3
  %777 = fmul fast float %776, %775
  %778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %779 = extractvalue %dx.types.CBufRet.f32 %778, 2
  %780 = fmul fast float %777, %779
  %781 = call float @dx.op.unary.f32(i32 7, float %780)  ; Saturate(value)
  %782 = uitofp i32 %760 to float
  %783 = uitofp i32 %763 to float
  %784 = fadd fast float %782, 5.000000e-01
  %785 = fadd fast float %783, 5.000000e-01
  %786 = fmul fast float %779, %784
  %787 = fmul fast float %779, %785
  %788 = fadd fast float %786, 0x3F0FFB4800000000
  %789 = fadd fast float %787, 0xBF0FFB4800000000
  %790 = call float @dx.op.binary.f32(i32 35, float %781, float %788)  ; FMax(a,b)
  %791 = call float @dx.op.binary.f32(i32 36, float %790, float %789)  ; FMin(a,b)
  %792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %793 = extractvalue %dx.types.CBufRet.f32 %792, 1
  %794 = extractvalue %dx.types.CBufRet.f32 %792, 2
  %795 = extractvalue %dx.types.CBufRet.f32 %792, 0
  %796 = select i1 %703, float %795, float 0.000000e+00
  %797 = fmul fast float %793, %791
  %798 = fadd fast float %796, %797
  %799 = fadd fast float %796, %794
  %800 = fsub fast float %793, %794
  %801 = fadd fast float %800, %796
  %802 = call float @dx.op.binary.f32(i32 35, float %798, float %799)  ; FMax(a,b)
  %803 = call float @dx.op.binary.f32(i32 36, float %802, float %801)  ; FMin(a,b)
  %804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %735, float %736, float %803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %805 = extractvalue %dx.types.ResRet.f32 %804, 0
  %806 = extractvalue %dx.types.ResRet.f32 %804, 1
  %807 = extractvalue %dx.types.ResRet.f32 %804, 2
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %810 = fmul fast float %809, %805
  %811 = fmul fast float %809, %806
  %812 = fmul fast float %809, %807
  br label %813

; <label>:813                                     ; preds = %765, %729
  %814 = phi float [ %810, %765 ], [ 1.000000e+00, %729 ]
  %815 = phi float [ %811, %765 ], [ 1.000000e+00, %729 ]
  %816 = phi float [ %812, %765 ], [ 1.000000e+00, %729 ]
  %817 = fmul fast float %814, %716
  %818 = fmul fast float %815, %717
  %819 = fmul fast float %816, %718
  br label %820

; <label>:820                                     ; preds = %813, %677
  %821 = phi float [ %817, %813 ], [ %716, %677 ]
  %822 = phi float [ %818, %813 ], [ %717, %677 ]
  %823 = phi float [ %819, %813 ], [ %718, %677 ]
  %824 = and i32 %127, 2097152
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %830, label %826, !dx.controlflow.hints !71

; <label>:826                                     ; preds = %820
  %827 = add i32 %124, 192
  %828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  br label %833

; <label>:830                                     ; preds = %820
  %831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %832 = extractvalue %dx.types.CBufRet.f32 %831, 3
  br label %833

; <label>:833                                     ; preds = %830, %826
  %834 = phi float [ %829, %826 ], [ %832, %830 ]
  br i1 %698, label %835, label %919

; <label>:835                                     ; preds = %833
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 2
  %838 = extractvalue %dx.types.CBufRet.f32 %836, 3
  %839 = fmul fast float %837, %49
  %840 = fmul fast float %838, %50
  %841 = call float @dx.op.unary.f32(i32 7, float %839)  ; Saturate(value)
  %842 = call float @dx.op.unary.f32(i32 7, float %840)  ; Saturate(value)
  %843 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %841, float %842, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %844 = extractvalue %dx.types.ResRet.f32 %843, 0
  %845 = extractvalue %dx.types.ResRet.f32 %843, 1
  %846 = extractvalue %dx.types.ResRet.f32 %843, 2
  %847 = extractvalue %dx.types.ResRet.f32 %843, 3
  %848 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %841, float %842, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = extractvalue %dx.types.ResRet.f32 %848, 1
  %851 = extractvalue %dx.types.ResRet.f32 %848, 2
  %852 = extractvalue %dx.types.ResRet.f32 %848, 3
  %853 = call float @dx.op.binary.f32(i32 35, float %845, float %846)  ; FMax(a,b)
  %854 = call float @dx.op.binary.f32(i32 35, float %844, float %853)  ; FMax(a,b)
  %855 = call float @dx.op.binary.f32(i32 35, float %854, float %847)  ; FMax(a,b)
  %856 = call float @dx.op.binary.f32(i32 36, float %850, float %851)  ; FMin(a,b)
  %857 = call float @dx.op.binary.f32(i32 36, float %849, float %856)  ; FMin(a,b)
  %858 = call float @dx.op.binary.f32(i32 36, float %857, float %852)  ; FMin(a,b)
  %859 = fmul fast float %855, 2.550000e+02
  %860 = fadd fast float %859, 0x3F70101020000000
  %861 = fptoui float %860 to i32
  %862 = fmul fast float %858, 2.550000e+02
  %863 = fadd fast float %862, 0x3F70101020000000
  %864 = fptoui float %863 to i32
  %865 = icmp ult i32 %861, %864
  br i1 %865, label %866, label %908

; <label>:866                                     ; preds = %835
  %867 = fcmp fast ogt float %44, 9.843750e-01
  %868 = fadd fast float %45, -4.000000e+00
  %869 = select i1 %867, float -4.000000e+00, float %868
  %870 = call float @dx.op.binary.f32(i32 35, float %869, float 0.000000e+00)  ; FMax(a,b)
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = fadd fast float %872, %870
  %874 = extractvalue %dx.types.CBufRet.f32 %871, 2
  %875 = fmul fast float %873, %874
  %876 = call float @dx.op.unary.f32(i32 23, float %875)  ; Log(value)
  %877 = extractvalue %dx.types.CBufRet.f32 %871, 3
  %878 = fmul fast float %877, %876
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 2
  %881 = fmul fast float %878, %880
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %883 = uitofp i32 %861 to float
  %884 = uitofp i32 %864 to float
  %885 = fadd fast float %883, 5.000000e-01
  %886 = fadd fast float %884, 5.000000e-01
  %887 = fmul fast float %880, %885
  %888 = fmul fast float %880, %886
  %889 = fadd fast float %887, 0x3F0FFB4800000000
  %890 = fadd fast float %888, 0xBF0FFB4800000000
  %891 = call float @dx.op.binary.f32(i32 35, float %882, float %889)  ; FMax(a,b)
  %892 = call float @dx.op.binary.f32(i32 36, float %891, float %890)  ; FMin(a,b)
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 1
  %895 = extractvalue %dx.types.CBufRet.f32 %893, 2
  %896 = extractvalue %dx.types.CBufRet.f32 %893, 0
  %897 = fmul fast float %894, %892
  %898 = fadd fast float %896, %897
  %899 = fadd fast float %896, %895
  %900 = fsub fast float %894, %895
  %901 = fadd fast float %900, %896
  %902 = call float @dx.op.binary.f32(i32 35, float %898, float %899)  ; FMax(a,b)
  %903 = call float @dx.op.binary.f32(i32 36, float %902, float %901)  ; FMin(a,b)
  %904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %841, float %842, float %903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %905 = extractvalue %dx.types.ResRet.f32 %904, 0
  %906 = extractvalue %dx.types.ResRet.f32 %904, 1
  %907 = extractvalue %dx.types.ResRet.f32 %904, 2
  br label %908

; <label>:908                                     ; preds = %866, %835
  %909 = phi float [ %905, %866 ], [ 1.000000e+00, %835 ]
  %910 = phi float [ %906, %866 ], [ 1.000000e+00, %835 ]
  %911 = phi float [ %907, %866 ], [ 1.000000e+00, %835 ]
  %912 = call float @dx.op.dot3.f32(i32 55, float %909, float %910, float %911, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %913 = select i1 %107, float %912, float %909
  %914 = select i1 %107, float %912, float %910
  %915 = select i1 %107, float 1.000000e+00, float %911
  %916 = fmul fast float %913, %821
  %917 = fmul fast float %914, %822
  %918 = fmul fast float %915, %823
  br label %919

; <label>:919                                     ; preds = %908, %833
  %920 = phi float [ %695, %908 ], [ %45, %833 ]
  %921 = phi float [ %916, %908 ], [ %821, %833 ]
  %922 = phi float [ %917, %908 ], [ %822, %833 ]
  %923 = phi float [ %918, %908 ], [ %823, %833 ]
  %924 = phi float [ %909, %908 ], [ 1.000000e+00, %833 ]
  br i1 %703, label %1167, label %925

; <label>:925                                     ; preds = %919
  %926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %29, float %30, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = extractvalue %dx.types.ResRet.f32 %926, 1
  %929 = extractvalue %dx.types.ResRet.f32 %926, 2
  %930 = fmul fast float %927, %924
  %931 = call float @dx.op.dot3.f32(i32 55, float %927, float %928, float %929, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %932 = select i1 %107, float %931, float %927
  %933 = select i1 %107, float %931, float %928
  %934 = select i1 %107, float 1.000000e+00, float %929
  %935 = fmul fast float %932, %921
  %936 = fmul fast float %933, %922
  %937 = fmul fast float %934, %923
  %938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.i32 %938, 0
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %1167, label %941, !dx.controlflow.hints !72

; <label>:941                                     ; preds = %925
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 2
  %944 = extractvalue %dx.types.CBufRet.f32 %942, 3
  %945 = fmul fast float %943, %49
  %946 = fmul fast float %944, %50
  %947 = fmul fast float %945, 2.000000e+00
  %948 = fmul fast float %946, 2.000000e+00
  %949 = fsub fast float 1.000000e+00, %947
  %950 = fsub fast float 1.000000e+00, %948
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %954 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %955 = fmul fast float %949, %952
  %956 = fmul fast float %949, %953
  %957 = fmul fast float %949, %954
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 0
  %960 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %961 = extractvalue %dx.types.CBufRet.f32 %958, 2
  %962 = fmul fast float %950, %959
  %963 = fmul fast float %950, %960
  %964 = fmul fast float %950, %961
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %967 = extractvalue %dx.types.CBufRet.f32 %965, 1
  %968 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %969 = fadd fast float %962, %966
  %970 = fadd fast float %969, %955
  %971 = fadd fast float %963, %967
  %972 = fadd fast float %971, %956
  %973 = fadd fast float %964, %968
  %974 = fadd fast float %973, %957
  %975 = fmul fast float %970, %920
  %976 = fmul fast float %972, %920
  %977 = fmul fast float %974, %920
  %978 = fmul fast float %975, %975
  %979 = fmul fast float %976, %976
  %980 = fadd fast float %978, %979
  %981 = fmul fast float %977, %977
  %982 = fadd fast float %980, %981
  %983 = call float @dx.op.unary.f32(i32 24, float %982)  ; Sqrt(value)
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %986 = fsub fast float %983, %985
  %987 = extractvalue %dx.types.CBufRet.f32 %984, 2
  %988 = fmul fast float %986, %987
  %989 = call float @dx.op.unary.f32(i32 7, float %988)  ; Saturate(value)
  %990 = fadd fast float %989, -5.000000e-01
  %991 = fmul fast float %990, 2.000000e+00
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %994 = call float @dx.op.binary.f32(i32 36, float %993, float %991)  ; FMin(a,b)
  %995 = fsub fast float -0.000000e+00, %993
  %996 = fcmp fast ogt float %994, %995
  br i1 %996, label %997, label %1167, !dx.controlflow.hints !73

; <label>:997                                     ; preds = %941
  %998 = fmul fast float %994, 5.000000e-01
  %999 = fadd fast float %998, 5.000000e-01
  %1000 = call float @dx.op.unary.f32(i32 22, float %999)  ; Frc(value)
  %1001 = call float @dx.op.unary.f32(i32 27, float %1000)  ; Round_ni(value)
  %1002 = call float @dx.op.unary.f32(i32 22, float %1000)  ; Frc(value)
  %1003 = fmul fast float %1002, 2.000000e+00
  %1004 = fadd fast float %1003, -1.000000e+00
  %1005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %945, float %946, float %1001, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1009 = extractvalue %dx.types.ResRet.f32 %1005, 3
  %1010 = fadd fast float %1006, -5.000000e-01
  %1011 = fadd fast float %1008, -5.000000e-01
  %1012 = fmul fast float %1010, 0xBFD5555560000000
  %1013 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1011, float %1012)  ; FMad(a,b,c)
  %1014 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1007, float 0.000000e+00)  ; FMad(a,b,c)
  %1015 = fadd fast float %1014, %1009
  %1016 = fmul fast float %1010, -7.500000e-01
  %1017 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1011, float %1016)  ; FMad(a,b,c)
  %1018 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1007, float 0.000000e+00)  ; FMad(a,b,c)
  %1019 = fadd fast float %1018, %1009
  %1020 = call float @dx.op.binary.f32(i32 35, float %1013, float -1.000000e+00)  ; FMax(a,b)
  %1021 = call float @dx.op.binary.f32(i32 35, float %1015, float -1.000000e+00)  ; FMax(a,b)
  %1022 = call float @dx.op.binary.f32(i32 35, float %1017, float -1.000000e+00)  ; FMax(a,b)
  %1023 = call float @dx.op.binary.f32(i32 35, float %1019, float -1.000000e+00)  ; FMax(a,b)
  %1024 = call float @dx.op.binary.f32(i32 36, float %1020, float 1.000000e+00)  ; FMin(a,b)
  %1025 = call float @dx.op.binary.f32(i32 36, float %1021, float 1.000000e+00)  ; FMin(a,b)
  %1026 = call float @dx.op.binary.f32(i32 36, float %1022, float 1.000000e+00)  ; FMin(a,b)
  %1027 = call float @dx.op.binary.f32(i32 36, float %1023, float 1.000000e+00)  ; FMin(a,b)
  %1028 = fcmp fast olt float %1024, 0x3FEFFF8020000000
  br i1 %1028, label %1029, label %1144, !dx.controlflow.hints !74

; <label>:1029                                    ; preds = %997
  %1030 = extractvalue %dx.types.CBufRet.f32 %992, 3
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = extractvalue %dx.types.CBufRet.f32 %1031, 1
  %1034 = extractvalue %dx.types.CBufRet.f32 %1031, 2
  %1035 = extractvalue %dx.types.CBufRet.f32 %1031, 3
  %1036 = fsub fast float %1032, %1024
  %1037 = fsub fast float %1033, %1025
  %1038 = fsub fast float %1034, %1026
  %1039 = fsub fast float %1035, %1027
  %1040 = fmul fast float %1036, %1030
  %1041 = fmul fast float %1037, %1030
  %1042 = fmul fast float %1038, %1030
  %1043 = fmul fast float %1039, %1030
  %1044 = fadd fast float %1040, %1024
  %1045 = fadd fast float %1041, %1025
  %1046 = fsub fast float -0.000000e+00, %1045
  %1047 = fadd fast float %1042, %1026
  %1048 = fadd fast float %1043, %1027
  %1049 = fmul fast float %1044, %1044
  %1050 = fsub fast float %1045, %1049
  %1051 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1050)  ; FMax(a,b)
  %1052 = fdiv fast float 1.000000e+00, %1051
  %1053 = fmul fast float %1045, %1044
  %1054 = fsub fast float %1047, %1053
  %1055 = fsub fast float %1004, %1044
  %1056 = fmul fast float %1004, %1004
  %1057 = fsub fast float %1056, %1045
  %1058 = fmul fast float %1055, %1052
  %1059 = fmul fast float %1058, %1054
  %1060 = fsub fast float %1057, %1059
  %1061 = fmul fast float %1045, %1045
  %1062 = fsub fast float %1048, %1061
  %1063 = fmul fast float %1054, %1054
  %1064 = fmul fast float %1063, %1052
  %1065 = fsub fast float %1062, %1064
  %1066 = fdiv fast float %1060, %1065
  %1067 = fmul fast float %1054, %1066
  %1068 = fsub fast float %1055, %1067
  %1069 = fmul fast float %1068, %1052
  %1070 = fmul fast float %1069, %1044
  %1071 = fsub fast float 1.000000e+00, %1070
  %1072 = fmul fast float %1045, %1066
  %1073 = fsub fast float %1071, %1072
  %1074 = fmul fast float %1069, %1069
  %1075 = fmul fast float %1066, 4.000000e+00
  %1076 = fmul fast float %1075, %1073
  %1077 = fsub fast float %1074, %1076
  %1078 = call float @dx.op.unary.f32(i32 24, float %1077)  ; Sqrt(value)
  %1079 = fcmp fast oge float %1069, 0.000000e+00
  %1080 = fsub fast float -0.000000e+00, %1078
  %1081 = select i1 %1079, float %1080, float %1078
  %1082 = fsub fast float %1081, %1069
  %1083 = fdiv fast float %1082, %1066
  %1084 = fdiv fast float %1073, %1082
  %1085 = fmul fast float %1083, 5.000000e-01
  %1086 = fmul fast float %1084, 2.000000e+00
  %1087 = select i1 %1079, float %1085, float %1086
  %1088 = select i1 %1079, float %1086, float %1085
  %1089 = call float @dx.op.binary.f32(i32 35, float %1087, float %1088)  ; FMax(a,b)
  %1090 = call float @dx.op.binary.f32(i32 36, float %1087, float %1088)  ; FMin(a,b)
  %1091 = fcmp fast ogt float %1004, %1090
  br i1 %1091, label %1092, label %1102

; <label>:1092                                    ; preds = %1029
  %1093 = fsub fast float %1004, %1090
  %1094 = fsub fast float %1089, %1090
  %1095 = fmul fast float %1093, %1094
  %1096 = fmul fast float %1089, %1004
  %1097 = fadd fast float %1089, %1004
  %1098 = fmul fast float %1097, %1044
  %1099 = fadd fast float %1096, %1045
  %1100 = fsub fast float %1099, %1098
  %1101 = fdiv fast float %1100, %1095
  br label %1102

; <label>:1102                                    ; preds = %1092, %1029
  %1103 = phi float [ %1101, %1092 ], [ 0.000000e+00, %1029 ]
  %1104 = fcmp fast ogt float %1004, %1089
  %1105 = fsub fast float %1004, %1089
  br i1 %1104, label %1106, label %1116

; <label>:1106                                    ; preds = %1102
  %1107 = fsub fast float %1089, %1090
  %1108 = fmul fast float %1107, %1105
  %1109 = fmul fast float %1090, %1004
  %1110 = fadd fast float %1090, %1004
  %1111 = fmul fast float %1110, %1044
  %1112 = fsub fast float %1046, %1109
  %1113 = fadd fast float %1112, %1111
  %1114 = fdiv fast float %1113, %1108
  %1115 = fadd fast float %1114, %1103
  br label %1116

; <label>:1116                                    ; preds = %1106, %1102
  %1117 = phi float [ %1115, %1106 ], [ %1103, %1102 ]
  %1118 = fsub fast float %1004, %1090
  %1119 = fmul fast float %1118, %1105
  %1120 = fmul fast float %1090, %1089
  %1121 = fadd fast float %1090, %1089
  %1122 = fmul fast float %1121, %1044
  %1123 = fadd fast float %1120, %1045
  %1124 = fsub fast float %1123, %1122
  %1125 = fdiv fast float %1124, %1119
  %1126 = call float @dx.op.unary.f32(i32 7, float %1117)  ; Saturate(value)
  %1127 = fcmp fast oeq float %834, 0.000000e+00
  %1128 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %1129 = fcmp fast oeq float %1128, 0.000000e+00
  %1130 = or i1 %1127, %1129
  %1131 = fmul fast float %1128, 2.000000e+00
  %1132 = fadd fast float %993, %994
  %1133 = fdiv fast float %1132, %1131
  %1134 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1135 = fmul fast float %1134, 2.000000e+00
  %1136 = fsub fast float 3.000000e+00, %1135
  %1137 = fmul fast float %1134, %1134
  %1138 = fmul fast float %1137, %1136
  %1139 = select i1 %1130, float 1.000000e+00, float %1138
  %1140 = fmul fast float %1125, %834
  %1141 = fadd fast float %1126, %1140
  %1142 = call float @dx.op.unary.f32(i32 7, float %1141)  ; Saturate(value)
  %1143 = fmul fast float %1139, %1142
  br label %1144

; <label>:1144                                    ; preds = %1116, %997
  %1145 = phi float [ %1143, %1116 ], [ 0.000000e+00, %997 ]
  %1146 = fsub fast float 1.000000e+00, %1145
  %1147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %945, float %946, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1148 = extractvalue %dx.types.ResRet.f32 %1147, 0
  %1149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.i32 %1149, 2
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1157, label %1152

; <label>:1152                                    ; preds = %1144
  %1153 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1154 = fadd fast float %1148, -1.000000e+00
  %1155 = fmul fast float %1153, %1154
  %1156 = fadd fast float %1155, 1.000000e+00
  br label %1157

; <label>:1157                                    ; preds = %1152, %1144
  %1158 = phi float [ %1156, %1152 ], [ %1146, %1144 ]
  %1159 = call float @dx.op.binary.f32(i32 35, float %1148, float %1158)  ; FMax(a,b)
  %1160 = fmul fast float %1159, %930
  %1161 = call float @dx.op.dot3.f32(i32 55, float %1159, float %1159, float %1159, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1162 = select i1 %107, float %1161, float %1159
  %1163 = select i1 %107, float 1.000000e+00, float %1159
  %1164 = fmul fast float %1162, %935
  %1165 = fmul fast float %1162, %936
  %1166 = fmul fast float %1163, %937
  br label %1167

; <label>:1167                                    ; preds = %1157, %941, %925, %919
  %1168 = phi float [ %921, %919 ], [ %935, %925 ], [ %1164, %1157 ], [ %935, %941 ]
  %1169 = phi float [ %922, %919 ], [ %936, %925 ], [ %1165, %1157 ], [ %936, %941 ]
  %1170 = phi float [ %923, %919 ], [ %937, %925 ], [ %1166, %1157 ], [ %937, %941 ]
  %1171 = phi float [ %924, %919 ], [ %930, %925 ], [ %1160, %1157 ], [ %930, %941 ]
  %1172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1173 = extractvalue %dx.types.CBufRet.f32 %1172, 2
  %1174 = extractvalue %dx.types.CBufRet.f32 %1172, 3
  %1175 = fmul fast float %1173, %49
  %1176 = fmul fast float %1174, %50
  %1177 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  %1178 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1179 = select i1 %703, i32 2, i32 0
  %1180 = or i32 %1179, 1
  %1181 = uitofp i32 %1180 to float
  %1182 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1177, float %1178, float %1181, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = extractvalue %dx.types.ResRet.f32 %1182, 1
  %1185 = extractvalue %dx.types.ResRet.f32 %1182, 2
  %1186 = extractvalue %dx.types.ResRet.f32 %1182, 3
  %1187 = add nuw nsw i32 %1179, 2
  %1188 = uitofp i32 %1187 to float
  %1189 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1177, float %1178, float %1188, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.ResRet.f32 %1189, 1
  %1192 = extractvalue %dx.types.ResRet.f32 %1189, 2
  %1193 = extractvalue %dx.types.ResRet.f32 %1189, 3
  %1194 = call float @dx.op.binary.f32(i32 35, float %1184, float %1185)  ; FMax(a,b)
  %1195 = call float @dx.op.binary.f32(i32 35, float %1183, float %1194)  ; FMax(a,b)
  %1196 = call float @dx.op.binary.f32(i32 35, float %1195, float %1186)  ; FMax(a,b)
  %1197 = call float @dx.op.binary.f32(i32 36, float %1191, float %1192)  ; FMin(a,b)
  %1198 = call float @dx.op.binary.f32(i32 36, float %1190, float %1197)  ; FMin(a,b)
  %1199 = call float @dx.op.binary.f32(i32 36, float %1198, float %1193)  ; FMin(a,b)
  %1200 = fmul fast float %1196, 2.550000e+02
  %1201 = fadd fast float %1200, 0x3F70101020000000
  %1202 = fptoui float %1201 to i32
  %1203 = fmul fast float %1199, 2.550000e+02
  %1204 = fadd fast float %1203, 0x3F70101020000000
  %1205 = fptoui float %1204 to i32
  %1206 = icmp ult i32 %1202, %1205
  br i1 %1206, label %1207, label %1250

; <label>:1207                                    ; preds = %1167
  %1208 = fcmp fast ogt float %44, 9.843750e-01
  %1209 = fadd fast float %920, -4.000000e+00
  %1210 = select i1 %1208, float -4.000000e+00, float %1209
  %1211 = call float @dx.op.binary.f32(i32 35, float %1210, float 0.000000e+00)  ; FMax(a,b)
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 0
  %1214 = fadd fast float %1213, %1211
  %1215 = extractvalue %dx.types.CBufRet.f32 %1212, 2
  %1216 = fmul fast float %1214, %1215
  %1217 = call float @dx.op.unary.f32(i32 23, float %1216)  ; Log(value)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1212, 3
  %1219 = fmul fast float %1218, %1217
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 2
  %1222 = fmul fast float %1219, %1221
  %1223 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  %1224 = uitofp i32 %1202 to float
  %1225 = uitofp i32 %1205 to float
  %1226 = fadd fast float %1224, 5.000000e-01
  %1227 = fadd fast float %1225, 5.000000e-01
  %1228 = fmul fast float %1221, %1226
  %1229 = fmul fast float %1221, %1227
  %1230 = fadd fast float %1228, 0x3F0FFB4800000000
  %1231 = fadd fast float %1229, 0xBF0FFB4800000000
  %1232 = call float @dx.op.binary.f32(i32 35, float %1223, float %1230)  ; FMax(a,b)
  %1233 = call float @dx.op.binary.f32(i32 36, float %1232, float %1231)  ; FMin(a,b)
  %1234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.f32 %1234, 1
  %1236 = extractvalue %dx.types.CBufRet.f32 %1234, 2
  %1237 = extractvalue %dx.types.CBufRet.f32 %1234, 0
  %1238 = select i1 %703, float %1237, float 0.000000e+00
  %1239 = fmul fast float %1235, %1233
  %1240 = fadd fast float %1238, %1239
  %1241 = fadd fast float %1238, %1236
  %1242 = fsub fast float %1235, %1236
  %1243 = fadd fast float %1242, %1238
  %1244 = call float @dx.op.binary.f32(i32 35, float %1240, float %1241)  ; FMax(a,b)
  %1245 = call float @dx.op.binary.f32(i32 36, float %1244, float %1243)  ; FMin(a,b)
  %1246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1177, float %1178, float %1245, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = extractvalue %dx.types.ResRet.f32 %1246, 1
  %1249 = extractvalue %dx.types.ResRet.f32 %1246, 2
  br label %1250

; <label>:1250                                    ; preds = %1207, %1167
  %1251 = phi float [ %1247, %1207 ], [ 1.000000e+00, %1167 ]
  %1252 = phi float [ %1248, %1207 ], [ 1.000000e+00, %1167 ]
  %1253 = phi float [ %1249, %1207 ], [ 1.000000e+00, %1167 ]
  %1254 = fmul fast float %1251, %1171
  %1255 = call float @dx.op.dot3.f32(i32 55, float %1251, float %1252, float %1253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1256 = select i1 %107, float %1255, float %1251
  %1257 = select i1 %107, float %1255, float %1252
  %1258 = select i1 %107, float 1.000000e+00, float %1253
  %1259 = fmul fast float %1256, %1168
  %1260 = fmul fast float %1257, %1169
  %1261 = fmul fast float %1258, %1170
  %1262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.i32 %1262, 3
  %1264 = and i32 %1263, 3
  %1265 = icmp ne i32 %1264, 0
  %1266 = and i32 %1263, 4
  %1267 = icmp ne i32 %1266, 0
  %1268 = and i1 %1265, %1267
  %1269 = and i1 %107, %1268
  br i1 %1269, label %1270, label %1276

; <label>:1270                                    ; preds = %1250
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1273 = fadd fast float %1254, -1.000000e+00
  %1274 = fmul fast float %1272, %1273
  %1275 = fadd fast float %1274, 1.000000e+00
  br label %1276

; <label>:1276                                    ; preds = %1270, %1250
  %1277 = phi float [ %1275, %1270 ], [ %1254, %1250 ]
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  br i1 %107, label %1280, label %1300

; <label>:1280                                    ; preds = %1276
  %1281 = fadd fast float %1259, %1260
  %1282 = fmul fast float %1279, %1281
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 3
  %1285 = extractvalue %dx.types.CBufRet.f32 %723, 1
  %1286 = fsub fast float %726, %1285
  %1287 = extractvalue %dx.types.CBufRet.f32 %723, 2
  %1288 = fmul fast float %1286, %1287
  %1289 = call float @dx.op.unary.f32(i32 7, float %1288)  ; Saturate(value)
  %1290 = fsub fast float %1289, %1284
  %1291 = fmul fast float %1290, %1277
  %1292 = fadd fast float %1291, %1284
  %1293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1293, 0
  %1295 = fsub fast float %1292, %1294
  %1296 = fmul fast float %1295, 1.000000e+01
  %1297 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1298 = fmul fast float %1297, %679
  %1299 = fmul fast float %1292, %1298
  br label %1309

; <label>:1300                                    ; preds = %1276
  %1301 = fmul fast float %1279, %1259
  %1302 = fmul fast float %1279, %1260
  %1303 = fmul fast float %1261, %1279
  %1304 = call float @dx.op.binary.f32(i32 35, float %1302, float %1303)  ; FMax(a,b)
  %1305 = call float @dx.op.binary.f32(i32 35, float %1301, float %1304)  ; FMax(a,b)
  %1306 = call float @dx.op.binary.f32(i32 35, float %1305, float 0.000000e+00)  ; FMax(a,b)
  %1307 = fcmp fast ugt float %1306, 0x3F10000000000000
  br i1 %1307, label %1309, label %1308

; <label>:1308                                    ; preds = %1300
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1309

; <label>:1309                                    ; preds = %1308, %1300, %1280
  %1310 = phi float [ %1282, %1280 ], [ %1301, %1308 ], [ %1301, %1300 ]
  %1311 = phi float [ %1299, %1280 ], [ %1302, %1308 ], [ %1302, %1300 ]
  %1312 = phi float [ %1298, %1280 ], [ %1303, %1308 ], [ %1303, %1300 ]
  %1313 = phi float [ %1298, %1280 ], [ 0.000000e+00, %1308 ], [ 0.000000e+00, %1300 ]
  %1314 = fadd fast float %466, 0x3FE3C6EF40000000
  %1315 = call float @dx.op.unary.f32(i32 22, float %1314)  ; Frc(value)
  %1316 = call float @dx.op.unary.f32(i32 23, float %1310)  ; Log(value)
  %1317 = fadd fast float %1316, -7.000000e+00
  %1318 = call float @dx.op.unary.f32(i32 21, float %1317)  ; Exp(value)
  %1319 = fmul fast float %1315, 2.000000e+00
  %1320 = fadd fast float %1319, -1.000000e+00
  %1321 = fmul fast float %1318, %1320
  %1322 = fcmp fast ogt float %1310, 0.000000e+00
  %1323 = select i1 %1322, float %1321, float 0.000000e+00
  %1324 = fadd fast float %1323, %1310
  %1325 = fadd fast float %466, 0x3FF3C6EF40000000
  %1326 = call float @dx.op.unary.f32(i32 22, float %1325)  ; Frc(value)
  %1327 = call float @dx.op.unary.f32(i32 23, float %1311)  ; Log(value)
  %1328 = fadd fast float %1327, -7.000000e+00
  %1329 = call float @dx.op.unary.f32(i32 21, float %1328)  ; Exp(value)
  %1330 = fmul fast float %1326, 2.000000e+00
  %1331 = fadd fast float %1330, -1.000000e+00
  %1332 = fmul fast float %1329, %1331
  %1333 = fcmp fast ogt float %1311, 0.000000e+00
  %1334 = select i1 %1333, float %1332, float 0.000000e+00
  %1335 = fadd fast float %1334, %1311
  %1336 = fadd fast float %466, 0x3FFDAA66E0000000
  %1337 = call float @dx.op.unary.f32(i32 22, float %1336)  ; Frc(value)
  %1338 = call float @dx.op.unary.f32(i32 23, float %1312)  ; Log(value)
  %1339 = fadd fast float %1338, -6.000000e+00
  %1340 = call float @dx.op.unary.f32(i32 21, float %1339)  ; Exp(value)
  %1341 = fmul fast float %1337, 2.000000e+00
  %1342 = fadd fast float %1341, -1.000000e+00
  %1343 = fmul fast float %1340, %1342
  %1344 = fcmp fast ogt float %1312, 0.000000e+00
  %1345 = select i1 %1344, float %1343, float 0.000000e+00
  %1346 = fadd fast float %1345, %1312
  %1347 = select i1 %107, float %1311, float %1335
  %1348 = select i1 %107, float %1312, float %1346
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1349 = call float @dx.op.binary.f32(i32 36, float %1324, float 3.225500e+04)  ; FMin(a,b)
  %1350 = call float @dx.op.binary.f32(i32 36, float %1347, float 3.225500e+04)  ; FMin(a,b)
  %1351 = call float @dx.op.binary.f32(i32 36, float %1348, float 3.225500e+04)  ; FMin(a,b)
  %1352 = call float @dx.op.binary.f32(i32 36, float %1313, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1349)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1350)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1351)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1352)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1313)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1313)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1313)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1313)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 0, i32 7, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 255, i32 0, i32 0, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !62}
!35 = !{!36, !58, null}
!36 = !{!37, !40, !42, !44, !47, !49, !51, !54, !55, !57}
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
!54 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 7, i8 0, !39}
!55 = !{i32 8, !"COLOR", i8 5, i8 0, !48, i8 1, i32 1, i8 3, i32 8, i8 0, !56}
!56 = !{i32 3, i32 5}
!57 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!58 = !{!59, !60}
!59 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!60 = !{i32 1, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!61 = !{i32 1}
!62 = !{i32 0, i64 24}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

