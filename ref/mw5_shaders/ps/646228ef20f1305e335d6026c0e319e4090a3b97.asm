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
; COLOR                    3   xyz         7     NONE    uint   xyz 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 5a5d6c4e4b1e760ad1cd30c251b5f804
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
; Number of inputs: 31, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24, 25, 26, 27, 28, 29, 30 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 29, 30 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
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
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %49 = fmul fast float %48, %41
  %50 = fmul fast float %48, %42
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
  %84 = fmul fast float %79, %44
  %85 = fmul fast float %81, %44
  %86 = fmul fast float %83, %44
  %87 = bitcast i32 %22 to float
  %88 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %89 = extractvalue %dx.types.Dimensions %88, 0
  %90 = sitofp i32 %89 to float
  %91 = extractvalue %dx.types.Dimensions %88, 1
  %92 = sitofp i32 %91 to float
  %93 = fmul fast float %52, %49
  %94 = fmul fast float %53, %50
  %95 = fmul fast float %93, %90
  %96 = fmul fast float %94, %92
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %99 = fsub fast float -0.000000e+00, %98
  %100 = fptoui float %99 to i32
  %101 = fptoui float %95 to i32
  %102 = fptoui float %96 to i32
  %103 = and i32 %100, 31
  %104 = lshr i32 %101, %103
  %105 = lshr i32 %102, %103
  %106 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %100, i32 %104, i32 %105, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = fcmp fast olt float %107, -1.000000e+00
  %109 = fcmp fast ogt float %107, -1.000000e+00
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %112 = select i1 %109, float %111, float 1.000000e+00
  %113 = fadd fast float %107, 1.000000e+00
  %114 = fmul fast float %112, %113
  %115 = call float @dx.op.unary.f32(i32 6, float %114)  ; FAbs(value)
  %116 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %117 = fcmp fast oge float %115, %116
  %118 = select i1 %117, float 0x4197782600000000, float %115
  %119 = fcmp fast ogt float %44, %118
  br i1 %119, label %120, label %121

; <label>:120                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %121

; <label>:121                                     ; preds = %120, %0
  br i1 %108, label %122, label %123

; <label>:122                                     ; preds = %121
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %123

; <label>:123                                     ; preds = %122, %121
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.i32 %125, 3
  %127 = and i32 %126, 3
  %128 = icmp ne i32 %127, 0
  %129 = and i32 %126, 4
  %130 = icmp ne i32 %129, 0
  %131 = and i1 %128, %130
  br i1 %131, label %132, label %143

; <label>:132                                     ; preds = %123
  %133 = extractvalue %dx.types.CBufRet.f32 %124, 3
  %134 = fmul fast float %133, %50
  %135 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %136 = fmul fast float %135, %49
  %137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %136, float %134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = fsub fast float 1.000000e+00, %138
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %142 = fcmp fast olt float %139, %141
  br label %146

; <label>:143                                     ; preds = %123
  %144 = icmp eq i32 %129, 0
  %145 = and i1 %128, %144
  br label %146

; <label>:146                                     ; preds = %143, %132
  %147 = phi i1 [ %142, %132 ], [ %145, %143 ]
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %151 = fmul fast float %149, %49
  %152 = fmul fast float %150, %50
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = and i32 %154, 114688
  %156 = icmp ne i32 %155, 0
  %157 = select i1 %156, float %151, float 0.000000e+00
  %158 = select i1 %156, float %152, float 0.000000e+00
  %159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = fmul fast float %160, 2.550000e+02
  %162 = fptoui float %161 to i32
  %163 = select i1 %156, i32 %162, i32 0
  %164 = mul i32 %21, 208
  %165 = add i32 %164, 188
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = and i32 %126, 114688
  %169 = and i32 %126, 8
  %170 = icmp ne i32 %169, 0
  %171 = or i1 %147, %170
  %172 = select i1 %171, i32 %168, i32 16384
  %173 = and i32 %172, %167
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

; <label>:175                                     ; preds = %146
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %176

; <label>:176                                     ; preds = %175, %146
  %177 = and i32 %167, 512
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %203, label %179

; <label>:179                                     ; preds = %176
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 2
  %182 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %183 = fmul fast float %181, %49
  %184 = fmul fast float %182, %50
  %185 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %186 = extractvalue %dx.types.CBufRet.f32 %180, 1
  %187 = fdiv fast float %185, %186
  %188 = fcmp fast ogt float %187, 0x3FFC71C720000000
  br i1 %188, label %189, label %195

; <label>:189                                     ; preds = %179
  %190 = fdiv fast float 0x3FFC71C720000000, %187
  %191 = fmul fast float %190, %184
  %192 = fsub fast float 1.000000e+00, %190
  %193 = fmul fast float %192, 5.000000e-01
  %194 = fadd fast float %193, %191
  br label %203

; <label>:195                                     ; preds = %179
  %196 = fcmp fast olt float %187, 0x3FFC71C720000000
  br i1 %196, label %197, label %203

; <label>:197                                     ; preds = %195
  %198 = fmul fast float %183, 5.625000e-01
  %199 = fmul fast float %198, %187
  %200 = fmul fast float %187, 2.812500e-01
  %201 = fsub fast float 5.000000e-01, %200
  %202 = fadd fast float %201, %199
  br label %203

; <label>:203                                     ; preds = %197, %195, %189, %176
  %204 = phi float [ %38, %176 ], [ %183, %189 ], [ %202, %197 ], [ %183, %195 ]
  %205 = phi float [ %39, %176 ], [ %194, %189 ], [ %184, %197 ], [ %184, %195 ]
  %206 = add i32 %23, 72
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = extractvalue %dx.types.ResRet.i32 %207, 1
  %210 = bitcast i32 %208 to float
  %211 = bitcast i32 %209 to float
  %212 = fmul fast float %210, %38
  %213 = fmul fast float %211, %39
  %214 = call float @dx.op.unary.f32(i32 22, float %212)  ; Frc(value)
  %215 = call float @dx.op.unary.f32(i32 22, float %213)  ; Frc(value)
  %216 = and i32 %167, 16
  %217 = icmp ne i32 %216, 0
  %218 = select i1 %217, float 1.000000e+00, float %40
  %219 = icmp eq i32 %216, 0
  br i1 %219, label %239, label %220, !dx.controlflow.hints !57

; <label>:220                                     ; preds = %203
  %221 = add i32 %164, 64
  %222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = fadd fast float %223, 1.000000e+00
  %225 = fmul fast float %224, %40
  %226 = fsub fast float %225, %223
  %227 = fsub fast float %224, %226
  %228 = call float @dx.op.unary.f32(i32 7, float %227)  ; Saturate(value)
  %229 = fsub fast float 1.000000e+00, %225
  %230 = call float @dx.op.unary.f32(i32 7, float %229)  ; Saturate(value)
  %231 = fsub fast float %228, %230
  %232 = fsub fast float %218, %230
  %233 = fdiv fast float %232, %231
  %234 = call float @dx.op.unary.f32(i32 7, float %233)  ; Saturate(value)
  %235 = fmul fast float %234, 2.000000e+00
  %236 = fsub fast float 3.000000e+00, %235
  %237 = fmul fast float %234, %234
  %238 = fmul fast float %237, %236
  br label %239

; <label>:239                                     ; preds = %220, %203
  %240 = phi float [ %238, %220 ], [ %218, %203 ]
  %241 = fcmp fast ogt float %240, 0.000000e+00
  br i1 %241, label %243, label %242

; <label>:242                                     ; preds = %239
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %243

; <label>:243                                     ; preds = %242, %239
  %244 = call float @dx.op.unary.f32(i32 7, float %240)  ; Saturate(value)
  %245 = fmul fast float %49, 5.000000e-01
  %246 = fmul fast float %50, 5.000000e-01
  %247 = fptosi float %245 to i32
  %248 = fptosi float %246 to i32
  %249 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %247, i32 %248, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = lshr i32 %250, 18
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F4C00EBA0000000
  %254 = call float @dx.op.unary.f32(i32 21, float %253)  ; Exp(value)
  %255 = fadd fast float %254, -1.000000e+00
  %256 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %257 = extractvalue %dx.types.Dimensions %256, 0
  %258 = sitofp i32 %257 to float
  %259 = extractvalue %dx.types.Dimensions %256, 1
  %260 = sitofp i32 %259 to float
  %261 = fcmp fast oge float %245, %258
  %262 = fcmp fast oge float %246, %260
  %263 = or i1 %261, %262
  %264 = select i1 %263, float 0x4197782600000000, float %255
  %265 = fsub fast float %264, %44
  %266 = fcmp fast ogt float %265, 0.000000e+00
  %267 = and i32 %163, -2
  %268 = icmp eq i32 %267, 2
  %269 = and i1 %268, %266
  %270 = xor i1 %266, true
  %271 = icmp eq i32 %163, 1
  %272 = and i1 %271, %270
  %273 = or i1 %269, %272
  %274 = and i32 %167, 262144
  %275 = icmp ne i32 %274, 0
  %276 = and i1 %275, %273
  %277 = xor i1 %273, true
  %278 = and i32 %167, 131072
  %279 = icmp ne i32 %278, 0
  %280 = and i1 %279, %277
  %281 = or i1 %276, %280
  br i1 %281, label %282, label %283

; <label>:282                                     ; preds = %243
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %283

; <label>:283                                     ; preds = %282, %243
  %284 = and i32 %167, 32
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %536, label %286, !dx.controlflow.hints !58

; <label>:286                                     ; preds = %283
  %287 = add i32 %164, 80
  %288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = extractvalue %dx.types.ResRet.f32 %288, 1
  %291 = extractvalue %dx.types.ResRet.f32 %288, 2
  %292 = extractvalue %dx.types.ResRet.f32 %288, 3
  %293 = add i32 %164, 96
  %294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = extractvalue %dx.types.ResRet.f32 %294, 1
  %297 = extractvalue %dx.types.ResRet.f32 %294, 2
  %298 = add i32 %164, 112
  %299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  %301 = extractvalue %dx.types.ResRet.f32 %299, 1
  %302 = extractvalue %dx.types.ResRet.f32 %299, 2
  %303 = extractvalue %dx.types.ResRet.f32 %299, 3
  %304 = add i32 %164, 128
  %305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = extractvalue %dx.types.ResRet.f32 %305, 1
  %308 = extractvalue %dx.types.ResRet.f32 %305, 2
  %309 = extractvalue %dx.types.ResRet.f32 %305, 3
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 4096
  %313 = icmp ne i32 %312, 0
  %314 = fcmp fast une float %297, 0.000000e+00
  %315 = and i32 %311, 64
  %316 = icmp ne i32 %315, 0
  %317 = and i32 %311, 128
  %318 = icmp eq i32 %317, 0
  %319 = and i32 %311, 2048
  %320 = icmp eq i32 %319, 0
  %321 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %322 = extractvalue %dx.types.Dimensions %321, 0
  %323 = sitofp i32 %322 to float
  %324 = extractvalue %dx.types.Dimensions %321, 1
  %325 = sitofp i32 %324 to float
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 3
  %329 = fmul fast float %327, %49
  %330 = fmul fast float %328, %50
  %331 = fmul fast float %329, %323
  %332 = fmul fast float %330, %325
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %335 = fsub fast float -0.000000e+00, %334
  %336 = fptoui float %335 to i32
  %337 = fptoui float %331 to i32
  %338 = fptoui float %332 to i32
  %339 = and i32 %336, 31
  %340 = lshr i32 %337, %339
  %341 = lshr i32 %338, %339
  %342 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %336, i32 %340, i32 %341, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 0
  %344 = fcmp fast ogt float %343, -1.000000e+00
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %347 = select i1 %344, float %346, float 1.000000e+00
  %348 = fadd fast float %343, 1.000000e+00
  %349 = fmul fast float %347, %348
  %350 = call float @dx.op.unary.f32(i32 6, float %349)  ; FAbs(value)
  %351 = extractvalue %dx.types.CBufRet.f32 %345, 3
  %352 = fcmp fast oge float %350, %351
  %353 = select i1 %352, float 0x4197782600000000, float %350
  br i1 %320, label %431, label %354, !dx.controlflow.hints !59

; <label>:354                                     ; preds = %286
  %355 = fmul fast float %54, %327
  %356 = fmul fast float %56, %328
  %357 = fsub fast float 1.000000e+00, %355
  %358 = fsub fast float 1.000000e+00, %356
  %359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %360 = extractvalue %dx.types.CBufRet.f32 %359, 0
  %361 = extractvalue %dx.types.CBufRet.f32 %359, 1
  %362 = extractvalue %dx.types.CBufRet.f32 %359, 2
  %363 = fmul fast float %357, %360
  %364 = fmul fast float %357, %361
  %365 = fmul fast float %357, %362
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 0
  %368 = extractvalue %dx.types.CBufRet.f32 %366, 1
  %369 = extractvalue %dx.types.CBufRet.f32 %366, 2
  %370 = fmul fast float %358, %367
  %371 = fmul fast float %358, %368
  %372 = fmul fast float %358, %369
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %376 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %377 = fadd fast float %370, %374
  %378 = fadd fast float %377, %363
  %379 = fadd fast float %371, %375
  %380 = fadd fast float %379, %364
  %381 = fadd fast float %372, %376
  %382 = fadd fast float %381, %365
  %383 = fmul fast float %378, %353
  %384 = fmul fast float %380, %353
  %385 = fmul fast float %382, %353
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %388 = extractvalue %dx.types.CBufRet.f32 %386, 1
  %389 = extractvalue %dx.types.CBufRet.f32 %386, 2
  %390 = fsub fast float %387, %24
  %391 = fadd fast float %390, %383
  %392 = fsub fast float %388, %25
  %393 = fadd fast float %392, %384
  %394 = fsub fast float %389, %26
  %395 = fadd fast float %394, %385
  %396 = fmul fast float %27, %27
  %397 = call float @dx.op.dot3.f32(i32 55, float %391, float %393, float %395, float %391, float %393, float %395)  ; Dot3(ax,ay,az,bx,by,bz)
  %398 = fsub fast float %396, %397
  %399 = fmul fast float %296, %396
  %400 = fmul fast float %295, %396
  %401 = fcmp fast olt float %398, %399
  %402 = fcmp fast ogt float %398, %400
  %403 = or i1 %401, %402
  %404 = select i1 %403, float 0.000000e+00, float %398
  %405 = fsub fast float %295, %296
  %406 = fmul fast float %405, %396
  %407 = fsub fast float %404, %399
  %408 = fdiv fast float %407, %406
  %409 = call float @dx.op.unary.f32(i32 7, float %408)  ; Saturate(value)
  %410 = fmul fast float %409, 2.000000e+00
  %411 = fsub fast float 3.000000e+00, %410
  %412 = fmul fast float %409, %409
  %413 = fmul fast float %412, %411
  %414 = fsub fast float %303, %309
  %415 = fmul fast float %413, %414
  %416 = fadd fast float %415, %309
  %417 = fmul fast float %300, %28
  %418 = fmul fast float %301, %29
  %419 = fmul fast float %302, %30
  %420 = fsub fast float %417, %306
  %421 = fsub fast float %418, %307
  %422 = fsub fast float %419, %308
  %423 = fmul fast float %413, %420
  %424 = fmul fast float %413, %421
  %425 = fmul fast float %413, %422
  %426 = fadd fast float %423, %306
  %427 = fadd fast float %424, %307
  %428 = fadd fast float %425, %308
  %429 = fmul fast float %289, %289
  %430 = fmul fast float %429, %404
  br label %526

; <label>:431                                     ; preds = %286
  %432 = and i32 %311, 256
  %433 = icmp eq i32 %432, 0
  %434 = fsub fast float %353, %44
  br i1 %433, label %483, label %435

; <label>:435                                     ; preds = %431
  %436 = fadd fast float %295, %44
  %437 = fcmp fast olt float %353, %44
  %438 = fcmp fast ogt float %353, %436
  %439 = or i1 %437, %438
  %440 = select i1 %439, float 0.000000e+00, float %434
  %441 = call float @dx.op.unary.f32(i32 83, float %353)  ; DerivCoarseX(value)
  %442 = call float @dx.op.unary.f32(i32 84, float %353)  ; DerivCoarseY(value)
  %443 = fmul fast float %441, %441
  %444 = fmul fast float %442, %442
  %445 = fadd fast float %444, %443
  %446 = call float @dx.op.unary.f32(i32 24, float %445)  ; Sqrt(value)
  %447 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %448 = fmul fast float %447, %446
  %449 = call float @dx.op.unary.f32(i32 7, float %448)  ; Saturate(value)
  %450 = fmul fast float %449, %296
  %451 = fdiv fast float %434, %450
  %452 = call float @dx.op.unary.f32(i32 7, float %451)  ; Saturate(value)
  %453 = fmul fast float %452, 2.000000e+00
  %454 = fsub fast float 3.000000e+00, %453
  %455 = fmul fast float %452, %452
  %456 = fmul fast float %455, %454
  %457 = fsub fast float %353, %436
  %458 = fadd fast float %457, %450
  %459 = fdiv fast float %458, %450
  %460 = call float @dx.op.unary.f32(i32 7, float %459)  ; Saturate(value)
  %461 = fmul fast float %460, 2.000000e+00
  %462 = fsub fast float 3.000000e+00, %461
  %463 = fmul fast float %460, %460
  %464 = fmul fast float %463, %462
  %465 = fsub fast float %456, %464
  %466 = fsub fast float %303, %309
  %467 = fmul fast float %465, %466
  %468 = fadd fast float %467, %309
  %469 = fmul fast float %300, %28
  %470 = fmul fast float %301, %29
  %471 = fmul fast float %302, %30
  %472 = fsub fast float %469, %306
  %473 = fsub fast float %470, %307
  %474 = fsub fast float %471, %308
  %475 = fmul fast float %465, %472
  %476 = fmul fast float %465, %473
  %477 = fmul fast float %465, %474
  %478 = fadd fast float %475, %306
  %479 = fadd fast float %476, %307
  %480 = fadd fast float %477, %308
  %481 = fmul fast float %440, %289
  %482 = call float @dx.op.unary.f32(i32 6, float %481)  ; FAbs(value)
  br label %526

; <label>:483                                     ; preds = %431
  br i1 %314, label %484, label %497

; <label>:484                                     ; preds = %483
  %485 = fdiv fast float 5.000000e+01, %27
  %486 = select i1 %316, float %485, float 1.000000e+00
  %487 = fmul fast float %486, %289
  %488 = fmul fast float %214, 2.000000e+00
  %489 = fmul fast float %215, 2.000000e+00
  %490 = fadd fast float %488, -1.000000e+00
  %491 = fadd fast float %489, -1.000000e+00
  %492 = call float @dx.op.dot2.f32(i32 54, float %490, float %491, float %490, float %491)  ; Dot2(ax,ay,bx,by)
  %493 = fmul fast float %297, %27
  %494 = fmul fast float %493, %492
  %495 = fsub fast float %434, %494
  %496 = fmul fast float %487, %495
  br label %526

; <label>:497                                     ; preds = %483
  br i1 %318, label %518, label %498

; <label>:498                                     ; preds = %497
  %499 = fmul fast float %27, 0x3F947AE140000000
  %500 = select i1 %316, float %499, float 1.000000e+00
  %501 = fdiv fast float 1.000000e+00, %500
  %502 = fmul fast float %500, %290
  %503 = fmul fast float %500, %291
  %504 = fmul fast float %501, %292
  %505 = call float @dx.op.unary.f32(i32 6, float %434)  ; FAbs(value)
  %506 = fcmp fast olt float %505, %502
  br i1 %506, label %507, label %511, !dx.controlflow.hints !60

; <label>:507                                     ; preds = %498
  %508 = fmul fast float %501, %289
  %509 = fmul fast float %508, %505
  %510 = call float @dx.op.unary.f32(i32 6, float %509)  ; FAbs(value)
  br label %526

; <label>:511                                     ; preds = %498
  %512 = fcmp fast ogt float %505, %503
  br i1 %512, label %513, label %526

; <label>:513                                     ; preds = %511
  %514 = fsub fast float %505, %503
  %515 = fmul fast float %504, %514
  %516 = call float @dx.op.unary.f32(i32 6, float %515)  ; FAbs(value)
  %517 = fsub fast float 1.000000e+00, %516
  br label %526

; <label>:518                                     ; preds = %497
  %519 = fdiv fast float 5.000000e+01, %27
  %520 = select i1 %316, float %519, float 1.000000e+00
  %521 = fmul fast float %520, %289
  %522 = call float @dx.op.unary.f32(i32 6, float %265)  ; FAbs(value)
  %523 = select i1 %313, float %522, float 0x47EFFFFFE0000000
  %524 = call float @dx.op.binary.f32(i32 36, float %434, float %523)  ; FMin(a,b)
  %525 = fmul fast float %521, %524
  br label %526

; <label>:526                                     ; preds = %518, %513, %511, %507, %484, %435, %354
  %527 = phi float [ %430, %354 ], [ %482, %435 ], [ %496, %484 ], [ %525, %518 ], [ %510, %507 ], [ %517, %513 ], [ %505, %511 ]
  %528 = phi float [ %426, %354 ], [ %478, %435 ], [ %28, %484 ], [ %28, %518 ], [ %28, %507 ], [ %28, %513 ], [ %28, %511 ]
  %529 = phi float [ %427, %354 ], [ %479, %435 ], [ %29, %484 ], [ %29, %518 ], [ %29, %507 ], [ %29, %513 ], [ %29, %511 ]
  %530 = phi float [ %428, %354 ], [ %480, %435 ], [ %30, %484 ], [ %30, %518 ], [ %30, %507 ], [ %30, %513 ], [ %30, %511 ]
  %531 = phi float [ %416, %354 ], [ %468, %435 ], [ 1.000000e+00, %484 ], [ 1.000000e+00, %518 ], [ 1.000000e+00, %507 ], [ 1.000000e+00, %513 ], [ 1.000000e+00, %511 ]
  %532 = call float @dx.op.unary.f32(i32 7, float %527)  ; Saturate(value)
  %533 = fmul fast float %532, %40
  %534 = fmul fast float %531, %244
  %535 = fmul fast float %534, %532
  br label %536

; <label>:536                                     ; preds = %526, %283
  %537 = phi float [ %535, %526 ], [ %244, %283 ]
  %538 = phi float [ %533, %526 ], [ %40, %283 ]
  %539 = phi float [ %528, %526 ], [ %28, %283 ]
  %540 = phi float [ %529, %526 ], [ %29, %283 ]
  %541 = phi float [ %530, %526 ], [ %30, %283 ]
  %542 = fmul fast float %539, %31
  %543 = fmul fast float %540, %31
  %544 = fmul fast float %541, %31
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %547 = fptosi float %44 to i32
  %548 = sitofp i32 %547 to float
  %549 = fadd fast float %546, %548
  %550 = fmul fast float %549, 0x3FE3C6EF40000000
  %551 = frem fast float %49, 2.560000e+02
  %552 = frem fast float %50, 2.560000e+02
  %553 = fptoui float %551 to i32
  %554 = fptoui float %552 to i32
  %555 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %553, i32 %554, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = fadd fast float %556, %550
  %558 = call float @dx.op.unary.f32(i32 22, float %557)  ; Frc(value)
  %559 = and i32 %167, 1
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %618, label %561, !dx.controlflow.hints !61

; <label>:561                                     ; preds = %536
  %562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 2
  %564 = extractvalue %dx.types.ResRet.f32 %562, 3
  %565 = add i32 %164, 16
  %566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = extractvalue %dx.types.ResRet.f32 %566, 1
  %569 = extractvalue %dx.types.ResRet.f32 %566, 2
  %570 = add i32 %164, 32
  %571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = extractvalue %dx.types.ResRet.f32 %571, 1
  %574 = extractvalue %dx.types.ResRet.f32 %571, 2
  %575 = and i32 %167, 2
  %576 = icmp eq i32 %575, 0
  %577 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float %34, float %35, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %578 = call float @dx.op.unary.f32(i32 25, float %577)  ; Rsqrt(value)
  %579 = fmul fast float %578, %34
  %580 = fmul fast float %578, %35
  %581 = fmul fast float %578, %36
  %582 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %583 = call float @dx.op.unary.f32(i32 25, float %582)  ; Rsqrt(value)
  %584 = fmul fast float %583, %84
  %585 = fmul fast float %583, %85
  %586 = fmul fast float %583, %86
  %587 = call float @dx.op.dot3.f32(i32 55, float %584, float %585, float %586, float %579, float %580, float %581)  ; Dot3(ax,ay,az,bx,by,bz)
  %588 = fmul fast float %587, %587
  %589 = fmul fast float %588, %563
  %590 = fadd fast float %589, %564
  %591 = call float @dx.op.unary.f32(i32 7, float %590)  ; Saturate(value)
  br i1 %576, label %592, label %602, !dx.controlflow.hints !62

; <label>:592                                     ; preds = %561
  %593 = extractvalue %dx.types.ResRet.f32 %562, 1
  %594 = extractvalue %dx.types.ResRet.f32 %562, 0
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 3
  %597 = fmul fast float %596, %582
  %598 = fsub fast float %594, %597
  %599 = fmul fast float %598, %593
  %600 = call float @dx.op.unary.f32(i32 7, float %599)  ; Saturate(value)
  %601 = fmul fast float %600, %591
  br label %602

; <label>:602                                     ; preds = %592, %561
  %603 = phi float [ %601, %592 ], [ %591, %561 ]
  %604 = fsub fast float %567, %572
  %605 = fsub fast float %568, %573
  %606 = fsub fast float %569, %574
  %607 = fmul fast float %603, %604
  %608 = fmul fast float %603, %605
  %609 = fmul fast float %603, %606
  %610 = fadd fast float %607, %572
  %611 = fadd fast float %608, %573
  %612 = fadd fast float %609, %574
  %613 = fmul fast float %610, %542
  %614 = fmul fast float %611, %543
  %615 = fmul fast float %612, %544
  %616 = fmul fast float %603, %537
  %617 = fmul fast float %603, %538
  br label %618

; <label>:618                                     ; preds = %602, %536
  %619 = phi float [ %616, %602 ], [ %537, %536 ]
  %620 = phi float [ %617, %602 ], [ %538, %536 ]
  %621 = phi float [ %613, %602 ], [ %542, %536 ]
  %622 = phi float [ %614, %602 ], [ %543, %536 ]
  %623 = phi float [ %615, %602 ], [ %544, %536 ]
  %624 = add i32 %23, 120
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = add i32 %626, 0
  %628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %627, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %628, %dx.types.Handle %45, float %204, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  %631 = extractvalue %dx.types.ResRet.f32 %629, 1
  %632 = extractvalue %dx.types.ResRet.f32 %629, 2
  %633 = add i32 %23, 44
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = shl i32 %635, 4
  %637 = and i32 %636, 32752
  %638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %637)  ; LegacyF16ToF32(value)
  %639 = lshr i32 %635, 7
  %640 = and i32 %639, 32752
  %641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %640)  ; LegacyF16ToF32(value)
  %642 = lshr i32 %635, 22
  %643 = shl nuw nsw i32 %642, 5
  %644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %643)  ; LegacyF16ToF32(value)
  %645 = fmul fast float %638, %630
  %646 = fmul fast float %641, %631
  %647 = fmul fast float %644, %632
  %648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %649 = extractvalue %dx.types.CBufRet.f32 %648, 0
  %650 = fmul fast float %645, %649
  %651 = fmul fast float %646, %649
  %652 = fmul fast float %647, %649
  %653 = add i32 %23, 48
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = lshr i32 %655, 22
  %657 = shl nuw nsw i32 %656, 5
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = fmul fast float %658, %650
  %660 = select i1 %147, float %659, float %650
  %661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = extractvalue %dx.types.ResRet.f32 %661, 1
  %664 = extractvalue %dx.types.ResRet.f32 %661, 2
  %665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.f32 %665, 1
  %667 = fmul fast float %660, %621
  %668 = fmul fast float %651, %622
  %669 = fmul fast float %652, %623
  %670 = call float @dx.op.dot3.f32(i32 55, float %667, float %668, float %669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %671 = select i1 %147, float 0.000000e+00, float %667
  %672 = select i1 %147, float %670, float %668
  %673 = select i1 %147, float 0.000000e+00, float %669
  %674 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %632, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %675 = add i32 %23, 32
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %675, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = and i32 %677, 255
  %679 = uitofp i32 %678 to float
  %680 = lshr i32 %677, 8
  %681 = and i32 %680, 255
  %682 = uitofp i32 %681 to float
  %683 = fmul fast float %682, %674
  %684 = fadd fast float %683, %679
  %685 = fmul fast float %684, 0x3F70101020000000
  %686 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  %687 = add i32 %23, 124
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = add i32 %689, 0
  %691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %690, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %692 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %691, %dx.types.Handle %46, float %204, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = and i32 %167, 8192
  %695 = icmp eq i32 %694, 0
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 0
  br i1 %695, label %708, label %698, !dx.controlflow.hints !63

; <label>:698                                     ; preds = %618
  %699 = add i32 %164, 176
  %700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.f32 %700, 0
  %702 = extractvalue %dx.types.ResRet.f32 %700, 1
  %703 = fcmp fast oge float %701, 0.000000e+00
  %704 = select i1 %703, float %701, float %697
  %705 = fmul fast float %693, %87
  %706 = fmul fast float %705, %702
  %707 = fadd fast float %706, %704
  br label %719

; <label>:708                                     ; preds = %618
  %709 = add i32 %23, 104
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = extractvalue %dx.types.ResRet.i32 %710, 1
  %713 = bitcast i32 %711 to float
  %714 = bitcast i32 %712 to float
  %715 = fcmp fast oge float %713, 0.000000e+00
  %716 = select i1 %715, float %713, float %697
  %717 = fmul fast float %714, %693
  %718 = fadd fast float %716, %717
  br label %719

; <label>:719                                     ; preds = %708, %698
  %720 = phi float [ %707, %698 ], [ %718, %708 ]
  %721 = fmul fast float %674, %620
  %722 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %247, i32 %248, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = lshr i32 %723, 18
  %725 = uitofp i32 %724 to float
  %726 = fmul fast float %725, 0x3F4C00EBA0000000
  %727 = call float @dx.op.unary.f32(i32 21, float %726)  ; Exp(value)
  %728 = fadd fast float %727, -1.000000e+00
  %729 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %730 = extractvalue %dx.types.Dimensions %729, 0
  %731 = sitofp i32 %730 to float
  %732 = extractvalue %dx.types.Dimensions %729, 1
  %733 = sitofp i32 %732 to float
  %734 = fcmp fast oge float %245, %731
  %735 = fcmp fast oge float %246, %733
  %736 = or i1 %734, %735
  %737 = select i1 %736, float 0x4197782600000000, float %728
  %738 = icmp eq i32 %163, 3
  %739 = fcmp fast ogt float %44, %737
  %740 = and i1 %271, %739
  %741 = or i1 %738, %740
  %742 = icmp eq i32 %163, 2
  %743 = fcmp fast ole float %44, %737
  %744 = and i1 %742, %743
  %745 = or i1 %744, %741
  %746 = fmul fast float %539, %37
  %747 = fmul fast float %746, %660
  %748 = fmul fast float %747, %662
  %749 = fmul fast float %748, %666
  %750 = fmul fast float %540, %37
  %751 = fmul fast float %750, %651
  %752 = fmul fast float %751, %663
  %753 = fmul fast float %752, %666
  %754 = fmul fast float %541, %37
  %755 = fmul fast float %754, %652
  %756 = fmul fast float %755, %664
  %757 = fmul fast float %756, %666
  %758 = fadd fast float %749, %671
  %759 = fadd fast float %672, %753
  %760 = fadd fast float %757, %673
  %761 = fmul fast float %758, %619
  %762 = fmul fast float %759, %619
  %763 = fmul fast float %760, %619
  %764 = fmul fast float %720, %686
  %765 = fsub fast float 1.000000e+00, %686
  %766 = fsub fast float %765, %721
  %767 = call float @dx.op.unary.f32(i32 7, float %766)  ; Saturate(value)
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 3
  %770 = fmul fast float %769, %767
  %771 = fadd fast float %770, %764
  %772 = and i32 %167, 1048576
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %865, label %774, !dx.controlflow.hints !64

; <label>:774                                     ; preds = %719
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 2
  %777 = extractvalue %dx.types.CBufRet.f32 %775, 3
  %778 = fmul fast float %776, %49
  %779 = fmul fast float %777, %50
  %780 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  %781 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %782 = select i1 %745, i32 2, i32 0
  %783 = or i32 %782, 1
  %784 = uitofp i32 %783 to float
  %785 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %780, float %781, float %784, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = extractvalue %dx.types.ResRet.f32 %785, 1
  %788 = extractvalue %dx.types.ResRet.f32 %785, 2
  %789 = extractvalue %dx.types.ResRet.f32 %785, 3
  %790 = add nuw nsw i32 %782, 2
  %791 = uitofp i32 %790 to float
  %792 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %780, float %781, float %791, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = extractvalue %dx.types.ResRet.f32 %792, 2
  %796 = extractvalue %dx.types.ResRet.f32 %792, 3
  %797 = call float @dx.op.binary.f32(i32 35, float %787, float %788)  ; FMax(a,b)
  %798 = call float @dx.op.binary.f32(i32 35, float %786, float %797)  ; FMax(a,b)
  %799 = call float @dx.op.binary.f32(i32 35, float %798, float %789)  ; FMax(a,b)
  %800 = call float @dx.op.binary.f32(i32 36, float %794, float %795)  ; FMin(a,b)
  %801 = call float @dx.op.binary.f32(i32 36, float %793, float %800)  ; FMin(a,b)
  %802 = call float @dx.op.binary.f32(i32 36, float %801, float %796)  ; FMin(a,b)
  %803 = fmul fast float %799, 2.550000e+02
  %804 = fadd fast float %803, 0x3F70101020000000
  %805 = fptoui float %804 to i32
  %806 = fmul fast float %802, 2.550000e+02
  %807 = fadd fast float %806, 0x3F70101020000000
  %808 = fptoui float %807 to i32
  %809 = icmp ult i32 %805, %808
  br i1 %809, label %810, label %858

; <label>:810                                     ; preds = %774
  %811 = fcmp fast ogt float %43, 9.843750e-01
  %812 = fadd fast float %44, -4.000000e+00
  %813 = select i1 %811, float -4.000000e+00, float %812
  %814 = call float @dx.op.binary.f32(i32 35, float %813, float 0.000000e+00)  ; FMax(a,b)
  %815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.f32 %815, 0
  %817 = fadd fast float %816, %814
  %818 = extractvalue %dx.types.CBufRet.f32 %815, 2
  %819 = fmul fast float %817, %818
  %820 = call float @dx.op.unary.f32(i32 23, float %819)  ; Log(value)
  %821 = extractvalue %dx.types.CBufRet.f32 %815, 3
  %822 = fmul fast float %821, %820
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %825 = fmul fast float %822, %824
  %826 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %827 = uitofp i32 %805 to float
  %828 = uitofp i32 %808 to float
  %829 = fadd fast float %827, 5.000000e-01
  %830 = fadd fast float %828, 5.000000e-01
  %831 = fmul fast float %824, %829
  %832 = fmul fast float %824, %830
  %833 = fadd fast float %831, 0x3F0FFB4800000000
  %834 = fadd fast float %832, 0xBF0FFB4800000000
  %835 = call float @dx.op.binary.f32(i32 35, float %826, float %833)  ; FMax(a,b)
  %836 = call float @dx.op.binary.f32(i32 36, float %835, float %834)  ; FMin(a,b)
  %837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %838 = extractvalue %dx.types.CBufRet.f32 %837, 1
  %839 = extractvalue %dx.types.CBufRet.f32 %837, 2
  %840 = extractvalue %dx.types.CBufRet.f32 %837, 0
  %841 = select i1 %745, float %840, float 0.000000e+00
  %842 = fmul fast float %838, %836
  %843 = fadd fast float %841, %842
  %844 = fadd fast float %841, %839
  %845 = fsub fast float %838, %839
  %846 = fadd fast float %845, %841
  %847 = call float @dx.op.binary.f32(i32 35, float %843, float %844)  ; FMax(a,b)
  %848 = call float @dx.op.binary.f32(i32 36, float %847, float %846)  ; FMin(a,b)
  %849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %780, float %781, float %848, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = extractvalue %dx.types.ResRet.f32 %849, 1
  %852 = extractvalue %dx.types.ResRet.f32 %849, 2
  %853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.f32 %853, 1
  %855 = fmul fast float %854, %850
  %856 = fmul fast float %854, %851
  %857 = fmul fast float %854, %852
  br label %858

; <label>:858                                     ; preds = %810, %774
  %859 = phi float [ %855, %810 ], [ 1.000000e+00, %774 ]
  %860 = phi float [ %856, %810 ], [ 1.000000e+00, %774 ]
  %861 = phi float [ %857, %810 ], [ 1.000000e+00, %774 ]
  %862 = fmul fast float %859, %761
  %863 = fmul fast float %860, %762
  %864 = fmul fast float %861, %763
  br label %865

; <label>:865                                     ; preds = %858, %719
  %866 = phi float [ %862, %858 ], [ %761, %719 ]
  %867 = phi float [ %863, %858 ], [ %762, %719 ]
  %868 = phi float [ %864, %858 ], [ %763, %719 ]
  %869 = and i32 %167, 2097152
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %875, label %871, !dx.controlflow.hints !65

; <label>:871                                     ; preds = %865
  %872 = add i32 %164, 192
  %873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  br label %878

; <label>:875                                     ; preds = %865
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 3
  br label %878

; <label>:878                                     ; preds = %875, %871
  %879 = phi float [ %874, %871 ], [ %877, %875 ]
  br i1 %740, label %880, label %964

; <label>:880                                     ; preds = %878
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 2
  %883 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %884 = fmul fast float %882, %49
  %885 = fmul fast float %883, %50
  %886 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %887 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %888 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %886, float %887, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %889 = extractvalue %dx.types.ResRet.f32 %888, 0
  %890 = extractvalue %dx.types.ResRet.f32 %888, 1
  %891 = extractvalue %dx.types.ResRet.f32 %888, 2
  %892 = extractvalue %dx.types.ResRet.f32 %888, 3
  %893 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %886, float %887, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %894 = extractvalue %dx.types.ResRet.f32 %893, 0
  %895 = extractvalue %dx.types.ResRet.f32 %893, 1
  %896 = extractvalue %dx.types.ResRet.f32 %893, 2
  %897 = extractvalue %dx.types.ResRet.f32 %893, 3
  %898 = call float @dx.op.binary.f32(i32 35, float %890, float %891)  ; FMax(a,b)
  %899 = call float @dx.op.binary.f32(i32 35, float %889, float %898)  ; FMax(a,b)
  %900 = call float @dx.op.binary.f32(i32 35, float %899, float %892)  ; FMax(a,b)
  %901 = call float @dx.op.binary.f32(i32 36, float %895, float %896)  ; FMin(a,b)
  %902 = call float @dx.op.binary.f32(i32 36, float %894, float %901)  ; FMin(a,b)
  %903 = call float @dx.op.binary.f32(i32 36, float %902, float %897)  ; FMin(a,b)
  %904 = fmul fast float %900, 2.550000e+02
  %905 = fadd fast float %904, 0x3F70101020000000
  %906 = fptoui float %905 to i32
  %907 = fmul fast float %903, 2.550000e+02
  %908 = fadd fast float %907, 0x3F70101020000000
  %909 = fptoui float %908 to i32
  %910 = icmp ult i32 %906, %909
  br i1 %910, label %911, label %953

; <label>:911                                     ; preds = %880
  %912 = fcmp fast ogt float %43, 9.843750e-01
  %913 = fadd fast float %44, -4.000000e+00
  %914 = select i1 %912, float -4.000000e+00, float %913
  %915 = call float @dx.op.binary.f32(i32 35, float %914, float 0.000000e+00)  ; FMax(a,b)
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 0
  %918 = fadd fast float %917, %915
  %919 = extractvalue %dx.types.CBufRet.f32 %916, 2
  %920 = fmul fast float %918, %919
  %921 = call float @dx.op.unary.f32(i32 23, float %920)  ; Log(value)
  %922 = extractvalue %dx.types.CBufRet.f32 %916, 3
  %923 = fmul fast float %922, %921
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 2
  %926 = fmul fast float %923, %925
  %927 = call float @dx.op.unary.f32(i32 7, float %926)  ; Saturate(value)
  %928 = uitofp i32 %906 to float
  %929 = uitofp i32 %909 to float
  %930 = fadd fast float %928, 5.000000e-01
  %931 = fadd fast float %929, 5.000000e-01
  %932 = fmul fast float %925, %930
  %933 = fmul fast float %925, %931
  %934 = fadd fast float %932, 0x3F0FFB4800000000
  %935 = fadd fast float %933, 0xBF0FFB4800000000
  %936 = call float @dx.op.binary.f32(i32 35, float %927, float %934)  ; FMax(a,b)
  %937 = call float @dx.op.binary.f32(i32 36, float %936, float %935)  ; FMin(a,b)
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 1
  %940 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %941 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %942 = fmul fast float %939, %937
  %943 = fadd fast float %941, %942
  %944 = fadd fast float %941, %940
  %945 = fsub fast float %939, %940
  %946 = fadd fast float %945, %941
  %947 = call float @dx.op.binary.f32(i32 35, float %943, float %944)  ; FMax(a,b)
  %948 = call float @dx.op.binary.f32(i32 36, float %947, float %946)  ; FMin(a,b)
  %949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %886, float %887, float %948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = extractvalue %dx.types.ResRet.f32 %949, 1
  %952 = extractvalue %dx.types.ResRet.f32 %949, 2
  br label %953

; <label>:953                                     ; preds = %911, %880
  %954 = phi float [ %950, %911 ], [ 1.000000e+00, %880 ]
  %955 = phi float [ %951, %911 ], [ 1.000000e+00, %880 ]
  %956 = phi float [ %952, %911 ], [ 1.000000e+00, %880 ]
  %957 = call float @dx.op.dot3.f32(i32 55, float %954, float %955, float %956, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %958 = select i1 %147, float %957, float %954
  %959 = select i1 %147, float %957, float %955
  %960 = select i1 %147, float 1.000000e+00, float %956
  %961 = fmul fast float %958, %866
  %962 = fmul fast float %959, %867
  %963 = fmul fast float %960, %868
  br label %964

; <label>:964                                     ; preds = %953, %878
  %965 = phi float [ %737, %953 ], [ %44, %878 ]
  %966 = phi float [ %961, %953 ], [ %866, %878 ]
  %967 = phi float [ %962, %953 ], [ %867, %878 ]
  %968 = phi float [ %963, %953 ], [ %868, %878 ]
  %969 = phi float [ %954, %953 ], [ 1.000000e+00, %878 ]
  br i1 %745, label %1212, label %970

; <label>:970                                     ; preds = %964
  %971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %32, float %33, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = extractvalue %dx.types.ResRet.f32 %971, 1
  %974 = extractvalue %dx.types.ResRet.f32 %971, 2
  %975 = fmul fast float %972, %969
  %976 = call float @dx.op.dot3.f32(i32 55, float %972, float %973, float %974, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %977 = select i1 %147, float %976, float %972
  %978 = select i1 %147, float %976, float %973
  %979 = select i1 %147, float 1.000000e+00, float %974
  %980 = fmul fast float %977, %966
  %981 = fmul fast float %978, %967
  %982 = fmul fast float %979, %968
  %983 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.i32 %983, 0
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %1212, label %986, !dx.controlflow.hints !66

; <label>:986                                     ; preds = %970
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %989 = extractvalue %dx.types.CBufRet.f32 %987, 3
  %990 = fmul fast float %988, %49
  %991 = fmul fast float %989, %50
  %992 = fmul fast float %990, 2.000000e+00
  %993 = fmul fast float %991, 2.000000e+00
  %994 = fsub fast float 1.000000e+00, %992
  %995 = fsub fast float 1.000000e+00, %993
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = extractvalue %dx.types.CBufRet.f32 %996, 1
  %999 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %1000 = fmul fast float %994, %997
  %1001 = fmul fast float %994, %998
  %1002 = fmul fast float %994, %999
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.CBufRet.f32 %1003, 1
  %1006 = extractvalue %dx.types.CBufRet.f32 %1003, 2
  %1007 = fmul fast float %995, %1004
  %1008 = fmul fast float %995, %1005
  %1009 = fmul fast float %995, %1006
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.CBufRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.CBufRet.f32 %1010, 2
  %1014 = fadd fast float %1007, %1011
  %1015 = fadd fast float %1014, %1000
  %1016 = fadd fast float %1008, %1012
  %1017 = fadd fast float %1016, %1001
  %1018 = fadd fast float %1009, %1013
  %1019 = fadd fast float %1018, %1002
  %1020 = fmul fast float %1015, %965
  %1021 = fmul fast float %1017, %965
  %1022 = fmul fast float %1019, %965
  %1023 = fmul fast float %1020, %1020
  %1024 = fmul fast float %1021, %1021
  %1025 = fadd fast float %1023, %1024
  %1026 = fmul fast float %1022, %1022
  %1027 = fadd fast float %1025, %1026
  %1028 = call float @dx.op.unary.f32(i32 24, float %1027)  ; Sqrt(value)
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = fsub fast float %1028, %1030
  %1032 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1033 = fmul fast float %1031, %1032
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1035 = fadd fast float %1034, -5.000000e-01
  %1036 = fmul fast float %1035, 2.000000e+00
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1039 = call float @dx.op.binary.f32(i32 36, float %1038, float %1036)  ; FMin(a,b)
  %1040 = fsub fast float -0.000000e+00, %1038
  %1041 = fcmp fast ogt float %1039, %1040
  br i1 %1041, label %1042, label %1212, !dx.controlflow.hints !67

; <label>:1042                                    ; preds = %986
  %1043 = fmul fast float %1039, 5.000000e-01
  %1044 = fadd fast float %1043, 5.000000e-01
  %1045 = call float @dx.op.unary.f32(i32 22, float %1044)  ; Frc(value)
  %1046 = call float @dx.op.unary.f32(i32 27, float %1045)  ; Round_ni(value)
  %1047 = call float @dx.op.unary.f32(i32 22, float %1045)  ; Frc(value)
  %1048 = fmul fast float %1047, 2.000000e+00
  %1049 = fadd fast float %1048, -1.000000e+00
  %1050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %990, float %991, float %1046, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = extractvalue %dx.types.ResRet.f32 %1050, 3
  %1055 = fadd fast float %1051, -5.000000e-01
  %1056 = fadd fast float %1053, -5.000000e-01
  %1057 = fmul fast float %1055, 0xBFD5555560000000
  %1058 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1056, float %1057)  ; FMad(a,b,c)
  %1059 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1052, float 0.000000e+00)  ; FMad(a,b,c)
  %1060 = fadd fast float %1059, %1054
  %1061 = fmul fast float %1055, -7.500000e-01
  %1062 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1056, float %1061)  ; FMad(a,b,c)
  %1063 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1052, float 0.000000e+00)  ; FMad(a,b,c)
  %1064 = fadd fast float %1063, %1054
  %1065 = call float @dx.op.binary.f32(i32 35, float %1058, float -1.000000e+00)  ; FMax(a,b)
  %1066 = call float @dx.op.binary.f32(i32 35, float %1060, float -1.000000e+00)  ; FMax(a,b)
  %1067 = call float @dx.op.binary.f32(i32 35, float %1062, float -1.000000e+00)  ; FMax(a,b)
  %1068 = call float @dx.op.binary.f32(i32 35, float %1064, float -1.000000e+00)  ; FMax(a,b)
  %1069 = call float @dx.op.binary.f32(i32 36, float %1065, float 1.000000e+00)  ; FMin(a,b)
  %1070 = call float @dx.op.binary.f32(i32 36, float %1066, float 1.000000e+00)  ; FMin(a,b)
  %1071 = call float @dx.op.binary.f32(i32 36, float %1067, float 1.000000e+00)  ; FMin(a,b)
  %1072 = call float @dx.op.binary.f32(i32 36, float %1068, float 1.000000e+00)  ; FMin(a,b)
  %1073 = fcmp fast olt float %1069, 0x3FEFFF8020000000
  br i1 %1073, label %1074, label %1189, !dx.controlflow.hints !68

; <label>:1074                                    ; preds = %1042
  %1075 = extractvalue %dx.types.CBufRet.f32 %1037, 3
  %1076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1077 = extractvalue %dx.types.CBufRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.CBufRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.CBufRet.f32 %1076, 2
  %1080 = extractvalue %dx.types.CBufRet.f32 %1076, 3
  %1081 = fsub fast float %1077, %1069
  %1082 = fsub fast float %1078, %1070
  %1083 = fsub fast float %1079, %1071
  %1084 = fsub fast float %1080, %1072
  %1085 = fmul fast float %1081, %1075
  %1086 = fmul fast float %1082, %1075
  %1087 = fmul fast float %1083, %1075
  %1088 = fmul fast float %1084, %1075
  %1089 = fadd fast float %1085, %1069
  %1090 = fadd fast float %1086, %1070
  %1091 = fsub fast float -0.000000e+00, %1090
  %1092 = fadd fast float %1087, %1071
  %1093 = fadd fast float %1088, %1072
  %1094 = fmul fast float %1089, %1089
  %1095 = fsub fast float %1090, %1094
  %1096 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1095)  ; FMax(a,b)
  %1097 = fdiv fast float 1.000000e+00, %1096
  %1098 = fmul fast float %1090, %1089
  %1099 = fsub fast float %1092, %1098
  %1100 = fsub fast float %1049, %1089
  %1101 = fmul fast float %1049, %1049
  %1102 = fsub fast float %1101, %1090
  %1103 = fmul fast float %1100, %1097
  %1104 = fmul fast float %1103, %1099
  %1105 = fsub fast float %1102, %1104
  %1106 = fmul fast float %1090, %1090
  %1107 = fsub fast float %1093, %1106
  %1108 = fmul fast float %1099, %1099
  %1109 = fmul fast float %1108, %1097
  %1110 = fsub fast float %1107, %1109
  %1111 = fdiv fast float %1105, %1110
  %1112 = fmul fast float %1099, %1111
  %1113 = fsub fast float %1100, %1112
  %1114 = fmul fast float %1113, %1097
  %1115 = fmul fast float %1114, %1089
  %1116 = fsub fast float 1.000000e+00, %1115
  %1117 = fmul fast float %1090, %1111
  %1118 = fsub fast float %1116, %1117
  %1119 = fmul fast float %1114, %1114
  %1120 = fmul fast float %1111, 4.000000e+00
  %1121 = fmul fast float %1120, %1118
  %1122 = fsub fast float %1119, %1121
  %1123 = call float @dx.op.unary.f32(i32 24, float %1122)  ; Sqrt(value)
  %1124 = fcmp fast oge float %1114, 0.000000e+00
  %1125 = fsub fast float -0.000000e+00, %1123
  %1126 = select i1 %1124, float %1125, float %1123
  %1127 = fsub fast float %1126, %1114
  %1128 = fdiv fast float %1127, %1111
  %1129 = fdiv fast float %1118, %1127
  %1130 = fmul fast float %1128, 5.000000e-01
  %1131 = fmul fast float %1129, 2.000000e+00
  %1132 = select i1 %1124, float %1130, float %1131
  %1133 = select i1 %1124, float %1131, float %1130
  %1134 = call float @dx.op.binary.f32(i32 35, float %1132, float %1133)  ; FMax(a,b)
  %1135 = call float @dx.op.binary.f32(i32 36, float %1132, float %1133)  ; FMin(a,b)
  %1136 = fcmp fast ogt float %1049, %1135
  br i1 %1136, label %1137, label %1147

; <label>:1137                                    ; preds = %1074
  %1138 = fsub fast float %1049, %1135
  %1139 = fsub fast float %1134, %1135
  %1140 = fmul fast float %1138, %1139
  %1141 = fmul fast float %1134, %1049
  %1142 = fadd fast float %1134, %1049
  %1143 = fmul fast float %1142, %1089
  %1144 = fadd fast float %1141, %1090
  %1145 = fsub fast float %1144, %1143
  %1146 = fdiv fast float %1145, %1140
  br label %1147

; <label>:1147                                    ; preds = %1137, %1074
  %1148 = phi float [ %1146, %1137 ], [ 0.000000e+00, %1074 ]
  %1149 = fcmp fast ogt float %1049, %1134
  %1150 = fsub fast float %1049, %1134
  br i1 %1149, label %1151, label %1161

; <label>:1151                                    ; preds = %1147
  %1152 = fsub fast float %1134, %1135
  %1153 = fmul fast float %1152, %1150
  %1154 = fmul fast float %1135, %1049
  %1155 = fadd fast float %1135, %1049
  %1156 = fmul fast float %1155, %1089
  %1157 = fsub fast float %1091, %1154
  %1158 = fadd fast float %1157, %1156
  %1159 = fdiv fast float %1158, %1153
  %1160 = fadd fast float %1159, %1148
  br label %1161

; <label>:1161                                    ; preds = %1151, %1147
  %1162 = phi float [ %1160, %1151 ], [ %1148, %1147 ]
  %1163 = fsub fast float %1049, %1135
  %1164 = fmul fast float %1163, %1150
  %1165 = fmul fast float %1135, %1134
  %1166 = fadd fast float %1135, %1134
  %1167 = fmul fast float %1166, %1089
  %1168 = fadd fast float %1165, %1090
  %1169 = fsub fast float %1168, %1167
  %1170 = fdiv fast float %1169, %1164
  %1171 = call float @dx.op.unary.f32(i32 7, float %1162)  ; Saturate(value)
  %1172 = fcmp fast oeq float %879, 0.000000e+00
  %1173 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1174 = fcmp fast oeq float %1173, 0.000000e+00
  %1175 = or i1 %1172, %1174
  %1176 = fmul fast float %1173, 2.000000e+00
  %1177 = fadd fast float %1038, %1039
  %1178 = fdiv fast float %1177, %1176
  %1179 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1180 = fmul fast float %1179, 2.000000e+00
  %1181 = fsub fast float 3.000000e+00, %1180
  %1182 = fmul fast float %1179, %1179
  %1183 = fmul fast float %1182, %1181
  %1184 = select i1 %1175, float 1.000000e+00, float %1183
  %1185 = fmul fast float %1170, %879
  %1186 = fadd fast float %1171, %1185
  %1187 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1188 = fmul fast float %1184, %1187
  br label %1189

; <label>:1189                                    ; preds = %1161, %1042
  %1190 = phi float [ %1188, %1161 ], [ 0.000000e+00, %1042 ]
  %1191 = fsub fast float 1.000000e+00, %1190
  %1192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %990, float %991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1195 = extractvalue %dx.types.CBufRet.i32 %1194, 2
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1202, label %1197

; <label>:1197                                    ; preds = %1189
  %1198 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1199 = fadd fast float %1193, -1.000000e+00
  %1200 = fmul fast float %1198, %1199
  %1201 = fadd fast float %1200, 1.000000e+00
  br label %1202

; <label>:1202                                    ; preds = %1197, %1189
  %1203 = phi float [ %1201, %1197 ], [ %1191, %1189 ]
  %1204 = call float @dx.op.binary.f32(i32 35, float %1193, float %1203)  ; FMax(a,b)
  %1205 = fmul fast float %1204, %975
  %1206 = call float @dx.op.dot3.f32(i32 55, float %1204, float %1204, float %1204, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1207 = select i1 %147, float %1206, float %1204
  %1208 = select i1 %147, float 1.000000e+00, float %1204
  %1209 = fmul fast float %1207, %980
  %1210 = fmul fast float %1207, %981
  %1211 = fmul fast float %1208, %982
  br label %1212

; <label>:1212                                    ; preds = %1202, %986, %970, %964
  %1213 = phi float [ %966, %964 ], [ %980, %970 ], [ %1209, %1202 ], [ %980, %986 ]
  %1214 = phi float [ %967, %964 ], [ %981, %970 ], [ %1210, %1202 ], [ %981, %986 ]
  %1215 = phi float [ %968, %964 ], [ %982, %970 ], [ %1211, %1202 ], [ %982, %986 ]
  %1216 = phi float [ %969, %964 ], [ %975, %970 ], [ %1205, %1202 ], [ %975, %986 ]
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1219 = extractvalue %dx.types.CBufRet.f32 %1217, 3
  %1220 = fmul fast float %1218, %49
  %1221 = fmul fast float %1219, %50
  %1222 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1223 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1224 = select i1 %745, i32 2, i32 0
  %1225 = or i32 %1224, 1
  %1226 = uitofp i32 %1225 to float
  %1227 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1222, float %1223, float %1226, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.ResRet.f32 %1227, 2
  %1231 = extractvalue %dx.types.ResRet.f32 %1227, 3
  %1232 = add nuw nsw i32 %1224, 2
  %1233 = uitofp i32 %1232 to float
  %1234 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1222, float %1223, float %1233, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = extractvalue %dx.types.ResRet.f32 %1234, 1
  %1237 = extractvalue %dx.types.ResRet.f32 %1234, 2
  %1238 = extractvalue %dx.types.ResRet.f32 %1234, 3
  %1239 = call float @dx.op.binary.f32(i32 35, float %1229, float %1230)  ; FMax(a,b)
  %1240 = call float @dx.op.binary.f32(i32 35, float %1228, float %1239)  ; FMax(a,b)
  %1241 = call float @dx.op.binary.f32(i32 35, float %1240, float %1231)  ; FMax(a,b)
  %1242 = call float @dx.op.binary.f32(i32 36, float %1236, float %1237)  ; FMin(a,b)
  %1243 = call float @dx.op.binary.f32(i32 36, float %1235, float %1242)  ; FMin(a,b)
  %1244 = call float @dx.op.binary.f32(i32 36, float %1243, float %1238)  ; FMin(a,b)
  %1245 = fmul fast float %1241, 2.550000e+02
  %1246 = fadd fast float %1245, 0x3F70101020000000
  %1247 = fptoui float %1246 to i32
  %1248 = fmul fast float %1244, 2.550000e+02
  %1249 = fadd fast float %1248, 0x3F70101020000000
  %1250 = fptoui float %1249 to i32
  %1251 = icmp ult i32 %1247, %1250
  br i1 %1251, label %1252, label %1295

; <label>:1252                                    ; preds = %1212
  %1253 = fcmp fast ogt float %43, 9.843750e-01
  %1254 = fadd fast float %965, -4.000000e+00
  %1255 = select i1 %1253, float -4.000000e+00, float %1254
  %1256 = call float @dx.op.binary.f32(i32 35, float %1255, float 0.000000e+00)  ; FMax(a,b)
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = fadd fast float %1258, %1256
  %1260 = extractvalue %dx.types.CBufRet.f32 %1257, 2
  %1261 = fmul fast float %1259, %1260
  %1262 = call float @dx.op.unary.f32(i32 23, float %1261)  ; Log(value)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1257, 3
  %1264 = fmul fast float %1263, %1262
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 2
  %1267 = fmul fast float %1264, %1266
  %1268 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1269 = uitofp i32 %1247 to float
  %1270 = uitofp i32 %1250 to float
  %1271 = fadd fast float %1269, 5.000000e-01
  %1272 = fadd fast float %1270, 5.000000e-01
  %1273 = fmul fast float %1266, %1271
  %1274 = fmul fast float %1266, %1272
  %1275 = fadd fast float %1273, 0x3F0FFB4800000000
  %1276 = fadd fast float %1274, 0xBF0FFB4800000000
  %1277 = call float @dx.op.binary.f32(i32 35, float %1268, float %1275)  ; FMax(a,b)
  %1278 = call float @dx.op.binary.f32(i32 36, float %1277, float %1276)  ; FMin(a,b)
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 1
  %1281 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1282 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1283 = select i1 %745, float %1282, float 0.000000e+00
  %1284 = fmul fast float %1280, %1278
  %1285 = fadd fast float %1283, %1284
  %1286 = fadd fast float %1283, %1281
  %1287 = fsub fast float %1280, %1281
  %1288 = fadd fast float %1287, %1283
  %1289 = call float @dx.op.binary.f32(i32 35, float %1285, float %1286)  ; FMax(a,b)
  %1290 = call float @dx.op.binary.f32(i32 36, float %1289, float %1288)  ; FMin(a,b)
  %1291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1222, float %1223, float %1290, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.ResRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.ResRet.f32 %1291, 2
  br label %1295

; <label>:1295                                    ; preds = %1252, %1212
  %1296 = phi float [ %1292, %1252 ], [ 1.000000e+00, %1212 ]
  %1297 = phi float [ %1293, %1252 ], [ 1.000000e+00, %1212 ]
  %1298 = phi float [ %1294, %1252 ], [ 1.000000e+00, %1212 ]
  %1299 = fmul fast float %1296, %1216
  %1300 = call float @dx.op.dot3.f32(i32 55, float %1296, float %1297, float %1298, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1301 = select i1 %147, float %1300, float %1296
  %1302 = select i1 %147, float %1300, float %1297
  %1303 = select i1 %147, float 1.000000e+00, float %1298
  %1304 = fmul fast float %1301, %1213
  %1305 = fmul fast float %1302, %1214
  %1306 = fmul fast float %1303, %1215
  %1307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.i32 %1307, 3
  %1309 = and i32 %1308, 3
  %1310 = icmp ne i32 %1309, 0
  %1311 = and i32 %1308, 4
  %1312 = icmp ne i32 %1311, 0
  %1313 = and i1 %1310, %1312
  %1314 = and i1 %147, %1313
  br i1 %1314, label %1315, label %1321

; <label>:1315                                    ; preds = %1295
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 1
  %1318 = fadd fast float %1299, -1.000000e+00
  %1319 = fmul fast float %1317, %1318
  %1320 = fadd fast float %1319, 1.000000e+00
  br label %1321

; <label>:1321                                    ; preds = %1315, %1295
  %1322 = phi float [ %1320, %1315 ], [ %1299, %1295 ]
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 0
  br i1 %147, label %1325, label %1345

; <label>:1325                                    ; preds = %1321
  %1326 = fadd fast float %1304, %1305
  %1327 = fmul fast float %1324, %1326
  %1328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1329 = extractvalue %dx.types.CBufRet.f32 %1328, 3
  %1330 = extractvalue %dx.types.CBufRet.f32 %768, 1
  %1331 = fsub fast float %771, %1330
  %1332 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %1333 = fmul fast float %1331, %1332
  %1334 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1335 = fsub fast float %1334, %1329
  %1336 = fmul fast float %1335, %1322
  %1337 = fadd fast float %1336, %1329
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 0
  %1340 = fsub fast float %1337, %1339
  %1341 = fmul fast float %1340, 1.000000e+01
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1343 = fmul fast float %1342, %721
  %1344 = fmul fast float %1337, %1343
  br label %1354

; <label>:1345                                    ; preds = %1321
  %1346 = fmul fast float %1324, %1304
  %1347 = fmul fast float %1324, %1305
  %1348 = fmul fast float %1306, %1324
  %1349 = call float @dx.op.binary.f32(i32 35, float %1347, float %1348)  ; FMax(a,b)
  %1350 = call float @dx.op.binary.f32(i32 35, float %1346, float %1349)  ; FMax(a,b)
  %1351 = call float @dx.op.binary.f32(i32 35, float %1350, float 0.000000e+00)  ; FMax(a,b)
  %1352 = fcmp fast ugt float %1351, 0x3F10000000000000
  br i1 %1352, label %1354, label %1353

; <label>:1353                                    ; preds = %1345
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1354

; <label>:1354                                    ; preds = %1353, %1345, %1325
  %1355 = phi float [ %1327, %1325 ], [ %1346, %1353 ], [ %1346, %1345 ]
  %1356 = phi float [ %1344, %1325 ], [ %1347, %1353 ], [ %1347, %1345 ]
  %1357 = phi float [ %1343, %1325 ], [ %1348, %1353 ], [ %1348, %1345 ]
  %1358 = phi float [ %1343, %1325 ], [ 0.000000e+00, %1353 ], [ 0.000000e+00, %1345 ]
  %1359 = fadd fast float %558, 0x3FE3C6EF40000000
  %1360 = call float @dx.op.unary.f32(i32 22, float %1359)  ; Frc(value)
  %1361 = call float @dx.op.unary.f32(i32 23, float %1355)  ; Log(value)
  %1362 = fadd fast float %1361, -7.000000e+00
  %1363 = call float @dx.op.unary.f32(i32 21, float %1362)  ; Exp(value)
  %1364 = fmul fast float %1360, 2.000000e+00
  %1365 = fadd fast float %1364, -1.000000e+00
  %1366 = fmul fast float %1363, %1365
  %1367 = fcmp fast ogt float %1355, 0.000000e+00
  %1368 = select i1 %1367, float %1366, float 0.000000e+00
  %1369 = fadd fast float %1368, %1355
  %1370 = fadd fast float %558, 0x3FF3C6EF40000000
  %1371 = call float @dx.op.unary.f32(i32 22, float %1370)  ; Frc(value)
  %1372 = call float @dx.op.unary.f32(i32 23, float %1356)  ; Log(value)
  %1373 = fadd fast float %1372, -7.000000e+00
  %1374 = call float @dx.op.unary.f32(i32 21, float %1373)  ; Exp(value)
  %1375 = fmul fast float %1371, 2.000000e+00
  %1376 = fadd fast float %1375, -1.000000e+00
  %1377 = fmul fast float %1374, %1376
  %1378 = fcmp fast ogt float %1356, 0.000000e+00
  %1379 = select i1 %1378, float %1377, float 0.000000e+00
  %1380 = fadd fast float %1379, %1356
  %1381 = fadd fast float %558, 0x3FFDAA66E0000000
  %1382 = call float @dx.op.unary.f32(i32 22, float %1381)  ; Frc(value)
  %1383 = call float @dx.op.unary.f32(i32 23, float %1357)  ; Log(value)
  %1384 = fadd fast float %1383, -6.000000e+00
  %1385 = call float @dx.op.unary.f32(i32 21, float %1384)  ; Exp(value)
  %1386 = fmul fast float %1382, 2.000000e+00
  %1387 = fadd fast float %1386, -1.000000e+00
  %1388 = fmul fast float %1385, %1387
  %1389 = fcmp fast ogt float %1357, 0.000000e+00
  %1390 = select i1 %1389, float %1388, float 0.000000e+00
  %1391 = fadd fast float %1390, %1357
  %1392 = select i1 %147, float %1356, float %1380
  %1393 = select i1 %147, float %1357, float %1391
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1394 = call float @dx.op.binary.f32(i32 36, float %1369, float 3.225500e+04)  ; FMin(a,b)
  %1395 = call float @dx.op.binary.f32(i32 36, float %1392, float 3.225500e+04)  ; FMin(a,b)
  %1396 = call float @dx.op.binary.f32(i32 36, float %1393, float 3.225500e+04)  ; FMin(a,b)
  %1397 = call float @dx.op.binary.f32(i32 36, float %1358, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1394)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1395)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1396)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1397)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!33 = !{[33 x i32] [i32 31, i32 4, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 7, i32 15, i32 15, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 15, i32 15, i32 15, i32 15, i32 15, i32 14, i32 15]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !56}
!35 = !{!36, !54, null}
!36 = !{!37, !40, !42, !44, !46, !48, !50, !51, !53}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 8}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 3, i8 0, !39}
!45 = !{i32 3}
!46 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !47, i8 3, i32 1, i8 2, i32 4, i8 0, !43}
!47 = !{i32 5}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 5, i8 0, !39}
!49 = !{i32 8}
!50 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 6, i8 0, !39}
!51 = !{i32 7, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 7, i8 0, !52}
!52 = !{i32 3, i32 7}
!53 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!54 = !{!55}
!55 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!56 = !{i32 0, i64 24}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 1}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}

