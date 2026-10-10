;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
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
; shader hash: 50e768d8d63364f3e0477290a0895f45
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
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
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
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = fmul fast float %52, %46
  %54 = fmul fast float %52, %47
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 3
  %58 = fmul fast float %53, 2.000000e+00
  %59 = fmul fast float %58, %56
  %60 = fmul fast float %54, 2.000000e+00
  %61 = fmul fast float %60, %57
  %62 = fsub fast float 1.000000e+00, %59
  %63 = fsub fast float 1.000000e+00, %61
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %68 = fmul fast float %62, %65
  %69 = fmul fast float %62, %66
  %70 = fmul fast float %62, %67
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = fmul fast float %63, %72
  %76 = fmul fast float %63, %73
  %77 = fmul fast float %63, %74
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = extractvalue %dx.types.CBufRet.f32 %78, 1
  %81 = extractvalue %dx.types.CBufRet.f32 %78, 2
  %82 = fadd fast float %75, %79
  %83 = fadd fast float %82, %68
  %84 = fadd fast float %76, %80
  %85 = fadd fast float %84, %69
  %86 = fadd fast float %77, %81
  %87 = fadd fast float %86, %70
  %88 = fmul fast float %83, %49
  %89 = fmul fast float %85, %49
  %90 = fmul fast float %87, %49
  %91 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.i32 %91, 3
  %93 = and i32 %92, 3
  %94 = icmp ne i32 %93, 0
  %95 = and i32 %92, 4
  %96 = icmp ne i32 %95, 0
  %97 = and i1 %94, %96
  br i1 %97, label %98, label %107

; <label>:98                                      ; preds = %0
  %99 = fmul fast float %57, %54
  %100 = fmul fast float %56, %53
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
  %115 = fmul fast float %113, %53
  %116 = fmul fast float %114, %54
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
  %147 = fmul fast float %145, %53
  %148 = fmul fast float %146, %54
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
  %168 = phi float [ %40, %140 ], [ %147, %153 ], [ %166, %161 ], [ %147, %159 ]
  %169 = phi float [ %41, %140 ], [ %158, %153 ], [ %148, %161 ], [ %148, %159 ]
  %170 = fadd fast float %40, %37
  %171 = fadd fast float %41, %38
  %172 = add i32 %22, 72
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = extractvalue %dx.types.ResRet.i32 %173, 1
  %176 = bitcast i32 %174 to float
  %177 = bitcast i32 %175 to float
  %178 = fmul fast float %176, %40
  %179 = fmul fast float %177, %41
  %180 = call float @dx.op.unary.f32(i32 22, float %178)  ; Frc(value)
  %181 = call float @dx.op.unary.f32(i32 22, float %179)  ; Frc(value)
  %182 = and i32 %131, 16
  %183 = icmp ne i32 %182, 0
  %184 = select i1 %183, float 1.000000e+00, float %45
  %185 = icmp eq i32 %182, 0
  br i1 %185, label %205, label %186, !dx.controlflow.hints !61

; <label>:186                                     ; preds = %167
  %187 = add i32 %128, 64
  %188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = fadd fast float %189, 1.000000e+00
  %191 = fmul fast float %190, %45
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
  %211 = fmul fast float %53, 5.000000e-01
  %212 = fmul fast float %54, 5.000000e-01
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
  %231 = fsub fast float %230, %49
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
  br i1 %251, label %529, label %252, !dx.controlflow.hints !62

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
  %295 = fmul fast float %293, %53
  %296 = fmul fast float %294, %54
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
  br i1 %286, label %409, label %320, !dx.controlflow.hints !63

; <label>:320                                     ; preds = %252
  %321 = fmul fast float %58, %293
  %322 = fmul fast float %60, %294
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
  %356 = fsub fast float %353, %23
  %357 = fadd fast float %356, %349
  %358 = fsub fast float %354, %24
  %359 = fadd fast float %358, %350
  %360 = fsub fast float %355, %25
  %361 = fadd fast float %360, %351
  %362 = fmul fast float %26, %26
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
  %380 = fmul fast float %266, %42
  %381 = fmul fast float %267, %43
  %382 = fmul fast float %268, %44
  %383 = fsub fast float %380, %272
  %384 = fsub fast float %381, %273
  %385 = fsub fast float %382, %274
  %386 = fsub fast float %269, %275
  %387 = fmul fast float %379, %383
  %388 = fmul fast float %379, %384
  %389 = fmul fast float %379, %385
  %390 = fmul fast float %379, %386
  %391 = fadd fast float %387, %272
  %392 = fadd fast float %388, %273
  %393 = fadd fast float %389, %274
  %394 = fadd fast float %390, %275
  %395 = fmul fast float %266, %27
  %396 = fmul fast float %267, %28
  %397 = fmul fast float %268, %29
  %398 = fsub fast float %395, %272
  %399 = fsub fast float %396, %273
  %400 = fsub fast float %397, %274
  %401 = fmul fast float %379, %398
  %402 = fmul fast float %379, %399
  %403 = fmul fast float %379, %400
  %404 = fadd fast float %401, %272
  %405 = fadd fast float %402, %273
  %406 = fadd fast float %403, %274
  %407 = fmul fast float %255, %255
  %408 = fmul fast float %407, %370
  br label %516

; <label>:409                                     ; preds = %252
  %410 = and i32 %277, 256
  %411 = icmp eq i32 %410, 0
  %412 = fsub fast float %319, %49
  br i1 %411, label %473, label %413

; <label>:413                                     ; preds = %409
  %414 = fadd fast float %261, %49
  %415 = fcmp fast olt float %319, %49
  %416 = fcmp fast ogt float %319, %414
  %417 = or i1 %415, %416
  %418 = select i1 %417, float 0.000000e+00, float %412
  %419 = call float @dx.op.unary.f32(i32 83, float %319)  ; DerivCoarseX(value)
  %420 = call float @dx.op.unary.f32(i32 84, float %319)  ; DerivCoarseY(value)
  %421 = fmul fast float %419, %419
  %422 = fmul fast float %420, %420
  %423 = fadd fast float %422, %421
  %424 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %425 = extractvalue %dx.types.CBufRet.f32 %299, 2
  %426 = fmul fast float %425, %424
  %427 = call float @dx.op.unary.f32(i32 7, float %426)  ; Saturate(value)
  %428 = fmul fast float %427, %262
  %429 = fdiv fast float %412, %428
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %431 = fmul fast float %430, 2.000000e+00
  %432 = fsub fast float 3.000000e+00, %431
  %433 = fmul fast float %430, %430
  %434 = fmul fast float %433, %432
  %435 = fsub fast float %319, %414
  %436 = fadd fast float %435, %428
  %437 = fdiv fast float %436, %428
  %438 = call float @dx.op.unary.f32(i32 7, float %437)  ; Saturate(value)
  %439 = fmul fast float %438, 2.000000e+00
  %440 = fsub fast float 3.000000e+00, %439
  %441 = fmul fast float %438, %438
  %442 = fmul fast float %441, %440
  %443 = fsub fast float %434, %442
  %444 = fmul fast float %266, %42
  %445 = fmul fast float %267, %43
  %446 = fmul fast float %268, %44
  %447 = fsub fast float %444, %272
  %448 = fsub fast float %445, %273
  %449 = fsub fast float %446, %274
  %450 = fsub fast float %269, %275
  %451 = fmul fast float %443, %447
  %452 = fmul fast float %443, %448
  %453 = fmul fast float %443, %449
  %454 = fmul fast float %443, %450
  %455 = fadd fast float %451, %272
  %456 = fadd fast float %452, %273
  %457 = fadd fast float %453, %274
  %458 = fadd fast float %454, %275
  %459 = fmul fast float %266, %27
  %460 = fmul fast float %267, %28
  %461 = fmul fast float %268, %29
  %462 = fsub fast float %459, %272
  %463 = fsub fast float %460, %273
  %464 = fsub fast float %461, %274
  %465 = fmul fast float %443, %462
  %466 = fmul fast float %443, %463
  %467 = fmul fast float %443, %464
  %468 = fadd fast float %465, %272
  %469 = fadd fast float %466, %273
  %470 = fadd fast float %467, %274
  %471 = fmul fast float %418, %255
  %472 = call float @dx.op.unary.f32(i32 6, float %471)  ; FAbs(value)
  br label %516

; <label>:473                                     ; preds = %409
  br i1 %280, label %474, label %487

; <label>:474                                     ; preds = %473
  %475 = fdiv fast float 5.000000e+01, %26
  %476 = select i1 %282, float %475, float 1.000000e+00
  %477 = fmul fast float %476, %255
  %478 = fmul fast float %180, 2.000000e+00
  %479 = fmul fast float %181, 2.000000e+00
  %480 = fadd fast float %478, -1.000000e+00
  %481 = fadd fast float %479, -1.000000e+00
  %482 = call float @dx.op.dot2.f32(i32 54, float %480, float %481, float %480, float %481)  ; Dot2(ax,ay,bx,by)
  %483 = fmul fast float %263, %26
  %484 = fmul fast float %483, %482
  %485 = fsub fast float %412, %484
  %486 = fmul fast float %477, %485
  br label %516

; <label>:487                                     ; preds = %473
  br i1 %284, label %508, label %488

; <label>:488                                     ; preds = %487
  %489 = fmul fast float %26, 0x3F947AE140000000
  %490 = select i1 %282, float %489, float 1.000000e+00
  %491 = fdiv fast float 1.000000e+00, %490
  %492 = fmul fast float %490, %256
  %493 = fmul fast float %490, %257
  %494 = fmul fast float %491, %258
  %495 = call float @dx.op.unary.f32(i32 6, float %412)  ; FAbs(value)
  %496 = fcmp fast olt float %495, %492
  br i1 %496, label %497, label %501, !dx.controlflow.hints !64

; <label>:497                                     ; preds = %488
  %498 = fmul fast float %491, %255
  %499 = fmul fast float %498, %495
  %500 = call float @dx.op.unary.f32(i32 6, float %499)  ; FAbs(value)
  br label %516

; <label>:501                                     ; preds = %488
  %502 = fcmp fast ogt float %495, %493
  br i1 %502, label %503, label %516

; <label>:503                                     ; preds = %501
  %504 = fsub fast float %495, %493
  %505 = fmul fast float %494, %504
  %506 = call float @dx.op.unary.f32(i32 6, float %505)  ; FAbs(value)
  %507 = fsub fast float 1.000000e+00, %506
  br label %516

; <label>:508                                     ; preds = %487
  %509 = fdiv fast float 5.000000e+01, %26
  %510 = select i1 %282, float %509, float 1.000000e+00
  %511 = fmul fast float %510, %255
  %512 = call float @dx.op.unary.f32(i32 6, float %231)  ; FAbs(value)
  %513 = select i1 %279, float %512, float 0x47EFFFFFE0000000
  %514 = call float @dx.op.binary.f32(i32 36, float %412, float %513)  ; FMin(a,b)
  %515 = fmul fast float %511, %514
  br label %516

; <label>:516                                     ; preds = %508, %503, %501, %497, %474, %413, %320
  %517 = phi float [ %408, %320 ], [ %472, %413 ], [ %486, %474 ], [ %515, %508 ], [ %500, %497 ], [ %507, %503 ], [ %495, %501 ]
  %518 = phi float [ %404, %320 ], [ %468, %413 ], [ %27, %474 ], [ %27, %508 ], [ %27, %497 ], [ %27, %503 ], [ %27, %501 ]
  %519 = phi float [ %405, %320 ], [ %469, %413 ], [ %28, %474 ], [ %28, %508 ], [ %28, %497 ], [ %28, %503 ], [ %28, %501 ]
  %520 = phi float [ %406, %320 ], [ %470, %413 ], [ %29, %474 ], [ %29, %508 ], [ %29, %497 ], [ %29, %503 ], [ %29, %501 ]
  %521 = phi float [ %391, %320 ], [ %455, %413 ], [ %42, %474 ], [ %42, %508 ], [ %42, %497 ], [ %42, %503 ], [ %42, %501 ]
  %522 = phi float [ %392, %320 ], [ %456, %413 ], [ %43, %474 ], [ %43, %508 ], [ %43, %497 ], [ %43, %503 ], [ %43, %501 ]
  %523 = phi float [ %393, %320 ], [ %457, %413 ], [ %44, %474 ], [ %44, %508 ], [ %44, %497 ], [ %44, %503 ], [ %44, %501 ]
  %524 = phi float [ %394, %320 ], [ %458, %413 ], [ 1.000000e+00, %474 ], [ 1.000000e+00, %508 ], [ 1.000000e+00, %497 ], [ 1.000000e+00, %503 ], [ 1.000000e+00, %501 ]
  %525 = call float @dx.op.unary.f32(i32 7, float %517)  ; Saturate(value)
  %526 = fmul fast float %525, %45
  %527 = fmul fast float %524, %210
  %528 = fmul fast float %527, %525
  br label %529

; <label>:529                                     ; preds = %516, %249
  %530 = phi float [ %521, %516 ], [ %42, %249 ]
  %531 = phi float [ %522, %516 ], [ %43, %249 ]
  %532 = phi float [ %523, %516 ], [ %44, %249 ]
  %533 = phi float [ %528, %516 ], [ %210, %249 ]
  %534 = phi float [ %526, %516 ], [ %45, %249 ]
  %535 = phi float [ %518, %516 ], [ %27, %249 ]
  %536 = phi float [ %519, %516 ], [ %28, %249 ]
  %537 = phi float [ %520, %516 ], [ %29, %249 ]
  %538 = fmul fast float %535, %30
  %539 = fmul fast float %536, %30
  %540 = fmul fast float %537, %30
  %541 = fmul fast float %535, %36
  %542 = fmul fast float %536, %36
  %543 = fmul fast float %537, %36
  %544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %545 = extractvalue %dx.types.CBufRet.f32 %544, 2
  %546 = fptosi float %49 to i32
  %547 = sitofp i32 %546 to float
  %548 = fadd fast float %545, %547
  %549 = fmul fast float %548, 0x3FE3C6EF40000000
  %550 = frem fast float %53, 2.560000e+02
  %551 = frem fast float %54, 2.560000e+02
  %552 = fptoui float %550 to i32
  %553 = fptoui float %551 to i32
  %554 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %552, i32 %553, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  %556 = fadd fast float %555, %549
  %557 = call float @dx.op.unary.f32(i32 22, float %556)  ; Frc(value)
  %558 = and i32 %131, 1
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %620, label %560, !dx.controlflow.hints !65

; <label>:560                                     ; preds = %529
  %561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 2
  %563 = extractvalue %dx.types.ResRet.f32 %561, 3
  %564 = add i32 %128, 16
  %565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = extractvalue %dx.types.ResRet.f32 %565, 2
  %569 = add i32 %128, 32
  %570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = extractvalue %dx.types.ResRet.f32 %570, 1
  %573 = extractvalue %dx.types.ResRet.f32 %570, 2
  %574 = and i32 %131, 2
  %575 = icmp eq i32 %574, 0
  %576 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %577 = call float @dx.op.unary.f32(i32 25, float %576)  ; Rsqrt(value)
  %578 = fmul fast float %577, %33
  %579 = fmul fast float %577, %34
  %580 = fmul fast float %577, %35
  %581 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %582 = call float @dx.op.unary.f32(i32 25, float %581)  ; Rsqrt(value)
  %583 = fmul fast float %582, %88
  %584 = fmul fast float %582, %89
  %585 = fmul fast float %582, %90
  %586 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float %578, float %579, float %580)  ; Dot3(ax,ay,az,bx,by,bz)
  %587 = fmul fast float %586, %586
  %588 = fmul fast float %587, %562
  %589 = fadd fast float %588, %563
  %590 = call float @dx.op.unary.f32(i32 7, float %589)  ; Saturate(value)
  br i1 %575, label %591, label %601, !dx.controlflow.hints !66

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
  %612 = fmul fast float %609, %530
  %613 = fmul fast float %610, %531
  %614 = fmul fast float %611, %532
  %615 = fmul fast float %609, %538
  %616 = fmul fast float %610, %539
  %617 = fmul fast float %611, %540
  %618 = fmul fast float %602, %533
  %619 = fmul fast float %602, %534
  br label %620

; <label>:620                                     ; preds = %601, %529
  %621 = phi float [ %612, %601 ], [ %530, %529 ]
  %622 = phi float [ %613, %601 ], [ %531, %529 ]
  %623 = phi float [ %614, %601 ], [ %532, %529 ]
  %624 = phi float [ %618, %601 ], [ %533, %529 ]
  %625 = phi float [ %619, %601 ], [ %534, %529 ]
  %626 = phi float [ %615, %601 ], [ %538, %529 ]
  %627 = phi float [ %616, %601 ], [ %539, %529 ]
  %628 = phi float [ %617, %601 ], [ %540, %529 ]
  %629 = add i32 %22, 120
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = add i32 %631, 0
  %633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %634 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %633, %dx.types.Handle %50, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  %636 = extractvalue %dx.types.ResRet.f32 %634, 1
  %637 = extractvalue %dx.types.ResRet.f32 %634, 2
  %638 = add i32 %22, 56
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = and i32 %640, 255
  %642 = uitofp i32 %641 to float
  %643 = fmul fast float %642, 0x3F70101020000000
  %644 = lshr i32 %640, 8
  %645 = and i32 %644, 255
  %646 = uitofp i32 %645 to float
  %647 = fmul fast float %646, 0x3F70101020000000
  %648 = lshr i32 %640, 16
  %649 = and i32 %648, 255
  %650 = uitofp i32 %649 to float
  %651 = fmul fast float %650, 0x3F70101020000000
  %652 = fmul fast float %643, %643
  %653 = fmul fast float %652, %635
  %654 = fmul fast float %647, %647
  %655 = fmul fast float %654, %636
  %656 = fmul fast float %651, %651
  %657 = fmul fast float %656, %637
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = add i32 %659, 0
  %661 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %660, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %662 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %661, %dx.types.Handle %50, float %170, float %171, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %663 = extractvalue %dx.types.ResRet.f32 %662, 0
  %664 = extractvalue %dx.types.ResRet.f32 %662, 1
  %665 = extractvalue %dx.types.ResRet.f32 %662, 2
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = and i32 %667, 255
  %669 = uitofp i32 %668 to float
  %670 = fmul fast float %669, 0x3F70101020000000
  %671 = lshr i32 %667, 8
  %672 = and i32 %671, 255
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, 0x3F70101020000000
  %675 = lshr i32 %667, 16
  %676 = and i32 %675, 255
  %677 = uitofp i32 %676 to float
  %678 = fmul fast float %677, 0x3F70101020000000
  %679 = fmul fast float %670, %670
  %680 = fmul fast float %679, %663
  %681 = fmul fast float %674, %674
  %682 = fmul fast float %681, %664
  %683 = fmul fast float %678, %678
  %684 = fmul fast float %683, %665
  %685 = fsub fast float %680, %653
  %686 = fsub fast float %682, %655
  %687 = fsub fast float %684, %657
  %688 = fmul fast float %685, %39
  %689 = fmul fast float %686, %39
  %690 = fmul fast float %687, %39
  %691 = fadd fast float %688, %653
  %692 = fadd fast float %689, %655
  %693 = fadd fast float %690, %657
  %694 = fmul fast float %691, %621
  %695 = fmul fast float %692, %622
  %696 = fmul fast float %693, %623
  %697 = add i32 %22, 124
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = add i32 %699, 0
  %701 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %700, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %702 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %701, %dx.types.Handle %50, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %703 = extractvalue %dx.types.ResRet.f32 %702, 0
  %704 = extractvalue %dx.types.ResRet.f32 %702, 1
  %705 = extractvalue %dx.types.ResRet.f32 %702, 2
  %706 = add i32 %22, 44
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = shl i32 %708, 4
  %710 = and i32 %709, 32752
  %711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %710)  ; LegacyF16ToF32(value)
  %712 = lshr i32 %708, 7
  %713 = and i32 %712, 32752
  %714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %713)  ; LegacyF16ToF32(value)
  %715 = lshr i32 %708, 22
  %716 = shl nuw nsw i32 %715, 5
  %717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %716)  ; LegacyF16ToF32(value)
  %718 = fmul fast float %711, %703
  %719 = fmul fast float %714, %704
  %720 = fmul fast float %717, %705
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = fmul fast float %718, %722
  %724 = fmul fast float %719, %722
  %725 = fmul fast float %720, %722
  %726 = add i32 %22, 48
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = lshr i32 %728, 22
  %730 = shl nuw nsw i32 %729, 5
  %731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %730)  ; LegacyF16ToF32(value)
  %732 = fmul fast float %731, %723
  %733 = select i1 %111, float %732, float %723
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = add i32 %735, 0
  %737 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %736, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %738 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %737, %dx.types.Handle %50, float %170, float %171, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = shl i32 %743, 4
  %745 = and i32 %744, 32752
  %746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %745)  ; LegacyF16ToF32(value)
  %747 = lshr i32 %743, 7
  %748 = and i32 %747, 32752
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = lshr i32 %743, 22
  %751 = shl nuw nsw i32 %750, 5
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = fmul fast float %746, %739
  %754 = fmul fast float %749, %740
  %755 = fmul fast float %752, %741
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 0
  %758 = fmul fast float %753, %757
  %759 = fmul fast float %754, %757
  %760 = fmul fast float %755, %757
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = lshr i32 %762, 22
  %764 = shl nuw nsw i32 %763, 5
  %765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %764)  ; LegacyF16ToF32(value)
  %766 = fmul fast float %765, %758
  %767 = select i1 %111, float %766, float %758
  %768 = fsub fast float %767, %733
  %769 = fsub fast float %759, %724
  %770 = fsub fast float %760, %725
  %771 = fmul fast float %768, %39
  %772 = fmul fast float %769, %39
  %773 = fmul fast float %770, %39
  %774 = fadd fast float %771, %733
  %775 = fadd fast float %772, %724
  %776 = fadd fast float %773, %725
  %777 = fsub fast float %739, %703
  %778 = fsub fast float %740, %704
  %779 = fsub fast float %741, %705
  %780 = fmul fast float %777, %39
  %781 = fmul fast float %778, %39
  %782 = fmul fast float %779, %39
  %783 = fadd fast float %780, %703
  %784 = fadd fast float %781, %704
  %785 = fadd fast float %782, %705
  %786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = extractvalue %dx.types.ResRet.f32 %786, 1
  %789 = extractvalue %dx.types.ResRet.f32 %786, 2
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 1
  %792 = fmul fast float %791, %787
  %793 = fmul fast float %791, %788
  %794 = fmul fast float %791, %789
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 0
  %797 = fmul fast float %694, %796
  %798 = fmul fast float %695, %796
  %799 = fmul fast float %696, %796
  %800 = fmul fast float %774, %626
  %801 = fmul fast float %775, %627
  %802 = fmul fast float %776, %628
  %803 = call float @dx.op.dot3.f32(i32 55, float %800, float %801, float %802, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %804 = select i1 %111, float 0.000000e+00, float %800
  %805 = select i1 %111, float %803, float %801
  %806 = select i1 %111, float 0.000000e+00, float %802
  %807 = fmul fast float %541, %774
  %808 = fmul fast float %542, %775
  %809 = fmul fast float %543, %776
  %810 = call float @dx.op.dot3.f32(i32 55, float %797, float %798, float %799, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %811 = add i32 %22, 32
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 255
  %815 = uitofp i32 %814 to float
  %816 = lshr i32 %813, 8
  %817 = and i32 %816, 255
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, %810
  %820 = fadd fast float %819, %815
  %821 = fmul fast float %820, 0x3F70101020000000
  %822 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %823 = and i32 %131, 8192
  %824 = icmp eq i32 %823, 0
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 0
  br i1 %824, label %833, label %827, !dx.controlflow.hints !67

; <label>:827                                     ; preds = %620
  %828 = add i32 %128, 176
  %829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = fcmp fast oge float %830, 0.000000e+00
  %832 = select i1 %831, float %830, float %826
  br label %840

; <label>:833                                     ; preds = %620
  %834 = add i32 %22, 104
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = bitcast i32 %836 to float
  %838 = fcmp fast oge float %837, 0.000000e+00
  %839 = select i1 %838, float %837, float %826
  br label %840

; <label>:840                                     ; preds = %833, %827
  %841 = phi float [ %832, %827 ], [ %839, %833 ]
  %842 = call float @dx.op.dot3.f32(i32 55, float %783, float %784, float %785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %843 = fmul fast float %842, %625
  %844 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %213, i32 %214, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = lshr i32 %845, 18
  %847 = uitofp i32 %846 to float
  %848 = fmul fast float %847, 0x3F4C00EBA0000000
  %849 = call float @dx.op.unary.f32(i32 21, float %848)  ; Exp(value)
  %850 = fadd fast float %849, -1.000000e+00
  %851 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %852 = extractvalue %dx.types.Dimensions %851, 0
  %853 = sitofp i32 %852 to float
  %854 = extractvalue %dx.types.Dimensions %851, 1
  %855 = sitofp i32 %854 to float
  %856 = fcmp fast oge float %211, %853
  %857 = fcmp fast oge float %212, %855
  %858 = or i1 %856, %857
  %859 = select i1 %858, float 0x4197782600000000, float %850
  %860 = icmp eq i32 %127, 3
  %861 = fcmp fast ogt float %49, %859
  %862 = and i1 %237, %861
  %863 = or i1 %860, %862
  %864 = icmp eq i32 %127, 2
  %865 = fcmp fast ole float %49, %859
  %866 = and i1 %864, %865
  %867 = or i1 %866, %863
  %868 = fmul fast float %807, %792
  %869 = fmul fast float %808, %793
  %870 = fmul fast float %809, %794
  %871 = fadd fast float %868, %804
  %872 = fadd fast float %805, %869
  %873 = fadd fast float %870, %806
  %874 = fmul fast float %871, %624
  %875 = fmul fast float %872, %624
  %876 = fmul fast float %873, %624
  %877 = fmul fast float %792, %624
  %878 = fmul fast float %793, %624
  %879 = fmul fast float %794, %624
  %880 = fmul fast float %841, %822
  %881 = fsub fast float 1.000000e+00, %822
  %882 = fsub fast float %881, %843
  %883 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %885 = extractvalue %dx.types.CBufRet.f32 %884, 3
  %886 = fmul fast float %885, %883
  %887 = fadd fast float %886, %880
  %888 = and i32 %131, 1048576
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %981, label %890, !dx.controlflow.hints !68

; <label>:890                                     ; preds = %840
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 3
  %894 = fmul fast float %892, %53
  %895 = fmul fast float %893, %54
  %896 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  %897 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %898 = select i1 %867, i32 2, i32 0
  %899 = or i32 %898, 1
  %900 = uitofp i32 %899 to float
  %901 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %896, float %897, float %900, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %902 = extractvalue %dx.types.ResRet.f32 %901, 0
  %903 = extractvalue %dx.types.ResRet.f32 %901, 1
  %904 = extractvalue %dx.types.ResRet.f32 %901, 2
  %905 = extractvalue %dx.types.ResRet.f32 %901, 3
  %906 = add nuw nsw i32 %898, 2
  %907 = uitofp i32 %906 to float
  %908 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %896, float %897, float %907, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = extractvalue %dx.types.ResRet.f32 %908, 1
  %911 = extractvalue %dx.types.ResRet.f32 %908, 2
  %912 = extractvalue %dx.types.ResRet.f32 %908, 3
  %913 = call float @dx.op.binary.f32(i32 35, float %903, float %904)  ; FMax(a,b)
  %914 = call float @dx.op.binary.f32(i32 35, float %902, float %913)  ; FMax(a,b)
  %915 = call float @dx.op.binary.f32(i32 35, float %914, float %905)  ; FMax(a,b)
  %916 = call float @dx.op.binary.f32(i32 36, float %910, float %911)  ; FMin(a,b)
  %917 = call float @dx.op.binary.f32(i32 36, float %909, float %916)  ; FMin(a,b)
  %918 = call float @dx.op.binary.f32(i32 36, float %917, float %912)  ; FMin(a,b)
  %919 = fmul fast float %915, 2.550000e+02
  %920 = fadd fast float %919, 0x3F70101020000000
  %921 = fptoui float %920 to i32
  %922 = fmul fast float %918, 2.550000e+02
  %923 = fadd fast float %922, 0x3F70101020000000
  %924 = fptoui float %923 to i32
  %925 = icmp ult i32 %921, %924
  br i1 %925, label %926, label %974

; <label>:926                                     ; preds = %890
  %927 = fcmp fast ogt float %48, 9.843750e-01
  %928 = fadd fast float %49, -4.000000e+00
  %929 = select i1 %927, float -4.000000e+00, float %928
  %930 = call float @dx.op.binary.f32(i32 35, float %929, float 0.000000e+00)  ; FMax(a,b)
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %933 = fadd fast float %932, %930
  %934 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %935 = fmul fast float %933, %934
  %936 = call float @dx.op.unary.f32(i32 23, float %935)  ; Log(value)
  %937 = extractvalue %dx.types.CBufRet.f32 %931, 3
  %938 = fmul fast float %937, %936
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 2
  %941 = fmul fast float %938, %940
  %942 = call float @dx.op.unary.f32(i32 7, float %941)  ; Saturate(value)
  %943 = uitofp i32 %921 to float
  %944 = uitofp i32 %924 to float
  %945 = fadd fast float %943, 5.000000e-01
  %946 = fadd fast float %944, 5.000000e-01
  %947 = fmul fast float %940, %945
  %948 = fmul fast float %940, %946
  %949 = fadd fast float %947, 0x3F0FFB4800000000
  %950 = fadd fast float %948, 0xBF0FFB4800000000
  %951 = call float @dx.op.binary.f32(i32 35, float %942, float %949)  ; FMax(a,b)
  %952 = call float @dx.op.binary.f32(i32 36, float %951, float %950)  ; FMin(a,b)
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 1
  %955 = extractvalue %dx.types.CBufRet.f32 %953, 2
  %956 = extractvalue %dx.types.CBufRet.f32 %953, 0
  %957 = select i1 %867, float %956, float 0.000000e+00
  %958 = fmul fast float %954, %952
  %959 = fadd fast float %957, %958
  %960 = fadd fast float %957, %955
  %961 = fsub fast float %954, %955
  %962 = fadd fast float %961, %957
  %963 = call float @dx.op.binary.f32(i32 35, float %959, float %960)  ; FMax(a,b)
  %964 = call float @dx.op.binary.f32(i32 36, float %963, float %962)  ; FMin(a,b)
  %965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %896, float %897, float %964, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %966 = extractvalue %dx.types.ResRet.f32 %965, 0
  %967 = extractvalue %dx.types.ResRet.f32 %965, 1
  %968 = extractvalue %dx.types.ResRet.f32 %965, 2
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 1
  %971 = fmul fast float %970, %966
  %972 = fmul fast float %970, %967
  %973 = fmul fast float %970, %968
  br label %974

; <label>:974                                     ; preds = %926, %890
  %975 = phi float [ %971, %926 ], [ 1.000000e+00, %890 ]
  %976 = phi float [ %972, %926 ], [ 1.000000e+00, %890 ]
  %977 = phi float [ %973, %926 ], [ 1.000000e+00, %890 ]
  %978 = fmul fast float %975, %874
  %979 = fmul fast float %976, %875
  %980 = fmul fast float %977, %876
  br label %981

; <label>:981                                     ; preds = %974, %840
  %982 = phi float [ %978, %974 ], [ %874, %840 ]
  %983 = phi float [ %979, %974 ], [ %875, %840 ]
  %984 = phi float [ %980, %974 ], [ %876, %840 ]
  %985 = and i32 %131, 2097152
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %991, label %987, !dx.controlflow.hints !69

; <label>:987                                     ; preds = %981
  %988 = add i32 %128, 192
  %989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  br label %994

; <label>:991                                     ; preds = %981
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 3
  br label %994

; <label>:994                                     ; preds = %991, %987
  %995 = phi float [ %990, %987 ], [ %993, %991 ]
  %996 = fmul fast float %877, %797
  %997 = fmul fast float %878, %798
  %998 = fmul fast float %879, %799
  br i1 %862, label %999, label %1086

; <label>:999                                     ; preds = %994
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 3
  %1003 = fmul fast float %1001, %53
  %1004 = fmul fast float %1002, %54
  %1005 = call float @dx.op.unary.f32(i32 7, float %1003)  ; Saturate(value)
  %1006 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1007 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1005, float %1006, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.ResRet.f32 %1007, 1
  %1010 = extractvalue %dx.types.ResRet.f32 %1007, 2
  %1011 = extractvalue %dx.types.ResRet.f32 %1007, 3
  %1012 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1005, float %1006, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1013 = extractvalue %dx.types.ResRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.ResRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.ResRet.f32 %1012, 2
  %1016 = extractvalue %dx.types.ResRet.f32 %1012, 3
  %1017 = call float @dx.op.binary.f32(i32 35, float %1009, float %1010)  ; FMax(a,b)
  %1018 = call float @dx.op.binary.f32(i32 35, float %1008, float %1017)  ; FMax(a,b)
  %1019 = call float @dx.op.binary.f32(i32 35, float %1018, float %1011)  ; FMax(a,b)
  %1020 = call float @dx.op.binary.f32(i32 36, float %1014, float %1015)  ; FMin(a,b)
  %1021 = call float @dx.op.binary.f32(i32 36, float %1013, float %1020)  ; FMin(a,b)
  %1022 = call float @dx.op.binary.f32(i32 36, float %1021, float %1016)  ; FMin(a,b)
  %1023 = fmul fast float %1019, 2.550000e+02
  %1024 = fadd fast float %1023, 0x3F70101020000000
  %1025 = fptoui float %1024 to i32
  %1026 = fmul fast float %1022, 2.550000e+02
  %1027 = fadd fast float %1026, 0x3F70101020000000
  %1028 = fptoui float %1027 to i32
  %1029 = icmp ult i32 %1025, %1028
  br i1 %1029, label %1030, label %1072

; <label>:1030                                    ; preds = %999
  %1031 = fcmp fast ogt float %48, 9.843750e-01
  %1032 = fadd fast float %49, -4.000000e+00
  %1033 = select i1 %1031, float -4.000000e+00, float %1032
  %1034 = call float @dx.op.binary.f32(i32 35, float %1033, float 0.000000e+00)  ; FMax(a,b)
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 0
  %1037 = fadd fast float %1036, %1034
  %1038 = extractvalue %dx.types.CBufRet.f32 %1035, 2
  %1039 = fmul fast float %1037, %1038
  %1040 = call float @dx.op.unary.f32(i32 23, float %1039)  ; Log(value)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1035, 3
  %1042 = fmul fast float %1041, %1040
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 2
  %1045 = fmul fast float %1042, %1044
  %1046 = call float @dx.op.unary.f32(i32 7, float %1045)  ; Saturate(value)
  %1047 = uitofp i32 %1025 to float
  %1048 = uitofp i32 %1028 to float
  %1049 = fadd fast float %1047, 5.000000e-01
  %1050 = fadd fast float %1048, 5.000000e-01
  %1051 = fmul fast float %1044, %1049
  %1052 = fmul fast float %1044, %1050
  %1053 = fadd fast float %1051, 0x3F0FFB4800000000
  %1054 = fadd fast float %1052, 0xBF0FFB4800000000
  %1055 = call float @dx.op.binary.f32(i32 35, float %1046, float %1053)  ; FMax(a,b)
  %1056 = call float @dx.op.binary.f32(i32 36, float %1055, float %1054)  ; FMin(a,b)
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 1
  %1059 = extractvalue %dx.types.CBufRet.f32 %1057, 2
  %1060 = extractvalue %dx.types.CBufRet.f32 %1057, 0
  %1061 = fmul fast float %1058, %1056
  %1062 = fadd fast float %1060, %1061
  %1063 = fadd fast float %1060, %1059
  %1064 = fsub fast float %1058, %1059
  %1065 = fadd fast float %1064, %1060
  %1066 = call float @dx.op.binary.f32(i32 35, float %1062, float %1063)  ; FMax(a,b)
  %1067 = call float @dx.op.binary.f32(i32 36, float %1066, float %1065)  ; FMin(a,b)
  %1068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1005, float %1006, float %1067, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1069 = extractvalue %dx.types.ResRet.f32 %1068, 0
  %1070 = extractvalue %dx.types.ResRet.f32 %1068, 1
  %1071 = extractvalue %dx.types.ResRet.f32 %1068, 2
  br label %1072

; <label>:1072                                    ; preds = %1030, %999
  %1073 = phi float [ %1069, %1030 ], [ 1.000000e+00, %999 ]
  %1074 = phi float [ %1070, %1030 ], [ 1.000000e+00, %999 ]
  %1075 = phi float [ %1071, %1030 ], [ 1.000000e+00, %999 ]
  %1076 = call float @dx.op.dot3.f32(i32 55, float %1073, float %1074, float %1075, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1077 = select i1 %111, float %1076, float %1073
  %1078 = select i1 %111, float %1076, float %1074
  %1079 = select i1 %111, float 1.000000e+00, float %1075
  %1080 = fmul fast float %1077, %996
  %1081 = fmul fast float %1078, %997
  %1082 = fmul fast float %1079, %998
  %1083 = fmul fast float %1077, %982
  %1084 = fmul fast float %1078, %983
  %1085 = fmul fast float %1079, %984
  br label %1086

; <label>:1086                                    ; preds = %1072, %994
  %1087 = phi float [ %859, %1072 ], [ %49, %994 ]
  %1088 = phi float [ %1080, %1072 ], [ %996, %994 ]
  %1089 = phi float [ %1081, %1072 ], [ %997, %994 ]
  %1090 = phi float [ %1082, %1072 ], [ %998, %994 ]
  %1091 = phi float [ %1083, %1072 ], [ %982, %994 ]
  %1092 = phi float [ %1084, %1072 ], [ %983, %994 ]
  %1093 = phi float [ %1085, %1072 ], [ %984, %994 ]
  %1094 = phi float [ %1073, %1072 ], [ 1.000000e+00, %994 ]
  br i1 %867, label %1343, label %1095

; <label>:1095                                    ; preds = %1086
  %1096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.ResRet.f32 %1096, 1
  %1099 = extractvalue %dx.types.ResRet.f32 %1096, 2
  %1100 = fmul fast float %1097, %1094
  %1101 = call float @dx.op.dot3.f32(i32 55, float %1097, float %1098, float %1099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1102 = select i1 %111, float %1101, float %1097
  %1103 = select i1 %111, float %1101, float %1098
  %1104 = select i1 %111, float 1.000000e+00, float %1099
  %1105 = fmul fast float %1102, %1088
  %1106 = fmul fast float %1103, %1089
  %1107 = fmul fast float %1104, %1090
  %1108 = fmul fast float %1102, %1091
  %1109 = fmul fast float %1103, %1092
  %1110 = fmul fast float %1104, %1093
  %1111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.i32 %1111, 0
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1343, label %1114, !dx.controlflow.hints !70

; <label>:1114                                    ; preds = %1095
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 2
  %1117 = extractvalue %dx.types.CBufRet.f32 %1115, 3
  %1118 = fmul fast float %1116, %53
  %1119 = fmul fast float %1117, %54
  %1120 = fmul fast float %1118, 2.000000e+00
  %1121 = fmul fast float %1119, 2.000000e+00
  %1122 = fsub fast float 1.000000e+00, %1120
  %1123 = fsub fast float 1.000000e+00, %1121
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1127 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1128 = fmul fast float %1122, %1125
  %1129 = fmul fast float %1122, %1126
  %1130 = fmul fast float %1122, %1127
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1135 = fmul fast float %1123, %1132
  %1136 = fmul fast float %1123, %1133
  %1137 = fmul fast float %1123, %1134
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1142 = fadd fast float %1135, %1139
  %1143 = fadd fast float %1142, %1128
  %1144 = fadd fast float %1136, %1140
  %1145 = fadd fast float %1144, %1129
  %1146 = fadd fast float %1137, %1141
  %1147 = fadd fast float %1146, %1130
  %1148 = fmul fast float %1143, %1087
  %1149 = fmul fast float %1145, %1087
  %1150 = fmul fast float %1147, %1087
  %1151 = fmul fast float %1148, %1148
  %1152 = fmul fast float %1149, %1149
  %1153 = fadd fast float %1151, %1152
  %1154 = fmul fast float %1150, %1150
  %1155 = fadd fast float %1153, %1154
  %1156 = call float @dx.op.unary.f32(i32 24, float %1155)  ; Sqrt(value)
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 0
  %1159 = fsub fast float %1156, %1158
  %1160 = extractvalue %dx.types.CBufRet.f32 %1157, 2
  %1161 = fmul fast float %1159, %1160
  %1162 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  %1163 = fadd fast float %1162, -5.000000e-01
  %1164 = fmul fast float %1163, 2.000000e+00
  %1165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1166 = extractvalue %dx.types.CBufRet.f32 %1165, 2
  %1167 = call float @dx.op.binary.f32(i32 36, float %1166, float %1164)  ; FMin(a,b)
  %1168 = fsub fast float -0.000000e+00, %1166
  %1169 = fcmp fast ogt float %1167, %1168
  br i1 %1169, label %1170, label %1343, !dx.controlflow.hints !71

; <label>:1170                                    ; preds = %1114
  %1171 = fmul fast float %1167, 5.000000e-01
  %1172 = fadd fast float %1171, 5.000000e-01
  %1173 = call float @dx.op.unary.f32(i32 22, float %1172)  ; Frc(value)
  %1174 = call float @dx.op.unary.f32(i32 27, float %1173)  ; Round_ni(value)
  %1175 = call float @dx.op.unary.f32(i32 22, float %1173)  ; Frc(value)
  %1176 = fmul fast float %1175, 2.000000e+00
  %1177 = fadd fast float %1176, -1.000000e+00
  %1178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %1118, float %1119, float %1174, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = extractvalue %dx.types.ResRet.f32 %1178, 1
  %1181 = extractvalue %dx.types.ResRet.f32 %1178, 2
  %1182 = extractvalue %dx.types.ResRet.f32 %1178, 3
  %1183 = fadd fast float %1179, -5.000000e-01
  %1184 = fadd fast float %1181, -5.000000e-01
  %1185 = fmul fast float %1183, 0xBFD5555560000000
  %1186 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1184, float %1185)  ; FMad(a,b,c)
  %1187 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1180, float 0.000000e+00)  ; FMad(a,b,c)
  %1188 = fadd fast float %1187, %1182
  %1189 = fmul fast float %1183, -7.500000e-01
  %1190 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1184, float %1189)  ; FMad(a,b,c)
  %1191 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1180, float 0.000000e+00)  ; FMad(a,b,c)
  %1192 = fadd fast float %1191, %1182
  %1193 = call float @dx.op.binary.f32(i32 35, float %1186, float -1.000000e+00)  ; FMax(a,b)
  %1194 = call float @dx.op.binary.f32(i32 35, float %1188, float -1.000000e+00)  ; FMax(a,b)
  %1195 = call float @dx.op.binary.f32(i32 35, float %1190, float -1.000000e+00)  ; FMax(a,b)
  %1196 = call float @dx.op.binary.f32(i32 35, float %1192, float -1.000000e+00)  ; FMax(a,b)
  %1197 = call float @dx.op.binary.f32(i32 36, float %1193, float 1.000000e+00)  ; FMin(a,b)
  %1198 = call float @dx.op.binary.f32(i32 36, float %1194, float 1.000000e+00)  ; FMin(a,b)
  %1199 = call float @dx.op.binary.f32(i32 36, float %1195, float 1.000000e+00)  ; FMin(a,b)
  %1200 = call float @dx.op.binary.f32(i32 36, float %1196, float 1.000000e+00)  ; FMin(a,b)
  %1201 = fcmp fast olt float %1197, 0x3FEFFF8020000000
  br i1 %1201, label %1202, label %1317, !dx.controlflow.hints !72

; <label>:1202                                    ; preds = %1170
  %1203 = extractvalue %dx.types.CBufRet.f32 %1165, 3
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 0
  %1206 = extractvalue %dx.types.CBufRet.f32 %1204, 1
  %1207 = extractvalue %dx.types.CBufRet.f32 %1204, 2
  %1208 = extractvalue %dx.types.CBufRet.f32 %1204, 3
  %1209 = fsub fast float %1205, %1197
  %1210 = fsub fast float %1206, %1198
  %1211 = fsub fast float %1207, %1199
  %1212 = fsub fast float %1208, %1200
  %1213 = fmul fast float %1209, %1203
  %1214 = fmul fast float %1210, %1203
  %1215 = fmul fast float %1211, %1203
  %1216 = fmul fast float %1212, %1203
  %1217 = fadd fast float %1213, %1197
  %1218 = fadd fast float %1214, %1198
  %1219 = fsub fast float -0.000000e+00, %1218
  %1220 = fadd fast float %1215, %1199
  %1221 = fadd fast float %1216, %1200
  %1222 = fmul fast float %1217, %1217
  %1223 = fsub fast float %1218, %1222
  %1224 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1223)  ; FMax(a,b)
  %1225 = fdiv fast float 1.000000e+00, %1224
  %1226 = fmul fast float %1218, %1217
  %1227 = fsub fast float %1220, %1226
  %1228 = fsub fast float %1177, %1217
  %1229 = fmul fast float %1177, %1177
  %1230 = fsub fast float %1229, %1218
  %1231 = fmul fast float %1228, %1225
  %1232 = fmul fast float %1231, %1227
  %1233 = fsub fast float %1230, %1232
  %1234 = fmul fast float %1218, %1218
  %1235 = fsub fast float %1221, %1234
  %1236 = fmul fast float %1227, %1227
  %1237 = fmul fast float %1236, %1225
  %1238 = fsub fast float %1235, %1237
  %1239 = fdiv fast float %1233, %1238
  %1240 = fmul fast float %1227, %1239
  %1241 = fsub fast float %1228, %1240
  %1242 = fmul fast float %1241, %1225
  %1243 = fmul fast float %1242, %1217
  %1244 = fsub fast float 1.000000e+00, %1243
  %1245 = fmul fast float %1218, %1239
  %1246 = fsub fast float %1244, %1245
  %1247 = fmul fast float %1242, %1242
  %1248 = fmul fast float %1239, 4.000000e+00
  %1249 = fmul fast float %1248, %1246
  %1250 = fsub fast float %1247, %1249
  %1251 = call float @dx.op.unary.f32(i32 24, float %1250)  ; Sqrt(value)
  %1252 = fcmp fast oge float %1242, 0.000000e+00
  %1253 = fsub fast float -0.000000e+00, %1251
  %1254 = select i1 %1252, float %1253, float %1251
  %1255 = fsub fast float %1254, %1242
  %1256 = fdiv fast float %1255, %1239
  %1257 = fdiv fast float %1246, %1255
  %1258 = fmul fast float %1256, 5.000000e-01
  %1259 = fmul fast float %1257, 2.000000e+00
  %1260 = select i1 %1252, float %1258, float %1259
  %1261 = select i1 %1252, float %1259, float %1258
  %1262 = call float @dx.op.binary.f32(i32 35, float %1260, float %1261)  ; FMax(a,b)
  %1263 = call float @dx.op.binary.f32(i32 36, float %1260, float %1261)  ; FMin(a,b)
  %1264 = fcmp fast ogt float %1177, %1263
  br i1 %1264, label %1265, label %1275

; <label>:1265                                    ; preds = %1202
  %1266 = fsub fast float %1177, %1263
  %1267 = fsub fast float %1262, %1263
  %1268 = fmul fast float %1266, %1267
  %1269 = fmul fast float %1262, %1177
  %1270 = fadd fast float %1262, %1177
  %1271 = fmul fast float %1270, %1217
  %1272 = fadd fast float %1269, %1218
  %1273 = fsub fast float %1272, %1271
  %1274 = fdiv fast float %1273, %1268
  br label %1275

; <label>:1275                                    ; preds = %1265, %1202
  %1276 = phi float [ %1274, %1265 ], [ 0.000000e+00, %1202 ]
  %1277 = fcmp fast ogt float %1177, %1262
  %1278 = fsub fast float %1177, %1262
  br i1 %1277, label %1279, label %1289

; <label>:1279                                    ; preds = %1275
  %1280 = fsub fast float %1262, %1263
  %1281 = fmul fast float %1280, %1278
  %1282 = fmul fast float %1263, %1177
  %1283 = fadd fast float %1263, %1177
  %1284 = fmul fast float %1283, %1217
  %1285 = fsub fast float %1219, %1282
  %1286 = fadd fast float %1285, %1284
  %1287 = fdiv fast float %1286, %1281
  %1288 = fadd fast float %1287, %1276
  br label %1289

; <label>:1289                                    ; preds = %1279, %1275
  %1290 = phi float [ %1288, %1279 ], [ %1276, %1275 ]
  %1291 = fsub fast float %1177, %1263
  %1292 = fmul fast float %1291, %1278
  %1293 = fmul fast float %1263, %1262
  %1294 = fadd fast float %1263, %1262
  %1295 = fmul fast float %1294, %1217
  %1296 = fadd fast float %1293, %1218
  %1297 = fsub fast float %1296, %1295
  %1298 = fdiv fast float %1297, %1292
  %1299 = call float @dx.op.unary.f32(i32 7, float %1290)  ; Saturate(value)
  %1300 = fcmp fast oeq float %995, 0.000000e+00
  %1301 = extractvalue %dx.types.CBufRet.f32 %1165, 0
  %1302 = fcmp fast oeq float %1301, 0.000000e+00
  %1303 = or i1 %1300, %1302
  %1304 = fmul fast float %1301, 2.000000e+00
  %1305 = fadd fast float %1166, %1167
  %1306 = fdiv fast float %1305, %1304
  %1307 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1308 = fmul fast float %1307, 2.000000e+00
  %1309 = fsub fast float 3.000000e+00, %1308
  %1310 = fmul fast float %1307, %1307
  %1311 = fmul fast float %1310, %1309
  %1312 = select i1 %1303, float 1.000000e+00, float %1311
  %1313 = fmul fast float %1298, %995
  %1314 = fadd fast float %1299, %1313
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1316 = fmul fast float %1312, %1315
  br label %1317

; <label>:1317                                    ; preds = %1289, %1170
  %1318 = phi float [ %1316, %1289 ], [ 0.000000e+00, %1170 ]
  %1319 = fsub fast float 1.000000e+00, %1318
  %1320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1118, float %1119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1323 = extractvalue %dx.types.CBufRet.i32 %1322, 2
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1330, label %1325

; <label>:1325                                    ; preds = %1317
  %1326 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1327 = fadd fast float %1321, -1.000000e+00
  %1328 = fmul fast float %1326, %1327
  %1329 = fadd fast float %1328, 1.000000e+00
  br label %1330

; <label>:1330                                    ; preds = %1325, %1317
  %1331 = phi float [ %1329, %1325 ], [ %1319, %1317 ]
  %1332 = call float @dx.op.binary.f32(i32 35, float %1321, float %1331)  ; FMax(a,b)
  %1333 = fmul fast float %1332, %1100
  %1334 = call float @dx.op.dot3.f32(i32 55, float %1332, float %1332, float %1332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1335 = select i1 %111, float %1334, float %1332
  %1336 = select i1 %111, float 1.000000e+00, float %1332
  %1337 = fmul fast float %1335, %1105
  %1338 = fmul fast float %1335, %1106
  %1339 = fmul fast float %1336, %1107
  %1340 = fmul fast float %1335, %1108
  %1341 = fmul fast float %1335, %1109
  %1342 = fmul fast float %1336, %1110
  br label %1343

; <label>:1343                                    ; preds = %1330, %1114, %1095, %1086
  %1344 = phi float [ %1088, %1086 ], [ %1105, %1095 ], [ %1337, %1330 ], [ %1105, %1114 ]
  %1345 = phi float [ %1089, %1086 ], [ %1106, %1095 ], [ %1338, %1330 ], [ %1106, %1114 ]
  %1346 = phi float [ %1090, %1086 ], [ %1107, %1095 ], [ %1339, %1330 ], [ %1107, %1114 ]
  %1347 = phi float [ %1091, %1086 ], [ %1108, %1095 ], [ %1340, %1330 ], [ %1108, %1114 ]
  %1348 = phi float [ %1092, %1086 ], [ %1109, %1095 ], [ %1341, %1330 ], [ %1109, %1114 ]
  %1349 = phi float [ %1093, %1086 ], [ %1110, %1095 ], [ %1342, %1330 ], [ %1110, %1114 ]
  %1350 = phi float [ %1094, %1086 ], [ %1100, %1095 ], [ %1333, %1330 ], [ %1100, %1114 ]
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 2
  %1353 = extractvalue %dx.types.CBufRet.f32 %1351, 3
  %1354 = fmul fast float %1352, %53
  %1355 = fmul fast float %1353, %54
  %1356 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1357 = call float @dx.op.unary.f32(i32 7, float %1355)  ; Saturate(value)
  %1358 = select i1 %867, i32 2, i32 0
  %1359 = or i32 %1358, 1
  %1360 = uitofp i32 %1359 to float
  %1361 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1356, float %1357, float %1360, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1362 = extractvalue %dx.types.ResRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.ResRet.f32 %1361, 1
  %1364 = extractvalue %dx.types.ResRet.f32 %1361, 2
  %1365 = extractvalue %dx.types.ResRet.f32 %1361, 3
  %1366 = add nuw nsw i32 %1358, 2
  %1367 = uitofp i32 %1366 to float
  %1368 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1356, float %1357, float %1367, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.ResRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.ResRet.f32 %1368, 2
  %1372 = extractvalue %dx.types.ResRet.f32 %1368, 3
  %1373 = call float @dx.op.binary.f32(i32 35, float %1363, float %1364)  ; FMax(a,b)
  %1374 = call float @dx.op.binary.f32(i32 35, float %1362, float %1373)  ; FMax(a,b)
  %1375 = call float @dx.op.binary.f32(i32 35, float %1374, float %1365)  ; FMax(a,b)
  %1376 = call float @dx.op.binary.f32(i32 36, float %1370, float %1371)  ; FMin(a,b)
  %1377 = call float @dx.op.binary.f32(i32 36, float %1369, float %1376)  ; FMin(a,b)
  %1378 = call float @dx.op.binary.f32(i32 36, float %1377, float %1372)  ; FMin(a,b)
  %1379 = fmul fast float %1375, 2.550000e+02
  %1380 = fadd fast float %1379, 0x3F70101020000000
  %1381 = fptoui float %1380 to i32
  %1382 = fmul fast float %1378, 2.550000e+02
  %1383 = fadd fast float %1382, 0x3F70101020000000
  %1384 = fptoui float %1383 to i32
  %1385 = icmp ult i32 %1381, %1384
  br i1 %1385, label %1386, label %1429

; <label>:1386                                    ; preds = %1343
  %1387 = fcmp fast ogt float %48, 9.843750e-01
  %1388 = fadd fast float %1087, -4.000000e+00
  %1389 = select i1 %1387, float -4.000000e+00, float %1388
  %1390 = call float @dx.op.binary.f32(i32 35, float %1389, float 0.000000e+00)  ; FMax(a,b)
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 0
  %1393 = fadd fast float %1392, %1390
  %1394 = extractvalue %dx.types.CBufRet.f32 %1391, 2
  %1395 = fmul fast float %1393, %1394
  %1396 = call float @dx.op.unary.f32(i32 23, float %1395)  ; Log(value)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1391, 3
  %1398 = fmul fast float %1397, %1396
  %1399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1400 = extractvalue %dx.types.CBufRet.f32 %1399, 2
  %1401 = fmul fast float %1398, %1400
  %1402 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1403 = uitofp i32 %1381 to float
  %1404 = uitofp i32 %1384 to float
  %1405 = fadd fast float %1403, 5.000000e-01
  %1406 = fadd fast float %1404, 5.000000e-01
  %1407 = fmul fast float %1400, %1405
  %1408 = fmul fast float %1400, %1406
  %1409 = fadd fast float %1407, 0x3F0FFB4800000000
  %1410 = fadd fast float %1408, 0xBF0FFB4800000000
  %1411 = call float @dx.op.binary.f32(i32 35, float %1402, float %1409)  ; FMax(a,b)
  %1412 = call float @dx.op.binary.f32(i32 36, float %1411, float %1410)  ; FMin(a,b)
  %1413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1414 = extractvalue %dx.types.CBufRet.f32 %1413, 1
  %1415 = extractvalue %dx.types.CBufRet.f32 %1413, 2
  %1416 = extractvalue %dx.types.CBufRet.f32 %1413, 0
  %1417 = select i1 %867, float %1416, float 0.000000e+00
  %1418 = fmul fast float %1414, %1412
  %1419 = fadd fast float %1417, %1418
  %1420 = fadd fast float %1417, %1415
  %1421 = fsub fast float %1414, %1415
  %1422 = fadd fast float %1421, %1417
  %1423 = call float @dx.op.binary.f32(i32 35, float %1419, float %1420)  ; FMax(a,b)
  %1424 = call float @dx.op.binary.f32(i32 36, float %1423, float %1422)  ; FMin(a,b)
  %1425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1356, float %1357, float %1424, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1426 = extractvalue %dx.types.ResRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.ResRet.f32 %1425, 1
  %1428 = extractvalue %dx.types.ResRet.f32 %1425, 2
  br label %1429

; <label>:1429                                    ; preds = %1386, %1343
  %1430 = phi float [ %1426, %1386 ], [ 1.000000e+00, %1343 ]
  %1431 = phi float [ %1427, %1386 ], [ 1.000000e+00, %1343 ]
  %1432 = phi float [ %1428, %1386 ], [ 1.000000e+00, %1343 ]
  %1433 = fmul fast float %1430, %1350
  %1434 = call float @dx.op.dot3.f32(i32 55, float %1430, float %1431, float %1432, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1435 = select i1 %111, float %1434, float %1430
  %1436 = select i1 %111, float %1434, float %1431
  %1437 = select i1 %111, float 1.000000e+00, float %1432
  %1438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1439 = extractvalue %dx.types.CBufRet.i32 %1438, 3
  %1440 = and i32 %1439, 3
  %1441 = icmp ne i32 %1440, 0
  %1442 = and i32 %1439, 4
  %1443 = icmp ne i32 %1442, 0
  %1444 = and i1 %1441, %1443
  %1445 = and i1 %111, %1444
  br i1 %1445, label %1446, label %1452

; <label>:1446                                    ; preds = %1429
  %1447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.f32 %1447, 1
  %1449 = fadd fast float %1433, -1.000000e+00
  %1450 = fmul fast float %1448, %1449
  %1451 = fadd fast float %1450, 1.000000e+00
  br label %1452

; <label>:1452                                    ; preds = %1446, %1429
  %1453 = phi float [ %1451, %1446 ], [ %1433, %1429 ]
  %1454 = fadd fast float %1347, %1344
  %1455 = fmul fast float %1435, %1454
  %1456 = fadd fast float %1348, %1345
  %1457 = fmul fast float %1436, %1456
  %1458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.f32 %1458, 0
  br i1 %111, label %1460, label %1480

; <label>:1460                                    ; preds = %1452
  %1461 = fadd fast float %1455, %1457
  %1462 = fmul fast float %1459, %1461
  %1463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.f32 %1463, 3
  %1465 = extractvalue %dx.types.CBufRet.f32 %884, 1
  %1466 = fsub fast float %887, %1465
  %1467 = extractvalue %dx.types.CBufRet.f32 %884, 2
  %1468 = fmul fast float %1466, %1467
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1470 = fsub fast float %1469, %1464
  %1471 = fmul fast float %1470, %1453
  %1472 = fadd fast float %1471, %1464
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 0
  %1475 = fsub fast float %1472, %1474
  %1476 = fmul fast float %1475, 1.000000e+01
  %1477 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1478 = fmul fast float %1477, %843
  %1479 = fmul fast float %1472, %1478
  br label %1491

; <label>:1480                                    ; preds = %1452
  %1481 = fadd fast float %1349, %1346
  %1482 = fmul fast float %1437, %1481
  %1483 = fmul fast float %1459, %1455
  %1484 = fmul fast float %1459, %1457
  %1485 = fmul fast float %1482, %1459
  %1486 = call float @dx.op.binary.f32(i32 35, float %1484, float %1485)  ; FMax(a,b)
  %1487 = call float @dx.op.binary.f32(i32 35, float %1483, float %1486)  ; FMax(a,b)
  %1488 = call float @dx.op.binary.f32(i32 35, float %1487, float 0.000000e+00)  ; FMax(a,b)
  %1489 = fcmp fast ugt float %1488, 0x3F10000000000000
  br i1 %1489, label %1491, label %1490

; <label>:1490                                    ; preds = %1480
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1491

; <label>:1491                                    ; preds = %1490, %1480, %1460
  %1492 = phi float [ %1462, %1460 ], [ %1483, %1490 ], [ %1483, %1480 ]
  %1493 = phi float [ %1479, %1460 ], [ %1484, %1490 ], [ %1484, %1480 ]
  %1494 = phi float [ %1478, %1460 ], [ %1485, %1490 ], [ %1485, %1480 ]
  %1495 = phi float [ %1478, %1460 ], [ 0.000000e+00, %1490 ], [ 0.000000e+00, %1480 ]
  %1496 = fadd fast float %557, 0x3FE3C6EF40000000
  %1497 = call float @dx.op.unary.f32(i32 22, float %1496)  ; Frc(value)
  %1498 = call float @dx.op.unary.f32(i32 23, float %1492)  ; Log(value)
  %1499 = fadd fast float %1498, -7.000000e+00
  %1500 = call float @dx.op.unary.f32(i32 21, float %1499)  ; Exp(value)
  %1501 = fmul fast float %1497, 2.000000e+00
  %1502 = fadd fast float %1501, -1.000000e+00
  %1503 = fmul fast float %1500, %1502
  %1504 = fcmp fast ogt float %1492, 0.000000e+00
  %1505 = select i1 %1504, float %1503, float 0.000000e+00
  %1506 = fadd fast float %1505, %1492
  %1507 = fadd fast float %557, 0x3FF3C6EF40000000
  %1508 = call float @dx.op.unary.f32(i32 22, float %1507)  ; Frc(value)
  %1509 = call float @dx.op.unary.f32(i32 23, float %1493)  ; Log(value)
  %1510 = fadd fast float %1509, -7.000000e+00
  %1511 = call float @dx.op.unary.f32(i32 21, float %1510)  ; Exp(value)
  %1512 = fmul fast float %1508, 2.000000e+00
  %1513 = fadd fast float %1512, -1.000000e+00
  %1514 = fmul fast float %1511, %1513
  %1515 = fcmp fast ogt float %1493, 0.000000e+00
  %1516 = select i1 %1515, float %1514, float 0.000000e+00
  %1517 = fadd fast float %1516, %1493
  %1518 = fadd fast float %557, 0x3FFDAA66E0000000
  %1519 = call float @dx.op.unary.f32(i32 22, float %1518)  ; Frc(value)
  %1520 = call float @dx.op.unary.f32(i32 23, float %1494)  ; Log(value)
  %1521 = fadd fast float %1520, -6.000000e+00
  %1522 = call float @dx.op.unary.f32(i32 21, float %1521)  ; Exp(value)
  %1523 = fmul fast float %1519, 2.000000e+00
  %1524 = fadd fast float %1523, -1.000000e+00
  %1525 = fmul fast float %1522, %1524
  %1526 = fcmp fast ogt float %1494, 0.000000e+00
  %1527 = select i1 %1526, float %1525, float 0.000000e+00
  %1528 = fadd fast float %1527, %1494
  %1529 = select i1 %111, float %1493, float %1517
  %1530 = select i1 %111, float %1494, float %1528
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1531 = call float @dx.op.binary.f32(i32 36, float %1506, float 3.225500e+04)  ; FMin(a,b)
  %1532 = call float @dx.op.binary.f32(i32 36, float %1529, float 3.225500e+04)  ; FMin(a,b)
  %1533 = call float @dx.op.binary.f32(i32 36, float %1530, float 3.225500e+04)  ; FMin(a,b)
  %1534 = call float @dx.op.binary.f32(i32 36, float %1495, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1531)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1532)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1533)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1534)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1495)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1495)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1495)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1495)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !60}
!35 = !{!36, !56, null}
!36 = !{!37, !40, !41, !43, !46, !48, !50, !52, !53, !55}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !39}
!41 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !42}
!42 = !{i32 3, i32 3}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 1, i32 1, i8 4, i32 3, i8 0, !45}
!44 = !{i32 2}
!45 = !{i32 3, i32 7}
!46 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 4, i8 0, !39}
!47 = !{i32 3}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 3, i32 1, i8 2, i32 5, i8 0, !42}
!49 = !{i32 5}
!50 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 6, i8 0, !39}
!51 = !{i32 8}
!52 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 7, i8 0, !39}
!53 = !{i32 8, !"COLOR", i8 5, i8 0, !47, i8 1, i32 1, i8 3, i32 8, i8 0, !54}
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
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}

