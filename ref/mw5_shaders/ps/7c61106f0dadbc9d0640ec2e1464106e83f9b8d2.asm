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
; shader hash: 8a025f9847adb1e4f02255a129b267af
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
  %164 = and i32 %125, 16
  %165 = icmp ne i32 %164, 0
  %166 = select i1 %165, float 1.000000e+00, float %39
  %167 = icmp eq i32 %164, 0
  br i1 %167, label %187, label %168, !dx.controlflow.hints !59

; <label>:168                                     ; preds = %161
  %169 = add i32 %122, 64
  %170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = fadd fast float %171, 1.000000e+00
  %173 = fmul fast float %172, %39
  %174 = fsub fast float %173, %171
  %175 = fsub fast float %172, %174
  %176 = call float @dx.op.unary.f32(i32 7, float %175)  ; Saturate(value)
  %177 = fsub fast float 1.000000e+00, %173
  %178 = call float @dx.op.unary.f32(i32 7, float %177)  ; Saturate(value)
  %179 = fsub fast float %176, %178
  %180 = fsub fast float %166, %178
  %181 = fdiv fast float %180, %179
  %182 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %183 = fmul fast float %182, 2.000000e+00
  %184 = fsub fast float 3.000000e+00, %183
  %185 = fmul fast float %182, %182
  %186 = fmul fast float %185, %184
  br label %187

; <label>:187                                     ; preds = %168, %161
  %188 = phi float [ %186, %168 ], [ %166, %161 ]
  %189 = fcmp fast ogt float %188, 0.000000e+00
  br i1 %189, label %191, label %190

; <label>:190                                     ; preds = %187
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %191

; <label>:191                                     ; preds = %190, %187
  %192 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %193 = fmul fast float %47, 5.000000e-01
  %194 = fmul fast float %48, 5.000000e-01
  %195 = fptosi float %193 to i32
  %196 = fptosi float %194 to i32
  %197 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %195, i32 %196, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = lshr i32 %198, 18
  %200 = uitofp i32 %199 to float
  %201 = fmul fast float %200, 0x3F4C00EBA0000000
  %202 = call float @dx.op.unary.f32(i32 21, float %201)  ; Exp(value)
  %203 = fadd fast float %202, -1.000000e+00
  %204 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %205 = extractvalue %dx.types.Dimensions %204, 0
  %206 = sitofp i32 %205 to float
  %207 = extractvalue %dx.types.Dimensions %204, 1
  %208 = sitofp i32 %207 to float
  %209 = fcmp fast oge float %193, %206
  %210 = fcmp fast oge float %194, %208
  %211 = or i1 %209, %210
  %212 = select i1 %211, float 0x4197782600000000, float %203
  %213 = fsub fast float %212, %43
  %214 = fcmp fast ogt float %213, 0.000000e+00
  %215 = and i32 %121, -2
  %216 = icmp eq i32 %215, 2
  %217 = and i1 %216, %214
  %218 = xor i1 %214, true
  %219 = icmp eq i32 %121, 1
  %220 = and i1 %219, %218
  %221 = or i1 %217, %220
  %222 = and i32 %125, 262144
  %223 = icmp ne i32 %222, 0
  %224 = and i1 %223, %221
  %225 = xor i1 %221, true
  %226 = and i32 %125, 131072
  %227 = icmp ne i32 %226, 0
  %228 = and i1 %227, %225
  %229 = or i1 %224, %228
  br i1 %229, label %230, label %231

; <label>:230                                     ; preds = %191
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %231

; <label>:231                                     ; preds = %230, %191
  %232 = and i32 %125, 32
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %483, label %234, !dx.controlflow.hints !60

; <label>:234                                     ; preds = %231
  %235 = add i32 %122, 80
  %236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = extractvalue %dx.types.ResRet.f32 %236, 1
  %239 = extractvalue %dx.types.ResRet.f32 %236, 2
  %240 = extractvalue %dx.types.ResRet.f32 %236, 3
  %241 = add i32 %122, 96
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = add i32 %122, 112
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  %251 = extractvalue %dx.types.ResRet.f32 %247, 3
  %252 = add i32 %122, 128
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = extractvalue %dx.types.ResRet.f32 %253, 3
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 4096
  %261 = icmp ne i32 %260, 0
  %262 = fcmp fast une float %245, 0.000000e+00
  %263 = and i32 %259, 64
  %264 = icmp ne i32 %263, 0
  %265 = and i32 %259, 128
  %266 = icmp eq i32 %265, 0
  %267 = and i32 %259, 2048
  %268 = icmp eq i32 %267, 0
  %269 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %270 = extractvalue %dx.types.Dimensions %269, 0
  %271 = sitofp i32 %270 to float
  %272 = extractvalue %dx.types.Dimensions %269, 1
  %273 = sitofp i32 %272 to float
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 2
  %276 = extractvalue %dx.types.CBufRet.f32 %274, 3
  %277 = fmul fast float %275, %47
  %278 = fmul fast float %276, %48
  %279 = fmul fast float %277, %271
  %280 = fmul fast float %278, %273
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %283 = fsub fast float -0.000000e+00, %282
  %284 = fptoui float %283 to i32
  %285 = fptoui float %279 to i32
  %286 = fptoui float %280 to i32
  %287 = and i32 %284, 31
  %288 = lshr i32 %285, %287
  %289 = lshr i32 %286, %287
  %290 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %284, i32 %288, i32 %289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = fcmp fast ogt float %291, -1.000000e+00
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 1
  %295 = select i1 %292, float %294, float 1.000000e+00
  %296 = fadd fast float %291, 1.000000e+00
  %297 = fmul fast float %295, %296
  %298 = call float @dx.op.unary.f32(i32 6, float %297)  ; FAbs(value)
  %299 = extractvalue %dx.types.CBufRet.f32 %293, 3
  %300 = fcmp fast oge float %298, %299
  %301 = select i1 %300, float 0x4197782600000000, float %298
  br i1 %268, label %379, label %302, !dx.controlflow.hints !61

; <label>:302                                     ; preds = %234
  %303 = fmul fast float %52, %275
  %304 = fmul fast float %54, %276
  %305 = fsub fast float 1.000000e+00, %303
  %306 = fsub fast float 1.000000e+00, %304
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 0
  %309 = extractvalue %dx.types.CBufRet.f32 %307, 1
  %310 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %311 = fmul fast float %305, %308
  %312 = fmul fast float %305, %309
  %313 = fmul fast float %305, %310
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 0
  %316 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %317 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %318 = fmul fast float %306, %315
  %319 = fmul fast float %306, %316
  %320 = fmul fast float %306, %317
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %323 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %324 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %325 = fadd fast float %318, %322
  %326 = fadd fast float %325, %311
  %327 = fadd fast float %319, %323
  %328 = fadd fast float %327, %312
  %329 = fadd fast float %320, %324
  %330 = fadd fast float %329, %313
  %331 = fmul fast float %326, %301
  %332 = fmul fast float %328, %301
  %333 = fmul fast float %330, %301
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %338 = fsub fast float %335, %23
  %339 = fadd fast float %338, %331
  %340 = fsub fast float %336, %24
  %341 = fadd fast float %340, %332
  %342 = fsub fast float %337, %25
  %343 = fadd fast float %342, %333
  %344 = fmul fast float %26, %26
  %345 = call float @dx.op.dot3.f32(i32 55, float %339, float %341, float %343, float %339, float %341, float %343)  ; Dot3(ax,ay,az,bx,by,bz)
  %346 = fsub fast float %344, %345
  %347 = fmul fast float %244, %344
  %348 = fmul fast float %243, %344
  %349 = fcmp fast olt float %346, %347
  %350 = fcmp fast ogt float %346, %348
  %351 = or i1 %349, %350
  %352 = select i1 %351, float 0.000000e+00, float %346
  %353 = fsub fast float %243, %244
  %354 = fmul fast float %353, %344
  %355 = fsub fast float %352, %347
  %356 = fdiv fast float %355, %354
  %357 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  %358 = fmul fast float %357, 2.000000e+00
  %359 = fsub fast float 3.000000e+00, %358
  %360 = fmul fast float %357, %357
  %361 = fmul fast float %360, %359
  %362 = fsub fast float %251, %257
  %363 = fmul fast float %361, %362
  %364 = fadd fast float %363, %257
  %365 = fmul fast float %248, %27
  %366 = fmul fast float %249, %28
  %367 = fmul fast float %250, %29
  %368 = fsub fast float %365, %254
  %369 = fsub fast float %366, %255
  %370 = fsub fast float %367, %256
  %371 = fmul fast float %361, %368
  %372 = fmul fast float %361, %369
  %373 = fmul fast float %361, %370
  %374 = fadd fast float %371, %254
  %375 = fadd fast float %372, %255
  %376 = fadd fast float %373, %256
  %377 = fmul fast float %237, %237
  %378 = fmul fast float %377, %352
  br label %474

; <label>:379                                     ; preds = %234
  %380 = and i32 %259, 256
  %381 = icmp eq i32 %380, 0
  %382 = fsub fast float %301, %43
  br i1 %381, label %431, label %383

; <label>:383                                     ; preds = %379
  %384 = fadd fast float %243, %43
  %385 = fcmp fast olt float %301, %43
  %386 = fcmp fast ogt float %301, %384
  %387 = or i1 %385, %386
  %388 = select i1 %387, float 0.000000e+00, float %382
  %389 = call float @dx.op.unary.f32(i32 83, float %301)  ; DerivCoarseX(value)
  %390 = call float @dx.op.unary.f32(i32 84, float %301)  ; DerivCoarseY(value)
  %391 = fmul fast float %389, %389
  %392 = fmul fast float %390, %390
  %393 = fadd fast float %392, %391
  %394 = call float @dx.op.unary.f32(i32 24, float %393)  ; Sqrt(value)
  %395 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %396 = fmul fast float %395, %394
  %397 = call float @dx.op.unary.f32(i32 7, float %396)  ; Saturate(value)
  %398 = fmul fast float %397, %244
  %399 = fdiv fast float %382, %398
  %400 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %401 = fmul fast float %400, 2.000000e+00
  %402 = fsub fast float 3.000000e+00, %401
  %403 = fmul fast float %400, %400
  %404 = fmul fast float %403, %402
  %405 = fsub fast float %301, %384
  %406 = fadd fast float %405, %398
  %407 = fdiv fast float %406, %398
  %408 = call float @dx.op.unary.f32(i32 7, float %407)  ; Saturate(value)
  %409 = fmul fast float %408, 2.000000e+00
  %410 = fsub fast float 3.000000e+00, %409
  %411 = fmul fast float %408, %408
  %412 = fmul fast float %411, %410
  %413 = fsub fast float %404, %412
  %414 = fsub fast float %251, %257
  %415 = fmul fast float %413, %414
  %416 = fadd fast float %415, %257
  %417 = fmul fast float %248, %27
  %418 = fmul fast float %249, %28
  %419 = fmul fast float %250, %29
  %420 = fsub fast float %417, %254
  %421 = fsub fast float %418, %255
  %422 = fsub fast float %419, %256
  %423 = fmul fast float %413, %420
  %424 = fmul fast float %413, %421
  %425 = fmul fast float %413, %422
  %426 = fadd fast float %423, %254
  %427 = fadd fast float %424, %255
  %428 = fadd fast float %425, %256
  %429 = fmul fast float %388, %237
  %430 = call float @dx.op.unary.f32(i32 6, float %429)  ; FAbs(value)
  br label %474

; <label>:431                                     ; preds = %379
  br i1 %262, label %432, label %445

; <label>:432                                     ; preds = %431
  %433 = fdiv fast float 5.000000e+01, %26
  %434 = select i1 %264, float %433, float 1.000000e+00
  %435 = fmul fast float %434, %237
  %436 = fmul fast float %37, 2.000000e+00
  %437 = fmul fast float %38, 2.000000e+00
  %438 = fadd fast float %436, -1.000000e+00
  %439 = fadd fast float %437, -1.000000e+00
  %440 = call float @dx.op.dot2.f32(i32 54, float %438, float %439, float %438, float %439)  ; Dot2(ax,ay,bx,by)
  %441 = fmul fast float %245, %26
  %442 = fmul fast float %441, %440
  %443 = fsub fast float %382, %442
  %444 = fmul fast float %435, %443
  br label %474

; <label>:445                                     ; preds = %431
  br i1 %266, label %466, label %446

; <label>:446                                     ; preds = %445
  %447 = fmul fast float %26, 0x3F947AE140000000
  %448 = select i1 %264, float %447, float 1.000000e+00
  %449 = fdiv fast float 1.000000e+00, %448
  %450 = fmul fast float %448, %238
  %451 = fmul fast float %448, %239
  %452 = fmul fast float %449, %240
  %453 = call float @dx.op.unary.f32(i32 6, float %382)  ; FAbs(value)
  %454 = fcmp fast olt float %453, %450
  br i1 %454, label %455, label %459, !dx.controlflow.hints !62

; <label>:455                                     ; preds = %446
  %456 = fmul fast float %449, %237
  %457 = fmul fast float %456, %453
  %458 = call float @dx.op.unary.f32(i32 6, float %457)  ; FAbs(value)
  br label %474

; <label>:459                                     ; preds = %446
  %460 = fcmp fast ogt float %453, %451
  br i1 %460, label %461, label %474

; <label>:461                                     ; preds = %459
  %462 = fsub fast float %453, %451
  %463 = fmul fast float %452, %462
  %464 = call float @dx.op.unary.f32(i32 6, float %463)  ; FAbs(value)
  %465 = fsub fast float 1.000000e+00, %464
  br label %474

; <label>:466                                     ; preds = %445
  %467 = fdiv fast float 5.000000e+01, %26
  %468 = select i1 %264, float %467, float 1.000000e+00
  %469 = fmul fast float %468, %237
  %470 = call float @dx.op.unary.f32(i32 6, float %213)  ; FAbs(value)
  %471 = select i1 %261, float %470, float 0x47EFFFFFE0000000
  %472 = call float @dx.op.binary.f32(i32 36, float %382, float %471)  ; FMin(a,b)
  %473 = fmul fast float %469, %472
  br label %474

; <label>:474                                     ; preds = %466, %461, %459, %455, %432, %383, %302
  %475 = phi float [ %378, %302 ], [ %430, %383 ], [ %444, %432 ], [ %473, %466 ], [ %458, %455 ], [ %465, %461 ], [ %453, %459 ]
  %476 = phi float [ %374, %302 ], [ %426, %383 ], [ %27, %432 ], [ %27, %466 ], [ %27, %455 ], [ %27, %461 ], [ %27, %459 ]
  %477 = phi float [ %375, %302 ], [ %427, %383 ], [ %28, %432 ], [ %28, %466 ], [ %28, %455 ], [ %28, %461 ], [ %28, %459 ]
  %478 = phi float [ %376, %302 ], [ %428, %383 ], [ %29, %432 ], [ %29, %466 ], [ %29, %455 ], [ %29, %461 ], [ %29, %459 ]
  %479 = phi float [ %364, %302 ], [ %416, %383 ], [ 1.000000e+00, %432 ], [ 1.000000e+00, %466 ], [ 1.000000e+00, %455 ], [ 1.000000e+00, %461 ], [ 1.000000e+00, %459 ]
  %480 = call float @dx.op.unary.f32(i32 7, float %475)  ; Saturate(value)
  %481 = fmul fast float %479, %192
  %482 = fmul fast float %481, %480
  br label %483

; <label>:483                                     ; preds = %474, %231
  %484 = phi float [ %482, %474 ], [ %192, %231 ]
  %485 = phi float [ %476, %474 ], [ %27, %231 ]
  %486 = phi float [ %477, %474 ], [ %28, %231 ]
  %487 = phi float [ %478, %474 ], [ %29, %231 ]
  %488 = fmul fast float %485, %30
  %489 = fmul fast float %486, %30
  %490 = fmul fast float %487, %30
  %491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %492 = extractvalue %dx.types.CBufRet.f32 %491, 2
  %493 = fptosi float %43 to i32
  %494 = sitofp i32 %493 to float
  %495 = fadd fast float %492, %494
  %496 = fmul fast float %495, 0x3FE3C6EF40000000
  %497 = frem fast float %47, 2.560000e+02
  %498 = frem fast float %48, 2.560000e+02
  %499 = fptoui float %497 to i32
  %500 = fptoui float %498 to i32
  %501 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %499, i32 %500, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = fadd fast float %502, %496
  %504 = call float @dx.op.unary.f32(i32 22, float %503)  ; Frc(value)
  %505 = and i32 %125, 1
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %563, label %507, !dx.controlflow.hints !63

; <label>:507                                     ; preds = %483
  %508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 2
  %510 = extractvalue %dx.types.ResRet.f32 %508, 3
  %511 = add i32 %122, 16
  %512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.f32 %512, 0
  %514 = extractvalue %dx.types.ResRet.f32 %512, 1
  %515 = extractvalue %dx.types.ResRet.f32 %512, 2
  %516 = add i32 %122, 32
  %517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = extractvalue %dx.types.ResRet.f32 %517, 1
  %520 = extractvalue %dx.types.ResRet.f32 %517, 2
  %521 = and i32 %125, 2
  %522 = icmp eq i32 %521, 0
  %523 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %524 = call float @dx.op.unary.f32(i32 25, float %523)  ; Rsqrt(value)
  %525 = fmul fast float %524, %33
  %526 = fmul fast float %524, %34
  %527 = fmul fast float %524, %35
  %528 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %529 = call float @dx.op.unary.f32(i32 25, float %528)  ; Rsqrt(value)
  %530 = fmul fast float %529, %82
  %531 = fmul fast float %529, %83
  %532 = fmul fast float %529, %84
  %533 = call float @dx.op.dot3.f32(i32 55, float %530, float %531, float %532, float %525, float %526, float %527)  ; Dot3(ax,ay,az,bx,by,bz)
  %534 = fmul fast float %533, %533
  %535 = fmul fast float %534, %509
  %536 = fadd fast float %535, %510
  %537 = call float @dx.op.unary.f32(i32 7, float %536)  ; Saturate(value)
  br i1 %522, label %538, label %548, !dx.controlflow.hints !64

; <label>:538                                     ; preds = %507
  %539 = extractvalue %dx.types.ResRet.f32 %508, 1
  %540 = extractvalue %dx.types.ResRet.f32 %508, 0
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 3
  %543 = fmul fast float %542, %528
  %544 = fsub fast float %540, %543
  %545 = fmul fast float %544, %539
  %546 = call float @dx.op.unary.f32(i32 7, float %545)  ; Saturate(value)
  %547 = fmul fast float %546, %537
  br label %548

; <label>:548                                     ; preds = %538, %507
  %549 = phi float [ %547, %538 ], [ %537, %507 ]
  %550 = fsub fast float %513, %518
  %551 = fsub fast float %514, %519
  %552 = fsub fast float %515, %520
  %553 = fmul fast float %549, %550
  %554 = fmul fast float %549, %551
  %555 = fmul fast float %549, %552
  %556 = fadd fast float %553, %518
  %557 = fadd fast float %554, %519
  %558 = fadd fast float %555, %520
  %559 = fmul fast float %556, %488
  %560 = fmul fast float %557, %489
  %561 = fmul fast float %558, %490
  %562 = fmul fast float %549, %484
  br label %563

; <label>:563                                     ; preds = %548, %483
  %564 = phi float [ %562, %548 ], [ %484, %483 ]
  %565 = phi float [ %559, %548 ], [ %488, %483 ]
  %566 = phi float [ %560, %548 ], [ %489, %483 ]
  %567 = phi float [ %561, %548 ], [ %490, %483 ]
  %568 = add i32 %22, 72
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = add i32 %570, 0
  %572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %571, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %573 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %572, %dx.types.Handle %44, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = extractvalue %dx.types.ResRet.f32 %573, 1
  %576 = extractvalue %dx.types.ResRet.f32 %573, 2
  %577 = add i32 %22, 44
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = shl i32 %579, 4
  %581 = and i32 %580, 32752
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = lshr i32 %579, 7
  %584 = and i32 %583, 32752
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = lshr i32 %579, 22
  %587 = shl nuw nsw i32 %586, 5
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = fmul fast float %582, %574
  %590 = fmul fast float %585, %575
  %591 = fmul fast float %588, %576
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 0
  %594 = fmul fast float %589, %593
  %595 = fmul fast float %590, %593
  %596 = fmul fast float %591, %593
  %597 = add i32 %22, 48
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = lshr i32 %599, 22
  %601 = shl nuw nsw i32 %600, 5
  %602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %601)  ; LegacyF16ToF32(value)
  %603 = fmul fast float %602, %594
  %604 = select i1 %105, float %603, float %594
  %605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = extractvalue %dx.types.ResRet.f32 %605, 1
  %608 = extractvalue %dx.types.ResRet.f32 %605, 2
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 1
  %611 = fmul fast float %604, %565
  %612 = fmul fast float %595, %566
  %613 = fmul fast float %596, %567
  %614 = call float @dx.op.dot3.f32(i32 55, float %611, float %612, float %613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %615 = select i1 %105, float 0.000000e+00, float %611
  %616 = select i1 %105, float %614, float %612
  %617 = select i1 %105, float 0.000000e+00, float %613
  %618 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %195, i32 %196, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = lshr i32 %619, 18
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F4C00EBA0000000
  %623 = call float @dx.op.unary.f32(i32 21, float %622)  ; Exp(value)
  %624 = fadd fast float %623, -1.000000e+00
  %625 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %626 = extractvalue %dx.types.Dimensions %625, 0
  %627 = sitofp i32 %626 to float
  %628 = extractvalue %dx.types.Dimensions %625, 1
  %629 = sitofp i32 %628 to float
  %630 = fcmp fast oge float %193, %627
  %631 = fcmp fast oge float %194, %629
  %632 = or i1 %630, %631
  %633 = select i1 %632, float 0x4197782600000000, float %624
  %634 = icmp eq i32 %121, 3
  %635 = fcmp fast ogt float %43, %633
  %636 = and i1 %219, %635
  %637 = or i1 %634, %636
  %638 = icmp eq i32 %121, 2
  %639 = fcmp fast ole float %43, %633
  %640 = and i1 %638, %639
  %641 = or i1 %640, %637
  %642 = fmul fast float %485, %36
  %643 = fmul fast float %642, %604
  %644 = fmul fast float %643, %606
  %645 = fmul fast float %644, %610
  %646 = fmul fast float %486, %36
  %647 = fmul fast float %646, %595
  %648 = fmul fast float %647, %607
  %649 = fmul fast float %648, %610
  %650 = fmul fast float %487, %36
  %651 = fmul fast float %650, %596
  %652 = fmul fast float %651, %608
  %653 = fmul fast float %652, %610
  %654 = fadd fast float %645, %615
  %655 = fadd fast float %616, %649
  %656 = fadd fast float %653, %617
  %657 = fmul fast float %654, %564
  %658 = fmul fast float %655, %564
  %659 = fmul fast float %656, %564
  %660 = and i32 %125, 1048576
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %753, label %662, !dx.controlflow.hints !65

; <label>:662                                     ; preds = %563
  %663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %664 = extractvalue %dx.types.CBufRet.f32 %663, 2
  %665 = extractvalue %dx.types.CBufRet.f32 %663, 3
  %666 = fmul fast float %664, %47
  %667 = fmul fast float %665, %48
  %668 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  %669 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  %670 = select i1 %641, i32 2, i32 0
  %671 = or i32 %670, 1
  %672 = uitofp i32 %671 to float
  %673 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %668, float %669, float %672, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %674 = extractvalue %dx.types.ResRet.f32 %673, 0
  %675 = extractvalue %dx.types.ResRet.f32 %673, 1
  %676 = extractvalue %dx.types.ResRet.f32 %673, 2
  %677 = extractvalue %dx.types.ResRet.f32 %673, 3
  %678 = add nuw nsw i32 %670, 2
  %679 = uitofp i32 %678 to float
  %680 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %668, float %669, float %679, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %681 = extractvalue %dx.types.ResRet.f32 %680, 0
  %682 = extractvalue %dx.types.ResRet.f32 %680, 1
  %683 = extractvalue %dx.types.ResRet.f32 %680, 2
  %684 = extractvalue %dx.types.ResRet.f32 %680, 3
  %685 = call float @dx.op.binary.f32(i32 35, float %675, float %676)  ; FMax(a,b)
  %686 = call float @dx.op.binary.f32(i32 35, float %674, float %685)  ; FMax(a,b)
  %687 = call float @dx.op.binary.f32(i32 35, float %686, float %677)  ; FMax(a,b)
  %688 = call float @dx.op.binary.f32(i32 36, float %682, float %683)  ; FMin(a,b)
  %689 = call float @dx.op.binary.f32(i32 36, float %681, float %688)  ; FMin(a,b)
  %690 = call float @dx.op.binary.f32(i32 36, float %689, float %684)  ; FMin(a,b)
  %691 = fmul fast float %687, 2.550000e+02
  %692 = fadd fast float %691, 0x3F70101020000000
  %693 = fptoui float %692 to i32
  %694 = fmul fast float %690, 2.550000e+02
  %695 = fadd fast float %694, 0x3F70101020000000
  %696 = fptoui float %695 to i32
  %697 = icmp ult i32 %693, %696
  br i1 %697, label %698, label %746

; <label>:698                                     ; preds = %662
  %699 = fcmp fast ogt float %42, 9.843750e-01
  %700 = fadd fast float %43, -4.000000e+00
  %701 = select i1 %699, float -4.000000e+00, float %700
  %702 = call float @dx.op.binary.f32(i32 35, float %701, float 0.000000e+00)  ; FMax(a,b)
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 0
  %705 = fadd fast float %704, %702
  %706 = extractvalue %dx.types.CBufRet.f32 %703, 2
  %707 = fmul fast float %705, %706
  %708 = call float @dx.op.unary.f32(i32 23, float %707)  ; Log(value)
  %709 = extractvalue %dx.types.CBufRet.f32 %703, 3
  %710 = fmul fast float %709, %708
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 2
  %713 = fmul fast float %710, %712
  %714 = call float @dx.op.unary.f32(i32 7, float %713)  ; Saturate(value)
  %715 = uitofp i32 %693 to float
  %716 = uitofp i32 %696 to float
  %717 = fadd fast float %715, 5.000000e-01
  %718 = fadd fast float %716, 5.000000e-01
  %719 = fmul fast float %712, %717
  %720 = fmul fast float %712, %718
  %721 = fadd fast float %719, 0x3F0FFB4800000000
  %722 = fadd fast float %720, 0xBF0FFB4800000000
  %723 = call float @dx.op.binary.f32(i32 35, float %714, float %721)  ; FMax(a,b)
  %724 = call float @dx.op.binary.f32(i32 36, float %723, float %722)  ; FMin(a,b)
  %725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %726 = extractvalue %dx.types.CBufRet.f32 %725, 1
  %727 = extractvalue %dx.types.CBufRet.f32 %725, 2
  %728 = extractvalue %dx.types.CBufRet.f32 %725, 0
  %729 = select i1 %641, float %728, float 0.000000e+00
  %730 = fmul fast float %726, %724
  %731 = fadd fast float %729, %730
  %732 = fadd fast float %729, %727
  %733 = fsub fast float %726, %727
  %734 = fadd fast float %733, %729
  %735 = call float @dx.op.binary.f32(i32 35, float %731, float %732)  ; FMax(a,b)
  %736 = call float @dx.op.binary.f32(i32 36, float %735, float %734)  ; FMin(a,b)
  %737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %668, float %669, float %736, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  %739 = extractvalue %dx.types.ResRet.f32 %737, 1
  %740 = extractvalue %dx.types.ResRet.f32 %737, 2
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 1
  %743 = fmul fast float %742, %738
  %744 = fmul fast float %742, %739
  %745 = fmul fast float %742, %740
  br label %746

; <label>:746                                     ; preds = %698, %662
  %747 = phi float [ %743, %698 ], [ 1.000000e+00, %662 ]
  %748 = phi float [ %744, %698 ], [ 1.000000e+00, %662 ]
  %749 = phi float [ %745, %698 ], [ 1.000000e+00, %662 ]
  %750 = fmul fast float %747, %657
  %751 = fmul fast float %748, %658
  %752 = fmul fast float %749, %659
  br label %753

; <label>:753                                     ; preds = %746, %563
  %754 = phi float [ %750, %746 ], [ %657, %563 ]
  %755 = phi float [ %751, %746 ], [ %658, %563 ]
  %756 = phi float [ %752, %746 ], [ %659, %563 ]
  %757 = and i32 %125, 2097152
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %763, label %759, !dx.controlflow.hints !66

; <label>:759                                     ; preds = %753
  %760 = add i32 %122, 192
  %761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.f32 %761, 0
  br label %766

; <label>:763                                     ; preds = %753
  %764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %765 = extractvalue %dx.types.CBufRet.f32 %764, 3
  br label %766

; <label>:766                                     ; preds = %763, %759
  %767 = phi float [ %762, %759 ], [ %765, %763 ]
  br i1 %636, label %768, label %852

; <label>:768                                     ; preds = %766
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %771 = extractvalue %dx.types.CBufRet.f32 %769, 3
  %772 = fmul fast float %770, %47
  %773 = fmul fast float %771, %48
  %774 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %775 = call float @dx.op.unary.f32(i32 7, float %773)  ; Saturate(value)
  %776 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %774, float %775, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = extractvalue %dx.types.ResRet.f32 %776, 1
  %779 = extractvalue %dx.types.ResRet.f32 %776, 2
  %780 = extractvalue %dx.types.ResRet.f32 %776, 3
  %781 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %774, float %775, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = extractvalue %dx.types.ResRet.f32 %781, 1
  %784 = extractvalue %dx.types.ResRet.f32 %781, 2
  %785 = extractvalue %dx.types.ResRet.f32 %781, 3
  %786 = call float @dx.op.binary.f32(i32 35, float %778, float %779)  ; FMax(a,b)
  %787 = call float @dx.op.binary.f32(i32 35, float %777, float %786)  ; FMax(a,b)
  %788 = call float @dx.op.binary.f32(i32 35, float %787, float %780)  ; FMax(a,b)
  %789 = call float @dx.op.binary.f32(i32 36, float %783, float %784)  ; FMin(a,b)
  %790 = call float @dx.op.binary.f32(i32 36, float %782, float %789)  ; FMin(a,b)
  %791 = call float @dx.op.binary.f32(i32 36, float %790, float %785)  ; FMin(a,b)
  %792 = fmul fast float %788, 2.550000e+02
  %793 = fadd fast float %792, 0x3F70101020000000
  %794 = fptoui float %793 to i32
  %795 = fmul fast float %791, 2.550000e+02
  %796 = fadd fast float %795, 0x3F70101020000000
  %797 = fptoui float %796 to i32
  %798 = icmp ult i32 %794, %797
  br i1 %798, label %799, label %841

; <label>:799                                     ; preds = %768
  %800 = fcmp fast ogt float %42, 9.843750e-01
  %801 = fadd fast float %43, -4.000000e+00
  %802 = select i1 %800, float -4.000000e+00, float %801
  %803 = call float @dx.op.binary.f32(i32 35, float %802, float 0.000000e+00)  ; FMax(a,b)
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = fadd fast float %805, %803
  %807 = extractvalue %dx.types.CBufRet.f32 %804, 2
  %808 = fmul fast float %806, %807
  %809 = call float @dx.op.unary.f32(i32 23, float %808)  ; Log(value)
  %810 = extractvalue %dx.types.CBufRet.f32 %804, 3
  %811 = fmul fast float %810, %809
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 2
  %814 = fmul fast float %811, %813
  %815 = call float @dx.op.unary.f32(i32 7, float %814)  ; Saturate(value)
  %816 = uitofp i32 %794 to float
  %817 = uitofp i32 %797 to float
  %818 = fadd fast float %816, 5.000000e-01
  %819 = fadd fast float %817, 5.000000e-01
  %820 = fmul fast float %813, %818
  %821 = fmul fast float %813, %819
  %822 = fadd fast float %820, 0x3F0FFB4800000000
  %823 = fadd fast float %821, 0xBF0FFB4800000000
  %824 = call float @dx.op.binary.f32(i32 35, float %815, float %822)  ; FMax(a,b)
  %825 = call float @dx.op.binary.f32(i32 36, float %824, float %823)  ; FMin(a,b)
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 1
  %828 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %829 = extractvalue %dx.types.CBufRet.f32 %826, 0
  %830 = fmul fast float %827, %825
  %831 = fadd fast float %829, %830
  %832 = fadd fast float %829, %828
  %833 = fsub fast float %827, %828
  %834 = fadd fast float %833, %829
  %835 = call float @dx.op.binary.f32(i32 35, float %831, float %832)  ; FMax(a,b)
  %836 = call float @dx.op.binary.f32(i32 36, float %835, float %834)  ; FMin(a,b)
  %837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %774, float %775, float %836, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  %839 = extractvalue %dx.types.ResRet.f32 %837, 1
  %840 = extractvalue %dx.types.ResRet.f32 %837, 2
  br label %841

; <label>:841                                     ; preds = %799, %768
  %842 = phi float [ %838, %799 ], [ 1.000000e+00, %768 ]
  %843 = phi float [ %839, %799 ], [ 1.000000e+00, %768 ]
  %844 = phi float [ %840, %799 ], [ 1.000000e+00, %768 ]
  %845 = call float @dx.op.dot3.f32(i32 55, float %842, float %843, float %844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %846 = select i1 %105, float %845, float %842
  %847 = select i1 %105, float %845, float %843
  %848 = select i1 %105, float 1.000000e+00, float %844
  %849 = fmul fast float %846, %754
  %850 = fmul fast float %847, %755
  %851 = fmul fast float %848, %756
  br label %852

; <label>:852                                     ; preds = %841, %766
  %853 = phi float [ %633, %841 ], [ %43, %766 ]
  %854 = phi float [ %849, %841 ], [ %754, %766 ]
  %855 = phi float [ %850, %841 ], [ %755, %766 ]
  %856 = phi float [ %851, %841 ], [ %756, %766 ]
  br i1 %641, label %1097, label %857

; <label>:857                                     ; preds = %852
  %858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %859 = extractvalue %dx.types.ResRet.f32 %858, 0
  %860 = extractvalue %dx.types.ResRet.f32 %858, 1
  %861 = extractvalue %dx.types.ResRet.f32 %858, 2
  %862 = call float @dx.op.dot3.f32(i32 55, float %859, float %860, float %861, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %863 = select i1 %105, float %862, float %859
  %864 = select i1 %105, float %862, float %860
  %865 = select i1 %105, float 1.000000e+00, float %861
  %866 = fmul fast float %863, %854
  %867 = fmul fast float %864, %855
  %868 = fmul fast float %865, %856
  %869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.i32 %869, 0
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %1097, label %872, !dx.controlflow.hints !67

; <label>:872                                     ; preds = %857
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 2
  %875 = extractvalue %dx.types.CBufRet.f32 %873, 3
  %876 = fmul fast float %874, %47
  %877 = fmul fast float %875, %48
  %878 = fmul fast float %876, 2.000000e+00
  %879 = fmul fast float %877, 2.000000e+00
  %880 = fsub fast float 1.000000e+00, %878
  %881 = fsub fast float 1.000000e+00, %879
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 0
  %884 = extractvalue %dx.types.CBufRet.f32 %882, 1
  %885 = extractvalue %dx.types.CBufRet.f32 %882, 2
  %886 = fmul fast float %880, %883
  %887 = fmul fast float %880, %884
  %888 = fmul fast float %880, %885
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %891 = extractvalue %dx.types.CBufRet.f32 %889, 1
  %892 = extractvalue %dx.types.CBufRet.f32 %889, 2
  %893 = fmul fast float %881, %890
  %894 = fmul fast float %881, %891
  %895 = fmul fast float %881, %892
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 0
  %898 = extractvalue %dx.types.CBufRet.f32 %896, 1
  %899 = extractvalue %dx.types.CBufRet.f32 %896, 2
  %900 = fadd fast float %893, %897
  %901 = fadd fast float %900, %886
  %902 = fadd fast float %894, %898
  %903 = fadd fast float %902, %887
  %904 = fadd fast float %895, %899
  %905 = fadd fast float %904, %888
  %906 = fmul fast float %901, %853
  %907 = fmul fast float %903, %853
  %908 = fmul fast float %905, %853
  %909 = fmul fast float %906, %906
  %910 = fmul fast float %907, %907
  %911 = fadd fast float %909, %910
  %912 = fmul fast float %908, %908
  %913 = fadd fast float %911, %912
  %914 = call float @dx.op.unary.f32(i32 24, float %913)  ; Sqrt(value)
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 0
  %917 = fsub fast float %914, %916
  %918 = extractvalue %dx.types.CBufRet.f32 %915, 2
  %919 = fmul fast float %917, %918
  %920 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  %921 = fadd fast float %920, -5.000000e-01
  %922 = fmul fast float %921, 2.000000e+00
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %925 = call float @dx.op.binary.f32(i32 36, float %924, float %922)  ; FMin(a,b)
  %926 = fsub fast float -0.000000e+00, %924
  %927 = fcmp fast ogt float %925, %926
  br i1 %927, label %928, label %1097, !dx.controlflow.hints !68

; <label>:928                                     ; preds = %872
  %929 = fmul fast float %925, 5.000000e-01
  %930 = fadd fast float %929, 5.000000e-01
  %931 = call float @dx.op.unary.f32(i32 22, float %930)  ; Frc(value)
  %932 = call float @dx.op.unary.f32(i32 27, float %931)  ; Round_ni(value)
  %933 = call float @dx.op.unary.f32(i32 22, float %931)  ; Frc(value)
  %934 = fmul fast float %933, 2.000000e+00
  %935 = fadd fast float %934, -1.000000e+00
  %936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %876, float %877, float %932, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = extractvalue %dx.types.ResRet.f32 %936, 1
  %939 = extractvalue %dx.types.ResRet.f32 %936, 2
  %940 = extractvalue %dx.types.ResRet.f32 %936, 3
  %941 = fadd fast float %937, -5.000000e-01
  %942 = fadd fast float %939, -5.000000e-01
  %943 = fmul fast float %941, 0xBFD5555560000000
  %944 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %942, float %943)  ; FMad(a,b,c)
  %945 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %938, float 0.000000e+00)  ; FMad(a,b,c)
  %946 = fadd fast float %945, %940
  %947 = fmul fast float %941, -7.500000e-01
  %948 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %942, float %947)  ; FMad(a,b,c)
  %949 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %938, float 0.000000e+00)  ; FMad(a,b,c)
  %950 = fadd fast float %949, %940
  %951 = call float @dx.op.binary.f32(i32 35, float %944, float -1.000000e+00)  ; FMax(a,b)
  %952 = call float @dx.op.binary.f32(i32 35, float %946, float -1.000000e+00)  ; FMax(a,b)
  %953 = call float @dx.op.binary.f32(i32 35, float %948, float -1.000000e+00)  ; FMax(a,b)
  %954 = call float @dx.op.binary.f32(i32 35, float %950, float -1.000000e+00)  ; FMax(a,b)
  %955 = call float @dx.op.binary.f32(i32 36, float %951, float 1.000000e+00)  ; FMin(a,b)
  %956 = call float @dx.op.binary.f32(i32 36, float %952, float 1.000000e+00)  ; FMin(a,b)
  %957 = call float @dx.op.binary.f32(i32 36, float %953, float 1.000000e+00)  ; FMin(a,b)
  %958 = call float @dx.op.binary.f32(i32 36, float %954, float 1.000000e+00)  ; FMin(a,b)
  %959 = fcmp fast olt float %955, 0x3FEFFF8020000000
  br i1 %959, label %960, label %1075, !dx.controlflow.hints !69

; <label>:960                                     ; preds = %928
  %961 = extractvalue %dx.types.CBufRet.f32 %923, 3
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 0
  %964 = extractvalue %dx.types.CBufRet.f32 %962, 1
  %965 = extractvalue %dx.types.CBufRet.f32 %962, 2
  %966 = extractvalue %dx.types.CBufRet.f32 %962, 3
  %967 = fsub fast float %963, %955
  %968 = fsub fast float %964, %956
  %969 = fsub fast float %965, %957
  %970 = fsub fast float %966, %958
  %971 = fmul fast float %967, %961
  %972 = fmul fast float %968, %961
  %973 = fmul fast float %969, %961
  %974 = fmul fast float %970, %961
  %975 = fadd fast float %971, %955
  %976 = fadd fast float %972, %956
  %977 = fsub fast float -0.000000e+00, %976
  %978 = fadd fast float %973, %957
  %979 = fadd fast float %974, %958
  %980 = fmul fast float %975, %975
  %981 = fsub fast float %976, %980
  %982 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %981)  ; FMax(a,b)
  %983 = fdiv fast float 1.000000e+00, %982
  %984 = fmul fast float %976, %975
  %985 = fsub fast float %978, %984
  %986 = fsub fast float %935, %975
  %987 = fmul fast float %935, %935
  %988 = fsub fast float %987, %976
  %989 = fmul fast float %986, %983
  %990 = fmul fast float %989, %985
  %991 = fsub fast float %988, %990
  %992 = fmul fast float %976, %976
  %993 = fsub fast float %979, %992
  %994 = fmul fast float %985, %985
  %995 = fmul fast float %994, %983
  %996 = fsub fast float %993, %995
  %997 = fdiv fast float %991, %996
  %998 = fmul fast float %985, %997
  %999 = fsub fast float %986, %998
  %1000 = fmul fast float %999, %983
  %1001 = fmul fast float %1000, %975
  %1002 = fsub fast float 1.000000e+00, %1001
  %1003 = fmul fast float %976, %997
  %1004 = fsub fast float %1002, %1003
  %1005 = fmul fast float %1000, %1000
  %1006 = fmul fast float %997, 4.000000e+00
  %1007 = fmul fast float %1006, %1004
  %1008 = fsub fast float %1005, %1007
  %1009 = call float @dx.op.unary.f32(i32 24, float %1008)  ; Sqrt(value)
  %1010 = fcmp fast oge float %1000, 0.000000e+00
  %1011 = fsub fast float -0.000000e+00, %1009
  %1012 = select i1 %1010, float %1011, float %1009
  %1013 = fsub fast float %1012, %1000
  %1014 = fdiv fast float %1013, %997
  %1015 = fdiv fast float %1004, %1013
  %1016 = fmul fast float %1014, 5.000000e-01
  %1017 = fmul fast float %1015, 2.000000e+00
  %1018 = select i1 %1010, float %1016, float %1017
  %1019 = select i1 %1010, float %1017, float %1016
  %1020 = call float @dx.op.binary.f32(i32 35, float %1018, float %1019)  ; FMax(a,b)
  %1021 = call float @dx.op.binary.f32(i32 36, float %1018, float %1019)  ; FMin(a,b)
  %1022 = fcmp fast ogt float %935, %1021
  br i1 %1022, label %1023, label %1033

; <label>:1023                                    ; preds = %960
  %1024 = fsub fast float %935, %1021
  %1025 = fsub fast float %1020, %1021
  %1026 = fmul fast float %1024, %1025
  %1027 = fmul fast float %1020, %935
  %1028 = fadd fast float %1020, %935
  %1029 = fmul fast float %1028, %975
  %1030 = fadd fast float %1027, %976
  %1031 = fsub fast float %1030, %1029
  %1032 = fdiv fast float %1031, %1026
  br label %1033

; <label>:1033                                    ; preds = %1023, %960
  %1034 = phi float [ %1032, %1023 ], [ 0.000000e+00, %960 ]
  %1035 = fcmp fast ogt float %935, %1020
  %1036 = fsub fast float %935, %1020
  br i1 %1035, label %1037, label %1047

; <label>:1037                                    ; preds = %1033
  %1038 = fsub fast float %1020, %1021
  %1039 = fmul fast float %1038, %1036
  %1040 = fmul fast float %1021, %935
  %1041 = fadd fast float %1021, %935
  %1042 = fmul fast float %1041, %975
  %1043 = fsub fast float %977, %1040
  %1044 = fadd fast float %1043, %1042
  %1045 = fdiv fast float %1044, %1039
  %1046 = fadd fast float %1045, %1034
  br label %1047

; <label>:1047                                    ; preds = %1037, %1033
  %1048 = phi float [ %1046, %1037 ], [ %1034, %1033 ]
  %1049 = fsub fast float %935, %1021
  %1050 = fmul fast float %1049, %1036
  %1051 = fmul fast float %1021, %1020
  %1052 = fadd fast float %1021, %1020
  %1053 = fmul fast float %1052, %975
  %1054 = fadd fast float %1051, %976
  %1055 = fsub fast float %1054, %1053
  %1056 = fdiv fast float %1055, %1050
  %1057 = call float @dx.op.unary.f32(i32 7, float %1048)  ; Saturate(value)
  %1058 = fcmp fast oeq float %767, 0.000000e+00
  %1059 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %1060 = fcmp fast oeq float %1059, 0.000000e+00
  %1061 = or i1 %1058, %1060
  %1062 = fmul fast float %1059, 2.000000e+00
  %1063 = fadd fast float %924, %925
  %1064 = fdiv fast float %1063, %1062
  %1065 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  %1066 = fmul fast float %1065, 2.000000e+00
  %1067 = fsub fast float 3.000000e+00, %1066
  %1068 = fmul fast float %1065, %1065
  %1069 = fmul fast float %1068, %1067
  %1070 = select i1 %1061, float 1.000000e+00, float %1069
  %1071 = fmul fast float %1056, %767
  %1072 = fadd fast float %1057, %1071
  %1073 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1074 = fmul fast float %1070, %1073
  br label %1075

; <label>:1075                                    ; preds = %1047, %928
  %1076 = phi float [ %1074, %1047 ], [ 0.000000e+00, %928 ]
  %1077 = fsub fast float 1.000000e+00, %1076
  %1078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %876, float %877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1081 = extractvalue %dx.types.CBufRet.i32 %1080, 2
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1088, label %1083

; <label>:1083                                    ; preds = %1075
  %1084 = call float @dx.op.unary.f32(i32 7, float %1076)  ; Saturate(value)
  %1085 = fadd fast float %1079, -1.000000e+00
  %1086 = fmul fast float %1084, %1085
  %1087 = fadd fast float %1086, 1.000000e+00
  br label %1088

; <label>:1088                                    ; preds = %1083, %1075
  %1089 = phi float [ %1087, %1083 ], [ %1077, %1075 ]
  %1090 = call float @dx.op.binary.f32(i32 35, float %1079, float %1089)  ; FMax(a,b)
  %1091 = call float @dx.op.dot3.f32(i32 55, float %1090, float %1090, float %1090, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1092 = select i1 %105, float %1091, float %1090
  %1093 = select i1 %105, float 1.000000e+00, float %1090
  %1094 = fmul fast float %1092, %866
  %1095 = fmul fast float %1092, %867
  %1096 = fmul fast float %1093, %868
  br label %1097

; <label>:1097                                    ; preds = %1088, %872, %857, %852
  %1098 = phi float [ %854, %852 ], [ %866, %857 ], [ %1094, %1088 ], [ %866, %872 ]
  %1099 = phi float [ %855, %852 ], [ %867, %857 ], [ %1095, %1088 ], [ %867, %872 ]
  %1100 = phi float [ %856, %852 ], [ %868, %857 ], [ %1096, %1088 ], [ %868, %872 ]
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 2
  %1103 = extractvalue %dx.types.CBufRet.f32 %1101, 3
  %1104 = fmul fast float %1102, %47
  %1105 = fmul fast float %1103, %48
  %1106 = call float @dx.op.unary.f32(i32 7, float %1104)  ; Saturate(value)
  %1107 = call float @dx.op.unary.f32(i32 7, float %1105)  ; Saturate(value)
  %1108 = select i1 %641, i32 2, i32 0
  %1109 = or i32 %1108, 1
  %1110 = uitofp i32 %1109 to float
  %1111 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1106, float %1107, float %1110, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.ResRet.f32 %1111, 1
  %1114 = extractvalue %dx.types.ResRet.f32 %1111, 2
  %1115 = extractvalue %dx.types.ResRet.f32 %1111, 3
  %1116 = add nuw nsw i32 %1108, 2
  %1117 = uitofp i32 %1116 to float
  %1118 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1106, float %1107, float %1117, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.ResRet.f32 %1118, 1
  %1121 = extractvalue %dx.types.ResRet.f32 %1118, 2
  %1122 = extractvalue %dx.types.ResRet.f32 %1118, 3
  %1123 = call float @dx.op.binary.f32(i32 35, float %1113, float %1114)  ; FMax(a,b)
  %1124 = call float @dx.op.binary.f32(i32 35, float %1112, float %1123)  ; FMax(a,b)
  %1125 = call float @dx.op.binary.f32(i32 35, float %1124, float %1115)  ; FMax(a,b)
  %1126 = call float @dx.op.binary.f32(i32 36, float %1120, float %1121)  ; FMin(a,b)
  %1127 = call float @dx.op.binary.f32(i32 36, float %1119, float %1126)  ; FMin(a,b)
  %1128 = call float @dx.op.binary.f32(i32 36, float %1127, float %1122)  ; FMin(a,b)
  %1129 = fmul fast float %1125, 2.550000e+02
  %1130 = fadd fast float %1129, 0x3F70101020000000
  %1131 = fptoui float %1130 to i32
  %1132 = fmul fast float %1128, 2.550000e+02
  %1133 = fadd fast float %1132, 0x3F70101020000000
  %1134 = fptoui float %1133 to i32
  %1135 = icmp ult i32 %1131, %1134
  br i1 %1135, label %1136, label %1179

; <label>:1136                                    ; preds = %1097
  %1137 = fcmp fast ogt float %42, 9.843750e-01
  %1138 = fadd fast float %853, -4.000000e+00
  %1139 = select i1 %1137, float -4.000000e+00, float %1138
  %1140 = call float @dx.op.binary.f32(i32 35, float %1139, float 0.000000e+00)  ; FMax(a,b)
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 0
  %1143 = fadd fast float %1142, %1140
  %1144 = extractvalue %dx.types.CBufRet.f32 %1141, 2
  %1145 = fmul fast float %1143, %1144
  %1146 = call float @dx.op.unary.f32(i32 23, float %1145)  ; Log(value)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1141, 3
  %1148 = fmul fast float %1147, %1146
  %1149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1150 = extractvalue %dx.types.CBufRet.f32 %1149, 2
  %1151 = fmul fast float %1148, %1150
  %1152 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  %1153 = uitofp i32 %1131 to float
  %1154 = uitofp i32 %1134 to float
  %1155 = fadd fast float %1153, 5.000000e-01
  %1156 = fadd fast float %1154, 5.000000e-01
  %1157 = fmul fast float %1150, %1155
  %1158 = fmul fast float %1150, %1156
  %1159 = fadd fast float %1157, 0x3F0FFB4800000000
  %1160 = fadd fast float %1158, 0xBF0FFB4800000000
  %1161 = call float @dx.op.binary.f32(i32 35, float %1152, float %1159)  ; FMax(a,b)
  %1162 = call float @dx.op.binary.f32(i32 36, float %1161, float %1160)  ; FMin(a,b)
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 1
  %1165 = extractvalue %dx.types.CBufRet.f32 %1163, 2
  %1166 = extractvalue %dx.types.CBufRet.f32 %1163, 0
  %1167 = select i1 %641, float %1166, float 0.000000e+00
  %1168 = fmul fast float %1164, %1162
  %1169 = fadd fast float %1167, %1168
  %1170 = fadd fast float %1167, %1165
  %1171 = fsub fast float %1164, %1165
  %1172 = fadd fast float %1171, %1167
  %1173 = call float @dx.op.binary.f32(i32 35, float %1169, float %1170)  ; FMax(a,b)
  %1174 = call float @dx.op.binary.f32(i32 36, float %1173, float %1172)  ; FMin(a,b)
  %1175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1106, float %1107, float %1174, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = extractvalue %dx.types.ResRet.f32 %1175, 1
  %1178 = extractvalue %dx.types.ResRet.f32 %1175, 2
  br label %1179

; <label>:1179                                    ; preds = %1136, %1097
  %1180 = phi float [ %1176, %1136 ], [ 1.000000e+00, %1097 ]
  %1181 = phi float [ %1177, %1136 ], [ 1.000000e+00, %1097 ]
  %1182 = phi float [ %1178, %1136 ], [ 1.000000e+00, %1097 ]
  %1183 = call float @dx.op.dot3.f32(i32 55, float %1180, float %1181, float %1182, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1184 = select i1 %105, float %1183, float %1180
  %1185 = select i1 %105, float %1183, float %1181
  %1186 = fmul fast float %1184, %1098
  %1187 = fmul fast float %1185, %1099
  %1188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1188, 0
  br i1 %105, label %1190, label %1193

; <label>:1190                                    ; preds = %1179
  %1191 = fadd fast float %1186, %1187
  %1192 = fmul fast float %1189, %1191
  br label %1203

; <label>:1193                                    ; preds = %1179
  %1194 = fmul fast float %1182, %1100
  %1195 = fmul fast float %1189, %1186
  %1196 = fmul fast float %1189, %1187
  %1197 = fmul fast float %1194, %1189
  %1198 = call float @dx.op.binary.f32(i32 35, float %1196, float %1197)  ; FMax(a,b)
  %1199 = call float @dx.op.binary.f32(i32 35, float %1195, float %1198)  ; FMax(a,b)
  %1200 = call float @dx.op.binary.f32(i32 35, float %1199, float 0.000000e+00)  ; FMax(a,b)
  %1201 = fcmp fast ugt float %1200, 0x3F10000000000000
  br i1 %1201, label %1203, label %1202

; <label>:1202                                    ; preds = %1193
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1203

; <label>:1203                                    ; preds = %1202, %1193, %1190
  %1204 = phi float [ %1192, %1190 ], [ %1195, %1202 ], [ %1195, %1193 ]
  %1205 = phi float [ 0.000000e+00, %1190 ], [ %1196, %1202 ], [ %1196, %1193 ]
  %1206 = phi float [ 0.000000e+00, %1190 ], [ %1197, %1202 ], [ %1197, %1193 ]
  %1207 = fadd fast float %504, 0x3FE3C6EF40000000
  %1208 = call float @dx.op.unary.f32(i32 22, float %1207)  ; Frc(value)
  %1209 = call float @dx.op.unary.f32(i32 23, float %1204)  ; Log(value)
  %1210 = fadd fast float %1209, -7.000000e+00
  %1211 = call float @dx.op.unary.f32(i32 21, float %1210)  ; Exp(value)
  %1212 = fmul fast float %1208, 2.000000e+00
  %1213 = fadd fast float %1212, -1.000000e+00
  %1214 = fmul fast float %1211, %1213
  %1215 = fcmp fast ogt float %1204, 0.000000e+00
  %1216 = select i1 %1215, float %1214, float 0.000000e+00
  %1217 = fadd fast float %1216, %1204
  %1218 = fadd fast float %504, 0x3FF3C6EF40000000
  %1219 = call float @dx.op.unary.f32(i32 22, float %1218)  ; Frc(value)
  %1220 = call float @dx.op.unary.f32(i32 23, float %1205)  ; Log(value)
  %1221 = fadd fast float %1220, -7.000000e+00
  %1222 = call float @dx.op.unary.f32(i32 21, float %1221)  ; Exp(value)
  %1223 = fmul fast float %1219, 2.000000e+00
  %1224 = fadd fast float %1223, -1.000000e+00
  %1225 = fmul fast float %1222, %1224
  %1226 = fcmp fast ogt float %1205, 0.000000e+00
  %1227 = select i1 %1226, float %1225, float 0.000000e+00
  %1228 = fadd fast float %1227, %1205
  %1229 = fadd fast float %504, 0x3FFDAA66E0000000
  %1230 = call float @dx.op.unary.f32(i32 22, float %1229)  ; Frc(value)
  %1231 = call float @dx.op.unary.f32(i32 23, float %1206)  ; Log(value)
  %1232 = fadd fast float %1231, -6.000000e+00
  %1233 = call float @dx.op.unary.f32(i32 21, float %1232)  ; Exp(value)
  %1234 = fmul fast float %1230, 2.000000e+00
  %1235 = fadd fast float %1234, -1.000000e+00
  %1236 = fmul fast float %1233, %1235
  %1237 = fcmp fast ogt float %1206, 0.000000e+00
  %1238 = select i1 %1237, float %1236, float 0.000000e+00
  %1239 = fadd fast float %1238, %1206
  %1240 = select i1 %105, float %1205, float %1228
  %1241 = select i1 %105, float %1206, float %1239
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1242 = call float @dx.op.binary.f32(i32 36, float %1217, float 3.225500e+04)  ; FMin(a,b)
  %1243 = call float @dx.op.binary.f32(i32 36, float %1240, float 3.225500e+04)  ; FMin(a,b)
  %1244 = call float @dx.op.binary.f32(i32 36, float %1241, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1242)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1243)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1244)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!33 = !{[33 x i32] [i32 31, i32 8, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
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

