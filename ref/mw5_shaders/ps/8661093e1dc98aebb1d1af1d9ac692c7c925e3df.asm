;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
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
; shader hash: a230aa8c2ebda4a9dc98989360db4b19
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
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
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = fmul fast float %52, %45
  %54 = fmul fast float %52, %46
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 3
  %58 = fmul fast float %53, 2.000000e+00
  %59 = fmul fast float %58, %56
  %60 = fmul fast float %54, 2.000000e+00
  %61 = fmul fast float %60, %57
  %62 = fsub fast float 1.000000e+00, %59
  %63 = fsub fast float 1.000000e+00, %61
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %68 = fmul fast float %62, %65
  %69 = fmul fast float %62, %66
  %70 = fmul fast float %62, %67
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = fmul fast float %63, %72
  %76 = fmul fast float %63, %73
  %77 = fmul fast float %63, %74
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = extractvalue %dx.types.CBufRet.f32 %78, 1
  %81 = extractvalue %dx.types.CBufRet.f32 %78, 2
  %82 = fadd fast float %75, %79
  %83 = fadd fast float %82, %68
  %84 = fadd fast float %76, %80
  %85 = fadd fast float %84, %69
  %86 = fadd fast float %77, %81
  %87 = fadd fast float %86, %70
  %88 = fmul fast float %83, %48
  %89 = fmul fast float %85, %48
  %90 = fmul fast float %87, %48
  %91 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %100, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = fsub fast float 1.000000e+00, %102
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = fcmp fast olt float %103, %105
  br label %110

; <label>:107                                     ; preds = %0
  %108 = icmp eq i32 %95, 0
  %109 = and i1 %94, %108
  br label %110

; <label>:110                                     ; preds = %107, %98
  %111 = phi i1 [ %106, %98 ], [ %109, %107 ]
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %113, %53
  %116 = fmul fast float %114, %54
  %117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  %119 = and i32 %118, 114688
  %120 = icmp ne i32 %119, 0
  %121 = select i1 %120, float %115, float 0.000000e+00
  %122 = select i1 %120, float %116, float 0.000000e+00
  %123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %121, float %122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = fmul fast float %124, 2.550000e+02
  %126 = fptoui float %125 to i32
  %127 = select i1 %120, i32 %126, i32 0
  %128 = mul i32 %23, 208
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
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %168 = phi float [ %39, %140 ], [ %147, %153 ], [ %166, %161 ], [ %147, %159 ]
  %169 = phi float [ %40, %140 ], [ %158, %153 ], [ %148, %161 ], [ %148, %159 ]
  %170 = add i32 %24, 72
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = extractvalue %dx.types.ResRet.i32 %171, 1
  %174 = bitcast i32 %172 to float
  %175 = bitcast i32 %173 to float
  %176 = fmul fast float %174, %39
  %177 = fmul fast float %175, %40
  %178 = call float @dx.op.unary.f32(i32 22, float %176)  ; Frc(value)
  %179 = call float @dx.op.unary.f32(i32 22, float %177)  ; Frc(value)
  %180 = and i32 %131, 16
  %181 = icmp ne i32 %180, 0
  %182 = select i1 %181, float 1.000000e+00, float %44
  %183 = icmp eq i32 %180, 0
  br i1 %183, label %203, label %184, !dx.controlflow.hints !60

; <label>:184                                     ; preds = %167
  %185 = add i32 %128, 64
  %186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fadd fast float %187, 1.000000e+00
  %189 = fmul fast float %188, %44
  %190 = fsub fast float %189, %187
  %191 = fsub fast float %188, %190
  %192 = call float @dx.op.unary.f32(i32 7, float %191)  ; Saturate(value)
  %193 = fsub fast float 1.000000e+00, %189
  %194 = call float @dx.op.unary.f32(i32 7, float %193)  ; Saturate(value)
  %195 = fsub fast float %192, %194
  %196 = fsub fast float %182, %194
  %197 = fdiv fast float %196, %195
  %198 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %199 = fmul fast float %198, 2.000000e+00
  %200 = fsub fast float 3.000000e+00, %199
  %201 = fmul fast float %198, %198
  %202 = fmul fast float %201, %200
  br label %203

; <label>:203                                     ; preds = %184, %167
  %204 = phi float [ %202, %184 ], [ %182, %167 ]
  %205 = fcmp fast ogt float %204, 0.000000e+00
  br i1 %205, label %207, label %206

; <label>:206                                     ; preds = %203
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %207

; <label>:207                                     ; preds = %206, %203
  %208 = call float @dx.op.unary.f32(i32 7, float %204)  ; Saturate(value)
  %209 = fmul fast float %53, 5.000000e-01
  %210 = fmul fast float %54, 5.000000e-01
  %211 = fptosi float %209 to i32
  %212 = fptosi float %210 to i32
  %213 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = lshr i32 %214, 18
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F4C00EBA0000000
  %218 = call float @dx.op.unary.f32(i32 21, float %217)  ; Exp(value)
  %219 = fadd fast float %218, -1.000000e+00
  %220 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %221 = extractvalue %dx.types.Dimensions %220, 0
  %222 = sitofp i32 %221 to float
  %223 = extractvalue %dx.types.Dimensions %220, 1
  %224 = sitofp i32 %223 to float
  %225 = fcmp fast oge float %209, %222
  %226 = fcmp fast oge float %210, %224
  %227 = or i1 %225, %226
  %228 = select i1 %227, float 0x4197782600000000, float %219
  %229 = fsub fast float %228, %48
  %230 = fcmp fast ogt float %229, 0.000000e+00
  %231 = and i32 %127, -2
  %232 = icmp eq i32 %231, 2
  %233 = and i1 %232, %230
  %234 = xor i1 %230, true
  %235 = icmp eq i32 %127, 1
  %236 = and i1 %235, %234
  %237 = or i1 %233, %236
  %238 = and i32 %131, 262144
  %239 = icmp ne i32 %238, 0
  %240 = and i1 %239, %237
  %241 = xor i1 %237, true
  %242 = and i32 %131, 131072
  %243 = icmp ne i32 %242, 0
  %244 = and i1 %243, %241
  %245 = or i1 %240, %244
  br i1 %245, label %246, label %247

; <label>:246                                     ; preds = %207
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %247

; <label>:247                                     ; preds = %246, %207
  %248 = and i32 %131, 32
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %526, label %250, !dx.controlflow.hints !61

; <label>:250                                     ; preds = %247
  %251 = add i32 %128, 80
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = extractvalue %dx.types.ResRet.f32 %252, 2
  %256 = extractvalue %dx.types.ResRet.f32 %252, 3
  %257 = add i32 %128, 96
  %258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = extractvalue %dx.types.ResRet.f32 %258, 1
  %261 = extractvalue %dx.types.ResRet.f32 %258, 2
  %262 = add i32 %128, 112
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = extractvalue %dx.types.ResRet.f32 %263, 3
  %268 = add i32 %128, 128
  %269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = extractvalue %dx.types.ResRet.f32 %269, 1
  %272 = extractvalue %dx.types.ResRet.f32 %269, 2
  %273 = extractvalue %dx.types.ResRet.f32 %269, 3
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 4096
  %277 = icmp ne i32 %276, 0
  %278 = fcmp fast une float %261, 0.000000e+00
  %279 = and i32 %275, 64
  %280 = icmp ne i32 %279, 0
  %281 = and i32 %275, 128
  %282 = icmp eq i32 %281, 0
  %283 = and i32 %275, 2048
  %284 = icmp eq i32 %283, 0
  %285 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %286 = extractvalue %dx.types.Dimensions %285, 0
  %287 = sitofp i32 %286 to float
  %288 = extractvalue %dx.types.Dimensions %285, 1
  %289 = sitofp i32 %288 to float
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 2
  %292 = extractvalue %dx.types.CBufRet.f32 %290, 3
  %293 = fmul fast float %291, %53
  %294 = fmul fast float %292, %54
  %295 = fmul fast float %293, %287
  %296 = fmul fast float %294, %289
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %299 = fsub fast float -0.000000e+00, %298
  %300 = fptoui float %299 to i32
  %301 = fptoui float %295 to i32
  %302 = fptoui float %296 to i32
  %303 = and i32 %300, 31
  %304 = lshr i32 %301, %303
  %305 = lshr i32 %302, %303
  %306 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %300, i32 %304, i32 %305, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = fcmp fast ogt float %307, -1.000000e+00
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %311 = select i1 %308, float %310, float 1.000000e+00
  %312 = fadd fast float %307, 1.000000e+00
  %313 = fmul fast float %311, %312
  %314 = call float @dx.op.unary.f32(i32 6, float %313)  ; FAbs(value)
  %315 = extractvalue %dx.types.CBufRet.f32 %309, 3
  %316 = fcmp fast oge float %314, %315
  %317 = select i1 %316, float 0x4197782600000000, float %314
  br i1 %284, label %407, label %318, !dx.controlflow.hints !62

; <label>:318                                     ; preds = %250
  %319 = fmul fast float %58, %291
  %320 = fmul fast float %60, %292
  %321 = fsub fast float 1.000000e+00, %319
  %322 = fsub fast float 1.000000e+00, %320
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 0
  %325 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %326 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %327 = fmul fast float %321, %324
  %328 = fmul fast float %321, %325
  %329 = fmul fast float %321, %326
  %330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %331 = extractvalue %dx.types.CBufRet.f32 %330, 0
  %332 = extractvalue %dx.types.CBufRet.f32 %330, 1
  %333 = extractvalue %dx.types.CBufRet.f32 %330, 2
  %334 = fmul fast float %322, %331
  %335 = fmul fast float %322, %332
  %336 = fmul fast float %322, %333
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 0
  %339 = extractvalue %dx.types.CBufRet.f32 %337, 1
  %340 = extractvalue %dx.types.CBufRet.f32 %337, 2
  %341 = fadd fast float %334, %338
  %342 = fadd fast float %341, %327
  %343 = fadd fast float %335, %339
  %344 = fadd fast float %343, %328
  %345 = fadd fast float %336, %340
  %346 = fadd fast float %345, %329
  %347 = fmul fast float %342, %317
  %348 = fmul fast float %344, %317
  %349 = fmul fast float %346, %317
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %354 = fsub fast float %351, %25
  %355 = fadd fast float %354, %347
  %356 = fsub fast float %352, %26
  %357 = fadd fast float %356, %348
  %358 = fsub fast float %353, %27
  %359 = fadd fast float %358, %349
  %360 = fmul fast float %28, %28
  %361 = call float @dx.op.dot3.f32(i32 55, float %355, float %357, float %359, float %355, float %357, float %359)  ; Dot3(ax,ay,az,bx,by,bz)
  %362 = fsub fast float %360, %361
  %363 = fmul fast float %260, %360
  %364 = fmul fast float %259, %360
  %365 = fcmp fast olt float %362, %363
  %366 = fcmp fast ogt float %362, %364
  %367 = or i1 %365, %366
  %368 = select i1 %367, float 0.000000e+00, float %362
  %369 = fsub fast float %259, %260
  %370 = fmul fast float %369, %360
  %371 = fsub fast float %368, %363
  %372 = fdiv fast float %371, %370
  %373 = call float @dx.op.unary.f32(i32 7, float %372)  ; Saturate(value)
  %374 = fmul fast float %373, 2.000000e+00
  %375 = fsub fast float 3.000000e+00, %374
  %376 = fmul fast float %373, %373
  %377 = fmul fast float %376, %375
  %378 = fmul fast float %264, %41
  %379 = fmul fast float %265, %42
  %380 = fmul fast float %266, %43
  %381 = fsub fast float %378, %270
  %382 = fsub fast float %379, %271
  %383 = fsub fast float %380, %272
  %384 = fsub fast float %267, %273
  %385 = fmul fast float %377, %381
  %386 = fmul fast float %377, %382
  %387 = fmul fast float %377, %383
  %388 = fmul fast float %377, %384
  %389 = fadd fast float %385, %270
  %390 = fadd fast float %386, %271
  %391 = fadd fast float %387, %272
  %392 = fadd fast float %388, %273
  %393 = fmul fast float %264, %29
  %394 = fmul fast float %265, %30
  %395 = fmul fast float %266, %31
  %396 = fsub fast float %393, %270
  %397 = fsub fast float %394, %271
  %398 = fsub fast float %395, %272
  %399 = fmul fast float %377, %396
  %400 = fmul fast float %377, %397
  %401 = fmul fast float %377, %398
  %402 = fadd fast float %399, %270
  %403 = fadd fast float %400, %271
  %404 = fadd fast float %401, %272
  %405 = fmul fast float %253, %253
  %406 = fmul fast float %405, %368
  br label %514

; <label>:407                                     ; preds = %250
  %408 = and i32 %275, 256
  %409 = icmp eq i32 %408, 0
  %410 = fsub fast float %317, %48
  br i1 %409, label %471, label %411

; <label>:411                                     ; preds = %407
  %412 = fadd fast float %259, %48
  %413 = fcmp fast olt float %317, %48
  %414 = fcmp fast ogt float %317, %412
  %415 = or i1 %413, %414
  %416 = select i1 %415, float 0.000000e+00, float %410
  %417 = call float @dx.op.unary.f32(i32 83, float %317)  ; DerivCoarseX(value)
  %418 = call float @dx.op.unary.f32(i32 84, float %317)  ; DerivCoarseY(value)
  %419 = fmul fast float %417, %417
  %420 = fmul fast float %418, %418
  %421 = fadd fast float %420, %419
  %422 = call float @dx.op.unary.f32(i32 24, float %421)  ; Sqrt(value)
  %423 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %424 = fmul fast float %423, %422
  %425 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %426 = fmul fast float %425, %260
  %427 = fdiv fast float %410, %426
  %428 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %429 = fmul fast float %428, 2.000000e+00
  %430 = fsub fast float 3.000000e+00, %429
  %431 = fmul fast float %428, %428
  %432 = fmul fast float %431, %430
  %433 = fsub fast float %317, %412
  %434 = fadd fast float %433, %426
  %435 = fdiv fast float %434, %426
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = fmul fast float %436, 2.000000e+00
  %438 = fsub fast float 3.000000e+00, %437
  %439 = fmul fast float %436, %436
  %440 = fmul fast float %439, %438
  %441 = fsub fast float %432, %440
  %442 = fmul fast float %264, %41
  %443 = fmul fast float %265, %42
  %444 = fmul fast float %266, %43
  %445 = fsub fast float %442, %270
  %446 = fsub fast float %443, %271
  %447 = fsub fast float %444, %272
  %448 = fsub fast float %267, %273
  %449 = fmul fast float %441, %445
  %450 = fmul fast float %441, %446
  %451 = fmul fast float %441, %447
  %452 = fmul fast float %441, %448
  %453 = fadd fast float %449, %270
  %454 = fadd fast float %450, %271
  %455 = fadd fast float %451, %272
  %456 = fadd fast float %452, %273
  %457 = fmul fast float %264, %29
  %458 = fmul fast float %265, %30
  %459 = fmul fast float %266, %31
  %460 = fsub fast float %457, %270
  %461 = fsub fast float %458, %271
  %462 = fsub fast float %459, %272
  %463 = fmul fast float %441, %460
  %464 = fmul fast float %441, %461
  %465 = fmul fast float %441, %462
  %466 = fadd fast float %463, %270
  %467 = fadd fast float %464, %271
  %468 = fadd fast float %465, %272
  %469 = fmul fast float %416, %253
  %470 = call float @dx.op.unary.f32(i32 6, float %469)  ; FAbs(value)
  br label %514

; <label>:471                                     ; preds = %407
  br i1 %278, label %472, label %485

; <label>:472                                     ; preds = %471
  %473 = fdiv fast float 5.000000e+01, %28
  %474 = select i1 %280, float %473, float 1.000000e+00
  %475 = fmul fast float %474, %253
  %476 = fmul fast float %178, 2.000000e+00
  %477 = fmul fast float %179, 2.000000e+00
  %478 = fadd fast float %476, -1.000000e+00
  %479 = fadd fast float %477, -1.000000e+00
  %480 = call float @dx.op.dot2.f32(i32 54, float %478, float %479, float %478, float %479)  ; Dot2(ax,ay,bx,by)
  %481 = fmul fast float %261, %28
  %482 = fmul fast float %481, %480
  %483 = fsub fast float %410, %482
  %484 = fmul fast float %475, %483
  br label %514

; <label>:485                                     ; preds = %471
  br i1 %282, label %506, label %486

; <label>:486                                     ; preds = %485
  %487 = fmul fast float %28, 0x3F947AE140000000
  %488 = select i1 %280, float %487, float 1.000000e+00
  %489 = fdiv fast float 1.000000e+00, %488
  %490 = fmul fast float %488, %254
  %491 = fmul fast float %488, %255
  %492 = fmul fast float %489, %256
  %493 = call float @dx.op.unary.f32(i32 6, float %410)  ; FAbs(value)
  %494 = fcmp fast olt float %493, %490
  br i1 %494, label %495, label %499, !dx.controlflow.hints !63

; <label>:495                                     ; preds = %486
  %496 = fmul fast float %489, %253
  %497 = fmul fast float %496, %493
  %498 = call float @dx.op.unary.f32(i32 6, float %497)  ; FAbs(value)
  br label %514

; <label>:499                                     ; preds = %486
  %500 = fcmp fast ogt float %493, %491
  br i1 %500, label %501, label %514

; <label>:501                                     ; preds = %499
  %502 = fsub fast float %493, %491
  %503 = fmul fast float %492, %502
  %504 = call float @dx.op.unary.f32(i32 6, float %503)  ; FAbs(value)
  %505 = fsub fast float 1.000000e+00, %504
  br label %514

; <label>:506                                     ; preds = %485
  %507 = fdiv fast float 5.000000e+01, %28
  %508 = select i1 %280, float %507, float 1.000000e+00
  %509 = fmul fast float %508, %253
  %510 = call float @dx.op.unary.f32(i32 6, float %229)  ; FAbs(value)
  %511 = select i1 %277, float %510, float 0x47EFFFFFE0000000
  %512 = call float @dx.op.binary.f32(i32 36, float %410, float %511)  ; FMin(a,b)
  %513 = fmul fast float %509, %512
  br label %514

; <label>:514                                     ; preds = %506, %501, %499, %495, %472, %411, %318
  %515 = phi float [ %406, %318 ], [ %470, %411 ], [ %484, %472 ], [ %513, %506 ], [ %498, %495 ], [ %505, %501 ], [ %493, %499 ]
  %516 = phi float [ %402, %318 ], [ %466, %411 ], [ %29, %472 ], [ %29, %506 ], [ %29, %495 ], [ %29, %501 ], [ %29, %499 ]
  %517 = phi float [ %403, %318 ], [ %467, %411 ], [ %30, %472 ], [ %30, %506 ], [ %30, %495 ], [ %30, %501 ], [ %30, %499 ]
  %518 = phi float [ %404, %318 ], [ %468, %411 ], [ %31, %472 ], [ %31, %506 ], [ %31, %495 ], [ %31, %501 ], [ %31, %499 ]
  %519 = phi float [ %389, %318 ], [ %453, %411 ], [ %41, %472 ], [ %41, %506 ], [ %41, %495 ], [ %41, %501 ], [ %41, %499 ]
  %520 = phi float [ %390, %318 ], [ %454, %411 ], [ %42, %472 ], [ %42, %506 ], [ %42, %495 ], [ %42, %501 ], [ %42, %499 ]
  %521 = phi float [ %391, %318 ], [ %455, %411 ], [ %43, %472 ], [ %43, %506 ], [ %43, %495 ], [ %43, %501 ], [ %43, %499 ]
  %522 = phi float [ %392, %318 ], [ %456, %411 ], [ 1.000000e+00, %472 ], [ 1.000000e+00, %506 ], [ 1.000000e+00, %495 ], [ 1.000000e+00, %501 ], [ 1.000000e+00, %499 ]
  %523 = call float @dx.op.unary.f32(i32 7, float %515)  ; Saturate(value)
  %524 = fmul fast float %522, %208
  %525 = fmul fast float %524, %523
  br label %526

; <label>:526                                     ; preds = %514, %247
  %527 = phi float [ %519, %514 ], [ %41, %247 ]
  %528 = phi float [ %520, %514 ], [ %42, %247 ]
  %529 = phi float [ %521, %514 ], [ %43, %247 ]
  %530 = phi float [ %525, %514 ], [ %208, %247 ]
  %531 = phi float [ %516, %514 ], [ %29, %247 ]
  %532 = phi float [ %517, %514 ], [ %30, %247 ]
  %533 = phi float [ %518, %514 ], [ %31, %247 ]
  %534 = fmul fast float %531, %32
  %535 = fmul fast float %532, %32
  %536 = fmul fast float %533, %32
  %537 = fmul fast float %531, %38
  %538 = fmul fast float %532, %38
  %539 = fmul fast float %533, %38
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %542 = fptosi float %48 to i32
  %543 = sitofp i32 %542 to float
  %544 = fadd fast float %541, %543
  %545 = fmul fast float %544, 0x3FE3C6EF40000000
  %546 = frem fast float %53, 2.560000e+02
  %547 = frem fast float %54, 2.560000e+02
  %548 = fptoui float %546 to i32
  %549 = fptoui float %547 to i32
  %550 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %548, i32 %549, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = fadd fast float %551, %545
  %553 = call float @dx.op.unary.f32(i32 22, float %552)  ; Frc(value)
  %554 = and i32 %131, 1
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %615, label %556, !dx.controlflow.hints !64

; <label>:556                                     ; preds = %526
  %557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.f32 %557, 2
  %559 = extractvalue %dx.types.ResRet.f32 %557, 3
  %560 = add i32 %128, 16
  %561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  %563 = extractvalue %dx.types.ResRet.f32 %561, 1
  %564 = extractvalue %dx.types.ResRet.f32 %561, 2
  %565 = add i32 %128, 32
  %566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = extractvalue %dx.types.ResRet.f32 %566, 1
  %569 = extractvalue %dx.types.ResRet.f32 %566, 2
  %570 = and i32 %131, 2
  %571 = icmp eq i32 %570, 0
  %572 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %573 = call float @dx.op.unary.f32(i32 25, float %572)  ; Rsqrt(value)
  %574 = fmul fast float %573, %35
  %575 = fmul fast float %573, %36
  %576 = fmul fast float %573, %37
  %577 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %578 = call float @dx.op.unary.f32(i32 25, float %577)  ; Rsqrt(value)
  %579 = fmul fast float %578, %88
  %580 = fmul fast float %578, %89
  %581 = fmul fast float %578, %90
  %582 = call float @dx.op.dot3.f32(i32 55, float %579, float %580, float %581, float %574, float %575, float %576)  ; Dot3(ax,ay,az,bx,by,bz)
  %583 = fmul fast float %582, %582
  %584 = fmul fast float %583, %558
  %585 = fadd fast float %584, %559
  %586 = call float @dx.op.unary.f32(i32 7, float %585)  ; Saturate(value)
  br i1 %571, label %587, label %597, !dx.controlflow.hints !65

; <label>:587                                     ; preds = %556
  %588 = extractvalue %dx.types.ResRet.f32 %557, 1
  %589 = extractvalue %dx.types.ResRet.f32 %557, 0
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 3
  %592 = fmul fast float %591, %577
  %593 = fsub fast float %589, %592
  %594 = fmul fast float %593, %588
  %595 = call float @dx.op.unary.f32(i32 7, float %594)  ; Saturate(value)
  %596 = fmul fast float %595, %586
  br label %597

; <label>:597                                     ; preds = %587, %556
  %598 = phi float [ %596, %587 ], [ %586, %556 ]
  %599 = fsub fast float %562, %567
  %600 = fsub fast float %563, %568
  %601 = fsub fast float %564, %569
  %602 = fmul fast float %598, %599
  %603 = fmul fast float %598, %600
  %604 = fmul fast float %598, %601
  %605 = fadd fast float %602, %567
  %606 = fadd fast float %603, %568
  %607 = fadd fast float %604, %569
  %608 = fmul fast float %605, %527
  %609 = fmul fast float %606, %528
  %610 = fmul fast float %607, %529
  %611 = fmul fast float %605, %534
  %612 = fmul fast float %606, %535
  %613 = fmul fast float %607, %536
  %614 = fmul fast float %598, %530
  br label %615

; <label>:615                                     ; preds = %597, %526
  %616 = phi float [ %608, %597 ], [ %527, %526 ]
  %617 = phi float [ %609, %597 ], [ %528, %526 ]
  %618 = phi float [ %610, %597 ], [ %529, %526 ]
  %619 = phi float [ %614, %597 ], [ %530, %526 ]
  %620 = phi float [ %611, %597 ], [ %534, %526 ]
  %621 = phi float [ %612, %597 ], [ %535, %526 ]
  %622 = phi float [ %613, %597 ], [ %536, %526 ]
  %623 = add i32 %24, 104
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = add i32 %625, 0
  %627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %626, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %628 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %627, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %629 = extractvalue %dx.types.ResRet.f32 %628, 0
  %630 = extractvalue %dx.types.ResRet.f32 %628, 1
  %631 = extractvalue %dx.types.ResRet.f32 %628, 2
  %632 = add i32 %24, 56
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 255
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, 0x3F70101020000000
  %638 = lshr i32 %634, 8
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, 0x3F70101020000000
  %642 = lshr i32 %634, 16
  %643 = and i32 %642, 255
  %644 = uitofp i32 %643 to float
  %645 = fmul fast float %644, 0x3F70101020000000
  %646 = add i32 %24, 108
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = add i32 %648, 0
  %650 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %649, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %651 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %650, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %652 = extractvalue %dx.types.ResRet.f32 %651, 0
  %653 = extractvalue %dx.types.ResRet.f32 %651, 1
  %654 = extractvalue %dx.types.ResRet.f32 %651, 2
  %655 = add i32 %24, 44
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = shl i32 %657, 4
  %659 = and i32 %658, 32752
  %660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %659)  ; LegacyF16ToF32(value)
  %661 = lshr i32 %657, 7
  %662 = and i32 %661, 32752
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = lshr i32 %657, 22
  %665 = shl nuw nsw i32 %664, 5
  %666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %665)  ; LegacyF16ToF32(value)
  %667 = fmul fast float %660, %652
  %668 = fmul fast float %663, %653
  %669 = fmul fast float %666, %654
  %670 = add i32 %24, 48
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %670, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = lshr i32 %672, 22
  %674 = shl nuw nsw i32 %673, 5
  %675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %674)  ; LegacyF16ToF32(value)
  %676 = fmul fast float %675, %667
  %677 = select i1 %111, float %676, float %667
  %678 = add i32 %24, 40
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 255
  %682 = uitofp i32 %681 to float
  %683 = fmul fast float %682, 0x3F70101020000000
  %684 = fmul fast float %683, %683
  %685 = add i32 %24, 112
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %685, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = add i32 %687, 0
  %689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %688, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %690 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %689, %dx.types.Handle %50, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %691 = extractvalue %dx.types.ResRet.f32 %690, 0
  %692 = fmul fast float %684, %691
  %693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = extractvalue %dx.types.ResRet.f32 %693, 1
  %696 = extractvalue %dx.types.ResRet.f32 %693, 2
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 1
  %699 = fmul fast float %698, %694
  %700 = fmul fast float %698, %695
  %701 = fmul fast float %698, %696
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 0
  %704 = fmul fast float %629, %616
  %705 = fmul fast float %637, %637
  %706 = fmul fast float %705, %704
  %707 = fmul fast float %706, %703
  %708 = fmul fast float %630, %617
  %709 = fmul fast float %641, %641
  %710 = fmul fast float %709, %708
  %711 = fmul fast float %710, %703
  %712 = fmul fast float %631, %618
  %713 = fmul fast float %645, %645
  %714 = fmul fast float %713, %712
  %715 = fmul fast float %714, %703
  %716 = fmul fast float %677, %620
  %717 = fmul fast float %668, %621
  %718 = fmul fast float %669, %622
  %719 = call float @dx.op.dot3.f32(i32 55, float %716, float %717, float %718, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %720 = select i1 %111, float 0.000000e+00, float %716
  %721 = select i1 %111, float %719, float %717
  %722 = select i1 %111, float 0.000000e+00, float %718
  %723 = fmul fast float %537, %677
  %724 = fmul fast float %538, %668
  %725 = fmul fast float %539, %669
  %726 = call float @dx.op.dot3.f32(i32 55, float %707, float %711, float %715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %727 = add i32 %24, 32
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 255
  %731 = uitofp i32 %730 to float
  %732 = lshr i32 %729, 8
  %733 = and i32 %732, 255
  %734 = uitofp i32 %733 to float
  %735 = fmul fast float %734, %726
  %736 = fadd fast float %735, %731
  %737 = fmul fast float %736, 0x3F70101020000000
  %738 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %739 = and i32 %131, 8192
  %740 = icmp eq i32 %739, 0
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 0
  br i1 %740, label %749, label %743, !dx.controlflow.hints !66

; <label>:743                                     ; preds = %615
  %744 = add i32 %128, 176
  %745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = fcmp fast oge float %746, 0.000000e+00
  %748 = select i1 %747, float %746, float %742
  br label %749

; <label>:749                                     ; preds = %743, %615
  %750 = phi float [ %748, %743 ], [ %742, %615 ]
  %751 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = lshr i32 %752, 18
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %754, 0x3F4C00EBA0000000
  %756 = call float @dx.op.unary.f32(i32 21, float %755)  ; Exp(value)
  %757 = fadd fast float %756, -1.000000e+00
  %758 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %759 = extractvalue %dx.types.Dimensions %758, 0
  %760 = sitofp i32 %759 to float
  %761 = extractvalue %dx.types.Dimensions %758, 1
  %762 = sitofp i32 %761 to float
  %763 = fcmp fast oge float %209, %760
  %764 = fcmp fast oge float %210, %762
  %765 = or i1 %763, %764
  %766 = select i1 %765, float 0x4197782600000000, float %757
  %767 = icmp eq i32 %127, 3
  %768 = fcmp fast ogt float %48, %766
  %769 = and i1 %235, %768
  %770 = or i1 %767, %769
  %771 = icmp eq i32 %127, 2
  %772 = fcmp fast ole float %48, %766
  %773 = and i1 %771, %772
  %774 = or i1 %773, %770
  %775 = fmul fast float %723, %699
  %776 = fmul fast float %724, %700
  %777 = fmul fast float %725, %701
  %778 = fadd fast float %775, %720
  %779 = fadd fast float %721, %776
  %780 = fadd fast float %777, %722
  %781 = fmul fast float %778, %619
  %782 = fmul fast float %779, %619
  %783 = fmul fast float %780, %619
  %784 = fmul fast float %699, %619
  %785 = fmul fast float %700, %619
  %786 = fmul fast float %701, %619
  %787 = fadd fast float %692, -1.000000e+00
  %788 = fmul fast float %787, %619
  %789 = fadd fast float %788, 1.000000e+00
  %790 = call float @dx.op.dot3.f32(i32 55, float %789, float %789, float %789, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %791 = fsub fast float 1.000000e+00, %790
  %792 = fmul fast float %750, %738
  %793 = fsub fast float 1.000000e+00, %738
  %794 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 3
  %797 = fmul fast float %796, %794
  %798 = fadd fast float %797, %792
  %799 = and i32 %131, 1048576
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %892, label %801, !dx.controlflow.hints !67

; <label>:801                                     ; preds = %749
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %804 = extractvalue %dx.types.CBufRet.f32 %802, 3
  %805 = fmul fast float %803, %53
  %806 = fmul fast float %804, %54
  %807 = call float @dx.op.unary.f32(i32 7, float %805)  ; Saturate(value)
  %808 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %809 = select i1 %774, i32 2, i32 0
  %810 = or i32 %809, 1
  %811 = uitofp i32 %810 to float
  %812 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %807, float %808, float %811, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = extractvalue %dx.types.ResRet.f32 %812, 1
  %815 = extractvalue %dx.types.ResRet.f32 %812, 2
  %816 = extractvalue %dx.types.ResRet.f32 %812, 3
  %817 = add nuw nsw i32 %809, 2
  %818 = uitofp i32 %817 to float
  %819 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %807, float %808, float %818, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = extractvalue %dx.types.ResRet.f32 %819, 1
  %822 = extractvalue %dx.types.ResRet.f32 %819, 2
  %823 = extractvalue %dx.types.ResRet.f32 %819, 3
  %824 = call float @dx.op.binary.f32(i32 35, float %814, float %815)  ; FMax(a,b)
  %825 = call float @dx.op.binary.f32(i32 35, float %813, float %824)  ; FMax(a,b)
  %826 = call float @dx.op.binary.f32(i32 35, float %825, float %816)  ; FMax(a,b)
  %827 = call float @dx.op.binary.f32(i32 36, float %821, float %822)  ; FMin(a,b)
  %828 = call float @dx.op.binary.f32(i32 36, float %820, float %827)  ; FMin(a,b)
  %829 = call float @dx.op.binary.f32(i32 36, float %828, float %823)  ; FMin(a,b)
  %830 = fmul fast float %826, 2.550000e+02
  %831 = fadd fast float %830, 0x3F70101020000000
  %832 = fptoui float %831 to i32
  %833 = fmul fast float %829, 2.550000e+02
  %834 = fadd fast float %833, 0x3F70101020000000
  %835 = fptoui float %834 to i32
  %836 = icmp ult i32 %832, %835
  br i1 %836, label %837, label %885

; <label>:837                                     ; preds = %801
  %838 = fcmp fast ogt float %47, 9.843750e-01
  %839 = fadd fast float %48, -4.000000e+00
  %840 = select i1 %838, float -4.000000e+00, float %839
  %841 = call float @dx.op.binary.f32(i32 35, float %840, float 0.000000e+00)  ; FMax(a,b)
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 0
  %844 = fadd fast float %843, %841
  %845 = extractvalue %dx.types.CBufRet.f32 %842, 2
  %846 = fmul fast float %844, %845
  %847 = call float @dx.op.unary.f32(i32 23, float %846)  ; Log(value)
  %848 = extractvalue %dx.types.CBufRet.f32 %842, 3
  %849 = fmul fast float %848, %847
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %852 = fmul fast float %849, %851
  %853 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  %854 = uitofp i32 %832 to float
  %855 = uitofp i32 %835 to float
  %856 = fadd fast float %854, 5.000000e-01
  %857 = fadd fast float %855, 5.000000e-01
  %858 = fmul fast float %851, %856
  %859 = fmul fast float %851, %857
  %860 = fadd fast float %858, 0x3F0FFB4800000000
  %861 = fadd fast float %859, 0xBF0FFB4800000000
  %862 = call float @dx.op.binary.f32(i32 35, float %853, float %860)  ; FMax(a,b)
  %863 = call float @dx.op.binary.f32(i32 36, float %862, float %861)  ; FMin(a,b)
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 2
  %867 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %868 = select i1 %774, float %867, float 0.000000e+00
  %869 = fmul fast float %865, %863
  %870 = fadd fast float %868, %869
  %871 = fadd fast float %868, %866
  %872 = fsub fast float %865, %866
  %873 = fadd fast float %872, %868
  %874 = call float @dx.op.binary.f32(i32 35, float %870, float %871)  ; FMax(a,b)
  %875 = call float @dx.op.binary.f32(i32 36, float %874, float %873)  ; FMin(a,b)
  %876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %807, float %808, float %875, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %877 = extractvalue %dx.types.ResRet.f32 %876, 0
  %878 = extractvalue %dx.types.ResRet.f32 %876, 1
  %879 = extractvalue %dx.types.ResRet.f32 %876, 2
  %880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.f32 %880, 1
  %882 = fmul fast float %881, %877
  %883 = fmul fast float %881, %878
  %884 = fmul fast float %881, %879
  br label %885

; <label>:885                                     ; preds = %837, %801
  %886 = phi float [ %882, %837 ], [ 1.000000e+00, %801 ]
  %887 = phi float [ %883, %837 ], [ 1.000000e+00, %801 ]
  %888 = phi float [ %884, %837 ], [ 1.000000e+00, %801 ]
  %889 = fmul fast float %886, %781
  %890 = fmul fast float %887, %782
  %891 = fmul fast float %888, %783
  br label %892

; <label>:892                                     ; preds = %885, %749
  %893 = phi float [ %889, %885 ], [ %781, %749 ]
  %894 = phi float [ %890, %885 ], [ %782, %749 ]
  %895 = phi float [ %891, %885 ], [ %783, %749 ]
  %896 = and i32 %131, 2097152
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %902, label %898, !dx.controlflow.hints !68

; <label>:898                                     ; preds = %892
  %899 = add i32 %128, 192
  %900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.f32 %900, 0
  br label %905

; <label>:902                                     ; preds = %892
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 3
  br label %905

; <label>:905                                     ; preds = %902, %898
  %906 = phi float [ %901, %898 ], [ %904, %902 ]
  %907 = fmul fast float %784, %707
  %908 = fmul fast float %785, %711
  %909 = fmul fast float %786, %715
  br i1 %769, label %910, label %1019

; <label>:910                                     ; preds = %905
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %913 = extractvalue %dx.types.CBufRet.f32 %911, 3
  %914 = fmul fast float %912, %53
  %915 = fmul fast float %913, %54
  %916 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %917 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %918 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %916, float %917, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %919 = extractvalue %dx.types.ResRet.f32 %918, 0
  %920 = extractvalue %dx.types.ResRet.f32 %918, 1
  %921 = extractvalue %dx.types.ResRet.f32 %918, 2
  %922 = extractvalue %dx.types.ResRet.f32 %918, 3
  %923 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %916, float %917, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %924 = extractvalue %dx.types.ResRet.f32 %923, 0
  %925 = extractvalue %dx.types.ResRet.f32 %923, 1
  %926 = extractvalue %dx.types.ResRet.f32 %923, 2
  %927 = extractvalue %dx.types.ResRet.f32 %923, 3
  %928 = call float @dx.op.binary.f32(i32 35, float %920, float %921)  ; FMax(a,b)
  %929 = call float @dx.op.binary.f32(i32 35, float %919, float %928)  ; FMax(a,b)
  %930 = call float @dx.op.binary.f32(i32 35, float %929, float %922)  ; FMax(a,b)
  %931 = call float @dx.op.binary.f32(i32 36, float %925, float %926)  ; FMin(a,b)
  %932 = call float @dx.op.binary.f32(i32 36, float %924, float %931)  ; FMin(a,b)
  %933 = call float @dx.op.binary.f32(i32 36, float %932, float %927)  ; FMin(a,b)
  %934 = fmul fast float %930, 2.550000e+02
  %935 = fadd fast float %934, 0x3F70101020000000
  %936 = fptoui float %935 to i32
  %937 = fmul fast float %933, 2.550000e+02
  %938 = fadd fast float %937, 0x3F70101020000000
  %939 = fptoui float %938 to i32
  %940 = icmp ult i32 %936, %939
  br i1 %940, label %941, label %992

; <label>:941                                     ; preds = %910
  %942 = fcmp fast ogt float %47, 9.843750e-01
  %943 = fadd fast float %48, -4.000000e+00
  %944 = select i1 %942, float -4.000000e+00, float %943
  %945 = call float @dx.op.binary.f32(i32 35, float %944, float 0.000000e+00)  ; FMax(a,b)
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %948 = fadd fast float %947, %945
  %949 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %950 = fmul fast float %948, %949
  %951 = call float @dx.op.unary.f32(i32 23, float %950)  ; Log(value)
  %952 = extractvalue %dx.types.CBufRet.f32 %946, 3
  %953 = fmul fast float %952, %951
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 2
  %956 = fmul fast float %953, %955
  %957 = call float @dx.op.unary.f32(i32 7, float %956)  ; Saturate(value)
  %958 = uitofp i32 %936 to float
  %959 = uitofp i32 %939 to float
  %960 = fadd fast float %958, 5.000000e-01
  %961 = fadd fast float %959, 5.000000e-01
  %962 = fmul fast float %955, %960
  %963 = fmul fast float %955, %961
  %964 = fadd fast float %962, 0x3F0FFB4800000000
  %965 = fadd fast float %963, 0xBF0FFB4800000000
  %966 = call float @dx.op.binary.f32(i32 35, float %957, float %964)  ; FMax(a,b)
  %967 = call float @dx.op.binary.f32(i32 36, float %966, float %965)  ; FMin(a,b)
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 1
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %971 = extractvalue %dx.types.CBufRet.f32 %968, 0
  %972 = fmul fast float %969, %967
  %973 = fadd fast float %971, %972
  %974 = fadd fast float %971, %970
  %975 = fsub fast float %969, %970
  %976 = fadd fast float %975, %971
  %977 = call float @dx.op.binary.f32(i32 35, float %973, float %974)  ; FMax(a,b)
  %978 = call float @dx.op.binary.f32(i32 36, float %977, float %976)  ; FMin(a,b)
  %979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %916, float %917, float %978, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %980 = extractvalue %dx.types.ResRet.f32 %979, 0
  %981 = extractvalue %dx.types.ResRet.f32 %979, 1
  %982 = extractvalue %dx.types.ResRet.f32 %979, 2
  %983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %916, float %917, float %978, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %984 = extractvalue %dx.types.ResRet.f32 %983, 0
  %985 = extractvalue %dx.types.ResRet.f32 %983, 1
  %986 = extractvalue %dx.types.ResRet.f32 %983, 2
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 1
  %989 = fmul fast float %988, %984
  %990 = fmul fast float %988, %985
  %991 = fmul fast float %988, %986
  br label %992

; <label>:992                                     ; preds = %941, %910
  %993 = phi float [ %980, %941 ], [ 1.000000e+00, %910 ]
  %994 = phi float [ %981, %941 ], [ 1.000000e+00, %910 ]
  %995 = phi float [ %982, %941 ], [ 1.000000e+00, %910 ]
  %996 = phi float [ %989, %941 ], [ 0.000000e+00, %910 ]
  %997 = phi float [ %990, %941 ], [ 0.000000e+00, %910 ]
  %998 = phi float [ %991, %941 ], [ 0.000000e+00, %910 ]
  %999 = fmul fast float %996, %791
  %1000 = fmul fast float %997, %791
  %1001 = fmul fast float %998, %791
  %1002 = call float @dx.op.dot3.f32(i32 55, float %993, float %994, float %995, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = call float @dx.op.dot3.f32(i32 55, float %999, float %1000, float %1001, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1004 = select i1 %111, float %1002, float %993
  %1005 = select i1 %111, float %1002, float %994
  %1006 = select i1 %111, float 1.000000e+00, float %995
  %1007 = select i1 %111, float %1003, float %999
  %1008 = select i1 %111, float 0.000000e+00, float %1000
  %1009 = select i1 %111, float 0.000000e+00, float %1001
  %1010 = fmul fast float %1004, %907
  %1011 = fmul fast float %1005, %908
  %1012 = fmul fast float %1006, %909
  %1013 = fadd fast float %1010, %1007
  %1014 = fadd fast float %1011, %1008
  %1015 = fadd fast float %1009, %1012
  %1016 = fmul fast float %1004, %893
  %1017 = fmul fast float %1005, %894
  %1018 = fmul fast float %1006, %895
  br label %1019

; <label>:1019                                    ; preds = %992, %905
  %1020 = phi float [ %766, %992 ], [ %48, %905 ]
  %1021 = phi float [ %1013, %992 ], [ %907, %905 ]
  %1022 = phi float [ %1014, %992 ], [ %908, %905 ]
  %1023 = phi float [ %1015, %992 ], [ %909, %905 ]
  %1024 = phi float [ %1016, %992 ], [ %893, %905 ]
  %1025 = phi float [ %1017, %992 ], [ %894, %905 ]
  %1026 = phi float [ %1018, %992 ], [ %895, %905 ]
  %1027 = phi float [ %993, %992 ], [ 1.000000e+00, %905 ]
  br i1 %774, label %1329, label %1028

; <label>:1028                                    ; preds = %1019
  %1029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = fmul fast float %1030, %791
  %1038 = fmul fast float %1031, %791
  %1039 = fmul fast float %1032, %791
  %1040 = fmul fast float %1034, %1027
  %1041 = call float @dx.op.dot3.f32(i32 55, float %1034, float %1035, float %1036, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1042 = call float @dx.op.dot3.f32(i32 55, float %1037, float %1038, float %1039, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1043 = select i1 %111, float %1041, float %1034
  %1044 = select i1 %111, float %1041, float %1035
  %1045 = select i1 %111, float 1.000000e+00, float %1036
  %1046 = select i1 %111, float %1042, float %1037
  %1047 = select i1 %111, float 0.000000e+00, float %1038
  %1048 = select i1 %111, float 0.000000e+00, float %1039
  %1049 = fmul fast float %1043, %1021
  %1050 = fmul fast float %1044, %1022
  %1051 = fmul fast float %1045, %1023
  %1052 = fadd fast float %1049, %1046
  %1053 = fadd fast float %1050, %1047
  %1054 = fadd fast float %1051, %1048
  %1055 = fmul fast float %1043, %1024
  %1056 = fmul fast float %1044, %1025
  %1057 = fmul fast float %1045, %1026
  %1058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.i32 %1058, 0
  %1060 = icmp eq i32 %1059, 0
  br i1 %1060, label %1329, label %1061, !dx.controlflow.hints !69

; <label>:1061                                    ; preds = %1028
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 2
  %1064 = extractvalue %dx.types.CBufRet.f32 %1062, 3
  %1065 = fmul fast float %1063, %53
  %1066 = fmul fast float %1064, %54
  %1067 = fmul fast float %1065, 2.000000e+00
  %1068 = fmul fast float %1066, 2.000000e+00
  %1069 = fsub fast float 1.000000e+00, %1067
  %1070 = fsub fast float 1.000000e+00, %1068
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.CBufRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.CBufRet.f32 %1071, 2
  %1075 = fmul fast float %1069, %1072
  %1076 = fmul fast float %1069, %1073
  %1077 = fmul fast float %1069, %1074
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.CBufRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.CBufRet.f32 %1078, 2
  %1082 = fmul fast float %1070, %1079
  %1083 = fmul fast float %1070, %1080
  %1084 = fmul fast float %1070, %1081
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.CBufRet.f32 %1085, 1
  %1088 = extractvalue %dx.types.CBufRet.f32 %1085, 2
  %1089 = fadd fast float %1082, %1086
  %1090 = fadd fast float %1089, %1075
  %1091 = fadd fast float %1083, %1087
  %1092 = fadd fast float %1091, %1076
  %1093 = fadd fast float %1084, %1088
  %1094 = fadd fast float %1093, %1077
  %1095 = fmul fast float %1090, %1020
  %1096 = fmul fast float %1092, %1020
  %1097 = fmul fast float %1094, %1020
  %1098 = fmul fast float %1095, %1095
  %1099 = fmul fast float %1096, %1096
  %1100 = fadd fast float %1098, %1099
  %1101 = fmul fast float %1097, %1097
  %1102 = fadd fast float %1100, %1101
  %1103 = call float @dx.op.unary.f32(i32 24, float %1102)  ; Sqrt(value)
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 0
  %1106 = fsub fast float %1103, %1105
  %1107 = extractvalue %dx.types.CBufRet.f32 %1104, 2
  %1108 = fmul fast float %1106, %1107
  %1109 = call float @dx.op.unary.f32(i32 7, float %1108)  ; Saturate(value)
  %1110 = fadd fast float %1109, -5.000000e-01
  %1111 = fmul fast float %1110, 2.000000e+00
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1112, 2
  %1114 = call float @dx.op.binary.f32(i32 36, float %1113, float %1111)  ; FMin(a,b)
  %1115 = fsub fast float -0.000000e+00, %1113
  %1116 = fcmp fast ogt float %1114, %1115
  br i1 %1116, label %1117, label %1329, !dx.controlflow.hints !70

; <label>:1117                                    ; preds = %1061
  %1118 = fmul fast float %1114, 5.000000e-01
  %1119 = fadd fast float %1118, 5.000000e-01
  %1120 = call float @dx.op.unary.f32(i32 22, float %1119)  ; Frc(value)
  %1121 = call float @dx.op.unary.f32(i32 27, float %1120)  ; Round_ni(value)
  %1122 = call float @dx.op.unary.f32(i32 22, float %1120)  ; Frc(value)
  %1123 = fmul fast float %1122, 2.000000e+00
  %1124 = fadd fast float %1123, -1.000000e+00
  %1125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1065, float %1066, float %1121, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.ResRet.f32 %1125, 1
  %1128 = extractvalue %dx.types.ResRet.f32 %1125, 2
  %1129 = extractvalue %dx.types.ResRet.f32 %1125, 3
  %1130 = fadd fast float %1126, -5.000000e-01
  %1131 = fadd fast float %1128, -5.000000e-01
  %1132 = fmul fast float %1130, 0xBFD5555560000000
  %1133 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1131, float %1132)  ; FMad(a,b,c)
  %1134 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1127, float 0.000000e+00)  ; FMad(a,b,c)
  %1135 = fadd fast float %1134, %1129
  %1136 = fmul fast float %1130, -7.500000e-01
  %1137 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1131, float %1136)  ; FMad(a,b,c)
  %1138 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1127, float 0.000000e+00)  ; FMad(a,b,c)
  %1139 = fadd fast float %1138, %1129
  %1140 = call float @dx.op.binary.f32(i32 35, float %1133, float -1.000000e+00)  ; FMax(a,b)
  %1141 = call float @dx.op.binary.f32(i32 35, float %1135, float -1.000000e+00)  ; FMax(a,b)
  %1142 = call float @dx.op.binary.f32(i32 35, float %1137, float -1.000000e+00)  ; FMax(a,b)
  %1143 = call float @dx.op.binary.f32(i32 35, float %1139, float -1.000000e+00)  ; FMax(a,b)
  %1144 = call float @dx.op.binary.f32(i32 36, float %1140, float 1.000000e+00)  ; FMin(a,b)
  %1145 = call float @dx.op.binary.f32(i32 36, float %1141, float 1.000000e+00)  ; FMin(a,b)
  %1146 = call float @dx.op.binary.f32(i32 36, float %1142, float 1.000000e+00)  ; FMin(a,b)
  %1147 = call float @dx.op.binary.f32(i32 36, float %1143, float 1.000000e+00)  ; FMin(a,b)
  %1148 = fcmp fast olt float %1144, 0x3FEFFF8020000000
  br i1 %1148, label %1149, label %1264, !dx.controlflow.hints !71

; <label>:1149                                    ; preds = %1117
  %1150 = extractvalue %dx.types.CBufRet.f32 %1112, 3
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 0
  %1153 = extractvalue %dx.types.CBufRet.f32 %1151, 1
  %1154 = extractvalue %dx.types.CBufRet.f32 %1151, 2
  %1155 = extractvalue %dx.types.CBufRet.f32 %1151, 3
  %1156 = fsub fast float %1152, %1144
  %1157 = fsub fast float %1153, %1145
  %1158 = fsub fast float %1154, %1146
  %1159 = fsub fast float %1155, %1147
  %1160 = fmul fast float %1156, %1150
  %1161 = fmul fast float %1157, %1150
  %1162 = fmul fast float %1158, %1150
  %1163 = fmul fast float %1159, %1150
  %1164 = fadd fast float %1160, %1144
  %1165 = fadd fast float %1161, %1145
  %1166 = fsub fast float -0.000000e+00, %1165
  %1167 = fadd fast float %1162, %1146
  %1168 = fadd fast float %1163, %1147
  %1169 = fmul fast float %1164, %1164
  %1170 = fsub fast float %1165, %1169
  %1171 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1170)  ; FMax(a,b)
  %1172 = fdiv fast float 1.000000e+00, %1171
  %1173 = fmul fast float %1165, %1164
  %1174 = fsub fast float %1167, %1173
  %1175 = fsub fast float %1124, %1164
  %1176 = fmul fast float %1124, %1124
  %1177 = fsub fast float %1176, %1165
  %1178 = fmul fast float %1175, %1172
  %1179 = fmul fast float %1178, %1174
  %1180 = fsub fast float %1177, %1179
  %1181 = fmul fast float %1165, %1165
  %1182 = fsub fast float %1168, %1181
  %1183 = fmul fast float %1174, %1174
  %1184 = fmul fast float %1183, %1172
  %1185 = fsub fast float %1182, %1184
  %1186 = fdiv fast float %1180, %1185
  %1187 = fmul fast float %1174, %1186
  %1188 = fsub fast float %1175, %1187
  %1189 = fmul fast float %1188, %1172
  %1190 = fmul fast float %1189, %1164
  %1191 = fsub fast float 1.000000e+00, %1190
  %1192 = fmul fast float %1165, %1186
  %1193 = fsub fast float %1191, %1192
  %1194 = fmul fast float %1189, %1189
  %1195 = fmul fast float %1186, 4.000000e+00
  %1196 = fmul fast float %1195, %1193
  %1197 = fsub fast float %1194, %1196
  %1198 = call float @dx.op.unary.f32(i32 24, float %1197)  ; Sqrt(value)
  %1199 = fcmp fast oge float %1189, 0.000000e+00
  %1200 = fsub fast float -0.000000e+00, %1198
  %1201 = select i1 %1199, float %1200, float %1198
  %1202 = fsub fast float %1201, %1189
  %1203 = fdiv fast float %1202, %1186
  %1204 = fdiv fast float %1193, %1202
  %1205 = fmul fast float %1203, 5.000000e-01
  %1206 = fmul fast float %1204, 2.000000e+00
  %1207 = select i1 %1199, float %1205, float %1206
  %1208 = select i1 %1199, float %1206, float %1205
  %1209 = call float @dx.op.binary.f32(i32 35, float %1207, float %1208)  ; FMax(a,b)
  %1210 = call float @dx.op.binary.f32(i32 36, float %1207, float %1208)  ; FMin(a,b)
  %1211 = fcmp fast ogt float %1124, %1210
  br i1 %1211, label %1212, label %1222

; <label>:1212                                    ; preds = %1149
  %1213 = fsub fast float %1124, %1210
  %1214 = fsub fast float %1209, %1210
  %1215 = fmul fast float %1213, %1214
  %1216 = fmul fast float %1209, %1124
  %1217 = fadd fast float %1209, %1124
  %1218 = fmul fast float %1217, %1164
  %1219 = fadd fast float %1216, %1165
  %1220 = fsub fast float %1219, %1218
  %1221 = fdiv fast float %1220, %1215
  br label %1222

; <label>:1222                                    ; preds = %1212, %1149
  %1223 = phi float [ %1221, %1212 ], [ 0.000000e+00, %1149 ]
  %1224 = fcmp fast ogt float %1124, %1209
  %1225 = fsub fast float %1124, %1209
  br i1 %1224, label %1226, label %1236

; <label>:1226                                    ; preds = %1222
  %1227 = fsub fast float %1209, %1210
  %1228 = fmul fast float %1227, %1225
  %1229 = fmul fast float %1210, %1124
  %1230 = fadd fast float %1210, %1124
  %1231 = fmul fast float %1230, %1164
  %1232 = fsub fast float %1166, %1229
  %1233 = fadd fast float %1232, %1231
  %1234 = fdiv fast float %1233, %1228
  %1235 = fadd fast float %1234, %1223
  br label %1236

; <label>:1236                                    ; preds = %1226, %1222
  %1237 = phi float [ %1235, %1226 ], [ %1223, %1222 ]
  %1238 = fsub fast float %1124, %1210
  %1239 = fmul fast float %1238, %1225
  %1240 = fmul fast float %1210, %1209
  %1241 = fadd fast float %1210, %1209
  %1242 = fmul fast float %1241, %1164
  %1243 = fadd fast float %1240, %1165
  %1244 = fsub fast float %1243, %1242
  %1245 = fdiv fast float %1244, %1239
  %1246 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  %1247 = fcmp fast oeq float %906, 0.000000e+00
  %1248 = extractvalue %dx.types.CBufRet.f32 %1112, 0
  %1249 = fcmp fast oeq float %1248, 0.000000e+00
  %1250 = or i1 %1247, %1249
  %1251 = fmul fast float %1248, 2.000000e+00
  %1252 = fadd fast float %1113, %1114
  %1253 = fdiv fast float %1252, %1251
  %1254 = call float @dx.op.unary.f32(i32 7, float %1253)  ; Saturate(value)
  %1255 = fmul fast float %1254, 2.000000e+00
  %1256 = fsub fast float 3.000000e+00, %1255
  %1257 = fmul fast float %1254, %1254
  %1258 = fmul fast float %1257, %1256
  %1259 = select i1 %1250, float 1.000000e+00, float %1258
  %1260 = fmul fast float %1245, %906
  %1261 = fadd fast float %1246, %1260
  %1262 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1263 = fmul fast float %1259, %1262
  br label %1264

; <label>:1264                                    ; preds = %1236, %1117
  %1265 = phi float [ %1263, %1236 ], [ 0.000000e+00, %1117 ]
  %1266 = fsub fast float 1.000000e+00, %1265
  %1267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.i32 %1269, 2
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1277, label %1272

; <label>:1272                                    ; preds = %1264
  %1273 = call float @dx.op.unary.f32(i32 7, float %1265)  ; Saturate(value)
  %1274 = fadd fast float %1268, -1.000000e+00
  %1275 = fmul fast float %1273, %1274
  %1276 = fadd fast float %1275, 1.000000e+00
  br label %1277

; <label>:1277                                    ; preds = %1272, %1264
  %1278 = phi float [ %1276, %1272 ], [ %1266, %1264 ]
  %1279 = call float @dx.op.binary.f32(i32 35, float %1268, float %1278)  ; FMax(a,b)
  %1280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.i32 %1280, 2
  %1282 = and i32 %1281, 1
  %1283 = icmp eq i32 %1282, 0
  %1284 = fcmp fast une float %1279, 1.000000e+00
  %1285 = and i1 %1284, %1283
  br i1 %1285, label %1286, label %1305

; <label>:1286                                    ; preds = %1277
  %1287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1065, float %1066, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 0
  %1289 = extractvalue %dx.types.ResRet.f32 %1287, 1
  %1290 = extractvalue %dx.types.ResRet.f32 %1287, 2
  %1291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1292 = extractvalue %dx.types.CBufRet.f32 %1291, 1
  %1293 = fmul fast float %1292, %1288
  %1294 = fmul fast float %1292, %1289
  %1295 = fmul fast float %1292, %1290
  %1296 = fcmp fast ogt float %1268, 0x3FEFFF2E40000000
  %1297 = fsub fast float 1.000000e+00, %1279
  %1298 = fsub fast float 1.000000e+00, %1268
  %1299 = fdiv fast float %1297, %1298
  %1300 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1301 = select i1 %1296, float 0.000000e+00, float %1300
  %1302 = fmul fast float %1293, %1301
  %1303 = fmul fast float %1294, %1301
  %1304 = fmul fast float %1295, %1301
  br label %1305

; <label>:1305                                    ; preds = %1286, %1277
  %1306 = phi float [ 0.000000e+00, %1277 ], [ %1302, %1286 ]
  %1307 = phi float [ 0.000000e+00, %1277 ], [ %1303, %1286 ]
  %1308 = phi float [ 0.000000e+00, %1277 ], [ %1304, %1286 ]
  %1309 = fmul fast float %1306, %791
  %1310 = fmul fast float %1307, %791
  %1311 = fmul fast float %1308, %791
  %1312 = fmul fast float %1279, %1040
  %1313 = call float @dx.op.dot3.f32(i32 55, float %1279, float %1279, float %1279, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1314 = call float @dx.op.dot3.f32(i32 55, float %1309, float %1310, float %1311, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1315 = select i1 %111, float %1313, float %1279
  %1316 = select i1 %111, float 1.000000e+00, float %1279
  %1317 = select i1 %111, float %1314, float %1309
  %1318 = select i1 %111, float 0.000000e+00, float %1310
  %1319 = select i1 %111, float 0.000000e+00, float %1311
  %1320 = fmul fast float %1315, %1052
  %1321 = fmul fast float %1315, %1053
  %1322 = fmul fast float %1316, %1054
  %1323 = fadd fast float %1320, %1317
  %1324 = fadd fast float %1321, %1318
  %1325 = fadd fast float %1319, %1322
  %1326 = fmul fast float %1315, %1055
  %1327 = fmul fast float %1315, %1056
  %1328 = fmul fast float %1316, %1057
  br label %1329

; <label>:1329                                    ; preds = %1305, %1061, %1028, %1019
  %1330 = phi float [ %1021, %1019 ], [ %1052, %1028 ], [ %1323, %1305 ], [ %1052, %1061 ]
  %1331 = phi float [ %1022, %1019 ], [ %1053, %1028 ], [ %1324, %1305 ], [ %1053, %1061 ]
  %1332 = phi float [ %1023, %1019 ], [ %1054, %1028 ], [ %1325, %1305 ], [ %1054, %1061 ]
  %1333 = phi float [ %1024, %1019 ], [ %1055, %1028 ], [ %1326, %1305 ], [ %1055, %1061 ]
  %1334 = phi float [ %1025, %1019 ], [ %1056, %1028 ], [ %1327, %1305 ], [ %1056, %1061 ]
  %1335 = phi float [ %1026, %1019 ], [ %1057, %1028 ], [ %1328, %1305 ], [ %1057, %1061 ]
  %1336 = phi float [ %1027, %1019 ], [ %1040, %1028 ], [ %1312, %1305 ], [ %1040, %1061 ]
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 2
  %1339 = extractvalue %dx.types.CBufRet.f32 %1337, 3
  %1340 = fmul fast float %1338, %53
  %1341 = fmul fast float %1339, %54
  %1342 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1343 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1344 = select i1 %774, i32 2, i32 0
  %1345 = or i32 %1344, 1
  %1346 = uitofp i32 %1345 to float
  %1347 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1342, float %1343, float %1346, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  %1349 = extractvalue %dx.types.ResRet.f32 %1347, 1
  %1350 = extractvalue %dx.types.ResRet.f32 %1347, 2
  %1351 = extractvalue %dx.types.ResRet.f32 %1347, 3
  %1352 = add nuw nsw i32 %1344, 2
  %1353 = uitofp i32 %1352 to float
  %1354 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1342, float %1343, float %1353, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1355 = extractvalue %dx.types.ResRet.f32 %1354, 0
  %1356 = extractvalue %dx.types.ResRet.f32 %1354, 1
  %1357 = extractvalue %dx.types.ResRet.f32 %1354, 2
  %1358 = extractvalue %dx.types.ResRet.f32 %1354, 3
  %1359 = call float @dx.op.binary.f32(i32 35, float %1349, float %1350)  ; FMax(a,b)
  %1360 = call float @dx.op.binary.f32(i32 35, float %1348, float %1359)  ; FMax(a,b)
  %1361 = call float @dx.op.binary.f32(i32 35, float %1360, float %1351)  ; FMax(a,b)
  %1362 = call float @dx.op.binary.f32(i32 36, float %1356, float %1357)  ; FMin(a,b)
  %1363 = call float @dx.op.binary.f32(i32 36, float %1355, float %1362)  ; FMin(a,b)
  %1364 = call float @dx.op.binary.f32(i32 36, float %1363, float %1358)  ; FMin(a,b)
  %1365 = fmul fast float %1361, 2.550000e+02
  %1366 = fadd fast float %1365, 0x3F70101020000000
  %1367 = fptoui float %1366 to i32
  %1368 = fmul fast float %1364, 2.550000e+02
  %1369 = fadd fast float %1368, 0x3F70101020000000
  %1370 = fptoui float %1369 to i32
  %1371 = icmp ult i32 %1367, %1370
  br i1 %1371, label %1372, label %1424

; <label>:1372                                    ; preds = %1329
  %1373 = fcmp fast ogt float %47, 9.843750e-01
  %1374 = fadd fast float %1020, -4.000000e+00
  %1375 = select i1 %1373, float -4.000000e+00, float %1374
  %1376 = call float @dx.op.binary.f32(i32 35, float %1375, float 0.000000e+00)  ; FMax(a,b)
  %1377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.f32 %1377, 0
  %1379 = fadd fast float %1378, %1376
  %1380 = extractvalue %dx.types.CBufRet.f32 %1377, 2
  %1381 = fmul fast float %1379, %1380
  %1382 = call float @dx.op.unary.f32(i32 23, float %1381)  ; Log(value)
  %1383 = extractvalue %dx.types.CBufRet.f32 %1377, 3
  %1384 = fmul fast float %1383, %1382
  %1385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1386 = extractvalue %dx.types.CBufRet.f32 %1385, 2
  %1387 = fmul fast float %1384, %1386
  %1388 = call float @dx.op.unary.f32(i32 7, float %1387)  ; Saturate(value)
  %1389 = uitofp i32 %1367 to float
  %1390 = uitofp i32 %1370 to float
  %1391 = fadd fast float %1389, 5.000000e-01
  %1392 = fadd fast float %1390, 5.000000e-01
  %1393 = fmul fast float %1386, %1391
  %1394 = fmul fast float %1386, %1392
  %1395 = fadd fast float %1393, 0x3F0FFB4800000000
  %1396 = fadd fast float %1394, 0xBF0FFB4800000000
  %1397 = call float @dx.op.binary.f32(i32 35, float %1388, float %1395)  ; FMax(a,b)
  %1398 = call float @dx.op.binary.f32(i32 36, float %1397, float %1396)  ; FMin(a,b)
  %1399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1400 = extractvalue %dx.types.CBufRet.f32 %1399, 1
  %1401 = extractvalue %dx.types.CBufRet.f32 %1399, 2
  %1402 = extractvalue %dx.types.CBufRet.f32 %1399, 0
  %1403 = select i1 %774, float %1402, float 0.000000e+00
  %1404 = fmul fast float %1400, %1398
  %1405 = fadd fast float %1403, %1404
  %1406 = fadd fast float %1403, %1401
  %1407 = fsub fast float %1400, %1401
  %1408 = fadd fast float %1407, %1403
  %1409 = call float @dx.op.binary.f32(i32 35, float %1405, float %1406)  ; FMax(a,b)
  %1410 = call float @dx.op.binary.f32(i32 36, float %1409, float %1408)  ; FMin(a,b)
  %1411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1342, float %1343, float %1410, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1412 = extractvalue %dx.types.ResRet.f32 %1411, 0
  %1413 = extractvalue %dx.types.ResRet.f32 %1411, 1
  %1414 = extractvalue %dx.types.ResRet.f32 %1411, 2
  %1415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1342, float %1343, float %1410, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1416 = extractvalue %dx.types.ResRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.ResRet.f32 %1415, 1
  %1418 = extractvalue %dx.types.ResRet.f32 %1415, 2
  %1419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.f32 %1419, 1
  %1421 = fmul fast float %1420, %1416
  %1422 = fmul fast float %1420, %1417
  %1423 = fmul fast float %1420, %1418
  br label %1424

; <label>:1424                                    ; preds = %1372, %1329
  %1425 = phi float [ %1412, %1372 ], [ 1.000000e+00, %1329 ]
  %1426 = phi float [ %1413, %1372 ], [ 1.000000e+00, %1329 ]
  %1427 = phi float [ %1414, %1372 ], [ 1.000000e+00, %1329 ]
  %1428 = phi float [ %1421, %1372 ], [ 0.000000e+00, %1329 ]
  %1429 = phi float [ %1422, %1372 ], [ 0.000000e+00, %1329 ]
  %1430 = phi float [ %1423, %1372 ], [ 0.000000e+00, %1329 ]
  %1431 = fmul fast float %1428, %791
  %1432 = fmul fast float %1429, %791
  %1433 = fmul fast float %1430, %791
  %1434 = fmul fast float %1425, %1336
  %1435 = call float @dx.op.dot3.f32(i32 55, float %1425, float %1426, float %1427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1436 = call float @dx.op.dot3.f32(i32 55, float %1431, float %1432, float %1433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1437 = select i1 %111, float %1435, float %1425
  %1438 = select i1 %111, float %1435, float %1426
  %1439 = select i1 %111, float 1.000000e+00, float %1427
  %1440 = select i1 %111, float %1436, float %1431
  %1441 = select i1 %111, float 0.000000e+00, float %1432
  %1442 = select i1 %111, float 0.000000e+00, float %1433
  %1443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.i32 %1443, 3
  %1445 = and i32 %1444, 3
  %1446 = icmp ne i32 %1445, 0
  %1447 = and i32 %1444, 4
  %1448 = icmp ne i32 %1447, 0
  %1449 = and i1 %1446, %1448
  %1450 = and i1 %111, %1449
  br i1 %1450, label %1451, label %1457

; <label>:1451                                    ; preds = %1424
  %1452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.f32 %1452, 1
  %1454 = fadd fast float %1434, -1.000000e+00
  %1455 = fmul fast float %1453, %1454
  %1456 = fadd fast float %1455, 1.000000e+00
  br label %1457

; <label>:1457                                    ; preds = %1451, %1424
  %1458 = phi float [ %1456, %1451 ], [ %1434, %1424 ]
  %1459 = fadd fast float %1333, %1330
  %1460 = fmul fast float %1437, %1459
  %1461 = fadd fast float %1460, %1440
  %1462 = fadd fast float %1334, %1331
  %1463 = fmul fast float %1438, %1462
  %1464 = fadd fast float %1463, %1441
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 0
  br i1 %111, label %1467, label %1488

; <label>:1467                                    ; preds = %1457
  %1468 = fadd fast float %1461, %1464
  %1469 = fmul fast float %1466, %1468
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 3
  %1472 = extractvalue %dx.types.CBufRet.f32 %795, 1
  %1473 = fsub fast float %798, %1472
  %1474 = extractvalue %dx.types.CBufRet.f32 %795, 2
  %1475 = fmul fast float %1473, %1474
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  %1477 = fsub fast float %1476, %1471
  %1478 = fmul fast float %1477, %1458
  %1479 = fadd fast float %1478, %1471
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 0
  %1482 = fsub fast float %1479, %1481
  %1483 = fmul fast float %1482, 1.000000e+01
  %1484 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  %1485 = fmul fast float %1484, %791
  %1486 = fsub fast float %791, %1485
  %1487 = fmul fast float %1486, %1479
  br label %1500

; <label>:1488                                    ; preds = %1457
  %1489 = fadd fast float %1335, %1332
  %1490 = fmul fast float %1439, %1489
  %1491 = fadd fast float %1490, %1442
  %1492 = fmul fast float %1466, %1461
  %1493 = fmul fast float %1466, %1464
  %1494 = fmul fast float %1466, %1491
  %1495 = call float @dx.op.binary.f32(i32 35, float %1493, float %1494)  ; FMax(a,b)
  %1496 = call float @dx.op.binary.f32(i32 35, float %1492, float %1495)  ; FMax(a,b)
  %1497 = call float @dx.op.binary.f32(i32 35, float %1496, float %791)  ; FMax(a,b)
  %1498 = fcmp fast ugt float %1497, 0x3F10000000000000
  br i1 %1498, label %1500, label %1499

; <label>:1499                                    ; preds = %1488
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1500

; <label>:1500                                    ; preds = %1499, %1488, %1467
  %1501 = phi float [ %1469, %1467 ], [ %1492, %1499 ], [ %1492, %1488 ]
  %1502 = phi float [ %1487, %1467 ], [ %1493, %1499 ], [ %1493, %1488 ]
  %1503 = phi float [ %1486, %1467 ], [ %1494, %1499 ], [ %1494, %1488 ]
  %1504 = phi float [ %1486, %1467 ], [ %791, %1499 ], [ %791, %1488 ]
  %1505 = fadd fast float %553, 0x3FE3C6EF40000000
  %1506 = call float @dx.op.unary.f32(i32 22, float %1505)  ; Frc(value)
  %1507 = call float @dx.op.unary.f32(i32 23, float %1501)  ; Log(value)
  %1508 = fadd fast float %1507, -7.000000e+00
  %1509 = call float @dx.op.unary.f32(i32 21, float %1508)  ; Exp(value)
  %1510 = fmul fast float %1506, 2.000000e+00
  %1511 = fadd fast float %1510, -1.000000e+00
  %1512 = fmul fast float %1509, %1511
  %1513 = fcmp fast ogt float %1501, 0.000000e+00
  %1514 = select i1 %1513, float %1512, float 0.000000e+00
  %1515 = fadd fast float %1514, %1501
  %1516 = fadd fast float %553, 0x3FF3C6EF40000000
  %1517 = call float @dx.op.unary.f32(i32 22, float %1516)  ; Frc(value)
  %1518 = call float @dx.op.unary.f32(i32 23, float %1502)  ; Log(value)
  %1519 = fadd fast float %1518, -7.000000e+00
  %1520 = call float @dx.op.unary.f32(i32 21, float %1519)  ; Exp(value)
  %1521 = fmul fast float %1517, 2.000000e+00
  %1522 = fadd fast float %1521, -1.000000e+00
  %1523 = fmul fast float %1520, %1522
  %1524 = fcmp fast ogt float %1502, 0.000000e+00
  %1525 = select i1 %1524, float %1523, float 0.000000e+00
  %1526 = fadd fast float %1525, %1502
  %1527 = fadd fast float %553, 0x3FFDAA66E0000000
  %1528 = call float @dx.op.unary.f32(i32 22, float %1527)  ; Frc(value)
  %1529 = call float @dx.op.unary.f32(i32 23, float %1503)  ; Log(value)
  %1530 = fadd fast float %1529, -6.000000e+00
  %1531 = call float @dx.op.unary.f32(i32 21, float %1530)  ; Exp(value)
  %1532 = fmul fast float %1528, 2.000000e+00
  %1533 = fadd fast float %1532, -1.000000e+00
  %1534 = fmul fast float %1531, %1533
  %1535 = fcmp fast ogt float %1503, 0.000000e+00
  %1536 = select i1 %1535, float %1534, float 0.000000e+00
  %1537 = fadd fast float %1536, %1503
  %1538 = select i1 %111, float %1502, float %1526
  %1539 = select i1 %111, float %1503, float %1537
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1540 = call float @dx.op.binary.f32(i32 36, float %1515, float 3.225500e+04)  ; FMin(a,b)
  %1541 = call float @dx.op.binary.f32(i32 36, float %1538, float 3.225500e+04)  ; FMin(a,b)
  %1542 = call float @dx.op.binary.f32(i32 36, float %1539, float 3.225500e+04)  ; FMin(a,b)
  %1543 = call float @dx.op.binary.f32(i32 36, float %1504, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1540)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1541)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1542)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1543)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1504)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1504)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1504)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1504)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!35 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!36 = !{void ()* @ps_main, !"ps_main", !37, !4, !59}
!37 = !{!38, !55, null}
!38 = !{!39, !42, !43, !45, !47, !49, !51, !52, !54}
!39 = !{i32 0, !"SV_Position", i8 9, i8 3, !40, i8 4, i32 1, i8 4, i32 0, i8 0, !41}
!40 = !{i32 0}
!41 = !{i32 3, i32 15}
!42 = !{i32 1, !"COLOR", i8 9, i8 0, !40, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!43 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 2, i8 0, !44}
!44 = !{i32 3, i32 3}
!45 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 3, i8 0, !41}
!46 = !{i32 3}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 3, i32 1, i8 2, i32 4, i8 0, !44}
!48 = !{i32 5}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 5, i8 0, !41}
!50 = !{i32 8}
!51 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !40, i8 1, i32 1, i8 4, i32 6, i8 0, !41}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !46, i8 1, i32 1, i8 3, i32 7, i8 0, !53}
!53 = !{i32 3, i32 5}
!54 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !40, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56, !57}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !40, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!57 = !{i32 1, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 1, i8 0, !41}
!58 = !{i32 1}
!59 = !{i32 0, i64 24}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}

