;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xyzw        2     NONE   float   xyzw
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 4   xyzw        4     NONE   float   xy  
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
; shader hash: a9b38b6ab3ad6081b038712ed3c52607
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
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 20, 21, 28, 29, 30, 31, 32, 34 }
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
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = fmul fast float %56, %49
  %58 = fmul fast float %56, %50
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %62 = fmul fast float %57, 2.000000e+00
  %63 = fmul fast float %62, %60
  %64 = fmul fast float %58, 2.000000e+00
  %65 = fmul fast float %64, %61
  %66 = fsub fast float 1.000000e+00, %63
  %67 = fsub fast float 1.000000e+00, %65
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fmul fast float %66, %69
  %73 = fmul fast float %66, %70
  %74 = fmul fast float %66, %71
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fmul fast float %67, %76
  %80 = fmul fast float %67, %77
  %81 = fmul fast float %67, %78
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fadd fast float %79, %83
  %87 = fadd fast float %86, %72
  %88 = fadd fast float %80, %84
  %89 = fadd fast float %88, %73
  %90 = fadd fast float %81, %85
  %91 = fadd fast float %90, %74
  %92 = fmul fast float %87, %52
  %93 = fmul fast float %89, %52
  %94 = fmul fast float %91, %52
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.i32 %96, 3
  %98 = and i32 %97, 3
  %99 = icmp ne i32 %98, 0
  %100 = and i32 %97, 4
  %101 = icmp ne i32 %100, 0
  %102 = and i1 %99, %101
  br i1 %102, label %103, label %114

; <label>:103                                     ; preds = %0
  %104 = extractvalue %dx.types.CBufRet.f32 %95, 3
  %105 = fmul fast float %104, %58
  %106 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %107 = fmul fast float %106, %57
  %108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %107, float %105, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = fsub fast float 1.000000e+00, %109
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = fcmp fast olt float %110, %112
  br label %117

; <label>:114                                     ; preds = %0
  %115 = icmp eq i32 %100, 0
  %116 = and i1 %99, %115
  br label %117

; <label>:117                                     ; preds = %114, %103
  %118 = phi i1 [ %113, %103 ], [ %116, %114 ]
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 3
  %122 = fmul fast float %120, %57
  %123 = fmul fast float %121, %58
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = and i32 %125, 114688
  %127 = icmp ne i32 %126, 0
  %128 = select i1 %127, float %122, float 0.000000e+00
  %129 = select i1 %127, float %123, float 0.000000e+00
  %130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %128, float %129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 0
  %132 = fmul fast float %131, 2.550000e+02
  %133 = fptoui float %132 to i32
  %134 = select i1 %127, i32 %133, i32 0
  %135 = mul i32 %23, 208
  %136 = add i32 %135, 188
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %136, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = and i32 %97, 114688
  %140 = and i32 %97, 8
  %141 = icmp ne i32 %140, 0
  %142 = or i1 %118, %141
  %143 = select i1 %142, i32 %139, i32 16384
  %144 = and i32 %143, %138
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

; <label>:146                                     ; preds = %117
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %147

; <label>:147                                     ; preds = %146, %117
  %148 = and i32 %138, 512
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %174, label %150

; <label>:150                                     ; preds = %147
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 3
  %154 = fmul fast float %152, %57
  %155 = fmul fast float %153, %58
  %156 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %158 = fdiv fast float %156, %157
  %159 = fcmp fast ogt float %158, 0x3FFC71C720000000
  br i1 %159, label %160, label %166

; <label>:160                                     ; preds = %150
  %161 = fdiv fast float 0x3FFC71C720000000, %158
  %162 = fmul fast float %161, %155
  %163 = fsub fast float 1.000000e+00, %161
  %164 = fmul fast float %163, 5.000000e-01
  %165 = fadd fast float %164, %162
  br label %174

; <label>:166                                     ; preds = %150
  %167 = fcmp fast olt float %158, 0x3FFC71C720000000
  br i1 %167, label %168, label %174

; <label>:168                                     ; preds = %166
  %169 = fmul fast float %154, 5.625000e-01
  %170 = fmul fast float %169, %158
  %171 = fmul fast float %158, 2.812500e-01
  %172 = fsub fast float 5.000000e-01, %171
  %173 = fadd fast float %172, %170
  br label %174

; <label>:174                                     ; preds = %168, %166, %160, %147
  %175 = phi float [ %41, %147 ], [ %154, %160 ], [ %173, %168 ], [ %154, %166 ]
  %176 = phi float [ %42, %147 ], [ %165, %160 ], [ %155, %168 ], [ %155, %166 ]
  %177 = add i32 %24, 104
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = bitcast i32 %179 to float
  %181 = add i32 %24, 88
  %182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %181, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = extractvalue %dx.types.ResRet.i32 %182, 1
  %185 = extractvalue %dx.types.ResRet.i32 %182, 2
  %186 = extractvalue %dx.types.ResRet.i32 %182, 3
  %187 = bitcast i32 %183 to float
  %188 = bitcast i32 %184 to float
  %189 = bitcast i32 %185 to float
  %190 = bitcast i32 %186 to float
  %191 = add i32 %24, 132
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = add i32 %193, 0
  %195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %196 = fmul fast float %189, %41
  %197 = fmul fast float %190, %42
  %198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %199 = extractvalue %dx.types.CBufRet.f32 %198, 3
  %200 = fmul fast float %199, %187
  %201 = fmul fast float %199, %188
  %202 = fadd fast float %200, %196
  %203 = fadd fast float %201, %197
  %204 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %195, %dx.types.Handle %54, float %202, float %203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = extractvalue %dx.types.ResRet.f32 %204, 1
  %207 = fmul fast float %205, 2.000000e+00
  %208 = fmul fast float %206, 2.000000e+00
  %209 = fadd fast float %207, -1.000000e+00
  %210 = fadd fast float %208, -1.000000e+00
  %211 = fmul fast float %209, %180
  %212 = fmul fast float %210, %180
  %213 = fadd fast float %211, %175
  %214 = fadd fast float %212, %176
  %215 = and i32 %138, 16
  %216 = icmp ne i32 %215, 0
  %217 = select i1 %216, float 1.000000e+00, float %48
  %218 = add i32 %24, 128
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = add i32 %220, 0
  %222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %221, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %225 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %222, %dx.types.Handle %54, float %213, float %214, float undef, float undef, i32 0, i32 0, i32 undef, float %224, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fmul fast float %226, %217
  %228 = icmp eq i32 %215, 0
  br i1 %228, label %248, label %229, !dx.controlflow.hints !62

; <label>:229                                     ; preds = %174
  %230 = add i32 %135, 64
  %231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = fadd fast float %232, 1.000000e+00
  %234 = fmul fast float %233, %48
  %235 = fsub fast float %234, %232
  %236 = fsub fast float %233, %235
  %237 = call float @dx.op.unary.f32(i32 7, float %236)  ; Saturate(value)
  %238 = fsub fast float 1.000000e+00, %234
  %239 = call float @dx.op.unary.f32(i32 7, float %238)  ; Saturate(value)
  %240 = fsub fast float %237, %239
  %241 = fsub fast float %227, %239
  %242 = fdiv fast float %241, %240
  %243 = call float @dx.op.unary.f32(i32 7, float %242)  ; Saturate(value)
  %244 = fmul fast float %243, 2.000000e+00
  %245 = fsub fast float 3.000000e+00, %244
  %246 = fmul fast float %243, %243
  %247 = fmul fast float %246, %245
  br label %248

; <label>:248                                     ; preds = %229, %174
  %249 = phi float [ %247, %229 ], [ %227, %174 ]
  %250 = and i32 %138, 1024
  %251 = icmp eq i32 %250, 0
  %252 = add i32 %24, 136
  br i1 %251, label %285, label %253, !dx.controlflow.hints !63

; <label>:253                                     ; preds = %248
  %254 = add i32 %135, 48
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = extractvalue %dx.types.ResRet.f32 %255, 1
  %258 = fadd fast float %43, -5.000000e-01
  %259 = fmul fast float %258, 2.000000e+00
  %260 = fmul fast float %35, %259
  %261 = fmul fast float %36, %259
  %262 = fmul fast float %260, %257
  %263 = fmul fast float %261, %257
  %264 = call float @dx.op.dot2.f32(i32 54, float %35, float %36, float %35, float %36)  ; Dot2(ax,ay,bx,by)
  %265 = call float @dx.op.unary.f32(i32 25, float %264)  ; Rsqrt(value)
  %266 = fmul fast float %262, %265
  %267 = fmul fast float %263, %265
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 0
  %270 = extractvalue %dx.types.CBufRet.f32 %268, 1
  %271 = fsub fast float %92, %262
  %272 = fadd fast float %271, %269
  %273 = fadd fast float %272, %266
  %274 = fsub fast float %93, %263
  %275 = fadd fast float %274, %270
  %276 = fadd fast float %275, %267
  %277 = fmul fast float %273, %256
  %278 = fmul fast float %276, %256
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = add i32 %280, 0
  %282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %283 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %282, %dx.types.Handle %54, float %278, float %277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  br label %292

; <label>:285                                     ; preds = %248
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = add i32 %287, 0
  %289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %288, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %290 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %289, %dx.types.Handle %54, float %43, float %44, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  br label %292

; <label>:292                                     ; preds = %285, %253
  %293 = phi float [ %284, %253 ], [ %291, %285 ]
  %294 = fmul fast float %293, %249
  %295 = fcmp fast ogt float %294, 0.000000e+00
  br i1 %295, label %297, label %296

; <label>:296                                     ; preds = %292
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %297

; <label>:297                                     ; preds = %296, %292
  %298 = call float @dx.op.unary.f32(i32 7, float %294)  ; Saturate(value)
  %299 = fmul fast float %57, 5.000000e-01
  %300 = fmul fast float %58, 5.000000e-01
  %301 = fptosi float %299 to i32
  %302 = fptosi float %300 to i32
  %303 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %301, i32 %302, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = lshr i32 %304, 18
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F4C00EBA0000000
  %308 = call float @dx.op.unary.f32(i32 21, float %307)  ; Exp(value)
  %309 = fadd fast float %308, -1.000000e+00
  %310 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %311 = extractvalue %dx.types.Dimensions %310, 0
  %312 = sitofp i32 %311 to float
  %313 = extractvalue %dx.types.Dimensions %310, 1
  %314 = sitofp i32 %313 to float
  %315 = fcmp fast oge float %299, %312
  %316 = fcmp fast oge float %300, %314
  %317 = or i1 %315, %316
  %318 = select i1 %317, float 0x4197782600000000, float %309
  %319 = fsub fast float %318, %52
  %320 = fcmp fast ogt float %319, 0.000000e+00
  %321 = and i32 %134, -2
  %322 = icmp eq i32 %321, 2
  %323 = and i1 %322, %320
  %324 = xor i1 %320, true
  %325 = icmp eq i32 %134, 1
  %326 = and i1 %325, %324
  %327 = or i1 %323, %326
  %328 = and i32 %138, 262144
  %329 = icmp ne i32 %328, 0
  %330 = and i1 %329, %327
  %331 = xor i1 %327, true
  %332 = and i32 %138, 131072
  %333 = icmp ne i32 %332, 0
  %334 = and i1 %333, %331
  %335 = or i1 %330, %334
  br i1 %335, label %336, label %337

; <label>:336                                     ; preds = %297
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %337

; <label>:337                                     ; preds = %336, %297
  %338 = and i32 %138, 32
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %616, label %340, !dx.controlflow.hints !64

; <label>:340                                     ; preds = %337
  %341 = add i32 %135, 80
  %342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 0
  %344 = extractvalue %dx.types.ResRet.f32 %342, 1
  %345 = extractvalue %dx.types.ResRet.f32 %342, 2
  %346 = extractvalue %dx.types.ResRet.f32 %342, 3
  %347 = add i32 %135, 96
  %348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 0
  %350 = extractvalue %dx.types.ResRet.f32 %348, 1
  %351 = extractvalue %dx.types.ResRet.f32 %348, 2
  %352 = add i32 %135, 112
  %353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.f32 %353, 0
  %355 = extractvalue %dx.types.ResRet.f32 %353, 1
  %356 = extractvalue %dx.types.ResRet.f32 %353, 2
  %357 = extractvalue %dx.types.ResRet.f32 %353, 3
  %358 = add i32 %135, 128
  %359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = extractvalue %dx.types.ResRet.f32 %359, 1
  %362 = extractvalue %dx.types.ResRet.f32 %359, 2
  %363 = extractvalue %dx.types.ResRet.f32 %359, 3
  %364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %136, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.i32 %364, 0
  %366 = and i32 %365, 4096
  %367 = icmp ne i32 %366, 0
  %368 = fcmp fast une float %351, 0.000000e+00
  %369 = and i32 %365, 64
  %370 = icmp ne i32 %369, 0
  %371 = and i32 %365, 128
  %372 = icmp eq i32 %371, 0
  %373 = and i32 %365, 2048
  %374 = icmp eq i32 %373, 0
  %375 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %376 = extractvalue %dx.types.Dimensions %375, 0
  %377 = sitofp i32 %376 to float
  %378 = extractvalue %dx.types.Dimensions %375, 1
  %379 = sitofp i32 %378 to float
  %380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.f32 %380, 2
  %382 = extractvalue %dx.types.CBufRet.f32 %380, 3
  %383 = fmul fast float %381, %57
  %384 = fmul fast float %382, %58
  %385 = fmul fast float %383, %377
  %386 = fmul fast float %384, %379
  %387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.f32 %387, 1
  %389 = fsub fast float -0.000000e+00, %388
  %390 = fptoui float %389 to i32
  %391 = fptoui float %385 to i32
  %392 = fptoui float %386 to i32
  %393 = and i32 %390, 31
  %394 = lshr i32 %391, %393
  %395 = lshr i32 %392, %393
  %396 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %390, i32 %394, i32 %395, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %397 = extractvalue %dx.types.ResRet.f32 %396, 0
  %398 = fcmp fast ogt float %397, -1.000000e+00
  %399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %400 = extractvalue %dx.types.CBufRet.f32 %399, 1
  %401 = select i1 %398, float %400, float 1.000000e+00
  %402 = fadd fast float %397, 1.000000e+00
  %403 = fmul fast float %401, %402
  %404 = call float @dx.op.unary.f32(i32 6, float %403)  ; FAbs(value)
  %405 = extractvalue %dx.types.CBufRet.f32 %399, 3
  %406 = fcmp fast oge float %404, %405
  %407 = select i1 %406, float 0x4197782600000000, float %404
  br i1 %374, label %497, label %408, !dx.controlflow.hints !65

; <label>:408                                     ; preds = %340
  %409 = fmul fast float %62, %381
  %410 = fmul fast float %64, %382
  %411 = fsub fast float 1.000000e+00, %409
  %412 = fsub fast float 1.000000e+00, %410
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %415 = extractvalue %dx.types.CBufRet.f32 %413, 1
  %416 = extractvalue %dx.types.CBufRet.f32 %413, 2
  %417 = fmul fast float %411, %414
  %418 = fmul fast float %411, %415
  %419 = fmul fast float %411, %416
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 0
  %422 = extractvalue %dx.types.CBufRet.f32 %420, 1
  %423 = extractvalue %dx.types.CBufRet.f32 %420, 2
  %424 = fmul fast float %412, %421
  %425 = fmul fast float %412, %422
  %426 = fmul fast float %412, %423
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %429 = extractvalue %dx.types.CBufRet.f32 %427, 1
  %430 = extractvalue %dx.types.CBufRet.f32 %427, 2
  %431 = fadd fast float %424, %428
  %432 = fadd fast float %431, %417
  %433 = fadd fast float %425, %429
  %434 = fadd fast float %433, %418
  %435 = fadd fast float %426, %430
  %436 = fadd fast float %435, %419
  %437 = fmul fast float %432, %407
  %438 = fmul fast float %434, %407
  %439 = fmul fast float %436, %407
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 0
  %442 = extractvalue %dx.types.CBufRet.f32 %440, 1
  %443 = extractvalue %dx.types.CBufRet.f32 %440, 2
  %444 = fsub fast float %441, %25
  %445 = fadd fast float %444, %437
  %446 = fsub fast float %442, %26
  %447 = fadd fast float %446, %438
  %448 = fsub fast float %443, %27
  %449 = fadd fast float %448, %439
  %450 = fmul fast float %28, %28
  %451 = call float @dx.op.dot3.f32(i32 55, float %445, float %447, float %449, float %445, float %447, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %452 = fsub fast float %450, %451
  %453 = fmul fast float %350, %450
  %454 = fmul fast float %349, %450
  %455 = fcmp fast olt float %452, %453
  %456 = fcmp fast ogt float %452, %454
  %457 = or i1 %455, %456
  %458 = select i1 %457, float 0.000000e+00, float %452
  %459 = fsub fast float %349, %350
  %460 = fmul fast float %459, %450
  %461 = fsub fast float %458, %453
  %462 = fdiv fast float %461, %460
  %463 = call float @dx.op.unary.f32(i32 7, float %462)  ; Saturate(value)
  %464 = fmul fast float %463, 2.000000e+00
  %465 = fsub fast float 3.000000e+00, %464
  %466 = fmul fast float %463, %463
  %467 = fmul fast float %466, %465
  %468 = fmul fast float %354, %45
  %469 = fmul fast float %355, %46
  %470 = fmul fast float %356, %47
  %471 = fsub fast float %468, %360
  %472 = fsub fast float %469, %361
  %473 = fsub fast float %470, %362
  %474 = fsub fast float %357, %363
  %475 = fmul fast float %467, %471
  %476 = fmul fast float %467, %472
  %477 = fmul fast float %467, %473
  %478 = fmul fast float %467, %474
  %479 = fadd fast float %475, %360
  %480 = fadd fast float %476, %361
  %481 = fadd fast float %477, %362
  %482 = fadd fast float %478, %363
  %483 = fmul fast float %354, %29
  %484 = fmul fast float %355, %30
  %485 = fmul fast float %356, %31
  %486 = fsub fast float %483, %360
  %487 = fsub fast float %484, %361
  %488 = fsub fast float %485, %362
  %489 = fmul fast float %467, %486
  %490 = fmul fast float %467, %487
  %491 = fmul fast float %467, %488
  %492 = fadd fast float %489, %360
  %493 = fadd fast float %490, %361
  %494 = fadd fast float %491, %362
  %495 = fmul fast float %343, %343
  %496 = fmul fast float %495, %458
  br label %604

; <label>:497                                     ; preds = %340
  %498 = and i32 %365, 256
  %499 = icmp eq i32 %498, 0
  %500 = fsub fast float %407, %52
  br i1 %499, label %561, label %501

; <label>:501                                     ; preds = %497
  %502 = fadd fast float %349, %52
  %503 = fcmp fast olt float %407, %52
  %504 = fcmp fast ogt float %407, %502
  %505 = or i1 %503, %504
  %506 = select i1 %505, float 0.000000e+00, float %500
  %507 = call float @dx.op.unary.f32(i32 83, float %407)  ; DerivCoarseX(value)
  %508 = call float @dx.op.unary.f32(i32 84, float %407)  ; DerivCoarseY(value)
  %509 = fmul fast float %507, %507
  %510 = fmul fast float %508, %508
  %511 = fadd fast float %510, %509
  %512 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %513 = extractvalue %dx.types.CBufRet.f32 %387, 2
  %514 = fmul fast float %513, %512
  %515 = call float @dx.op.unary.f32(i32 7, float %514)  ; Saturate(value)
  %516 = fmul fast float %515, %350
  %517 = fdiv fast float %500, %516
  %518 = call float @dx.op.unary.f32(i32 7, float %517)  ; Saturate(value)
  %519 = fmul fast float %518, 2.000000e+00
  %520 = fsub fast float 3.000000e+00, %519
  %521 = fmul fast float %518, %518
  %522 = fmul fast float %521, %520
  %523 = fsub fast float %407, %502
  %524 = fadd fast float %523, %516
  %525 = fdiv fast float %524, %516
  %526 = call float @dx.op.unary.f32(i32 7, float %525)  ; Saturate(value)
  %527 = fmul fast float %526, 2.000000e+00
  %528 = fsub fast float 3.000000e+00, %527
  %529 = fmul fast float %526, %526
  %530 = fmul fast float %529, %528
  %531 = fsub fast float %522, %530
  %532 = fmul fast float %354, %45
  %533 = fmul fast float %355, %46
  %534 = fmul fast float %356, %47
  %535 = fsub fast float %532, %360
  %536 = fsub fast float %533, %361
  %537 = fsub fast float %534, %362
  %538 = fsub fast float %357, %363
  %539 = fmul fast float %531, %535
  %540 = fmul fast float %531, %536
  %541 = fmul fast float %531, %537
  %542 = fmul fast float %531, %538
  %543 = fadd fast float %539, %360
  %544 = fadd fast float %540, %361
  %545 = fadd fast float %541, %362
  %546 = fadd fast float %542, %363
  %547 = fmul fast float %354, %29
  %548 = fmul fast float %355, %30
  %549 = fmul fast float %356, %31
  %550 = fsub fast float %547, %360
  %551 = fsub fast float %548, %361
  %552 = fsub fast float %549, %362
  %553 = fmul fast float %531, %550
  %554 = fmul fast float %531, %551
  %555 = fmul fast float %531, %552
  %556 = fadd fast float %553, %360
  %557 = fadd fast float %554, %361
  %558 = fadd fast float %555, %362
  %559 = fmul fast float %506, %343
  %560 = call float @dx.op.unary.f32(i32 6, float %559)  ; FAbs(value)
  br label %604

; <label>:561                                     ; preds = %497
  br i1 %368, label %562, label %575

; <label>:562                                     ; preds = %561
  %563 = fdiv fast float 5.000000e+01, %28
  %564 = select i1 %370, float %563, float 1.000000e+00
  %565 = fmul fast float %564, %343
  %566 = fmul fast float %41, 2.000000e+00
  %567 = fmul fast float %42, 2.000000e+00
  %568 = fadd fast float %566, -1.000000e+00
  %569 = fadd fast float %567, -1.000000e+00
  %570 = call float @dx.op.dot2.f32(i32 54, float %568, float %569, float %568, float %569)  ; Dot2(ax,ay,bx,by)
  %571 = fmul fast float %351, %28
  %572 = fmul fast float %571, %570
  %573 = fsub fast float %500, %572
  %574 = fmul fast float %565, %573
  br label %604

; <label>:575                                     ; preds = %561
  br i1 %372, label %596, label %576

; <label>:576                                     ; preds = %575
  %577 = fmul fast float %28, 0x3F947AE140000000
  %578 = select i1 %370, float %577, float 1.000000e+00
  %579 = fdiv fast float 1.000000e+00, %578
  %580 = fmul fast float %578, %344
  %581 = fmul fast float %578, %345
  %582 = fmul fast float %579, %346
  %583 = call float @dx.op.unary.f32(i32 6, float %500)  ; FAbs(value)
  %584 = fcmp fast olt float %583, %580
  br i1 %584, label %585, label %589, !dx.controlflow.hints !66

; <label>:585                                     ; preds = %576
  %586 = fmul fast float %579, %343
  %587 = fmul fast float %586, %583
  %588 = call float @dx.op.unary.f32(i32 6, float %587)  ; FAbs(value)
  br label %604

; <label>:589                                     ; preds = %576
  %590 = fcmp fast ogt float %583, %581
  br i1 %590, label %591, label %604

; <label>:591                                     ; preds = %589
  %592 = fsub fast float %583, %581
  %593 = fmul fast float %582, %592
  %594 = call float @dx.op.unary.f32(i32 6, float %593)  ; FAbs(value)
  %595 = fsub fast float 1.000000e+00, %594
  br label %604

; <label>:596                                     ; preds = %575
  %597 = fdiv fast float 5.000000e+01, %28
  %598 = select i1 %370, float %597, float 1.000000e+00
  %599 = fmul fast float %598, %343
  %600 = call float @dx.op.unary.f32(i32 6, float %319)  ; FAbs(value)
  %601 = select i1 %367, float %600, float 0x47EFFFFFE0000000
  %602 = call float @dx.op.binary.f32(i32 36, float %500, float %601)  ; FMin(a,b)
  %603 = fmul fast float %599, %602
  br label %604

; <label>:604                                     ; preds = %596, %591, %589, %585, %562, %501, %408
  %605 = phi float [ %496, %408 ], [ %560, %501 ], [ %574, %562 ], [ %603, %596 ], [ %588, %585 ], [ %595, %591 ], [ %583, %589 ]
  %606 = phi float [ %492, %408 ], [ %556, %501 ], [ %29, %562 ], [ %29, %596 ], [ %29, %585 ], [ %29, %591 ], [ %29, %589 ]
  %607 = phi float [ %493, %408 ], [ %557, %501 ], [ %30, %562 ], [ %30, %596 ], [ %30, %585 ], [ %30, %591 ], [ %30, %589 ]
  %608 = phi float [ %494, %408 ], [ %558, %501 ], [ %31, %562 ], [ %31, %596 ], [ %31, %585 ], [ %31, %591 ], [ %31, %589 ]
  %609 = phi float [ %479, %408 ], [ %543, %501 ], [ %45, %562 ], [ %45, %596 ], [ %45, %585 ], [ %45, %591 ], [ %45, %589 ]
  %610 = phi float [ %480, %408 ], [ %544, %501 ], [ %46, %562 ], [ %46, %596 ], [ %46, %585 ], [ %46, %591 ], [ %46, %589 ]
  %611 = phi float [ %481, %408 ], [ %545, %501 ], [ %47, %562 ], [ %47, %596 ], [ %47, %585 ], [ %47, %591 ], [ %47, %589 ]
  %612 = phi float [ %482, %408 ], [ %546, %501 ], [ 1.000000e+00, %562 ], [ 1.000000e+00, %596 ], [ 1.000000e+00, %585 ], [ 1.000000e+00, %591 ], [ 1.000000e+00, %589 ]
  %613 = call float @dx.op.unary.f32(i32 7, float %605)  ; Saturate(value)
  %614 = fmul fast float %612, %298
  %615 = fmul fast float %614, %613
  br label %616

; <label>:616                                     ; preds = %604, %337
  %617 = phi float [ %609, %604 ], [ %45, %337 ]
  %618 = phi float [ %610, %604 ], [ %46, %337 ]
  %619 = phi float [ %611, %604 ], [ %47, %337 ]
  %620 = phi float [ %615, %604 ], [ %298, %337 ]
  %621 = phi float [ %606, %604 ], [ %29, %337 ]
  %622 = phi float [ %607, %604 ], [ %30, %337 ]
  %623 = phi float [ %608, %604 ], [ %31, %337 ]
  %624 = fmul fast float %621, %32
  %625 = fmul fast float %622, %32
  %626 = fmul fast float %623, %32
  %627 = fmul fast float %621, %40
  %628 = fmul fast float %622, %40
  %629 = fmul fast float %623, %40
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 2
  %632 = fptosi float %52 to i32
  %633 = sitofp i32 %632 to float
  %634 = fadd fast float %631, %633
  %635 = fmul fast float %634, 0x3FE3C6EF40000000
  %636 = frem fast float %57, 2.560000e+02
  %637 = frem fast float %58, 2.560000e+02
  %638 = fptoui float %636 to i32
  %639 = fptoui float %637 to i32
  %640 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %638, i32 %639, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = fadd fast float %641, %635
  %643 = call float @dx.op.unary.f32(i32 22, float %642)  ; Frc(value)
  %644 = and i32 %138, 1
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %705, label %646, !dx.controlflow.hints !67

; <label>:646                                     ; preds = %616
  %647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %135, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 2
  %649 = extractvalue %dx.types.ResRet.f32 %647, 3
  %650 = add i32 %135, 16
  %651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %650, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.f32 %651, 0
  %653 = extractvalue %dx.types.ResRet.f32 %651, 1
  %654 = extractvalue %dx.types.ResRet.f32 %651, 2
  %655 = add i32 %135, 32
  %656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  %658 = extractvalue %dx.types.ResRet.f32 %656, 1
  %659 = extractvalue %dx.types.ResRet.f32 %656, 2
  %660 = and i32 %138, 2
  %661 = icmp eq i32 %660, 0
  %662 = call float @dx.op.dot3.f32(i32 55, float %37, float %38, float %39, float %37, float %38, float %39)  ; Dot3(ax,ay,az,bx,by,bz)
  %663 = call float @dx.op.unary.f32(i32 25, float %662)  ; Rsqrt(value)
  %664 = fmul fast float %663, %37
  %665 = fmul fast float %663, %38
  %666 = fmul fast float %663, %39
  %667 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %668 = call float @dx.op.unary.f32(i32 25, float %667)  ; Rsqrt(value)
  %669 = fmul fast float %668, %92
  %670 = fmul fast float %668, %93
  %671 = fmul fast float %668, %94
  %672 = call float @dx.op.dot3.f32(i32 55, float %669, float %670, float %671, float %664, float %665, float %666)  ; Dot3(ax,ay,az,bx,by,bz)
  %673 = fmul fast float %672, %672
  %674 = fmul fast float %673, %648
  %675 = fadd fast float %674, %649
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  br i1 %661, label %677, label %687, !dx.controlflow.hints !68

; <label>:677                                     ; preds = %646
  %678 = extractvalue %dx.types.ResRet.f32 %647, 1
  %679 = extractvalue %dx.types.ResRet.f32 %647, 0
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 3
  %682 = fmul fast float %681, %667
  %683 = fsub fast float %679, %682
  %684 = fmul fast float %683, %678
  %685 = call float @dx.op.unary.f32(i32 7, float %684)  ; Saturate(value)
  %686 = fmul fast float %685, %676
  br label %687

; <label>:687                                     ; preds = %677, %646
  %688 = phi float [ %686, %677 ], [ %676, %646 ]
  %689 = fsub fast float %652, %657
  %690 = fsub fast float %653, %658
  %691 = fsub fast float %654, %659
  %692 = fmul fast float %688, %689
  %693 = fmul fast float %688, %690
  %694 = fmul fast float %688, %691
  %695 = fadd fast float %692, %657
  %696 = fadd fast float %693, %658
  %697 = fadd fast float %694, %659
  %698 = fmul fast float %695, %617
  %699 = fmul fast float %696, %618
  %700 = fmul fast float %697, %619
  %701 = fmul fast float %695, %624
  %702 = fmul fast float %696, %625
  %703 = fmul fast float %697, %626
  %704 = fmul fast float %688, %620
  br label %705

; <label>:705                                     ; preds = %687, %616
  %706 = phi float [ %698, %687 ], [ %617, %616 ]
  %707 = phi float [ %699, %687 ], [ %618, %616 ]
  %708 = phi float [ %700, %687 ], [ %619, %616 ]
  %709 = phi float [ %704, %687 ], [ %620, %616 ]
  %710 = phi float [ %701, %687 ], [ %624, %616 ]
  %711 = phi float [ %702, %687 ], [ %625, %616 ]
  %712 = phi float [ %703, %687 ], [ %626, %616 ]
  %713 = add i32 %24, 120
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = add i32 %715, 0
  %717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %718 = add i32 %24, 24
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %717, %dx.types.Handle %53, float %213, float %214, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  %723 = extractvalue %dx.types.ResRet.f32 %721, 1
  %724 = extractvalue %dx.types.ResRet.f32 %721, 2
  %725 = extractvalue %dx.types.ResRet.f32 %721, 3
  %726 = and i32 %720, 255
  %727 = uitofp i32 %726 to float
  %728 = lshr i32 %720, 8
  %729 = and i32 %728, 255
  %730 = uitofp i32 %729 to float
  %731 = fmul fast float %725, %727
  %732 = fadd fast float %731, %730
  %733 = fmul fast float %732, 0x3F70101000000000
  %734 = add i32 %24, 56
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = and i32 %736, 255
  %738 = uitofp i32 %737 to float
  %739 = fmul fast float %738, 0x3F70101020000000
  %740 = lshr i32 %736, 8
  %741 = and i32 %740, 255
  %742 = uitofp i32 %741 to float
  %743 = fmul fast float %742, 0x3F70101020000000
  %744 = lshr i32 %736, 16
  %745 = and i32 %744, 255
  %746 = uitofp i32 %745 to float
  %747 = fmul fast float %746, 0x3F70101020000000
  %748 = add i32 %24, 124
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = add i32 %750, 0
  %752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %752, %dx.types.Handle %53, float %213, float %214, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = extractvalue %dx.types.ResRet.f32 %753, 1
  %756 = extractvalue %dx.types.ResRet.f32 %753, 2
  %757 = add i32 %24, 44
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = shl i32 %759, 4
  %761 = and i32 %760, 32752
  %762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %761)  ; LegacyF16ToF32(value)
  %763 = lshr i32 %759, 7
  %764 = and i32 %763, 32752
  %765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %764)  ; LegacyF16ToF32(value)
  %766 = lshr i32 %759, 22
  %767 = shl nuw nsw i32 %766, 5
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = fmul fast float %762, %754
  %770 = fmul fast float %765, %755
  %771 = fmul fast float %768, %756
  %772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %773 = extractvalue %dx.types.CBufRet.f32 %772, 0
  %774 = fmul fast float %769, %773
  %775 = fmul fast float %770, %773
  %776 = fmul fast float %771, %773
  %777 = add i32 %24, 48
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = lshr i32 %779, 22
  %781 = shl nuw nsw i32 %780, 5
  %782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %781)  ; LegacyF16ToF32(value)
  %783 = fmul fast float %782, %774
  %784 = select i1 %118, float %783, float %774
  %785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = extractvalue %dx.types.ResRet.f32 %785, 1
  %788 = extractvalue %dx.types.ResRet.f32 %785, 2
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 1
  %791 = fmul fast float %790, %786
  %792 = fmul fast float %790, %787
  %793 = fmul fast float %790, %788
  %794 = fadd fast float %733, 0xBFB99999A0000000
  %795 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  %796 = fmul fast float %795, 0x3FF1C71C80000000
  %797 = fsub fast float 1.000000e+00, %796
  %798 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %799 = fmul fast float %722, %706
  %800 = fmul fast float %739, %739
  %801 = fmul fast float %800, %799
  %802 = fmul fast float %801, %798
  %803 = fmul fast float %723, %707
  %804 = fmul fast float %743, %743
  %805 = fmul fast float %804, %803
  %806 = fmul fast float %805, %798
  %807 = fmul fast float %724, %708
  %808 = fmul fast float %747, %747
  %809 = fmul fast float %808, %807
  %810 = fmul fast float %809, %798
  %811 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %812 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %813 = call float @dx.op.unary.f32(i32 7, float %810)  ; Saturate(value)
  %814 = fmul fast float %784, %710
  %815 = fmul fast float %775, %711
  %816 = fmul fast float %776, %712
  %817 = call float @dx.op.dot3.f32(i32 55, float %814, float %815, float %816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %818 = select i1 %118, float 0.000000e+00, float %814
  %819 = select i1 %118, float %817, float %815
  %820 = select i1 %118, float 0.000000e+00, float %816
  %821 = fmul fast float %627, %784
  %822 = fmul fast float %628, %775
  %823 = fmul fast float %629, %776
  %824 = call float @dx.op.dot3.f32(i32 55, float %811, float %812, float %813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %825 = add i32 %24, 32
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = and i32 %827, 255
  %829 = uitofp i32 %828 to float
  %830 = lshr i32 %827, 8
  %831 = and i32 %830, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, %824
  %834 = fadd fast float %833, %829
  %835 = fmul fast float %834, 0x3F70101020000000
  %836 = call float @dx.op.unary.f32(i32 7, float %835)  ; Saturate(value)
  %837 = and i32 %138, 8192
  %838 = icmp eq i32 %837, 0
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 0
  br i1 %838, label %847, label %841, !dx.controlflow.hints !69

; <label>:841                                     ; preds = %705
  %842 = add i32 %135, 176
  %843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.f32 %843, 0
  %845 = fcmp fast oge float %844, 0.000000e+00
  %846 = select i1 %845, float %844, float %840
  br label %847

; <label>:847                                     ; preds = %841, %705
  %848 = phi float [ %846, %841 ], [ %840, %705 ]
  %849 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %301, i32 %302, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = lshr i32 %850, 18
  %852 = uitofp i32 %851 to float
  %853 = fmul fast float %852, 0x3F4C00EBA0000000
  %854 = call float @dx.op.unary.f32(i32 21, float %853)  ; Exp(value)
  %855 = fadd fast float %854, -1.000000e+00
  %856 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %857 = extractvalue %dx.types.Dimensions %856, 0
  %858 = sitofp i32 %857 to float
  %859 = extractvalue %dx.types.Dimensions %856, 1
  %860 = sitofp i32 %859 to float
  %861 = fcmp fast oge float %299, %858
  %862 = fcmp fast oge float %300, %860
  %863 = or i1 %861, %862
  %864 = select i1 %863, float 0x4197782600000000, float %855
  %865 = icmp eq i32 %134, 3
  %866 = fcmp fast ogt float %52, %864
  %867 = and i1 %325, %866
  %868 = or i1 %865, %867
  %869 = icmp eq i32 %134, 2
  %870 = fcmp fast ole float %52, %864
  %871 = and i1 %869, %870
  %872 = or i1 %871, %868
  %873 = fmul fast float %821, %791
  %874 = fmul fast float %822, %792
  %875 = fmul fast float %823, %793
  %876 = fadd fast float %873, %818
  %877 = fadd fast float %819, %874
  %878 = fadd fast float %875, %820
  %879 = fmul fast float %876, %709
  %880 = fmul fast float %877, %709
  %881 = fmul fast float %878, %709
  %882 = fmul fast float %791, %709
  %883 = fmul fast float %792, %709
  %884 = fmul fast float %793, %709
  %885 = fsub fast float 1.000000e+00, %709
  %886 = call float @dx.op.dot3.f32(i32 55, float %885, float %885, float %885, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %887 = fsub fast float 1.000000e+00, %886
  %888 = fmul fast float %848, %836
  %889 = fsub fast float 1.000000e+00, %836
  %890 = call float @dx.op.unary.f32(i32 7, float %889)  ; Saturate(value)
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 3
  %893 = fmul fast float %892, %890
  %894 = fadd fast float %893, %888
  %895 = and i32 %138, 1048576
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %988, label %897, !dx.controlflow.hints !70

; <label>:897                                     ; preds = %847
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 2
  %900 = extractvalue %dx.types.CBufRet.f32 %898, 3
  %901 = fmul fast float %899, %57
  %902 = fmul fast float %900, %58
  %903 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %904 = call float @dx.op.unary.f32(i32 7, float %902)  ; Saturate(value)
  %905 = select i1 %872, i32 2, i32 0
  %906 = or i32 %905, 1
  %907 = uitofp i32 %906 to float
  %908 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %903, float %904, float %907, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %909 = extractvalue %dx.types.ResRet.f32 %908, 0
  %910 = extractvalue %dx.types.ResRet.f32 %908, 1
  %911 = extractvalue %dx.types.ResRet.f32 %908, 2
  %912 = extractvalue %dx.types.ResRet.f32 %908, 3
  %913 = add nuw nsw i32 %905, 2
  %914 = uitofp i32 %913 to float
  %915 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %903, float %904, float %914, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = extractvalue %dx.types.ResRet.f32 %915, 1
  %918 = extractvalue %dx.types.ResRet.f32 %915, 2
  %919 = extractvalue %dx.types.ResRet.f32 %915, 3
  %920 = call float @dx.op.binary.f32(i32 35, float %910, float %911)  ; FMax(a,b)
  %921 = call float @dx.op.binary.f32(i32 35, float %909, float %920)  ; FMax(a,b)
  %922 = call float @dx.op.binary.f32(i32 35, float %921, float %912)  ; FMax(a,b)
  %923 = call float @dx.op.binary.f32(i32 36, float %917, float %918)  ; FMin(a,b)
  %924 = call float @dx.op.binary.f32(i32 36, float %916, float %923)  ; FMin(a,b)
  %925 = call float @dx.op.binary.f32(i32 36, float %924, float %919)  ; FMin(a,b)
  %926 = fmul fast float %922, 2.550000e+02
  %927 = fadd fast float %926, 0x3F70101020000000
  %928 = fptoui float %927 to i32
  %929 = fmul fast float %925, 2.550000e+02
  %930 = fadd fast float %929, 0x3F70101020000000
  %931 = fptoui float %930 to i32
  %932 = icmp ult i32 %928, %931
  br i1 %932, label %933, label %981

; <label>:933                                     ; preds = %897
  %934 = fcmp fast ogt float %51, 9.843750e-01
  %935 = fadd fast float %52, -4.000000e+00
  %936 = select i1 %934, float -4.000000e+00, float %935
  %937 = call float @dx.op.binary.f32(i32 35, float %936, float 0.000000e+00)  ; FMax(a,b)
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 0
  %940 = fadd fast float %939, %937
  %941 = extractvalue %dx.types.CBufRet.f32 %938, 2
  %942 = fmul fast float %940, %941
  %943 = call float @dx.op.unary.f32(i32 23, float %942)  ; Log(value)
  %944 = extractvalue %dx.types.CBufRet.f32 %938, 3
  %945 = fmul fast float %944, %943
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %948 = fmul fast float %945, %947
  %949 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  %950 = uitofp i32 %928 to float
  %951 = uitofp i32 %931 to float
  %952 = fadd fast float %950, 5.000000e-01
  %953 = fadd fast float %951, 5.000000e-01
  %954 = fmul fast float %947, %952
  %955 = fmul fast float %947, %953
  %956 = fadd fast float %954, 0x3F0FFB4800000000
  %957 = fadd fast float %955, 0xBF0FFB4800000000
  %958 = call float @dx.op.binary.f32(i32 35, float %949, float %956)  ; FMax(a,b)
  %959 = call float @dx.op.binary.f32(i32 36, float %958, float %957)  ; FMin(a,b)
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 1
  %962 = extractvalue %dx.types.CBufRet.f32 %960, 2
  %963 = extractvalue %dx.types.CBufRet.f32 %960, 0
  %964 = select i1 %872, float %963, float 0.000000e+00
  %965 = fmul fast float %961, %959
  %966 = fadd fast float %964, %965
  %967 = fadd fast float %964, %962
  %968 = fsub fast float %961, %962
  %969 = fadd fast float %968, %964
  %970 = call float @dx.op.binary.f32(i32 35, float %966, float %967)  ; FMax(a,b)
  %971 = call float @dx.op.binary.f32(i32 36, float %970, float %969)  ; FMin(a,b)
  %972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %903, float %904, float %971, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %973 = extractvalue %dx.types.ResRet.f32 %972, 0
  %974 = extractvalue %dx.types.ResRet.f32 %972, 1
  %975 = extractvalue %dx.types.ResRet.f32 %972, 2
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 1
  %978 = fmul fast float %977, %973
  %979 = fmul fast float %977, %974
  %980 = fmul fast float %977, %975
  br label %981

; <label>:981                                     ; preds = %933, %897
  %982 = phi float [ %978, %933 ], [ 1.000000e+00, %897 ]
  %983 = phi float [ %979, %933 ], [ 1.000000e+00, %897 ]
  %984 = phi float [ %980, %933 ], [ 1.000000e+00, %897 ]
  %985 = fmul fast float %982, %879
  %986 = fmul fast float %983, %880
  %987 = fmul fast float %984, %881
  br label %988

; <label>:988                                     ; preds = %981, %847
  %989 = phi float [ %985, %981 ], [ %879, %847 ]
  %990 = phi float [ %986, %981 ], [ %880, %847 ]
  %991 = phi float [ %987, %981 ], [ %881, %847 ]
  %992 = and i32 %138, 2097152
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %998, label %994, !dx.controlflow.hints !71

; <label>:994                                     ; preds = %988
  %995 = add i32 %135, 192
  %996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.f32 %996, 0
  br label %1001

; <label>:998                                     ; preds = %988
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 3
  br label %1001

; <label>:1001                                    ; preds = %998, %994
  %1002 = phi float [ %997, %994 ], [ %1000, %998 ]
  %1003 = fmul fast float %882, %811
  %1004 = fmul fast float %883, %812
  %1005 = fmul fast float %884, %813
  br i1 %867, label %1006, label %1115

; <label>:1006                                    ; preds = %1001
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 2
  %1009 = extractvalue %dx.types.CBufRet.f32 %1007, 3
  %1010 = fmul fast float %1008, %57
  %1011 = fmul fast float %1009, %58
  %1012 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  %1013 = call float @dx.op.unary.f32(i32 7, float %1011)  ; Saturate(value)
  %1014 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1012, float %1013, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.ResRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.ResRet.f32 %1014, 2
  %1018 = extractvalue %dx.types.ResRet.f32 %1014, 3
  %1019 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1012, float %1013, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.ResRet.f32 %1019, 1
  %1022 = extractvalue %dx.types.ResRet.f32 %1019, 2
  %1023 = extractvalue %dx.types.ResRet.f32 %1019, 3
  %1024 = call float @dx.op.binary.f32(i32 35, float %1016, float %1017)  ; FMax(a,b)
  %1025 = call float @dx.op.binary.f32(i32 35, float %1015, float %1024)  ; FMax(a,b)
  %1026 = call float @dx.op.binary.f32(i32 35, float %1025, float %1018)  ; FMax(a,b)
  %1027 = call float @dx.op.binary.f32(i32 36, float %1021, float %1022)  ; FMin(a,b)
  %1028 = call float @dx.op.binary.f32(i32 36, float %1020, float %1027)  ; FMin(a,b)
  %1029 = call float @dx.op.binary.f32(i32 36, float %1028, float %1023)  ; FMin(a,b)
  %1030 = fmul fast float %1026, 2.550000e+02
  %1031 = fadd fast float %1030, 0x3F70101020000000
  %1032 = fptoui float %1031 to i32
  %1033 = fmul fast float %1029, 2.550000e+02
  %1034 = fadd fast float %1033, 0x3F70101020000000
  %1035 = fptoui float %1034 to i32
  %1036 = icmp ult i32 %1032, %1035
  br i1 %1036, label %1037, label %1088

; <label>:1037                                    ; preds = %1006
  %1038 = fcmp fast ogt float %51, 9.843750e-01
  %1039 = fadd fast float %52, -4.000000e+00
  %1040 = select i1 %1038, float -4.000000e+00, float %1039
  %1041 = call float @dx.op.binary.f32(i32 35, float %1040, float 0.000000e+00)  ; FMax(a,b)
  %1042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1043 = extractvalue %dx.types.CBufRet.f32 %1042, 0
  %1044 = fadd fast float %1043, %1041
  %1045 = extractvalue %dx.types.CBufRet.f32 %1042, 2
  %1046 = fmul fast float %1044, %1045
  %1047 = call float @dx.op.unary.f32(i32 23, float %1046)  ; Log(value)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1042, 3
  %1049 = fmul fast float %1048, %1047
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 2
  %1052 = fmul fast float %1049, %1051
  %1053 = call float @dx.op.unary.f32(i32 7, float %1052)  ; Saturate(value)
  %1054 = uitofp i32 %1032 to float
  %1055 = uitofp i32 %1035 to float
  %1056 = fadd fast float %1054, 5.000000e-01
  %1057 = fadd fast float %1055, 5.000000e-01
  %1058 = fmul fast float %1051, %1056
  %1059 = fmul fast float %1051, %1057
  %1060 = fadd fast float %1058, 0x3F0FFB4800000000
  %1061 = fadd fast float %1059, 0xBF0FFB4800000000
  %1062 = call float @dx.op.binary.f32(i32 35, float %1053, float %1060)  ; FMax(a,b)
  %1063 = call float @dx.op.binary.f32(i32 36, float %1062, float %1061)  ; FMin(a,b)
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1066 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1067 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1068 = fmul fast float %1065, %1063
  %1069 = fadd fast float %1067, %1068
  %1070 = fadd fast float %1067, %1066
  %1071 = fsub fast float %1065, %1066
  %1072 = fadd fast float %1071, %1067
  %1073 = call float @dx.op.binary.f32(i32 35, float %1069, float %1070)  ; FMax(a,b)
  %1074 = call float @dx.op.binary.f32(i32 36, float %1073, float %1072)  ; FMin(a,b)
  %1075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1012, float %1013, float %1074, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.ResRet.f32 %1075, 2
  %1079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1012, float %1013, float %1074, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1085 = fmul fast float %1084, %1080
  %1086 = fmul fast float %1084, %1081
  %1087 = fmul fast float %1084, %1082
  br label %1088

; <label>:1088                                    ; preds = %1037, %1006
  %1089 = phi float [ %1076, %1037 ], [ 1.000000e+00, %1006 ]
  %1090 = phi float [ %1077, %1037 ], [ 1.000000e+00, %1006 ]
  %1091 = phi float [ %1078, %1037 ], [ 1.000000e+00, %1006 ]
  %1092 = phi float [ %1085, %1037 ], [ 0.000000e+00, %1006 ]
  %1093 = phi float [ %1086, %1037 ], [ 0.000000e+00, %1006 ]
  %1094 = phi float [ %1087, %1037 ], [ 0.000000e+00, %1006 ]
  %1095 = fmul fast float %1092, %887
  %1096 = fmul fast float %1093, %887
  %1097 = fmul fast float %1094, %887
  %1098 = call float @dx.op.dot3.f32(i32 55, float %1089, float %1090, float %1091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = call float @dx.op.dot3.f32(i32 55, float %1095, float %1096, float %1097, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = select i1 %118, float %1098, float %1089
  %1101 = select i1 %118, float %1098, float %1090
  %1102 = select i1 %118, float 1.000000e+00, float %1091
  %1103 = select i1 %118, float %1099, float %1095
  %1104 = select i1 %118, float 0.000000e+00, float %1096
  %1105 = select i1 %118, float 0.000000e+00, float %1097
  %1106 = fmul fast float %1100, %1003
  %1107 = fmul fast float %1101, %1004
  %1108 = fmul fast float %1102, %1005
  %1109 = fadd fast float %1106, %1103
  %1110 = fadd fast float %1107, %1104
  %1111 = fadd fast float %1105, %1108
  %1112 = fmul fast float %1100, %989
  %1113 = fmul fast float %1101, %990
  %1114 = fmul fast float %1102, %991
  br label %1115

; <label>:1115                                    ; preds = %1088, %1001
  %1116 = phi float [ %864, %1088 ], [ %52, %1001 ]
  %1117 = phi float [ %1109, %1088 ], [ %1003, %1001 ]
  %1118 = phi float [ %1110, %1088 ], [ %1004, %1001 ]
  %1119 = phi float [ %1111, %1088 ], [ %1005, %1001 ]
  %1120 = phi float [ %1112, %1088 ], [ %989, %1001 ]
  %1121 = phi float [ %1113, %1088 ], [ %990, %1001 ]
  %1122 = phi float [ %1114, %1088 ], [ %991, %1001 ]
  %1123 = phi float [ %1089, %1088 ], [ 1.000000e+00, %1001 ]
  br i1 %872, label %1425, label %1124

; <label>:1124                                    ; preds = %1115
  %1125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.ResRet.f32 %1125, 1
  %1128 = extractvalue %dx.types.ResRet.f32 %1125, 2
  %1129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1131 = extractvalue %dx.types.ResRet.f32 %1129, 1
  %1132 = extractvalue %dx.types.ResRet.f32 %1129, 2
  %1133 = fmul fast float %1126, %887
  %1134 = fmul fast float %1127, %887
  %1135 = fmul fast float %1128, %887
  %1136 = fmul fast float %1130, %1123
  %1137 = call float @dx.op.dot3.f32(i32 55, float %1130, float %1131, float %1132, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1138 = call float @dx.op.dot3.f32(i32 55, float %1133, float %1134, float %1135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1139 = select i1 %118, float %1137, float %1130
  %1140 = select i1 %118, float %1137, float %1131
  %1141 = select i1 %118, float 1.000000e+00, float %1132
  %1142 = select i1 %118, float %1138, float %1133
  %1143 = select i1 %118, float 0.000000e+00, float %1134
  %1144 = select i1 %118, float 0.000000e+00, float %1135
  %1145 = fmul fast float %1139, %1117
  %1146 = fmul fast float %1140, %1118
  %1147 = fmul fast float %1141, %1119
  %1148 = fadd fast float %1145, %1142
  %1149 = fadd fast float %1146, %1143
  %1150 = fadd fast float %1147, %1144
  %1151 = fmul fast float %1139, %1120
  %1152 = fmul fast float %1140, %1121
  %1153 = fmul fast float %1141, %1122
  %1154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1155 = extractvalue %dx.types.CBufRet.i32 %1154, 0
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1425, label %1157, !dx.controlflow.hints !72

; <label>:1157                                    ; preds = %1124
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 2
  %1160 = extractvalue %dx.types.CBufRet.f32 %1158, 3
  %1161 = fmul fast float %1159, %57
  %1162 = fmul fast float %1160, %58
  %1163 = fmul fast float %1161, 2.000000e+00
  %1164 = fmul fast float %1162, 2.000000e+00
  %1165 = fsub fast float 1.000000e+00, %1163
  %1166 = fsub fast float 1.000000e+00, %1164
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 0
  %1169 = extractvalue %dx.types.CBufRet.f32 %1167, 1
  %1170 = extractvalue %dx.types.CBufRet.f32 %1167, 2
  %1171 = fmul fast float %1165, %1168
  %1172 = fmul fast float %1165, %1169
  %1173 = fmul fast float %1165, %1170
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 0
  %1176 = extractvalue %dx.types.CBufRet.f32 %1174, 1
  %1177 = extractvalue %dx.types.CBufRet.f32 %1174, 2
  %1178 = fmul fast float %1166, %1175
  %1179 = fmul fast float %1166, %1176
  %1180 = fmul fast float %1166, %1177
  %1181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1181, 0
  %1183 = extractvalue %dx.types.CBufRet.f32 %1181, 1
  %1184 = extractvalue %dx.types.CBufRet.f32 %1181, 2
  %1185 = fadd fast float %1178, %1182
  %1186 = fadd fast float %1185, %1171
  %1187 = fadd fast float %1179, %1183
  %1188 = fadd fast float %1187, %1172
  %1189 = fadd fast float %1180, %1184
  %1190 = fadd fast float %1189, %1173
  %1191 = fmul fast float %1186, %1116
  %1192 = fmul fast float %1188, %1116
  %1193 = fmul fast float %1190, %1116
  %1194 = fmul fast float %1191, %1191
  %1195 = fmul fast float %1192, %1192
  %1196 = fadd fast float %1194, %1195
  %1197 = fmul fast float %1193, %1193
  %1198 = fadd fast float %1196, %1197
  %1199 = call float @dx.op.unary.f32(i32 24, float %1198)  ; Sqrt(value)
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1200, 0
  %1202 = fsub fast float %1199, %1201
  %1203 = extractvalue %dx.types.CBufRet.f32 %1200, 2
  %1204 = fmul fast float %1202, %1203
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = fadd fast float %1205, -5.000000e-01
  %1207 = fmul fast float %1206, 2.000000e+00
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 2
  %1210 = call float @dx.op.binary.f32(i32 36, float %1209, float %1207)  ; FMin(a,b)
  %1211 = fsub fast float -0.000000e+00, %1209
  %1212 = fcmp fast ogt float %1210, %1211
  br i1 %1212, label %1213, label %1425, !dx.controlflow.hints !73

; <label>:1213                                    ; preds = %1157
  %1214 = fmul fast float %1210, 5.000000e-01
  %1215 = fadd fast float %1214, 5.000000e-01
  %1216 = call float @dx.op.unary.f32(i32 22, float %1215)  ; Frc(value)
  %1217 = call float @dx.op.unary.f32(i32 27, float %1216)  ; Round_ni(value)
  %1218 = call float @dx.op.unary.f32(i32 22, float %1216)  ; Frc(value)
  %1219 = fmul fast float %1218, 2.000000e+00
  %1220 = fadd fast float %1219, -1.000000e+00
  %1221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1161, float %1162, float %1217, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.ResRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.ResRet.f32 %1221, 2
  %1225 = extractvalue %dx.types.ResRet.f32 %1221, 3
  %1226 = fadd fast float %1222, -5.000000e-01
  %1227 = fadd fast float %1224, -5.000000e-01
  %1228 = fmul fast float %1226, 0xBFD5555560000000
  %1229 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1227, float %1228)  ; FMad(a,b,c)
  %1230 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1223, float 0.000000e+00)  ; FMad(a,b,c)
  %1231 = fadd fast float %1230, %1225
  %1232 = fmul fast float %1226, -7.500000e-01
  %1233 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1227, float %1232)  ; FMad(a,b,c)
  %1234 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1223, float 0.000000e+00)  ; FMad(a,b,c)
  %1235 = fadd fast float %1234, %1225
  %1236 = call float @dx.op.binary.f32(i32 35, float %1229, float -1.000000e+00)  ; FMax(a,b)
  %1237 = call float @dx.op.binary.f32(i32 35, float %1231, float -1.000000e+00)  ; FMax(a,b)
  %1238 = call float @dx.op.binary.f32(i32 35, float %1233, float -1.000000e+00)  ; FMax(a,b)
  %1239 = call float @dx.op.binary.f32(i32 35, float %1235, float -1.000000e+00)  ; FMax(a,b)
  %1240 = call float @dx.op.binary.f32(i32 36, float %1236, float 1.000000e+00)  ; FMin(a,b)
  %1241 = call float @dx.op.binary.f32(i32 36, float %1237, float 1.000000e+00)  ; FMin(a,b)
  %1242 = call float @dx.op.binary.f32(i32 36, float %1238, float 1.000000e+00)  ; FMin(a,b)
  %1243 = call float @dx.op.binary.f32(i32 36, float %1239, float 1.000000e+00)  ; FMin(a,b)
  %1244 = fcmp fast olt float %1240, 0x3FEFFF8020000000
  br i1 %1244, label %1245, label %1360, !dx.controlflow.hints !74

; <label>:1245                                    ; preds = %1213
  %1246 = extractvalue %dx.types.CBufRet.f32 %1208, 3
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.CBufRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.CBufRet.f32 %1247, 2
  %1251 = extractvalue %dx.types.CBufRet.f32 %1247, 3
  %1252 = fsub fast float %1248, %1240
  %1253 = fsub fast float %1249, %1241
  %1254 = fsub fast float %1250, %1242
  %1255 = fsub fast float %1251, %1243
  %1256 = fmul fast float %1252, %1246
  %1257 = fmul fast float %1253, %1246
  %1258 = fmul fast float %1254, %1246
  %1259 = fmul fast float %1255, %1246
  %1260 = fadd fast float %1256, %1240
  %1261 = fadd fast float %1257, %1241
  %1262 = fsub fast float -0.000000e+00, %1261
  %1263 = fadd fast float %1258, %1242
  %1264 = fadd fast float %1259, %1243
  %1265 = fmul fast float %1260, %1260
  %1266 = fsub fast float %1261, %1265
  %1267 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1266)  ; FMax(a,b)
  %1268 = fdiv fast float 1.000000e+00, %1267
  %1269 = fmul fast float %1261, %1260
  %1270 = fsub fast float %1263, %1269
  %1271 = fsub fast float %1220, %1260
  %1272 = fmul fast float %1220, %1220
  %1273 = fsub fast float %1272, %1261
  %1274 = fmul fast float %1271, %1268
  %1275 = fmul fast float %1274, %1270
  %1276 = fsub fast float %1273, %1275
  %1277 = fmul fast float %1261, %1261
  %1278 = fsub fast float %1264, %1277
  %1279 = fmul fast float %1270, %1270
  %1280 = fmul fast float %1279, %1268
  %1281 = fsub fast float %1278, %1280
  %1282 = fdiv fast float %1276, %1281
  %1283 = fmul fast float %1270, %1282
  %1284 = fsub fast float %1271, %1283
  %1285 = fmul fast float %1284, %1268
  %1286 = fmul fast float %1285, %1260
  %1287 = fsub fast float 1.000000e+00, %1286
  %1288 = fmul fast float %1261, %1282
  %1289 = fsub fast float %1287, %1288
  %1290 = fmul fast float %1285, %1285
  %1291 = fmul fast float %1282, 4.000000e+00
  %1292 = fmul fast float %1291, %1289
  %1293 = fsub fast float %1290, %1292
  %1294 = call float @dx.op.unary.f32(i32 24, float %1293)  ; Sqrt(value)
  %1295 = fcmp fast oge float %1285, 0.000000e+00
  %1296 = fsub fast float -0.000000e+00, %1294
  %1297 = select i1 %1295, float %1296, float %1294
  %1298 = fsub fast float %1297, %1285
  %1299 = fdiv fast float %1298, %1282
  %1300 = fdiv fast float %1289, %1298
  %1301 = fmul fast float %1299, 5.000000e-01
  %1302 = fmul fast float %1300, 2.000000e+00
  %1303 = select i1 %1295, float %1301, float %1302
  %1304 = select i1 %1295, float %1302, float %1301
  %1305 = call float @dx.op.binary.f32(i32 35, float %1303, float %1304)  ; FMax(a,b)
  %1306 = call float @dx.op.binary.f32(i32 36, float %1303, float %1304)  ; FMin(a,b)
  %1307 = fcmp fast ogt float %1220, %1306
  br i1 %1307, label %1308, label %1318

; <label>:1308                                    ; preds = %1245
  %1309 = fsub fast float %1220, %1306
  %1310 = fsub fast float %1305, %1306
  %1311 = fmul fast float %1309, %1310
  %1312 = fmul fast float %1305, %1220
  %1313 = fadd fast float %1305, %1220
  %1314 = fmul fast float %1313, %1260
  %1315 = fadd fast float %1312, %1261
  %1316 = fsub fast float %1315, %1314
  %1317 = fdiv fast float %1316, %1311
  br label %1318

; <label>:1318                                    ; preds = %1308, %1245
  %1319 = phi float [ %1317, %1308 ], [ 0.000000e+00, %1245 ]
  %1320 = fcmp fast ogt float %1220, %1305
  %1321 = fsub fast float %1220, %1305
  br i1 %1320, label %1322, label %1332

; <label>:1322                                    ; preds = %1318
  %1323 = fsub fast float %1305, %1306
  %1324 = fmul fast float %1323, %1321
  %1325 = fmul fast float %1306, %1220
  %1326 = fadd fast float %1306, %1220
  %1327 = fmul fast float %1326, %1260
  %1328 = fsub fast float %1262, %1325
  %1329 = fadd fast float %1328, %1327
  %1330 = fdiv fast float %1329, %1324
  %1331 = fadd fast float %1330, %1319
  br label %1332

; <label>:1332                                    ; preds = %1322, %1318
  %1333 = phi float [ %1331, %1322 ], [ %1319, %1318 ]
  %1334 = fsub fast float %1220, %1306
  %1335 = fmul fast float %1334, %1321
  %1336 = fmul fast float %1306, %1305
  %1337 = fadd fast float %1306, %1305
  %1338 = fmul fast float %1337, %1260
  %1339 = fadd fast float %1336, %1261
  %1340 = fsub fast float %1339, %1338
  %1341 = fdiv fast float %1340, %1335
  %1342 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1343 = fcmp fast oeq float %1002, 0.000000e+00
  %1344 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1345 = fcmp fast oeq float %1344, 0.000000e+00
  %1346 = or i1 %1343, %1345
  %1347 = fmul fast float %1344, 2.000000e+00
  %1348 = fadd fast float %1209, %1210
  %1349 = fdiv fast float %1348, %1347
  %1350 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1351 = fmul fast float %1350, 2.000000e+00
  %1352 = fsub fast float 3.000000e+00, %1351
  %1353 = fmul fast float %1350, %1350
  %1354 = fmul fast float %1353, %1352
  %1355 = select i1 %1346, float 1.000000e+00, float %1354
  %1356 = fmul fast float %1341, %1002
  %1357 = fadd fast float %1342, %1356
  %1358 = call float @dx.op.unary.f32(i32 7, float %1357)  ; Saturate(value)
  %1359 = fmul fast float %1355, %1358
  br label %1360

; <label>:1360                                    ; preds = %1332, %1213
  %1361 = phi float [ %1359, %1332 ], [ 0.000000e+00, %1213 ]
  %1362 = fsub fast float 1.000000e+00, %1361
  %1363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1161, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1364 = extractvalue %dx.types.ResRet.f32 %1363, 0
  %1365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.i32 %1365, 2
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1373, label %1368

; <label>:1368                                    ; preds = %1360
  %1369 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1370 = fadd fast float %1364, -1.000000e+00
  %1371 = fmul fast float %1369, %1370
  %1372 = fadd fast float %1371, 1.000000e+00
  br label %1373

; <label>:1373                                    ; preds = %1368, %1360
  %1374 = phi float [ %1372, %1368 ], [ %1362, %1360 ]
  %1375 = call float @dx.op.binary.f32(i32 35, float %1364, float %1374)  ; FMax(a,b)
  %1376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.i32 %1376, 2
  %1378 = and i32 %1377, 1
  %1379 = icmp eq i32 %1378, 0
  %1380 = fcmp fast une float %1375, 1.000000e+00
  %1381 = and i1 %1380, %1379
  br i1 %1381, label %1382, label %1401

; <label>:1382                                    ; preds = %1373
  %1383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1161, float %1162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1384 = extractvalue %dx.types.ResRet.f32 %1383, 0
  %1385 = extractvalue %dx.types.ResRet.f32 %1383, 1
  %1386 = extractvalue %dx.types.ResRet.f32 %1383, 2
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1389 = fmul fast float %1388, %1384
  %1390 = fmul fast float %1388, %1385
  %1391 = fmul fast float %1388, %1386
  %1392 = fcmp fast ogt float %1364, 0x3FEFFF2E40000000
  %1393 = fsub fast float 1.000000e+00, %1375
  %1394 = fsub fast float 1.000000e+00, %1364
  %1395 = fdiv fast float %1393, %1394
  %1396 = call float @dx.op.unary.f32(i32 7, float %1395)  ; Saturate(value)
  %1397 = select i1 %1392, float 0.000000e+00, float %1396
  %1398 = fmul fast float %1389, %1397
  %1399 = fmul fast float %1390, %1397
  %1400 = fmul fast float %1391, %1397
  br label %1401

; <label>:1401                                    ; preds = %1382, %1373
  %1402 = phi float [ 0.000000e+00, %1373 ], [ %1398, %1382 ]
  %1403 = phi float [ 0.000000e+00, %1373 ], [ %1399, %1382 ]
  %1404 = phi float [ 0.000000e+00, %1373 ], [ %1400, %1382 ]
  %1405 = fmul fast float %1402, %887
  %1406 = fmul fast float %1403, %887
  %1407 = fmul fast float %1404, %887
  %1408 = fmul fast float %1375, %1136
  %1409 = call float @dx.op.dot3.f32(i32 55, float %1375, float %1375, float %1375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1410 = call float @dx.op.dot3.f32(i32 55, float %1405, float %1406, float %1407, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1411 = select i1 %118, float %1409, float %1375
  %1412 = select i1 %118, float 1.000000e+00, float %1375
  %1413 = select i1 %118, float %1410, float %1405
  %1414 = select i1 %118, float 0.000000e+00, float %1406
  %1415 = select i1 %118, float 0.000000e+00, float %1407
  %1416 = fmul fast float %1411, %1148
  %1417 = fmul fast float %1411, %1149
  %1418 = fmul fast float %1412, %1150
  %1419 = fadd fast float %1416, %1413
  %1420 = fadd fast float %1417, %1414
  %1421 = fadd fast float %1415, %1418
  %1422 = fmul fast float %1411, %1151
  %1423 = fmul fast float %1411, %1152
  %1424 = fmul fast float %1412, %1153
  br label %1425

; <label>:1425                                    ; preds = %1401, %1157, %1124, %1115
  %1426 = phi float [ %1117, %1115 ], [ %1148, %1124 ], [ %1419, %1401 ], [ %1148, %1157 ]
  %1427 = phi float [ %1118, %1115 ], [ %1149, %1124 ], [ %1420, %1401 ], [ %1149, %1157 ]
  %1428 = phi float [ %1119, %1115 ], [ %1150, %1124 ], [ %1421, %1401 ], [ %1150, %1157 ]
  %1429 = phi float [ %1120, %1115 ], [ %1151, %1124 ], [ %1422, %1401 ], [ %1151, %1157 ]
  %1430 = phi float [ %1121, %1115 ], [ %1152, %1124 ], [ %1423, %1401 ], [ %1152, %1157 ]
  %1431 = phi float [ %1122, %1115 ], [ %1153, %1124 ], [ %1424, %1401 ], [ %1153, %1157 ]
  %1432 = phi float [ %1123, %1115 ], [ %1136, %1124 ], [ %1408, %1401 ], [ %1136, %1157 ]
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.f32 %1433, 2
  %1435 = extractvalue %dx.types.CBufRet.f32 %1433, 3
  %1436 = fmul fast float %1434, %57
  %1437 = fmul fast float %1435, %58
  %1438 = call float @dx.op.unary.f32(i32 7, float %1436)  ; Saturate(value)
  %1439 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1440 = select i1 %872, i32 2, i32 0
  %1441 = or i32 %1440, 1
  %1442 = uitofp i32 %1441 to float
  %1443 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1438, float %1439, float %1442, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.ResRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.ResRet.f32 %1443, 2
  %1447 = extractvalue %dx.types.ResRet.f32 %1443, 3
  %1448 = add nuw nsw i32 %1440, 2
  %1449 = uitofp i32 %1448 to float
  %1450 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1438, float %1439, float %1449, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1451 = extractvalue %dx.types.ResRet.f32 %1450, 0
  %1452 = extractvalue %dx.types.ResRet.f32 %1450, 1
  %1453 = extractvalue %dx.types.ResRet.f32 %1450, 2
  %1454 = extractvalue %dx.types.ResRet.f32 %1450, 3
  %1455 = call float @dx.op.binary.f32(i32 35, float %1445, float %1446)  ; FMax(a,b)
  %1456 = call float @dx.op.binary.f32(i32 35, float %1444, float %1455)  ; FMax(a,b)
  %1457 = call float @dx.op.binary.f32(i32 35, float %1456, float %1447)  ; FMax(a,b)
  %1458 = call float @dx.op.binary.f32(i32 36, float %1452, float %1453)  ; FMin(a,b)
  %1459 = call float @dx.op.binary.f32(i32 36, float %1451, float %1458)  ; FMin(a,b)
  %1460 = call float @dx.op.binary.f32(i32 36, float %1459, float %1454)  ; FMin(a,b)
  %1461 = fmul fast float %1457, 2.550000e+02
  %1462 = fadd fast float %1461, 0x3F70101020000000
  %1463 = fptoui float %1462 to i32
  %1464 = fmul fast float %1460, 2.550000e+02
  %1465 = fadd fast float %1464, 0x3F70101020000000
  %1466 = fptoui float %1465 to i32
  %1467 = icmp ult i32 %1463, %1466
  br i1 %1467, label %1468, label %1520

; <label>:1468                                    ; preds = %1425
  %1469 = fcmp fast ogt float %51, 9.843750e-01
  %1470 = fadd fast float %1116, -4.000000e+00
  %1471 = select i1 %1469, float -4.000000e+00, float %1470
  %1472 = call float @dx.op.binary.f32(i32 35, float %1471, float 0.000000e+00)  ; FMax(a,b)
  %1473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1474 = extractvalue %dx.types.CBufRet.f32 %1473, 0
  %1475 = fadd fast float %1474, %1472
  %1476 = extractvalue %dx.types.CBufRet.f32 %1473, 2
  %1477 = fmul fast float %1475, %1476
  %1478 = call float @dx.op.unary.f32(i32 23, float %1477)  ; Log(value)
  %1479 = extractvalue %dx.types.CBufRet.f32 %1473, 3
  %1480 = fmul fast float %1479, %1478
  %1481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.f32 %1481, 2
  %1483 = fmul fast float %1480, %1482
  %1484 = call float @dx.op.unary.f32(i32 7, float %1483)  ; Saturate(value)
  %1485 = uitofp i32 %1463 to float
  %1486 = uitofp i32 %1466 to float
  %1487 = fadd fast float %1485, 5.000000e-01
  %1488 = fadd fast float %1486, 5.000000e-01
  %1489 = fmul fast float %1482, %1487
  %1490 = fmul fast float %1482, %1488
  %1491 = fadd fast float %1489, 0x3F0FFB4800000000
  %1492 = fadd fast float %1490, 0xBF0FFB4800000000
  %1493 = call float @dx.op.binary.f32(i32 35, float %1484, float %1491)  ; FMax(a,b)
  %1494 = call float @dx.op.binary.f32(i32 36, float %1493, float %1492)  ; FMin(a,b)
  %1495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1496 = extractvalue %dx.types.CBufRet.f32 %1495, 1
  %1497 = extractvalue %dx.types.CBufRet.f32 %1495, 2
  %1498 = extractvalue %dx.types.CBufRet.f32 %1495, 0
  %1499 = select i1 %872, float %1498, float 0.000000e+00
  %1500 = fmul fast float %1496, %1494
  %1501 = fadd fast float %1499, %1500
  %1502 = fadd fast float %1499, %1497
  %1503 = fsub fast float %1496, %1497
  %1504 = fadd fast float %1503, %1499
  %1505 = call float @dx.op.binary.f32(i32 35, float %1501, float %1502)  ; FMax(a,b)
  %1506 = call float @dx.op.binary.f32(i32 36, float %1505, float %1504)  ; FMin(a,b)
  %1507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1438, float %1439, float %1506, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1508 = extractvalue %dx.types.ResRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.ResRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.ResRet.f32 %1507, 2
  %1511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1438, float %1439, float %1506, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1512 = extractvalue %dx.types.ResRet.f32 %1511, 0
  %1513 = extractvalue %dx.types.ResRet.f32 %1511, 1
  %1514 = extractvalue %dx.types.ResRet.f32 %1511, 2
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 1
  %1517 = fmul fast float %1516, %1512
  %1518 = fmul fast float %1516, %1513
  %1519 = fmul fast float %1516, %1514
  br label %1520

; <label>:1520                                    ; preds = %1468, %1425
  %1521 = phi float [ %1508, %1468 ], [ 1.000000e+00, %1425 ]
  %1522 = phi float [ %1509, %1468 ], [ 1.000000e+00, %1425 ]
  %1523 = phi float [ %1510, %1468 ], [ 1.000000e+00, %1425 ]
  %1524 = phi float [ %1517, %1468 ], [ 0.000000e+00, %1425 ]
  %1525 = phi float [ %1518, %1468 ], [ 0.000000e+00, %1425 ]
  %1526 = phi float [ %1519, %1468 ], [ 0.000000e+00, %1425 ]
  %1527 = fmul fast float %1524, %887
  %1528 = fmul fast float %1525, %887
  %1529 = fmul fast float %1526, %887
  %1530 = fmul fast float %1521, %1432
  %1531 = call float @dx.op.dot3.f32(i32 55, float %1521, float %1522, float %1523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1532 = call float @dx.op.dot3.f32(i32 55, float %1527, float %1528, float %1529, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1533 = select i1 %118, float %1531, float %1521
  %1534 = select i1 %118, float %1531, float %1522
  %1535 = select i1 %118, float 1.000000e+00, float %1523
  %1536 = select i1 %118, float %1532, float %1527
  %1537 = select i1 %118, float 0.000000e+00, float %1528
  %1538 = select i1 %118, float 0.000000e+00, float %1529
  %1539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.i32 %1539, 3
  %1541 = and i32 %1540, 3
  %1542 = icmp ne i32 %1541, 0
  %1543 = and i32 %1540, 4
  %1544 = icmp ne i32 %1543, 0
  %1545 = and i1 %1542, %1544
  %1546 = and i1 %118, %1545
  br i1 %1546, label %1547, label %1553

; <label>:1547                                    ; preds = %1520
  %1548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1548, 1
  %1550 = fadd fast float %1530, -1.000000e+00
  %1551 = fmul fast float %1549, %1550
  %1552 = fadd fast float %1551, 1.000000e+00
  br label %1553

; <label>:1553                                    ; preds = %1547, %1520
  %1554 = phi float [ %1552, %1547 ], [ %1530, %1520 ]
  %1555 = fadd fast float %1429, %1426
  %1556 = fmul fast float %1533, %1555
  %1557 = fadd fast float %1556, %1536
  %1558 = fadd fast float %1430, %1427
  %1559 = fmul fast float %1534, %1558
  %1560 = fadd fast float %1559, %1537
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 0
  br i1 %118, label %1563, label %1584

; <label>:1563                                    ; preds = %1553
  %1564 = fadd fast float %1557, %1560
  %1565 = fmul fast float %1562, %1564
  %1566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1566, 3
  %1568 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %1569 = fsub fast float %894, %1568
  %1570 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %1571 = fmul fast float %1569, %1570
  %1572 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  %1573 = fsub fast float %1572, %1567
  %1574 = fmul fast float %1573, %1554
  %1575 = fadd fast float %1574, %1567
  %1576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.f32 %1576, 0
  %1578 = fsub fast float %1575, %1577
  %1579 = fmul fast float %1578, 1.000000e+01
  %1580 = call float @dx.op.unary.f32(i32 7, float %1579)  ; Saturate(value)
  %1581 = fmul fast float %1580, %887
  %1582 = fsub fast float %887, %1581
  %1583 = fmul fast float %1582, %1575
  br label %1596

; <label>:1584                                    ; preds = %1553
  %1585 = fadd fast float %1431, %1428
  %1586 = fmul fast float %1535, %1585
  %1587 = fadd fast float %1586, %1538
  %1588 = fmul fast float %1562, %1557
  %1589 = fmul fast float %1562, %1560
  %1590 = fmul fast float %1562, %1587
  %1591 = call float @dx.op.binary.f32(i32 35, float %1589, float %1590)  ; FMax(a,b)
  %1592 = call float @dx.op.binary.f32(i32 35, float %1588, float %1591)  ; FMax(a,b)
  %1593 = call float @dx.op.binary.f32(i32 35, float %1592, float %887)  ; FMax(a,b)
  %1594 = fcmp fast ugt float %1593, 0x3F10000000000000
  br i1 %1594, label %1596, label %1595

; <label>:1595                                    ; preds = %1584
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1596

; <label>:1596                                    ; preds = %1595, %1584, %1563
  %1597 = phi float [ %1565, %1563 ], [ %1588, %1595 ], [ %1588, %1584 ]
  %1598 = phi float [ %1583, %1563 ], [ %1589, %1595 ], [ %1589, %1584 ]
  %1599 = phi float [ %1582, %1563 ], [ %1590, %1595 ], [ %1590, %1584 ]
  %1600 = phi float [ %1582, %1563 ], [ %887, %1595 ], [ %887, %1584 ]
  %1601 = fadd fast float %643, 0x3FE3C6EF40000000
  %1602 = call float @dx.op.unary.f32(i32 22, float %1601)  ; Frc(value)
  %1603 = call float @dx.op.unary.f32(i32 23, float %1597)  ; Log(value)
  %1604 = fadd fast float %1603, -7.000000e+00
  %1605 = call float @dx.op.unary.f32(i32 21, float %1604)  ; Exp(value)
  %1606 = fmul fast float %1602, 2.000000e+00
  %1607 = fadd fast float %1606, -1.000000e+00
  %1608 = fmul fast float %1605, %1607
  %1609 = fcmp fast ogt float %1597, 0.000000e+00
  %1610 = select i1 %1609, float %1608, float 0.000000e+00
  %1611 = fadd fast float %1610, %1597
  %1612 = fadd fast float %643, 0x3FF3C6EF40000000
  %1613 = call float @dx.op.unary.f32(i32 22, float %1612)  ; Frc(value)
  %1614 = call float @dx.op.unary.f32(i32 23, float %1598)  ; Log(value)
  %1615 = fadd fast float %1614, -7.000000e+00
  %1616 = call float @dx.op.unary.f32(i32 21, float %1615)  ; Exp(value)
  %1617 = fmul fast float %1613, 2.000000e+00
  %1618 = fadd fast float %1617, -1.000000e+00
  %1619 = fmul fast float %1616, %1618
  %1620 = fcmp fast ogt float %1598, 0.000000e+00
  %1621 = select i1 %1620, float %1619, float 0.000000e+00
  %1622 = fadd fast float %1621, %1598
  %1623 = fadd fast float %643, 0x3FFDAA66E0000000
  %1624 = call float @dx.op.unary.f32(i32 22, float %1623)  ; Frc(value)
  %1625 = call float @dx.op.unary.f32(i32 23, float %1599)  ; Log(value)
  %1626 = fadd fast float %1625, -6.000000e+00
  %1627 = call float @dx.op.unary.f32(i32 21, float %1626)  ; Exp(value)
  %1628 = fmul fast float %1624, 2.000000e+00
  %1629 = fadd fast float %1628, -1.000000e+00
  %1630 = fmul fast float %1627, %1629
  %1631 = fcmp fast ogt float %1599, 0.000000e+00
  %1632 = select i1 %1631, float %1630, float 0.000000e+00
  %1633 = fadd fast float %1632, %1599
  %1634 = select i1 %118, float %1598, float %1622
  %1635 = select i1 %118, float %1599, float %1633
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1636 = call float @dx.op.binary.f32(i32 36, float %1611, float 3.225500e+04)  ; FMin(a,b)
  %1637 = call float @dx.op.binary.f32(i32 36, float %1634, float 3.225500e+04)  ; FMin(a,b)
  %1638 = call float @dx.op.binary.f32(i32 36, float %1635, float 3.225500e+04)  ; FMin(a,b)
  %1639 = call float @dx.op.binary.f32(i32 36, float %1600, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1636)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1637)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1638)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1639)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1600)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1600)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1600)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1600)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

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
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

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
!35 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!36 = !{void ()* @ps_main, !"ps_main", !37, !4, !61}
!37 = !{!38, !57, null}
!38 = !{!39, !42, !43, !44, !46, !49, !51, !53, !54, !56}
!39 = !{i32 0, !"SV_Position", i8 9, i8 3, !40, i8 4, i32 1, i8 4, i32 0, i8 0, !41}
!40 = !{i32 0}
!41 = !{i32 3, i32 15}
!42 = !{i32 1, !"COLOR", i8 9, i8 0, !40, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!43 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 4, i32 2, i8 0, !41}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 3, i8 0, !41}
!45 = !{i32 3}
!46 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 4, i8 0, !48}
!47 = !{i32 4}
!48 = !{i32 3, i32 3}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 3, i32 1, i8 2, i32 5, i8 0, !48}
!50 = !{i32 5}
!51 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, !41}
!52 = !{i32 8}
!53 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !40, i8 1, i32 1, i8 4, i32 7, i8 0, !41}
!54 = !{i32 8, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 8, i8 0, !55}
!55 = !{i32 3, i32 5}
!56 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !40, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!57 = !{!58, !59}
!58 = !{i32 0, !"SV_Target", i8 9, i8 16, !40, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!59 = !{i32 1, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 1, i8 0, !41}
!60 = !{i32 1}
!61 = !{i32 0, i64 24}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

