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
; shader hash: 719b5831f77e1b1818964206a413d9db
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
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = fmul fast float %46, %40
  %48 = fmul fast float %46, %41
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %52 = fmul fast float %47, 2.000000e+00
  %53 = fmul fast float %52, %50
  %54 = fmul fast float %48, 2.000000e+00
  %55 = fmul fast float %54, %51
  %56 = fsub fast float 1.000000e+00, %53
  %57 = fsub fast float 1.000000e+00, %55
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = fmul fast float %56, %59
  %63 = fmul fast float %56, %60
  %64 = fmul fast float %56, %61
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %69 = fmul fast float %57, %66
  %70 = fmul fast float %57, %67
  %71 = fmul fast float %57, %68
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = fadd fast float %69, %73
  %77 = fadd fast float %76, %62
  %78 = fadd fast float %70, %74
  %79 = fadd fast float %78, %63
  %80 = fadd fast float %71, %75
  %81 = fadd fast float %80, %64
  %82 = fmul fast float %77, %43
  %83 = fmul fast float %79, %43
  %84 = fmul fast float %81, %43
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.i32 %85, 3
  %87 = and i32 %86, 3
  %88 = icmp ne i32 %87, 0
  %89 = and i32 %86, 4
  %90 = icmp ne i32 %89, 0
  %91 = and i1 %88, %90
  br i1 %91, label %92, label %101

; <label>:92                                      ; preds = %0
  %93 = fmul fast float %51, %48
  %94 = fmul fast float %50, %47
  %95 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %94, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = fsub fast float 1.000000e+00, %96
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = fcmp fast olt float %97, %99
  br label %104

; <label>:101                                     ; preds = %0
  %102 = icmp eq i32 %89, 0
  %103 = and i1 %88, %102
  br label %104

; <label>:104                                     ; preds = %101, %92
  %105 = phi i1 [ %100, %92 ], [ %103, %101 ]
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %109 = fmul fast float %107, %47
  %110 = fmul fast float %108, %48
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = and i32 %112, 114688
  %114 = icmp ne i32 %113, 0
  %115 = select i1 %114, float %109, float 0.000000e+00
  %116 = select i1 %114, float %110, float 0.000000e+00
  %117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %115, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fmul fast float %118, 2.550000e+02
  %120 = fptoui float %119 to i32
  %121 = select i1 %114, i32 %120, i32 0
  %122 = mul i32 %21, 208
  %123 = add i32 %122, 188
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = and i32 %86, 114688
  %127 = and i32 %86, 8
  %128 = icmp ne i32 %127, 0
  %129 = or i1 %105, %128
  %130 = select i1 %129, i32 %126, i32 16384
  %131 = and i32 %130, %125
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

; <label>:133                                     ; preds = %104
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %134

; <label>:134                                     ; preds = %133, %104
  %135 = and i32 %125, 512
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %161, label %137

; <label>:137                                     ; preds = %134
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %141 = fmul fast float %139, %47
  %142 = fmul fast float %140, %48
  %143 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %145 = fdiv fast float %143, %144
  %146 = fcmp fast ogt float %145, 0x3FFC71C720000000
  br i1 %146, label %147, label %153

; <label>:147                                     ; preds = %137
  %148 = fdiv fast float 0x3FFC71C720000000, %145
  %149 = fmul fast float %148, %142
  %150 = fsub fast float 1.000000e+00, %148
  %151 = fmul fast float %150, 5.000000e-01
  %152 = fadd fast float %151, %149
  br label %161

; <label>:153                                     ; preds = %137
  %154 = fcmp fast olt float %145, 0x3FFC71C720000000
  br i1 %154, label %155, label %161

; <label>:155                                     ; preds = %153
  %156 = fmul fast float %141, 5.625000e-01
  %157 = fmul fast float %156, %145
  %158 = fmul fast float %145, 2.812500e-01
  %159 = fsub fast float 5.000000e-01, %158
  %160 = fadd fast float %159, %157
  br label %161

; <label>:161                                     ; preds = %155, %153, %147, %134
  %162 = phi float [ %37, %134 ], [ %141, %147 ], [ %160, %155 ], [ %141, %153 ]
  %163 = phi float [ %38, %134 ], [ %152, %147 ], [ %142, %155 ], [ %142, %153 ]
  %164 = add i32 %22, 72
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = extractvalue %dx.types.ResRet.i32 %165, 1
  %168 = bitcast i32 %166 to float
  %169 = bitcast i32 %167 to float
  %170 = fmul fast float %168, %37
  %171 = fmul fast float %169, %38
  %172 = call float @dx.op.unary.f32(i32 22, float %170)  ; Frc(value)
  %173 = call float @dx.op.unary.f32(i32 22, float %171)  ; Frc(value)
  %174 = and i32 %125, 16
  %175 = icmp ne i32 %174, 0
  %176 = select i1 %175, float 1.000000e+00, float %39
  %177 = icmp eq i32 %174, 0
  br i1 %177, label %197, label %178, !dx.controlflow.hints !59

; <label>:178                                     ; preds = %161
  %179 = add i32 %122, 64
  %180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = fadd fast float %181, 1.000000e+00
  %183 = fmul fast float %182, %39
  %184 = fsub fast float %183, %181
  %185 = fsub fast float %182, %184
  %186 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %187 = fsub fast float 1.000000e+00, %183
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %189 = fsub fast float %186, %188
  %190 = fsub fast float %176, %188
  %191 = fdiv fast float %190, %189
  %192 = call float @dx.op.unary.f32(i32 7, float %191)  ; Saturate(value)
  %193 = fmul fast float %192, 2.000000e+00
  %194 = fsub fast float 3.000000e+00, %193
  %195 = fmul fast float %192, %192
  %196 = fmul fast float %195, %194
  br label %197

; <label>:197                                     ; preds = %178, %161
  %198 = phi float [ %196, %178 ], [ %176, %161 ]
  %199 = fcmp fast ogt float %198, 0.000000e+00
  br i1 %199, label %201, label %200

; <label>:200                                     ; preds = %197
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %201

; <label>:201                                     ; preds = %200, %197
  %202 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %203 = fmul fast float %47, 5.000000e-01
  %204 = fmul fast float %48, 5.000000e-01
  %205 = fptosi float %203 to i32
  %206 = fptosi float %204 to i32
  %207 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = lshr i32 %208, 18
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F4C00EBA0000000
  %212 = call float @dx.op.unary.f32(i32 21, float %211)  ; Exp(value)
  %213 = fadd fast float %212, -1.000000e+00
  %214 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %215 = extractvalue %dx.types.Dimensions %214, 0
  %216 = sitofp i32 %215 to float
  %217 = extractvalue %dx.types.Dimensions %214, 1
  %218 = sitofp i32 %217 to float
  %219 = fcmp fast oge float %203, %216
  %220 = fcmp fast oge float %204, %218
  %221 = or i1 %219, %220
  %222 = select i1 %221, float 0x4197782600000000, float %213
  %223 = fsub fast float %222, %43
  %224 = fcmp fast ogt float %223, 0.000000e+00
  %225 = and i32 %121, -2
  %226 = icmp eq i32 %225, 2
  %227 = and i1 %226, %224
  %228 = xor i1 %224, true
  %229 = icmp eq i32 %121, 1
  %230 = and i1 %229, %228
  %231 = or i1 %227, %230
  %232 = and i32 %125, 262144
  %233 = icmp ne i32 %232, 0
  %234 = and i1 %233, %231
  %235 = xor i1 %231, true
  %236 = and i32 %125, 131072
  %237 = icmp ne i32 %236, 0
  %238 = and i1 %237, %235
  %239 = or i1 %234, %238
  br i1 %239, label %240, label %241

; <label>:240                                     ; preds = %201
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %241

; <label>:241                                     ; preds = %240, %201
  %242 = and i32 %125, 32
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %494, label %244, !dx.controlflow.hints !60

; <label>:244                                     ; preds = %241
  %245 = add i32 %122, 80
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = extractvalue %dx.types.ResRet.f32 %246, 3
  %251 = add i32 %122, 96
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = extractvalue %dx.types.ResRet.f32 %252, 2
  %256 = add i32 %122, 112
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = extractvalue %dx.types.ResRet.f32 %257, 3
  %262 = add i32 %122, 128
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = extractvalue %dx.types.ResRet.f32 %263, 3
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 4096
  %271 = icmp ne i32 %270, 0
  %272 = fcmp fast une float %255, 0.000000e+00
  %273 = and i32 %269, 64
  %274 = icmp ne i32 %273, 0
  %275 = and i32 %269, 128
  %276 = icmp eq i32 %275, 0
  %277 = and i32 %269, 2048
  %278 = icmp eq i32 %277, 0
  %279 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %280 = extractvalue %dx.types.Dimensions %279, 0
  %281 = sitofp i32 %280 to float
  %282 = extractvalue %dx.types.Dimensions %279, 1
  %283 = sitofp i32 %282 to float
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 2
  %286 = extractvalue %dx.types.CBufRet.f32 %284, 3
  %287 = fmul fast float %285, %47
  %288 = fmul fast float %286, %48
  %289 = fmul fast float %287, %281
  %290 = fmul fast float %288, %283
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %293 = fsub fast float -0.000000e+00, %292
  %294 = fptoui float %293 to i32
  %295 = fptoui float %289 to i32
  %296 = fptoui float %290 to i32
  %297 = and i32 %294, 31
  %298 = lshr i32 %295, %297
  %299 = lshr i32 %296, %297
  %300 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %294, i32 %298, i32 %299, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = fcmp fast ogt float %301, -1.000000e+00
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %305 = select i1 %302, float %304, float 1.000000e+00
  %306 = fadd fast float %301, 1.000000e+00
  %307 = fmul fast float %305, %306
  %308 = call float @dx.op.unary.f32(i32 6, float %307)  ; FAbs(value)
  %309 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %310 = fcmp fast oge float %308, %309
  %311 = select i1 %310, float 0x4197782600000000, float %308
  br i1 %278, label %389, label %312, !dx.controlflow.hints !61

; <label>:312                                     ; preds = %244
  %313 = fmul fast float %52, %285
  %314 = fmul fast float %54, %286
  %315 = fsub fast float 1.000000e+00, %313
  %316 = fsub fast float 1.000000e+00, %314
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %320 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %321 = fmul fast float %315, %318
  %322 = fmul fast float %315, %319
  %323 = fmul fast float %315, %320
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 0
  %326 = extractvalue %dx.types.CBufRet.f32 %324, 1
  %327 = extractvalue %dx.types.CBufRet.f32 %324, 2
  %328 = fmul fast float %316, %325
  %329 = fmul fast float %316, %326
  %330 = fmul fast float %316, %327
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %335 = fadd fast float %328, %332
  %336 = fadd fast float %335, %321
  %337 = fadd fast float %329, %333
  %338 = fadd fast float %337, %322
  %339 = fadd fast float %330, %334
  %340 = fadd fast float %339, %323
  %341 = fmul fast float %336, %311
  %342 = fmul fast float %338, %311
  %343 = fmul fast float %340, %311
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %348 = fsub fast float %345, %23
  %349 = fadd fast float %348, %341
  %350 = fsub fast float %346, %24
  %351 = fadd fast float %350, %342
  %352 = fsub fast float %347, %25
  %353 = fadd fast float %352, %343
  %354 = fmul fast float %26, %26
  %355 = call float @dx.op.dot3.f32(i32 55, float %349, float %351, float %353, float %349, float %351, float %353)  ; Dot3(ax,ay,az,bx,by,bz)
  %356 = fsub fast float %354, %355
  %357 = fmul fast float %254, %354
  %358 = fmul fast float %253, %354
  %359 = fcmp fast olt float %356, %357
  %360 = fcmp fast ogt float %356, %358
  %361 = or i1 %359, %360
  %362 = select i1 %361, float 0.000000e+00, float %356
  %363 = fsub fast float %253, %254
  %364 = fmul fast float %363, %354
  %365 = fsub fast float %362, %357
  %366 = fdiv fast float %365, %364
  %367 = call float @dx.op.unary.f32(i32 7, float %366)  ; Saturate(value)
  %368 = fmul fast float %367, 2.000000e+00
  %369 = fsub fast float 3.000000e+00, %368
  %370 = fmul fast float %367, %367
  %371 = fmul fast float %370, %369
  %372 = fsub fast float %261, %267
  %373 = fmul fast float %371, %372
  %374 = fadd fast float %373, %267
  %375 = fmul fast float %258, %27
  %376 = fmul fast float %259, %28
  %377 = fmul fast float %260, %29
  %378 = fsub fast float %375, %264
  %379 = fsub fast float %376, %265
  %380 = fsub fast float %377, %266
  %381 = fmul fast float %371, %378
  %382 = fmul fast float %371, %379
  %383 = fmul fast float %371, %380
  %384 = fadd fast float %381, %264
  %385 = fadd fast float %382, %265
  %386 = fadd fast float %383, %266
  %387 = fmul fast float %247, %247
  %388 = fmul fast float %387, %362
  br label %484

; <label>:389                                     ; preds = %244
  %390 = and i32 %269, 256
  %391 = icmp eq i32 %390, 0
  %392 = fsub fast float %311, %43
  br i1 %391, label %441, label %393

; <label>:393                                     ; preds = %389
  %394 = fadd fast float %253, %43
  %395 = fcmp fast olt float %311, %43
  %396 = fcmp fast ogt float %311, %394
  %397 = or i1 %395, %396
  %398 = select i1 %397, float 0.000000e+00, float %392
  %399 = call float @dx.op.unary.f32(i32 83, float %311)  ; DerivCoarseX(value)
  %400 = call float @dx.op.unary.f32(i32 84, float %311)  ; DerivCoarseY(value)
  %401 = fmul fast float %399, %399
  %402 = fmul fast float %400, %400
  %403 = fadd fast float %402, %401
  %404 = call float @dx.op.unary.f32(i32 24, float %403)  ; Sqrt(value)
  %405 = extractvalue %dx.types.CBufRet.f32 %291, 2
  %406 = fmul fast float %405, %404
  %407 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %408 = fmul fast float %407, %254
  %409 = fdiv fast float %392, %408
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %411 = fmul fast float %410, 2.000000e+00
  %412 = fsub fast float 3.000000e+00, %411
  %413 = fmul fast float %410, %410
  %414 = fmul fast float %413, %412
  %415 = fsub fast float %311, %394
  %416 = fadd fast float %415, %408
  %417 = fdiv fast float %416, %408
  %418 = call float @dx.op.unary.f32(i32 7, float %417)  ; Saturate(value)
  %419 = fmul fast float %418, 2.000000e+00
  %420 = fsub fast float 3.000000e+00, %419
  %421 = fmul fast float %418, %418
  %422 = fmul fast float %421, %420
  %423 = fsub fast float %414, %422
  %424 = fsub fast float %261, %267
  %425 = fmul fast float %423, %424
  %426 = fadd fast float %425, %267
  %427 = fmul fast float %258, %27
  %428 = fmul fast float %259, %28
  %429 = fmul fast float %260, %29
  %430 = fsub fast float %427, %264
  %431 = fsub fast float %428, %265
  %432 = fsub fast float %429, %266
  %433 = fmul fast float %423, %430
  %434 = fmul fast float %423, %431
  %435 = fmul fast float %423, %432
  %436 = fadd fast float %433, %264
  %437 = fadd fast float %434, %265
  %438 = fadd fast float %435, %266
  %439 = fmul fast float %398, %247
  %440 = call float @dx.op.unary.f32(i32 6, float %439)  ; FAbs(value)
  br label %484

; <label>:441                                     ; preds = %389
  br i1 %272, label %442, label %455

; <label>:442                                     ; preds = %441
  %443 = fdiv fast float 5.000000e+01, %26
  %444 = select i1 %274, float %443, float 1.000000e+00
  %445 = fmul fast float %444, %247
  %446 = fmul fast float %172, 2.000000e+00
  %447 = fmul fast float %173, 2.000000e+00
  %448 = fadd fast float %446, -1.000000e+00
  %449 = fadd fast float %447, -1.000000e+00
  %450 = call float @dx.op.dot2.f32(i32 54, float %448, float %449, float %448, float %449)  ; Dot2(ax,ay,bx,by)
  %451 = fmul fast float %255, %26
  %452 = fmul fast float %451, %450
  %453 = fsub fast float %392, %452
  %454 = fmul fast float %445, %453
  br label %484

; <label>:455                                     ; preds = %441
  br i1 %276, label %476, label %456

; <label>:456                                     ; preds = %455
  %457 = fmul fast float %26, 0x3F947AE140000000
  %458 = select i1 %274, float %457, float 1.000000e+00
  %459 = fdiv fast float 1.000000e+00, %458
  %460 = fmul fast float %458, %248
  %461 = fmul fast float %458, %249
  %462 = fmul fast float %459, %250
  %463 = call float @dx.op.unary.f32(i32 6, float %392)  ; FAbs(value)
  %464 = fcmp fast olt float %463, %460
  br i1 %464, label %465, label %469, !dx.controlflow.hints !62

; <label>:465                                     ; preds = %456
  %466 = fmul fast float %459, %247
  %467 = fmul fast float %466, %463
  %468 = call float @dx.op.unary.f32(i32 6, float %467)  ; FAbs(value)
  br label %484

; <label>:469                                     ; preds = %456
  %470 = fcmp fast ogt float %463, %461
  br i1 %470, label %471, label %484

; <label>:471                                     ; preds = %469
  %472 = fsub fast float %463, %461
  %473 = fmul fast float %462, %472
  %474 = call float @dx.op.unary.f32(i32 6, float %473)  ; FAbs(value)
  %475 = fsub fast float 1.000000e+00, %474
  br label %484

; <label>:476                                     ; preds = %455
  %477 = fdiv fast float 5.000000e+01, %26
  %478 = select i1 %274, float %477, float 1.000000e+00
  %479 = fmul fast float %478, %247
  %480 = call float @dx.op.unary.f32(i32 6, float %223)  ; FAbs(value)
  %481 = select i1 %271, float %480, float 0x47EFFFFFE0000000
  %482 = call float @dx.op.binary.f32(i32 36, float %392, float %481)  ; FMin(a,b)
  %483 = fmul fast float %479, %482
  br label %484

; <label>:484                                     ; preds = %476, %471, %469, %465, %442, %393, %312
  %485 = phi float [ %388, %312 ], [ %440, %393 ], [ %454, %442 ], [ %483, %476 ], [ %468, %465 ], [ %475, %471 ], [ %463, %469 ]
  %486 = phi float [ %384, %312 ], [ %436, %393 ], [ %27, %442 ], [ %27, %476 ], [ %27, %465 ], [ %27, %471 ], [ %27, %469 ]
  %487 = phi float [ %385, %312 ], [ %437, %393 ], [ %28, %442 ], [ %28, %476 ], [ %28, %465 ], [ %28, %471 ], [ %28, %469 ]
  %488 = phi float [ %386, %312 ], [ %438, %393 ], [ %29, %442 ], [ %29, %476 ], [ %29, %465 ], [ %29, %471 ], [ %29, %469 ]
  %489 = phi float [ %374, %312 ], [ %426, %393 ], [ 1.000000e+00, %442 ], [ 1.000000e+00, %476 ], [ 1.000000e+00, %465 ], [ 1.000000e+00, %471 ], [ 1.000000e+00, %469 ]
  %490 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %491 = fmul fast float %490, %39
  %492 = fmul fast float %489, %202
  %493 = fmul fast float %492, %490
  br label %494

; <label>:494                                     ; preds = %484, %241
  %495 = phi float [ %493, %484 ], [ %202, %241 ]
  %496 = phi float [ %491, %484 ], [ %39, %241 ]
  %497 = phi float [ %486, %484 ], [ %27, %241 ]
  %498 = phi float [ %487, %484 ], [ %28, %241 ]
  %499 = phi float [ %488, %484 ], [ %29, %241 ]
  %500 = fmul fast float %497, %30
  %501 = fmul fast float %498, %30
  %502 = fmul fast float %499, %30
  %503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.f32 %503, 2
  %505 = fptosi float %43 to i32
  %506 = sitofp i32 %505 to float
  %507 = fadd fast float %504, %506
  %508 = fmul fast float %507, 0x3FE3C6EF40000000
  %509 = frem fast float %47, 2.560000e+02
  %510 = frem fast float %48, 2.560000e+02
  %511 = fptoui float %509 to i32
  %512 = fptoui float %510 to i32
  %513 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %511, i32 %512, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = fadd fast float %514, %508
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = and i32 %125, 1
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %576, label %519, !dx.controlflow.hints !63

; <label>:519                                     ; preds = %494
  %520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 2
  %522 = extractvalue %dx.types.ResRet.f32 %520, 3
  %523 = add i32 %122, 16
  %524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = extractvalue %dx.types.ResRet.f32 %524, 1
  %527 = extractvalue %dx.types.ResRet.f32 %524, 2
  %528 = add i32 %122, 32
  %529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = extractvalue %dx.types.ResRet.f32 %529, 2
  %533 = and i32 %125, 2
  %534 = icmp eq i32 %533, 0
  %535 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %536 = call float @dx.op.unary.f32(i32 25, float %535)  ; Rsqrt(value)
  %537 = fmul fast float %536, %33
  %538 = fmul fast float %536, %34
  %539 = fmul fast float %536, %35
  %540 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %541 = call float @dx.op.unary.f32(i32 25, float %540)  ; Rsqrt(value)
  %542 = fmul fast float %541, %82
  %543 = fmul fast float %541, %83
  %544 = fmul fast float %541, %84
  %545 = call float @dx.op.dot3.f32(i32 55, float %542, float %543, float %544, float %537, float %538, float %539)  ; Dot3(ax,ay,az,bx,by,bz)
  %546 = fmul fast float %545, %545
  %547 = fmul fast float %546, %521
  %548 = fadd fast float %547, %522
  %549 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  br i1 %534, label %550, label %560, !dx.controlflow.hints !64

; <label>:550                                     ; preds = %519
  %551 = extractvalue %dx.types.ResRet.f32 %520, 1
  %552 = extractvalue %dx.types.ResRet.f32 %520, 0
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 3
  %555 = fmul fast float %554, %540
  %556 = fsub fast float %552, %555
  %557 = fmul fast float %556, %551
  %558 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  %559 = fmul fast float %558, %549
  br label %560

; <label>:560                                     ; preds = %550, %519
  %561 = phi float [ %559, %550 ], [ %549, %519 ]
  %562 = fsub fast float %525, %530
  %563 = fsub fast float %526, %531
  %564 = fsub fast float %527, %532
  %565 = fmul fast float %561, %562
  %566 = fmul fast float %561, %563
  %567 = fmul fast float %561, %564
  %568 = fadd fast float %565, %530
  %569 = fadd fast float %566, %531
  %570 = fadd fast float %567, %532
  %571 = fmul fast float %568, %500
  %572 = fmul fast float %569, %501
  %573 = fmul fast float %570, %502
  %574 = fmul fast float %561, %495
  %575 = fmul fast float %561, %496
  br label %576

; <label>:576                                     ; preds = %560, %494
  %577 = phi float [ %574, %560 ], [ %495, %494 ]
  %578 = phi float [ %575, %560 ], [ %496, %494 ]
  %579 = phi float [ %571, %560 ], [ %500, %494 ]
  %580 = phi float [ %572, %560 ], [ %501, %494 ]
  %581 = phi float [ %573, %560 ], [ %502, %494 ]
  %582 = add i32 %22, 104
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = add i32 %584, 0
  %586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %585, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %586, %dx.types.Handle %44, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %588 = extractvalue %dx.types.ResRet.f32 %587, 0
  %589 = extractvalue %dx.types.ResRet.f32 %587, 1
  %590 = extractvalue %dx.types.ResRet.f32 %587, 2
  %591 = add i32 %22, 44
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = shl i32 %593, 4
  %595 = and i32 %594, 32752
  %596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %595)  ; LegacyF16ToF32(value)
  %597 = lshr i32 %593, 7
  %598 = and i32 %597, 32752
  %599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %598)  ; LegacyF16ToF32(value)
  %600 = lshr i32 %593, 22
  %601 = shl nuw nsw i32 %600, 5
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = fmul fast float %596, %588
  %604 = fmul fast float %599, %589
  %605 = fmul fast float %602, %590
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 0
  %608 = fmul fast float %603, %607
  %609 = fmul fast float %604, %607
  %610 = fmul fast float %605, %607
  %611 = add i32 %22, 48
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = lshr i32 %613, 22
  %615 = shl nuw nsw i32 %614, 5
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = fmul fast float %616, %608
  %618 = select i1 %105, float %617, float %608
  %619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = extractvalue %dx.types.ResRet.f32 %619, 1
  %622 = extractvalue %dx.types.ResRet.f32 %619, 2
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %625 = fmul fast float %618, %579
  %626 = fmul fast float %609, %580
  %627 = fmul fast float %610, %581
  %628 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %629 = select i1 %105, float 0.000000e+00, float %625
  %630 = select i1 %105, float %628, float %626
  %631 = select i1 %105, float 0.000000e+00, float %627
  %632 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %633 = add i32 %22, 32
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = and i32 %635, 255
  %637 = uitofp i32 %636 to float
  %638 = lshr i32 %635, 8
  %639 = and i32 %638, 255
  %640 = uitofp i32 %639 to float
  %641 = fmul fast float %640, %632
  %642 = fadd fast float %641, %637
  %643 = fmul fast float %642, 0x3F70101020000000
  %644 = call float @dx.op.unary.f32(i32 7, float %643)  ; Saturate(value)
  %645 = and i32 %125, 8192
  %646 = icmp eq i32 %645, 0
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 0
  br i1 %646, label %655, label %649, !dx.controlflow.hints !65

; <label>:649                                     ; preds = %576
  %650 = add i32 %122, 176
  %651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.f32 %651, 0
  %653 = fcmp fast oge float %652, 0.000000e+00
  %654 = select i1 %653, float %652, float %648
  br label %655

; <label>:655                                     ; preds = %649, %576
  %656 = phi float [ %654, %649 ], [ %648, %576 ]
  %657 = fmul fast float %632, %578
  %658 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = lshr i32 %659, 18
  %661 = uitofp i32 %660 to float
  %662 = fmul fast float %661, 0x3F4C00EBA0000000
  %663 = call float @dx.op.unary.f32(i32 21, float %662)  ; Exp(value)
  %664 = fadd fast float %663, -1.000000e+00
  %665 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %666 = extractvalue %dx.types.Dimensions %665, 0
  %667 = sitofp i32 %666 to float
  %668 = extractvalue %dx.types.Dimensions %665, 1
  %669 = sitofp i32 %668 to float
  %670 = fcmp fast oge float %203, %667
  %671 = fcmp fast oge float %204, %669
  %672 = or i1 %670, %671
  %673 = select i1 %672, float 0x4197782600000000, float %664
  %674 = icmp eq i32 %121, 3
  %675 = fcmp fast ogt float %43, %673
  %676 = and i1 %229, %675
  %677 = or i1 %674, %676
  %678 = icmp eq i32 %121, 2
  %679 = fcmp fast ole float %43, %673
  %680 = and i1 %678, %679
  %681 = or i1 %680, %677
  %682 = fmul fast float %497, %36
  %683 = fmul fast float %682, %618
  %684 = fmul fast float %683, %620
  %685 = fmul fast float %684, %624
  %686 = fmul fast float %498, %36
  %687 = fmul fast float %686, %609
  %688 = fmul fast float %687, %621
  %689 = fmul fast float %688, %624
  %690 = fmul fast float %499, %36
  %691 = fmul fast float %690, %610
  %692 = fmul fast float %691, %622
  %693 = fmul fast float %692, %624
  %694 = fadd fast float %685, %629
  %695 = fadd fast float %630, %689
  %696 = fadd fast float %693, %631
  %697 = fmul fast float %694, %577
  %698 = fmul fast float %695, %577
  %699 = fmul fast float %696, %577
  %700 = fmul fast float %656, %644
  %701 = fsub fast float 1.000000e+00, %644
  %702 = fsub fast float %701, %657
  %703 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 3
  %706 = fmul fast float %705, %703
  %707 = fadd fast float %706, %700
  %708 = and i32 %125, 1048576
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %801, label %710, !dx.controlflow.hints !66

; <label>:710                                     ; preds = %655
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 2
  %713 = extractvalue %dx.types.CBufRet.f32 %711, 3
  %714 = fmul fast float %712, %47
  %715 = fmul fast float %713, %48
  %716 = call float @dx.op.unary.f32(i32 7, float %714)  ; Saturate(value)
  %717 = call float @dx.op.unary.f32(i32 7, float %715)  ; Saturate(value)
  %718 = select i1 %681, i32 2, i32 0
  %719 = or i32 %718, 1
  %720 = uitofp i32 %719 to float
  %721 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %716, float %717, float %720, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  %723 = extractvalue %dx.types.ResRet.f32 %721, 1
  %724 = extractvalue %dx.types.ResRet.f32 %721, 2
  %725 = extractvalue %dx.types.ResRet.f32 %721, 3
  %726 = add nuw nsw i32 %718, 2
  %727 = uitofp i32 %726 to float
  %728 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %716, float %717, float %727, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  %730 = extractvalue %dx.types.ResRet.f32 %728, 1
  %731 = extractvalue %dx.types.ResRet.f32 %728, 2
  %732 = extractvalue %dx.types.ResRet.f32 %728, 3
  %733 = call float @dx.op.binary.f32(i32 35, float %723, float %724)  ; FMax(a,b)
  %734 = call float @dx.op.binary.f32(i32 35, float %722, float %733)  ; FMax(a,b)
  %735 = call float @dx.op.binary.f32(i32 35, float %734, float %725)  ; FMax(a,b)
  %736 = call float @dx.op.binary.f32(i32 36, float %730, float %731)  ; FMin(a,b)
  %737 = call float @dx.op.binary.f32(i32 36, float %729, float %736)  ; FMin(a,b)
  %738 = call float @dx.op.binary.f32(i32 36, float %737, float %732)  ; FMin(a,b)
  %739 = fmul fast float %735, 2.550000e+02
  %740 = fadd fast float %739, 0x3F70101020000000
  %741 = fptoui float %740 to i32
  %742 = fmul fast float %738, 2.550000e+02
  %743 = fadd fast float %742, 0x3F70101020000000
  %744 = fptoui float %743 to i32
  %745 = icmp ult i32 %741, %744
  br i1 %745, label %746, label %794

; <label>:746                                     ; preds = %710
  %747 = fcmp fast ogt float %42, 9.843750e-01
  %748 = fadd fast float %43, -4.000000e+00
  %749 = select i1 %747, float -4.000000e+00, float %748
  %750 = call float @dx.op.binary.f32(i32 35, float %749, float 0.000000e+00)  ; FMax(a,b)
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 0
  %753 = fadd fast float %752, %750
  %754 = extractvalue %dx.types.CBufRet.f32 %751, 2
  %755 = fmul fast float %753, %754
  %756 = call float @dx.op.unary.f32(i32 23, float %755)  ; Log(value)
  %757 = extractvalue %dx.types.CBufRet.f32 %751, 3
  %758 = fmul fast float %757, %756
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 2
  %761 = fmul fast float %758, %760
  %762 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %763 = uitofp i32 %741 to float
  %764 = uitofp i32 %744 to float
  %765 = fadd fast float %763, 5.000000e-01
  %766 = fadd fast float %764, 5.000000e-01
  %767 = fmul fast float %760, %765
  %768 = fmul fast float %760, %766
  %769 = fadd fast float %767, 0x3F0FFB4800000000
  %770 = fadd fast float %768, 0xBF0FFB4800000000
  %771 = call float @dx.op.binary.f32(i32 35, float %762, float %769)  ; FMax(a,b)
  %772 = call float @dx.op.binary.f32(i32 36, float %771, float %770)  ; FMin(a,b)
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 1
  %775 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %776 = extractvalue %dx.types.CBufRet.f32 %773, 0
  %777 = select i1 %681, float %776, float 0.000000e+00
  %778 = fmul fast float %774, %772
  %779 = fadd fast float %777, %778
  %780 = fadd fast float %777, %775
  %781 = fsub fast float %774, %775
  %782 = fadd fast float %781, %777
  %783 = call float @dx.op.binary.f32(i32 35, float %779, float %780)  ; FMax(a,b)
  %784 = call float @dx.op.binary.f32(i32 36, float %783, float %782)  ; FMin(a,b)
  %785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %716, float %717, float %784, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = extractvalue %dx.types.ResRet.f32 %785, 1
  %788 = extractvalue %dx.types.ResRet.f32 %785, 2
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 1
  %791 = fmul fast float %790, %786
  %792 = fmul fast float %790, %787
  %793 = fmul fast float %790, %788
  br label %794

; <label>:794                                     ; preds = %746, %710
  %795 = phi float [ %791, %746 ], [ 1.000000e+00, %710 ]
  %796 = phi float [ %792, %746 ], [ 1.000000e+00, %710 ]
  %797 = phi float [ %793, %746 ], [ 1.000000e+00, %710 ]
  %798 = fmul fast float %795, %697
  %799 = fmul fast float %796, %698
  %800 = fmul fast float %797, %699
  br label %801

; <label>:801                                     ; preds = %794, %655
  %802 = phi float [ %798, %794 ], [ %697, %655 ]
  %803 = phi float [ %799, %794 ], [ %698, %655 ]
  %804 = phi float [ %800, %794 ], [ %699, %655 ]
  %805 = and i32 %125, 2097152
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %811, label %807, !dx.controlflow.hints !67

; <label>:807                                     ; preds = %801
  %808 = add i32 %122, 192
  %809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  br label %814

; <label>:811                                     ; preds = %801
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 3
  br label %814

; <label>:814                                     ; preds = %811, %807
  %815 = phi float [ %810, %807 ], [ %813, %811 ]
  br i1 %676, label %816, label %900

; <label>:816                                     ; preds = %814
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 2
  %819 = extractvalue %dx.types.CBufRet.f32 %817, 3
  %820 = fmul fast float %818, %47
  %821 = fmul fast float %819, %48
  %822 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %823 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %824 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %822, float %823, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = extractvalue %dx.types.ResRet.f32 %824, 3
  %829 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %822, float %823, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = extractvalue %dx.types.ResRet.f32 %829, 1
  %832 = extractvalue %dx.types.ResRet.f32 %829, 2
  %833 = extractvalue %dx.types.ResRet.f32 %829, 3
  %834 = call float @dx.op.binary.f32(i32 35, float %826, float %827)  ; FMax(a,b)
  %835 = call float @dx.op.binary.f32(i32 35, float %825, float %834)  ; FMax(a,b)
  %836 = call float @dx.op.binary.f32(i32 35, float %835, float %828)  ; FMax(a,b)
  %837 = call float @dx.op.binary.f32(i32 36, float %831, float %832)  ; FMin(a,b)
  %838 = call float @dx.op.binary.f32(i32 36, float %830, float %837)  ; FMin(a,b)
  %839 = call float @dx.op.binary.f32(i32 36, float %838, float %833)  ; FMin(a,b)
  %840 = fmul fast float %836, 2.550000e+02
  %841 = fadd fast float %840, 0x3F70101020000000
  %842 = fptoui float %841 to i32
  %843 = fmul fast float %839, 2.550000e+02
  %844 = fadd fast float %843, 0x3F70101020000000
  %845 = fptoui float %844 to i32
  %846 = icmp ult i32 %842, %845
  br i1 %846, label %847, label %889

; <label>:847                                     ; preds = %816
  %848 = fcmp fast ogt float %42, 9.843750e-01
  %849 = fadd fast float %43, -4.000000e+00
  %850 = select i1 %848, float -4.000000e+00, float %849
  %851 = call float @dx.op.binary.f32(i32 35, float %850, float 0.000000e+00)  ; FMax(a,b)
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 0
  %854 = fadd fast float %853, %851
  %855 = extractvalue %dx.types.CBufRet.f32 %852, 2
  %856 = fmul fast float %854, %855
  %857 = call float @dx.op.unary.f32(i32 23, float %856)  ; Log(value)
  %858 = extractvalue %dx.types.CBufRet.f32 %852, 3
  %859 = fmul fast float %858, %857
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %862 = fmul fast float %859, %861
  %863 = call float @dx.op.unary.f32(i32 7, float %862)  ; Saturate(value)
  %864 = uitofp i32 %842 to float
  %865 = uitofp i32 %845 to float
  %866 = fadd fast float %864, 5.000000e-01
  %867 = fadd fast float %865, 5.000000e-01
  %868 = fmul fast float %861, %866
  %869 = fmul fast float %861, %867
  %870 = fadd fast float %868, 0x3F0FFB4800000000
  %871 = fadd fast float %869, 0xBF0FFB4800000000
  %872 = call float @dx.op.binary.f32(i32 35, float %863, float %870)  ; FMax(a,b)
  %873 = call float @dx.op.binary.f32(i32 36, float %872, float %871)  ; FMin(a,b)
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 1
  %876 = extractvalue %dx.types.CBufRet.f32 %874, 2
  %877 = extractvalue %dx.types.CBufRet.f32 %874, 0
  %878 = fmul fast float %875, %873
  %879 = fadd fast float %877, %878
  %880 = fadd fast float %877, %876
  %881 = fsub fast float %875, %876
  %882 = fadd fast float %881, %877
  %883 = call float @dx.op.binary.f32(i32 35, float %879, float %880)  ; FMax(a,b)
  %884 = call float @dx.op.binary.f32(i32 36, float %883, float %882)  ; FMin(a,b)
  %885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %822, float %823, float %884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = extractvalue %dx.types.ResRet.f32 %885, 2
  br label %889

; <label>:889                                     ; preds = %847, %816
  %890 = phi float [ %886, %847 ], [ 1.000000e+00, %816 ]
  %891 = phi float [ %887, %847 ], [ 1.000000e+00, %816 ]
  %892 = phi float [ %888, %847 ], [ 1.000000e+00, %816 ]
  %893 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %894 = select i1 %105, float %893, float %890
  %895 = select i1 %105, float %893, float %891
  %896 = select i1 %105, float 1.000000e+00, float %892
  %897 = fmul fast float %894, %802
  %898 = fmul fast float %895, %803
  %899 = fmul fast float %896, %804
  br label %900

; <label>:900                                     ; preds = %889, %814
  %901 = phi float [ %673, %889 ], [ %43, %814 ]
  %902 = phi float [ %897, %889 ], [ %802, %814 ]
  %903 = phi float [ %898, %889 ], [ %803, %814 ]
  %904 = phi float [ %899, %889 ], [ %804, %814 ]
  %905 = phi float [ %890, %889 ], [ 1.000000e+00, %814 ]
  br i1 %681, label %1148, label %906

; <label>:906                                     ; preds = %900
  %907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  %909 = extractvalue %dx.types.ResRet.f32 %907, 1
  %910 = extractvalue %dx.types.ResRet.f32 %907, 2
  %911 = fmul fast float %908, %905
  %912 = call float @dx.op.dot3.f32(i32 55, float %908, float %909, float %910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %913 = select i1 %105, float %912, float %908
  %914 = select i1 %105, float %912, float %909
  %915 = select i1 %105, float 1.000000e+00, float %910
  %916 = fmul fast float %913, %902
  %917 = fmul fast float %914, %903
  %918 = fmul fast float %915, %904
  %919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.i32 %919, 0
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %1148, label %922, !dx.controlflow.hints !68

; <label>:922                                     ; preds = %906
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %925 = extractvalue %dx.types.CBufRet.f32 %923, 3
  %926 = fmul fast float %924, %47
  %927 = fmul fast float %925, %48
  %928 = fmul fast float %926, 2.000000e+00
  %929 = fmul fast float %927, 2.000000e+00
  %930 = fsub fast float 1.000000e+00, %928
  %931 = fsub fast float 1.000000e+00, %929
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 0
  %934 = extractvalue %dx.types.CBufRet.f32 %932, 1
  %935 = extractvalue %dx.types.CBufRet.f32 %932, 2
  %936 = fmul fast float %930, %933
  %937 = fmul fast float %930, %934
  %938 = fmul fast float %930, %935
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 0
  %941 = extractvalue %dx.types.CBufRet.f32 %939, 1
  %942 = extractvalue %dx.types.CBufRet.f32 %939, 2
  %943 = fmul fast float %931, %940
  %944 = fmul fast float %931, %941
  %945 = fmul fast float %931, %942
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %948 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %949 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %950 = fadd fast float %943, %947
  %951 = fadd fast float %950, %936
  %952 = fadd fast float %944, %948
  %953 = fadd fast float %952, %937
  %954 = fadd fast float %945, %949
  %955 = fadd fast float %954, %938
  %956 = fmul fast float %951, %901
  %957 = fmul fast float %953, %901
  %958 = fmul fast float %955, %901
  %959 = fmul fast float %956, %956
  %960 = fmul fast float %957, %957
  %961 = fadd fast float %959, %960
  %962 = fmul fast float %958, %958
  %963 = fadd fast float %961, %962
  %964 = call float @dx.op.unary.f32(i32 24, float %963)  ; Sqrt(value)
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %967 = fsub fast float %964, %966
  %968 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %969 = fmul fast float %967, %968
  %970 = call float @dx.op.unary.f32(i32 7, float %969)  ; Saturate(value)
  %971 = fadd fast float %970, -5.000000e-01
  %972 = fmul fast float %971, 2.000000e+00
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 2
  %975 = call float @dx.op.binary.f32(i32 36, float %974, float %972)  ; FMin(a,b)
  %976 = fsub fast float -0.000000e+00, %974
  %977 = fcmp fast ogt float %975, %976
  br i1 %977, label %978, label %1148, !dx.controlflow.hints !69

; <label>:978                                     ; preds = %922
  %979 = fmul fast float %975, 5.000000e-01
  %980 = fadd fast float %979, 5.000000e-01
  %981 = call float @dx.op.unary.f32(i32 22, float %980)  ; Frc(value)
  %982 = call float @dx.op.unary.f32(i32 27, float %981)  ; Round_ni(value)
  %983 = call float @dx.op.unary.f32(i32 22, float %981)  ; Frc(value)
  %984 = fmul fast float %983, 2.000000e+00
  %985 = fadd fast float %984, -1.000000e+00
  %986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %926, float %927, float %982, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %987 = extractvalue %dx.types.ResRet.f32 %986, 0
  %988 = extractvalue %dx.types.ResRet.f32 %986, 1
  %989 = extractvalue %dx.types.ResRet.f32 %986, 2
  %990 = extractvalue %dx.types.ResRet.f32 %986, 3
  %991 = fadd fast float %987, -5.000000e-01
  %992 = fadd fast float %989, -5.000000e-01
  %993 = fmul fast float %991, 0xBFD5555560000000
  %994 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %992, float %993)  ; FMad(a,b,c)
  %995 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %988, float 0.000000e+00)  ; FMad(a,b,c)
  %996 = fadd fast float %995, %990
  %997 = fmul fast float %991, -7.500000e-01
  %998 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %992, float %997)  ; FMad(a,b,c)
  %999 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %988, float 0.000000e+00)  ; FMad(a,b,c)
  %1000 = fadd fast float %999, %990
  %1001 = call float @dx.op.binary.f32(i32 35, float %994, float -1.000000e+00)  ; FMax(a,b)
  %1002 = call float @dx.op.binary.f32(i32 35, float %996, float -1.000000e+00)  ; FMax(a,b)
  %1003 = call float @dx.op.binary.f32(i32 35, float %998, float -1.000000e+00)  ; FMax(a,b)
  %1004 = call float @dx.op.binary.f32(i32 35, float %1000, float -1.000000e+00)  ; FMax(a,b)
  %1005 = call float @dx.op.binary.f32(i32 36, float %1001, float 1.000000e+00)  ; FMin(a,b)
  %1006 = call float @dx.op.binary.f32(i32 36, float %1002, float 1.000000e+00)  ; FMin(a,b)
  %1007 = call float @dx.op.binary.f32(i32 36, float %1003, float 1.000000e+00)  ; FMin(a,b)
  %1008 = call float @dx.op.binary.f32(i32 36, float %1004, float 1.000000e+00)  ; FMin(a,b)
  %1009 = fcmp fast olt float %1005, 0x3FEFFF8020000000
  br i1 %1009, label %1010, label %1125, !dx.controlflow.hints !70

; <label>:1010                                    ; preds = %978
  %1011 = extractvalue %dx.types.CBufRet.f32 %973, 3
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.CBufRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.CBufRet.f32 %1012, 2
  %1016 = extractvalue %dx.types.CBufRet.f32 %1012, 3
  %1017 = fsub fast float %1013, %1005
  %1018 = fsub fast float %1014, %1006
  %1019 = fsub fast float %1015, %1007
  %1020 = fsub fast float %1016, %1008
  %1021 = fmul fast float %1017, %1011
  %1022 = fmul fast float %1018, %1011
  %1023 = fmul fast float %1019, %1011
  %1024 = fmul fast float %1020, %1011
  %1025 = fadd fast float %1021, %1005
  %1026 = fadd fast float %1022, %1006
  %1027 = fsub fast float -0.000000e+00, %1026
  %1028 = fadd fast float %1023, %1007
  %1029 = fadd fast float %1024, %1008
  %1030 = fmul fast float %1025, %1025
  %1031 = fsub fast float %1026, %1030
  %1032 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1031)  ; FMax(a,b)
  %1033 = fdiv fast float 1.000000e+00, %1032
  %1034 = fmul fast float %1026, %1025
  %1035 = fsub fast float %1028, %1034
  %1036 = fsub fast float %985, %1025
  %1037 = fmul fast float %985, %985
  %1038 = fsub fast float %1037, %1026
  %1039 = fmul fast float %1036, %1033
  %1040 = fmul fast float %1039, %1035
  %1041 = fsub fast float %1038, %1040
  %1042 = fmul fast float %1026, %1026
  %1043 = fsub fast float %1029, %1042
  %1044 = fmul fast float %1035, %1035
  %1045 = fmul fast float %1044, %1033
  %1046 = fsub fast float %1043, %1045
  %1047 = fdiv fast float %1041, %1046
  %1048 = fmul fast float %1035, %1047
  %1049 = fsub fast float %1036, %1048
  %1050 = fmul fast float %1049, %1033
  %1051 = fmul fast float %1050, %1025
  %1052 = fsub fast float 1.000000e+00, %1051
  %1053 = fmul fast float %1026, %1047
  %1054 = fsub fast float %1052, %1053
  %1055 = fmul fast float %1050, %1050
  %1056 = fmul fast float %1047, 4.000000e+00
  %1057 = fmul fast float %1056, %1054
  %1058 = fsub fast float %1055, %1057
  %1059 = call float @dx.op.unary.f32(i32 24, float %1058)  ; Sqrt(value)
  %1060 = fcmp fast oge float %1050, 0.000000e+00
  %1061 = fsub fast float -0.000000e+00, %1059
  %1062 = select i1 %1060, float %1061, float %1059
  %1063 = fsub fast float %1062, %1050
  %1064 = fdiv fast float %1063, %1047
  %1065 = fdiv fast float %1054, %1063
  %1066 = fmul fast float %1064, 5.000000e-01
  %1067 = fmul fast float %1065, 2.000000e+00
  %1068 = select i1 %1060, float %1066, float %1067
  %1069 = select i1 %1060, float %1067, float %1066
  %1070 = call float @dx.op.binary.f32(i32 35, float %1068, float %1069)  ; FMax(a,b)
  %1071 = call float @dx.op.binary.f32(i32 36, float %1068, float %1069)  ; FMin(a,b)
  %1072 = fcmp fast ogt float %985, %1071
  br i1 %1072, label %1073, label %1083

; <label>:1073                                    ; preds = %1010
  %1074 = fsub fast float %985, %1071
  %1075 = fsub fast float %1070, %1071
  %1076 = fmul fast float %1074, %1075
  %1077 = fmul fast float %1070, %985
  %1078 = fadd fast float %1070, %985
  %1079 = fmul fast float %1078, %1025
  %1080 = fadd fast float %1077, %1026
  %1081 = fsub fast float %1080, %1079
  %1082 = fdiv fast float %1081, %1076
  br label %1083

; <label>:1083                                    ; preds = %1073, %1010
  %1084 = phi float [ %1082, %1073 ], [ 0.000000e+00, %1010 ]
  %1085 = fcmp fast ogt float %985, %1070
  %1086 = fsub fast float %985, %1070
  br i1 %1085, label %1087, label %1097

; <label>:1087                                    ; preds = %1083
  %1088 = fsub fast float %1070, %1071
  %1089 = fmul fast float %1088, %1086
  %1090 = fmul fast float %1071, %985
  %1091 = fadd fast float %1071, %985
  %1092 = fmul fast float %1091, %1025
  %1093 = fsub fast float %1027, %1090
  %1094 = fadd fast float %1093, %1092
  %1095 = fdiv fast float %1094, %1089
  %1096 = fadd fast float %1095, %1084
  br label %1097

; <label>:1097                                    ; preds = %1087, %1083
  %1098 = phi float [ %1096, %1087 ], [ %1084, %1083 ]
  %1099 = fsub fast float %985, %1071
  %1100 = fmul fast float %1099, %1086
  %1101 = fmul fast float %1071, %1070
  %1102 = fadd fast float %1071, %1070
  %1103 = fmul fast float %1102, %1025
  %1104 = fadd fast float %1101, %1026
  %1105 = fsub fast float %1104, %1103
  %1106 = fdiv fast float %1105, %1100
  %1107 = call float @dx.op.unary.f32(i32 7, float %1098)  ; Saturate(value)
  %1108 = fcmp fast oeq float %815, 0.000000e+00
  %1109 = extractvalue %dx.types.CBufRet.f32 %973, 0
  %1110 = fcmp fast oeq float %1109, 0.000000e+00
  %1111 = or i1 %1108, %1110
  %1112 = fmul fast float %1109, 2.000000e+00
  %1113 = fadd fast float %974, %975
  %1114 = fdiv fast float %1113, %1112
  %1115 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  %1116 = fmul fast float %1115, 2.000000e+00
  %1117 = fsub fast float 3.000000e+00, %1116
  %1118 = fmul fast float %1115, %1115
  %1119 = fmul fast float %1118, %1117
  %1120 = select i1 %1111, float 1.000000e+00, float %1119
  %1121 = fmul fast float %1106, %815
  %1122 = fadd fast float %1107, %1121
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1124 = fmul fast float %1120, %1123
  br label %1125

; <label>:1125                                    ; preds = %1097, %978
  %1126 = phi float [ %1124, %1097 ], [ 0.000000e+00, %978 ]
  %1127 = fsub fast float 1.000000e+00, %1126
  %1128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %926, float %927, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.i32 %1130, 2
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1138, label %1133

; <label>:1133                                    ; preds = %1125
  %1134 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  %1135 = fadd fast float %1129, -1.000000e+00
  %1136 = fmul fast float %1134, %1135
  %1137 = fadd fast float %1136, 1.000000e+00
  br label %1138

; <label>:1138                                    ; preds = %1133, %1125
  %1139 = phi float [ %1137, %1133 ], [ %1127, %1125 ]
  %1140 = call float @dx.op.binary.f32(i32 35, float %1129, float %1139)  ; FMax(a,b)
  %1141 = fmul fast float %1140, %911
  %1142 = call float @dx.op.dot3.f32(i32 55, float %1140, float %1140, float %1140, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1143 = select i1 %105, float %1142, float %1140
  %1144 = select i1 %105, float 1.000000e+00, float %1140
  %1145 = fmul fast float %1143, %916
  %1146 = fmul fast float %1143, %917
  %1147 = fmul fast float %1144, %918
  br label %1148

; <label>:1148                                    ; preds = %1138, %922, %906, %900
  %1149 = phi float [ %902, %900 ], [ %916, %906 ], [ %1145, %1138 ], [ %916, %922 ]
  %1150 = phi float [ %903, %900 ], [ %917, %906 ], [ %1146, %1138 ], [ %917, %922 ]
  %1151 = phi float [ %904, %900 ], [ %918, %906 ], [ %1147, %1138 ], [ %918, %922 ]
  %1152 = phi float [ %905, %900 ], [ %911, %906 ], [ %1141, %1138 ], [ %911, %922 ]
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 2
  %1155 = extractvalue %dx.types.CBufRet.f32 %1153, 3
  %1156 = fmul fast float %1154, %47
  %1157 = fmul fast float %1155, %48
  %1158 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1159 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1160 = select i1 %681, i32 2, i32 0
  %1161 = or i32 %1160, 1
  %1162 = uitofp i32 %1161 to float
  %1163 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1158, float %1159, float %1162, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = extractvalue %dx.types.ResRet.f32 %1163, 1
  %1166 = extractvalue %dx.types.ResRet.f32 %1163, 2
  %1167 = extractvalue %dx.types.ResRet.f32 %1163, 3
  %1168 = add nuw nsw i32 %1160, 2
  %1169 = uitofp i32 %1168 to float
  %1170 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1158, float %1159, float %1169, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.ResRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1170, 2
  %1174 = extractvalue %dx.types.ResRet.f32 %1170, 3
  %1175 = call float @dx.op.binary.f32(i32 35, float %1165, float %1166)  ; FMax(a,b)
  %1176 = call float @dx.op.binary.f32(i32 35, float %1164, float %1175)  ; FMax(a,b)
  %1177 = call float @dx.op.binary.f32(i32 35, float %1176, float %1167)  ; FMax(a,b)
  %1178 = call float @dx.op.binary.f32(i32 36, float %1172, float %1173)  ; FMin(a,b)
  %1179 = call float @dx.op.binary.f32(i32 36, float %1171, float %1178)  ; FMin(a,b)
  %1180 = call float @dx.op.binary.f32(i32 36, float %1179, float %1174)  ; FMin(a,b)
  %1181 = fmul fast float %1177, 2.550000e+02
  %1182 = fadd fast float %1181, 0x3F70101020000000
  %1183 = fptoui float %1182 to i32
  %1184 = fmul fast float %1180, 2.550000e+02
  %1185 = fadd fast float %1184, 0x3F70101020000000
  %1186 = fptoui float %1185 to i32
  %1187 = icmp ult i32 %1183, %1186
  br i1 %1187, label %1188, label %1231

; <label>:1188                                    ; preds = %1148
  %1189 = fcmp fast ogt float %42, 9.843750e-01
  %1190 = fadd fast float %901, -4.000000e+00
  %1191 = select i1 %1189, float -4.000000e+00, float %1190
  %1192 = call float @dx.op.binary.f32(i32 35, float %1191, float 0.000000e+00)  ; FMax(a,b)
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  %1195 = fadd fast float %1194, %1192
  %1196 = extractvalue %dx.types.CBufRet.f32 %1193, 2
  %1197 = fmul fast float %1195, %1196
  %1198 = call float @dx.op.unary.f32(i32 23, float %1197)  ; Log(value)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1193, 3
  %1200 = fmul fast float %1199, %1198
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 2
  %1203 = fmul fast float %1200, %1202
  %1204 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1205 = uitofp i32 %1183 to float
  %1206 = uitofp i32 %1186 to float
  %1207 = fadd fast float %1205, 5.000000e-01
  %1208 = fadd fast float %1206, 5.000000e-01
  %1209 = fmul fast float %1202, %1207
  %1210 = fmul fast float %1202, %1208
  %1211 = fadd fast float %1209, 0x3F0FFB4800000000
  %1212 = fadd fast float %1210, 0xBF0FFB4800000000
  %1213 = call float @dx.op.binary.f32(i32 35, float %1204, float %1211)  ; FMax(a,b)
  %1214 = call float @dx.op.binary.f32(i32 36, float %1213, float %1212)  ; FMin(a,b)
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 1
  %1217 = extractvalue %dx.types.CBufRet.f32 %1215, 2
  %1218 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1219 = select i1 %681, float %1218, float 0.000000e+00
  %1220 = fmul fast float %1216, %1214
  %1221 = fadd fast float %1219, %1220
  %1222 = fadd fast float %1219, %1217
  %1223 = fsub fast float %1216, %1217
  %1224 = fadd fast float %1223, %1219
  %1225 = call float @dx.op.binary.f32(i32 35, float %1221, float %1222)  ; FMax(a,b)
  %1226 = call float @dx.op.binary.f32(i32 36, float %1225, float %1224)  ; FMin(a,b)
  %1227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1158, float %1159, float %1226, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.ResRet.f32 %1227, 2
  br label %1231

; <label>:1231                                    ; preds = %1188, %1148
  %1232 = phi float [ %1228, %1188 ], [ 1.000000e+00, %1148 ]
  %1233 = phi float [ %1229, %1188 ], [ 1.000000e+00, %1148 ]
  %1234 = phi float [ %1230, %1188 ], [ 1.000000e+00, %1148 ]
  %1235 = fmul fast float %1232, %1152
  %1236 = call float @dx.op.dot3.f32(i32 55, float %1232, float %1233, float %1234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1237 = select i1 %105, float %1236, float %1232
  %1238 = select i1 %105, float %1236, float %1233
  %1239 = select i1 %105, float 1.000000e+00, float %1234
  %1240 = fmul fast float %1237, %1149
  %1241 = fmul fast float %1238, %1150
  %1242 = fmul fast float %1239, %1151
  %1243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.i32 %1243, 3
  %1245 = and i32 %1244, 3
  %1246 = icmp ne i32 %1245, 0
  %1247 = and i32 %1244, 4
  %1248 = icmp ne i32 %1247, 0
  %1249 = and i1 %1246, %1248
  %1250 = and i1 %105, %1249
  br i1 %1250, label %1251, label %1257

; <label>:1251                                    ; preds = %1231
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1254 = fadd fast float %1235, -1.000000e+00
  %1255 = fmul fast float %1253, %1254
  %1256 = fadd fast float %1255, 1.000000e+00
  br label %1257

; <label>:1257                                    ; preds = %1251, %1231
  %1258 = phi float [ %1256, %1251 ], [ %1235, %1231 ]
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 0
  br i1 %105, label %1261, label %1281

; <label>:1261                                    ; preds = %1257
  %1262 = fadd fast float %1240, %1241
  %1263 = fmul fast float %1260, %1262
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 3
  %1266 = extractvalue %dx.types.CBufRet.f32 %704, 1
  %1267 = fsub fast float %707, %1266
  %1268 = extractvalue %dx.types.CBufRet.f32 %704, 2
  %1269 = fmul fast float %1267, %1268
  %1270 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1271 = fsub fast float %1270, %1265
  %1272 = fmul fast float %1271, %1258
  %1273 = fadd fast float %1272, %1265
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 0
  %1276 = fsub fast float %1273, %1275
  %1277 = fmul fast float %1276, 1.000000e+01
  %1278 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1279 = fmul fast float %1278, %657
  %1280 = fmul fast float %1273, %1279
  br label %1290

; <label>:1281                                    ; preds = %1257
  %1282 = fmul fast float %1260, %1240
  %1283 = fmul fast float %1260, %1241
  %1284 = fmul fast float %1242, %1260
  %1285 = call float @dx.op.binary.f32(i32 35, float %1283, float %1284)  ; FMax(a,b)
  %1286 = call float @dx.op.binary.f32(i32 35, float %1282, float %1285)  ; FMax(a,b)
  %1287 = call float @dx.op.binary.f32(i32 35, float %1286, float 0.000000e+00)  ; FMax(a,b)
  %1288 = fcmp fast ugt float %1287, 0x3F10000000000000
  br i1 %1288, label %1290, label %1289

; <label>:1289                                    ; preds = %1281
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1290

; <label>:1290                                    ; preds = %1289, %1281, %1261
  %1291 = phi float [ %1263, %1261 ], [ %1282, %1289 ], [ %1282, %1281 ]
  %1292 = phi float [ %1280, %1261 ], [ %1283, %1289 ], [ %1283, %1281 ]
  %1293 = phi float [ %1279, %1261 ], [ %1284, %1289 ], [ %1284, %1281 ]
  %1294 = phi float [ %1279, %1261 ], [ 0.000000e+00, %1289 ], [ 0.000000e+00, %1281 ]
  %1295 = fadd fast float %516, 0x3FE3C6EF40000000
  %1296 = call float @dx.op.unary.f32(i32 22, float %1295)  ; Frc(value)
  %1297 = call float @dx.op.unary.f32(i32 23, float %1291)  ; Log(value)
  %1298 = fadd fast float %1297, -7.000000e+00
  %1299 = call float @dx.op.unary.f32(i32 21, float %1298)  ; Exp(value)
  %1300 = fmul fast float %1296, 2.000000e+00
  %1301 = fadd fast float %1300, -1.000000e+00
  %1302 = fmul fast float %1299, %1301
  %1303 = fcmp fast ogt float %1291, 0.000000e+00
  %1304 = select i1 %1303, float %1302, float 0.000000e+00
  %1305 = fadd fast float %1304, %1291
  %1306 = fadd fast float %516, 0x3FF3C6EF40000000
  %1307 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1308 = call float @dx.op.unary.f32(i32 23, float %1292)  ; Log(value)
  %1309 = fadd fast float %1308, -7.000000e+00
  %1310 = call float @dx.op.unary.f32(i32 21, float %1309)  ; Exp(value)
  %1311 = fmul fast float %1307, 2.000000e+00
  %1312 = fadd fast float %1311, -1.000000e+00
  %1313 = fmul fast float %1310, %1312
  %1314 = fcmp fast ogt float %1292, 0.000000e+00
  %1315 = select i1 %1314, float %1313, float 0.000000e+00
  %1316 = fadd fast float %1315, %1292
  %1317 = fadd fast float %516, 0x3FFDAA66E0000000
  %1318 = call float @dx.op.unary.f32(i32 22, float %1317)  ; Frc(value)
  %1319 = call float @dx.op.unary.f32(i32 23, float %1293)  ; Log(value)
  %1320 = fadd fast float %1319, -6.000000e+00
  %1321 = call float @dx.op.unary.f32(i32 21, float %1320)  ; Exp(value)
  %1322 = fmul fast float %1318, 2.000000e+00
  %1323 = fadd fast float %1322, -1.000000e+00
  %1324 = fmul fast float %1321, %1323
  %1325 = fcmp fast ogt float %1293, 0.000000e+00
  %1326 = select i1 %1325, float %1324, float 0.000000e+00
  %1327 = fadd fast float %1326, %1293
  %1328 = select i1 %105, float %1292, float %1316
  %1329 = select i1 %105, float %1293, float %1327
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1330 = call float @dx.op.binary.f32(i32 36, float %1305, float 3.225500e+04)  ; FMin(a,b)
  %1331 = call float @dx.op.binary.f32(i32 36, float %1328, float 3.225500e+04)  ; FMin(a,b)
  %1332 = call float @dx.op.binary.f32(i32 36, float %1329, float 3.225500e+04)  ; FMin(a,b)
  %1333 = call float @dx.op.binary.f32(i32 36, float %1294, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1330)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1331)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1332)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1333)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1294)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1294)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1294)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1294)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !58}
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
!52 = !{i32 3, i32 5}
!53 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!54 = !{!55, !56}
!55 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!56 = !{i32 1, !"SV_Target", i8 9, i8 16, !57, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!57 = !{i32 1}
!58 = !{i32 0, i64 24}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}

