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
; shader hash: 95aa86922d39b52b4c83fd05cee64cc7
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
  %170 = and i32 %131, 16
  %171 = icmp ne i32 %170, 0
  %172 = select i1 %171, float 1.000000e+00, float %44
  %173 = add i32 %24, 96
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = add i32 %175, 0
  %177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %180 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %177, %dx.types.Handle %50, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float %179, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = fmul fast float %181, %172
  %183 = icmp eq i32 %170, 0
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
  br i1 %249, label %527, label %250, !dx.controlflow.hints !61

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
  %476 = fmul fast float %39, 2.000000e+00
  %477 = fmul fast float %40, 2.000000e+00
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
  %524 = fmul fast float %523, %44
  %525 = fmul fast float %522, %208
  %526 = fmul fast float %525, %523
  br label %527

; <label>:527                                     ; preds = %514, %247
  %528 = phi float [ %519, %514 ], [ %41, %247 ]
  %529 = phi float [ %520, %514 ], [ %42, %247 ]
  %530 = phi float [ %521, %514 ], [ %43, %247 ]
  %531 = phi float [ %526, %514 ], [ %208, %247 ]
  %532 = phi float [ %524, %514 ], [ %44, %247 ]
  %533 = phi float [ %516, %514 ], [ %29, %247 ]
  %534 = phi float [ %517, %514 ], [ %30, %247 ]
  %535 = phi float [ %518, %514 ], [ %31, %247 ]
  %536 = fmul fast float %533, %32
  %537 = fmul fast float %534, %32
  %538 = fmul fast float %535, %32
  %539 = fmul fast float %533, %38
  %540 = fmul fast float %534, %38
  %541 = fmul fast float %535, %38
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 2
  %544 = fptosi float %48 to i32
  %545 = sitofp i32 %544 to float
  %546 = fadd fast float %543, %545
  %547 = fmul fast float %546, 0x3FE3C6EF40000000
  %548 = frem fast float %53, 2.560000e+02
  %549 = frem fast float %54, 2.560000e+02
  %550 = fptoui float %548 to i32
  %551 = fptoui float %549 to i32
  %552 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %550, i32 %551, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = fadd fast float %553, %547
  %555 = call float @dx.op.unary.f32(i32 22, float %554)  ; Frc(value)
  %556 = and i32 %131, 1
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %618, label %558, !dx.controlflow.hints !64

; <label>:558                                     ; preds = %527
  %559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 2
  %561 = extractvalue %dx.types.ResRet.f32 %559, 3
  %562 = add i32 %128, 16
  %563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = extractvalue %dx.types.ResRet.f32 %563, 1
  %566 = extractvalue %dx.types.ResRet.f32 %563, 2
  %567 = add i32 %128, 32
  %568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = extractvalue %dx.types.ResRet.f32 %568, 2
  %572 = and i32 %131, 2
  %573 = icmp eq i32 %572, 0
  %574 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %575 = call float @dx.op.unary.f32(i32 25, float %574)  ; Rsqrt(value)
  %576 = fmul fast float %575, %35
  %577 = fmul fast float %575, %36
  %578 = fmul fast float %575, %37
  %579 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %580 = call float @dx.op.unary.f32(i32 25, float %579)  ; Rsqrt(value)
  %581 = fmul fast float %580, %88
  %582 = fmul fast float %580, %89
  %583 = fmul fast float %580, %90
  %584 = call float @dx.op.dot3.f32(i32 55, float %581, float %582, float %583, float %576, float %577, float %578)  ; Dot3(ax,ay,az,bx,by,bz)
  %585 = fmul fast float %584, %584
  %586 = fmul fast float %585, %560
  %587 = fadd fast float %586, %561
  %588 = call float @dx.op.unary.f32(i32 7, float %587)  ; Saturate(value)
  br i1 %573, label %589, label %599, !dx.controlflow.hints !65

; <label>:589                                     ; preds = %558
  %590 = extractvalue %dx.types.ResRet.f32 %559, 1
  %591 = extractvalue %dx.types.ResRet.f32 %559, 0
  %592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %593 = extractvalue %dx.types.CBufRet.f32 %592, 3
  %594 = fmul fast float %593, %579
  %595 = fsub fast float %591, %594
  %596 = fmul fast float %595, %590
  %597 = call float @dx.op.unary.f32(i32 7, float %596)  ; Saturate(value)
  %598 = fmul fast float %597, %588
  br label %599

; <label>:599                                     ; preds = %589, %558
  %600 = phi float [ %598, %589 ], [ %588, %558 ]
  %601 = fsub fast float %564, %569
  %602 = fsub fast float %565, %570
  %603 = fsub fast float %566, %571
  %604 = fmul fast float %600, %601
  %605 = fmul fast float %600, %602
  %606 = fmul fast float %600, %603
  %607 = fadd fast float %604, %569
  %608 = fadd fast float %605, %570
  %609 = fadd fast float %606, %571
  %610 = fmul fast float %607, %528
  %611 = fmul fast float %608, %529
  %612 = fmul fast float %609, %530
  %613 = fmul fast float %607, %536
  %614 = fmul fast float %608, %537
  %615 = fmul fast float %609, %538
  %616 = fmul fast float %600, %531
  %617 = fmul fast float %600, %532
  br label %618

; <label>:618                                     ; preds = %599, %527
  %619 = phi float [ %610, %599 ], [ %528, %527 ]
  %620 = phi float [ %611, %599 ], [ %529, %527 ]
  %621 = phi float [ %612, %599 ], [ %530, %527 ]
  %622 = phi float [ %616, %599 ], [ %531, %527 ]
  %623 = phi float [ %617, %599 ], [ %532, %527 ]
  %624 = phi float [ %613, %599 ], [ %536, %527 ]
  %625 = phi float [ %614, %599 ], [ %537, %527 ]
  %626 = phi float [ %615, %599 ], [ %538, %527 ]
  %627 = add i32 %24, 88
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = add i32 %629, 0
  %631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %632 = add i32 %24, 24
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = extractvalue %dx.types.ResRet.f32 %635, 1
  %638 = extractvalue %dx.types.ResRet.f32 %635, 2
  %639 = extractvalue %dx.types.ResRet.f32 %635, 3
  %640 = and i32 %634, 255
  %641 = uitofp i32 %640 to float
  %642 = lshr i32 %634, 8
  %643 = and i32 %642, 255
  %644 = uitofp i32 %643 to float
  %645 = fmul fast float %639, %641
  %646 = fadd fast float %645, %644
  %647 = fmul fast float %646, 0x3F70101000000000
  %648 = add i32 %24, 56
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = and i32 %650, 255
  %652 = uitofp i32 %651 to float
  %653 = fmul fast float %652, 0x3F70101020000000
  %654 = lshr i32 %650, 8
  %655 = and i32 %654, 255
  %656 = uitofp i32 %655 to float
  %657 = fmul fast float %656, 0x3F70101020000000
  %658 = lshr i32 %650, 16
  %659 = and i32 %658, 255
  %660 = uitofp i32 %659 to float
  %661 = fmul fast float %660, 0x3F70101020000000
  %662 = add i32 %24, 92
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %662, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = add i32 %664, 0
  %666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %666, %dx.types.Handle %49, float %168, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %668 = extractvalue %dx.types.ResRet.f32 %667, 0
  %669 = extractvalue %dx.types.ResRet.f32 %667, 1
  %670 = extractvalue %dx.types.ResRet.f32 %667, 2
  %671 = add i32 %24, 44
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %671, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = shl i32 %673, 4
  %675 = and i32 %674, 32752
  %676 = call float @dx.op.legacyF16ToF32(i32 131, i32 %675)  ; LegacyF16ToF32(value)
  %677 = lshr i32 %673, 7
  %678 = and i32 %677, 32752
  %679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %678)  ; LegacyF16ToF32(value)
  %680 = lshr i32 %673, 22
  %681 = shl nuw nsw i32 %680, 5
  %682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %681)  ; LegacyF16ToF32(value)
  %683 = fmul fast float %676, %668
  %684 = fmul fast float %679, %669
  %685 = fmul fast float %682, %670
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 0
  %688 = fmul fast float %683, %687
  %689 = fmul fast float %684, %687
  %690 = fmul fast float %685, %687
  %691 = add i32 %24, 48
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = lshr i32 %693, 22
  %695 = shl nuw nsw i32 %694, 5
  %696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %695)  ; LegacyF16ToF32(value)
  %697 = fmul fast float %696, %688
  %698 = select i1 %111, float %697, float %688
  %699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  %701 = extractvalue %dx.types.ResRet.f32 %699, 1
  %702 = extractvalue %dx.types.ResRet.f32 %699, 2
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 1
  %705 = fmul fast float %704, %700
  %706 = fmul fast float %704, %701
  %707 = fmul fast float %704, %702
  %708 = fadd fast float %647, 0xBFB99999A0000000
  %709 = call float @dx.op.unary.f32(i32 7, float %708)  ; Saturate(value)
  %710 = fmul fast float %709, 0x3FF1C71C80000000
  %711 = fsub fast float 1.000000e+00, %710
  %712 = call float @dx.op.unary.f32(i32 7, float %711)  ; Saturate(value)
  %713 = fmul fast float %636, %619
  %714 = fmul fast float %653, %653
  %715 = fmul fast float %714, %713
  %716 = fmul fast float %715, %712
  %717 = fmul fast float %637, %620
  %718 = fmul fast float %657, %657
  %719 = fmul fast float %718, %717
  %720 = fmul fast float %719, %712
  %721 = fmul fast float %638, %621
  %722 = fmul fast float %661, %661
  %723 = fmul fast float %722, %721
  %724 = fmul fast float %723, %712
  %725 = call float @dx.op.unary.f32(i32 7, float %716)  ; Saturate(value)
  %726 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %727 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %728 = fmul fast float %698, %624
  %729 = fmul fast float %689, %625
  %730 = fmul fast float %690, %626
  %731 = call float @dx.op.dot3.f32(i32 55, float %728, float %729, float %730, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %732 = select i1 %111, float 0.000000e+00, float %728
  %733 = select i1 %111, float %731, float %729
  %734 = select i1 %111, float 0.000000e+00, float %730
  %735 = fmul fast float %539, %698
  %736 = fmul fast float %540, %689
  %737 = fmul fast float %541, %690
  %738 = call float @dx.op.dot3.f32(i32 55, float %725, float %726, float %727, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %739 = add i32 %24, 32
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = and i32 %741, 255
  %743 = uitofp i32 %742 to float
  %744 = lshr i32 %741, 8
  %745 = and i32 %744, 255
  %746 = uitofp i32 %745 to float
  %747 = fmul fast float %746, %738
  %748 = fadd fast float %747, %743
  %749 = fmul fast float %748, 0x3F70101020000000
  %750 = call float @dx.op.unary.f32(i32 7, float %749)  ; Saturate(value)
  %751 = and i32 %131, 8192
  %752 = icmp eq i32 %751, 0
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 0
  br i1 %752, label %761, label %755, !dx.controlflow.hints !66

; <label>:755                                     ; preds = %618
  %756 = add i32 %128, 176
  %757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = fcmp fast oge float %758, 0.000000e+00
  %760 = select i1 %759, float %758, float %754
  br label %768

; <label>:761                                     ; preds = %618
  %762 = add i32 %24, 72
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = bitcast i32 %764 to float
  %766 = fcmp fast oge float %765, 0.000000e+00
  %767 = select i1 %766, float %765, float %754
  br label %768

; <label>:768                                     ; preds = %761, %755
  %769 = phi float [ %760, %755 ], [ %767, %761 ]
  %770 = fmul fast float %623, %622
  %771 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %211, i32 %212, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %772 = extractvalue %dx.types.ResRet.i32 %771, 0
  %773 = lshr i32 %772, 18
  %774 = uitofp i32 %773 to float
  %775 = fmul fast float %774, 0x3F4C00EBA0000000
  %776 = call float @dx.op.unary.f32(i32 21, float %775)  ; Exp(value)
  %777 = fadd fast float %776, -1.000000e+00
  %778 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %779 = extractvalue %dx.types.Dimensions %778, 0
  %780 = sitofp i32 %779 to float
  %781 = extractvalue %dx.types.Dimensions %778, 1
  %782 = sitofp i32 %781 to float
  %783 = fcmp fast oge float %209, %780
  %784 = fcmp fast oge float %210, %782
  %785 = or i1 %783, %784
  %786 = select i1 %785, float 0x4197782600000000, float %777
  %787 = icmp eq i32 %127, 3
  %788 = fcmp fast ogt float %48, %786
  %789 = and i1 %235, %788
  %790 = or i1 %787, %789
  %791 = icmp eq i32 %127, 2
  %792 = fcmp fast ole float %48, %786
  %793 = and i1 %791, %792
  %794 = or i1 %793, %790
  %795 = fmul fast float %735, %705
  %796 = fmul fast float %736, %706
  %797 = fmul fast float %737, %707
  %798 = fadd fast float %795, %732
  %799 = fadd fast float %733, %796
  %800 = fadd fast float %797, %734
  %801 = fmul fast float %798, %622
  %802 = fmul fast float %799, %622
  %803 = fmul fast float %800, %622
  %804 = fmul fast float %705, %622
  %805 = fmul fast float %706, %622
  %806 = fmul fast float %707, %622
  %807 = fsub fast float 1.000000e+00, %622
  %808 = call float @dx.op.dot3.f32(i32 55, float %807, float %807, float %807, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %809 = fsub fast float 1.000000e+00, %808
  %810 = fmul fast float %769, %750
  %811 = fsub fast float 1.000000e+00, %770
  %812 = fsub fast float %811, %750
  %813 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  %814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.f32 %814, 3
  %816 = fmul fast float %815, %813
  %817 = fadd fast float %816, %810
  %818 = and i32 %131, 1048576
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %911, label %820, !dx.controlflow.hints !67

; <label>:820                                     ; preds = %768
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 2
  %823 = extractvalue %dx.types.CBufRet.f32 %821, 3
  %824 = fmul fast float %822, %53
  %825 = fmul fast float %823, %54
  %826 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  %827 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  %828 = select i1 %794, i32 2, i32 0
  %829 = or i32 %828, 1
  %830 = uitofp i32 %829 to float
  %831 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %826, float %827, float %830, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = extractvalue %dx.types.ResRet.f32 %831, 1
  %834 = extractvalue %dx.types.ResRet.f32 %831, 2
  %835 = extractvalue %dx.types.ResRet.f32 %831, 3
  %836 = add nuw nsw i32 %828, 2
  %837 = uitofp i32 %836 to float
  %838 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %826, float %827, float %837, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %839 = extractvalue %dx.types.ResRet.f32 %838, 0
  %840 = extractvalue %dx.types.ResRet.f32 %838, 1
  %841 = extractvalue %dx.types.ResRet.f32 %838, 2
  %842 = extractvalue %dx.types.ResRet.f32 %838, 3
  %843 = call float @dx.op.binary.f32(i32 35, float %833, float %834)  ; FMax(a,b)
  %844 = call float @dx.op.binary.f32(i32 35, float %832, float %843)  ; FMax(a,b)
  %845 = call float @dx.op.binary.f32(i32 35, float %844, float %835)  ; FMax(a,b)
  %846 = call float @dx.op.binary.f32(i32 36, float %840, float %841)  ; FMin(a,b)
  %847 = call float @dx.op.binary.f32(i32 36, float %839, float %846)  ; FMin(a,b)
  %848 = call float @dx.op.binary.f32(i32 36, float %847, float %842)  ; FMin(a,b)
  %849 = fmul fast float %845, 2.550000e+02
  %850 = fadd fast float %849, 0x3F70101020000000
  %851 = fptoui float %850 to i32
  %852 = fmul fast float %848, 2.550000e+02
  %853 = fadd fast float %852, 0x3F70101020000000
  %854 = fptoui float %853 to i32
  %855 = icmp ult i32 %851, %854
  br i1 %855, label %856, label %904

; <label>:856                                     ; preds = %820
  %857 = fcmp fast ogt float %47, 9.843750e-01
  %858 = fadd fast float %48, -4.000000e+00
  %859 = select i1 %857, float -4.000000e+00, float %858
  %860 = call float @dx.op.binary.f32(i32 35, float %859, float 0.000000e+00)  ; FMax(a,b)
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 0
  %863 = fadd fast float %862, %860
  %864 = extractvalue %dx.types.CBufRet.f32 %861, 2
  %865 = fmul fast float %863, %864
  %866 = call float @dx.op.unary.f32(i32 23, float %865)  ; Log(value)
  %867 = extractvalue %dx.types.CBufRet.f32 %861, 3
  %868 = fmul fast float %867, %866
  %869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %870 = extractvalue %dx.types.CBufRet.f32 %869, 2
  %871 = fmul fast float %868, %870
  %872 = call float @dx.op.unary.f32(i32 7, float %871)  ; Saturate(value)
  %873 = uitofp i32 %851 to float
  %874 = uitofp i32 %854 to float
  %875 = fadd fast float %873, 5.000000e-01
  %876 = fadd fast float %874, 5.000000e-01
  %877 = fmul fast float %870, %875
  %878 = fmul fast float %870, %876
  %879 = fadd fast float %877, 0x3F0FFB4800000000
  %880 = fadd fast float %878, 0xBF0FFB4800000000
  %881 = call float @dx.op.binary.f32(i32 35, float %872, float %879)  ; FMax(a,b)
  %882 = call float @dx.op.binary.f32(i32 36, float %881, float %880)  ; FMin(a,b)
  %883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.f32 %883, 1
  %885 = extractvalue %dx.types.CBufRet.f32 %883, 2
  %886 = extractvalue %dx.types.CBufRet.f32 %883, 0
  %887 = select i1 %794, float %886, float 0.000000e+00
  %888 = fmul fast float %884, %882
  %889 = fadd fast float %887, %888
  %890 = fadd fast float %887, %885
  %891 = fsub fast float %884, %885
  %892 = fadd fast float %891, %887
  %893 = call float @dx.op.binary.f32(i32 35, float %889, float %890)  ; FMax(a,b)
  %894 = call float @dx.op.binary.f32(i32 36, float %893, float %892)  ; FMin(a,b)
  %895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %826, float %827, float %894, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 0
  %897 = extractvalue %dx.types.ResRet.f32 %895, 1
  %898 = extractvalue %dx.types.ResRet.f32 %895, 2
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 1
  %901 = fmul fast float %900, %896
  %902 = fmul fast float %900, %897
  %903 = fmul fast float %900, %898
  br label %904

; <label>:904                                     ; preds = %856, %820
  %905 = phi float [ %901, %856 ], [ 1.000000e+00, %820 ]
  %906 = phi float [ %902, %856 ], [ 1.000000e+00, %820 ]
  %907 = phi float [ %903, %856 ], [ 1.000000e+00, %820 ]
  %908 = fmul fast float %905, %801
  %909 = fmul fast float %906, %802
  %910 = fmul fast float %907, %803
  br label %911

; <label>:911                                     ; preds = %904, %768
  %912 = phi float [ %908, %904 ], [ %801, %768 ]
  %913 = phi float [ %909, %904 ], [ %802, %768 ]
  %914 = phi float [ %910, %904 ], [ %803, %768 ]
  %915 = and i32 %131, 2097152
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %921, label %917, !dx.controlflow.hints !68

; <label>:917                                     ; preds = %911
  %918 = add i32 %128, 192
  %919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %918, i32 undef)  ; BufferLoad(srv,index,wot)
  %920 = extractvalue %dx.types.ResRet.f32 %919, 0
  br label %924

; <label>:921                                     ; preds = %911
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 3
  br label %924

; <label>:924                                     ; preds = %921, %917
  %925 = phi float [ %920, %917 ], [ %923, %921 ]
  %926 = fmul fast float %804, %725
  %927 = fmul fast float %805, %726
  %928 = fmul fast float %806, %727
  br i1 %789, label %929, label %1038

; <label>:929                                     ; preds = %924
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 2
  %932 = extractvalue %dx.types.CBufRet.f32 %930, 3
  %933 = fmul fast float %931, %53
  %934 = fmul fast float %932, %54
  %935 = call float @dx.op.unary.f32(i32 7, float %933)  ; Saturate(value)
  %936 = call float @dx.op.unary.f32(i32 7, float %934)  ; Saturate(value)
  %937 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %935, float %936, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %938 = extractvalue %dx.types.ResRet.f32 %937, 0
  %939 = extractvalue %dx.types.ResRet.f32 %937, 1
  %940 = extractvalue %dx.types.ResRet.f32 %937, 2
  %941 = extractvalue %dx.types.ResRet.f32 %937, 3
  %942 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %935, float %936, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %943 = extractvalue %dx.types.ResRet.f32 %942, 0
  %944 = extractvalue %dx.types.ResRet.f32 %942, 1
  %945 = extractvalue %dx.types.ResRet.f32 %942, 2
  %946 = extractvalue %dx.types.ResRet.f32 %942, 3
  %947 = call float @dx.op.binary.f32(i32 35, float %939, float %940)  ; FMax(a,b)
  %948 = call float @dx.op.binary.f32(i32 35, float %938, float %947)  ; FMax(a,b)
  %949 = call float @dx.op.binary.f32(i32 35, float %948, float %941)  ; FMax(a,b)
  %950 = call float @dx.op.binary.f32(i32 36, float %944, float %945)  ; FMin(a,b)
  %951 = call float @dx.op.binary.f32(i32 36, float %943, float %950)  ; FMin(a,b)
  %952 = call float @dx.op.binary.f32(i32 36, float %951, float %946)  ; FMin(a,b)
  %953 = fmul fast float %949, 2.550000e+02
  %954 = fadd fast float %953, 0x3F70101020000000
  %955 = fptoui float %954 to i32
  %956 = fmul fast float %952, 2.550000e+02
  %957 = fadd fast float %956, 0x3F70101020000000
  %958 = fptoui float %957 to i32
  %959 = icmp ult i32 %955, %958
  br i1 %959, label %960, label %1011

; <label>:960                                     ; preds = %929
  %961 = fcmp fast ogt float %47, 9.843750e-01
  %962 = fadd fast float %48, -4.000000e+00
  %963 = select i1 %961, float -4.000000e+00, float %962
  %964 = call float @dx.op.binary.f32(i32 35, float %963, float 0.000000e+00)  ; FMax(a,b)
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 0
  %967 = fadd fast float %966, %964
  %968 = extractvalue %dx.types.CBufRet.f32 %965, 2
  %969 = fmul fast float %967, %968
  %970 = call float @dx.op.unary.f32(i32 23, float %969)  ; Log(value)
  %971 = extractvalue %dx.types.CBufRet.f32 %965, 3
  %972 = fmul fast float %971, %970
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 2
  %975 = fmul fast float %972, %974
  %976 = call float @dx.op.unary.f32(i32 7, float %975)  ; Saturate(value)
  %977 = uitofp i32 %955 to float
  %978 = uitofp i32 %958 to float
  %979 = fadd fast float %977, 5.000000e-01
  %980 = fadd fast float %978, 5.000000e-01
  %981 = fmul fast float %974, %979
  %982 = fmul fast float %974, %980
  %983 = fadd fast float %981, 0x3F0FFB4800000000
  %984 = fadd fast float %982, 0xBF0FFB4800000000
  %985 = call float @dx.op.binary.f32(i32 35, float %976, float %983)  ; FMax(a,b)
  %986 = call float @dx.op.binary.f32(i32 36, float %985, float %984)  ; FMin(a,b)
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 1
  %989 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %990 = extractvalue %dx.types.CBufRet.f32 %987, 0
  %991 = fmul fast float %988, %986
  %992 = fadd fast float %990, %991
  %993 = fadd fast float %990, %989
  %994 = fsub fast float %988, %989
  %995 = fadd fast float %994, %990
  %996 = call float @dx.op.binary.f32(i32 35, float %992, float %993)  ; FMax(a,b)
  %997 = call float @dx.op.binary.f32(i32 36, float %996, float %995)  ; FMin(a,b)
  %998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %935, float %936, float %997, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %999 = extractvalue %dx.types.ResRet.f32 %998, 0
  %1000 = extractvalue %dx.types.ResRet.f32 %998, 1
  %1001 = extractvalue %dx.types.ResRet.f32 %998, 2
  %1002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %935, float %936, float %997, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1003 = extractvalue %dx.types.ResRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.ResRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.ResRet.f32 %1002, 2
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 1
  %1008 = fmul fast float %1007, %1003
  %1009 = fmul fast float %1007, %1004
  %1010 = fmul fast float %1007, %1005
  br label %1011

; <label>:1011                                    ; preds = %960, %929
  %1012 = phi float [ %999, %960 ], [ 1.000000e+00, %929 ]
  %1013 = phi float [ %1000, %960 ], [ 1.000000e+00, %929 ]
  %1014 = phi float [ %1001, %960 ], [ 1.000000e+00, %929 ]
  %1015 = phi float [ %1008, %960 ], [ 0.000000e+00, %929 ]
  %1016 = phi float [ %1009, %960 ], [ 0.000000e+00, %929 ]
  %1017 = phi float [ %1010, %960 ], [ 0.000000e+00, %929 ]
  %1018 = fmul fast float %1015, %809
  %1019 = fmul fast float %1016, %809
  %1020 = fmul fast float %1017, %809
  %1021 = call float @dx.op.dot3.f32(i32 55, float %1012, float %1013, float %1014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1022 = call float @dx.op.dot3.f32(i32 55, float %1018, float %1019, float %1020, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1023 = select i1 %111, float %1021, float %1012
  %1024 = select i1 %111, float %1021, float %1013
  %1025 = select i1 %111, float 1.000000e+00, float %1014
  %1026 = select i1 %111, float %1022, float %1018
  %1027 = select i1 %111, float 0.000000e+00, float %1019
  %1028 = select i1 %111, float 0.000000e+00, float %1020
  %1029 = fmul fast float %1023, %926
  %1030 = fmul fast float %1024, %927
  %1031 = fmul fast float %1025, %928
  %1032 = fadd fast float %1029, %1026
  %1033 = fadd fast float %1030, %1027
  %1034 = fadd fast float %1028, %1031
  %1035 = fmul fast float %1023, %912
  %1036 = fmul fast float %1024, %913
  %1037 = fmul fast float %1025, %914
  br label %1038

; <label>:1038                                    ; preds = %1011, %924
  %1039 = phi float [ %786, %1011 ], [ %48, %924 ]
  %1040 = phi float [ %1032, %1011 ], [ %926, %924 ]
  %1041 = phi float [ %1033, %1011 ], [ %927, %924 ]
  %1042 = phi float [ %1034, %1011 ], [ %928, %924 ]
  %1043 = phi float [ %1035, %1011 ], [ %912, %924 ]
  %1044 = phi float [ %1036, %1011 ], [ %913, %924 ]
  %1045 = phi float [ %1037, %1011 ], [ %914, %924 ]
  %1046 = phi float [ %1012, %1011 ], [ 1.000000e+00, %924 ]
  br i1 %794, label %1348, label %1047

; <label>:1047                                    ; preds = %1038
  %1048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = fmul fast float %1049, %809
  %1057 = fmul fast float %1050, %809
  %1058 = fmul fast float %1051, %809
  %1059 = fmul fast float %1053, %1046
  %1060 = call float @dx.op.dot3.f32(i32 55, float %1053, float %1054, float %1055, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1061 = call float @dx.op.dot3.f32(i32 55, float %1056, float %1057, float %1058, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1062 = select i1 %111, float %1060, float %1053
  %1063 = select i1 %111, float %1060, float %1054
  %1064 = select i1 %111, float 1.000000e+00, float %1055
  %1065 = select i1 %111, float %1061, float %1056
  %1066 = select i1 %111, float 0.000000e+00, float %1057
  %1067 = select i1 %111, float 0.000000e+00, float %1058
  %1068 = fmul fast float %1062, %1040
  %1069 = fmul fast float %1063, %1041
  %1070 = fmul fast float %1064, %1042
  %1071 = fadd fast float %1068, %1065
  %1072 = fadd fast float %1069, %1066
  %1073 = fadd fast float %1070, %1067
  %1074 = fmul fast float %1062, %1043
  %1075 = fmul fast float %1063, %1044
  %1076 = fmul fast float %1064, %1045
  %1077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1078 = extractvalue %dx.types.CBufRet.i32 %1077, 0
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %1348, label %1080, !dx.controlflow.hints !69

; <label>:1080                                    ; preds = %1047
  %1081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.f32 %1081, 2
  %1083 = extractvalue %dx.types.CBufRet.f32 %1081, 3
  %1084 = fmul fast float %1082, %53
  %1085 = fmul fast float %1083, %54
  %1086 = fmul fast float %1084, 2.000000e+00
  %1087 = fmul fast float %1085, 2.000000e+00
  %1088 = fsub fast float 1.000000e+00, %1086
  %1089 = fsub fast float 1.000000e+00, %1087
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.CBufRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.CBufRet.f32 %1090, 2
  %1094 = fmul fast float %1088, %1091
  %1095 = fmul fast float %1088, %1092
  %1096 = fmul fast float %1088, %1093
  %1097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1098 = extractvalue %dx.types.CBufRet.f32 %1097, 0
  %1099 = extractvalue %dx.types.CBufRet.f32 %1097, 1
  %1100 = extractvalue %dx.types.CBufRet.f32 %1097, 2
  %1101 = fmul fast float %1089, %1098
  %1102 = fmul fast float %1089, %1099
  %1103 = fmul fast float %1089, %1100
  %1104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1105 = extractvalue %dx.types.CBufRet.f32 %1104, 0
  %1106 = extractvalue %dx.types.CBufRet.f32 %1104, 1
  %1107 = extractvalue %dx.types.CBufRet.f32 %1104, 2
  %1108 = fadd fast float %1101, %1105
  %1109 = fadd fast float %1108, %1094
  %1110 = fadd fast float %1102, %1106
  %1111 = fadd fast float %1110, %1095
  %1112 = fadd fast float %1103, %1107
  %1113 = fadd fast float %1112, %1096
  %1114 = fmul fast float %1109, %1039
  %1115 = fmul fast float %1111, %1039
  %1116 = fmul fast float %1113, %1039
  %1117 = fmul fast float %1114, %1114
  %1118 = fmul fast float %1115, %1115
  %1119 = fadd fast float %1117, %1118
  %1120 = fmul fast float %1116, %1116
  %1121 = fadd fast float %1119, %1120
  %1122 = call float @dx.op.unary.f32(i32 24, float %1121)  ; Sqrt(value)
  %1123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.f32 %1123, 0
  %1125 = fsub fast float %1122, %1124
  %1126 = extractvalue %dx.types.CBufRet.f32 %1123, 2
  %1127 = fmul fast float %1125, %1126
  %1128 = call float @dx.op.unary.f32(i32 7, float %1127)  ; Saturate(value)
  %1129 = fadd fast float %1128, -5.000000e-01
  %1130 = fmul fast float %1129, 2.000000e+00
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 2
  %1133 = call float @dx.op.binary.f32(i32 36, float %1132, float %1130)  ; FMin(a,b)
  %1134 = fsub fast float -0.000000e+00, %1132
  %1135 = fcmp fast ogt float %1133, %1134
  br i1 %1135, label %1136, label %1348, !dx.controlflow.hints !70

; <label>:1136                                    ; preds = %1080
  %1137 = fmul fast float %1133, 5.000000e-01
  %1138 = fadd fast float %1137, 5.000000e-01
  %1139 = call float @dx.op.unary.f32(i32 22, float %1138)  ; Frc(value)
  %1140 = call float @dx.op.unary.f32(i32 27, float %1139)  ; Round_ni(value)
  %1141 = call float @dx.op.unary.f32(i32 22, float %1139)  ; Frc(value)
  %1142 = fmul fast float %1141, 2.000000e+00
  %1143 = fadd fast float %1142, -1.000000e+00
  %1144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1084, float %1085, float %1140, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = extractvalue %dx.types.ResRet.f32 %1144, 1
  %1147 = extractvalue %dx.types.ResRet.f32 %1144, 2
  %1148 = extractvalue %dx.types.ResRet.f32 %1144, 3
  %1149 = fadd fast float %1145, -5.000000e-01
  %1150 = fadd fast float %1147, -5.000000e-01
  %1151 = fmul fast float %1149, 0xBFD5555560000000
  %1152 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1150, float %1151)  ; FMad(a,b,c)
  %1153 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1146, float 0.000000e+00)  ; FMad(a,b,c)
  %1154 = fadd fast float %1153, %1148
  %1155 = fmul fast float %1149, -7.500000e-01
  %1156 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1150, float %1155)  ; FMad(a,b,c)
  %1157 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1146, float 0.000000e+00)  ; FMad(a,b,c)
  %1158 = fadd fast float %1157, %1148
  %1159 = call float @dx.op.binary.f32(i32 35, float %1152, float -1.000000e+00)  ; FMax(a,b)
  %1160 = call float @dx.op.binary.f32(i32 35, float %1154, float -1.000000e+00)  ; FMax(a,b)
  %1161 = call float @dx.op.binary.f32(i32 35, float %1156, float -1.000000e+00)  ; FMax(a,b)
  %1162 = call float @dx.op.binary.f32(i32 35, float %1158, float -1.000000e+00)  ; FMax(a,b)
  %1163 = call float @dx.op.binary.f32(i32 36, float %1159, float 1.000000e+00)  ; FMin(a,b)
  %1164 = call float @dx.op.binary.f32(i32 36, float %1160, float 1.000000e+00)  ; FMin(a,b)
  %1165 = call float @dx.op.binary.f32(i32 36, float %1161, float 1.000000e+00)  ; FMin(a,b)
  %1166 = call float @dx.op.binary.f32(i32 36, float %1162, float 1.000000e+00)  ; FMin(a,b)
  %1167 = fcmp fast olt float %1163, 0x3FEFFF8020000000
  br i1 %1167, label %1168, label %1283, !dx.controlflow.hints !71

; <label>:1168                                    ; preds = %1136
  %1169 = extractvalue %dx.types.CBufRet.f32 %1131, 3
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.CBufRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.CBufRet.f32 %1170, 2
  %1174 = extractvalue %dx.types.CBufRet.f32 %1170, 3
  %1175 = fsub fast float %1171, %1163
  %1176 = fsub fast float %1172, %1164
  %1177 = fsub fast float %1173, %1165
  %1178 = fsub fast float %1174, %1166
  %1179 = fmul fast float %1175, %1169
  %1180 = fmul fast float %1176, %1169
  %1181 = fmul fast float %1177, %1169
  %1182 = fmul fast float %1178, %1169
  %1183 = fadd fast float %1179, %1163
  %1184 = fadd fast float %1180, %1164
  %1185 = fsub fast float -0.000000e+00, %1184
  %1186 = fadd fast float %1181, %1165
  %1187 = fadd fast float %1182, %1166
  %1188 = fmul fast float %1183, %1183
  %1189 = fsub fast float %1184, %1188
  %1190 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1189)  ; FMax(a,b)
  %1191 = fdiv fast float 1.000000e+00, %1190
  %1192 = fmul fast float %1184, %1183
  %1193 = fsub fast float %1186, %1192
  %1194 = fsub fast float %1143, %1183
  %1195 = fmul fast float %1143, %1143
  %1196 = fsub fast float %1195, %1184
  %1197 = fmul fast float %1194, %1191
  %1198 = fmul fast float %1197, %1193
  %1199 = fsub fast float %1196, %1198
  %1200 = fmul fast float %1184, %1184
  %1201 = fsub fast float %1187, %1200
  %1202 = fmul fast float %1193, %1193
  %1203 = fmul fast float %1202, %1191
  %1204 = fsub fast float %1201, %1203
  %1205 = fdiv fast float %1199, %1204
  %1206 = fmul fast float %1193, %1205
  %1207 = fsub fast float %1194, %1206
  %1208 = fmul fast float %1207, %1191
  %1209 = fmul fast float %1208, %1183
  %1210 = fsub fast float 1.000000e+00, %1209
  %1211 = fmul fast float %1184, %1205
  %1212 = fsub fast float %1210, %1211
  %1213 = fmul fast float %1208, %1208
  %1214 = fmul fast float %1205, 4.000000e+00
  %1215 = fmul fast float %1214, %1212
  %1216 = fsub fast float %1213, %1215
  %1217 = call float @dx.op.unary.f32(i32 24, float %1216)  ; Sqrt(value)
  %1218 = fcmp fast oge float %1208, 0.000000e+00
  %1219 = fsub fast float -0.000000e+00, %1217
  %1220 = select i1 %1218, float %1219, float %1217
  %1221 = fsub fast float %1220, %1208
  %1222 = fdiv fast float %1221, %1205
  %1223 = fdiv fast float %1212, %1221
  %1224 = fmul fast float %1222, 5.000000e-01
  %1225 = fmul fast float %1223, 2.000000e+00
  %1226 = select i1 %1218, float %1224, float %1225
  %1227 = select i1 %1218, float %1225, float %1224
  %1228 = call float @dx.op.binary.f32(i32 35, float %1226, float %1227)  ; FMax(a,b)
  %1229 = call float @dx.op.binary.f32(i32 36, float %1226, float %1227)  ; FMin(a,b)
  %1230 = fcmp fast ogt float %1143, %1229
  br i1 %1230, label %1231, label %1241

; <label>:1231                                    ; preds = %1168
  %1232 = fsub fast float %1143, %1229
  %1233 = fsub fast float %1228, %1229
  %1234 = fmul fast float %1232, %1233
  %1235 = fmul fast float %1228, %1143
  %1236 = fadd fast float %1228, %1143
  %1237 = fmul fast float %1236, %1183
  %1238 = fadd fast float %1235, %1184
  %1239 = fsub fast float %1238, %1237
  %1240 = fdiv fast float %1239, %1234
  br label %1241

; <label>:1241                                    ; preds = %1231, %1168
  %1242 = phi float [ %1240, %1231 ], [ 0.000000e+00, %1168 ]
  %1243 = fcmp fast ogt float %1143, %1228
  %1244 = fsub fast float %1143, %1228
  br i1 %1243, label %1245, label %1255

; <label>:1245                                    ; preds = %1241
  %1246 = fsub fast float %1228, %1229
  %1247 = fmul fast float %1246, %1244
  %1248 = fmul fast float %1229, %1143
  %1249 = fadd fast float %1229, %1143
  %1250 = fmul fast float %1249, %1183
  %1251 = fsub fast float %1185, %1248
  %1252 = fadd fast float %1251, %1250
  %1253 = fdiv fast float %1252, %1247
  %1254 = fadd fast float %1253, %1242
  br label %1255

; <label>:1255                                    ; preds = %1245, %1241
  %1256 = phi float [ %1254, %1245 ], [ %1242, %1241 ]
  %1257 = fsub fast float %1143, %1229
  %1258 = fmul fast float %1257, %1244
  %1259 = fmul fast float %1229, %1228
  %1260 = fadd fast float %1229, %1228
  %1261 = fmul fast float %1260, %1183
  %1262 = fadd fast float %1259, %1184
  %1263 = fsub fast float %1262, %1261
  %1264 = fdiv fast float %1263, %1258
  %1265 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1266 = fcmp fast oeq float %925, 0.000000e+00
  %1267 = extractvalue %dx.types.CBufRet.f32 %1131, 0
  %1268 = fcmp fast oeq float %1267, 0.000000e+00
  %1269 = or i1 %1266, %1268
  %1270 = fmul fast float %1267, 2.000000e+00
  %1271 = fadd fast float %1132, %1133
  %1272 = fdiv fast float %1271, %1270
  %1273 = call float @dx.op.unary.f32(i32 7, float %1272)  ; Saturate(value)
  %1274 = fmul fast float %1273, 2.000000e+00
  %1275 = fsub fast float 3.000000e+00, %1274
  %1276 = fmul fast float %1273, %1273
  %1277 = fmul fast float %1276, %1275
  %1278 = select i1 %1269, float 1.000000e+00, float %1277
  %1279 = fmul fast float %1264, %925
  %1280 = fadd fast float %1265, %1279
  %1281 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1282 = fmul fast float %1278, %1281
  br label %1283

; <label>:1283                                    ; preds = %1255, %1136
  %1284 = phi float [ %1282, %1255 ], [ 0.000000e+00, %1136 ]
  %1285 = fsub fast float 1.000000e+00, %1284
  %1286 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1084, float %1085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.i32 %1288, 2
  %1290 = icmp eq i32 %1289, 0
  br i1 %1290, label %1296, label %1291

; <label>:1291                                    ; preds = %1283
  %1292 = call float @dx.op.unary.f32(i32 7, float %1284)  ; Saturate(value)
  %1293 = fadd fast float %1287, -1.000000e+00
  %1294 = fmul fast float %1292, %1293
  %1295 = fadd fast float %1294, 1.000000e+00
  br label %1296

; <label>:1296                                    ; preds = %1291, %1283
  %1297 = phi float [ %1295, %1291 ], [ %1285, %1283 ]
  %1298 = call float @dx.op.binary.f32(i32 35, float %1287, float %1297)  ; FMax(a,b)
  %1299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.i32 %1299, 2
  %1301 = and i32 %1300, 1
  %1302 = icmp eq i32 %1301, 0
  %1303 = fcmp fast une float %1298, 1.000000e+00
  %1304 = and i1 %1303, %1302
  br i1 %1304, label %1305, label %1324

; <label>:1305                                    ; preds = %1296
  %1306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1084, float %1085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1307 = extractvalue %dx.types.ResRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.ResRet.f32 %1306, 1
  %1309 = extractvalue %dx.types.ResRet.f32 %1306, 2
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 1
  %1312 = fmul fast float %1311, %1307
  %1313 = fmul fast float %1311, %1308
  %1314 = fmul fast float %1311, %1309
  %1315 = fcmp fast ogt float %1287, 0x3FEFFF2E40000000
  %1316 = fsub fast float 1.000000e+00, %1298
  %1317 = fsub fast float 1.000000e+00, %1287
  %1318 = fdiv fast float %1316, %1317
  %1319 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1320 = select i1 %1315, float 0.000000e+00, float %1319
  %1321 = fmul fast float %1312, %1320
  %1322 = fmul fast float %1313, %1320
  %1323 = fmul fast float %1314, %1320
  br label %1324

; <label>:1324                                    ; preds = %1305, %1296
  %1325 = phi float [ 0.000000e+00, %1296 ], [ %1321, %1305 ]
  %1326 = phi float [ 0.000000e+00, %1296 ], [ %1322, %1305 ]
  %1327 = phi float [ 0.000000e+00, %1296 ], [ %1323, %1305 ]
  %1328 = fmul fast float %1325, %809
  %1329 = fmul fast float %1326, %809
  %1330 = fmul fast float %1327, %809
  %1331 = fmul fast float %1298, %1059
  %1332 = call float @dx.op.dot3.f32(i32 55, float %1298, float %1298, float %1298, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1333 = call float @dx.op.dot3.f32(i32 55, float %1328, float %1329, float %1330, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1334 = select i1 %111, float %1332, float %1298
  %1335 = select i1 %111, float 1.000000e+00, float %1298
  %1336 = select i1 %111, float %1333, float %1328
  %1337 = select i1 %111, float 0.000000e+00, float %1329
  %1338 = select i1 %111, float 0.000000e+00, float %1330
  %1339 = fmul fast float %1334, %1071
  %1340 = fmul fast float %1334, %1072
  %1341 = fmul fast float %1335, %1073
  %1342 = fadd fast float %1339, %1336
  %1343 = fadd fast float %1340, %1337
  %1344 = fadd fast float %1338, %1341
  %1345 = fmul fast float %1334, %1074
  %1346 = fmul fast float %1334, %1075
  %1347 = fmul fast float %1335, %1076
  br label %1348

; <label>:1348                                    ; preds = %1324, %1080, %1047, %1038
  %1349 = phi float [ %1040, %1038 ], [ %1071, %1047 ], [ %1342, %1324 ], [ %1071, %1080 ]
  %1350 = phi float [ %1041, %1038 ], [ %1072, %1047 ], [ %1343, %1324 ], [ %1072, %1080 ]
  %1351 = phi float [ %1042, %1038 ], [ %1073, %1047 ], [ %1344, %1324 ], [ %1073, %1080 ]
  %1352 = phi float [ %1043, %1038 ], [ %1074, %1047 ], [ %1345, %1324 ], [ %1074, %1080 ]
  %1353 = phi float [ %1044, %1038 ], [ %1075, %1047 ], [ %1346, %1324 ], [ %1075, %1080 ]
  %1354 = phi float [ %1045, %1038 ], [ %1076, %1047 ], [ %1347, %1324 ], [ %1076, %1080 ]
  %1355 = phi float [ %1046, %1038 ], [ %1059, %1047 ], [ %1331, %1324 ], [ %1059, %1080 ]
  %1356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1357 = extractvalue %dx.types.CBufRet.f32 %1356, 2
  %1358 = extractvalue %dx.types.CBufRet.f32 %1356, 3
  %1359 = fmul fast float %1357, %53
  %1360 = fmul fast float %1358, %54
  %1361 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1362 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1363 = select i1 %794, i32 2, i32 0
  %1364 = or i32 %1363, 1
  %1365 = uitofp i32 %1364 to float
  %1366 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1361, float %1362, float %1365, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = extractvalue %dx.types.ResRet.f32 %1366, 1
  %1369 = extractvalue %dx.types.ResRet.f32 %1366, 2
  %1370 = extractvalue %dx.types.ResRet.f32 %1366, 3
  %1371 = add nuw nsw i32 %1363, 2
  %1372 = uitofp i32 %1371 to float
  %1373 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1361, float %1362, float %1372, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = extractvalue %dx.types.ResRet.f32 %1373, 1
  %1376 = extractvalue %dx.types.ResRet.f32 %1373, 2
  %1377 = extractvalue %dx.types.ResRet.f32 %1373, 3
  %1378 = call float @dx.op.binary.f32(i32 35, float %1368, float %1369)  ; FMax(a,b)
  %1379 = call float @dx.op.binary.f32(i32 35, float %1367, float %1378)  ; FMax(a,b)
  %1380 = call float @dx.op.binary.f32(i32 35, float %1379, float %1370)  ; FMax(a,b)
  %1381 = call float @dx.op.binary.f32(i32 36, float %1375, float %1376)  ; FMin(a,b)
  %1382 = call float @dx.op.binary.f32(i32 36, float %1374, float %1381)  ; FMin(a,b)
  %1383 = call float @dx.op.binary.f32(i32 36, float %1382, float %1377)  ; FMin(a,b)
  %1384 = fmul fast float %1380, 2.550000e+02
  %1385 = fadd fast float %1384, 0x3F70101020000000
  %1386 = fptoui float %1385 to i32
  %1387 = fmul fast float %1383, 2.550000e+02
  %1388 = fadd fast float %1387, 0x3F70101020000000
  %1389 = fptoui float %1388 to i32
  %1390 = icmp ult i32 %1386, %1389
  br i1 %1390, label %1391, label %1443

; <label>:1391                                    ; preds = %1348
  %1392 = fcmp fast ogt float %47, 9.843750e-01
  %1393 = fadd fast float %1039, -4.000000e+00
  %1394 = select i1 %1392, float -4.000000e+00, float %1393
  %1395 = call float @dx.op.binary.f32(i32 35, float %1394, float 0.000000e+00)  ; FMax(a,b)
  %1396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1396, 0
  %1398 = fadd fast float %1397, %1395
  %1399 = extractvalue %dx.types.CBufRet.f32 %1396, 2
  %1400 = fmul fast float %1398, %1399
  %1401 = call float @dx.op.unary.f32(i32 23, float %1400)  ; Log(value)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1396, 3
  %1403 = fmul fast float %1402, %1401
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 2
  %1406 = fmul fast float %1403, %1405
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1408 = uitofp i32 %1386 to float
  %1409 = uitofp i32 %1389 to float
  %1410 = fadd fast float %1408, 5.000000e-01
  %1411 = fadd fast float %1409, 5.000000e-01
  %1412 = fmul fast float %1405, %1410
  %1413 = fmul fast float %1405, %1411
  %1414 = fadd fast float %1412, 0x3F0FFB4800000000
  %1415 = fadd fast float %1413, 0xBF0FFB4800000000
  %1416 = call float @dx.op.binary.f32(i32 35, float %1407, float %1414)  ; FMax(a,b)
  %1417 = call float @dx.op.binary.f32(i32 36, float %1416, float %1415)  ; FMin(a,b)
  %1418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.f32 %1418, 1
  %1420 = extractvalue %dx.types.CBufRet.f32 %1418, 2
  %1421 = extractvalue %dx.types.CBufRet.f32 %1418, 0
  %1422 = select i1 %794, float %1421, float 0.000000e+00
  %1423 = fmul fast float %1419, %1417
  %1424 = fadd fast float %1422, %1423
  %1425 = fadd fast float %1422, %1420
  %1426 = fsub fast float %1419, %1420
  %1427 = fadd fast float %1426, %1422
  %1428 = call float @dx.op.binary.f32(i32 35, float %1424, float %1425)  ; FMax(a,b)
  %1429 = call float @dx.op.binary.f32(i32 36, float %1428, float %1427)  ; FMin(a,b)
  %1430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1361, float %1362, float %1429, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.ResRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.ResRet.f32 %1430, 2
  %1434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1361, float %1362, float %1429, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1435 = extractvalue %dx.types.ResRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.ResRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.ResRet.f32 %1434, 2
  %1438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1439 = extractvalue %dx.types.CBufRet.f32 %1438, 1
  %1440 = fmul fast float %1439, %1435
  %1441 = fmul fast float %1439, %1436
  %1442 = fmul fast float %1439, %1437
  br label %1443

; <label>:1443                                    ; preds = %1391, %1348
  %1444 = phi float [ %1431, %1391 ], [ 1.000000e+00, %1348 ]
  %1445 = phi float [ %1432, %1391 ], [ 1.000000e+00, %1348 ]
  %1446 = phi float [ %1433, %1391 ], [ 1.000000e+00, %1348 ]
  %1447 = phi float [ %1440, %1391 ], [ 0.000000e+00, %1348 ]
  %1448 = phi float [ %1441, %1391 ], [ 0.000000e+00, %1348 ]
  %1449 = phi float [ %1442, %1391 ], [ 0.000000e+00, %1348 ]
  %1450 = fmul fast float %1447, %809
  %1451 = fmul fast float %1448, %809
  %1452 = fmul fast float %1449, %809
  %1453 = fmul fast float %1444, %1355
  %1454 = call float @dx.op.dot3.f32(i32 55, float %1444, float %1445, float %1446, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1455 = call float @dx.op.dot3.f32(i32 55, float %1450, float %1451, float %1452, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1456 = select i1 %111, float %1454, float %1444
  %1457 = select i1 %111, float %1454, float %1445
  %1458 = select i1 %111, float 1.000000e+00, float %1446
  %1459 = select i1 %111, float %1455, float %1450
  %1460 = select i1 %111, float 0.000000e+00, float %1451
  %1461 = select i1 %111, float 0.000000e+00, float %1452
  %1462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1463 = extractvalue %dx.types.CBufRet.i32 %1462, 3
  %1464 = and i32 %1463, 3
  %1465 = icmp ne i32 %1464, 0
  %1466 = and i32 %1463, 4
  %1467 = icmp ne i32 %1466, 0
  %1468 = and i1 %1465, %1467
  %1469 = and i1 %111, %1468
  br i1 %1469, label %1470, label %1476

; <label>:1470                                    ; preds = %1443
  %1471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1472 = extractvalue %dx.types.CBufRet.f32 %1471, 1
  %1473 = fadd fast float %1453, -1.000000e+00
  %1474 = fmul fast float %1472, %1473
  %1475 = fadd fast float %1474, 1.000000e+00
  br label %1476

; <label>:1476                                    ; preds = %1470, %1443
  %1477 = phi float [ %1475, %1470 ], [ %1453, %1443 ]
  %1478 = fadd fast float %1352, %1349
  %1479 = fmul fast float %1456, %1478
  %1480 = fadd fast float %1479, %1459
  %1481 = fadd fast float %1353, %1350
  %1482 = fmul fast float %1457, %1481
  %1483 = fadd fast float %1482, %1460
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 0
  br i1 %111, label %1486, label %1508

; <label>:1486                                    ; preds = %1476
  %1487 = fadd fast float %1480, %1483
  %1488 = fmul fast float %1485, %1487
  %1489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.f32 %1489, 3
  %1491 = extractvalue %dx.types.CBufRet.f32 %814, 1
  %1492 = fsub fast float %817, %1491
  %1493 = extractvalue %dx.types.CBufRet.f32 %814, 2
  %1494 = fmul fast float %1492, %1493
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  %1496 = fsub fast float %1495, %1490
  %1497 = fmul fast float %1496, %1477
  %1498 = fadd fast float %1497, %1490
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 0
  %1501 = fsub fast float %1498, %1500
  %1502 = fmul fast float %1501, 1.000000e+01
  %1503 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  %1504 = fsub fast float %770, %809
  %1505 = fmul fast float %1503, %1504
  %1506 = fadd fast float %1505, %809
  %1507 = fmul fast float %1506, %1498
  br label %1520

; <label>:1508                                    ; preds = %1476
  %1509 = fadd fast float %1354, %1351
  %1510 = fmul fast float %1458, %1509
  %1511 = fadd fast float %1510, %1461
  %1512 = fmul fast float %1485, %1480
  %1513 = fmul fast float %1485, %1483
  %1514 = fmul fast float %1485, %1511
  %1515 = call float @dx.op.binary.f32(i32 35, float %1513, float %1514)  ; FMax(a,b)
  %1516 = call float @dx.op.binary.f32(i32 35, float %1512, float %1515)  ; FMax(a,b)
  %1517 = call float @dx.op.binary.f32(i32 35, float %1516, float %809)  ; FMax(a,b)
  %1518 = fcmp fast ugt float %1517, 0x3F10000000000000
  br i1 %1518, label %1520, label %1519

; <label>:1519                                    ; preds = %1508
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1520

; <label>:1520                                    ; preds = %1519, %1508, %1486
  %1521 = phi float [ %1488, %1486 ], [ %1512, %1519 ], [ %1512, %1508 ]
  %1522 = phi float [ %1507, %1486 ], [ %1513, %1519 ], [ %1513, %1508 ]
  %1523 = phi float [ %1506, %1486 ], [ %1514, %1519 ], [ %1514, %1508 ]
  %1524 = phi float [ %1506, %1486 ], [ %809, %1519 ], [ %809, %1508 ]
  %1525 = fadd fast float %555, 0x3FE3C6EF40000000
  %1526 = call float @dx.op.unary.f32(i32 22, float %1525)  ; Frc(value)
  %1527 = call float @dx.op.unary.f32(i32 23, float %1521)  ; Log(value)
  %1528 = fadd fast float %1527, -7.000000e+00
  %1529 = call float @dx.op.unary.f32(i32 21, float %1528)  ; Exp(value)
  %1530 = fmul fast float %1526, 2.000000e+00
  %1531 = fadd fast float %1530, -1.000000e+00
  %1532 = fmul fast float %1529, %1531
  %1533 = fcmp fast ogt float %1521, 0.000000e+00
  %1534 = select i1 %1533, float %1532, float 0.000000e+00
  %1535 = fadd fast float %1534, %1521
  %1536 = fadd fast float %555, 0x3FF3C6EF40000000
  %1537 = call float @dx.op.unary.f32(i32 22, float %1536)  ; Frc(value)
  %1538 = call float @dx.op.unary.f32(i32 23, float %1522)  ; Log(value)
  %1539 = fadd fast float %1538, -7.000000e+00
  %1540 = call float @dx.op.unary.f32(i32 21, float %1539)  ; Exp(value)
  %1541 = fmul fast float %1537, 2.000000e+00
  %1542 = fadd fast float %1541, -1.000000e+00
  %1543 = fmul fast float %1540, %1542
  %1544 = fcmp fast ogt float %1522, 0.000000e+00
  %1545 = select i1 %1544, float %1543, float 0.000000e+00
  %1546 = fadd fast float %1545, %1522
  %1547 = fadd fast float %555, 0x3FFDAA66E0000000
  %1548 = call float @dx.op.unary.f32(i32 22, float %1547)  ; Frc(value)
  %1549 = call float @dx.op.unary.f32(i32 23, float %1523)  ; Log(value)
  %1550 = fadd fast float %1549, -6.000000e+00
  %1551 = call float @dx.op.unary.f32(i32 21, float %1550)  ; Exp(value)
  %1552 = fmul fast float %1548, 2.000000e+00
  %1553 = fadd fast float %1552, -1.000000e+00
  %1554 = fmul fast float %1551, %1553
  %1555 = fcmp fast ogt float %1523, 0.000000e+00
  %1556 = select i1 %1555, float %1554, float 0.000000e+00
  %1557 = fadd fast float %1556, %1523
  %1558 = select i1 %111, float %1522, float %1546
  %1559 = select i1 %111, float %1523, float %1557
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1560 = call float @dx.op.binary.f32(i32 36, float %1535, float 3.225500e+04)  ; FMin(a,b)
  %1561 = call float @dx.op.binary.f32(i32 36, float %1558, float 3.225500e+04)  ; FMin(a,b)
  %1562 = call float @dx.op.binary.f32(i32 36, float %1559, float 3.225500e+04)  ; FMin(a,b)
  %1563 = call float @dx.op.binary.f32(i32 36, float %1524, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1560)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1561)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1562)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1563)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1524)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1524)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1524)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1524)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

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

