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
; shader hash: bfacce4e8a2444ebdb05a707b0c651c2
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
;                                   texture     f32          3d      T9     t44,space2     1
;                                   texture     f32          3d     T10     t45,space2     1
;                                   texture     f32     2darray     T11     t47,space2     1
;                                   textureunorm_f32     2darray     T12     t85,space2     1
;                                   texture     f32          2d     T13     t83,space2     1
;                                   texture     f32          2d     T14     t86,space2     1
;                                   texture     f32     2darray     T15             t1     1
;                                   texture    byte         r/o     T16             t2     1
;                                   texture     f32          3d     T17     t46,space2     1
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
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = fmul fast float %49, %42
  %51 = fmul fast float %49, %43
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %55 = fmul fast float %50, 2.000000e+00
  %56 = fmul fast float %55, %53
  %57 = fmul fast float %51, 2.000000e+00
  %58 = fmul fast float %57, %54
  %59 = fsub fast float 1.000000e+00, %56
  %60 = fsub fast float 1.000000e+00, %58
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %65 = fmul fast float %59, %62
  %66 = fmul fast float %59, %63
  %67 = fmul fast float %59, %64
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fmul fast float %60, %69
  %73 = fmul fast float %60, %70
  %74 = fmul fast float %60, %71
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fadd fast float %72, %76
  %80 = fadd fast float %79, %65
  %81 = fadd fast float %73, %77
  %82 = fadd fast float %81, %66
  %83 = fadd fast float %74, %78
  %84 = fadd fast float %83, %67
  %85 = fmul fast float %80, %45
  %86 = fmul fast float %82, %45
  %87 = fmul fast float %84, %45
  %88 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %98 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %97, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fsub fast float 1.000000e+00, %99
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = fcmp fast olt float %100, %102
  br label %107

; <label>:104                                     ; preds = %0
  %105 = icmp eq i32 %92, 0
  %106 = and i1 %91, %105
  br label %107

; <label>:107                                     ; preds = %104, %95
  %108 = phi i1 [ %103, %95 ], [ %106, %104 ]
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %110, %50
  %113 = fmul fast float %111, %51
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = and i32 %115, 114688
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %117, float %112, float 0.000000e+00
  %119 = select i1 %117, float %113, float 0.000000e+00
  %120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = fmul fast float %121, 2.550000e+02
  %123 = fptoui float %122 to i32
  %124 = select i1 %117, i32 %123, i32 0
  %125 = mul i32 %23, 208
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
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %165 = phi float [ %39, %137 ], [ %144, %150 ], [ %163, %158 ], [ %144, %156 ]
  %166 = phi float [ %40, %137 ], [ %155, %150 ], [ %145, %158 ], [ %145, %156 ]
  %167 = add i32 %24, 72
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = extractvalue %dx.types.ResRet.i32 %168, 1
  %171 = bitcast i32 %169 to float
  %172 = bitcast i32 %170 to float
  %173 = fmul fast float %171, %39
  %174 = fmul fast float %172, %40
  %175 = call float @dx.op.unary.f32(i32 22, float %173)  ; Frc(value)
  %176 = call float @dx.op.unary.f32(i32 22, float %174)  ; Frc(value)
  %177 = and i32 %128, 16
  %178 = icmp ne i32 %177, 0
  %179 = select i1 %178, float 1.000000e+00, float %41
  %180 = icmp eq i32 %177, 0
  br i1 %180, label %200, label %181, !dx.controlflow.hints !61

; <label>:181                                     ; preds = %164
  %182 = add i32 %125, 64
  %183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = fadd fast float %184, 1.000000e+00
  %186 = fmul fast float %185, %41
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
  %206 = fmul fast float %50, 5.000000e-01
  %207 = fmul fast float %51, 5.000000e-01
  %208 = fptosi float %206 to i32
  %209 = fptosi float %207 to i32
  %210 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = lshr i32 %211, 18
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F4C00EBA0000000
  %215 = call float @dx.op.unary.f32(i32 21, float %214)  ; Exp(value)
  %216 = fadd fast float %215, -1.000000e+00
  %217 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %218 = extractvalue %dx.types.Dimensions %217, 0
  %219 = sitofp i32 %218 to float
  %220 = extractvalue %dx.types.Dimensions %217, 1
  %221 = sitofp i32 %220 to float
  %222 = fcmp fast oge float %206, %219
  %223 = fcmp fast oge float %207, %221
  %224 = or i1 %222, %223
  %225 = select i1 %224, float 0x4197782600000000, float %216
  %226 = fsub fast float %225, %45
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
  br i1 %246, label %496, label %247, !dx.controlflow.hints !62

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
  %282 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %283 = extractvalue %dx.types.Dimensions %282, 0
  %284 = sitofp i32 %283 to float
  %285 = extractvalue %dx.types.Dimensions %282, 1
  %286 = sitofp i32 %285 to float
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 2
  %289 = extractvalue %dx.types.CBufRet.f32 %287, 3
  %290 = fmul fast float %288, %50
  %291 = fmul fast float %289, %51
  %292 = fmul fast float %290, %284
  %293 = fmul fast float %291, %286
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 1
  %296 = fsub fast float -0.000000e+00, %295
  %297 = fptoui float %296 to i32
  %298 = fptoui float %292 to i32
  %299 = fptoui float %293 to i32
  %300 = and i32 %297, 31
  %301 = lshr i32 %298, %300
  %302 = lshr i32 %299, %300
  %303 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %297, i32 %301, i32 %302, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = fcmp fast ogt float %304, -1.000000e+00
  %306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %307 = extractvalue %dx.types.CBufRet.f32 %306, 1
  %308 = select i1 %305, float %307, float 1.000000e+00
  %309 = fadd fast float %304, 1.000000e+00
  %310 = fmul fast float %308, %309
  %311 = call float @dx.op.unary.f32(i32 6, float %310)  ; FAbs(value)
  %312 = extractvalue %dx.types.CBufRet.f32 %306, 3
  %313 = fcmp fast oge float %311, %312
  %314 = select i1 %313, float 0x4197782600000000, float %311
  br i1 %281, label %392, label %315, !dx.controlflow.hints !63

; <label>:315                                     ; preds = %247
  %316 = fmul fast float %55, %288
  %317 = fmul fast float %57, %289
  %318 = fsub fast float 1.000000e+00, %316
  %319 = fsub fast float 1.000000e+00, %317
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %324 = fmul fast float %318, %321
  %325 = fmul fast float %318, %322
  %326 = fmul fast float %318, %323
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = fmul fast float %319, %328
  %332 = fmul fast float %319, %329
  %333 = fmul fast float %319, %330
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %350 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %351 = fsub fast float %348, %25
  %352 = fadd fast float %351, %344
  %353 = fsub fast float %349, %26
  %354 = fadd fast float %353, %345
  %355 = fsub fast float %350, %27
  %356 = fadd fast float %355, %346
  %357 = fmul fast float %28, %28
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
  %378 = fmul fast float %261, %29
  %379 = fmul fast float %262, %30
  %380 = fmul fast float %263, %31
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
  %395 = fsub fast float %314, %45
  br i1 %394, label %444, label %396

; <label>:396                                     ; preds = %392
  %397 = fadd fast float %256, %45
  %398 = fcmp fast olt float %314, %45
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
  %430 = fmul fast float %261, %29
  %431 = fmul fast float %262, %30
  %432 = fmul fast float %263, %31
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
  %446 = fdiv fast float 5.000000e+01, %28
  %447 = select i1 %277, float %446, float 1.000000e+00
  %448 = fmul fast float %447, %250
  %449 = fmul fast float %175, 2.000000e+00
  %450 = fmul fast float %176, 2.000000e+00
  %451 = fadd fast float %449, -1.000000e+00
  %452 = fadd fast float %450, -1.000000e+00
  %453 = call float @dx.op.dot2.f32(i32 54, float %451, float %452, float %451, float %452)  ; Dot2(ax,ay,bx,by)
  %454 = fmul fast float %258, %28
  %455 = fmul fast float %454, %453
  %456 = fsub fast float %395, %455
  %457 = fmul fast float %448, %456
  br label %487

; <label>:458                                     ; preds = %444
  br i1 %279, label %479, label %459

; <label>:459                                     ; preds = %458
  %460 = fmul fast float %28, 0x3F947AE140000000
  %461 = select i1 %277, float %460, float 1.000000e+00
  %462 = fdiv fast float 1.000000e+00, %461
  %463 = fmul fast float %461, %251
  %464 = fmul fast float %461, %252
  %465 = fmul fast float %462, %253
  %466 = call float @dx.op.unary.f32(i32 6, float %395)  ; FAbs(value)
  %467 = fcmp fast olt float %466, %463
  br i1 %467, label %468, label %472, !dx.controlflow.hints !64

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
  %480 = fdiv fast float 5.000000e+01, %28
  %481 = select i1 %277, float %480, float 1.000000e+00
  %482 = fmul fast float %481, %250
  %483 = call float @dx.op.unary.f32(i32 6, float %226)  ; FAbs(value)
  %484 = select i1 %274, float %483, float 0x47EFFFFFE0000000
  %485 = call float @dx.op.binary.f32(i32 36, float %395, float %484)  ; FMin(a,b)
  %486 = fmul fast float %482, %485
  br label %487

; <label>:487                                     ; preds = %479, %474, %472, %468, %445, %396, %315
  %488 = phi float [ %391, %315 ], [ %443, %396 ], [ %457, %445 ], [ %486, %479 ], [ %471, %468 ], [ %478, %474 ], [ %466, %472 ]
  %489 = phi float [ %387, %315 ], [ %439, %396 ], [ %29, %445 ], [ %29, %479 ], [ %29, %468 ], [ %29, %474 ], [ %29, %472 ]
  %490 = phi float [ %388, %315 ], [ %440, %396 ], [ %30, %445 ], [ %30, %479 ], [ %30, %468 ], [ %30, %474 ], [ %30, %472 ]
  %491 = phi float [ %389, %315 ], [ %441, %396 ], [ %31, %445 ], [ %31, %479 ], [ %31, %468 ], [ %31, %474 ], [ %31, %472 ]
  %492 = phi float [ %377, %315 ], [ %429, %396 ], [ 1.000000e+00, %445 ], [ 1.000000e+00, %479 ], [ 1.000000e+00, %468 ], [ 1.000000e+00, %474 ], [ 1.000000e+00, %472 ]
  %493 = call float @dx.op.unary.f32(i32 7, float %488)  ; Saturate(value)
  %494 = fmul fast float %492, %205
  %495 = fmul fast float %494, %493
  br label %496

; <label>:496                                     ; preds = %487, %244
  %497 = phi float [ %495, %487 ], [ %205, %244 ]
  %498 = phi float [ %489, %487 ], [ %29, %244 ]
  %499 = phi float [ %490, %487 ], [ %30, %244 ]
  %500 = phi float [ %491, %487 ], [ %31, %244 ]
  %501 = fmul fast float %498, %32
  %502 = fmul fast float %499, %32
  %503 = fmul fast float %500, %32
  %504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %505 = extractvalue %dx.types.CBufRet.f32 %504, 2
  %506 = fptosi float %45 to i32
  %507 = sitofp i32 %506 to float
  %508 = fadd fast float %505, %507
  %509 = fmul fast float %508, 0x3FE3C6EF40000000
  %510 = frem fast float %50, 2.560000e+02
  %511 = frem fast float %51, 2.560000e+02
  %512 = fptoui float %510 to i32
  %513 = fptoui float %511 to i32
  %514 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %512, i32 %513, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = fadd fast float %515, %509
  %517 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %518 = and i32 %128, 1
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %576, label %520, !dx.controlflow.hints !65

; <label>:520                                     ; preds = %496
  %521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 2
  %523 = extractvalue %dx.types.ResRet.f32 %521, 3
  %524 = add i32 %125, 16
  %525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = extractvalue %dx.types.ResRet.f32 %525, 1
  %528 = extractvalue %dx.types.ResRet.f32 %525, 2
  %529 = add i32 %125, 32
  %530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  %532 = extractvalue %dx.types.ResRet.f32 %530, 1
  %533 = extractvalue %dx.types.ResRet.f32 %530, 2
  %534 = and i32 %128, 2
  %535 = icmp eq i32 %534, 0
  %536 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %537 = call float @dx.op.unary.f32(i32 25, float %536)  ; Rsqrt(value)
  %538 = fmul fast float %537, %35
  %539 = fmul fast float %537, %36
  %540 = fmul fast float %537, %37
  %541 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %542 = call float @dx.op.unary.f32(i32 25, float %541)  ; Rsqrt(value)
  %543 = fmul fast float %542, %85
  %544 = fmul fast float %542, %86
  %545 = fmul fast float %542, %87
  %546 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float %538, float %539, float %540)  ; Dot3(ax,ay,az,bx,by,bz)
  %547 = fmul fast float %546, %546
  %548 = fmul fast float %547, %522
  %549 = fadd fast float %548, %523
  %550 = call float @dx.op.unary.f32(i32 7, float %549)  ; Saturate(value)
  br i1 %535, label %551, label %561, !dx.controlflow.hints !66

; <label>:551                                     ; preds = %520
  %552 = extractvalue %dx.types.ResRet.f32 %521, 1
  %553 = extractvalue %dx.types.ResRet.f32 %521, 0
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 3
  %556 = fmul fast float %555, %541
  %557 = fsub fast float %553, %556
  %558 = fmul fast float %557, %552
  %559 = call float @dx.op.unary.f32(i32 7, float %558)  ; Saturate(value)
  %560 = fmul fast float %559, %550
  br label %561

; <label>:561                                     ; preds = %551, %520
  %562 = phi float [ %560, %551 ], [ %550, %520 ]
  %563 = fsub fast float %526, %531
  %564 = fsub fast float %527, %532
  %565 = fsub fast float %528, %533
  %566 = fmul fast float %562, %563
  %567 = fmul fast float %562, %564
  %568 = fmul fast float %562, %565
  %569 = fadd fast float %566, %531
  %570 = fadd fast float %567, %532
  %571 = fadd fast float %568, %533
  %572 = fmul fast float %569, %501
  %573 = fmul fast float %570, %502
  %574 = fmul fast float %571, %503
  %575 = fmul fast float %562, %497
  br label %576

; <label>:576                                     ; preds = %561, %496
  %577 = phi float [ %575, %561 ], [ %497, %496 ]
  %578 = phi float [ %572, %561 ], [ %501, %496 ]
  %579 = phi float [ %573, %561 ], [ %502, %496 ]
  %580 = phi float [ %574, %561 ], [ %503, %496 ]
  %581 = add i32 %24, 104
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = add i32 %583, 0
  %585 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %584, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %586 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %585, %dx.types.Handle %46, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  %588 = extractvalue %dx.types.ResRet.f32 %586, 1
  %589 = extractvalue %dx.types.ResRet.f32 %586, 2
  %590 = add i32 %24, 44
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = shl i32 %592, 4
  %594 = and i32 %593, 32752
  %595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %594)  ; LegacyF16ToF32(value)
  %596 = lshr i32 %592, 7
  %597 = and i32 %596, 32752
  %598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %597)  ; LegacyF16ToF32(value)
  %599 = lshr i32 %592, 22
  %600 = shl nuw nsw i32 %599, 5
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = fmul fast float %595, %587
  %603 = fmul fast float %598, %588
  %604 = fmul fast float %601, %589
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = fmul fast float %602, %606
  %608 = fmul fast float %603, %606
  %609 = fmul fast float %604, %606
  %610 = add i32 %24, 48
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = lshr i32 %612, 22
  %614 = shl nuw nsw i32 %613, 5
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = fmul fast float %615, %607
  %617 = select i1 %108, float %616, float %607
  %618 = add i32 %24, 40
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = fmul fast float %623, %623
  %625 = add i32 %24, 108
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = add i32 %627, 0
  %629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %630 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %629, %dx.types.Handle %47, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %631 = extractvalue %dx.types.ResRet.f32 %630, 0
  %632 = fmul fast float %624, %631
  %633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = extractvalue %dx.types.ResRet.f32 %633, 1
  %636 = extractvalue %dx.types.ResRet.f32 %633, 2
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 1
  %639 = fmul fast float %617, %578
  %640 = fmul fast float %608, %579
  %641 = fmul fast float %609, %580
  %642 = call float @dx.op.dot3.f32(i32 55, float %639, float %640, float %641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %643 = select i1 %108, float 0.000000e+00, float %639
  %644 = select i1 %108, float %642, float %640
  %645 = select i1 %108, float 0.000000e+00, float %641
  %646 = call float @dx.op.dot3.f32(i32 55, float %587, float %588, float %589, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %647 = add i32 %24, 32
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = lshr i32 %649, 8
  %653 = and i32 %652, 255
  %654 = uitofp i32 %653 to float
  %655 = fmul fast float %654, %646
  %656 = fadd fast float %655, %651
  %657 = fmul fast float %656, 0x3F70101020000000
  %658 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %659 = and i32 %128, 8192
  %660 = icmp eq i32 %659, 0
  %661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %662 = extractvalue %dx.types.CBufRet.f32 %661, 0
  br i1 %660, label %669, label %663, !dx.controlflow.hints !67

; <label>:663                                     ; preds = %576
  %664 = add i32 %125, 176
  %665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.f32 %665, 0
  %667 = fcmp fast oge float %666, 0.000000e+00
  %668 = select i1 %667, float %666, float %662
  br label %669

; <label>:669                                     ; preds = %663, %576
  %670 = phi float [ %668, %663 ], [ %662, %576 ]
  %671 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = lshr i32 %672, 18
  %674 = uitofp i32 %673 to float
  %675 = fmul fast float %674, 0x3F4C00EBA0000000
  %676 = call float @dx.op.unary.f32(i32 21, float %675)  ; Exp(value)
  %677 = fadd fast float %676, -1.000000e+00
  %678 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %679 = extractvalue %dx.types.Dimensions %678, 0
  %680 = sitofp i32 %679 to float
  %681 = extractvalue %dx.types.Dimensions %678, 1
  %682 = sitofp i32 %681 to float
  %683 = fcmp fast oge float %206, %680
  %684 = fcmp fast oge float %207, %682
  %685 = or i1 %683, %684
  %686 = select i1 %685, float 0x4197782600000000, float %677
  %687 = icmp eq i32 %124, 3
  %688 = fcmp fast ogt float %45, %686
  %689 = and i1 %232, %688
  %690 = or i1 %687, %689
  %691 = icmp eq i32 %124, 2
  %692 = fcmp fast ole float %45, %686
  %693 = and i1 %691, %692
  %694 = or i1 %693, %690
  %695 = fmul fast float %498, %38
  %696 = fmul fast float %695, %617
  %697 = fmul fast float %696, %634
  %698 = fmul fast float %697, %638
  %699 = fmul fast float %499, %38
  %700 = fmul fast float %699, %608
  %701 = fmul fast float %700, %635
  %702 = fmul fast float %701, %638
  %703 = fmul fast float %500, %38
  %704 = fmul fast float %703, %609
  %705 = fmul fast float %704, %636
  %706 = fmul fast float %705, %638
  %707 = fadd fast float %698, %643
  %708 = fadd fast float %644, %702
  %709 = fadd fast float %706, %645
  %710 = fmul fast float %707, %577
  %711 = fmul fast float %708, %577
  %712 = fmul fast float %709, %577
  %713 = fadd fast float %632, -1.000000e+00
  %714 = fmul fast float %713, %577
  %715 = fadd fast float %714, 1.000000e+00
  %716 = call float @dx.op.dot3.f32(i32 55, float %715, float %715, float %715, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %717 = fsub fast float 1.000000e+00, %716
  %718 = fmul fast float %670, %658
  %719 = fsub fast float 1.000000e+00, %658
  %720 = call float @dx.op.unary.f32(i32 7, float %719)  ; Saturate(value)
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 3
  %723 = fmul fast float %722, %720
  %724 = fadd fast float %723, %718
  %725 = and i32 %128, 1048576
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %818, label %727, !dx.controlflow.hints !68

; <label>:727                                     ; preds = %669
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %730 = extractvalue %dx.types.CBufRet.f32 %728, 3
  %731 = fmul fast float %729, %50
  %732 = fmul fast float %730, %51
  %733 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  %734 = call float @dx.op.unary.f32(i32 7, float %732)  ; Saturate(value)
  %735 = select i1 %694, i32 2, i32 0
  %736 = or i32 %735, 1
  %737 = uitofp i32 %736 to float
  %738 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %733, float %734, float %737, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = extractvalue %dx.types.ResRet.f32 %738, 3
  %743 = add nuw nsw i32 %735, 2
  %744 = uitofp i32 %743 to float
  %745 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %733, float %734, float %744, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = extractvalue %dx.types.ResRet.f32 %745, 1
  %748 = extractvalue %dx.types.ResRet.f32 %745, 2
  %749 = extractvalue %dx.types.ResRet.f32 %745, 3
  %750 = call float @dx.op.binary.f32(i32 35, float %740, float %741)  ; FMax(a,b)
  %751 = call float @dx.op.binary.f32(i32 35, float %739, float %750)  ; FMax(a,b)
  %752 = call float @dx.op.binary.f32(i32 35, float %751, float %742)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 36, float %747, float %748)  ; FMin(a,b)
  %754 = call float @dx.op.binary.f32(i32 36, float %746, float %753)  ; FMin(a,b)
  %755 = call float @dx.op.binary.f32(i32 36, float %754, float %749)  ; FMin(a,b)
  %756 = fmul fast float %752, 2.550000e+02
  %757 = fadd fast float %756, 0x3F70101020000000
  %758 = fptoui float %757 to i32
  %759 = fmul fast float %755, 2.550000e+02
  %760 = fadd fast float %759, 0x3F70101020000000
  %761 = fptoui float %760 to i32
  %762 = icmp ult i32 %758, %761
  br i1 %762, label %763, label %811

; <label>:763                                     ; preds = %727
  %764 = fcmp fast ogt float %44, 9.843750e-01
  %765 = fadd fast float %45, -4.000000e+00
  %766 = select i1 %764, float -4.000000e+00, float %765
  %767 = call float @dx.op.binary.f32(i32 35, float %766, float 0.000000e+00)  ; FMax(a,b)
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 0
  %770 = fadd fast float %769, %767
  %771 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %772 = fmul fast float %770, %771
  %773 = call float @dx.op.unary.f32(i32 23, float %772)  ; Log(value)
  %774 = extractvalue %dx.types.CBufRet.f32 %768, 3
  %775 = fmul fast float %774, %773
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 2
  %778 = fmul fast float %775, %777
  %779 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %780 = uitofp i32 %758 to float
  %781 = uitofp i32 %761 to float
  %782 = fadd fast float %780, 5.000000e-01
  %783 = fadd fast float %781, 5.000000e-01
  %784 = fmul fast float %777, %782
  %785 = fmul fast float %777, %783
  %786 = fadd fast float %784, 0x3F0FFB4800000000
  %787 = fadd fast float %785, 0xBF0FFB4800000000
  %788 = call float @dx.op.binary.f32(i32 35, float %779, float %786)  ; FMax(a,b)
  %789 = call float @dx.op.binary.f32(i32 36, float %788, float %787)  ; FMin(a,b)
  %790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %791 = extractvalue %dx.types.CBufRet.f32 %790, 1
  %792 = extractvalue %dx.types.CBufRet.f32 %790, 2
  %793 = extractvalue %dx.types.CBufRet.f32 %790, 0
  %794 = select i1 %694, float %793, float 0.000000e+00
  %795 = fmul fast float %791, %789
  %796 = fadd fast float %794, %795
  %797 = fadd fast float %794, %792
  %798 = fsub fast float %791, %792
  %799 = fadd fast float %798, %794
  %800 = call float @dx.op.binary.f32(i32 35, float %796, float %797)  ; FMax(a,b)
  %801 = call float @dx.op.binary.f32(i32 36, float %800, float %799)  ; FMin(a,b)
  %802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %733, float %734, float %801, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %803 = extractvalue %dx.types.ResRet.f32 %802, 0
  %804 = extractvalue %dx.types.ResRet.f32 %802, 1
  %805 = extractvalue %dx.types.ResRet.f32 %802, 2
  %806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %807 = extractvalue %dx.types.CBufRet.f32 %806, 1
  %808 = fmul fast float %807, %803
  %809 = fmul fast float %807, %804
  %810 = fmul fast float %807, %805
  br label %811

; <label>:811                                     ; preds = %763, %727
  %812 = phi float [ %808, %763 ], [ 1.000000e+00, %727 ]
  %813 = phi float [ %809, %763 ], [ 1.000000e+00, %727 ]
  %814 = phi float [ %810, %763 ], [ 1.000000e+00, %727 ]
  %815 = fmul fast float %812, %710
  %816 = fmul fast float %813, %711
  %817 = fmul fast float %814, %712
  br label %818

; <label>:818                                     ; preds = %811, %669
  %819 = phi float [ %815, %811 ], [ %710, %669 ]
  %820 = phi float [ %816, %811 ], [ %711, %669 ]
  %821 = phi float [ %817, %811 ], [ %712, %669 ]
  %822 = and i32 %128, 2097152
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %828, label %824, !dx.controlflow.hints !69

; <label>:824                                     ; preds = %818
  %825 = add i32 %125, 192
  %826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  br label %831

; <label>:828                                     ; preds = %818
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 3
  br label %831

; <label>:831                                     ; preds = %828, %824
  %832 = phi float [ %827, %824 ], [ %830, %828 ]
  br i1 %689, label %833, label %936

; <label>:833                                     ; preds = %831
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 2
  %836 = extractvalue %dx.types.CBufRet.f32 %834, 3
  %837 = fmul fast float %835, %50
  %838 = fmul fast float %836, %51
  %839 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %840 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  %841 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %839, float %840, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %842 = extractvalue %dx.types.ResRet.f32 %841, 0
  %843 = extractvalue %dx.types.ResRet.f32 %841, 1
  %844 = extractvalue %dx.types.ResRet.f32 %841, 2
  %845 = extractvalue %dx.types.ResRet.f32 %841, 3
  %846 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %839, float %840, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = extractvalue %dx.types.ResRet.f32 %846, 1
  %849 = extractvalue %dx.types.ResRet.f32 %846, 2
  %850 = extractvalue %dx.types.ResRet.f32 %846, 3
  %851 = call float @dx.op.binary.f32(i32 35, float %843, float %844)  ; FMax(a,b)
  %852 = call float @dx.op.binary.f32(i32 35, float %842, float %851)  ; FMax(a,b)
  %853 = call float @dx.op.binary.f32(i32 35, float %852, float %845)  ; FMax(a,b)
  %854 = call float @dx.op.binary.f32(i32 36, float %848, float %849)  ; FMin(a,b)
  %855 = call float @dx.op.binary.f32(i32 36, float %847, float %854)  ; FMin(a,b)
  %856 = call float @dx.op.binary.f32(i32 36, float %855, float %850)  ; FMin(a,b)
  %857 = fmul fast float %853, 2.550000e+02
  %858 = fadd fast float %857, 0x3F70101020000000
  %859 = fptoui float %858 to i32
  %860 = fmul fast float %856, 2.550000e+02
  %861 = fadd fast float %860, 0x3F70101020000000
  %862 = fptoui float %861 to i32
  %863 = icmp ult i32 %859, %862
  br i1 %863, label %864, label %915

; <label>:864                                     ; preds = %833
  %865 = fcmp fast ogt float %44, 9.843750e-01
  %866 = fadd fast float %45, -4.000000e+00
  %867 = select i1 %865, float -4.000000e+00, float %866
  %868 = call float @dx.op.binary.f32(i32 35, float %867, float 0.000000e+00)  ; FMax(a,b)
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 0
  %871 = fadd fast float %870, %868
  %872 = extractvalue %dx.types.CBufRet.f32 %869, 2
  %873 = fmul fast float %871, %872
  %874 = call float @dx.op.unary.f32(i32 23, float %873)  ; Log(value)
  %875 = extractvalue %dx.types.CBufRet.f32 %869, 3
  %876 = fmul fast float %875, %874
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 2
  %879 = fmul fast float %876, %878
  %880 = call float @dx.op.unary.f32(i32 7, float %879)  ; Saturate(value)
  %881 = uitofp i32 %859 to float
  %882 = uitofp i32 %862 to float
  %883 = fadd fast float %881, 5.000000e-01
  %884 = fadd fast float %882, 5.000000e-01
  %885 = fmul fast float %878, %883
  %886 = fmul fast float %878, %884
  %887 = fadd fast float %885, 0x3F0FFB4800000000
  %888 = fadd fast float %886, 0xBF0FFB4800000000
  %889 = call float @dx.op.binary.f32(i32 35, float %880, float %887)  ; FMax(a,b)
  %890 = call float @dx.op.binary.f32(i32 36, float %889, float %888)  ; FMin(a,b)
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %894 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %895 = fmul fast float %892, %890
  %896 = fadd fast float %894, %895
  %897 = fadd fast float %894, %893
  %898 = fsub fast float %892, %893
  %899 = fadd fast float %898, %894
  %900 = call float @dx.op.binary.f32(i32 35, float %896, float %897)  ; FMax(a,b)
  %901 = call float @dx.op.binary.f32(i32 36, float %900, float %899)  ; FMin(a,b)
  %902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %839, float %840, float %901, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 0
  %904 = extractvalue %dx.types.ResRet.f32 %902, 1
  %905 = extractvalue %dx.types.ResRet.f32 %902, 2
  %906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %839, float %840, float %901, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %907 = extractvalue %dx.types.ResRet.f32 %906, 0
  %908 = extractvalue %dx.types.ResRet.f32 %906, 1
  %909 = extractvalue %dx.types.ResRet.f32 %906, 2
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 1
  %912 = fmul fast float %911, %907
  %913 = fmul fast float %911, %908
  %914 = fmul fast float %911, %909
  br label %915

; <label>:915                                     ; preds = %864, %833
  %916 = phi float [ %903, %864 ], [ 1.000000e+00, %833 ]
  %917 = phi float [ %904, %864 ], [ 1.000000e+00, %833 ]
  %918 = phi float [ %905, %864 ], [ 1.000000e+00, %833 ]
  %919 = phi float [ %912, %864 ], [ 0.000000e+00, %833 ]
  %920 = phi float [ %913, %864 ], [ 0.000000e+00, %833 ]
  %921 = phi float [ %914, %864 ], [ 0.000000e+00, %833 ]
  %922 = fmul fast float %919, %717
  %923 = fmul fast float %920, %717
  %924 = fmul fast float %921, %717
  %925 = call float @dx.op.dot3.f32(i32 55, float %916, float %917, float %918, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %926 = call float @dx.op.dot3.f32(i32 55, float %922, float %923, float %924, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %927 = select i1 %108, float %925, float %916
  %928 = select i1 %108, float %925, float %917
  %929 = select i1 %108, float 1.000000e+00, float %918
  %930 = select i1 %108, float %926, float %922
  %931 = select i1 %108, float 0.000000e+00, float %923
  %932 = select i1 %108, float 0.000000e+00, float %924
  %933 = fmul fast float %927, %819
  %934 = fmul fast float %928, %820
  %935 = fmul fast float %929, %821
  br label %936

; <label>:936                                     ; preds = %915, %831
  %937 = phi float [ %686, %915 ], [ %45, %831 ]
  %938 = phi float [ %930, %915 ], [ 0.000000e+00, %831 ]
  %939 = phi float [ %931, %915 ], [ 0.000000e+00, %831 ]
  %940 = phi float [ %932, %915 ], [ 0.000000e+00, %831 ]
  %941 = phi float [ %933, %915 ], [ %819, %831 ]
  %942 = phi float [ %934, %915 ], [ %820, %831 ]
  %943 = phi float [ %935, %915 ], [ %821, %831 ]
  %944 = phi float [ %916, %915 ], [ 1.000000e+00, %831 ]
  br i1 %694, label %1246, label %945

; <label>:945                                     ; preds = %936
  %946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %947 = extractvalue %dx.types.ResRet.f32 %946, 0
  %948 = extractvalue %dx.types.ResRet.f32 %946, 1
  %949 = extractvalue %dx.types.ResRet.f32 %946, 2
  %950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %951 = extractvalue %dx.types.ResRet.f32 %950, 0
  %952 = extractvalue %dx.types.ResRet.f32 %950, 1
  %953 = extractvalue %dx.types.ResRet.f32 %950, 2
  %954 = fmul fast float %947, %717
  %955 = fmul fast float %948, %717
  %956 = fmul fast float %949, %717
  %957 = fmul fast float %951, %944
  %958 = call float @dx.op.dot3.f32(i32 55, float %951, float %952, float %953, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %959 = call float @dx.op.dot3.f32(i32 55, float %954, float %955, float %956, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %960 = select i1 %108, float %958, float %951
  %961 = select i1 %108, float %958, float %952
  %962 = select i1 %108, float 1.000000e+00, float %953
  %963 = select i1 %108, float %959, float %954
  %964 = select i1 %108, float 0.000000e+00, float %955
  %965 = select i1 %108, float 0.000000e+00, float %956
  %966 = fmul fast float %960, %938
  %967 = fmul fast float %961, %939
  %968 = fmul fast float %962, %940
  %969 = fadd fast float %966, %963
  %970 = fadd fast float %967, %964
  %971 = fadd fast float %968, %965
  %972 = fmul fast float %960, %941
  %973 = fmul fast float %961, %942
  %974 = fmul fast float %962, %943
  %975 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.i32 %975, 0
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %1246, label %978, !dx.controlflow.hints !70

; <label>:978                                     ; preds = %945
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 2
  %981 = extractvalue %dx.types.CBufRet.f32 %979, 3
  %982 = fmul fast float %980, %50
  %983 = fmul fast float %981, %51
  %984 = fmul fast float %982, 2.000000e+00
  %985 = fmul fast float %983, 2.000000e+00
  %986 = fsub fast float 1.000000e+00, %984
  %987 = fsub fast float 1.000000e+00, %985
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %990 = extractvalue %dx.types.CBufRet.f32 %988, 1
  %991 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %992 = fmul fast float %986, %989
  %993 = fmul fast float %986, %990
  %994 = fmul fast float %986, %991
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 1
  %998 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %999 = fmul fast float %987, %996
  %1000 = fmul fast float %987, %997
  %1001 = fmul fast float %987, %998
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.CBufRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.CBufRet.f32 %1002, 2
  %1006 = fadd fast float %999, %1003
  %1007 = fadd fast float %1006, %992
  %1008 = fadd fast float %1000, %1004
  %1009 = fadd fast float %1008, %993
  %1010 = fadd fast float %1001, %1005
  %1011 = fadd fast float %1010, %994
  %1012 = fmul fast float %1007, %937
  %1013 = fmul fast float %1009, %937
  %1014 = fmul fast float %1011, %937
  %1015 = fmul fast float %1012, %1012
  %1016 = fmul fast float %1013, %1013
  %1017 = fadd fast float %1015, %1016
  %1018 = fmul fast float %1014, %1014
  %1019 = fadd fast float %1017, %1018
  %1020 = call float @dx.op.unary.f32(i32 24, float %1019)  ; Sqrt(value)
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 0
  %1023 = fsub fast float %1020, %1022
  %1024 = extractvalue %dx.types.CBufRet.f32 %1021, 2
  %1025 = fmul fast float %1023, %1024
  %1026 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  %1027 = fadd fast float %1026, -5.000000e-01
  %1028 = fmul fast float %1027, 2.000000e+00
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1031 = call float @dx.op.binary.f32(i32 36, float %1030, float %1028)  ; FMin(a,b)
  %1032 = fsub fast float -0.000000e+00, %1030
  %1033 = fcmp fast ogt float %1031, %1032
  br i1 %1033, label %1034, label %1246, !dx.controlflow.hints !71

; <label>:1034                                    ; preds = %978
  %1035 = fmul fast float %1031, 5.000000e-01
  %1036 = fadd fast float %1035, 5.000000e-01
  %1037 = call float @dx.op.unary.f32(i32 22, float %1036)  ; Frc(value)
  %1038 = call float @dx.op.unary.f32(i32 27, float %1037)  ; Round_ni(value)
  %1039 = call float @dx.op.unary.f32(i32 22, float %1037)  ; Frc(value)
  %1040 = fmul fast float %1039, 2.000000e+00
  %1041 = fadd fast float %1040, -1.000000e+00
  %1042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %982, float %983, float %1038, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = extractvalue %dx.types.ResRet.f32 %1042, 3
  %1047 = fadd fast float %1043, -5.000000e-01
  %1048 = fadd fast float %1045, -5.000000e-01
  %1049 = fmul fast float %1047, 0xBFD5555560000000
  %1050 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1048, float %1049)  ; FMad(a,b,c)
  %1051 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1044, float 0.000000e+00)  ; FMad(a,b,c)
  %1052 = fadd fast float %1051, %1046
  %1053 = fmul fast float %1047, -7.500000e-01
  %1054 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1048, float %1053)  ; FMad(a,b,c)
  %1055 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1044, float 0.000000e+00)  ; FMad(a,b,c)
  %1056 = fadd fast float %1055, %1046
  %1057 = call float @dx.op.binary.f32(i32 35, float %1050, float -1.000000e+00)  ; FMax(a,b)
  %1058 = call float @dx.op.binary.f32(i32 35, float %1052, float -1.000000e+00)  ; FMax(a,b)
  %1059 = call float @dx.op.binary.f32(i32 35, float %1054, float -1.000000e+00)  ; FMax(a,b)
  %1060 = call float @dx.op.binary.f32(i32 35, float %1056, float -1.000000e+00)  ; FMax(a,b)
  %1061 = call float @dx.op.binary.f32(i32 36, float %1057, float 1.000000e+00)  ; FMin(a,b)
  %1062 = call float @dx.op.binary.f32(i32 36, float %1058, float 1.000000e+00)  ; FMin(a,b)
  %1063 = call float @dx.op.binary.f32(i32 36, float %1059, float 1.000000e+00)  ; FMin(a,b)
  %1064 = call float @dx.op.binary.f32(i32 36, float %1060, float 1.000000e+00)  ; FMin(a,b)
  %1065 = fcmp fast olt float %1061, 0x3FEFFF8020000000
  br i1 %1065, label %1066, label %1181, !dx.controlflow.hints !72

; <label>:1066                                    ; preds = %1034
  %1067 = extractvalue %dx.types.CBufRet.f32 %1029, 3
  %1068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1068, 0
  %1070 = extractvalue %dx.types.CBufRet.f32 %1068, 1
  %1071 = extractvalue %dx.types.CBufRet.f32 %1068, 2
  %1072 = extractvalue %dx.types.CBufRet.f32 %1068, 3
  %1073 = fsub fast float %1069, %1061
  %1074 = fsub fast float %1070, %1062
  %1075 = fsub fast float %1071, %1063
  %1076 = fsub fast float %1072, %1064
  %1077 = fmul fast float %1073, %1067
  %1078 = fmul fast float %1074, %1067
  %1079 = fmul fast float %1075, %1067
  %1080 = fmul fast float %1076, %1067
  %1081 = fadd fast float %1077, %1061
  %1082 = fadd fast float %1078, %1062
  %1083 = fsub fast float -0.000000e+00, %1082
  %1084 = fadd fast float %1079, %1063
  %1085 = fadd fast float %1080, %1064
  %1086 = fmul fast float %1081, %1081
  %1087 = fsub fast float %1082, %1086
  %1088 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1087)  ; FMax(a,b)
  %1089 = fdiv fast float 1.000000e+00, %1088
  %1090 = fmul fast float %1082, %1081
  %1091 = fsub fast float %1084, %1090
  %1092 = fsub fast float %1041, %1081
  %1093 = fmul fast float %1041, %1041
  %1094 = fsub fast float %1093, %1082
  %1095 = fmul fast float %1092, %1089
  %1096 = fmul fast float %1095, %1091
  %1097 = fsub fast float %1094, %1096
  %1098 = fmul fast float %1082, %1082
  %1099 = fsub fast float %1085, %1098
  %1100 = fmul fast float %1091, %1091
  %1101 = fmul fast float %1100, %1089
  %1102 = fsub fast float %1099, %1101
  %1103 = fdiv fast float %1097, %1102
  %1104 = fmul fast float %1091, %1103
  %1105 = fsub fast float %1092, %1104
  %1106 = fmul fast float %1105, %1089
  %1107 = fmul fast float %1106, %1081
  %1108 = fsub fast float 1.000000e+00, %1107
  %1109 = fmul fast float %1082, %1103
  %1110 = fsub fast float %1108, %1109
  %1111 = fmul fast float %1106, %1106
  %1112 = fmul fast float %1103, 4.000000e+00
  %1113 = fmul fast float %1112, %1110
  %1114 = fsub fast float %1111, %1113
  %1115 = call float @dx.op.unary.f32(i32 24, float %1114)  ; Sqrt(value)
  %1116 = fcmp fast oge float %1106, 0.000000e+00
  %1117 = fsub fast float -0.000000e+00, %1115
  %1118 = select i1 %1116, float %1117, float %1115
  %1119 = fsub fast float %1118, %1106
  %1120 = fdiv fast float %1119, %1103
  %1121 = fdiv fast float %1110, %1119
  %1122 = fmul fast float %1120, 5.000000e-01
  %1123 = fmul fast float %1121, 2.000000e+00
  %1124 = select i1 %1116, float %1122, float %1123
  %1125 = select i1 %1116, float %1123, float %1122
  %1126 = call float @dx.op.binary.f32(i32 35, float %1124, float %1125)  ; FMax(a,b)
  %1127 = call float @dx.op.binary.f32(i32 36, float %1124, float %1125)  ; FMin(a,b)
  %1128 = fcmp fast ogt float %1041, %1127
  br i1 %1128, label %1129, label %1139

; <label>:1129                                    ; preds = %1066
  %1130 = fsub fast float %1041, %1127
  %1131 = fsub fast float %1126, %1127
  %1132 = fmul fast float %1130, %1131
  %1133 = fmul fast float %1126, %1041
  %1134 = fadd fast float %1126, %1041
  %1135 = fmul fast float %1134, %1081
  %1136 = fadd fast float %1133, %1082
  %1137 = fsub fast float %1136, %1135
  %1138 = fdiv fast float %1137, %1132
  br label %1139

; <label>:1139                                    ; preds = %1129, %1066
  %1140 = phi float [ %1138, %1129 ], [ 0.000000e+00, %1066 ]
  %1141 = fcmp fast ogt float %1041, %1126
  %1142 = fsub fast float %1041, %1126
  br i1 %1141, label %1143, label %1153

; <label>:1143                                    ; preds = %1139
  %1144 = fsub fast float %1126, %1127
  %1145 = fmul fast float %1144, %1142
  %1146 = fmul fast float %1127, %1041
  %1147 = fadd fast float %1127, %1041
  %1148 = fmul fast float %1147, %1081
  %1149 = fsub fast float %1083, %1146
  %1150 = fadd fast float %1149, %1148
  %1151 = fdiv fast float %1150, %1145
  %1152 = fadd fast float %1151, %1140
  br label %1153

; <label>:1153                                    ; preds = %1143, %1139
  %1154 = phi float [ %1152, %1143 ], [ %1140, %1139 ]
  %1155 = fsub fast float %1041, %1127
  %1156 = fmul fast float %1155, %1142
  %1157 = fmul fast float %1127, %1126
  %1158 = fadd fast float %1127, %1126
  %1159 = fmul fast float %1158, %1081
  %1160 = fadd fast float %1157, %1082
  %1161 = fsub fast float %1160, %1159
  %1162 = fdiv fast float %1161, %1156
  %1163 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  %1164 = fcmp fast oeq float %832, 0.000000e+00
  %1165 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1166 = fcmp fast oeq float %1165, 0.000000e+00
  %1167 = or i1 %1164, %1166
  %1168 = fmul fast float %1165, 2.000000e+00
  %1169 = fadd fast float %1030, %1031
  %1170 = fdiv fast float %1169, %1168
  %1171 = call float @dx.op.unary.f32(i32 7, float %1170)  ; Saturate(value)
  %1172 = fmul fast float %1171, 2.000000e+00
  %1173 = fsub fast float 3.000000e+00, %1172
  %1174 = fmul fast float %1171, %1171
  %1175 = fmul fast float %1174, %1173
  %1176 = select i1 %1167, float 1.000000e+00, float %1175
  %1177 = fmul fast float %1162, %832
  %1178 = fadd fast float %1163, %1177
  %1179 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1180 = fmul fast float %1176, %1179
  br label %1181

; <label>:1181                                    ; preds = %1153, %1034
  %1182 = phi float [ %1180, %1153 ], [ 0.000000e+00, %1034 ]
  %1183 = fsub fast float 1.000000e+00, %1182
  %1184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1185 = extractvalue %dx.types.ResRet.f32 %1184, 0
  %1186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.i32 %1186, 2
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1194, label %1189

; <label>:1189                                    ; preds = %1181
  %1190 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1191 = fadd fast float %1185, -1.000000e+00
  %1192 = fmul fast float %1190, %1191
  %1193 = fadd fast float %1192, 1.000000e+00
  br label %1194

; <label>:1194                                    ; preds = %1189, %1181
  %1195 = phi float [ %1193, %1189 ], [ %1183, %1181 ]
  %1196 = call float @dx.op.binary.f32(i32 35, float %1185, float %1195)  ; FMax(a,b)
  %1197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.i32 %1197, 2
  %1199 = and i32 %1198, 1
  %1200 = icmp eq i32 %1199, 0
  %1201 = fcmp fast une float %1196, 1.000000e+00
  %1202 = and i1 %1201, %1200
  br i1 %1202, label %1203, label %1222

; <label>:1203                                    ; preds = %1194
  %1204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  %1206 = extractvalue %dx.types.ResRet.f32 %1204, 1
  %1207 = extractvalue %dx.types.ResRet.f32 %1204, 2
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1210 = fmul fast float %1209, %1205
  %1211 = fmul fast float %1209, %1206
  %1212 = fmul fast float %1209, %1207
  %1213 = fcmp fast ogt float %1185, 0x3FEFFF2E40000000
  %1214 = fsub fast float 1.000000e+00, %1196
  %1215 = fsub fast float 1.000000e+00, %1185
  %1216 = fdiv fast float %1214, %1215
  %1217 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  %1218 = select i1 %1213, float 0.000000e+00, float %1217
  %1219 = fmul fast float %1210, %1218
  %1220 = fmul fast float %1211, %1218
  %1221 = fmul fast float %1212, %1218
  br label %1222

; <label>:1222                                    ; preds = %1203, %1194
  %1223 = phi float [ 0.000000e+00, %1194 ], [ %1219, %1203 ]
  %1224 = phi float [ 0.000000e+00, %1194 ], [ %1220, %1203 ]
  %1225 = phi float [ 0.000000e+00, %1194 ], [ %1221, %1203 ]
  %1226 = fmul fast float %1223, %717
  %1227 = fmul fast float %1224, %717
  %1228 = fmul fast float %1225, %717
  %1229 = fmul fast float %1196, %957
  %1230 = call float @dx.op.dot3.f32(i32 55, float %1196, float %1196, float %1196, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1231 = call float @dx.op.dot3.f32(i32 55, float %1226, float %1227, float %1228, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1232 = select i1 %108, float %1230, float %1196
  %1233 = select i1 %108, float 1.000000e+00, float %1196
  %1234 = select i1 %108, float %1231, float %1226
  %1235 = select i1 %108, float 0.000000e+00, float %1227
  %1236 = select i1 %108, float 0.000000e+00, float %1228
  %1237 = fmul fast float %1232, %969
  %1238 = fmul fast float %1232, %970
  %1239 = fmul fast float %1233, %971
  %1240 = fadd fast float %1237, %1234
  %1241 = fadd fast float %1238, %1235
  %1242 = fadd fast float %1236, %1239
  %1243 = fmul fast float %1232, %972
  %1244 = fmul fast float %1232, %973
  %1245 = fmul fast float %1233, %974
  br label %1246

; <label>:1246                                    ; preds = %1222, %978, %945, %936
  %1247 = phi float [ %938, %936 ], [ %969, %945 ], [ %1240, %1222 ], [ %969, %978 ]
  %1248 = phi float [ %939, %936 ], [ %970, %945 ], [ %1241, %1222 ], [ %970, %978 ]
  %1249 = phi float [ %940, %936 ], [ %971, %945 ], [ %1242, %1222 ], [ %971, %978 ]
  %1250 = phi float [ %941, %936 ], [ %972, %945 ], [ %1243, %1222 ], [ %972, %978 ]
  %1251 = phi float [ %942, %936 ], [ %973, %945 ], [ %1244, %1222 ], [ %973, %978 ]
  %1252 = phi float [ %943, %936 ], [ %974, %945 ], [ %1245, %1222 ], [ %974, %978 ]
  %1253 = phi float [ %944, %936 ], [ %957, %945 ], [ %1229, %1222 ], [ %957, %978 ]
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 2
  %1256 = extractvalue %dx.types.CBufRet.f32 %1254, 3
  %1257 = fmul fast float %1255, %50
  %1258 = fmul fast float %1256, %51
  %1259 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  %1260 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  %1261 = select i1 %694, i32 2, i32 0
  %1262 = or i32 %1261, 1
  %1263 = uitofp i32 %1262 to float
  %1264 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1259, float %1260, float %1263, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.ResRet.f32 %1264, 1
  %1267 = extractvalue %dx.types.ResRet.f32 %1264, 2
  %1268 = extractvalue %dx.types.ResRet.f32 %1264, 3
  %1269 = add nuw nsw i32 %1261, 2
  %1270 = uitofp i32 %1269 to float
  %1271 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1259, float %1260, float %1270, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.ResRet.f32 %1271, 1
  %1274 = extractvalue %dx.types.ResRet.f32 %1271, 2
  %1275 = extractvalue %dx.types.ResRet.f32 %1271, 3
  %1276 = call float @dx.op.binary.f32(i32 35, float %1266, float %1267)  ; FMax(a,b)
  %1277 = call float @dx.op.binary.f32(i32 35, float %1265, float %1276)  ; FMax(a,b)
  %1278 = call float @dx.op.binary.f32(i32 35, float %1277, float %1268)  ; FMax(a,b)
  %1279 = call float @dx.op.binary.f32(i32 36, float %1273, float %1274)  ; FMin(a,b)
  %1280 = call float @dx.op.binary.f32(i32 36, float %1272, float %1279)  ; FMin(a,b)
  %1281 = call float @dx.op.binary.f32(i32 36, float %1280, float %1275)  ; FMin(a,b)
  %1282 = fmul fast float %1278, 2.550000e+02
  %1283 = fadd fast float %1282, 0x3F70101020000000
  %1284 = fptoui float %1283 to i32
  %1285 = fmul fast float %1281, 2.550000e+02
  %1286 = fadd fast float %1285, 0x3F70101020000000
  %1287 = fptoui float %1286 to i32
  %1288 = icmp ult i32 %1284, %1287
  br i1 %1288, label %1289, label %1341

; <label>:1289                                    ; preds = %1246
  %1290 = fcmp fast ogt float %44, 9.843750e-01
  %1291 = fadd fast float %937, -4.000000e+00
  %1292 = select i1 %1290, float -4.000000e+00, float %1291
  %1293 = call float @dx.op.binary.f32(i32 35, float %1292, float 0.000000e+00)  ; FMax(a,b)
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = fadd fast float %1295, %1293
  %1297 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1298 = fmul fast float %1296, %1297
  %1299 = call float @dx.op.unary.f32(i32 23, float %1298)  ; Log(value)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1294, 3
  %1301 = fmul fast float %1300, %1299
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 2
  %1304 = fmul fast float %1301, %1303
  %1305 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1306 = uitofp i32 %1284 to float
  %1307 = uitofp i32 %1287 to float
  %1308 = fadd fast float %1306, 5.000000e-01
  %1309 = fadd fast float %1307, 5.000000e-01
  %1310 = fmul fast float %1303, %1308
  %1311 = fmul fast float %1303, %1309
  %1312 = fadd fast float %1310, 0x3F0FFB4800000000
  %1313 = fadd fast float %1311, 0xBF0FFB4800000000
  %1314 = call float @dx.op.binary.f32(i32 35, float %1305, float %1312)  ; FMax(a,b)
  %1315 = call float @dx.op.binary.f32(i32 36, float %1314, float %1313)  ; FMin(a,b)
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 1
  %1318 = extractvalue %dx.types.CBufRet.f32 %1316, 2
  %1319 = extractvalue %dx.types.CBufRet.f32 %1316, 0
  %1320 = select i1 %694, float %1319, float 0.000000e+00
  %1321 = fmul fast float %1317, %1315
  %1322 = fadd fast float %1320, %1321
  %1323 = fadd fast float %1320, %1318
  %1324 = fsub fast float %1317, %1318
  %1325 = fadd fast float %1324, %1320
  %1326 = call float @dx.op.binary.f32(i32 35, float %1322, float %1323)  ; FMax(a,b)
  %1327 = call float @dx.op.binary.f32(i32 36, float %1326, float %1325)  ; FMin(a,b)
  %1328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1259, float %1260, float %1327, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1329 = extractvalue %dx.types.ResRet.f32 %1328, 0
  %1330 = extractvalue %dx.types.ResRet.f32 %1328, 1
  %1331 = extractvalue %dx.types.ResRet.f32 %1328, 2
  %1332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1259, float %1260, float %1327, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1333 = extractvalue %dx.types.ResRet.f32 %1332, 0
  %1334 = extractvalue %dx.types.ResRet.f32 %1332, 1
  %1335 = extractvalue %dx.types.ResRet.f32 %1332, 2
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 1
  %1338 = fmul fast float %1337, %1333
  %1339 = fmul fast float %1337, %1334
  %1340 = fmul fast float %1337, %1335
  br label %1341

; <label>:1341                                    ; preds = %1289, %1246
  %1342 = phi float [ %1329, %1289 ], [ 1.000000e+00, %1246 ]
  %1343 = phi float [ %1330, %1289 ], [ 1.000000e+00, %1246 ]
  %1344 = phi float [ %1331, %1289 ], [ 1.000000e+00, %1246 ]
  %1345 = phi float [ %1338, %1289 ], [ 0.000000e+00, %1246 ]
  %1346 = phi float [ %1339, %1289 ], [ 0.000000e+00, %1246 ]
  %1347 = phi float [ %1340, %1289 ], [ 0.000000e+00, %1246 ]
  %1348 = fmul fast float %1345, %717
  %1349 = fmul fast float %1346, %717
  %1350 = fmul fast float %1347, %717
  %1351 = fmul fast float %1342, %1253
  %1352 = call float @dx.op.dot3.f32(i32 55, float %1342, float %1343, float %1344, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1353 = call float @dx.op.dot3.f32(i32 55, float %1348, float %1349, float %1350, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1354 = select i1 %108, float %1352, float %1342
  %1355 = select i1 %108, float %1352, float %1343
  %1356 = select i1 %108, float 1.000000e+00, float %1344
  %1357 = select i1 %108, float %1353, float %1348
  %1358 = select i1 %108, float 0.000000e+00, float %1349
  %1359 = select i1 %108, float 0.000000e+00, float %1350
  %1360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.i32 %1360, 3
  %1362 = and i32 %1361, 3
  %1363 = icmp ne i32 %1362, 0
  %1364 = and i32 %1361, 4
  %1365 = icmp ne i32 %1364, 0
  %1366 = and i1 %1363, %1365
  %1367 = and i1 %108, %1366
  br i1 %1367, label %1368, label %1374

; <label>:1368                                    ; preds = %1341
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 1
  %1371 = fadd fast float %1351, -1.000000e+00
  %1372 = fmul fast float %1370, %1371
  %1373 = fadd fast float %1372, 1.000000e+00
  br label %1374

; <label>:1374                                    ; preds = %1368, %1341
  %1375 = phi float [ %1373, %1368 ], [ %1351, %1341 ]
  %1376 = fadd fast float %1250, %1247
  %1377 = fmul fast float %1354, %1376
  %1378 = fadd fast float %1377, %1357
  %1379 = fadd fast float %1251, %1248
  %1380 = fmul fast float %1355, %1379
  %1381 = fadd fast float %1380, %1358
  %1382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1382, 0
  br i1 %108, label %1384, label %1405

; <label>:1384                                    ; preds = %1374
  %1385 = fadd fast float %1378, %1381
  %1386 = fmul fast float %1383, %1385
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 3
  %1389 = extractvalue %dx.types.CBufRet.f32 %721, 1
  %1390 = fsub fast float %724, %1389
  %1391 = extractvalue %dx.types.CBufRet.f32 %721, 2
  %1392 = fmul fast float %1390, %1391
  %1393 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1394 = fsub fast float %1393, %1388
  %1395 = fmul fast float %1394, %1375
  %1396 = fadd fast float %1395, %1388
  %1397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.f32 %1397, 0
  %1399 = fsub fast float %1396, %1398
  %1400 = fmul fast float %1399, 1.000000e+01
  %1401 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1402 = fmul fast float %1401, %717
  %1403 = fsub fast float %717, %1402
  %1404 = fmul fast float %1403, %1396
  br label %1417

; <label>:1405                                    ; preds = %1374
  %1406 = fadd fast float %1252, %1249
  %1407 = fmul fast float %1356, %1406
  %1408 = fadd fast float %1407, %1359
  %1409 = fmul fast float %1383, %1378
  %1410 = fmul fast float %1383, %1381
  %1411 = fmul fast float %1383, %1408
  %1412 = call float @dx.op.binary.f32(i32 35, float %1410, float %1411)  ; FMax(a,b)
  %1413 = call float @dx.op.binary.f32(i32 35, float %1409, float %1412)  ; FMax(a,b)
  %1414 = call float @dx.op.binary.f32(i32 35, float %1413, float %717)  ; FMax(a,b)
  %1415 = fcmp fast ugt float %1414, 0x3F10000000000000
  br i1 %1415, label %1417, label %1416

; <label>:1416                                    ; preds = %1405
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1417

; <label>:1417                                    ; preds = %1416, %1405, %1384
  %1418 = phi float [ %1386, %1384 ], [ %1409, %1416 ], [ %1409, %1405 ]
  %1419 = phi float [ %1404, %1384 ], [ %1410, %1416 ], [ %1410, %1405 ]
  %1420 = phi float [ %1403, %1384 ], [ %1411, %1416 ], [ %1411, %1405 ]
  %1421 = phi float [ %1403, %1384 ], [ %717, %1416 ], [ %717, %1405 ]
  %1422 = fadd fast float %517, 0x3FE3C6EF40000000
  %1423 = call float @dx.op.unary.f32(i32 22, float %1422)  ; Frc(value)
  %1424 = call float @dx.op.unary.f32(i32 23, float %1418)  ; Log(value)
  %1425 = fadd fast float %1424, -7.000000e+00
  %1426 = call float @dx.op.unary.f32(i32 21, float %1425)  ; Exp(value)
  %1427 = fmul fast float %1423, 2.000000e+00
  %1428 = fadd fast float %1427, -1.000000e+00
  %1429 = fmul fast float %1426, %1428
  %1430 = fcmp fast ogt float %1418, 0.000000e+00
  %1431 = select i1 %1430, float %1429, float 0.000000e+00
  %1432 = fadd fast float %1431, %1418
  %1433 = fadd fast float %517, 0x3FF3C6EF40000000
  %1434 = call float @dx.op.unary.f32(i32 22, float %1433)  ; Frc(value)
  %1435 = call float @dx.op.unary.f32(i32 23, float %1419)  ; Log(value)
  %1436 = fadd fast float %1435, -7.000000e+00
  %1437 = call float @dx.op.unary.f32(i32 21, float %1436)  ; Exp(value)
  %1438 = fmul fast float %1434, 2.000000e+00
  %1439 = fadd fast float %1438, -1.000000e+00
  %1440 = fmul fast float %1437, %1439
  %1441 = fcmp fast ogt float %1419, 0.000000e+00
  %1442 = select i1 %1441, float %1440, float 0.000000e+00
  %1443 = fadd fast float %1442, %1419
  %1444 = fadd fast float %517, 0x3FFDAA66E0000000
  %1445 = call float @dx.op.unary.f32(i32 22, float %1444)  ; Frc(value)
  %1446 = call float @dx.op.unary.f32(i32 23, float %1420)  ; Log(value)
  %1447 = fadd fast float %1446, -6.000000e+00
  %1448 = call float @dx.op.unary.f32(i32 21, float %1447)  ; Exp(value)
  %1449 = fmul fast float %1445, 2.000000e+00
  %1450 = fadd fast float %1449, -1.000000e+00
  %1451 = fmul fast float %1448, %1450
  %1452 = fcmp fast ogt float %1420, 0.000000e+00
  %1453 = select i1 %1452, float %1451, float 0.000000e+00
  %1454 = fadd fast float %1453, %1420
  %1455 = select i1 %108, float %1419, float %1443
  %1456 = select i1 %108, float %1420, float %1454
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1457 = call float @dx.op.binary.f32(i32 36, float %1432, float 3.225500e+04)  ; FMin(a,b)
  %1458 = call float @dx.op.binary.f32(i32 36, float %1455, float 3.225500e+04)  ; FMin(a,b)
  %1459 = call float @dx.op.binary.f32(i32 36, float %1456, float 3.225500e+04)  ; FMin(a,b)
  %1460 = call float @dx.op.binary.f32(i32 36, float %1421, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1457)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1458)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1459)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1460)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1421)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1421)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1421)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1421)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!35}
!dx.entryPoints = !{!36}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !27, !30}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !26}
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
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !21}
!21 = !{i32 0, i32 14}
!22 = !{i32 13, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!23 = !{i32 14, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!24 = !{i32 15, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !7}
!25 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!26 = !{i32 17, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!27 = !{!28, !29}
!28 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!29 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!30 = !{!31, !32, !33, !34}
!31 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!32 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!33 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!34 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
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

