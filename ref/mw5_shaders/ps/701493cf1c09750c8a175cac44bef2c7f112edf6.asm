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
; shader hash: 69c1f53fa0651cd641f74f9cabd0ae18
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24, 25, 26, 27, 28, 30 }
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
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %165 = phi float [ %37, %137 ], [ %144, %150 ], [ %163, %158 ], [ %144, %156 ]
  %166 = phi float [ %38, %137 ], [ %155, %150 ], [ %145, %158 ], [ %145, %156 ]
  %167 = add i32 %22, 72
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = extractvalue %dx.types.ResRet.i32 %168, 1
  %171 = bitcast i32 %169 to float
  %172 = bitcast i32 %170 to float
  %173 = fmul fast float %171, %37
  %174 = fmul fast float %172, %38
  %175 = call float @dx.op.unary.f32(i32 22, float %173)  ; Frc(value)
  %176 = call float @dx.op.unary.f32(i32 22, float %174)  ; Frc(value)
  %177 = and i32 %128, 16
  %178 = icmp ne i32 %177, 0
  %179 = select i1 %178, float 1.000000e+00, float %42
  %180 = icmp eq i32 %177, 0
  br i1 %180, label %200, label %181, !dx.controlflow.hints !58

; <label>:181                                     ; preds = %164
  %182 = add i32 %125, 64
  %183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = fadd fast float %184, 1.000000e+00
  %186 = fmul fast float %185, %42
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
  %226 = fsub fast float %225, %46
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
  br i1 %246, label %523, label %247, !dx.controlflow.hints !59

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
  %290 = fmul fast float %288, %50
  %291 = fmul fast float %289, %51
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
  br i1 %281, label %404, label %315, !dx.controlflow.hints !60

; <label>:315                                     ; preds = %247
  %316 = fmul fast float %55, %288
  %317 = fmul fast float %57, %289
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
  %351 = fsub fast float %348, %23
  %352 = fadd fast float %351, %344
  %353 = fsub fast float %349, %24
  %354 = fadd fast float %353, %345
  %355 = fsub fast float %350, %25
  %356 = fadd fast float %355, %346
  %357 = fmul fast float %26, %26
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
  %375 = fmul fast float %261, %39
  %376 = fmul fast float %262, %40
  %377 = fmul fast float %263, %41
  %378 = fsub fast float %375, %267
  %379 = fsub fast float %376, %268
  %380 = fsub fast float %377, %269
  %381 = fsub fast float %264, %270
  %382 = fmul fast float %374, %378
  %383 = fmul fast float %374, %379
  %384 = fmul fast float %374, %380
  %385 = fmul fast float %374, %381
  %386 = fadd fast float %382, %267
  %387 = fadd fast float %383, %268
  %388 = fadd fast float %384, %269
  %389 = fadd fast float %385, %270
  %390 = fmul fast float %261, %27
  %391 = fmul fast float %262, %28
  %392 = fmul fast float %263, %29
  %393 = fsub fast float %390, %267
  %394 = fsub fast float %391, %268
  %395 = fsub fast float %392, %269
  %396 = fmul fast float %374, %393
  %397 = fmul fast float %374, %394
  %398 = fmul fast float %374, %395
  %399 = fadd fast float %396, %267
  %400 = fadd fast float %397, %268
  %401 = fadd fast float %398, %269
  %402 = fmul fast float %250, %250
  %403 = fmul fast float %402, %365
  br label %511

; <label>:404                                     ; preds = %247
  %405 = and i32 %272, 256
  %406 = icmp eq i32 %405, 0
  %407 = fsub fast float %314, %46
  br i1 %406, label %468, label %408

; <label>:408                                     ; preds = %404
  %409 = fadd fast float %256, %46
  %410 = fcmp fast olt float %314, %46
  %411 = fcmp fast ogt float %314, %409
  %412 = or i1 %410, %411
  %413 = select i1 %412, float 0.000000e+00, float %407
  %414 = call float @dx.op.unary.f32(i32 83, float %314)  ; DerivCoarseX(value)
  %415 = call float @dx.op.unary.f32(i32 84, float %314)  ; DerivCoarseY(value)
  %416 = fmul fast float %414, %414
  %417 = fmul fast float %415, %415
  %418 = fadd fast float %417, %416
  %419 = call float @dx.op.unary.f32(i32 24, float %418)  ; Sqrt(value)
  %420 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %421 = fmul fast float %420, %419
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %423 = fmul fast float %422, %257
  %424 = fdiv fast float %407, %423
  %425 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %426 = fmul fast float %425, 2.000000e+00
  %427 = fsub fast float 3.000000e+00, %426
  %428 = fmul fast float %425, %425
  %429 = fmul fast float %428, %427
  %430 = fsub fast float %314, %409
  %431 = fadd fast float %430, %423
  %432 = fdiv fast float %431, %423
  %433 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %434 = fmul fast float %433, 2.000000e+00
  %435 = fsub fast float 3.000000e+00, %434
  %436 = fmul fast float %433, %433
  %437 = fmul fast float %436, %435
  %438 = fsub fast float %429, %437
  %439 = fmul fast float %261, %39
  %440 = fmul fast float %262, %40
  %441 = fmul fast float %263, %41
  %442 = fsub fast float %439, %267
  %443 = fsub fast float %440, %268
  %444 = fsub fast float %441, %269
  %445 = fsub fast float %264, %270
  %446 = fmul fast float %438, %442
  %447 = fmul fast float %438, %443
  %448 = fmul fast float %438, %444
  %449 = fmul fast float %438, %445
  %450 = fadd fast float %446, %267
  %451 = fadd fast float %447, %268
  %452 = fadd fast float %448, %269
  %453 = fadd fast float %449, %270
  %454 = fmul fast float %261, %27
  %455 = fmul fast float %262, %28
  %456 = fmul fast float %263, %29
  %457 = fsub fast float %454, %267
  %458 = fsub fast float %455, %268
  %459 = fsub fast float %456, %269
  %460 = fmul fast float %438, %457
  %461 = fmul fast float %438, %458
  %462 = fmul fast float %438, %459
  %463 = fadd fast float %460, %267
  %464 = fadd fast float %461, %268
  %465 = fadd fast float %462, %269
  %466 = fmul fast float %413, %250
  %467 = call float @dx.op.unary.f32(i32 6, float %466)  ; FAbs(value)
  br label %511

; <label>:468                                     ; preds = %404
  br i1 %275, label %469, label %482

; <label>:469                                     ; preds = %468
  %470 = fdiv fast float 5.000000e+01, %26
  %471 = select i1 %277, float %470, float 1.000000e+00
  %472 = fmul fast float %471, %250
  %473 = fmul fast float %175, 2.000000e+00
  %474 = fmul fast float %176, 2.000000e+00
  %475 = fadd fast float %473, -1.000000e+00
  %476 = fadd fast float %474, -1.000000e+00
  %477 = call float @dx.op.dot2.f32(i32 54, float %475, float %476, float %475, float %476)  ; Dot2(ax,ay,bx,by)
  %478 = fmul fast float %258, %26
  %479 = fmul fast float %478, %477
  %480 = fsub fast float %407, %479
  %481 = fmul fast float %472, %480
  br label %511

; <label>:482                                     ; preds = %468
  br i1 %279, label %503, label %483

; <label>:483                                     ; preds = %482
  %484 = fmul fast float %26, 0x3F947AE140000000
  %485 = select i1 %277, float %484, float 1.000000e+00
  %486 = fdiv fast float 1.000000e+00, %485
  %487 = fmul fast float %485, %251
  %488 = fmul fast float %485, %252
  %489 = fmul fast float %486, %253
  %490 = call float @dx.op.unary.f32(i32 6, float %407)  ; FAbs(value)
  %491 = fcmp fast olt float %490, %487
  br i1 %491, label %492, label %496, !dx.controlflow.hints !61

; <label>:492                                     ; preds = %483
  %493 = fmul fast float %486, %250
  %494 = fmul fast float %493, %490
  %495 = call float @dx.op.unary.f32(i32 6, float %494)  ; FAbs(value)
  br label %511

; <label>:496                                     ; preds = %483
  %497 = fcmp fast ogt float %490, %488
  br i1 %497, label %498, label %511

; <label>:498                                     ; preds = %496
  %499 = fsub fast float %490, %488
  %500 = fmul fast float %489, %499
  %501 = call float @dx.op.unary.f32(i32 6, float %500)  ; FAbs(value)
  %502 = fsub fast float 1.000000e+00, %501
  br label %511

; <label>:503                                     ; preds = %482
  %504 = fdiv fast float 5.000000e+01, %26
  %505 = select i1 %277, float %504, float 1.000000e+00
  %506 = fmul fast float %505, %250
  %507 = call float @dx.op.unary.f32(i32 6, float %226)  ; FAbs(value)
  %508 = select i1 %274, float %507, float 0x47EFFFFFE0000000
  %509 = call float @dx.op.binary.f32(i32 36, float %407, float %508)  ; FMin(a,b)
  %510 = fmul fast float %506, %509
  br label %511

; <label>:511                                     ; preds = %503, %498, %496, %492, %469, %408, %315
  %512 = phi float [ %403, %315 ], [ %467, %408 ], [ %481, %469 ], [ %510, %503 ], [ %495, %492 ], [ %502, %498 ], [ %490, %496 ]
  %513 = phi float [ %399, %315 ], [ %463, %408 ], [ %27, %469 ], [ %27, %503 ], [ %27, %492 ], [ %27, %498 ], [ %27, %496 ]
  %514 = phi float [ %400, %315 ], [ %464, %408 ], [ %28, %469 ], [ %28, %503 ], [ %28, %492 ], [ %28, %498 ], [ %28, %496 ]
  %515 = phi float [ %401, %315 ], [ %465, %408 ], [ %29, %469 ], [ %29, %503 ], [ %29, %492 ], [ %29, %498 ], [ %29, %496 ]
  %516 = phi float [ %386, %315 ], [ %450, %408 ], [ %39, %469 ], [ %39, %503 ], [ %39, %492 ], [ %39, %498 ], [ %39, %496 ]
  %517 = phi float [ %387, %315 ], [ %451, %408 ], [ %40, %469 ], [ %40, %503 ], [ %40, %492 ], [ %40, %498 ], [ %40, %496 ]
  %518 = phi float [ %388, %315 ], [ %452, %408 ], [ %41, %469 ], [ %41, %503 ], [ %41, %492 ], [ %41, %498 ], [ %41, %496 ]
  %519 = phi float [ %389, %315 ], [ %453, %408 ], [ 1.000000e+00, %469 ], [ 1.000000e+00, %503 ], [ 1.000000e+00, %492 ], [ 1.000000e+00, %498 ], [ 1.000000e+00, %496 ]
  %520 = call float @dx.op.unary.f32(i32 7, float %512)  ; Saturate(value)
  %521 = fmul fast float %519, %205
  %522 = fmul fast float %521, %520
  br label %523

; <label>:523                                     ; preds = %511, %244
  %524 = phi float [ %516, %511 ], [ %39, %244 ]
  %525 = phi float [ %517, %511 ], [ %40, %244 ]
  %526 = phi float [ %518, %511 ], [ %41, %244 ]
  %527 = phi float [ %522, %511 ], [ %205, %244 ]
  %528 = phi float [ %513, %511 ], [ %27, %244 ]
  %529 = phi float [ %514, %511 ], [ %28, %244 ]
  %530 = phi float [ %515, %511 ], [ %29, %244 ]
  %531 = fmul fast float %528, %30
  %532 = fmul fast float %529, %30
  %533 = fmul fast float %530, %30
  %534 = fmul fast float %528, %36
  %535 = fmul fast float %529, %36
  %536 = fmul fast float %530, %36
  %537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %538 = extractvalue %dx.types.CBufRet.f32 %537, 2
  %539 = fptosi float %46 to i32
  %540 = sitofp i32 %539 to float
  %541 = fadd fast float %538, %540
  %542 = fmul fast float %541, 0x3FE3C6EF40000000
  %543 = frem fast float %50, 2.560000e+02
  %544 = frem fast float %51, 2.560000e+02
  %545 = fptoui float %543 to i32
  %546 = fptoui float %544 to i32
  %547 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %545, i32 %546, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = fadd fast float %548, %542
  %550 = call float @dx.op.unary.f32(i32 22, float %549)  ; Frc(value)
  %551 = and i32 %128, 1
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %612, label %553, !dx.controlflow.hints !62

; <label>:553                                     ; preds = %523
  %554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 2
  %556 = extractvalue %dx.types.ResRet.f32 %554, 3
  %557 = add i32 %125, 16
  %558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.f32 %558, 0
  %560 = extractvalue %dx.types.ResRet.f32 %558, 1
  %561 = extractvalue %dx.types.ResRet.f32 %558, 2
  %562 = add i32 %125, 32
  %563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = extractvalue %dx.types.ResRet.f32 %563, 1
  %566 = extractvalue %dx.types.ResRet.f32 %563, 2
  %567 = and i32 %128, 2
  %568 = icmp eq i32 %567, 0
  %569 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %570 = call float @dx.op.unary.f32(i32 25, float %569)  ; Rsqrt(value)
  %571 = fmul fast float %570, %33
  %572 = fmul fast float %570, %34
  %573 = fmul fast float %570, %35
  %574 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %575 = call float @dx.op.unary.f32(i32 25, float %574)  ; Rsqrt(value)
  %576 = fmul fast float %575, %85
  %577 = fmul fast float %575, %86
  %578 = fmul fast float %575, %87
  %579 = call float @dx.op.dot3.f32(i32 55, float %576, float %577, float %578, float %571, float %572, float %573)  ; Dot3(ax,ay,az,bx,by,bz)
  %580 = fmul fast float %579, %579
  %581 = fmul fast float %580, %555
  %582 = fadd fast float %581, %556
  %583 = call float @dx.op.unary.f32(i32 7, float %582)  ; Saturate(value)
  br i1 %568, label %584, label %594, !dx.controlflow.hints !63

; <label>:584                                     ; preds = %553
  %585 = extractvalue %dx.types.ResRet.f32 %554, 1
  %586 = extractvalue %dx.types.ResRet.f32 %554, 0
  %587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %588 = extractvalue %dx.types.CBufRet.f32 %587, 3
  %589 = fmul fast float %588, %574
  %590 = fsub fast float %586, %589
  %591 = fmul fast float %590, %585
  %592 = call float @dx.op.unary.f32(i32 7, float %591)  ; Saturate(value)
  %593 = fmul fast float %592, %583
  br label %594

; <label>:594                                     ; preds = %584, %553
  %595 = phi float [ %593, %584 ], [ %583, %553 ]
  %596 = fsub fast float %559, %564
  %597 = fsub fast float %560, %565
  %598 = fsub fast float %561, %566
  %599 = fmul fast float %595, %596
  %600 = fmul fast float %595, %597
  %601 = fmul fast float %595, %598
  %602 = fadd fast float %599, %564
  %603 = fadd fast float %600, %565
  %604 = fadd fast float %601, %566
  %605 = fmul fast float %602, %524
  %606 = fmul fast float %603, %525
  %607 = fmul fast float %604, %526
  %608 = fmul fast float %602, %531
  %609 = fmul fast float %603, %532
  %610 = fmul fast float %604, %533
  %611 = fmul fast float %595, %527
  br label %612

; <label>:612                                     ; preds = %594, %523
  %613 = phi float [ %605, %594 ], [ %524, %523 ]
  %614 = phi float [ %606, %594 ], [ %525, %523 ]
  %615 = phi float [ %607, %594 ], [ %526, %523 ]
  %616 = phi float [ %611, %594 ], [ %527, %523 ]
  %617 = phi float [ %608, %594 ], [ %531, %523 ]
  %618 = phi float [ %609, %594 ], [ %532, %523 ]
  %619 = phi float [ %610, %594 ], [ %533, %523 ]
  %620 = add i32 %22, 104
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = add i32 %622, 0
  %624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %624, %dx.types.Handle %47, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = extractvalue %dx.types.ResRet.f32 %625, 1
  %628 = extractvalue %dx.types.ResRet.f32 %625, 2
  %629 = add i32 %22, 56
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = and i32 %631, 255
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, 0x3F70101020000000
  %635 = lshr i32 %631, 8
  %636 = and i32 %635, 255
  %637 = uitofp i32 %636 to float
  %638 = fmul fast float %637, 0x3F70101020000000
  %639 = lshr i32 %631, 16
  %640 = and i32 %639, 255
  %641 = uitofp i32 %640 to float
  %642 = fmul fast float %641, 0x3F70101020000000
  %643 = add i32 %22, 108
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = add i32 %645, 0
  %647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %648 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %647, %dx.types.Handle %47, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = extractvalue %dx.types.ResRet.f32 %648, 1
  %651 = extractvalue %dx.types.ResRet.f32 %648, 2
  %652 = add i32 %22, 44
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = shl i32 %654, 4
  %656 = and i32 %655, 32752
  %657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %656)  ; LegacyF16ToF32(value)
  %658 = lshr i32 %654, 7
  %659 = and i32 %658, 32752
  %660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %659)  ; LegacyF16ToF32(value)
  %661 = lshr i32 %654, 22
  %662 = shl nuw nsw i32 %661, 5
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = fmul fast float %657, %649
  %665 = fmul fast float %660, %650
  %666 = fmul fast float %663, %651
  %667 = add i32 %22, 48
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = lshr i32 %669, 22
  %671 = shl nuw nsw i32 %670, 5
  %672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %671)  ; LegacyF16ToF32(value)
  %673 = fmul fast float %672, %664
  %674 = select i1 %108, float %673, float %664
  %675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %676 = extractvalue %dx.types.ResRet.f32 %675, 0
  %677 = extractvalue %dx.types.ResRet.f32 %675, 1
  %678 = extractvalue %dx.types.ResRet.f32 %675, 2
  %679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %680 = extractvalue %dx.types.CBufRet.f32 %679, 1
  %681 = fmul fast float %680, %676
  %682 = fmul fast float %680, %677
  %683 = fmul fast float %680, %678
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 0
  %686 = fmul fast float %674, %617
  %687 = fmul fast float %665, %618
  %688 = fmul fast float %666, %619
  %689 = call float @dx.op.dot3.f32(i32 55, float %686, float %687, float %688, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %690 = select i1 %108, float 0.000000e+00, float %686
  %691 = select i1 %108, float %689, float %687
  %692 = select i1 %108, float 0.000000e+00, float %688
  %693 = fmul fast float %534, %674
  %694 = fmul fast float %535, %665
  %695 = fmul fast float %536, %666
  %696 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = lshr i32 %697, 18
  %699 = uitofp i32 %698 to float
  %700 = fmul fast float %699, 0x3F4C00EBA0000000
  %701 = call float @dx.op.unary.f32(i32 21, float %700)  ; Exp(value)
  %702 = fadd fast float %701, -1.000000e+00
  %703 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %704 = extractvalue %dx.types.Dimensions %703, 0
  %705 = sitofp i32 %704 to float
  %706 = extractvalue %dx.types.Dimensions %703, 1
  %707 = sitofp i32 %706 to float
  %708 = fcmp fast oge float %206, %705
  %709 = fcmp fast oge float %207, %707
  %710 = or i1 %708, %709
  %711 = select i1 %710, float 0x4197782600000000, float %702
  %712 = icmp eq i32 %124, 3
  %713 = fcmp fast ogt float %46, %711
  %714 = and i1 %232, %713
  %715 = or i1 %712, %714
  %716 = icmp eq i32 %124, 2
  %717 = fcmp fast ole float %46, %711
  %718 = and i1 %716, %717
  %719 = or i1 %718, %715
  %720 = fmul fast float %693, %681
  %721 = fmul fast float %694, %682
  %722 = fmul fast float %695, %683
  %723 = fadd fast float %720, %690
  %724 = fadd fast float %691, %721
  %725 = fadd fast float %722, %692
  %726 = fmul fast float %723, %616
  %727 = fmul fast float %724, %616
  %728 = fmul fast float %725, %616
  %729 = and i32 %128, 1048576
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %822, label %731, !dx.controlflow.hints !64

; <label>:731                                     ; preds = %612
  %732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %733 = extractvalue %dx.types.CBufRet.f32 %732, 2
  %734 = extractvalue %dx.types.CBufRet.f32 %732, 3
  %735 = fmul fast float %733, %50
  %736 = fmul fast float %734, %51
  %737 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  %738 = call float @dx.op.unary.f32(i32 7, float %736)  ; Saturate(value)
  %739 = select i1 %719, i32 2, i32 0
  %740 = or i32 %739, 1
  %741 = uitofp i32 %740 to float
  %742 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %737, float %738, float %741, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  %744 = extractvalue %dx.types.ResRet.f32 %742, 1
  %745 = extractvalue %dx.types.ResRet.f32 %742, 2
  %746 = extractvalue %dx.types.ResRet.f32 %742, 3
  %747 = add nuw nsw i32 %739, 2
  %748 = uitofp i32 %747 to float
  %749 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %737, float %738, float %748, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = extractvalue %dx.types.ResRet.f32 %749, 1
  %752 = extractvalue %dx.types.ResRet.f32 %749, 2
  %753 = extractvalue %dx.types.ResRet.f32 %749, 3
  %754 = call float @dx.op.binary.f32(i32 35, float %744, float %745)  ; FMax(a,b)
  %755 = call float @dx.op.binary.f32(i32 35, float %743, float %754)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 35, float %755, float %746)  ; FMax(a,b)
  %757 = call float @dx.op.binary.f32(i32 36, float %751, float %752)  ; FMin(a,b)
  %758 = call float @dx.op.binary.f32(i32 36, float %750, float %757)  ; FMin(a,b)
  %759 = call float @dx.op.binary.f32(i32 36, float %758, float %753)  ; FMin(a,b)
  %760 = fmul fast float %756, 2.550000e+02
  %761 = fadd fast float %760, 0x3F70101020000000
  %762 = fptoui float %761 to i32
  %763 = fmul fast float %759, 2.550000e+02
  %764 = fadd fast float %763, 0x3F70101020000000
  %765 = fptoui float %764 to i32
  %766 = icmp ult i32 %762, %765
  br i1 %766, label %767, label %815

; <label>:767                                     ; preds = %731
  %768 = fcmp fast ogt float %45, 9.843750e-01
  %769 = fadd fast float %46, -4.000000e+00
  %770 = select i1 %768, float -4.000000e+00, float %769
  %771 = call float @dx.op.binary.f32(i32 35, float %770, float 0.000000e+00)  ; FMax(a,b)
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 0
  %774 = fadd fast float %773, %771
  %775 = extractvalue %dx.types.CBufRet.f32 %772, 2
  %776 = fmul fast float %774, %775
  %777 = call float @dx.op.unary.f32(i32 23, float %776)  ; Log(value)
  %778 = extractvalue %dx.types.CBufRet.f32 %772, 3
  %779 = fmul fast float %778, %777
  %780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %781 = extractvalue %dx.types.CBufRet.f32 %780, 2
  %782 = fmul fast float %779, %781
  %783 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  %784 = uitofp i32 %762 to float
  %785 = uitofp i32 %765 to float
  %786 = fadd fast float %784, 5.000000e-01
  %787 = fadd fast float %785, 5.000000e-01
  %788 = fmul fast float %781, %786
  %789 = fmul fast float %781, %787
  %790 = fadd fast float %788, 0x3F0FFB4800000000
  %791 = fadd fast float %789, 0xBF0FFB4800000000
  %792 = call float @dx.op.binary.f32(i32 35, float %783, float %790)  ; FMax(a,b)
  %793 = call float @dx.op.binary.f32(i32 36, float %792, float %791)  ; FMin(a,b)
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 1
  %796 = extractvalue %dx.types.CBufRet.f32 %794, 2
  %797 = extractvalue %dx.types.CBufRet.f32 %794, 0
  %798 = select i1 %719, float %797, float 0.000000e+00
  %799 = fmul fast float %795, %793
  %800 = fadd fast float %798, %799
  %801 = fadd fast float %798, %796
  %802 = fsub fast float %795, %796
  %803 = fadd fast float %802, %798
  %804 = call float @dx.op.binary.f32(i32 35, float %800, float %801)  ; FMax(a,b)
  %805 = call float @dx.op.binary.f32(i32 36, float %804, float %803)  ; FMin(a,b)
  %806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %737, float %738, float %805, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 0
  %808 = extractvalue %dx.types.ResRet.f32 %806, 1
  %809 = extractvalue %dx.types.ResRet.f32 %806, 2
  %810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %811 = extractvalue %dx.types.CBufRet.f32 %810, 1
  %812 = fmul fast float %811, %807
  %813 = fmul fast float %811, %808
  %814 = fmul fast float %811, %809
  br label %815

; <label>:815                                     ; preds = %767, %731
  %816 = phi float [ %812, %767 ], [ 1.000000e+00, %731 ]
  %817 = phi float [ %813, %767 ], [ 1.000000e+00, %731 ]
  %818 = phi float [ %814, %767 ], [ 1.000000e+00, %731 ]
  %819 = fmul fast float %816, %726
  %820 = fmul fast float %817, %727
  %821 = fmul fast float %818, %728
  br label %822

; <label>:822                                     ; preds = %815, %612
  %823 = phi float [ %819, %815 ], [ %726, %612 ]
  %824 = phi float [ %820, %815 ], [ %727, %612 ]
  %825 = phi float [ %821, %815 ], [ %728, %612 ]
  %826 = and i32 %128, 2097152
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %832, label %828, !dx.controlflow.hints !65

; <label>:828                                     ; preds = %822
  %829 = add i32 %125, 192
  %830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  br label %835

; <label>:832                                     ; preds = %822
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 3
  br label %835

; <label>:835                                     ; preds = %832, %828
  %836 = phi float [ %831, %828 ], [ %834, %832 ]
  %837 = fmul fast float %616, %613
  %838 = fmul fast float %837, %626
  %839 = fmul fast float %634, %634
  %840 = fmul fast float %839, %838
  %841 = fmul fast float %840, %685
  %842 = fmul fast float %841, %681
  %843 = fmul fast float %616, %614
  %844 = fmul fast float %843, %627
  %845 = fmul fast float %638, %638
  %846 = fmul fast float %845, %844
  %847 = fmul fast float %846, %685
  %848 = fmul fast float %847, %682
  %849 = fmul fast float %616, %615
  %850 = fmul fast float %849, %628
  %851 = fmul fast float %642, %642
  %852 = fmul fast float %851, %850
  %853 = fmul fast float %852, %685
  %854 = fmul fast float %853, %683
  br i1 %714, label %855, label %942

; <label>:855                                     ; preds = %835
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %858 = extractvalue %dx.types.CBufRet.f32 %856, 3
  %859 = fmul fast float %857, %50
  %860 = fmul fast float %858, %51
  %861 = call float @dx.op.unary.f32(i32 7, float %859)  ; Saturate(value)
  %862 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  %863 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %861, float %862, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  %865 = extractvalue %dx.types.ResRet.f32 %863, 1
  %866 = extractvalue %dx.types.ResRet.f32 %863, 2
  %867 = extractvalue %dx.types.ResRet.f32 %863, 3
  %868 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %861, float %862, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = extractvalue %dx.types.ResRet.f32 %868, 1
  %871 = extractvalue %dx.types.ResRet.f32 %868, 2
  %872 = extractvalue %dx.types.ResRet.f32 %868, 3
  %873 = call float @dx.op.binary.f32(i32 35, float %865, float %866)  ; FMax(a,b)
  %874 = call float @dx.op.binary.f32(i32 35, float %864, float %873)  ; FMax(a,b)
  %875 = call float @dx.op.binary.f32(i32 35, float %874, float %867)  ; FMax(a,b)
  %876 = call float @dx.op.binary.f32(i32 36, float %870, float %871)  ; FMin(a,b)
  %877 = call float @dx.op.binary.f32(i32 36, float %869, float %876)  ; FMin(a,b)
  %878 = call float @dx.op.binary.f32(i32 36, float %877, float %872)  ; FMin(a,b)
  %879 = fmul fast float %875, 2.550000e+02
  %880 = fadd fast float %879, 0x3F70101020000000
  %881 = fptoui float %880 to i32
  %882 = fmul fast float %878, 2.550000e+02
  %883 = fadd fast float %882, 0x3F70101020000000
  %884 = fptoui float %883 to i32
  %885 = icmp ult i32 %881, %884
  br i1 %885, label %886, label %928

; <label>:886                                     ; preds = %855
  %887 = fcmp fast ogt float %45, 9.843750e-01
  %888 = fadd fast float %46, -4.000000e+00
  %889 = select i1 %887, float -4.000000e+00, float %888
  %890 = call float @dx.op.binary.f32(i32 35, float %889, float 0.000000e+00)  ; FMax(a,b)
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = fadd fast float %892, %890
  %894 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %895 = fmul fast float %893, %894
  %896 = call float @dx.op.unary.f32(i32 23, float %895)  ; Log(value)
  %897 = extractvalue %dx.types.CBufRet.f32 %891, 3
  %898 = fmul fast float %897, %896
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %901 = fmul fast float %898, %900
  %902 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %903 = uitofp i32 %881 to float
  %904 = uitofp i32 %884 to float
  %905 = fadd fast float %903, 5.000000e-01
  %906 = fadd fast float %904, 5.000000e-01
  %907 = fmul fast float %900, %905
  %908 = fmul fast float %900, %906
  %909 = fadd fast float %907, 0x3F0FFB4800000000
  %910 = fadd fast float %908, 0xBF0FFB4800000000
  %911 = call float @dx.op.binary.f32(i32 35, float %902, float %909)  ; FMax(a,b)
  %912 = call float @dx.op.binary.f32(i32 36, float %911, float %910)  ; FMin(a,b)
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 1
  %915 = extractvalue %dx.types.CBufRet.f32 %913, 2
  %916 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %917 = fmul fast float %914, %912
  %918 = fadd fast float %916, %917
  %919 = fadd fast float %916, %915
  %920 = fsub fast float %914, %915
  %921 = fadd fast float %920, %916
  %922 = call float @dx.op.binary.f32(i32 35, float %918, float %919)  ; FMax(a,b)
  %923 = call float @dx.op.binary.f32(i32 36, float %922, float %921)  ; FMin(a,b)
  %924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %861, float %862, float %923, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  %926 = extractvalue %dx.types.ResRet.f32 %924, 1
  %927 = extractvalue %dx.types.ResRet.f32 %924, 2
  br label %928

; <label>:928                                     ; preds = %886, %855
  %929 = phi float [ %925, %886 ], [ 1.000000e+00, %855 ]
  %930 = phi float [ %926, %886 ], [ 1.000000e+00, %855 ]
  %931 = phi float [ %927, %886 ], [ 1.000000e+00, %855 ]
  %932 = call float @dx.op.dot3.f32(i32 55, float %929, float %930, float %931, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %933 = select i1 %108, float %932, float %929
  %934 = select i1 %108, float %932, float %930
  %935 = select i1 %108, float 1.000000e+00, float %931
  %936 = fmul fast float %933, %842
  %937 = fmul fast float %934, %848
  %938 = fmul fast float %935, %854
  %939 = fmul fast float %933, %823
  %940 = fmul fast float %934, %824
  %941 = fmul fast float %935, %825
  br label %942

; <label>:942                                     ; preds = %928, %835
  %943 = phi float [ %711, %928 ], [ %46, %835 ]
  %944 = phi float [ %936, %928 ], [ %842, %835 ]
  %945 = phi float [ %937, %928 ], [ %848, %835 ]
  %946 = phi float [ %938, %928 ], [ %854, %835 ]
  %947 = phi float [ %939, %928 ], [ %823, %835 ]
  %948 = phi float [ %940, %928 ], [ %824, %835 ]
  %949 = phi float [ %941, %928 ], [ %825, %835 ]
  br i1 %719, label %1196, label %950

; <label>:950                                     ; preds = %942
  %951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %952 = extractvalue %dx.types.ResRet.f32 %951, 0
  %953 = extractvalue %dx.types.ResRet.f32 %951, 1
  %954 = extractvalue %dx.types.ResRet.f32 %951, 2
  %955 = call float @dx.op.dot3.f32(i32 55, float %952, float %953, float %954, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %956 = select i1 %108, float %955, float %952
  %957 = select i1 %108, float %955, float %953
  %958 = select i1 %108, float 1.000000e+00, float %954
  %959 = fmul fast float %956, %944
  %960 = fmul fast float %957, %945
  %961 = fmul fast float %958, %946
  %962 = fmul fast float %956, %947
  %963 = fmul fast float %957, %948
  %964 = fmul fast float %958, %949
  %965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.i32 %965, 0
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %1196, label %968, !dx.controlflow.hints !66

; <label>:968                                     ; preds = %950
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 2
  %971 = extractvalue %dx.types.CBufRet.f32 %969, 3
  %972 = fmul fast float %970, %50
  %973 = fmul fast float %971, %51
  %974 = fmul fast float %972, 2.000000e+00
  %975 = fmul fast float %973, 2.000000e+00
  %976 = fsub fast float 1.000000e+00, %974
  %977 = fsub fast float 1.000000e+00, %975
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 0
  %980 = extractvalue %dx.types.CBufRet.f32 %978, 1
  %981 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %982 = fmul fast float %976, %979
  %983 = fmul fast float %976, %980
  %984 = fmul fast float %976, %981
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 0
  %987 = extractvalue %dx.types.CBufRet.f32 %985, 1
  %988 = extractvalue %dx.types.CBufRet.f32 %985, 2
  %989 = fmul fast float %977, %986
  %990 = fmul fast float %977, %987
  %991 = fmul fast float %977, %988
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %995 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %996 = fadd fast float %989, %993
  %997 = fadd fast float %996, %982
  %998 = fadd fast float %990, %994
  %999 = fadd fast float %998, %983
  %1000 = fadd fast float %991, %995
  %1001 = fadd fast float %1000, %984
  %1002 = fmul fast float %997, %943
  %1003 = fmul fast float %999, %943
  %1004 = fmul fast float %1001, %943
  %1005 = fmul fast float %1002, %1002
  %1006 = fmul fast float %1003, %1003
  %1007 = fadd fast float %1005, %1006
  %1008 = fmul fast float %1004, %1004
  %1009 = fadd fast float %1007, %1008
  %1010 = call float @dx.op.unary.f32(i32 24, float %1009)  ; Sqrt(value)
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = fsub fast float %1010, %1012
  %1014 = extractvalue %dx.types.CBufRet.f32 %1011, 2
  %1015 = fmul fast float %1013, %1014
  %1016 = call float @dx.op.unary.f32(i32 7, float %1015)  ; Saturate(value)
  %1017 = fadd fast float %1016, -5.000000e-01
  %1018 = fmul fast float %1017, 2.000000e+00
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 2
  %1021 = call float @dx.op.binary.f32(i32 36, float %1020, float %1018)  ; FMin(a,b)
  %1022 = fsub fast float -0.000000e+00, %1020
  %1023 = fcmp fast ogt float %1021, %1022
  br i1 %1023, label %1024, label %1196, !dx.controlflow.hints !67

; <label>:1024                                    ; preds = %968
  %1025 = fmul fast float %1021, 5.000000e-01
  %1026 = fadd fast float %1025, 5.000000e-01
  %1027 = call float @dx.op.unary.f32(i32 22, float %1026)  ; Frc(value)
  %1028 = call float @dx.op.unary.f32(i32 27, float %1027)  ; Round_ni(value)
  %1029 = call float @dx.op.unary.f32(i32 22, float %1027)  ; Frc(value)
  %1030 = fmul fast float %1029, 2.000000e+00
  %1031 = fadd fast float %1030, -1.000000e+00
  %1032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %972, float %973, float %1028, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1036 = extractvalue %dx.types.ResRet.f32 %1032, 3
  %1037 = fadd fast float %1033, -5.000000e-01
  %1038 = fadd fast float %1035, -5.000000e-01
  %1039 = fmul fast float %1037, 0xBFD5555560000000
  %1040 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1038, float %1039)  ; FMad(a,b,c)
  %1041 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1034, float 0.000000e+00)  ; FMad(a,b,c)
  %1042 = fadd fast float %1041, %1036
  %1043 = fmul fast float %1037, -7.500000e-01
  %1044 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1038, float %1043)  ; FMad(a,b,c)
  %1045 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1034, float 0.000000e+00)  ; FMad(a,b,c)
  %1046 = fadd fast float %1045, %1036
  %1047 = call float @dx.op.binary.f32(i32 35, float %1040, float -1.000000e+00)  ; FMax(a,b)
  %1048 = call float @dx.op.binary.f32(i32 35, float %1042, float -1.000000e+00)  ; FMax(a,b)
  %1049 = call float @dx.op.binary.f32(i32 35, float %1044, float -1.000000e+00)  ; FMax(a,b)
  %1050 = call float @dx.op.binary.f32(i32 35, float %1046, float -1.000000e+00)  ; FMax(a,b)
  %1051 = call float @dx.op.binary.f32(i32 36, float %1047, float 1.000000e+00)  ; FMin(a,b)
  %1052 = call float @dx.op.binary.f32(i32 36, float %1048, float 1.000000e+00)  ; FMin(a,b)
  %1053 = call float @dx.op.binary.f32(i32 36, float %1049, float 1.000000e+00)  ; FMin(a,b)
  %1054 = call float @dx.op.binary.f32(i32 36, float %1050, float 1.000000e+00)  ; FMin(a,b)
  %1055 = fcmp fast olt float %1051, 0x3FEFFF8020000000
  br i1 %1055, label %1056, label %1171, !dx.controlflow.hints !68

; <label>:1056                                    ; preds = %1024
  %1057 = extractvalue %dx.types.CBufRet.f32 %1019, 3
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.CBufRet.f32 %1058, 2
  %1062 = extractvalue %dx.types.CBufRet.f32 %1058, 3
  %1063 = fsub fast float %1059, %1051
  %1064 = fsub fast float %1060, %1052
  %1065 = fsub fast float %1061, %1053
  %1066 = fsub fast float %1062, %1054
  %1067 = fmul fast float %1063, %1057
  %1068 = fmul fast float %1064, %1057
  %1069 = fmul fast float %1065, %1057
  %1070 = fmul fast float %1066, %1057
  %1071 = fadd fast float %1067, %1051
  %1072 = fadd fast float %1068, %1052
  %1073 = fsub fast float -0.000000e+00, %1072
  %1074 = fadd fast float %1069, %1053
  %1075 = fadd fast float %1070, %1054
  %1076 = fmul fast float %1071, %1071
  %1077 = fsub fast float %1072, %1076
  %1078 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1077)  ; FMax(a,b)
  %1079 = fdiv fast float 1.000000e+00, %1078
  %1080 = fmul fast float %1072, %1071
  %1081 = fsub fast float %1074, %1080
  %1082 = fsub fast float %1031, %1071
  %1083 = fmul fast float %1031, %1031
  %1084 = fsub fast float %1083, %1072
  %1085 = fmul fast float %1082, %1079
  %1086 = fmul fast float %1085, %1081
  %1087 = fsub fast float %1084, %1086
  %1088 = fmul fast float %1072, %1072
  %1089 = fsub fast float %1075, %1088
  %1090 = fmul fast float %1081, %1081
  %1091 = fmul fast float %1090, %1079
  %1092 = fsub fast float %1089, %1091
  %1093 = fdiv fast float %1087, %1092
  %1094 = fmul fast float %1081, %1093
  %1095 = fsub fast float %1082, %1094
  %1096 = fmul fast float %1095, %1079
  %1097 = fmul fast float %1096, %1071
  %1098 = fsub fast float 1.000000e+00, %1097
  %1099 = fmul fast float %1072, %1093
  %1100 = fsub fast float %1098, %1099
  %1101 = fmul fast float %1096, %1096
  %1102 = fmul fast float %1093, 4.000000e+00
  %1103 = fmul fast float %1102, %1100
  %1104 = fsub fast float %1101, %1103
  %1105 = call float @dx.op.unary.f32(i32 24, float %1104)  ; Sqrt(value)
  %1106 = fcmp fast oge float %1096, 0.000000e+00
  %1107 = fsub fast float -0.000000e+00, %1105
  %1108 = select i1 %1106, float %1107, float %1105
  %1109 = fsub fast float %1108, %1096
  %1110 = fdiv fast float %1109, %1093
  %1111 = fdiv fast float %1100, %1109
  %1112 = fmul fast float %1110, 5.000000e-01
  %1113 = fmul fast float %1111, 2.000000e+00
  %1114 = select i1 %1106, float %1112, float %1113
  %1115 = select i1 %1106, float %1113, float %1112
  %1116 = call float @dx.op.binary.f32(i32 35, float %1114, float %1115)  ; FMax(a,b)
  %1117 = call float @dx.op.binary.f32(i32 36, float %1114, float %1115)  ; FMin(a,b)
  %1118 = fcmp fast ogt float %1031, %1117
  br i1 %1118, label %1119, label %1129

; <label>:1119                                    ; preds = %1056
  %1120 = fsub fast float %1031, %1117
  %1121 = fsub fast float %1116, %1117
  %1122 = fmul fast float %1120, %1121
  %1123 = fmul fast float %1116, %1031
  %1124 = fadd fast float %1116, %1031
  %1125 = fmul fast float %1124, %1071
  %1126 = fadd fast float %1123, %1072
  %1127 = fsub fast float %1126, %1125
  %1128 = fdiv fast float %1127, %1122
  br label %1129

; <label>:1129                                    ; preds = %1119, %1056
  %1130 = phi float [ %1128, %1119 ], [ 0.000000e+00, %1056 ]
  %1131 = fcmp fast ogt float %1031, %1116
  %1132 = fsub fast float %1031, %1116
  br i1 %1131, label %1133, label %1143

; <label>:1133                                    ; preds = %1129
  %1134 = fsub fast float %1116, %1117
  %1135 = fmul fast float %1134, %1132
  %1136 = fmul fast float %1117, %1031
  %1137 = fadd fast float %1117, %1031
  %1138 = fmul fast float %1137, %1071
  %1139 = fsub fast float %1073, %1136
  %1140 = fadd fast float %1139, %1138
  %1141 = fdiv fast float %1140, %1135
  %1142 = fadd fast float %1141, %1130
  br label %1143

; <label>:1143                                    ; preds = %1133, %1129
  %1144 = phi float [ %1142, %1133 ], [ %1130, %1129 ]
  %1145 = fsub fast float %1031, %1117
  %1146 = fmul fast float %1145, %1132
  %1147 = fmul fast float %1117, %1116
  %1148 = fadd fast float %1117, %1116
  %1149 = fmul fast float %1148, %1071
  %1150 = fadd fast float %1147, %1072
  %1151 = fsub fast float %1150, %1149
  %1152 = fdiv fast float %1151, %1146
  %1153 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  %1154 = fcmp fast oeq float %836, 0.000000e+00
  %1155 = extractvalue %dx.types.CBufRet.f32 %1019, 0
  %1156 = fcmp fast oeq float %1155, 0.000000e+00
  %1157 = or i1 %1154, %1156
  %1158 = fmul fast float %1155, 2.000000e+00
  %1159 = fadd fast float %1020, %1021
  %1160 = fdiv fast float %1159, %1158
  %1161 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1162 = fmul fast float %1161, 2.000000e+00
  %1163 = fsub fast float 3.000000e+00, %1162
  %1164 = fmul fast float %1161, %1161
  %1165 = fmul fast float %1164, %1163
  %1166 = select i1 %1157, float 1.000000e+00, float %1165
  %1167 = fmul fast float %1152, %836
  %1168 = fadd fast float %1153, %1167
  %1169 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  %1170 = fmul fast float %1166, %1169
  br label %1171

; <label>:1171                                    ; preds = %1143, %1024
  %1172 = phi float [ %1170, %1143 ], [ 0.000000e+00, %1024 ]
  %1173 = fsub fast float 1.000000e+00, %1172
  %1174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %972, float %973, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.i32 %1176, 2
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1184, label %1179

; <label>:1179                                    ; preds = %1171
  %1180 = call float @dx.op.unary.f32(i32 7, float %1172)  ; Saturate(value)
  %1181 = fadd fast float %1175, -1.000000e+00
  %1182 = fmul fast float %1180, %1181
  %1183 = fadd fast float %1182, 1.000000e+00
  br label %1184

; <label>:1184                                    ; preds = %1179, %1171
  %1185 = phi float [ %1183, %1179 ], [ %1173, %1171 ]
  %1186 = call float @dx.op.binary.f32(i32 35, float %1175, float %1185)  ; FMax(a,b)
  %1187 = call float @dx.op.dot3.f32(i32 55, float %1186, float %1186, float %1186, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1188 = select i1 %108, float %1187, float %1186
  %1189 = select i1 %108, float 1.000000e+00, float %1186
  %1190 = fmul fast float %1188, %959
  %1191 = fmul fast float %1188, %960
  %1192 = fmul fast float %1189, %961
  %1193 = fmul fast float %1188, %962
  %1194 = fmul fast float %1188, %963
  %1195 = fmul fast float %1189, %964
  br label %1196

; <label>:1196                                    ; preds = %1184, %968, %950, %942
  %1197 = phi float [ %944, %942 ], [ %959, %950 ], [ %1190, %1184 ], [ %959, %968 ]
  %1198 = phi float [ %945, %942 ], [ %960, %950 ], [ %1191, %1184 ], [ %960, %968 ]
  %1199 = phi float [ %946, %942 ], [ %961, %950 ], [ %1192, %1184 ], [ %961, %968 ]
  %1200 = phi float [ %947, %942 ], [ %962, %950 ], [ %1193, %1184 ], [ %962, %968 ]
  %1201 = phi float [ %948, %942 ], [ %963, %950 ], [ %1194, %1184 ], [ %963, %968 ]
  %1202 = phi float [ %949, %942 ], [ %964, %950 ], [ %1195, %1184 ], [ %964, %968 ]
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 2
  %1205 = extractvalue %dx.types.CBufRet.f32 %1203, 3
  %1206 = fmul fast float %1204, %50
  %1207 = fmul fast float %1205, %51
  %1208 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1209 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1210 = select i1 %719, i32 2, i32 0
  %1211 = or i32 %1210, 1
  %1212 = uitofp i32 %1211 to float
  %1213 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1208, float %1209, float %1212, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = extractvalue %dx.types.ResRet.f32 %1213, 1
  %1216 = extractvalue %dx.types.ResRet.f32 %1213, 2
  %1217 = extractvalue %dx.types.ResRet.f32 %1213, 3
  %1218 = add nuw nsw i32 %1210, 2
  %1219 = uitofp i32 %1218 to float
  %1220 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1208, float %1209, float %1219, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.ResRet.f32 %1220, 1
  %1223 = extractvalue %dx.types.ResRet.f32 %1220, 2
  %1224 = extractvalue %dx.types.ResRet.f32 %1220, 3
  %1225 = call float @dx.op.binary.f32(i32 35, float %1215, float %1216)  ; FMax(a,b)
  %1226 = call float @dx.op.binary.f32(i32 35, float %1214, float %1225)  ; FMax(a,b)
  %1227 = call float @dx.op.binary.f32(i32 35, float %1226, float %1217)  ; FMax(a,b)
  %1228 = call float @dx.op.binary.f32(i32 36, float %1222, float %1223)  ; FMin(a,b)
  %1229 = call float @dx.op.binary.f32(i32 36, float %1221, float %1228)  ; FMin(a,b)
  %1230 = call float @dx.op.binary.f32(i32 36, float %1229, float %1224)  ; FMin(a,b)
  %1231 = fmul fast float %1227, 2.550000e+02
  %1232 = fadd fast float %1231, 0x3F70101020000000
  %1233 = fptoui float %1232 to i32
  %1234 = fmul fast float %1230, 2.550000e+02
  %1235 = fadd fast float %1234, 0x3F70101020000000
  %1236 = fptoui float %1235 to i32
  %1237 = icmp ult i32 %1233, %1236
  br i1 %1237, label %1238, label %1281

; <label>:1238                                    ; preds = %1196
  %1239 = fcmp fast ogt float %45, 9.843750e-01
  %1240 = fadd fast float %943, -4.000000e+00
  %1241 = select i1 %1239, float -4.000000e+00, float %1240
  %1242 = call float @dx.op.binary.f32(i32 35, float %1241, float 0.000000e+00)  ; FMax(a,b)
  %1243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.f32 %1243, 0
  %1245 = fadd fast float %1244, %1242
  %1246 = extractvalue %dx.types.CBufRet.f32 %1243, 2
  %1247 = fmul fast float %1245, %1246
  %1248 = call float @dx.op.unary.f32(i32 23, float %1247)  ; Log(value)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1243, 3
  %1250 = fmul fast float %1249, %1248
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1253 = fmul fast float %1250, %1252
  %1254 = call float @dx.op.unary.f32(i32 7, float %1253)  ; Saturate(value)
  %1255 = uitofp i32 %1233 to float
  %1256 = uitofp i32 %1236 to float
  %1257 = fadd fast float %1255, 5.000000e-01
  %1258 = fadd fast float %1256, 5.000000e-01
  %1259 = fmul fast float %1252, %1257
  %1260 = fmul fast float %1252, %1258
  %1261 = fadd fast float %1259, 0x3F0FFB4800000000
  %1262 = fadd fast float %1260, 0xBF0FFB4800000000
  %1263 = call float @dx.op.binary.f32(i32 35, float %1254, float %1261)  ; FMax(a,b)
  %1264 = call float @dx.op.binary.f32(i32 36, float %1263, float %1262)  ; FMin(a,b)
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 1
  %1267 = extractvalue %dx.types.CBufRet.f32 %1265, 2
  %1268 = extractvalue %dx.types.CBufRet.f32 %1265, 0
  %1269 = select i1 %719, float %1268, float 0.000000e+00
  %1270 = fmul fast float %1266, %1264
  %1271 = fadd fast float %1269, %1270
  %1272 = fadd fast float %1269, %1267
  %1273 = fsub fast float %1266, %1267
  %1274 = fadd fast float %1273, %1269
  %1275 = call float @dx.op.binary.f32(i32 35, float %1271, float %1272)  ; FMax(a,b)
  %1276 = call float @dx.op.binary.f32(i32 36, float %1275, float %1274)  ; FMin(a,b)
  %1277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1208, float %1209, float %1276, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.ResRet.f32 %1277, 1
  %1280 = extractvalue %dx.types.ResRet.f32 %1277, 2
  br label %1281

; <label>:1281                                    ; preds = %1238, %1196
  %1282 = phi float [ %1278, %1238 ], [ 1.000000e+00, %1196 ]
  %1283 = phi float [ %1279, %1238 ], [ 1.000000e+00, %1196 ]
  %1284 = phi float [ %1280, %1238 ], [ 1.000000e+00, %1196 ]
  %1285 = call float @dx.op.dot3.f32(i32 55, float %1282, float %1283, float %1284, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1286 = select i1 %108, float %1285, float %1282
  %1287 = select i1 %108, float %1285, float %1283
  %1288 = fadd fast float %1200, %1197
  %1289 = fmul fast float %1286, %1288
  %1290 = fadd fast float %1201, %1198
  %1291 = fmul fast float %1287, %1290
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  br i1 %108, label %1294, label %1297

; <label>:1294                                    ; preds = %1281
  %1295 = fadd fast float %1289, %1291
  %1296 = fmul fast float %1293, %1295
  br label %1308

; <label>:1297                                    ; preds = %1281
  %1298 = fadd fast float %1202, %1199
  %1299 = fmul fast float %1284, %1298
  %1300 = fmul fast float %1293, %1289
  %1301 = fmul fast float %1293, %1291
  %1302 = fmul fast float %1299, %1293
  %1303 = call float @dx.op.binary.f32(i32 35, float %1301, float %1302)  ; FMax(a,b)
  %1304 = call float @dx.op.binary.f32(i32 35, float %1300, float %1303)  ; FMax(a,b)
  %1305 = call float @dx.op.binary.f32(i32 35, float %1304, float 0.000000e+00)  ; FMax(a,b)
  %1306 = fcmp fast ugt float %1305, 0x3F10000000000000
  br i1 %1306, label %1308, label %1307

; <label>:1307                                    ; preds = %1297
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1308

; <label>:1308                                    ; preds = %1307, %1297, %1294
  %1309 = phi float [ %1296, %1294 ], [ %1300, %1307 ], [ %1300, %1297 ]
  %1310 = phi float [ 0.000000e+00, %1294 ], [ %1301, %1307 ], [ %1301, %1297 ]
  %1311 = phi float [ 0.000000e+00, %1294 ], [ %1302, %1307 ], [ %1302, %1297 ]
  %1312 = fadd fast float %550, 0x3FE3C6EF40000000
  %1313 = call float @dx.op.unary.f32(i32 22, float %1312)  ; Frc(value)
  %1314 = call float @dx.op.unary.f32(i32 23, float %1309)  ; Log(value)
  %1315 = fadd fast float %1314, -7.000000e+00
  %1316 = call float @dx.op.unary.f32(i32 21, float %1315)  ; Exp(value)
  %1317 = fmul fast float %1313, 2.000000e+00
  %1318 = fadd fast float %1317, -1.000000e+00
  %1319 = fmul fast float %1316, %1318
  %1320 = fcmp fast ogt float %1309, 0.000000e+00
  %1321 = select i1 %1320, float %1319, float 0.000000e+00
  %1322 = fadd fast float %1321, %1309
  %1323 = fadd fast float %550, 0x3FF3C6EF40000000
  %1324 = call float @dx.op.unary.f32(i32 22, float %1323)  ; Frc(value)
  %1325 = call float @dx.op.unary.f32(i32 23, float %1310)  ; Log(value)
  %1326 = fadd fast float %1325, -7.000000e+00
  %1327 = call float @dx.op.unary.f32(i32 21, float %1326)  ; Exp(value)
  %1328 = fmul fast float %1324, 2.000000e+00
  %1329 = fadd fast float %1328, -1.000000e+00
  %1330 = fmul fast float %1327, %1329
  %1331 = fcmp fast ogt float %1310, 0.000000e+00
  %1332 = select i1 %1331, float %1330, float 0.000000e+00
  %1333 = fadd fast float %1332, %1310
  %1334 = fadd fast float %550, 0x3FFDAA66E0000000
  %1335 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1336 = call float @dx.op.unary.f32(i32 23, float %1311)  ; Log(value)
  %1337 = fadd fast float %1336, -6.000000e+00
  %1338 = call float @dx.op.unary.f32(i32 21, float %1337)  ; Exp(value)
  %1339 = fmul fast float %1335, 2.000000e+00
  %1340 = fadd fast float %1339, -1.000000e+00
  %1341 = fmul fast float %1338, %1340
  %1342 = fcmp fast ogt float %1311, 0.000000e+00
  %1343 = select i1 %1342, float %1341, float 0.000000e+00
  %1344 = fadd fast float %1343, %1311
  %1345 = select i1 %108, float %1310, float %1333
  %1346 = select i1 %108, float %1311, float %1344
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1347 = call float @dx.op.binary.f32(i32 36, float %1322, float 3.225500e+04)  ; FMin(a,b)
  %1348 = call float @dx.op.binary.f32(i32 36, float %1345, float 3.225500e+04)  ; FMin(a,b)
  %1349 = call float @dx.op.binary.f32(i32 36, float %1346, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1347)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1348)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1349)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[33 x i32] [i32 31, i32 8, i32 7, i32 7, i32 7, i32 7, i32 1, i32 3, i32 4, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !57}
!35 = !{!36, !53, null}
!36 = !{!37, !40, !41, !43, !45, !47, !49, !50, !52}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !39}
!41 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !42}
!42 = !{i32 3, i32 3}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 3, i8 0, !39}
!44 = !{i32 3}
!45 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !46, i8 3, i32 1, i8 2, i32 4, i8 0, !42}
!46 = !{i32 5}
!47 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 5, i8 0, !39}
!48 = !{i32 8}
!49 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 6, i8 0, !39}
!50 = !{i32 7, !"COLOR", i8 5, i8 0, !44, i8 1, i32 1, i8 3, i32 7, i8 0, !51}
!51 = !{i32 3, i32 5}
!52 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!53 = !{!54, !55}
!54 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!55 = !{i32 1, !"SV_Target", i8 9, i8 16, !56, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!56 = !{i32 1}
!57 = !{i32 0, i64 24}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}

