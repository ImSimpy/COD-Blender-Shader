;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xyzw        2     NONE   float   xyzw
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 4   xyzw        4     NONE   float   xy  
; TEXCOORD                 5   xy          5     NONE   float   xy  
; TEXCOORD                 8   xyzw        6     NONE   float   xyzw
; QUAD_POSITION            0   xyzw        7     NONE   float   xyzw
; COLOR                    3   xyz         8     NONE    uint   xyz 
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
; shader hash: b2ee3d30220240eefb87082b3f9c9fab
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
; TEXCOORD                 4                 linear       
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 26, 27, 28, 29, 30, 31, 32, 33, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
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
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = fmul fast float %52, %45
  %54 = fmul fast float %52, %46
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
  %88 = fmul fast float %83, %48
  %89 = fmul fast float %85, %48
  %90 = fmul fast float %87, %48
  %91 = bitcast i32 %22 to float
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.i32 %93, 3
  %95 = and i32 %94, 3
  %96 = icmp ne i32 %95, 0
  %97 = and i32 %94, 4
  %98 = icmp ne i32 %97, 0
  %99 = and i1 %96, %98
  br i1 %99, label %100, label %111

; <label>:100                                     ; preds = %0
  %101 = extractvalue %dx.types.CBufRet.f32 %92, 3
  %102 = fmul fast float %101, %54
  %103 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %104 = fmul fast float %103, %53
  %105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %104, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = fsub fast float 1.000000e+00, %106
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = fcmp fast olt float %107, %109
  br label %114

; <label>:111                                     ; preds = %0
  %112 = icmp eq i32 %97, 0
  %113 = and i1 %96, %112
  br label %114

; <label>:114                                     ; preds = %111, %100
  %115 = phi i1 [ %110, %100 ], [ %113, %111 ]
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 3
  %119 = fmul fast float %117, %53
  %120 = fmul fast float %118, %54
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = and i32 %122, 114688
  %124 = icmp ne i32 %123, 0
  %125 = select i1 %124, float %119, float 0.000000e+00
  %126 = select i1 %124, float %120, float 0.000000e+00
  %127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %125, float %126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = fmul fast float %128, 2.550000e+02
  %130 = fptoui float %129 to i32
  %131 = select i1 %124, i32 %130, i32 0
  %132 = mul i32 %21, 208
  %133 = add i32 %132, 188
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = and i32 %94, 114688
  %137 = and i32 %94, 8
  %138 = icmp ne i32 %137, 0
  %139 = or i1 %115, %138
  %140 = select i1 %139, i32 %136, i32 16384
  %141 = and i32 %140, %135
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

; <label>:143                                     ; preds = %114
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %144

; <label>:144                                     ; preds = %143, %114
  %145 = and i32 %135, 512
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %171, label %147

; <label>:147                                     ; preds = %144
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %151 = fmul fast float %149, %53
  %152 = fmul fast float %150, %54
  %153 = extractvalue %dx.types.CBufRet.f32 %148, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %148, 1
  %155 = fdiv fast float %153, %154
  %156 = fcmp fast ogt float %155, 0x3FFC71C720000000
  br i1 %156, label %157, label %163

; <label>:157                                     ; preds = %147
  %158 = fdiv fast float 0x3FFC71C720000000, %155
  %159 = fmul fast float %158, %152
  %160 = fsub fast float 1.000000e+00, %158
  %161 = fmul fast float %160, 5.000000e-01
  %162 = fadd fast float %161, %159
  br label %171

; <label>:163                                     ; preds = %147
  %164 = fcmp fast olt float %155, 0x3FFC71C720000000
  br i1 %164, label %165, label %171

; <label>:165                                     ; preds = %163
  %166 = fmul fast float %151, 5.625000e-01
  %167 = fmul fast float %166, %155
  %168 = fmul fast float %155, 2.812500e-01
  %169 = fsub fast float 5.000000e-01, %168
  %170 = fadd fast float %169, %167
  br label %171

; <label>:171                                     ; preds = %165, %163, %157, %144
  %172 = phi float [ %40, %144 ], [ %151, %157 ], [ %170, %165 ], [ %151, %163 ]
  %173 = phi float [ %41, %144 ], [ %162, %157 ], [ %152, %165 ], [ %152, %163 ]
  %174 = add i32 %23, 72
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = extractvalue %dx.types.ResRet.i32 %175, 1
  %178 = bitcast i32 %176 to float
  %179 = bitcast i32 %177 to float
  %180 = fmul fast float %178, %40
  %181 = fmul fast float %179, %41
  %182 = call float @dx.op.unary.f32(i32 22, float %180)  ; Frc(value)
  %183 = call float @dx.op.unary.f32(i32 22, float %181)  ; Frc(value)
  %184 = and i32 %135, 16
  %185 = icmp ne i32 %184, 0
  %186 = select i1 %185, float 1.000000e+00, float %44
  %187 = icmp eq i32 %184, 0
  br i1 %187, label %207, label %188, !dx.controlflow.hints !61

; <label>:188                                     ; preds = %171
  %189 = add i32 %132, 64
  %190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = fadd fast float %191, 1.000000e+00
  %193 = fmul fast float %192, %44
  %194 = fsub fast float %193, %191
  %195 = fsub fast float %192, %194
  %196 = call float @dx.op.unary.f32(i32 7, float %195)  ; Saturate(value)
  %197 = fsub fast float 1.000000e+00, %193
  %198 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %199 = fsub fast float %196, %198
  %200 = fsub fast float %186, %198
  %201 = fdiv fast float %200, %199
  %202 = call float @dx.op.unary.f32(i32 7, float %201)  ; Saturate(value)
  %203 = fmul fast float %202, 2.000000e+00
  %204 = fsub fast float 3.000000e+00, %203
  %205 = fmul fast float %202, %202
  %206 = fmul fast float %205, %204
  br label %207

; <label>:207                                     ; preds = %188, %171
  %208 = phi float [ %206, %188 ], [ %186, %171 ]
  %209 = and i32 %135, 1024
  %210 = icmp eq i32 %209, 0
  %211 = add i32 %23, 144
  br i1 %210, label %271, label %212, !dx.controlflow.hints !62

; <label>:212                                     ; preds = %207
  %213 = add i32 %132, 48
  %214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = extractvalue %dx.types.ResRet.f32 %214, 1
  %217 = fadd fast float %42, -5.000000e-01
  %218 = fmul fast float %217, 2.000000e+00
  %219 = fmul fast float %34, %218
  %220 = fmul fast float %35, %218
  %221 = fmul fast float %219, %216
  %222 = fmul fast float %220, %216
  %223 = call float @dx.op.dot2.f32(i32 54, float %34, float %35, float %34, float %35)  ; Dot2(ax,ay,bx,by)
  %224 = call float @dx.op.unary.f32(i32 25, float %223)  ; Rsqrt(value)
  %225 = fmul fast float %221, %224
  %226 = fmul fast float %222, %224
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 0
  %229 = extractvalue %dx.types.CBufRet.f32 %227, 1
  %230 = fsub fast float %88, %221
  %231 = fadd fast float %230, %228
  %232 = fadd fast float %231, %225
  %233 = fsub fast float %89, %222
  %234 = fadd fast float %233, %229
  %235 = fadd fast float %234, %226
  %236 = fmul fast float %232, %215
  %237 = fmul fast float %235, %215
  %238 = add i32 %23, 104
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = extractvalue %dx.types.ResRet.i32 %239, 1
  %242 = extractvalue %dx.types.ResRet.i32 %239, 2
  %243 = bitcast i32 %240 to float
  %244 = bitcast i32 %241 to float
  %245 = bitcast i32 %242 to float
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %248 = fmul fast float %245, %247
  %249 = call float @dx.op.unary.f32(i32 12, float %248)  ; Cos(value)
  %250 = call float @dx.op.unary.f32(i32 13, float %248)  ; Sin(value)
  %251 = fadd fast float %237, -5.000000e-01
  %252 = fadd fast float %236, -5.000000e-01
  %253 = fmul fast float %251, %249
  %254 = fmul fast float %250, %252
  %255 = fmul fast float %250, %251
  %256 = fmul fast float %252, %249
  %257 = fmul fast float %247, %243
  %258 = fmul fast float %247, %244
  %259 = fsub fast float 5.000000e-01, %254
  %260 = fadd fast float %259, %253
  %261 = fadd fast float %260, %257
  %262 = fadd fast float %256, 5.000000e-01
  %263 = fadd fast float %262, %255
  %264 = fadd fast float %263, %258
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = add i32 %266, 0
  %268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %268, %dx.types.Handle %50, float %261, float %264, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  br label %278

; <label>:271                                     ; preds = %207
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = add i32 %273, 0
  %275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %274, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %275, %dx.types.Handle %50, float %42, float %43, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  br label %278

; <label>:278                                     ; preds = %271, %212
  %279 = phi float [ %270, %212 ], [ %277, %271 ]
  %280 = fmul fast float %279, %208
  %281 = fcmp fast ogt float %280, 0.000000e+00
  br i1 %281, label %283, label %282

; <label>:282                                     ; preds = %278
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %283

; <label>:283                                     ; preds = %282, %278
  %284 = call float @dx.op.unary.f32(i32 7, float %280)  ; Saturate(value)
  %285 = fmul fast float %53, 5.000000e-01
  %286 = fmul fast float %54, 5.000000e-01
  %287 = fptosi float %285 to i32
  %288 = fptosi float %286 to i32
  %289 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %287, i32 %288, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = lshr i32 %290, 18
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F4C00EBA0000000
  %294 = call float @dx.op.unary.f32(i32 21, float %293)  ; Exp(value)
  %295 = fadd fast float %294, -1.000000e+00
  %296 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %297 = extractvalue %dx.types.Dimensions %296, 0
  %298 = sitofp i32 %297 to float
  %299 = extractvalue %dx.types.Dimensions %296, 1
  %300 = sitofp i32 %299 to float
  %301 = fcmp fast oge float %285, %298
  %302 = fcmp fast oge float %286, %300
  %303 = or i1 %301, %302
  %304 = select i1 %303, float 0x4197782600000000, float %295
  %305 = fsub fast float %304, %48
  %306 = fcmp fast ogt float %305, 0.000000e+00
  %307 = and i32 %131, -2
  %308 = icmp eq i32 %307, 2
  %309 = and i1 %308, %306
  %310 = xor i1 %306, true
  %311 = icmp eq i32 %131, 1
  %312 = and i1 %311, %310
  %313 = or i1 %309, %312
  %314 = and i32 %135, 262144
  %315 = icmp ne i32 %314, 0
  %316 = and i1 %315, %313
  %317 = xor i1 %313, true
  %318 = and i32 %135, 131072
  %319 = icmp ne i32 %318, 0
  %320 = and i1 %319, %317
  %321 = or i1 %316, %320
  br i1 %321, label %322, label %323

; <label>:322                                     ; preds = %283
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %323

; <label>:323                                     ; preds = %322, %283
  %324 = and i32 %135, 32
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %576, label %326, !dx.controlflow.hints !63

; <label>:326                                     ; preds = %323
  %327 = add i32 %132, 80
  %328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = extractvalue %dx.types.ResRet.f32 %328, 3
  %333 = add i32 %132, 96
  %334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = extractvalue %dx.types.ResRet.f32 %334, 1
  %337 = extractvalue %dx.types.ResRet.f32 %334, 2
  %338 = add i32 %132, 112
  %339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.f32 %339, 0
  %341 = extractvalue %dx.types.ResRet.f32 %339, 1
  %342 = extractvalue %dx.types.ResRet.f32 %339, 2
  %343 = extractvalue %dx.types.ResRet.f32 %339, 3
  %344 = add i32 %132, 128
  %345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.f32 %345, 0
  %347 = extractvalue %dx.types.ResRet.f32 %345, 1
  %348 = extractvalue %dx.types.ResRet.f32 %345, 2
  %349 = extractvalue %dx.types.ResRet.f32 %345, 3
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %133, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 4096
  %353 = icmp ne i32 %352, 0
  %354 = fcmp fast une float %337, 0.000000e+00
  %355 = and i32 %351, 64
  %356 = icmp ne i32 %355, 0
  %357 = and i32 %351, 128
  %358 = icmp eq i32 %357, 0
  %359 = and i32 %351, 2048
  %360 = icmp eq i32 %359, 0
  %361 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %362 = extractvalue %dx.types.Dimensions %361, 0
  %363 = sitofp i32 %362 to float
  %364 = extractvalue %dx.types.Dimensions %361, 1
  %365 = sitofp i32 %364 to float
  %366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.f32 %366, 2
  %368 = extractvalue %dx.types.CBufRet.f32 %366, 3
  %369 = fmul fast float %367, %53
  %370 = fmul fast float %368, %54
  %371 = fmul fast float %369, %363
  %372 = fmul fast float %370, %365
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %375 = fsub fast float -0.000000e+00, %374
  %376 = fptoui float %375 to i32
  %377 = fptoui float %371 to i32
  %378 = fptoui float %372 to i32
  %379 = and i32 %376, 31
  %380 = lshr i32 %377, %379
  %381 = lshr i32 %378, %379
  %382 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %376, i32 %380, i32 %381, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %383 = extractvalue %dx.types.ResRet.f32 %382, 0
  %384 = fcmp fast ogt float %383, -1.000000e+00
  %385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.f32 %385, 1
  %387 = select i1 %384, float %386, float 1.000000e+00
  %388 = fadd fast float %383, 1.000000e+00
  %389 = fmul fast float %387, %388
  %390 = call float @dx.op.unary.f32(i32 6, float %389)  ; FAbs(value)
  %391 = extractvalue %dx.types.CBufRet.f32 %385, 3
  %392 = fcmp fast oge float %390, %391
  %393 = select i1 %392, float 0x4197782600000000, float %390
  br i1 %360, label %471, label %394, !dx.controlflow.hints !64

; <label>:394                                     ; preds = %326
  %395 = fmul fast float %58, %367
  %396 = fmul fast float %60, %368
  %397 = fsub fast float 1.000000e+00, %395
  %398 = fsub fast float 1.000000e+00, %396
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 0
  %401 = extractvalue %dx.types.CBufRet.f32 %399, 1
  %402 = extractvalue %dx.types.CBufRet.f32 %399, 2
  %403 = fmul fast float %397, %400
  %404 = fmul fast float %397, %401
  %405 = fmul fast float %397, %402
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %408 = extractvalue %dx.types.CBufRet.f32 %406, 1
  %409 = extractvalue %dx.types.CBufRet.f32 %406, 2
  %410 = fmul fast float %398, %407
  %411 = fmul fast float %398, %408
  %412 = fmul fast float %398, %409
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %415 = extractvalue %dx.types.CBufRet.f32 %413, 1
  %416 = extractvalue %dx.types.CBufRet.f32 %413, 2
  %417 = fadd fast float %410, %414
  %418 = fadd fast float %417, %403
  %419 = fadd fast float %411, %415
  %420 = fadd fast float %419, %404
  %421 = fadd fast float %412, %416
  %422 = fadd fast float %421, %405
  %423 = fmul fast float %418, %393
  %424 = fmul fast float %420, %393
  %425 = fmul fast float %422, %393
  %426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %427 = extractvalue %dx.types.CBufRet.f32 %426, 0
  %428 = extractvalue %dx.types.CBufRet.f32 %426, 1
  %429 = extractvalue %dx.types.CBufRet.f32 %426, 2
  %430 = fsub fast float %427, %24
  %431 = fadd fast float %430, %423
  %432 = fsub fast float %428, %25
  %433 = fadd fast float %432, %424
  %434 = fsub fast float %429, %26
  %435 = fadd fast float %434, %425
  %436 = fmul fast float %27, %27
  %437 = call float @dx.op.dot3.f32(i32 55, float %431, float %433, float %435, float %431, float %433, float %435)  ; Dot3(ax,ay,az,bx,by,bz)
  %438 = fsub fast float %436, %437
  %439 = fmul fast float %336, %436
  %440 = fmul fast float %335, %436
  %441 = fcmp fast olt float %438, %439
  %442 = fcmp fast ogt float %438, %440
  %443 = or i1 %441, %442
  %444 = select i1 %443, float 0.000000e+00, float %438
  %445 = fsub fast float %335, %336
  %446 = fmul fast float %445, %436
  %447 = fsub fast float %444, %439
  %448 = fdiv fast float %447, %446
  %449 = call float @dx.op.unary.f32(i32 7, float %448)  ; Saturate(value)
  %450 = fmul fast float %449, 2.000000e+00
  %451 = fsub fast float 3.000000e+00, %450
  %452 = fmul fast float %449, %449
  %453 = fmul fast float %452, %451
  %454 = fsub fast float %343, %349
  %455 = fmul fast float %453, %454
  %456 = fadd fast float %455, %349
  %457 = fmul fast float %340, %28
  %458 = fmul fast float %341, %29
  %459 = fmul fast float %342, %30
  %460 = fsub fast float %457, %346
  %461 = fsub fast float %458, %347
  %462 = fsub fast float %459, %348
  %463 = fmul fast float %453, %460
  %464 = fmul fast float %453, %461
  %465 = fmul fast float %453, %462
  %466 = fadd fast float %463, %346
  %467 = fadd fast float %464, %347
  %468 = fadd fast float %465, %348
  %469 = fmul fast float %329, %329
  %470 = fmul fast float %469, %444
  br label %566

; <label>:471                                     ; preds = %326
  %472 = and i32 %351, 256
  %473 = icmp eq i32 %472, 0
  %474 = fsub fast float %393, %48
  br i1 %473, label %523, label %475

; <label>:475                                     ; preds = %471
  %476 = fadd fast float %335, %48
  %477 = fcmp fast olt float %393, %48
  %478 = fcmp fast ogt float %393, %476
  %479 = or i1 %477, %478
  %480 = select i1 %479, float 0.000000e+00, float %474
  %481 = call float @dx.op.unary.f32(i32 83, float %393)  ; DerivCoarseX(value)
  %482 = call float @dx.op.unary.f32(i32 84, float %393)  ; DerivCoarseY(value)
  %483 = fmul fast float %481, %481
  %484 = fmul fast float %482, %482
  %485 = fadd fast float %484, %483
  %486 = call float @dx.op.unary.f32(i32 24, float %485)  ; Sqrt(value)
  %487 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %488 = fmul fast float %487, %486
  %489 = call float @dx.op.unary.f32(i32 7, float %488)  ; Saturate(value)
  %490 = fmul fast float %489, %336
  %491 = fdiv fast float %474, %490
  %492 = call float @dx.op.unary.f32(i32 7, float %491)  ; Saturate(value)
  %493 = fmul fast float %492, 2.000000e+00
  %494 = fsub fast float 3.000000e+00, %493
  %495 = fmul fast float %492, %492
  %496 = fmul fast float %495, %494
  %497 = fsub fast float %393, %476
  %498 = fadd fast float %497, %490
  %499 = fdiv fast float %498, %490
  %500 = call float @dx.op.unary.f32(i32 7, float %499)  ; Saturate(value)
  %501 = fmul fast float %500, 2.000000e+00
  %502 = fsub fast float 3.000000e+00, %501
  %503 = fmul fast float %500, %500
  %504 = fmul fast float %503, %502
  %505 = fsub fast float %496, %504
  %506 = fsub fast float %343, %349
  %507 = fmul fast float %505, %506
  %508 = fadd fast float %507, %349
  %509 = fmul fast float %340, %28
  %510 = fmul fast float %341, %29
  %511 = fmul fast float %342, %30
  %512 = fsub fast float %509, %346
  %513 = fsub fast float %510, %347
  %514 = fsub fast float %511, %348
  %515 = fmul fast float %505, %512
  %516 = fmul fast float %505, %513
  %517 = fmul fast float %505, %514
  %518 = fadd fast float %515, %346
  %519 = fadd fast float %516, %347
  %520 = fadd fast float %517, %348
  %521 = fmul fast float %480, %329
  %522 = call float @dx.op.unary.f32(i32 6, float %521)  ; FAbs(value)
  br label %566

; <label>:523                                     ; preds = %471
  br i1 %354, label %524, label %537

; <label>:524                                     ; preds = %523
  %525 = fdiv fast float 5.000000e+01, %27
  %526 = select i1 %356, float %525, float 1.000000e+00
  %527 = fmul fast float %526, %329
  %528 = fmul fast float %182, 2.000000e+00
  %529 = fmul fast float %183, 2.000000e+00
  %530 = fadd fast float %528, -1.000000e+00
  %531 = fadd fast float %529, -1.000000e+00
  %532 = call float @dx.op.dot2.f32(i32 54, float %530, float %531, float %530, float %531)  ; Dot2(ax,ay,bx,by)
  %533 = fmul fast float %337, %27
  %534 = fmul fast float %533, %532
  %535 = fsub fast float %474, %534
  %536 = fmul fast float %527, %535
  br label %566

; <label>:537                                     ; preds = %523
  br i1 %358, label %558, label %538

; <label>:538                                     ; preds = %537
  %539 = fmul fast float %27, 0x3F947AE140000000
  %540 = select i1 %356, float %539, float 1.000000e+00
  %541 = fdiv fast float 1.000000e+00, %540
  %542 = fmul fast float %540, %330
  %543 = fmul fast float %540, %331
  %544 = fmul fast float %541, %332
  %545 = call float @dx.op.unary.f32(i32 6, float %474)  ; FAbs(value)
  %546 = fcmp fast olt float %545, %542
  br i1 %546, label %547, label %551, !dx.controlflow.hints !65

; <label>:547                                     ; preds = %538
  %548 = fmul fast float %541, %329
  %549 = fmul fast float %548, %545
  %550 = call float @dx.op.unary.f32(i32 6, float %549)  ; FAbs(value)
  br label %566

; <label>:551                                     ; preds = %538
  %552 = fcmp fast ogt float %545, %543
  br i1 %552, label %553, label %566

; <label>:553                                     ; preds = %551
  %554 = fsub fast float %545, %543
  %555 = fmul fast float %544, %554
  %556 = call float @dx.op.unary.f32(i32 6, float %555)  ; FAbs(value)
  %557 = fsub fast float 1.000000e+00, %556
  br label %566

; <label>:558                                     ; preds = %537
  %559 = fdiv fast float 5.000000e+01, %27
  %560 = select i1 %356, float %559, float 1.000000e+00
  %561 = fmul fast float %560, %329
  %562 = call float @dx.op.unary.f32(i32 6, float %305)  ; FAbs(value)
  %563 = select i1 %353, float %562, float 0x47EFFFFFE0000000
  %564 = call float @dx.op.binary.f32(i32 36, float %474, float %563)  ; FMin(a,b)
  %565 = fmul fast float %561, %564
  br label %566

; <label>:566                                     ; preds = %558, %553, %551, %547, %524, %475, %394
  %567 = phi float [ %470, %394 ], [ %522, %475 ], [ %536, %524 ], [ %565, %558 ], [ %550, %547 ], [ %557, %553 ], [ %545, %551 ]
  %568 = phi float [ %466, %394 ], [ %518, %475 ], [ %28, %524 ], [ %28, %558 ], [ %28, %547 ], [ %28, %553 ], [ %28, %551 ]
  %569 = phi float [ %467, %394 ], [ %519, %475 ], [ %29, %524 ], [ %29, %558 ], [ %29, %547 ], [ %29, %553 ], [ %29, %551 ]
  %570 = phi float [ %468, %394 ], [ %520, %475 ], [ %30, %524 ], [ %30, %558 ], [ %30, %547 ], [ %30, %553 ], [ %30, %551 ]
  %571 = phi float [ %456, %394 ], [ %508, %475 ], [ 1.000000e+00, %524 ], [ 1.000000e+00, %558 ], [ 1.000000e+00, %547 ], [ 1.000000e+00, %553 ], [ 1.000000e+00, %551 ]
  %572 = call float @dx.op.unary.f32(i32 7, float %567)  ; Saturate(value)
  %573 = fmul fast float %572, %44
  %574 = fmul fast float %571, %284
  %575 = fmul fast float %574, %572
  br label %576

; <label>:576                                     ; preds = %566, %323
  %577 = phi float [ %575, %566 ], [ %284, %323 ]
  %578 = phi float [ %573, %566 ], [ %44, %323 ]
  %579 = phi float [ %568, %566 ], [ %28, %323 ]
  %580 = phi float [ %569, %566 ], [ %29, %323 ]
  %581 = phi float [ %570, %566 ], [ %30, %323 ]
  %582 = fmul fast float %579, %31
  %583 = fmul fast float %580, %31
  %584 = fmul fast float %581, %31
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 2
  %587 = fptosi float %48 to i32
  %588 = sitofp i32 %587 to float
  %589 = fadd fast float %586, %588
  %590 = fmul fast float %589, 0x3FE3C6EF40000000
  %591 = frem fast float %53, 2.560000e+02
  %592 = frem fast float %54, 2.560000e+02
  %593 = fptoui float %591 to i32
  %594 = fptoui float %592 to i32
  %595 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %593, i32 %594, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = fadd fast float %596, %590
  %598 = call float @dx.op.unary.f32(i32 22, float %597)  ; Frc(value)
  %599 = and i32 %135, 1
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %658, label %601, !dx.controlflow.hints !66

; <label>:601                                     ; preds = %576
  %602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 2
  %604 = extractvalue %dx.types.ResRet.f32 %602, 3
  %605 = add i32 %132, 16
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = add i32 %132, 32
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = and i32 %135, 2
  %616 = icmp eq i32 %615, 0
  %617 = call float @dx.op.dot3.f32(i32 55, float %36, float %37, float %38, float %36, float %37, float %38)  ; Dot3(ax,ay,az,bx,by,bz)
  %618 = call float @dx.op.unary.f32(i32 25, float %617)  ; Rsqrt(value)
  %619 = fmul fast float %618, %36
  %620 = fmul fast float %618, %37
  %621 = fmul fast float %618, %38
  %622 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %623 = call float @dx.op.unary.f32(i32 25, float %622)  ; Rsqrt(value)
  %624 = fmul fast float %623, %88
  %625 = fmul fast float %623, %89
  %626 = fmul fast float %623, %90
  %627 = call float @dx.op.dot3.f32(i32 55, float %624, float %625, float %626, float %619, float %620, float %621)  ; Dot3(ax,ay,az,bx,by,bz)
  %628 = fmul fast float %627, %627
  %629 = fmul fast float %628, %603
  %630 = fadd fast float %629, %604
  %631 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  br i1 %616, label %632, label %642, !dx.controlflow.hints !67

; <label>:632                                     ; preds = %601
  %633 = extractvalue %dx.types.ResRet.f32 %602, 1
  %634 = extractvalue %dx.types.ResRet.f32 %602, 0
  %635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %636 = extractvalue %dx.types.CBufRet.f32 %635, 3
  %637 = fmul fast float %636, %622
  %638 = fsub fast float %634, %637
  %639 = fmul fast float %638, %633
  %640 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  %641 = fmul fast float %640, %631
  br label %642

; <label>:642                                     ; preds = %632, %601
  %643 = phi float [ %641, %632 ], [ %631, %601 ]
  %644 = fsub fast float %607, %612
  %645 = fsub fast float %608, %613
  %646 = fsub fast float %609, %614
  %647 = fmul fast float %643, %644
  %648 = fmul fast float %643, %645
  %649 = fmul fast float %643, %646
  %650 = fadd fast float %647, %612
  %651 = fadd fast float %648, %613
  %652 = fadd fast float %649, %614
  %653 = fmul fast float %650, %582
  %654 = fmul fast float %651, %583
  %655 = fmul fast float %652, %584
  %656 = fmul fast float %643, %577
  %657 = fmul fast float %643, %578
  br label %658

; <label>:658                                     ; preds = %642, %576
  %659 = phi float [ %656, %642 ], [ %577, %576 ]
  %660 = phi float [ %657, %642 ], [ %578, %576 ]
  %661 = phi float [ %653, %642 ], [ %582, %576 ]
  %662 = phi float [ %654, %642 ], [ %583, %576 ]
  %663 = phi float [ %655, %642 ], [ %584, %576 ]
  %664 = add i32 %23, 136
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = add i32 %666, 0
  %668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %668, %dx.types.Handle %49, float %172, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = extractvalue %dx.types.ResRet.f32 %669, 1
  %672 = extractvalue %dx.types.ResRet.f32 %669, 2
  %673 = add i32 %23, 44
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %673, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = shl i32 %675, 4
  %677 = and i32 %676, 32752
  %678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %677)  ; LegacyF16ToF32(value)
  %679 = lshr i32 %675, 7
  %680 = and i32 %679, 32752
  %681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %680)  ; LegacyF16ToF32(value)
  %682 = lshr i32 %675, 22
  %683 = shl nuw nsw i32 %682, 5
  %684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %683)  ; LegacyF16ToF32(value)
  %685 = fmul fast float %678, %670
  %686 = fmul fast float %681, %671
  %687 = fmul fast float %684, %672
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 0
  %690 = fmul fast float %685, %689
  %691 = fmul fast float %686, %689
  %692 = fmul fast float %687, %689
  %693 = add i32 %23, 48
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = lshr i32 %695, 22
  %697 = shl nuw nsw i32 %696, 5
  %698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %697)  ; LegacyF16ToF32(value)
  %699 = fmul fast float %698, %690
  %700 = select i1 %115, float %699, float %690
  %701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = extractvalue %dx.types.ResRet.f32 %701, 1
  %704 = extractvalue %dx.types.ResRet.f32 %701, 2
  %705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.f32 %705, 1
  %707 = fmul fast float %700, %661
  %708 = fmul fast float %691, %662
  %709 = fmul fast float %692, %663
  %710 = call float @dx.op.dot3.f32(i32 55, float %707, float %708, float %709, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %711 = select i1 %115, float 0.000000e+00, float %707
  %712 = select i1 %115, float %710, float %708
  %713 = select i1 %115, float 0.000000e+00, float %709
  %714 = call float @dx.op.dot3.f32(i32 55, float %670, float %671, float %672, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %715 = add i32 %23, 32
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 255
  %719 = uitofp i32 %718 to float
  %720 = lshr i32 %717, 8
  %721 = and i32 %720, 255
  %722 = uitofp i32 %721 to float
  %723 = fmul fast float %722, %714
  %724 = fadd fast float %723, %719
  %725 = fmul fast float %724, 0x3F70101020000000
  %726 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  %727 = add i32 %23, 140
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = add i32 %729, 0
  %731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %730, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %732 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %731, %dx.types.Handle %50, float %172, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %733 = extractvalue %dx.types.ResRet.f32 %732, 0
  %734 = and i32 %135, 8192
  %735 = icmp eq i32 %734, 0
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 0
  br i1 %735, label %748, label %738, !dx.controlflow.hints !68

; <label>:738                                     ; preds = %658
  %739 = add i32 %132, 176
  %740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.f32 %740, 0
  %742 = extractvalue %dx.types.ResRet.f32 %740, 1
  %743 = fcmp fast oge float %741, 0.000000e+00
  %744 = select i1 %743, float %741, float %737
  %745 = fmul fast float %733, %91
  %746 = fmul fast float %745, %742
  %747 = fadd fast float %746, %744
  br label %759

; <label>:748                                     ; preds = %658
  %749 = add i32 %23, 120
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = extractvalue %dx.types.ResRet.i32 %750, 1
  %753 = bitcast i32 %751 to float
  %754 = bitcast i32 %752 to float
  %755 = fcmp fast oge float %753, 0.000000e+00
  %756 = select i1 %755, float %753, float %737
  %757 = fmul fast float %754, %733
  %758 = fadd fast float %756, %757
  br label %759

; <label>:759                                     ; preds = %748, %738
  %760 = phi float [ %747, %738 ], [ %758, %748 ]
  %761 = fmul fast float %714, %660
  %762 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %287, i32 %288, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = lshr i32 %763, 18
  %765 = uitofp i32 %764 to float
  %766 = fmul fast float %765, 0x3F4C00EBA0000000
  %767 = call float @dx.op.unary.f32(i32 21, float %766)  ; Exp(value)
  %768 = fadd fast float %767, -1.000000e+00
  %769 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %770 = extractvalue %dx.types.Dimensions %769, 0
  %771 = sitofp i32 %770 to float
  %772 = extractvalue %dx.types.Dimensions %769, 1
  %773 = sitofp i32 %772 to float
  %774 = fcmp fast oge float %285, %771
  %775 = fcmp fast oge float %286, %773
  %776 = or i1 %774, %775
  %777 = select i1 %776, float 0x4197782600000000, float %768
  %778 = icmp eq i32 %131, 3
  %779 = fcmp fast ogt float %48, %777
  %780 = and i1 %311, %779
  %781 = or i1 %778, %780
  %782 = icmp eq i32 %131, 2
  %783 = fcmp fast ole float %48, %777
  %784 = and i1 %782, %783
  %785 = or i1 %784, %781
  %786 = fmul fast float %579, %39
  %787 = fmul fast float %786, %700
  %788 = fmul fast float %787, %702
  %789 = fmul fast float %788, %706
  %790 = fmul fast float %580, %39
  %791 = fmul fast float %790, %691
  %792 = fmul fast float %791, %703
  %793 = fmul fast float %792, %706
  %794 = fmul fast float %581, %39
  %795 = fmul fast float %794, %692
  %796 = fmul fast float %795, %704
  %797 = fmul fast float %796, %706
  %798 = fadd fast float %789, %711
  %799 = fadd fast float %712, %793
  %800 = fadd fast float %797, %713
  %801 = fmul fast float %798, %659
  %802 = fmul fast float %799, %659
  %803 = fmul fast float %800, %659
  %804 = fmul fast float %760, %726
  %805 = fsub fast float 1.000000e+00, %726
  %806 = fsub fast float %805, %761
  %807 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 3
  %810 = fmul fast float %809, %807
  %811 = fadd fast float %810, %804
  %812 = and i32 %135, 1048576
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %905, label %814, !dx.controlflow.hints !69

; <label>:814                                     ; preds = %759
  %815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.f32 %815, 2
  %817 = extractvalue %dx.types.CBufRet.f32 %815, 3
  %818 = fmul fast float %816, %53
  %819 = fmul fast float %817, %54
  %820 = call float @dx.op.unary.f32(i32 7, float %818)  ; Saturate(value)
  %821 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  %822 = select i1 %785, i32 2, i32 0
  %823 = or i32 %822, 1
  %824 = uitofp i32 %823 to float
  %825 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %820, float %821, float %824, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = extractvalue %dx.types.ResRet.f32 %825, 1
  %828 = extractvalue %dx.types.ResRet.f32 %825, 2
  %829 = extractvalue %dx.types.ResRet.f32 %825, 3
  %830 = add nuw nsw i32 %822, 2
  %831 = uitofp i32 %830 to float
  %832 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %820, float %821, float %831, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 0
  %834 = extractvalue %dx.types.ResRet.f32 %832, 1
  %835 = extractvalue %dx.types.ResRet.f32 %832, 2
  %836 = extractvalue %dx.types.ResRet.f32 %832, 3
  %837 = call float @dx.op.binary.f32(i32 35, float %827, float %828)  ; FMax(a,b)
  %838 = call float @dx.op.binary.f32(i32 35, float %826, float %837)  ; FMax(a,b)
  %839 = call float @dx.op.binary.f32(i32 35, float %838, float %829)  ; FMax(a,b)
  %840 = call float @dx.op.binary.f32(i32 36, float %834, float %835)  ; FMin(a,b)
  %841 = call float @dx.op.binary.f32(i32 36, float %833, float %840)  ; FMin(a,b)
  %842 = call float @dx.op.binary.f32(i32 36, float %841, float %836)  ; FMin(a,b)
  %843 = fmul fast float %839, 2.550000e+02
  %844 = fadd fast float %843, 0x3F70101020000000
  %845 = fptoui float %844 to i32
  %846 = fmul fast float %842, 2.550000e+02
  %847 = fadd fast float %846, 0x3F70101020000000
  %848 = fptoui float %847 to i32
  %849 = icmp ult i32 %845, %848
  br i1 %849, label %850, label %898

; <label>:850                                     ; preds = %814
  %851 = fcmp fast ogt float %47, 9.843750e-01
  %852 = fadd fast float %48, -4.000000e+00
  %853 = select i1 %851, float -4.000000e+00, float %852
  %854 = call float @dx.op.binary.f32(i32 35, float %853, float 0.000000e+00)  ; FMax(a,b)
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = fadd fast float %856, %854
  %858 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %859 = fmul fast float %857, %858
  %860 = call float @dx.op.unary.f32(i32 23, float %859)  ; Log(value)
  %861 = extractvalue %dx.types.CBufRet.f32 %855, 3
  %862 = fmul fast float %861, %860
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 2
  %865 = fmul fast float %862, %864
  %866 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  %867 = uitofp i32 %845 to float
  %868 = uitofp i32 %848 to float
  %869 = fadd fast float %867, 5.000000e-01
  %870 = fadd fast float %868, 5.000000e-01
  %871 = fmul fast float %864, %869
  %872 = fmul fast float %864, %870
  %873 = fadd fast float %871, 0x3F0FFB4800000000
  %874 = fadd fast float %872, 0xBF0FFB4800000000
  %875 = call float @dx.op.binary.f32(i32 35, float %866, float %873)  ; FMax(a,b)
  %876 = call float @dx.op.binary.f32(i32 36, float %875, float %874)  ; FMin(a,b)
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 1
  %879 = extractvalue %dx.types.CBufRet.f32 %877, 2
  %880 = extractvalue %dx.types.CBufRet.f32 %877, 0
  %881 = select i1 %785, float %880, float 0.000000e+00
  %882 = fmul fast float %878, %876
  %883 = fadd fast float %881, %882
  %884 = fadd fast float %881, %879
  %885 = fsub fast float %878, %879
  %886 = fadd fast float %885, %881
  %887 = call float @dx.op.binary.f32(i32 35, float %883, float %884)  ; FMax(a,b)
  %888 = call float @dx.op.binary.f32(i32 36, float %887, float %886)  ; FMin(a,b)
  %889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %820, float %821, float %888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = extractvalue %dx.types.ResRet.f32 %889, 1
  %892 = extractvalue %dx.types.ResRet.f32 %889, 2
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 1
  %895 = fmul fast float %894, %890
  %896 = fmul fast float %894, %891
  %897 = fmul fast float %894, %892
  br label %898

; <label>:898                                     ; preds = %850, %814
  %899 = phi float [ %895, %850 ], [ 1.000000e+00, %814 ]
  %900 = phi float [ %896, %850 ], [ 1.000000e+00, %814 ]
  %901 = phi float [ %897, %850 ], [ 1.000000e+00, %814 ]
  %902 = fmul fast float %899, %801
  %903 = fmul fast float %900, %802
  %904 = fmul fast float %901, %803
  br label %905

; <label>:905                                     ; preds = %898, %759
  %906 = phi float [ %902, %898 ], [ %801, %759 ]
  %907 = phi float [ %903, %898 ], [ %802, %759 ]
  %908 = phi float [ %904, %898 ], [ %803, %759 ]
  %909 = and i32 %135, 2097152
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %915, label %911, !dx.controlflow.hints !70

; <label>:911                                     ; preds = %905
  %912 = add i32 %132, 192
  %913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.f32 %913, 0
  br label %918

; <label>:915                                     ; preds = %905
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 3
  br label %918

; <label>:918                                     ; preds = %915, %911
  %919 = phi float [ %914, %911 ], [ %917, %915 ]
  br i1 %780, label %920, label %1004

; <label>:920                                     ; preds = %918
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %923 = extractvalue %dx.types.CBufRet.f32 %921, 3
  %924 = fmul fast float %922, %53
  %925 = fmul fast float %923, %54
  %926 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %927 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %928 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %926, float %927, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = extractvalue %dx.types.ResRet.f32 %928, 1
  %931 = extractvalue %dx.types.ResRet.f32 %928, 2
  %932 = extractvalue %dx.types.ResRet.f32 %928, 3
  %933 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %926, float %927, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %934 = extractvalue %dx.types.ResRet.f32 %933, 0
  %935 = extractvalue %dx.types.ResRet.f32 %933, 1
  %936 = extractvalue %dx.types.ResRet.f32 %933, 2
  %937 = extractvalue %dx.types.ResRet.f32 %933, 3
  %938 = call float @dx.op.binary.f32(i32 35, float %930, float %931)  ; FMax(a,b)
  %939 = call float @dx.op.binary.f32(i32 35, float %929, float %938)  ; FMax(a,b)
  %940 = call float @dx.op.binary.f32(i32 35, float %939, float %932)  ; FMax(a,b)
  %941 = call float @dx.op.binary.f32(i32 36, float %935, float %936)  ; FMin(a,b)
  %942 = call float @dx.op.binary.f32(i32 36, float %934, float %941)  ; FMin(a,b)
  %943 = call float @dx.op.binary.f32(i32 36, float %942, float %937)  ; FMin(a,b)
  %944 = fmul fast float %940, 2.550000e+02
  %945 = fadd fast float %944, 0x3F70101020000000
  %946 = fptoui float %945 to i32
  %947 = fmul fast float %943, 2.550000e+02
  %948 = fadd fast float %947, 0x3F70101020000000
  %949 = fptoui float %948 to i32
  %950 = icmp ult i32 %946, %949
  br i1 %950, label %951, label %993

; <label>:951                                     ; preds = %920
  %952 = fcmp fast ogt float %47, 9.843750e-01
  %953 = fadd fast float %48, -4.000000e+00
  %954 = select i1 %952, float -4.000000e+00, float %953
  %955 = call float @dx.op.binary.f32(i32 35, float %954, float 0.000000e+00)  ; FMax(a,b)
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 0
  %958 = fadd fast float %957, %955
  %959 = extractvalue %dx.types.CBufRet.f32 %956, 2
  %960 = fmul fast float %958, %959
  %961 = call float @dx.op.unary.f32(i32 23, float %960)  ; Log(value)
  %962 = extractvalue %dx.types.CBufRet.f32 %956, 3
  %963 = fmul fast float %962, %961
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 2
  %966 = fmul fast float %963, %965
  %967 = call float @dx.op.unary.f32(i32 7, float %966)  ; Saturate(value)
  %968 = uitofp i32 %946 to float
  %969 = uitofp i32 %949 to float
  %970 = fadd fast float %968, 5.000000e-01
  %971 = fadd fast float %969, 5.000000e-01
  %972 = fmul fast float %965, %970
  %973 = fmul fast float %965, %971
  %974 = fadd fast float %972, 0x3F0FFB4800000000
  %975 = fadd fast float %973, 0xBF0FFB4800000000
  %976 = call float @dx.op.binary.f32(i32 35, float %967, float %974)  ; FMax(a,b)
  %977 = call float @dx.op.binary.f32(i32 36, float %976, float %975)  ; FMin(a,b)
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 1
  %980 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %981 = extractvalue %dx.types.CBufRet.f32 %978, 0
  %982 = fmul fast float %979, %977
  %983 = fadd fast float %981, %982
  %984 = fadd fast float %981, %980
  %985 = fsub fast float %979, %980
  %986 = fadd fast float %985, %981
  %987 = call float @dx.op.binary.f32(i32 35, float %983, float %984)  ; FMax(a,b)
  %988 = call float @dx.op.binary.f32(i32 36, float %987, float %986)  ; FMin(a,b)
  %989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %926, float %927, float %988, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = extractvalue %dx.types.ResRet.f32 %989, 1
  %992 = extractvalue %dx.types.ResRet.f32 %989, 2
  br label %993

; <label>:993                                     ; preds = %951, %920
  %994 = phi float [ %990, %951 ], [ 1.000000e+00, %920 ]
  %995 = phi float [ %991, %951 ], [ 1.000000e+00, %920 ]
  %996 = phi float [ %992, %951 ], [ 1.000000e+00, %920 ]
  %997 = call float @dx.op.dot3.f32(i32 55, float %994, float %995, float %996, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %998 = select i1 %115, float %997, float %994
  %999 = select i1 %115, float %997, float %995
  %1000 = select i1 %115, float 1.000000e+00, float %996
  %1001 = fmul fast float %998, %906
  %1002 = fmul fast float %999, %907
  %1003 = fmul fast float %1000, %908
  br label %1004

; <label>:1004                                    ; preds = %993, %918
  %1005 = phi float [ %777, %993 ], [ %48, %918 ]
  %1006 = phi float [ %1001, %993 ], [ %906, %918 ]
  %1007 = phi float [ %1002, %993 ], [ %907, %918 ]
  %1008 = phi float [ %1003, %993 ], [ %908, %918 ]
  %1009 = phi float [ %994, %993 ], [ 1.000000e+00, %918 ]
  br i1 %785, label %1252, label %1010

; <label>:1010                                    ; preds = %1004
  %1011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %32, float %33, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1011, 2
  %1015 = fmul fast float %1012, %1009
  %1016 = call float @dx.op.dot3.f32(i32 55, float %1012, float %1013, float %1014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1017 = select i1 %115, float %1016, float %1012
  %1018 = select i1 %115, float %1016, float %1013
  %1019 = select i1 %115, float 1.000000e+00, float %1014
  %1020 = fmul fast float %1017, %1006
  %1021 = fmul fast float %1018, %1007
  %1022 = fmul fast float %1019, %1008
  %1023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.i32 %1023, 0
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1252, label %1026, !dx.controlflow.hints !71

; <label>:1026                                    ; preds = %1010
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 2
  %1029 = extractvalue %dx.types.CBufRet.f32 %1027, 3
  %1030 = fmul fast float %1028, %53
  %1031 = fmul fast float %1029, %54
  %1032 = fmul fast float %1030, 2.000000e+00
  %1033 = fmul fast float %1031, 2.000000e+00
  %1034 = fsub fast float 1.000000e+00, %1032
  %1035 = fsub fast float 1.000000e+00, %1033
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1040 = fmul fast float %1034, %1037
  %1041 = fmul fast float %1034, %1038
  %1042 = fmul fast float %1034, %1039
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 0
  %1045 = extractvalue %dx.types.CBufRet.f32 %1043, 1
  %1046 = extractvalue %dx.types.CBufRet.f32 %1043, 2
  %1047 = fmul fast float %1035, %1044
  %1048 = fmul fast float %1035, %1045
  %1049 = fmul fast float %1035, %1046
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.CBufRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.CBufRet.f32 %1050, 2
  %1054 = fadd fast float %1047, %1051
  %1055 = fadd fast float %1054, %1040
  %1056 = fadd fast float %1048, %1052
  %1057 = fadd fast float %1056, %1041
  %1058 = fadd fast float %1049, %1053
  %1059 = fadd fast float %1058, %1042
  %1060 = fmul fast float %1055, %1005
  %1061 = fmul fast float %1057, %1005
  %1062 = fmul fast float %1059, %1005
  %1063 = fmul fast float %1060, %1060
  %1064 = fmul fast float %1061, %1061
  %1065 = fadd fast float %1063, %1064
  %1066 = fmul fast float %1062, %1062
  %1067 = fadd fast float %1065, %1066
  %1068 = call float @dx.op.unary.f32(i32 24, float %1067)  ; Sqrt(value)
  %1069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.f32 %1069, 0
  %1071 = fsub fast float %1068, %1070
  %1072 = extractvalue %dx.types.CBufRet.f32 %1069, 2
  %1073 = fmul fast float %1071, %1072
  %1074 = call float @dx.op.unary.f32(i32 7, float %1073)  ; Saturate(value)
  %1075 = fadd fast float %1074, -5.000000e-01
  %1076 = fmul fast float %1075, 2.000000e+00
  %1077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.f32 %1077, 2
  %1079 = call float @dx.op.binary.f32(i32 36, float %1078, float %1076)  ; FMin(a,b)
  %1080 = fsub fast float -0.000000e+00, %1078
  %1081 = fcmp fast ogt float %1079, %1080
  br i1 %1081, label %1082, label %1252, !dx.controlflow.hints !72

; <label>:1082                                    ; preds = %1026
  %1083 = fmul fast float %1079, 5.000000e-01
  %1084 = fadd fast float %1083, 5.000000e-01
  %1085 = call float @dx.op.unary.f32(i32 22, float %1084)  ; Frc(value)
  %1086 = call float @dx.op.unary.f32(i32 27, float %1085)  ; Round_ni(value)
  %1087 = call float @dx.op.unary.f32(i32 22, float %1085)  ; Frc(value)
  %1088 = fmul fast float %1087, 2.000000e+00
  %1089 = fadd fast float %1088, -1.000000e+00
  %1090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %1030, float %1031, float %1086, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.ResRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.ResRet.f32 %1090, 2
  %1094 = extractvalue %dx.types.ResRet.f32 %1090, 3
  %1095 = fadd fast float %1091, -5.000000e-01
  %1096 = fadd fast float %1093, -5.000000e-01
  %1097 = fmul fast float %1095, 0xBFD5555560000000
  %1098 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1096, float %1097)  ; FMad(a,b,c)
  %1099 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1092, float 0.000000e+00)  ; FMad(a,b,c)
  %1100 = fadd fast float %1099, %1094
  %1101 = fmul fast float %1095, -7.500000e-01
  %1102 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1096, float %1101)  ; FMad(a,b,c)
  %1103 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1092, float 0.000000e+00)  ; FMad(a,b,c)
  %1104 = fadd fast float %1103, %1094
  %1105 = call float @dx.op.binary.f32(i32 35, float %1098, float -1.000000e+00)  ; FMax(a,b)
  %1106 = call float @dx.op.binary.f32(i32 35, float %1100, float -1.000000e+00)  ; FMax(a,b)
  %1107 = call float @dx.op.binary.f32(i32 35, float %1102, float -1.000000e+00)  ; FMax(a,b)
  %1108 = call float @dx.op.binary.f32(i32 35, float %1104, float -1.000000e+00)  ; FMax(a,b)
  %1109 = call float @dx.op.binary.f32(i32 36, float %1105, float 1.000000e+00)  ; FMin(a,b)
  %1110 = call float @dx.op.binary.f32(i32 36, float %1106, float 1.000000e+00)  ; FMin(a,b)
  %1111 = call float @dx.op.binary.f32(i32 36, float %1107, float 1.000000e+00)  ; FMin(a,b)
  %1112 = call float @dx.op.binary.f32(i32 36, float %1108, float 1.000000e+00)  ; FMin(a,b)
  %1113 = fcmp fast olt float %1109, 0x3FEFFF8020000000
  br i1 %1113, label %1114, label %1229, !dx.controlflow.hints !73

; <label>:1114                                    ; preds = %1082
  %1115 = extractvalue %dx.types.CBufRet.f32 %1077, 3
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.CBufRet.f32 %1116, 1
  %1119 = extractvalue %dx.types.CBufRet.f32 %1116, 2
  %1120 = extractvalue %dx.types.CBufRet.f32 %1116, 3
  %1121 = fsub fast float %1117, %1109
  %1122 = fsub fast float %1118, %1110
  %1123 = fsub fast float %1119, %1111
  %1124 = fsub fast float %1120, %1112
  %1125 = fmul fast float %1121, %1115
  %1126 = fmul fast float %1122, %1115
  %1127 = fmul fast float %1123, %1115
  %1128 = fmul fast float %1124, %1115
  %1129 = fadd fast float %1125, %1109
  %1130 = fadd fast float %1126, %1110
  %1131 = fsub fast float -0.000000e+00, %1130
  %1132 = fadd fast float %1127, %1111
  %1133 = fadd fast float %1128, %1112
  %1134 = fmul fast float %1129, %1129
  %1135 = fsub fast float %1130, %1134
  %1136 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1135)  ; FMax(a,b)
  %1137 = fdiv fast float 1.000000e+00, %1136
  %1138 = fmul fast float %1130, %1129
  %1139 = fsub fast float %1132, %1138
  %1140 = fsub fast float %1089, %1129
  %1141 = fmul fast float %1089, %1089
  %1142 = fsub fast float %1141, %1130
  %1143 = fmul fast float %1140, %1137
  %1144 = fmul fast float %1143, %1139
  %1145 = fsub fast float %1142, %1144
  %1146 = fmul fast float %1130, %1130
  %1147 = fsub fast float %1133, %1146
  %1148 = fmul fast float %1139, %1139
  %1149 = fmul fast float %1148, %1137
  %1150 = fsub fast float %1147, %1149
  %1151 = fdiv fast float %1145, %1150
  %1152 = fmul fast float %1139, %1151
  %1153 = fsub fast float %1140, %1152
  %1154 = fmul fast float %1153, %1137
  %1155 = fmul fast float %1154, %1129
  %1156 = fsub fast float 1.000000e+00, %1155
  %1157 = fmul fast float %1130, %1151
  %1158 = fsub fast float %1156, %1157
  %1159 = fmul fast float %1154, %1154
  %1160 = fmul fast float %1151, 4.000000e+00
  %1161 = fmul fast float %1160, %1158
  %1162 = fsub fast float %1159, %1161
  %1163 = call float @dx.op.unary.f32(i32 24, float %1162)  ; Sqrt(value)
  %1164 = fcmp fast oge float %1154, 0.000000e+00
  %1165 = fsub fast float -0.000000e+00, %1163
  %1166 = select i1 %1164, float %1165, float %1163
  %1167 = fsub fast float %1166, %1154
  %1168 = fdiv fast float %1167, %1151
  %1169 = fdiv fast float %1158, %1167
  %1170 = fmul fast float %1168, 5.000000e-01
  %1171 = fmul fast float %1169, 2.000000e+00
  %1172 = select i1 %1164, float %1170, float %1171
  %1173 = select i1 %1164, float %1171, float %1170
  %1174 = call float @dx.op.binary.f32(i32 35, float %1172, float %1173)  ; FMax(a,b)
  %1175 = call float @dx.op.binary.f32(i32 36, float %1172, float %1173)  ; FMin(a,b)
  %1176 = fcmp fast ogt float %1089, %1175
  br i1 %1176, label %1177, label %1187

; <label>:1177                                    ; preds = %1114
  %1178 = fsub fast float %1089, %1175
  %1179 = fsub fast float %1174, %1175
  %1180 = fmul fast float %1178, %1179
  %1181 = fmul fast float %1174, %1089
  %1182 = fadd fast float %1174, %1089
  %1183 = fmul fast float %1182, %1129
  %1184 = fadd fast float %1181, %1130
  %1185 = fsub fast float %1184, %1183
  %1186 = fdiv fast float %1185, %1180
  br label %1187

; <label>:1187                                    ; preds = %1177, %1114
  %1188 = phi float [ %1186, %1177 ], [ 0.000000e+00, %1114 ]
  %1189 = fcmp fast ogt float %1089, %1174
  %1190 = fsub fast float %1089, %1174
  br i1 %1189, label %1191, label %1201

; <label>:1191                                    ; preds = %1187
  %1192 = fsub fast float %1174, %1175
  %1193 = fmul fast float %1192, %1190
  %1194 = fmul fast float %1175, %1089
  %1195 = fadd fast float %1175, %1089
  %1196 = fmul fast float %1195, %1129
  %1197 = fsub fast float %1131, %1194
  %1198 = fadd fast float %1197, %1196
  %1199 = fdiv fast float %1198, %1193
  %1200 = fadd fast float %1199, %1188
  br label %1201

; <label>:1201                                    ; preds = %1191, %1187
  %1202 = phi float [ %1200, %1191 ], [ %1188, %1187 ]
  %1203 = fsub fast float %1089, %1175
  %1204 = fmul fast float %1203, %1190
  %1205 = fmul fast float %1175, %1174
  %1206 = fadd fast float %1175, %1174
  %1207 = fmul fast float %1206, %1129
  %1208 = fadd fast float %1205, %1130
  %1209 = fsub fast float %1208, %1207
  %1210 = fdiv fast float %1209, %1204
  %1211 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1212 = fcmp fast oeq float %919, 0.000000e+00
  %1213 = extractvalue %dx.types.CBufRet.f32 %1077, 0
  %1214 = fcmp fast oeq float %1213, 0.000000e+00
  %1215 = or i1 %1212, %1214
  %1216 = fmul fast float %1213, 2.000000e+00
  %1217 = fadd fast float %1078, %1079
  %1218 = fdiv fast float %1217, %1216
  %1219 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  %1220 = fmul fast float %1219, 2.000000e+00
  %1221 = fsub fast float 3.000000e+00, %1220
  %1222 = fmul fast float %1219, %1219
  %1223 = fmul fast float %1222, %1221
  %1224 = select i1 %1215, float 1.000000e+00, float %1223
  %1225 = fmul fast float %1210, %919
  %1226 = fadd fast float %1211, %1225
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1228 = fmul fast float %1224, %1227
  br label %1229

; <label>:1229                                    ; preds = %1201, %1082
  %1230 = phi float [ %1228, %1201 ], [ 0.000000e+00, %1082 ]
  %1231 = fsub fast float 1.000000e+00, %1230
  %1232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1030, float %1031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.i32 %1234, 2
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1242, label %1237

; <label>:1237                                    ; preds = %1229
  %1238 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  %1239 = fadd fast float %1233, -1.000000e+00
  %1240 = fmul fast float %1238, %1239
  %1241 = fadd fast float %1240, 1.000000e+00
  br label %1242

; <label>:1242                                    ; preds = %1237, %1229
  %1243 = phi float [ %1241, %1237 ], [ %1231, %1229 ]
  %1244 = call float @dx.op.binary.f32(i32 35, float %1233, float %1243)  ; FMax(a,b)
  %1245 = fmul fast float %1244, %1015
  %1246 = call float @dx.op.dot3.f32(i32 55, float %1244, float %1244, float %1244, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1247 = select i1 %115, float %1246, float %1244
  %1248 = select i1 %115, float 1.000000e+00, float %1244
  %1249 = fmul fast float %1247, %1020
  %1250 = fmul fast float %1247, %1021
  %1251 = fmul fast float %1248, %1022
  br label %1252

; <label>:1252                                    ; preds = %1242, %1026, %1010, %1004
  %1253 = phi float [ %1006, %1004 ], [ %1020, %1010 ], [ %1249, %1242 ], [ %1020, %1026 ]
  %1254 = phi float [ %1007, %1004 ], [ %1021, %1010 ], [ %1250, %1242 ], [ %1021, %1026 ]
  %1255 = phi float [ %1008, %1004 ], [ %1022, %1010 ], [ %1251, %1242 ], [ %1022, %1026 ]
  %1256 = phi float [ %1009, %1004 ], [ %1015, %1010 ], [ %1245, %1242 ], [ %1015, %1026 ]
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 2
  %1259 = extractvalue %dx.types.CBufRet.f32 %1257, 3
  %1260 = fmul fast float %1258, %53
  %1261 = fmul fast float %1259, %54
  %1262 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1263 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1264 = select i1 %785, i32 2, i32 0
  %1265 = or i32 %1264, 1
  %1266 = uitofp i32 %1265 to float
  %1267 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1262, float %1263, float %1266, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.ResRet.f32 %1267, 1
  %1270 = extractvalue %dx.types.ResRet.f32 %1267, 2
  %1271 = extractvalue %dx.types.ResRet.f32 %1267, 3
  %1272 = add nuw nsw i32 %1264, 2
  %1273 = uitofp i32 %1272 to float
  %1274 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1262, float %1263, float %1273, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.ResRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.ResRet.f32 %1274, 2
  %1278 = extractvalue %dx.types.ResRet.f32 %1274, 3
  %1279 = call float @dx.op.binary.f32(i32 35, float %1269, float %1270)  ; FMax(a,b)
  %1280 = call float @dx.op.binary.f32(i32 35, float %1268, float %1279)  ; FMax(a,b)
  %1281 = call float @dx.op.binary.f32(i32 35, float %1280, float %1271)  ; FMax(a,b)
  %1282 = call float @dx.op.binary.f32(i32 36, float %1276, float %1277)  ; FMin(a,b)
  %1283 = call float @dx.op.binary.f32(i32 36, float %1275, float %1282)  ; FMin(a,b)
  %1284 = call float @dx.op.binary.f32(i32 36, float %1283, float %1278)  ; FMin(a,b)
  %1285 = fmul fast float %1281, 2.550000e+02
  %1286 = fadd fast float %1285, 0x3F70101020000000
  %1287 = fptoui float %1286 to i32
  %1288 = fmul fast float %1284, 2.550000e+02
  %1289 = fadd fast float %1288, 0x3F70101020000000
  %1290 = fptoui float %1289 to i32
  %1291 = icmp ult i32 %1287, %1290
  br i1 %1291, label %1292, label %1335

; <label>:1292                                    ; preds = %1252
  %1293 = fcmp fast ogt float %47, 9.843750e-01
  %1294 = fadd fast float %1005, -4.000000e+00
  %1295 = select i1 %1293, float -4.000000e+00, float %1294
  %1296 = call float @dx.op.binary.f32(i32 35, float %1295, float 0.000000e+00)  ; FMax(a,b)
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 0
  %1299 = fadd fast float %1298, %1296
  %1300 = extractvalue %dx.types.CBufRet.f32 %1297, 2
  %1301 = fmul fast float %1299, %1300
  %1302 = call float @dx.op.unary.f32(i32 23, float %1301)  ; Log(value)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1297, 3
  %1304 = fmul fast float %1303, %1302
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 2
  %1307 = fmul fast float %1304, %1306
  %1308 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1309 = uitofp i32 %1287 to float
  %1310 = uitofp i32 %1290 to float
  %1311 = fadd fast float %1309, 5.000000e-01
  %1312 = fadd fast float %1310, 5.000000e-01
  %1313 = fmul fast float %1306, %1311
  %1314 = fmul fast float %1306, %1312
  %1315 = fadd fast float %1313, 0x3F0FFB4800000000
  %1316 = fadd fast float %1314, 0xBF0FFB4800000000
  %1317 = call float @dx.op.binary.f32(i32 35, float %1308, float %1315)  ; FMax(a,b)
  %1318 = call float @dx.op.binary.f32(i32 36, float %1317, float %1316)  ; FMin(a,b)
  %1319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1320 = extractvalue %dx.types.CBufRet.f32 %1319, 1
  %1321 = extractvalue %dx.types.CBufRet.f32 %1319, 2
  %1322 = extractvalue %dx.types.CBufRet.f32 %1319, 0
  %1323 = select i1 %785, float %1322, float 0.000000e+00
  %1324 = fmul fast float %1320, %1318
  %1325 = fadd fast float %1323, %1324
  %1326 = fadd fast float %1323, %1321
  %1327 = fsub fast float %1320, %1321
  %1328 = fadd fast float %1327, %1323
  %1329 = call float @dx.op.binary.f32(i32 35, float %1325, float %1326)  ; FMax(a,b)
  %1330 = call float @dx.op.binary.f32(i32 36, float %1329, float %1328)  ; FMin(a,b)
  %1331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1262, float %1263, float %1330, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1332 = extractvalue %dx.types.ResRet.f32 %1331, 0
  %1333 = extractvalue %dx.types.ResRet.f32 %1331, 1
  %1334 = extractvalue %dx.types.ResRet.f32 %1331, 2
  br label %1335

; <label>:1335                                    ; preds = %1292, %1252
  %1336 = phi float [ %1332, %1292 ], [ 1.000000e+00, %1252 ]
  %1337 = phi float [ %1333, %1292 ], [ 1.000000e+00, %1252 ]
  %1338 = phi float [ %1334, %1292 ], [ 1.000000e+00, %1252 ]
  %1339 = fmul fast float %1336, %1256
  %1340 = call float @dx.op.dot3.f32(i32 55, float %1336, float %1337, float %1338, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1341 = select i1 %115, float %1340, float %1336
  %1342 = select i1 %115, float %1340, float %1337
  %1343 = select i1 %115, float 1.000000e+00, float %1338
  %1344 = fmul fast float %1341, %1253
  %1345 = fmul fast float %1342, %1254
  %1346 = fmul fast float %1343, %1255
  %1347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.i32 %1347, 3
  %1349 = and i32 %1348, 3
  %1350 = icmp ne i32 %1349, 0
  %1351 = and i32 %1348, 4
  %1352 = icmp ne i32 %1351, 0
  %1353 = and i1 %1350, %1352
  %1354 = and i1 %115, %1353
  br i1 %1354, label %1355, label %1361

; <label>:1355                                    ; preds = %1335
  %1356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1356, 1
  %1358 = fadd fast float %1339, -1.000000e+00
  %1359 = fmul fast float %1357, %1358
  %1360 = fadd fast float %1359, 1.000000e+00
  br label %1361

; <label>:1361                                    ; preds = %1355, %1335
  %1362 = phi float [ %1360, %1355 ], [ %1339, %1335 ]
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 0
  br i1 %115, label %1365, label %1385

; <label>:1365                                    ; preds = %1361
  %1366 = fadd fast float %1344, %1345
  %1367 = fmul fast float %1364, %1366
  %1368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1369 = extractvalue %dx.types.CBufRet.f32 %1368, 3
  %1370 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %1371 = fsub fast float %811, %1370
  %1372 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %1373 = fmul fast float %1371, %1372
  %1374 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1375 = fsub fast float %1374, %1369
  %1376 = fmul fast float %1375, %1362
  %1377 = fadd fast float %1376, %1369
  %1378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1379 = extractvalue %dx.types.CBufRet.f32 %1378, 0
  %1380 = fsub fast float %1377, %1379
  %1381 = fmul fast float %1380, 1.000000e+01
  %1382 = call float @dx.op.unary.f32(i32 7, float %1381)  ; Saturate(value)
  %1383 = fmul fast float %1382, %761
  %1384 = fmul fast float %1377, %1383
  br label %1394

; <label>:1385                                    ; preds = %1361
  %1386 = fmul fast float %1364, %1344
  %1387 = fmul fast float %1364, %1345
  %1388 = fmul fast float %1346, %1364
  %1389 = call float @dx.op.binary.f32(i32 35, float %1387, float %1388)  ; FMax(a,b)
  %1390 = call float @dx.op.binary.f32(i32 35, float %1386, float %1389)  ; FMax(a,b)
  %1391 = call float @dx.op.binary.f32(i32 35, float %1390, float 0.000000e+00)  ; FMax(a,b)
  %1392 = fcmp fast ugt float %1391, 0x3F10000000000000
  br i1 %1392, label %1394, label %1393

; <label>:1393                                    ; preds = %1385
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1394

; <label>:1394                                    ; preds = %1393, %1385, %1365
  %1395 = phi float [ %1367, %1365 ], [ %1386, %1393 ], [ %1386, %1385 ]
  %1396 = phi float [ %1384, %1365 ], [ %1387, %1393 ], [ %1387, %1385 ]
  %1397 = phi float [ %1383, %1365 ], [ %1388, %1393 ], [ %1388, %1385 ]
  %1398 = phi float [ %1383, %1365 ], [ 0.000000e+00, %1393 ], [ 0.000000e+00, %1385 ]
  %1399 = fadd fast float %598, 0x3FE3C6EF40000000
  %1400 = call float @dx.op.unary.f32(i32 22, float %1399)  ; Frc(value)
  %1401 = call float @dx.op.unary.f32(i32 23, float %1395)  ; Log(value)
  %1402 = fadd fast float %1401, -7.000000e+00
  %1403 = call float @dx.op.unary.f32(i32 21, float %1402)  ; Exp(value)
  %1404 = fmul fast float %1400, 2.000000e+00
  %1405 = fadd fast float %1404, -1.000000e+00
  %1406 = fmul fast float %1403, %1405
  %1407 = fcmp fast ogt float %1395, 0.000000e+00
  %1408 = select i1 %1407, float %1406, float 0.000000e+00
  %1409 = fadd fast float %1408, %1395
  %1410 = fadd fast float %598, 0x3FF3C6EF40000000
  %1411 = call float @dx.op.unary.f32(i32 22, float %1410)  ; Frc(value)
  %1412 = call float @dx.op.unary.f32(i32 23, float %1396)  ; Log(value)
  %1413 = fadd fast float %1412, -7.000000e+00
  %1414 = call float @dx.op.unary.f32(i32 21, float %1413)  ; Exp(value)
  %1415 = fmul fast float %1411, 2.000000e+00
  %1416 = fadd fast float %1415, -1.000000e+00
  %1417 = fmul fast float %1414, %1416
  %1418 = fcmp fast ogt float %1396, 0.000000e+00
  %1419 = select i1 %1418, float %1417, float 0.000000e+00
  %1420 = fadd fast float %1419, %1396
  %1421 = fadd fast float %598, 0x3FFDAA66E0000000
  %1422 = call float @dx.op.unary.f32(i32 22, float %1421)  ; Frc(value)
  %1423 = call float @dx.op.unary.f32(i32 23, float %1397)  ; Log(value)
  %1424 = fadd fast float %1423, -6.000000e+00
  %1425 = call float @dx.op.unary.f32(i32 21, float %1424)  ; Exp(value)
  %1426 = fmul fast float %1422, 2.000000e+00
  %1427 = fadd fast float %1426, -1.000000e+00
  %1428 = fmul fast float %1425, %1427
  %1429 = fcmp fast ogt float %1397, 0.000000e+00
  %1430 = select i1 %1429, float %1428, float 0.000000e+00
  %1431 = fadd fast float %1430, %1397
  %1432 = select i1 %115, float %1396, float %1420
  %1433 = select i1 %115, float %1397, float %1431
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1434 = call float @dx.op.binary.f32(i32 36, float %1409, float 3.225500e+04)  ; FMin(a,b)
  %1435 = call float @dx.op.binary.f32(i32 36, float %1432, float 3.225500e+04)  ; FMin(a,b)
  %1436 = call float @dx.op.binary.f32(i32 36, float %1433, float 3.225500e+04)  ; FMin(a,b)
  %1437 = call float @dx.op.binary.f32(i32 36, float %1398, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1434)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1435)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1436)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1437)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1398)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1398)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1398)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1398)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!33 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 7, i32 255, i32 255, i32 255, i32 7, i32 7, i32 7, i32 0, i32 0, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !60}
!35 = !{!36, !56, null}
!36 = !{!37, !40, !42, !43, !45, !48, !50, !52, !53, !55}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 8}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 2, i8 0, !39}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 3, i8 0, !39}
!44 = !{i32 3}
!45 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 4, i8 0, !47}
!46 = !{i32 4}
!47 = !{i32 3, i32 3}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 3, i32 1, i8 2, i32 5, i8 0, !47}
!49 = !{i32 5}
!50 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 6, i8 0, !39}
!51 = !{i32 8}
!52 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 7, i8 0, !39}
!53 = !{i32 8, !"COLOR", i8 5, i8 0, !44, i8 1, i32 1, i8 3, i32 8, i8 0, !54}
!54 = !{i32 3, i32 7}
!55 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!56 = !{!57, !58}
!57 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!58 = !{i32 1, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!59 = !{i32 1}
!60 = !{i32 0, i64 24}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}

