;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float    y w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 5   xy          4     NONE   float   xy  
; TEXCOORD                 8   xyzw        5     NONE   float   x  w
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
; shader hash: 96a3b9e253398b38fedb7829d32db74e
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 23, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 23, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 23, 24, 25, 26, 27, 28, 30 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 20, 24, 25, 26, 27, 28, 30 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 20, 24, 25, 26, 27, 28, 30 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 20, 24, 25, 26, 27, 28, 30 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 20, 24, 25, 26, 27, 28, 30 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 20, 24, 25, 26, 27, 28, 30 }
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
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %46 = fmul fast float %45, %39
  %47 = fmul fast float %45, %40
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %50 = extractvalue %dx.types.CBufRet.f32 %48, 3
  %51 = fmul fast float %46, 2.000000e+00
  %52 = fmul fast float %51, %49
  %53 = fmul fast float %47, 2.000000e+00
  %54 = fmul fast float %53, %50
  %55 = fsub fast float 1.000000e+00, %52
  %56 = fsub fast float 1.000000e+00, %54
  %57 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.f32 %57, 0
  %59 = extractvalue %dx.types.CBufRet.f32 %57, 1
  %60 = extractvalue %dx.types.CBufRet.f32 %57, 2
  %61 = fmul fast float %55, %58
  %62 = fmul fast float %55, %59
  %63 = fmul fast float %55, %60
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %68 = fmul fast float %56, %65
  %69 = fmul fast float %56, %66
  %70 = fmul fast float %56, %67
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = fadd fast float %68, %72
  %76 = fadd fast float %75, %61
  %77 = fadd fast float %69, %73
  %78 = fadd fast float %77, %62
  %79 = fadd fast float %70, %74
  %80 = fadd fast float %79, %63
  %81 = fmul fast float %76, %42
  %82 = fmul fast float %78, %42
  %83 = fmul fast float %80, %42
  %84 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.i32 %84, 3
  %86 = and i32 %85, 3
  %87 = icmp ne i32 %86, 0
  %88 = and i32 %85, 4
  %89 = icmp ne i32 %88, 0
  %90 = and i1 %87, %89
  br i1 %90, label %91, label %100

; <label>:91                                      ; preds = %0
  %92 = fmul fast float %50, %47
  %93 = fmul fast float %49, %46
  %94 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %93, float %92, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %95 = extractvalue %dx.types.ResRet.f32 %94, 0
  %96 = fsub fast float 1.000000e+00, %95
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = fcmp fast olt float %96, %98
  br label %103

; <label>:100                                     ; preds = %0
  %101 = icmp eq i32 %88, 0
  %102 = and i1 %87, %101
  br label %103

; <label>:103                                     ; preds = %100, %91
  %104 = phi i1 [ %99, %91 ], [ %102, %100 ]
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 3
  %108 = fmul fast float %106, %46
  %109 = fmul fast float %107, %47
  %110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.i32 %110, 0
  %112 = and i32 %111, 114688
  %113 = icmp ne i32 %112, 0
  %114 = select i1 %113, float %108, float 0.000000e+00
  %115 = select i1 %113, float %109, float 0.000000e+00
  %116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %114, float %115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %117 = extractvalue %dx.types.ResRet.f32 %116, 0
  %118 = fmul fast float %117, 2.550000e+02
  %119 = fptoui float %118 to i32
  %120 = select i1 %113, i32 %119, i32 0
  %121 = mul i32 %21, 208
  %122 = add i32 %121, 188
  %123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.i32 %123, 0
  %125 = and i32 %85, 114688
  %126 = and i32 %85, 8
  %127 = icmp ne i32 %126, 0
  %128 = or i1 %104, %127
  %129 = select i1 %128, i32 %125, i32 16384
  %130 = and i32 %129, %124
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

; <label>:132                                     ; preds = %103
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %133

; <label>:133                                     ; preds = %132, %103
  %134 = and i32 %124, 512
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %160, label %136

; <label>:136                                     ; preds = %133
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %138, %46
  %141 = fmul fast float %139, %47
  %142 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %144 = fdiv fast float %142, %143
  %145 = fcmp fast ogt float %144, 0x3FFC71C720000000
  br i1 %145, label %146, label %152

; <label>:146                                     ; preds = %136
  %147 = fdiv fast float 0x3FFC71C720000000, %144
  %148 = fmul fast float %147, %141
  %149 = fsub fast float 1.000000e+00, %147
  %150 = fmul fast float %149, 5.000000e-01
  %151 = fadd fast float %150, %148
  br label %160

; <label>:152                                     ; preds = %136
  %153 = fcmp fast olt float %144, 0x3FFC71C720000000
  br i1 %153, label %154, label %160

; <label>:154                                     ; preds = %152
  %155 = fmul fast float %140, 5.625000e-01
  %156 = fmul fast float %155, %144
  %157 = fmul fast float %144, 2.812500e-01
  %158 = fsub fast float 5.000000e-01, %157
  %159 = fadd fast float %158, %156
  br label %160

; <label>:160                                     ; preds = %154, %152, %146, %133
  %161 = phi float [ %35, %133 ], [ %140, %146 ], [ %159, %154 ], [ %140, %152 ]
  %162 = phi float [ %36, %133 ], [ %151, %146 ], [ %141, %154 ], [ %141, %152 ]
  %163 = add i32 %22, 72
  %164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %163, i32 undef)  ; BufferLoad(srv,index,wot)
  %165 = extractvalue %dx.types.ResRet.i32 %164, 0
  %166 = extractvalue %dx.types.ResRet.i32 %164, 1
  %167 = bitcast i32 %165 to float
  %168 = bitcast i32 %166 to float
  %169 = fmul fast float %167, %35
  %170 = fmul fast float %168, %36
  %171 = call float @dx.op.unary.f32(i32 22, float %169)  ; Frc(value)
  %172 = call float @dx.op.unary.f32(i32 22, float %170)  ; Frc(value)
  %173 = and i32 %124, 16
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %181, label %175, !dx.controlflow.hints !60

; <label>:175                                     ; preds = %160
  %176 = fsub fast float %38, %37
  %177 = fsub fast float 1.000000e+00, %37
  %178 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %177)  ; FMax(a,b)
  %179 = fdiv fast float %176, %178
  %180 = call float @dx.op.unary.f32(i32 7, float %179)  ; Saturate(value)
  br label %181

; <label>:181                                     ; preds = %175, %160
  %182 = phi float [ %180, %175 ], [ %38, %160 ]
  %183 = fcmp fast ogt float %182, 0.000000e+00
  br i1 %183, label %185, label %184

; <label>:184                                     ; preds = %181
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %185

; <label>:185                                     ; preds = %184, %181
  %186 = call float @dx.op.unary.f32(i32 7, float %182)  ; Saturate(value)
  %187 = fmul fast float %46, 5.000000e-01
  %188 = fmul fast float %47, 5.000000e-01
  %189 = fptosi float %187 to i32
  %190 = fptosi float %188 to i32
  %191 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %189, i32 %190, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = lshr i32 %192, 18
  %194 = uitofp i32 %193 to float
  %195 = fmul fast float %194, 0x3F4C00EBA0000000
  %196 = call float @dx.op.unary.f32(i32 21, float %195)  ; Exp(value)
  %197 = fadd fast float %196, -1.000000e+00
  %198 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %199 = extractvalue %dx.types.Dimensions %198, 0
  %200 = sitofp i32 %199 to float
  %201 = extractvalue %dx.types.Dimensions %198, 1
  %202 = sitofp i32 %201 to float
  %203 = fcmp fast oge float %187, %200
  %204 = fcmp fast oge float %188, %202
  %205 = or i1 %203, %204
  %206 = select i1 %205, float 0x4197782600000000, float %197
  %207 = fsub fast float %206, %42
  %208 = fcmp fast ogt float %207, 0.000000e+00
  %209 = and i32 %120, -2
  %210 = icmp eq i32 %209, 2
  %211 = and i1 %210, %208
  %212 = xor i1 %208, true
  %213 = icmp eq i32 %120, 1
  %214 = and i1 %213, %212
  %215 = or i1 %211, %214
  %216 = and i32 %124, 262144
  %217 = icmp ne i32 %216, 0
  %218 = and i1 %217, %215
  %219 = xor i1 %215, true
  %220 = and i32 %124, 131072
  %221 = icmp ne i32 %220, 0
  %222 = and i1 %221, %219
  %223 = or i1 %218, %222
  br i1 %223, label %224, label %225

; <label>:224                                     ; preds = %185
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %225

; <label>:225                                     ; preds = %224, %185
  %226 = and i32 %124, 32
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %445, label %228, !dx.controlflow.hints !61

; <label>:228                                     ; preds = %225
  %229 = add i32 %121, 80
  %230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = extractvalue %dx.types.ResRet.f32 %230, 1
  %233 = extractvalue %dx.types.ResRet.f32 %230, 2
  %234 = extractvalue %dx.types.ResRet.f32 %230, 3
  %235 = add i32 %121, 96
  %236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = extractvalue %dx.types.ResRet.f32 %236, 2
  %240 = add i32 %121, 112
  %241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 3
  %243 = add i32 %121, 128
  %244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 3
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 4096
  %249 = icmp ne i32 %248, 0
  %250 = fcmp fast une float %239, 0.000000e+00
  %251 = and i32 %247, 64
  %252 = icmp ne i32 %251, 0
  %253 = and i32 %247, 128
  %254 = icmp eq i32 %253, 0
  %255 = and i32 %247, 2048
  %256 = icmp eq i32 %255, 0
  %257 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %258 = extractvalue %dx.types.Dimensions %257, 0
  %259 = sitofp i32 %258 to float
  %260 = extractvalue %dx.types.Dimensions %257, 1
  %261 = sitofp i32 %260 to float
  %262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %263 = extractvalue %dx.types.CBufRet.f32 %262, 2
  %264 = extractvalue %dx.types.CBufRet.f32 %262, 3
  %265 = fmul fast float %263, %46
  %266 = fmul fast float %264, %47
  %267 = fmul fast float %265, %259
  %268 = fmul fast float %266, %261
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 1
  %271 = fsub fast float -0.000000e+00, %270
  %272 = fptoui float %271 to i32
  %273 = fptoui float %267 to i32
  %274 = fptoui float %268 to i32
  %275 = and i32 %272, 31
  %276 = lshr i32 %273, %275
  %277 = lshr i32 %274, %275
  %278 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %272, i32 %276, i32 %277, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = fcmp fast ogt float %279, -1.000000e+00
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %283 = select i1 %280, float %282, float 1.000000e+00
  %284 = fadd fast float %279, 1.000000e+00
  %285 = fmul fast float %283, %284
  %286 = call float @dx.op.unary.f32(i32 6, float %285)  ; FAbs(value)
  %287 = extractvalue %dx.types.CBufRet.f32 %281, 3
  %288 = fcmp fast oge float %286, %287
  %289 = select i1 %288, float 0x4197782600000000, float %286
  br i1 %256, label %355, label %290, !dx.controlflow.hints !62

; <label>:290                                     ; preds = %228
  %291 = fmul fast float %51, %263
  %292 = fmul fast float %53, %264
  %293 = fsub fast float 1.000000e+00, %291
  %294 = fsub fast float 1.000000e+00, %292
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 0
  %297 = extractvalue %dx.types.CBufRet.f32 %295, 1
  %298 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %299 = fmul fast float %293, %296
  %300 = fmul fast float %293, %297
  %301 = fmul fast float %293, %298
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %306 = fmul fast float %294, %303
  %307 = fmul fast float %294, %304
  %308 = fmul fast float %294, %305
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %312 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %313 = fadd fast float %306, %310
  %314 = fadd fast float %313, %299
  %315 = fadd fast float %307, %311
  %316 = fadd fast float %315, %300
  %317 = fadd fast float %308, %312
  %318 = fadd fast float %317, %301
  %319 = fmul fast float %314, %289
  %320 = fmul fast float %316, %289
  %321 = fmul fast float %318, %289
  %322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %323 = extractvalue %dx.types.CBufRet.f32 %322, 0
  %324 = extractvalue %dx.types.CBufRet.f32 %322, 1
  %325 = extractvalue %dx.types.CBufRet.f32 %322, 2
  %326 = fsub fast float %323, %23
  %327 = fadd fast float %326, %319
  %328 = fsub fast float %324, %24
  %329 = fadd fast float %328, %320
  %330 = fsub fast float %325, %25
  %331 = fadd fast float %330, %321
  %332 = fmul fast float %26, %26
  %333 = call float @dx.op.dot3.f32(i32 55, float %327, float %329, float %331, float %327, float %329, float %331)  ; Dot3(ax,ay,az,bx,by,bz)
  %334 = fsub fast float %332, %333
  %335 = fmul fast float %238, %332
  %336 = fmul fast float %237, %332
  %337 = fcmp fast olt float %334, %335
  %338 = fcmp fast ogt float %334, %336
  %339 = or i1 %337, %338
  %340 = select i1 %339, float 0.000000e+00, float %334
  %341 = fsub fast float %237, %238
  %342 = fmul fast float %341, %332
  %343 = fsub fast float %340, %335
  %344 = fdiv fast float %343, %342
  %345 = call float @dx.op.unary.f32(i32 7, float %344)  ; Saturate(value)
  %346 = fmul fast float %345, 2.000000e+00
  %347 = fsub fast float 3.000000e+00, %346
  %348 = fsub fast float %242, %245
  %349 = fmul fast float %345, %345
  %350 = fmul fast float %349, %348
  %351 = fmul fast float %350, %347
  %352 = fadd fast float %351, %245
  %353 = fmul fast float %231, %231
  %354 = fmul fast float %353, %340
  br label %438

; <label>:355                                     ; preds = %228
  %356 = and i32 %247, 256
  %357 = icmp eq i32 %356, 0
  %358 = fsub fast float %289, %42
  br i1 %357, label %395, label %359

; <label>:359                                     ; preds = %355
  %360 = fadd fast float %237, %42
  %361 = fcmp fast olt float %289, %42
  %362 = fcmp fast ogt float %289, %360
  %363 = or i1 %361, %362
  %364 = select i1 %363, float 0.000000e+00, float %358
  %365 = call float @dx.op.unary.f32(i32 83, float %289)  ; DerivCoarseX(value)
  %366 = call float @dx.op.unary.f32(i32 84, float %289)  ; DerivCoarseY(value)
  %367 = fmul fast float %365, %365
  %368 = fmul fast float %366, %366
  %369 = fadd fast float %368, %367
  %370 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %371 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %372 = fmul fast float %371, %370
  %373 = call float @dx.op.unary.f32(i32 7, float %372)  ; Saturate(value)
  %374 = fmul fast float %373, %238
  %375 = fdiv fast float %358, %374
  %376 = call float @dx.op.unary.f32(i32 7, float %375)  ; Saturate(value)
  %377 = fmul fast float %376, 2.000000e+00
  %378 = fsub fast float 3.000000e+00, %377
  %379 = fmul fast float %376, %376
  %380 = fmul fast float %379, %378
  %381 = fsub fast float %289, %360
  %382 = fadd fast float %381, %374
  %383 = fdiv fast float %382, %374
  %384 = call float @dx.op.unary.f32(i32 7, float %383)  ; Saturate(value)
  %385 = fmul fast float %384, 2.000000e+00
  %386 = fsub fast float 3.000000e+00, %385
  %387 = fmul fast float %384, %384
  %388 = fmul fast float %387, %386
  %389 = fsub fast float %380, %388
  %390 = fsub fast float %242, %245
  %391 = fmul fast float %389, %390
  %392 = fadd fast float %391, %245
  %393 = fmul fast float %364, %231
  %394 = call float @dx.op.unary.f32(i32 6, float %393)  ; FAbs(value)
  br label %438

; <label>:395                                     ; preds = %355
  br i1 %250, label %396, label %409

; <label>:396                                     ; preds = %395
  %397 = fdiv fast float 5.000000e+01, %26
  %398 = select i1 %252, float %397, float 1.000000e+00
  %399 = fmul fast float %398, %231
  %400 = fmul fast float %171, 2.000000e+00
  %401 = fmul fast float %172, 2.000000e+00
  %402 = fadd fast float %400, -1.000000e+00
  %403 = fadd fast float %401, -1.000000e+00
  %404 = call float @dx.op.dot2.f32(i32 54, float %402, float %403, float %402, float %403)  ; Dot2(ax,ay,bx,by)
  %405 = fmul fast float %239, %26
  %406 = fmul fast float %405, %404
  %407 = fsub fast float %358, %406
  %408 = fmul fast float %399, %407
  br label %438

; <label>:409                                     ; preds = %395
  br i1 %254, label %430, label %410

; <label>:410                                     ; preds = %409
  %411 = fmul fast float %26, 0x3F947AE140000000
  %412 = select i1 %252, float %411, float 1.000000e+00
  %413 = fdiv fast float 1.000000e+00, %412
  %414 = fmul fast float %412, %232
  %415 = fmul fast float %412, %233
  %416 = fmul fast float %413, %234
  %417 = call float @dx.op.unary.f32(i32 6, float %358)  ; FAbs(value)
  %418 = fcmp fast olt float %417, %414
  br i1 %418, label %419, label %423, !dx.controlflow.hints !63

; <label>:419                                     ; preds = %410
  %420 = fmul fast float %413, %231
  %421 = fmul fast float %420, %417
  %422 = call float @dx.op.unary.f32(i32 6, float %421)  ; FAbs(value)
  br label %438

; <label>:423                                     ; preds = %410
  %424 = fcmp fast ogt float %417, %415
  br i1 %424, label %425, label %438

; <label>:425                                     ; preds = %423
  %426 = fsub fast float %417, %415
  %427 = fmul fast float %416, %426
  %428 = call float @dx.op.unary.f32(i32 6, float %427)  ; FAbs(value)
  %429 = fsub fast float 1.000000e+00, %428
  br label %438

; <label>:430                                     ; preds = %409
  %431 = fdiv fast float 5.000000e+01, %26
  %432 = select i1 %252, float %431, float 1.000000e+00
  %433 = fmul fast float %432, %231
  %434 = call float @dx.op.unary.f32(i32 6, float %207)  ; FAbs(value)
  %435 = select i1 %249, float %434, float 0x47EFFFFFE0000000
  %436 = call float @dx.op.binary.f32(i32 36, float %358, float %435)  ; FMin(a,b)
  %437 = fmul fast float %433, %436
  br label %438

; <label>:438                                     ; preds = %430, %425, %423, %419, %396, %359, %290
  %439 = phi float [ %354, %290 ], [ %394, %359 ], [ %408, %396 ], [ %437, %430 ], [ %422, %419 ], [ %429, %425 ], [ %417, %423 ]
  %440 = phi float [ %352, %290 ], [ %392, %359 ], [ 1.000000e+00, %396 ], [ 1.000000e+00, %430 ], [ 1.000000e+00, %419 ], [ 1.000000e+00, %425 ], [ 1.000000e+00, %423 ]
  %441 = call float @dx.op.unary.f32(i32 7, float %439)  ; Saturate(value)
  %442 = fmul fast float %441, %38
  %443 = fmul fast float %440, %186
  %444 = fmul fast float %443, %441
  br label %445

; <label>:445                                     ; preds = %438, %225
  %446 = phi float [ %444, %438 ], [ %186, %225 ]
  %447 = phi float [ %442, %438 ], [ %38, %225 ]
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 2
  %450 = fptosi float %42 to i32
  %451 = sitofp i32 %450 to float
  %452 = fadd fast float %449, %451
  %453 = fmul fast float %452, 0x3FE3C6EF40000000
  %454 = frem fast float %46, 2.560000e+02
  %455 = frem fast float %47, 2.560000e+02
  %456 = fptoui float %454 to i32
  %457 = fptoui float %455 to i32
  %458 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %456, i32 %457, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = fadd fast float %459, %453
  %461 = call float @dx.op.unary.f32(i32 22, float %460)  ; Frc(value)
  %462 = and i32 %124, 1
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %521, label %464, !dx.controlflow.hints !64

; <label>:464                                     ; preds = %445
  %465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %121, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.f32 %465, 2
  %467 = extractvalue %dx.types.ResRet.f32 %465, 3
  %468 = add i32 %121, 16
  %469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = extractvalue %dx.types.ResRet.f32 %469, 1
  %472 = extractvalue %dx.types.ResRet.f32 %469, 2
  %473 = add i32 %121, 32
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = extractvalue %dx.types.ResRet.f32 %474, 2
  %478 = and i32 %124, 2
  %479 = icmp eq i32 %478, 0
  %480 = call float @dx.op.dot3.f32(i32 55, float %31, float %32, float %33, float %31, float %32, float %33)  ; Dot3(ax,ay,az,bx,by,bz)
  %481 = call float @dx.op.unary.f32(i32 25, float %480)  ; Rsqrt(value)
  %482 = fmul fast float %481, %31
  %483 = fmul fast float %481, %32
  %484 = fmul fast float %481, %33
  %485 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %486 = call float @dx.op.unary.f32(i32 25, float %485)  ; Rsqrt(value)
  %487 = fmul fast float %486, %81
  %488 = fmul fast float %486, %82
  %489 = fmul fast float %486, %83
  %490 = call float @dx.op.dot3.f32(i32 55, float %487, float %488, float %489, float %482, float %483, float %484)  ; Dot3(ax,ay,az,bx,by,bz)
  %491 = fmul fast float %490, %490
  %492 = fmul fast float %491, %466
  %493 = fadd fast float %492, %467
  %494 = call float @dx.op.unary.f32(i32 7, float %493)  ; Saturate(value)
  br i1 %479, label %495, label %505, !dx.controlflow.hints !65

; <label>:495                                     ; preds = %464
  %496 = extractvalue %dx.types.ResRet.f32 %465, 1
  %497 = extractvalue %dx.types.ResRet.f32 %465, 0
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 3
  %500 = fmul fast float %499, %485
  %501 = fsub fast float %497, %500
  %502 = fmul fast float %501, %496
  %503 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %504 = fmul fast float %503, %494
  br label %505

; <label>:505                                     ; preds = %495, %464
  %506 = phi float [ %504, %495 ], [ %494, %464 ]
  %507 = fsub fast float %470, %475
  %508 = fsub fast float %471, %476
  %509 = fsub fast float %472, %477
  %510 = fmul fast float %506, %507
  %511 = fmul fast float %506, %508
  %512 = fmul fast float %506, %509
  %513 = fadd fast float %510, %475
  %514 = fadd fast float %511, %476
  %515 = fadd fast float %512, %477
  %516 = fmul fast float %513, %28
  %517 = fmul fast float %514, %28
  %518 = fmul fast float %515, %28
  %519 = fmul fast float %506, %446
  %520 = fmul fast float %506, %447
  br label %521

; <label>:521                                     ; preds = %505, %445
  %522 = phi float [ %519, %505 ], [ %446, %445 ]
  %523 = phi float [ %520, %505 ], [ %447, %445 ]
  %524 = phi float [ %516, %505 ], [ %28, %445 ]
  %525 = phi float [ %517, %505 ], [ %28, %445 ]
  %526 = phi float [ %518, %505 ], [ %28, %445 ]
  %527 = add i32 %22, 120
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = add i32 %529, 0
  %531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %531, %dx.types.Handle %43, float %161, float %162, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = add i32 %22, 124
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = add i32 %536, 0
  %538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %538, %dx.types.Handle %16, float %533, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  %541 = extractvalue %dx.types.ResRet.f32 %539, 1
  %542 = extractvalue %dx.types.ResRet.f32 %539, 2
  %543 = add i32 %22, 44
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = shl i32 %545, 4
  %547 = and i32 %546, 32752
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = lshr i32 %545, 7
  %550 = and i32 %549, 32752
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = lshr i32 %545, 22
  %553 = shl nuw nsw i32 %552, 5
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = fmul fast float %548, %540
  %556 = fmul fast float %551, %541
  %557 = fmul fast float %554, %542
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %560 = fmul fast float %555, %559
  %561 = fmul fast float %556, %559
  %562 = fmul fast float %557, %559
  %563 = add i32 %22, 48
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = lshr i32 %565, 22
  %567 = shl nuw nsw i32 %566, 5
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = fmul fast float %568, %560
  %570 = select i1 %104, float %569, float %560
  %571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = extractvalue %dx.types.ResRet.f32 %571, 1
  %574 = extractvalue %dx.types.ResRet.f32 %571, 2
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %577 = fmul fast float %570, %524
  %578 = fmul fast float %561, %525
  %579 = fmul fast float %562, %526
  %580 = call float @dx.op.dot3.f32(i32 55, float %577, float %578, float %579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %581 = select i1 %104, float 0.000000e+00, float %577
  %582 = select i1 %104, float %580, float %578
  %583 = select i1 %104, float 0.000000e+00, float %579
  %584 = call float @dx.op.dot3.f32(i32 55, float %540, float %541, float %542, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %585 = add i32 %22, 32
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %587, 255
  %589 = uitofp i32 %588 to float
  %590 = lshr i32 %587, 8
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, %584
  %594 = fadd fast float %593, %589
  %595 = fmul fast float %594, 0x3F70101020000000
  %596 = call float @dx.op.unary.f32(i32 7, float %595)  ; Saturate(value)
  %597 = and i32 %124, 8192
  %598 = icmp eq i32 %597, 0
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 0
  br i1 %598, label %607, label %601, !dx.controlflow.hints !66

; <label>:601                                     ; preds = %521
  %602 = add i32 %121, 176
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = fcmp fast oge float %604, 0.000000e+00
  %606 = select i1 %605, float %604, float %600
  br label %614

; <label>:607                                     ; preds = %521
  %608 = add i32 %22, 104
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = bitcast i32 %610 to float
  %612 = fcmp fast oge float %611, 0.000000e+00
  %613 = select i1 %612, float %611, float %600
  br label %614

; <label>:614                                     ; preds = %607, %601
  %615 = phi float [ %606, %601 ], [ %613, %607 ]
  %616 = fmul fast float %584, %523
  %617 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %189, i32 %190, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = lshr i32 %618, 18
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F4C00EBA0000000
  %622 = call float @dx.op.unary.f32(i32 21, float %621)  ; Exp(value)
  %623 = fadd fast float %622, -1.000000e+00
  %624 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %625 = extractvalue %dx.types.Dimensions %624, 0
  %626 = sitofp i32 %625 to float
  %627 = extractvalue %dx.types.Dimensions %624, 1
  %628 = sitofp i32 %627 to float
  %629 = fcmp fast oge float %187, %626
  %630 = fcmp fast oge float %188, %628
  %631 = or i1 %629, %630
  %632 = select i1 %631, float 0x4197782600000000, float %623
  %633 = icmp eq i32 %120, 3
  %634 = fcmp fast ogt float %42, %632
  %635 = and i1 %213, %634
  %636 = or i1 %633, %635
  %637 = icmp eq i32 %120, 2
  %638 = fcmp fast ole float %42, %632
  %639 = and i1 %637, %638
  %640 = or i1 %639, %636
  %641 = fmul fast float %570, %34
  %642 = fmul fast float %641, %572
  %643 = fmul fast float %642, %576
  %644 = fmul fast float %561, %34
  %645 = fmul fast float %644, %573
  %646 = fmul fast float %645, %576
  %647 = fmul fast float %562, %34
  %648 = fmul fast float %647, %574
  %649 = fmul fast float %648, %576
  %650 = fadd fast float %643, %581
  %651 = fadd fast float %582, %646
  %652 = fadd fast float %649, %583
  %653 = fmul fast float %650, %522
  %654 = fmul fast float %651, %522
  %655 = fmul fast float %652, %522
  %656 = fmul fast float %615, %596
  %657 = fsub fast float 1.000000e+00, %596
  %658 = fsub fast float %657, %616
  %659 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 3
  %662 = fmul fast float %661, %659
  %663 = fadd fast float %662, %656
  %664 = and i32 %124, 1048576
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %757, label %666, !dx.controlflow.hints !67

; <label>:666                                     ; preds = %614
  %667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %668 = extractvalue %dx.types.CBufRet.f32 %667, 2
  %669 = extractvalue %dx.types.CBufRet.f32 %667, 3
  %670 = fmul fast float %668, %46
  %671 = fmul fast float %669, %47
  %672 = call float @dx.op.unary.f32(i32 7, float %670)  ; Saturate(value)
  %673 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %674 = select i1 %640, i32 2, i32 0
  %675 = or i32 %674, 1
  %676 = uitofp i32 %675 to float
  %677 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %672, float %673, float %676, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %678 = extractvalue %dx.types.ResRet.f32 %677, 0
  %679 = extractvalue %dx.types.ResRet.f32 %677, 1
  %680 = extractvalue %dx.types.ResRet.f32 %677, 2
  %681 = extractvalue %dx.types.ResRet.f32 %677, 3
  %682 = add nuw nsw i32 %674, 2
  %683 = uitofp i32 %682 to float
  %684 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %672, float %673, float %683, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = extractvalue %dx.types.ResRet.f32 %684, 1
  %687 = extractvalue %dx.types.ResRet.f32 %684, 2
  %688 = extractvalue %dx.types.ResRet.f32 %684, 3
  %689 = call float @dx.op.binary.f32(i32 35, float %679, float %680)  ; FMax(a,b)
  %690 = call float @dx.op.binary.f32(i32 35, float %678, float %689)  ; FMax(a,b)
  %691 = call float @dx.op.binary.f32(i32 35, float %690, float %681)  ; FMax(a,b)
  %692 = call float @dx.op.binary.f32(i32 36, float %686, float %687)  ; FMin(a,b)
  %693 = call float @dx.op.binary.f32(i32 36, float %685, float %692)  ; FMin(a,b)
  %694 = call float @dx.op.binary.f32(i32 36, float %693, float %688)  ; FMin(a,b)
  %695 = fmul fast float %691, 2.550000e+02
  %696 = fadd fast float %695, 0x3F70101020000000
  %697 = fptoui float %696 to i32
  %698 = fmul fast float %694, 2.550000e+02
  %699 = fadd fast float %698, 0x3F70101020000000
  %700 = fptoui float %699 to i32
  %701 = icmp ult i32 %697, %700
  br i1 %701, label %702, label %750

; <label>:702                                     ; preds = %666
  %703 = fcmp fast ogt float %41, 9.843750e-01
  %704 = fadd fast float %42, -4.000000e+00
  %705 = select i1 %703, float -4.000000e+00, float %704
  %706 = call float @dx.op.binary.f32(i32 35, float %705, float 0.000000e+00)  ; FMax(a,b)
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %709 = fadd fast float %708, %706
  %710 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %711 = fmul fast float %709, %710
  %712 = call float @dx.op.unary.f32(i32 23, float %711)  ; Log(value)
  %713 = extractvalue %dx.types.CBufRet.f32 %707, 3
  %714 = fmul fast float %713, %712
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 2
  %717 = fmul fast float %714, %716
  %718 = call float @dx.op.unary.f32(i32 7, float %717)  ; Saturate(value)
  %719 = uitofp i32 %697 to float
  %720 = uitofp i32 %700 to float
  %721 = fadd fast float %719, 5.000000e-01
  %722 = fadd fast float %720, 5.000000e-01
  %723 = fmul fast float %716, %721
  %724 = fmul fast float %716, %722
  %725 = fadd fast float %723, 0x3F0FFB4800000000
  %726 = fadd fast float %724, 0xBF0FFB4800000000
  %727 = call float @dx.op.binary.f32(i32 35, float %718, float %725)  ; FMax(a,b)
  %728 = call float @dx.op.binary.f32(i32 36, float %727, float %726)  ; FMin(a,b)
  %729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.f32 %729, 1
  %731 = extractvalue %dx.types.CBufRet.f32 %729, 2
  %732 = extractvalue %dx.types.CBufRet.f32 %729, 0
  %733 = select i1 %640, float %732, float 0.000000e+00
  %734 = fmul fast float %730, %728
  %735 = fadd fast float %733, %734
  %736 = fadd fast float %733, %731
  %737 = fsub fast float %730, %731
  %738 = fadd fast float %737, %733
  %739 = call float @dx.op.binary.f32(i32 35, float %735, float %736)  ; FMax(a,b)
  %740 = call float @dx.op.binary.f32(i32 36, float %739, float %738)  ; FMin(a,b)
  %741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %672, float %673, float %740, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = extractvalue %dx.types.ResRet.f32 %741, 1
  %744 = extractvalue %dx.types.ResRet.f32 %741, 2
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 1
  %747 = fmul fast float %746, %742
  %748 = fmul fast float %746, %743
  %749 = fmul fast float %746, %744
  br label %750

; <label>:750                                     ; preds = %702, %666
  %751 = phi float [ %747, %702 ], [ 1.000000e+00, %666 ]
  %752 = phi float [ %748, %702 ], [ 1.000000e+00, %666 ]
  %753 = phi float [ %749, %702 ], [ 1.000000e+00, %666 ]
  %754 = fmul fast float %751, %653
  %755 = fmul fast float %752, %654
  %756 = fmul fast float %753, %655
  br label %757

; <label>:757                                     ; preds = %750, %614
  %758 = phi float [ %754, %750 ], [ %653, %614 ]
  %759 = phi float [ %755, %750 ], [ %654, %614 ]
  %760 = phi float [ %756, %750 ], [ %655, %614 ]
  %761 = and i32 %124, 2097152
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %767, label %763, !dx.controlflow.hints !68

; <label>:763                                     ; preds = %757
  %764 = add i32 %121, 192
  %765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 0
  br label %770

; <label>:767                                     ; preds = %757
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 3
  br label %770

; <label>:770                                     ; preds = %767, %763
  %771 = phi float [ %766, %763 ], [ %769, %767 ]
  br i1 %635, label %772, label %856

; <label>:772                                     ; preds = %770
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %775 = extractvalue %dx.types.CBufRet.f32 %773, 3
  %776 = fmul fast float %774, %46
  %777 = fmul fast float %775, %47
  %778 = call float @dx.op.unary.f32(i32 7, float %776)  ; Saturate(value)
  %779 = call float @dx.op.unary.f32(i32 7, float %777)  ; Saturate(value)
  %780 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %778, float %779, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 0
  %782 = extractvalue %dx.types.ResRet.f32 %780, 1
  %783 = extractvalue %dx.types.ResRet.f32 %780, 2
  %784 = extractvalue %dx.types.ResRet.f32 %780, 3
  %785 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %778, float %779, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = extractvalue %dx.types.ResRet.f32 %785, 1
  %788 = extractvalue %dx.types.ResRet.f32 %785, 2
  %789 = extractvalue %dx.types.ResRet.f32 %785, 3
  %790 = call float @dx.op.binary.f32(i32 35, float %782, float %783)  ; FMax(a,b)
  %791 = call float @dx.op.binary.f32(i32 35, float %781, float %790)  ; FMax(a,b)
  %792 = call float @dx.op.binary.f32(i32 35, float %791, float %784)  ; FMax(a,b)
  %793 = call float @dx.op.binary.f32(i32 36, float %787, float %788)  ; FMin(a,b)
  %794 = call float @dx.op.binary.f32(i32 36, float %786, float %793)  ; FMin(a,b)
  %795 = call float @dx.op.binary.f32(i32 36, float %794, float %789)  ; FMin(a,b)
  %796 = fmul fast float %792, 2.550000e+02
  %797 = fadd fast float %796, 0x3F70101020000000
  %798 = fptoui float %797 to i32
  %799 = fmul fast float %795, 2.550000e+02
  %800 = fadd fast float %799, 0x3F70101020000000
  %801 = fptoui float %800 to i32
  %802 = icmp ult i32 %798, %801
  br i1 %802, label %803, label %845

; <label>:803                                     ; preds = %772
  %804 = fcmp fast ogt float %41, 9.843750e-01
  %805 = fadd fast float %42, -4.000000e+00
  %806 = select i1 %804, float -4.000000e+00, float %805
  %807 = call float @dx.op.binary.f32(i32 35, float %806, float 0.000000e+00)  ; FMax(a,b)
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 0
  %810 = fadd fast float %809, %807
  %811 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %812 = fmul fast float %810, %811
  %813 = call float @dx.op.unary.f32(i32 23, float %812)  ; Log(value)
  %814 = extractvalue %dx.types.CBufRet.f32 %808, 3
  %815 = fmul fast float %814, %813
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %818 = fmul fast float %815, %817
  %819 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %820 = uitofp i32 %798 to float
  %821 = uitofp i32 %801 to float
  %822 = fadd fast float %820, 5.000000e-01
  %823 = fadd fast float %821, 5.000000e-01
  %824 = fmul fast float %817, %822
  %825 = fmul fast float %817, %823
  %826 = fadd fast float %824, 0x3F0FFB4800000000
  %827 = fadd fast float %825, 0xBF0FFB4800000000
  %828 = call float @dx.op.binary.f32(i32 35, float %819, float %826)  ; FMax(a,b)
  %829 = call float @dx.op.binary.f32(i32 36, float %828, float %827)  ; FMin(a,b)
  %830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.f32 %830, 1
  %832 = extractvalue %dx.types.CBufRet.f32 %830, 2
  %833 = extractvalue %dx.types.CBufRet.f32 %830, 0
  %834 = fmul fast float %831, %829
  %835 = fadd fast float %833, %834
  %836 = fadd fast float %833, %832
  %837 = fsub fast float %831, %832
  %838 = fadd fast float %837, %833
  %839 = call float @dx.op.binary.f32(i32 35, float %835, float %836)  ; FMax(a,b)
  %840 = call float @dx.op.binary.f32(i32 36, float %839, float %838)  ; FMin(a,b)
  %841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %778, float %779, float %840, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %842 = extractvalue %dx.types.ResRet.f32 %841, 0
  %843 = extractvalue %dx.types.ResRet.f32 %841, 1
  %844 = extractvalue %dx.types.ResRet.f32 %841, 2
  br label %845

; <label>:845                                     ; preds = %803, %772
  %846 = phi float [ %842, %803 ], [ 1.000000e+00, %772 ]
  %847 = phi float [ %843, %803 ], [ 1.000000e+00, %772 ]
  %848 = phi float [ %844, %803 ], [ 1.000000e+00, %772 ]
  %849 = call float @dx.op.dot3.f32(i32 55, float %846, float %847, float %848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %850 = select i1 %104, float %849, float %846
  %851 = select i1 %104, float %849, float %847
  %852 = select i1 %104, float 1.000000e+00, float %848
  %853 = fmul fast float %850, %758
  %854 = fmul fast float %851, %759
  %855 = fmul fast float %852, %760
  br label %856

; <label>:856                                     ; preds = %845, %770
  %857 = phi float [ %632, %845 ], [ %42, %770 ]
  %858 = phi float [ %853, %845 ], [ %758, %770 ]
  %859 = phi float [ %854, %845 ], [ %759, %770 ]
  %860 = phi float [ %855, %845 ], [ %760, %770 ]
  %861 = phi float [ %846, %845 ], [ 1.000000e+00, %770 ]
  br i1 %640, label %1104, label %862

; <label>:862                                     ; preds = %856
  %863 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %29, float %30, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  %865 = extractvalue %dx.types.ResRet.f32 %863, 1
  %866 = extractvalue %dx.types.ResRet.f32 %863, 2
  %867 = fmul fast float %864, %861
  %868 = call float @dx.op.dot3.f32(i32 55, float %864, float %865, float %866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %869 = select i1 %104, float %868, float %864
  %870 = select i1 %104, float %868, float %865
  %871 = select i1 %104, float 1.000000e+00, float %866
  %872 = fmul fast float %869, %858
  %873 = fmul fast float %870, %859
  %874 = fmul fast float %871, %860
  %875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.i32 %875, 0
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %1104, label %878, !dx.controlflow.hints !69

; <label>:878                                     ; preds = %862
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 2
  %881 = extractvalue %dx.types.CBufRet.f32 %879, 3
  %882 = fmul fast float %880, %46
  %883 = fmul fast float %881, %47
  %884 = fmul fast float %882, 2.000000e+00
  %885 = fmul fast float %883, 2.000000e+00
  %886 = fsub fast float 1.000000e+00, %884
  %887 = fsub fast float 1.000000e+00, %885
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 0
  %890 = extractvalue %dx.types.CBufRet.f32 %888, 1
  %891 = extractvalue %dx.types.CBufRet.f32 %888, 2
  %892 = fmul fast float %886, %889
  %893 = fmul fast float %886, %890
  %894 = fmul fast float %886, %891
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %898 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %899 = fmul fast float %887, %896
  %900 = fmul fast float %887, %897
  %901 = fmul fast float %887, %898
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %904 = extractvalue %dx.types.CBufRet.f32 %902, 1
  %905 = extractvalue %dx.types.CBufRet.f32 %902, 2
  %906 = fadd fast float %899, %903
  %907 = fadd fast float %906, %892
  %908 = fadd fast float %900, %904
  %909 = fadd fast float %908, %893
  %910 = fadd fast float %901, %905
  %911 = fadd fast float %910, %894
  %912 = fmul fast float %907, %857
  %913 = fmul fast float %909, %857
  %914 = fmul fast float %911, %857
  %915 = fmul fast float %912, %912
  %916 = fmul fast float %913, %913
  %917 = fadd fast float %915, %916
  %918 = fmul fast float %914, %914
  %919 = fadd fast float %917, %918
  %920 = call float @dx.op.unary.f32(i32 24, float %919)  ; Sqrt(value)
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 0
  %923 = fsub fast float %920, %922
  %924 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %925 = fmul fast float %923, %924
  %926 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %927 = fadd fast float %926, -5.000000e-01
  %928 = fmul fast float %927, 2.000000e+00
  %929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %930 = extractvalue %dx.types.CBufRet.f32 %929, 2
  %931 = call float @dx.op.binary.f32(i32 36, float %930, float %928)  ; FMin(a,b)
  %932 = fsub fast float -0.000000e+00, %930
  %933 = fcmp fast ogt float %931, %932
  br i1 %933, label %934, label %1104, !dx.controlflow.hints !70

; <label>:934                                     ; preds = %878
  %935 = fmul fast float %931, 5.000000e-01
  %936 = fadd fast float %935, 5.000000e-01
  %937 = call float @dx.op.unary.f32(i32 22, float %936)  ; Frc(value)
  %938 = call float @dx.op.unary.f32(i32 27, float %937)  ; Round_ni(value)
  %939 = call float @dx.op.unary.f32(i32 22, float %937)  ; Frc(value)
  %940 = fmul fast float %939, 2.000000e+00
  %941 = fadd fast float %940, -1.000000e+00
  %942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %882, float %883, float %938, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %943 = extractvalue %dx.types.ResRet.f32 %942, 0
  %944 = extractvalue %dx.types.ResRet.f32 %942, 1
  %945 = extractvalue %dx.types.ResRet.f32 %942, 2
  %946 = extractvalue %dx.types.ResRet.f32 %942, 3
  %947 = fadd fast float %943, -5.000000e-01
  %948 = fadd fast float %945, -5.000000e-01
  %949 = fmul fast float %947, 0xBFD5555560000000
  %950 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %948, float %949)  ; FMad(a,b,c)
  %951 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %944, float 0.000000e+00)  ; FMad(a,b,c)
  %952 = fadd fast float %951, %946
  %953 = fmul fast float %947, -7.500000e-01
  %954 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %948, float %953)  ; FMad(a,b,c)
  %955 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %944, float 0.000000e+00)  ; FMad(a,b,c)
  %956 = fadd fast float %955, %946
  %957 = call float @dx.op.binary.f32(i32 35, float %950, float -1.000000e+00)  ; FMax(a,b)
  %958 = call float @dx.op.binary.f32(i32 35, float %952, float -1.000000e+00)  ; FMax(a,b)
  %959 = call float @dx.op.binary.f32(i32 35, float %954, float -1.000000e+00)  ; FMax(a,b)
  %960 = call float @dx.op.binary.f32(i32 35, float %956, float -1.000000e+00)  ; FMax(a,b)
  %961 = call float @dx.op.binary.f32(i32 36, float %957, float 1.000000e+00)  ; FMin(a,b)
  %962 = call float @dx.op.binary.f32(i32 36, float %958, float 1.000000e+00)  ; FMin(a,b)
  %963 = call float @dx.op.binary.f32(i32 36, float %959, float 1.000000e+00)  ; FMin(a,b)
  %964 = call float @dx.op.binary.f32(i32 36, float %960, float 1.000000e+00)  ; FMin(a,b)
  %965 = fcmp fast olt float %961, 0x3FEFFF8020000000
  br i1 %965, label %966, label %1081, !dx.controlflow.hints !71

; <label>:966                                     ; preds = %934
  %967 = extractvalue %dx.types.CBufRet.f32 %929, 3
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 0
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 1
  %971 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %972 = extractvalue %dx.types.CBufRet.f32 %968, 3
  %973 = fsub fast float %969, %961
  %974 = fsub fast float %970, %962
  %975 = fsub fast float %971, %963
  %976 = fsub fast float %972, %964
  %977 = fmul fast float %973, %967
  %978 = fmul fast float %974, %967
  %979 = fmul fast float %975, %967
  %980 = fmul fast float %976, %967
  %981 = fadd fast float %977, %961
  %982 = fadd fast float %978, %962
  %983 = fsub fast float -0.000000e+00, %982
  %984 = fadd fast float %979, %963
  %985 = fadd fast float %980, %964
  %986 = fmul fast float %981, %981
  %987 = fsub fast float %982, %986
  %988 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %987)  ; FMax(a,b)
  %989 = fdiv fast float 1.000000e+00, %988
  %990 = fmul fast float %982, %981
  %991 = fsub fast float %984, %990
  %992 = fsub fast float %941, %981
  %993 = fmul fast float %941, %941
  %994 = fsub fast float %993, %982
  %995 = fmul fast float %992, %989
  %996 = fmul fast float %995, %991
  %997 = fsub fast float %994, %996
  %998 = fmul fast float %982, %982
  %999 = fsub fast float %985, %998
  %1000 = fmul fast float %991, %991
  %1001 = fmul fast float %1000, %989
  %1002 = fsub fast float %999, %1001
  %1003 = fdiv fast float %997, %1002
  %1004 = fmul fast float %991, %1003
  %1005 = fsub fast float %992, %1004
  %1006 = fmul fast float %1005, %989
  %1007 = fmul fast float %1006, %981
  %1008 = fsub fast float 1.000000e+00, %1007
  %1009 = fmul fast float %982, %1003
  %1010 = fsub fast float %1008, %1009
  %1011 = fmul fast float %1006, %1006
  %1012 = fmul fast float %1003, 4.000000e+00
  %1013 = fmul fast float %1012, %1010
  %1014 = fsub fast float %1011, %1013
  %1015 = call float @dx.op.unary.f32(i32 24, float %1014)  ; Sqrt(value)
  %1016 = fcmp fast oge float %1006, 0.000000e+00
  %1017 = fsub fast float -0.000000e+00, %1015
  %1018 = select i1 %1016, float %1017, float %1015
  %1019 = fsub fast float %1018, %1006
  %1020 = fdiv fast float %1019, %1003
  %1021 = fdiv fast float %1010, %1019
  %1022 = fmul fast float %1020, 5.000000e-01
  %1023 = fmul fast float %1021, 2.000000e+00
  %1024 = select i1 %1016, float %1022, float %1023
  %1025 = select i1 %1016, float %1023, float %1022
  %1026 = call float @dx.op.binary.f32(i32 35, float %1024, float %1025)  ; FMax(a,b)
  %1027 = call float @dx.op.binary.f32(i32 36, float %1024, float %1025)  ; FMin(a,b)
  %1028 = fcmp fast ogt float %941, %1027
  br i1 %1028, label %1029, label %1039

; <label>:1029                                    ; preds = %966
  %1030 = fsub fast float %941, %1027
  %1031 = fsub fast float %1026, %1027
  %1032 = fmul fast float %1030, %1031
  %1033 = fmul fast float %1026, %941
  %1034 = fadd fast float %1026, %941
  %1035 = fmul fast float %1034, %981
  %1036 = fadd fast float %1033, %982
  %1037 = fsub fast float %1036, %1035
  %1038 = fdiv fast float %1037, %1032
  br label %1039

; <label>:1039                                    ; preds = %1029, %966
  %1040 = phi float [ %1038, %1029 ], [ 0.000000e+00, %966 ]
  %1041 = fcmp fast ogt float %941, %1026
  %1042 = fsub fast float %941, %1026
  br i1 %1041, label %1043, label %1053

; <label>:1043                                    ; preds = %1039
  %1044 = fsub fast float %1026, %1027
  %1045 = fmul fast float %1044, %1042
  %1046 = fmul fast float %1027, %941
  %1047 = fadd fast float %1027, %941
  %1048 = fmul fast float %1047, %981
  %1049 = fsub fast float %983, %1046
  %1050 = fadd fast float %1049, %1048
  %1051 = fdiv fast float %1050, %1045
  %1052 = fadd fast float %1051, %1040
  br label %1053

; <label>:1053                                    ; preds = %1043, %1039
  %1054 = phi float [ %1052, %1043 ], [ %1040, %1039 ]
  %1055 = fsub fast float %941, %1027
  %1056 = fmul fast float %1055, %1042
  %1057 = fmul fast float %1027, %1026
  %1058 = fadd fast float %1027, %1026
  %1059 = fmul fast float %1058, %981
  %1060 = fadd fast float %1057, %982
  %1061 = fsub fast float %1060, %1059
  %1062 = fdiv fast float %1061, %1056
  %1063 = call float @dx.op.unary.f32(i32 7, float %1054)  ; Saturate(value)
  %1064 = fcmp fast oeq float %771, 0.000000e+00
  %1065 = extractvalue %dx.types.CBufRet.f32 %929, 0
  %1066 = fcmp fast oeq float %1065, 0.000000e+00
  %1067 = or i1 %1064, %1066
  %1068 = fmul fast float %1065, 2.000000e+00
  %1069 = fadd fast float %930, %931
  %1070 = fdiv fast float %1069, %1068
  %1071 = call float @dx.op.unary.f32(i32 7, float %1070)  ; Saturate(value)
  %1072 = fmul fast float %1071, 2.000000e+00
  %1073 = fsub fast float 3.000000e+00, %1072
  %1074 = fmul fast float %1071, %1071
  %1075 = fmul fast float %1074, %1073
  %1076 = select i1 %1067, float 1.000000e+00, float %1075
  %1077 = fmul fast float %1062, %771
  %1078 = fadd fast float %1063, %1077
  %1079 = call float @dx.op.unary.f32(i32 7, float %1078)  ; Saturate(value)
  %1080 = fmul fast float %1076, %1079
  br label %1081

; <label>:1081                                    ; preds = %1053, %934
  %1082 = phi float [ %1080, %1053 ], [ 0.000000e+00, %934 ]
  %1083 = fsub fast float 1.000000e+00, %1082
  %1084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %882, float %883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.i32 %1086, 2
  %1088 = icmp eq i32 %1087, 0
  br i1 %1088, label %1094, label %1089

; <label>:1089                                    ; preds = %1081
  %1090 = call float @dx.op.unary.f32(i32 7, float %1082)  ; Saturate(value)
  %1091 = fadd fast float %1085, -1.000000e+00
  %1092 = fmul fast float %1090, %1091
  %1093 = fadd fast float %1092, 1.000000e+00
  br label %1094

; <label>:1094                                    ; preds = %1089, %1081
  %1095 = phi float [ %1093, %1089 ], [ %1083, %1081 ]
  %1096 = call float @dx.op.binary.f32(i32 35, float %1085, float %1095)  ; FMax(a,b)
  %1097 = fmul fast float %1096, %867
  %1098 = call float @dx.op.dot3.f32(i32 55, float %1096, float %1096, float %1096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = select i1 %104, float %1098, float %1096
  %1100 = select i1 %104, float 1.000000e+00, float %1096
  %1101 = fmul fast float %1099, %872
  %1102 = fmul fast float %1099, %873
  %1103 = fmul fast float %1100, %874
  br label %1104

; <label>:1104                                    ; preds = %1094, %878, %862, %856
  %1105 = phi float [ %858, %856 ], [ %872, %862 ], [ %1101, %1094 ], [ %872, %878 ]
  %1106 = phi float [ %859, %856 ], [ %873, %862 ], [ %1102, %1094 ], [ %873, %878 ]
  %1107 = phi float [ %860, %856 ], [ %874, %862 ], [ %1103, %1094 ], [ %874, %878 ]
  %1108 = phi float [ %861, %856 ], [ %867, %862 ], [ %1097, %1094 ], [ %867, %878 ]
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1111 = extractvalue %dx.types.CBufRet.f32 %1109, 3
  %1112 = fmul fast float %1110, %46
  %1113 = fmul fast float %1111, %47
  %1114 = call float @dx.op.unary.f32(i32 7, float %1112)  ; Saturate(value)
  %1115 = call float @dx.op.unary.f32(i32 7, float %1113)  ; Saturate(value)
  %1116 = select i1 %640, i32 2, i32 0
  %1117 = or i32 %1116, 1
  %1118 = uitofp i32 %1117 to float
  %1119 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1114, float %1115, float %1118, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.ResRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.ResRet.f32 %1119, 2
  %1123 = extractvalue %dx.types.ResRet.f32 %1119, 3
  %1124 = add nuw nsw i32 %1116, 2
  %1125 = uitofp i32 %1124 to float
  %1126 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1114, float %1115, float %1125, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1127 = extractvalue %dx.types.ResRet.f32 %1126, 0
  %1128 = extractvalue %dx.types.ResRet.f32 %1126, 1
  %1129 = extractvalue %dx.types.ResRet.f32 %1126, 2
  %1130 = extractvalue %dx.types.ResRet.f32 %1126, 3
  %1131 = call float @dx.op.binary.f32(i32 35, float %1121, float %1122)  ; FMax(a,b)
  %1132 = call float @dx.op.binary.f32(i32 35, float %1120, float %1131)  ; FMax(a,b)
  %1133 = call float @dx.op.binary.f32(i32 35, float %1132, float %1123)  ; FMax(a,b)
  %1134 = call float @dx.op.binary.f32(i32 36, float %1128, float %1129)  ; FMin(a,b)
  %1135 = call float @dx.op.binary.f32(i32 36, float %1127, float %1134)  ; FMin(a,b)
  %1136 = call float @dx.op.binary.f32(i32 36, float %1135, float %1130)  ; FMin(a,b)
  %1137 = fmul fast float %1133, 2.550000e+02
  %1138 = fadd fast float %1137, 0x3F70101020000000
  %1139 = fptoui float %1138 to i32
  %1140 = fmul fast float %1136, 2.550000e+02
  %1141 = fadd fast float %1140, 0x3F70101020000000
  %1142 = fptoui float %1141 to i32
  %1143 = icmp ult i32 %1139, %1142
  br i1 %1143, label %1144, label %1187

; <label>:1144                                    ; preds = %1104
  %1145 = fcmp fast ogt float %41, 9.843750e-01
  %1146 = fadd fast float %857, -4.000000e+00
  %1147 = select i1 %1145, float -4.000000e+00, float %1146
  %1148 = call float @dx.op.binary.f32(i32 35, float %1147, float 0.000000e+00)  ; FMax(a,b)
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 0
  %1151 = fadd fast float %1150, %1148
  %1152 = extractvalue %dx.types.CBufRet.f32 %1149, 2
  %1153 = fmul fast float %1151, %1152
  %1154 = call float @dx.op.unary.f32(i32 23, float %1153)  ; Log(value)
  %1155 = extractvalue %dx.types.CBufRet.f32 %1149, 3
  %1156 = fmul fast float %1155, %1154
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 2
  %1159 = fmul fast float %1156, %1158
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1161 = uitofp i32 %1139 to float
  %1162 = uitofp i32 %1142 to float
  %1163 = fadd fast float %1161, 5.000000e-01
  %1164 = fadd fast float %1162, 5.000000e-01
  %1165 = fmul fast float %1158, %1163
  %1166 = fmul fast float %1158, %1164
  %1167 = fadd fast float %1165, 0x3F0FFB4800000000
  %1168 = fadd fast float %1166, 0xBF0FFB4800000000
  %1169 = call float @dx.op.binary.f32(i32 35, float %1160, float %1167)  ; FMax(a,b)
  %1170 = call float @dx.op.binary.f32(i32 36, float %1169, float %1168)  ; FMin(a,b)
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 1
  %1173 = extractvalue %dx.types.CBufRet.f32 %1171, 2
  %1174 = extractvalue %dx.types.CBufRet.f32 %1171, 0
  %1175 = select i1 %640, float %1174, float 0.000000e+00
  %1176 = fmul fast float %1172, %1170
  %1177 = fadd fast float %1175, %1176
  %1178 = fadd fast float %1175, %1173
  %1179 = fsub fast float %1172, %1173
  %1180 = fadd fast float %1179, %1175
  %1181 = call float @dx.op.binary.f32(i32 35, float %1177, float %1178)  ; FMax(a,b)
  %1182 = call float @dx.op.binary.f32(i32 36, float %1181, float %1180)  ; FMin(a,b)
  %1183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1114, float %1115, float %1182, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.ResRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.ResRet.f32 %1183, 2
  br label %1187

; <label>:1187                                    ; preds = %1144, %1104
  %1188 = phi float [ %1184, %1144 ], [ 1.000000e+00, %1104 ]
  %1189 = phi float [ %1185, %1144 ], [ 1.000000e+00, %1104 ]
  %1190 = phi float [ %1186, %1144 ], [ 1.000000e+00, %1104 ]
  %1191 = fmul fast float %1188, %1108
  %1192 = call float @dx.op.dot3.f32(i32 55, float %1188, float %1189, float %1190, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1193 = select i1 %104, float %1192, float %1188
  %1194 = select i1 %104, float %1192, float %1189
  %1195 = select i1 %104, float 1.000000e+00, float %1190
  %1196 = fmul fast float %1193, %1105
  %1197 = fmul fast float %1194, %1106
  %1198 = fmul fast float %1195, %1107
  %1199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.i32 %1199, 3
  %1201 = and i32 %1200, 3
  %1202 = icmp ne i32 %1201, 0
  %1203 = and i32 %1200, 4
  %1204 = icmp ne i32 %1203, 0
  %1205 = and i1 %1202, %1204
  %1206 = and i1 %104, %1205
  br i1 %1206, label %1207, label %1213

; <label>:1207                                    ; preds = %1187
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1210 = fadd fast float %1191, -1.000000e+00
  %1211 = fmul fast float %1209, %1210
  %1212 = fadd fast float %1211, 1.000000e+00
  br label %1213

; <label>:1213                                    ; preds = %1207, %1187
  %1214 = phi float [ %1212, %1207 ], [ %1191, %1187 ]
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  br i1 %104, label %1217, label %1237

; <label>:1217                                    ; preds = %1213
  %1218 = fadd fast float %1196, %1197
  %1219 = fmul fast float %1216, %1218
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 3
  %1222 = extractvalue %dx.types.CBufRet.f32 %660, 1
  %1223 = fsub fast float %663, %1222
  %1224 = extractvalue %dx.types.CBufRet.f32 %660, 2
  %1225 = fmul fast float %1223, %1224
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1227 = fsub fast float %1226, %1221
  %1228 = fmul fast float %1227, %1214
  %1229 = fadd fast float %1228, %1221
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 0
  %1232 = fsub fast float %1229, %1231
  %1233 = fmul fast float %1232, 1.000000e+01
  %1234 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  %1235 = fmul fast float %1234, %616
  %1236 = fmul fast float %1229, %1235
  br label %1246

; <label>:1237                                    ; preds = %1213
  %1238 = fmul fast float %1216, %1196
  %1239 = fmul fast float %1216, %1197
  %1240 = fmul fast float %1198, %1216
  %1241 = call float @dx.op.binary.f32(i32 35, float %1239, float %1240)  ; FMax(a,b)
  %1242 = call float @dx.op.binary.f32(i32 35, float %1238, float %1241)  ; FMax(a,b)
  %1243 = call float @dx.op.binary.f32(i32 35, float %1242, float 0.000000e+00)  ; FMax(a,b)
  %1244 = fcmp fast ugt float %1243, 0x3F10000000000000
  br i1 %1244, label %1246, label %1245

; <label>:1245                                    ; preds = %1237
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1246

; <label>:1246                                    ; preds = %1245, %1237, %1217
  %1247 = phi float [ %1219, %1217 ], [ %1238, %1245 ], [ %1238, %1237 ]
  %1248 = phi float [ %1236, %1217 ], [ %1239, %1245 ], [ %1239, %1237 ]
  %1249 = phi float [ %1235, %1217 ], [ %1240, %1245 ], [ %1240, %1237 ]
  %1250 = phi float [ %1235, %1217 ], [ 0.000000e+00, %1245 ], [ 0.000000e+00, %1237 ]
  %1251 = fadd fast float %461, 0x3FE3C6EF40000000
  %1252 = call float @dx.op.unary.f32(i32 22, float %1251)  ; Frc(value)
  %1253 = call float @dx.op.unary.f32(i32 23, float %1247)  ; Log(value)
  %1254 = fadd fast float %1253, -7.000000e+00
  %1255 = call float @dx.op.unary.f32(i32 21, float %1254)  ; Exp(value)
  %1256 = fmul fast float %1252, 2.000000e+00
  %1257 = fadd fast float %1256, -1.000000e+00
  %1258 = fmul fast float %1255, %1257
  %1259 = fcmp fast ogt float %1247, 0.000000e+00
  %1260 = select i1 %1259, float %1258, float 0.000000e+00
  %1261 = fadd fast float %1260, %1247
  %1262 = fadd fast float %461, 0x3FF3C6EF40000000
  %1263 = call float @dx.op.unary.f32(i32 22, float %1262)  ; Frc(value)
  %1264 = call float @dx.op.unary.f32(i32 23, float %1248)  ; Log(value)
  %1265 = fadd fast float %1264, -7.000000e+00
  %1266 = call float @dx.op.unary.f32(i32 21, float %1265)  ; Exp(value)
  %1267 = fmul fast float %1263, 2.000000e+00
  %1268 = fadd fast float %1267, -1.000000e+00
  %1269 = fmul fast float %1266, %1268
  %1270 = fcmp fast ogt float %1248, 0.000000e+00
  %1271 = select i1 %1270, float %1269, float 0.000000e+00
  %1272 = fadd fast float %1271, %1248
  %1273 = fadd fast float %461, 0x3FFDAA66E0000000
  %1274 = call float @dx.op.unary.f32(i32 22, float %1273)  ; Frc(value)
  %1275 = call float @dx.op.unary.f32(i32 23, float %1249)  ; Log(value)
  %1276 = fadd fast float %1275, -6.000000e+00
  %1277 = call float @dx.op.unary.f32(i32 21, float %1276)  ; Exp(value)
  %1278 = fmul fast float %1274, 2.000000e+00
  %1279 = fadd fast float %1278, -1.000000e+00
  %1280 = fmul fast float %1277, %1279
  %1281 = fcmp fast ogt float %1249, 0.000000e+00
  %1282 = select i1 %1281, float %1280, float 0.000000e+00
  %1283 = fadd fast float %1282, %1249
  %1284 = select i1 %104, float %1248, float %1272
  %1285 = select i1 %104, float %1249, float %1283
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1286 = call float @dx.op.binary.f32(i32 36, float %1261, float 3.225500e+04)  ; FMin(a,b)
  %1287 = call float @dx.op.binary.f32(i32 36, float %1284, float 3.225500e+04)  ; FMin(a,b)
  %1288 = call float @dx.op.binary.f32(i32 36, float %1285, float 3.225500e+04)  ; FMin(a,b)
  %1289 = call float @dx.op.binary.f32(i32 36, float %1250, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1286)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1287)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1288)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1289)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1250)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1250)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1250)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1250)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!33 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 0, i32 7, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 255, i32 0, i32 0, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !59}
!35 = !{!36, !55, null}
!36 = !{!37, !40, !42, !44, !46, !48, !51, !52, !54}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 10}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 3, i8 0, !39}
!45 = !{i32 3}
!46 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !47, i8 3, i32 1, i8 2, i32 4, i8 0, !43}
!47 = !{i32 5}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 5, i8 0, !50}
!49 = !{i32 8}
!50 = !{i32 3, i32 9}
!51 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 6, i8 0, !39}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 7, i8 0, !53}
!53 = !{i32 3, i32 5}
!54 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56, !57}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!57 = !{i32 1, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
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

