;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2   xyzw        3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyz 
; TEXCOORD                 5   xy          5     NONE   float   xy  
; TEXCOORD                 8   xyzw        6     NONE   float       
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
; shader hash: 5945a05a64ededebaaffb55d6590250f
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
; TEXCOORD                 2        nointerpolation       
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
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 33, 34 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 0
  %51 = fmul fast float %50, %43
  %52 = fmul fast float %50, %44
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 3
  %56 = fmul fast float %51, 2.000000e+00
  %57 = fmul fast float %56, %54
  %58 = fmul fast float %52, 2.000000e+00
  %59 = fmul fast float %58, %55
  %60 = fsub fast float 1.000000e+00, %57
  %61 = fsub fast float 1.000000e+00, %59
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fmul fast float %60, %63
  %67 = fmul fast float %60, %64
  %68 = fmul fast float %60, %65
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = fmul fast float %61, %70
  %74 = fmul fast float %61, %71
  %75 = fmul fast float %61, %72
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %80 = fadd fast float %73, %77
  %81 = fadd fast float %80, %66
  %82 = fadd fast float %74, %78
  %83 = fadd fast float %82, %67
  %84 = fadd fast float %75, %79
  %85 = fadd fast float %84, %68
  %86 = fmul fast float %81, %46
  %87 = fmul fast float %83, %46
  %88 = fmul fast float %85, %46
  %89 = bitcast i32 %23 to float
  %90 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.i32 %90, 3
  %92 = and i32 %91, 3
  %93 = icmp ne i32 %92, 0
  %94 = and i32 %91, 4
  %95 = icmp ne i32 %94, 0
  %96 = and i1 %93, %95
  br i1 %96, label %97, label %106

; <label>:97                                      ; preds = %0
  %98 = fmul fast float %55, %52
  %99 = fmul fast float %54, %51
  %100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %99, float %98, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = fsub fast float 1.000000e+00, %101
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = fcmp fast olt float %102, %104
  br label %109

; <label>:106                                     ; preds = %0
  %107 = icmp eq i32 %94, 0
  %108 = and i1 %93, %107
  br label %109

; <label>:109                                     ; preds = %106, %97
  %110 = phi i1 [ %105, %97 ], [ %108, %106 ]
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %112, %51
  %115 = fmul fast float %113, %52
  %116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %117 = extractvalue %dx.types.ResRet.i32 %116, 0
  %118 = and i32 %117, 114688
  %119 = icmp ne i32 %118, 0
  %120 = select i1 %119, float %114, float 0.000000e+00
  %121 = select i1 %119, float %115, float 0.000000e+00
  %122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %120, float %121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = fmul fast float %123, 2.550000e+02
  %125 = fptoui float %124 to i32
  %126 = select i1 %119, i32 %125, i32 0
  %127 = mul i32 %22, 208
  %128 = add i32 %127, 188
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  %131 = and i32 %91, 114688
  %132 = and i32 %91, 8
  %133 = icmp ne i32 %132, 0
  %134 = or i1 %110, %133
  %135 = select i1 %134, i32 %131, i32 16384
  %136 = and i32 %135, %130
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

; <label>:138                                     ; preds = %109
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %139

; <label>:139                                     ; preds = %138, %109
  %140 = and i32 %130, 512
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %166, label %142

; <label>:142                                     ; preds = %139
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %146 = fmul fast float %144, %51
  %147 = fmul fast float %145, %52
  %148 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %150 = fdiv fast float %148, %149
  %151 = fcmp fast ogt float %150, 0x3FFC71C720000000
  br i1 %151, label %152, label %158

; <label>:152                                     ; preds = %142
  %153 = fdiv fast float 0x3FFC71C720000000, %150
  %154 = fmul fast float %153, %147
  %155 = fsub fast float 1.000000e+00, %153
  %156 = fmul fast float %155, 5.000000e-01
  %157 = fadd fast float %156, %154
  br label %166

; <label>:158                                     ; preds = %142
  %159 = fcmp fast olt float %150, 0x3FFC71C720000000
  br i1 %159, label %160, label %166

; <label>:160                                     ; preds = %158
  %161 = fmul fast float %146, 5.625000e-01
  %162 = fmul fast float %161, %150
  %163 = fmul fast float %150, 2.812500e-01
  %164 = fsub fast float 5.000000e-01, %163
  %165 = fadd fast float %164, %162
  br label %166

; <label>:166                                     ; preds = %160, %158, %152, %139
  %167 = phi float [ %37, %139 ], [ %146, %152 ], [ %165, %160 ], [ %146, %158 ]
  %168 = phi float [ %38, %139 ], [ %157, %152 ], [ %147, %160 ], [ %147, %158 ]
  %169 = fadd fast float %37, %34
  %170 = fadd fast float %38, %35
  %171 = add i32 %24, 72
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = extractvalue %dx.types.ResRet.i32 %172, 1
  %175 = bitcast i32 %173 to float
  %176 = bitcast i32 %174 to float
  %177 = fmul fast float %175, %37
  %178 = fmul fast float %176, %38
  %179 = call float @dx.op.unary.f32(i32 22, float %177)  ; Frc(value)
  %180 = call float @dx.op.unary.f32(i32 22, float %178)  ; Frc(value)
  %181 = and i32 %130, 16
  %182 = icmp ne i32 %181, 0
  %183 = select i1 %182, float 1.000000e+00, float %42
  %184 = icmp eq i32 %181, 0
  br i1 %184, label %204, label %185, !dx.controlflow.hints !61

; <label>:185                                     ; preds = %166
  %186 = add i32 %127, 64
  %187 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = fadd fast float %188, 1.000000e+00
  %190 = fmul fast float %189, %42
  %191 = fsub fast float %190, %188
  %192 = fsub fast float %189, %191
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = fsub fast float 1.000000e+00, %190
  %195 = call float @dx.op.unary.f32(i32 7, float %194)  ; Saturate(value)
  %196 = fsub fast float %193, %195
  %197 = fsub fast float %183, %195
  %198 = fdiv fast float %197, %196
  %199 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %200 = fmul fast float %199, 2.000000e+00
  %201 = fsub fast float 3.000000e+00, %200
  %202 = fmul fast float %199, %199
  %203 = fmul fast float %202, %201
  br label %204

; <label>:204                                     ; preds = %185, %166
  %205 = phi float [ %203, %185 ], [ %183, %166 ]
  %206 = fcmp fast ogt float %205, 0.000000e+00
  br i1 %206, label %208, label %207

; <label>:207                                     ; preds = %204
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %208

; <label>:208                                     ; preds = %207, %204
  %209 = call float @dx.op.unary.f32(i32 7, float %205)  ; Saturate(value)
  %210 = fmul fast float %51, 5.000000e-01
  %211 = fmul fast float %52, 5.000000e-01
  %212 = fptosi float %210 to i32
  %213 = fptosi float %211 to i32
  %214 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %212, i32 %213, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = lshr i32 %215, 18
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F4C00EBA0000000
  %219 = call float @dx.op.unary.f32(i32 21, float %218)  ; Exp(value)
  %220 = fadd fast float %219, -1.000000e+00
  %221 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %222 = extractvalue %dx.types.Dimensions %221, 0
  %223 = sitofp i32 %222 to float
  %224 = extractvalue %dx.types.Dimensions %221, 1
  %225 = sitofp i32 %224 to float
  %226 = fcmp fast oge float %210, %223
  %227 = fcmp fast oge float %211, %225
  %228 = or i1 %226, %227
  %229 = select i1 %228, float 0x4197782600000000, float %220
  %230 = fsub fast float %229, %46
  %231 = fcmp fast ogt float %230, 0.000000e+00
  %232 = and i32 %126, -2
  %233 = icmp eq i32 %232, 2
  %234 = and i1 %233, %231
  %235 = xor i1 %231, true
  %236 = icmp eq i32 %126, 1
  %237 = and i1 %236, %235
  %238 = or i1 %234, %237
  %239 = and i32 %130, 262144
  %240 = icmp ne i32 %239, 0
  %241 = and i1 %240, %238
  %242 = xor i1 %238, true
  %243 = and i32 %130, 131072
  %244 = icmp ne i32 %243, 0
  %245 = and i1 %244, %242
  %246 = or i1 %241, %245
  br i1 %246, label %247, label %248

; <label>:247                                     ; preds = %208
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %248

; <label>:248                                     ; preds = %247, %208
  %249 = and i32 %130, 32
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %501, label %251, !dx.controlflow.hints !62

; <label>:251                                     ; preds = %248
  %252 = add i32 %127, 80
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = extractvalue %dx.types.ResRet.f32 %253, 3
  %258 = add i32 %127, 96
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = extractvalue %dx.types.ResRet.f32 %259, 1
  %262 = extractvalue %dx.types.ResRet.f32 %259, 2
  %263 = add i32 %127, 112
  %264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = extractvalue %dx.types.ResRet.f32 %264, 1
  %267 = extractvalue %dx.types.ResRet.f32 %264, 2
  %268 = extractvalue %dx.types.ResRet.f32 %264, 3
  %269 = add i32 %127, 128
  %270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = extractvalue %dx.types.ResRet.f32 %270, 1
  %273 = extractvalue %dx.types.ResRet.f32 %270, 2
  %274 = extractvalue %dx.types.ResRet.f32 %270, 3
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 4096
  %278 = icmp ne i32 %277, 0
  %279 = fcmp fast une float %262, 0.000000e+00
  %280 = and i32 %276, 64
  %281 = icmp ne i32 %280, 0
  %282 = and i32 %276, 128
  %283 = icmp eq i32 %282, 0
  %284 = and i32 %276, 2048
  %285 = icmp eq i32 %284, 0
  %286 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %287 = extractvalue %dx.types.Dimensions %286, 0
  %288 = sitofp i32 %287 to float
  %289 = extractvalue %dx.types.Dimensions %286, 1
  %290 = sitofp i32 %289 to float
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 2
  %293 = extractvalue %dx.types.CBufRet.f32 %291, 3
  %294 = fmul fast float %292, %51
  %295 = fmul fast float %293, %52
  %296 = fmul fast float %294, %288
  %297 = fmul fast float %295, %290
  %298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.f32 %298, 1
  %300 = fsub fast float -0.000000e+00, %299
  %301 = fptoui float %300 to i32
  %302 = fptoui float %296 to i32
  %303 = fptoui float %297 to i32
  %304 = and i32 %301, 31
  %305 = lshr i32 %302, %304
  %306 = lshr i32 %303, %304
  %307 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %301, i32 %305, i32 %306, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = fcmp fast ogt float %308, -1.000000e+00
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 1
  %312 = select i1 %309, float %311, float 1.000000e+00
  %313 = fadd fast float %308, 1.000000e+00
  %314 = fmul fast float %312, %313
  %315 = call float @dx.op.unary.f32(i32 6, float %314)  ; FAbs(value)
  %316 = extractvalue %dx.types.CBufRet.f32 %310, 3
  %317 = fcmp fast oge float %315, %316
  %318 = select i1 %317, float 0x4197782600000000, float %315
  br i1 %285, label %396, label %319, !dx.controlflow.hints !63

; <label>:319                                     ; preds = %251
  %320 = fmul fast float %56, %292
  %321 = fmul fast float %58, %293
  %322 = fsub fast float 1.000000e+00, %320
  %323 = fsub fast float 1.000000e+00, %321
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 0
  %326 = extractvalue %dx.types.CBufRet.f32 %324, 1
  %327 = extractvalue %dx.types.CBufRet.f32 %324, 2
  %328 = fmul fast float %322, %325
  %329 = fmul fast float %322, %326
  %330 = fmul fast float %322, %327
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %335 = fmul fast float %323, %332
  %336 = fmul fast float %323, %333
  %337 = fmul fast float %323, %334
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %340 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %341 = extractvalue %dx.types.CBufRet.f32 %338, 2
  %342 = fadd fast float %335, %339
  %343 = fadd fast float %342, %328
  %344 = fadd fast float %336, %340
  %345 = fadd fast float %344, %329
  %346 = fadd fast float %337, %341
  %347 = fadd fast float %346, %330
  %348 = fmul fast float %343, %318
  %349 = fmul fast float %345, %318
  %350 = fmul fast float %347, %318
  %351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %352 = extractvalue %dx.types.CBufRet.f32 %351, 0
  %353 = extractvalue %dx.types.CBufRet.f32 %351, 1
  %354 = extractvalue %dx.types.CBufRet.f32 %351, 2
  %355 = fsub fast float %352, %25
  %356 = fadd fast float %355, %348
  %357 = fsub fast float %353, %26
  %358 = fadd fast float %357, %349
  %359 = fsub fast float %354, %27
  %360 = fadd fast float %359, %350
  %361 = fmul fast float %28, %28
  %362 = call float @dx.op.dot3.f32(i32 55, float %356, float %358, float %360, float %356, float %358, float %360)  ; Dot3(ax,ay,az,bx,by,bz)
  %363 = fsub fast float %361, %362
  %364 = fmul fast float %261, %361
  %365 = fmul fast float %260, %361
  %366 = fcmp fast olt float %363, %364
  %367 = fcmp fast ogt float %363, %365
  %368 = or i1 %366, %367
  %369 = select i1 %368, float 0.000000e+00, float %363
  %370 = fsub fast float %260, %261
  %371 = fmul fast float %370, %361
  %372 = fsub fast float %369, %364
  %373 = fdiv fast float %372, %371
  %374 = call float @dx.op.unary.f32(i32 7, float %373)  ; Saturate(value)
  %375 = fmul fast float %374, 2.000000e+00
  %376 = fsub fast float 3.000000e+00, %375
  %377 = fmul fast float %374, %374
  %378 = fmul fast float %377, %376
  %379 = fmul fast float %265, %39
  %380 = fmul fast float %266, %40
  %381 = fmul fast float %267, %41
  %382 = fsub fast float %379, %271
  %383 = fsub fast float %380, %272
  %384 = fsub fast float %381, %273
  %385 = fsub fast float %268, %274
  %386 = fmul fast float %378, %382
  %387 = fmul fast float %378, %383
  %388 = fmul fast float %378, %384
  %389 = fmul fast float %378, %385
  %390 = fadd fast float %386, %271
  %391 = fadd fast float %387, %272
  %392 = fadd fast float %388, %273
  %393 = fadd fast float %389, %274
  %394 = fmul fast float %254, %254
  %395 = fmul fast float %394, %369
  br label %491

; <label>:396                                     ; preds = %251
  %397 = and i32 %276, 256
  %398 = icmp eq i32 %397, 0
  %399 = fsub fast float %318, %46
  br i1 %398, label %448, label %400

; <label>:400                                     ; preds = %396
  %401 = fadd fast float %260, %46
  %402 = fcmp fast olt float %318, %46
  %403 = fcmp fast ogt float %318, %401
  %404 = or i1 %402, %403
  %405 = select i1 %404, float 0.000000e+00, float %399
  %406 = call float @dx.op.unary.f32(i32 83, float %318)  ; DerivCoarseX(value)
  %407 = call float @dx.op.unary.f32(i32 84, float %318)  ; DerivCoarseY(value)
  %408 = fmul fast float %406, %406
  %409 = fmul fast float %407, %407
  %410 = fadd fast float %409, %408
  %411 = call float @dx.op.unary.f32(i32 24, float %410)  ; Sqrt(value)
  %412 = extractvalue %dx.types.CBufRet.f32 %298, 2
  %413 = fmul fast float %412, %411
  %414 = call float @dx.op.unary.f32(i32 7, float %413)  ; Saturate(value)
  %415 = fmul fast float %414, %261
  %416 = fdiv fast float %399, %415
  %417 = call float @dx.op.unary.f32(i32 7, float %416)  ; Saturate(value)
  %418 = fmul fast float %417, 2.000000e+00
  %419 = fsub fast float 3.000000e+00, %418
  %420 = fmul fast float %417, %417
  %421 = fmul fast float %420, %419
  %422 = fsub fast float %318, %401
  %423 = fadd fast float %422, %415
  %424 = fdiv fast float %423, %415
  %425 = call float @dx.op.unary.f32(i32 7, float %424)  ; Saturate(value)
  %426 = fmul fast float %425, 2.000000e+00
  %427 = fsub fast float 3.000000e+00, %426
  %428 = fmul fast float %425, %425
  %429 = fmul fast float %428, %427
  %430 = fsub fast float %421, %429
  %431 = fmul fast float %265, %39
  %432 = fmul fast float %266, %40
  %433 = fmul fast float %267, %41
  %434 = fsub fast float %431, %271
  %435 = fsub fast float %432, %272
  %436 = fsub fast float %433, %273
  %437 = fsub fast float %268, %274
  %438 = fmul fast float %430, %434
  %439 = fmul fast float %430, %435
  %440 = fmul fast float %430, %436
  %441 = fmul fast float %430, %437
  %442 = fadd fast float %438, %271
  %443 = fadd fast float %439, %272
  %444 = fadd fast float %440, %273
  %445 = fadd fast float %441, %274
  %446 = fmul fast float %405, %254
  %447 = call float @dx.op.unary.f32(i32 6, float %446)  ; FAbs(value)
  br label %491

; <label>:448                                     ; preds = %396
  br i1 %279, label %449, label %462

; <label>:449                                     ; preds = %448
  %450 = fdiv fast float 5.000000e+01, %28
  %451 = select i1 %281, float %450, float 1.000000e+00
  %452 = fmul fast float %451, %254
  %453 = fmul fast float %179, 2.000000e+00
  %454 = fmul fast float %180, 2.000000e+00
  %455 = fadd fast float %453, -1.000000e+00
  %456 = fadd fast float %454, -1.000000e+00
  %457 = call float @dx.op.dot2.f32(i32 54, float %455, float %456, float %455, float %456)  ; Dot2(ax,ay,bx,by)
  %458 = fmul fast float %262, %28
  %459 = fmul fast float %458, %457
  %460 = fsub fast float %399, %459
  %461 = fmul fast float %452, %460
  br label %491

; <label>:462                                     ; preds = %448
  br i1 %283, label %483, label %463

; <label>:463                                     ; preds = %462
  %464 = fmul fast float %28, 0x3F947AE140000000
  %465 = select i1 %281, float %464, float 1.000000e+00
  %466 = fdiv fast float 1.000000e+00, %465
  %467 = fmul fast float %465, %255
  %468 = fmul fast float %465, %256
  %469 = fmul fast float %466, %257
  %470 = call float @dx.op.unary.f32(i32 6, float %399)  ; FAbs(value)
  %471 = fcmp fast olt float %470, %467
  br i1 %471, label %472, label %476, !dx.controlflow.hints !64

; <label>:472                                     ; preds = %463
  %473 = fmul fast float %466, %254
  %474 = fmul fast float %473, %470
  %475 = call float @dx.op.unary.f32(i32 6, float %474)  ; FAbs(value)
  br label %491

; <label>:476                                     ; preds = %463
  %477 = fcmp fast ogt float %470, %468
  br i1 %477, label %478, label %491

; <label>:478                                     ; preds = %476
  %479 = fsub fast float %470, %468
  %480 = fmul fast float %469, %479
  %481 = call float @dx.op.unary.f32(i32 6, float %480)  ; FAbs(value)
  %482 = fsub fast float 1.000000e+00, %481
  br label %491

; <label>:483                                     ; preds = %462
  %484 = fdiv fast float 5.000000e+01, %28
  %485 = select i1 %281, float %484, float 1.000000e+00
  %486 = fmul fast float %485, %254
  %487 = call float @dx.op.unary.f32(i32 6, float %230)  ; FAbs(value)
  %488 = select i1 %278, float %487, float 0x47EFFFFFE0000000
  %489 = call float @dx.op.binary.f32(i32 36, float %399, float %488)  ; FMin(a,b)
  %490 = fmul fast float %486, %489
  br label %491

; <label>:491                                     ; preds = %483, %478, %476, %472, %449, %400, %319
  %492 = phi float [ %395, %319 ], [ %447, %400 ], [ %461, %449 ], [ %490, %483 ], [ %475, %472 ], [ %482, %478 ], [ %470, %476 ]
  %493 = phi float [ %390, %319 ], [ %442, %400 ], [ %39, %449 ], [ %39, %483 ], [ %39, %472 ], [ %39, %478 ], [ %39, %476 ]
  %494 = phi float [ %391, %319 ], [ %443, %400 ], [ %40, %449 ], [ %40, %483 ], [ %40, %472 ], [ %40, %478 ], [ %40, %476 ]
  %495 = phi float [ %392, %319 ], [ %444, %400 ], [ %41, %449 ], [ %41, %483 ], [ %41, %472 ], [ %41, %478 ], [ %41, %476 ]
  %496 = phi float [ %393, %319 ], [ %445, %400 ], [ 1.000000e+00, %449 ], [ 1.000000e+00, %483 ], [ 1.000000e+00, %472 ], [ 1.000000e+00, %478 ], [ 1.000000e+00, %476 ]
  %497 = call float @dx.op.unary.f32(i32 7, float %492)  ; Saturate(value)
  %498 = fmul fast float %497, %42
  %499 = fmul fast float %496, %209
  %500 = fmul fast float %499, %497
  br label %501

; <label>:501                                     ; preds = %491, %248
  %502 = phi float [ %493, %491 ], [ %39, %248 ]
  %503 = phi float [ %494, %491 ], [ %40, %248 ]
  %504 = phi float [ %495, %491 ], [ %41, %248 ]
  %505 = phi float [ %500, %491 ], [ %209, %248 ]
  %506 = phi float [ %498, %491 ], [ %42, %248 ]
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 2
  %509 = fptosi float %46 to i32
  %510 = sitofp i32 %509 to float
  %511 = fadd fast float %508, %510
  %512 = fmul fast float %511, 0x3FE3C6EF40000000
  %513 = frem fast float %51, 2.560000e+02
  %514 = frem fast float %52, 2.560000e+02
  %515 = fptoui float %513 to i32
  %516 = fptoui float %514 to i32
  %517 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %515, i32 %516, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = fadd fast float %518, %512
  %520 = call float @dx.op.unary.f32(i32 22, float %519)  ; Frc(value)
  %521 = and i32 %130, 1
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %580, label %523, !dx.controlflow.hints !65

; <label>:523                                     ; preds = %501
  %524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %127, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 2
  %526 = extractvalue %dx.types.ResRet.f32 %524, 3
  %527 = add i32 %127, 16
  %528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = extractvalue %dx.types.ResRet.f32 %528, 1
  %531 = extractvalue %dx.types.ResRet.f32 %528, 2
  %532 = add i32 %127, 32
  %533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = extractvalue %dx.types.ResRet.f32 %533, 1
  %536 = extractvalue %dx.types.ResRet.f32 %533, 2
  %537 = and i32 %130, 2
  %538 = icmp eq i32 %537, 0
  %539 = call float @dx.op.dot3.f32(i32 55, float %31, float %32, float %33, float %31, float %32, float %33)  ; Dot3(ax,ay,az,bx,by,bz)
  %540 = call float @dx.op.unary.f32(i32 25, float %539)  ; Rsqrt(value)
  %541 = fmul fast float %540, %31
  %542 = fmul fast float %540, %32
  %543 = fmul fast float %540, %33
  %544 = call float @dx.op.dot3.f32(i32 55, float %86, float %87, float %88, float %86, float %87, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %545 = call float @dx.op.unary.f32(i32 25, float %544)  ; Rsqrt(value)
  %546 = fmul fast float %545, %86
  %547 = fmul fast float %545, %87
  %548 = fmul fast float %545, %88
  %549 = call float @dx.op.dot3.f32(i32 55, float %546, float %547, float %548, float %541, float %542, float %543)  ; Dot3(ax,ay,az,bx,by,bz)
  %550 = fmul fast float %549, %549
  %551 = fmul fast float %550, %525
  %552 = fadd fast float %551, %526
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  br i1 %538, label %554, label %564, !dx.controlflow.hints !66

; <label>:554                                     ; preds = %523
  %555 = extractvalue %dx.types.ResRet.f32 %524, 1
  %556 = extractvalue %dx.types.ResRet.f32 %524, 0
  %557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.f32 %557, 3
  %559 = fmul fast float %558, %544
  %560 = fsub fast float %556, %559
  %561 = fmul fast float %560, %555
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  %563 = fmul fast float %562, %553
  br label %564

; <label>:564                                     ; preds = %554, %523
  %565 = phi float [ %563, %554 ], [ %553, %523 ]
  %566 = fsub fast float %529, %534
  %567 = fsub fast float %530, %535
  %568 = fsub fast float %531, %536
  %569 = fmul fast float %565, %566
  %570 = fmul fast float %565, %567
  %571 = fmul fast float %565, %568
  %572 = fadd fast float %569, %534
  %573 = fadd fast float %570, %535
  %574 = fadd fast float %571, %536
  %575 = fmul fast float %572, %502
  %576 = fmul fast float %573, %503
  %577 = fmul fast float %574, %504
  %578 = fmul fast float %565, %505
  %579 = fmul fast float %565, %506
  br label %580

; <label>:580                                     ; preds = %564, %501
  %581 = phi float [ %575, %564 ], [ %502, %501 ]
  %582 = phi float [ %576, %564 ], [ %503, %501 ]
  %583 = phi float [ %577, %564 ], [ %504, %501 ]
  %584 = phi float [ %578, %564 ], [ %505, %501 ]
  %585 = phi float [ %579, %564 ], [ %506, %501 ]
  %586 = add i32 %24, 120
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = add i32 %588, 0
  %590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %590, %dx.types.Handle %47, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = extractvalue %dx.types.ResRet.f32 %591, 1
  %594 = extractvalue %dx.types.ResRet.f32 %591, 2
  %595 = add i32 %24, 56
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = and i32 %597, 255
  %599 = uitofp i32 %598 to float
  %600 = fmul fast float %599, 0x3F70101020000000
  %601 = lshr i32 %597, 8
  %602 = and i32 %601, 255
  %603 = uitofp i32 %602 to float
  %604 = fmul fast float %603, 0x3F70101020000000
  %605 = lshr i32 %597, 16
  %606 = and i32 %605, 255
  %607 = uitofp i32 %606 to float
  %608 = fmul fast float %607, 0x3F70101020000000
  %609 = fmul fast float %600, %600
  %610 = fmul fast float %609, %592
  %611 = fmul fast float %604, %604
  %612 = fmul fast float %611, %593
  %613 = fmul fast float %608, %608
  %614 = fmul fast float %613, %594
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = add i32 %616, 0
  %618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %617, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %618, %dx.types.Handle %47, float %169, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %620 = extractvalue %dx.types.ResRet.f32 %619, 0
  %621 = extractvalue %dx.types.ResRet.f32 %619, 1
  %622 = extractvalue %dx.types.ResRet.f32 %619, 2
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 255
  %626 = uitofp i32 %625 to float
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = lshr i32 %624, 8
  %629 = and i32 %628, 255
  %630 = uitofp i32 %629 to float
  %631 = fmul fast float %630, 0x3F70101020000000
  %632 = lshr i32 %624, 16
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = fmul fast float %634, 0x3F70101020000000
  %636 = fmul fast float %627, %627
  %637 = fmul fast float %636, %620
  %638 = fmul fast float %631, %631
  %639 = fmul fast float %638, %621
  %640 = fmul fast float %635, %635
  %641 = fmul fast float %640, %622
  %642 = fsub fast float %637, %610
  %643 = fsub fast float %639, %612
  %644 = fsub fast float %641, %614
  %645 = fmul fast float %642, %36
  %646 = fmul fast float %643, %36
  %647 = fmul fast float %644, %36
  %648 = fadd fast float %645, %610
  %649 = fadd fast float %646, %612
  %650 = fadd fast float %647, %614
  %651 = fmul fast float %648, %581
  %652 = fmul fast float %649, %582
  %653 = fmul fast float %650, %583
  %654 = add i32 %24, 40
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = and i32 %656, 255
  %658 = uitofp i32 %657 to float
  %659 = fmul fast float %658, 0x3F70101020000000
  %660 = fmul fast float %659, %659
  %661 = add i32 %24, 128
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = add i32 %663, 0
  %665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %666 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %665, %dx.types.Handle %48, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %667 = extractvalue %dx.types.ResRet.f32 %666, 0
  %668 = fmul fast float %660, %667
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 255
  %672 = uitofp i32 %671 to float
  %673 = fmul fast float %672, 0x3F70101020000000
  %674 = fmul fast float %673, %673
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = add i32 %676, 0
  %678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %677, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %679 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %678, %dx.types.Handle %48, float %169, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = fmul fast float %674, %680
  %682 = fsub fast float %681, %668
  %683 = fmul fast float %682, %36
  %684 = fadd fast float %683, %668
  %685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  %687 = extractvalue %dx.types.ResRet.f32 %685, 1
  %688 = extractvalue %dx.types.ResRet.f32 %685, 2
  %689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %690 = extractvalue %dx.types.CBufRet.f32 %689, 1
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 0
  %693 = fmul fast float %651, %692
  %694 = fmul fast float %652, %692
  %695 = fmul fast float %653, %692
  %696 = call float @dx.op.dot3.f32(i32 55, float %693, float %694, float %695, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = add i32 %24, 32
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = and i32 %699, 255
  %701 = uitofp i32 %700 to float
  %702 = lshr i32 %699, 8
  %703 = and i32 %702, 255
  %704 = uitofp i32 %703 to float
  %705 = fmul fast float %704, %696
  %706 = fadd fast float %705, %701
  %707 = fmul fast float %706, 0x3F70101020000000
  %708 = call float @dx.op.unary.f32(i32 7, float %707)  ; Saturate(value)
  %709 = add i32 %24, 124
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = add i32 %711, 0
  %713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %714 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %713, %dx.types.Handle %48, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = and i32 %130, 8192
  %717 = icmp eq i32 %716, 0
  %718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %719 = extractvalue %dx.types.CBufRet.f32 %718, 0
  br i1 %717, label %730, label %720, !dx.controlflow.hints !67

; <label>:720                                     ; preds = %580
  %721 = add i32 %127, 176
  %722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.f32 %722, 0
  %724 = extractvalue %dx.types.ResRet.f32 %722, 1
  %725 = fcmp fast oge float %723, 0.000000e+00
  %726 = select i1 %725, float %723, float %719
  %727 = fmul fast float %715, %89
  %728 = fmul fast float %727, %724
  %729 = fadd fast float %728, %726
  br label %741

; <label>:730                                     ; preds = %580
  %731 = add i32 %24, 104
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = extractvalue %dx.types.ResRet.i32 %732, 1
  %735 = bitcast i32 %733 to float
  %736 = bitcast i32 %734 to float
  %737 = fcmp fast oge float %735, 0.000000e+00
  %738 = select i1 %737, float %735, float %719
  %739 = fmul fast float %736, %715
  %740 = fadd fast float %738, %739
  br label %741

; <label>:741                                     ; preds = %730, %720
  %742 = phi float [ %729, %720 ], [ %740, %730 ]
  %743 = fsub fast float 1.000000e+00, %684
  %744 = fmul fast float %743, %585
  %745 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %212, i32 %213, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = lshr i32 %746, 18
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %748, 0x3F4C00EBA0000000
  %750 = call float @dx.op.unary.f32(i32 21, float %749)  ; Exp(value)
  %751 = fadd fast float %750, -1.000000e+00
  %752 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %753 = extractvalue %dx.types.Dimensions %752, 0
  %754 = sitofp i32 %753 to float
  %755 = extractvalue %dx.types.Dimensions %752, 1
  %756 = sitofp i32 %755 to float
  %757 = fcmp fast oge float %210, %754
  %758 = fcmp fast oge float %211, %756
  %759 = or i1 %757, %758
  %760 = select i1 %759, float 0x4197782600000000, float %751
  %761 = fadd fast float %684, -1.000000e+00
  %762 = fmul fast float %761, %584
  %763 = fadd fast float %762, 1.000000e+00
  %764 = call float @dx.op.dot3.f32(i32 55, float %763, float %763, float %763, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %765 = fsub fast float 1.000000e+00, %764
  %766 = fmul fast float %742, %708
  %767 = fsub fast float 1.000000e+00, %744
  %768 = fsub fast float %767, %708
  %769 = call float @dx.op.unary.f32(i32 7, float %768)  ; Saturate(value)
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 3
  %772 = fmul fast float %771, %769
  %773 = fadd fast float %772, %766
  %774 = and i32 %130, 2097152
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %780, label %776, !dx.controlflow.hints !68

; <label>:776                                     ; preds = %741
  %777 = add i32 %127, 192
  %778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.f32 %778, 0
  br label %783

; <label>:780                                     ; preds = %741
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 3
  br label %783

; <label>:783                                     ; preds = %780, %776
  %784 = phi float [ %779, %776 ], [ %782, %780 ]
  %785 = fmul fast float %686, %584
  %786 = fmul fast float %785, %690
  %787 = fmul fast float %786, %693
  %788 = fmul fast float %687, %584
  %789 = fmul fast float %788, %690
  %790 = fmul fast float %789, %694
  %791 = fmul fast float %688, %584
  %792 = fmul fast float %791, %690
  %793 = fmul fast float %792, %695
  %794 = icmp eq i32 %126, 3
  %795 = fcmp fast ogt float %46, %760
  %796 = and i1 %236, %795
  %797 = or i1 %794, %796
  %798 = icmp eq i32 %126, 2
  %799 = fcmp fast ole float %46, %760
  %800 = and i1 %798, %799
  %801 = or i1 %800, %797
  br i1 %796, label %802, label %908

; <label>:802                                     ; preds = %783
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 2
  %805 = extractvalue %dx.types.CBufRet.f32 %803, 3
  %806 = fmul fast float %804, %51
  %807 = fmul fast float %805, %52
  %808 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %809 = call float @dx.op.unary.f32(i32 7, float %807)  ; Saturate(value)
  %810 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %808, float %809, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = extractvalue %dx.types.ResRet.f32 %810, 2
  %814 = extractvalue %dx.types.ResRet.f32 %810, 3
  %815 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %808, float %809, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = extractvalue %dx.types.ResRet.f32 %815, 1
  %818 = extractvalue %dx.types.ResRet.f32 %815, 2
  %819 = extractvalue %dx.types.ResRet.f32 %815, 3
  %820 = call float @dx.op.binary.f32(i32 35, float %812, float %813)  ; FMax(a,b)
  %821 = call float @dx.op.binary.f32(i32 35, float %811, float %820)  ; FMax(a,b)
  %822 = call float @dx.op.binary.f32(i32 35, float %821, float %814)  ; FMax(a,b)
  %823 = call float @dx.op.binary.f32(i32 36, float %817, float %818)  ; FMin(a,b)
  %824 = call float @dx.op.binary.f32(i32 36, float %816, float %823)  ; FMin(a,b)
  %825 = call float @dx.op.binary.f32(i32 36, float %824, float %819)  ; FMin(a,b)
  %826 = fmul fast float %822, 2.550000e+02
  %827 = fadd fast float %826, 0x3F70101020000000
  %828 = fptoui float %827 to i32
  %829 = fmul fast float %825, 2.550000e+02
  %830 = fadd fast float %829, 0x3F70101020000000
  %831 = fptoui float %830 to i32
  %832 = icmp ult i32 %828, %831
  br i1 %832, label %833, label %884

; <label>:833                                     ; preds = %802
  %834 = fcmp fast ogt float %45, 9.843750e-01
  %835 = fadd fast float %46, -4.000000e+00
  %836 = select i1 %834, float -4.000000e+00, float %835
  %837 = call float @dx.op.binary.f32(i32 35, float %836, float 0.000000e+00)  ; FMax(a,b)
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %840 = fadd fast float %839, %837
  %841 = extractvalue %dx.types.CBufRet.f32 %838, 2
  %842 = fmul fast float %840, %841
  %843 = call float @dx.op.unary.f32(i32 23, float %842)  ; Log(value)
  %844 = extractvalue %dx.types.CBufRet.f32 %838, 3
  %845 = fmul fast float %844, %843
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %848 = fmul fast float %845, %847
  %849 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %850 = uitofp i32 %828 to float
  %851 = uitofp i32 %831 to float
  %852 = fadd fast float %850, 5.000000e-01
  %853 = fadd fast float %851, 5.000000e-01
  %854 = fmul fast float %847, %852
  %855 = fmul fast float %847, %853
  %856 = fadd fast float %854, 0x3F0FFB4800000000
  %857 = fadd fast float %855, 0xBF0FFB4800000000
  %858 = call float @dx.op.binary.f32(i32 35, float %849, float %856)  ; FMax(a,b)
  %859 = call float @dx.op.binary.f32(i32 36, float %858, float %857)  ; FMin(a,b)
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 1
  %862 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %863 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %864 = fmul fast float %861, %859
  %865 = fadd fast float %863, %864
  %866 = fadd fast float %863, %862
  %867 = fsub fast float %861, %862
  %868 = fadd fast float %867, %863
  %869 = call float @dx.op.binary.f32(i32 35, float %865, float %866)  ; FMax(a,b)
  %870 = call float @dx.op.binary.f32(i32 36, float %869, float %868)  ; FMin(a,b)
  %871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %808, float %809, float %870, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = extractvalue %dx.types.ResRet.f32 %871, 1
  %874 = extractvalue %dx.types.ResRet.f32 %871, 2
  %875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %808, float %809, float %870, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %876 = extractvalue %dx.types.ResRet.f32 %875, 0
  %877 = extractvalue %dx.types.ResRet.f32 %875, 1
  %878 = extractvalue %dx.types.ResRet.f32 %875, 2
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 1
  %881 = fmul fast float %880, %876
  %882 = fmul fast float %880, %877
  %883 = fmul fast float %880, %878
  br label %884

; <label>:884                                     ; preds = %833, %802
  %885 = phi float [ %872, %833 ], [ 1.000000e+00, %802 ]
  %886 = phi float [ %873, %833 ], [ 1.000000e+00, %802 ]
  %887 = phi float [ %874, %833 ], [ 1.000000e+00, %802 ]
  %888 = phi float [ %881, %833 ], [ 0.000000e+00, %802 ]
  %889 = phi float [ %882, %833 ], [ 0.000000e+00, %802 ]
  %890 = phi float [ %883, %833 ], [ 0.000000e+00, %802 ]
  %891 = fmul fast float %888, %765
  %892 = fmul fast float %889, %765
  %893 = fmul fast float %890, %765
  %894 = call float @dx.op.dot3.f32(i32 55, float %885, float %886, float %887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %895 = call float @dx.op.dot3.f32(i32 55, float %891, float %892, float %893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %896 = select i1 %110, float %894, float %885
  %897 = select i1 %110, float %894, float %886
  %898 = select i1 %110, float 1.000000e+00, float %887
  %899 = select i1 %110, float %895, float %891
  %900 = select i1 %110, float 0.000000e+00, float %892
  %901 = select i1 %110, float 0.000000e+00, float %893
  %902 = fmul fast float %896, %787
  %903 = fmul fast float %897, %790
  %904 = fmul fast float %898, %793
  %905 = fadd fast float %902, %899
  %906 = fadd fast float %903, %900
  %907 = fadd fast float %901, %904
  br label %908

; <label>:908                                     ; preds = %884, %783
  %909 = phi float [ %760, %884 ], [ %46, %783 ]
  %910 = phi float [ %905, %884 ], [ %787, %783 ]
  %911 = phi float [ %906, %884 ], [ %790, %783 ]
  %912 = phi float [ %907, %884 ], [ %793, %783 ]
  %913 = phi float [ %885, %884 ], [ 1.000000e+00, %783 ]
  br i1 %801, label %1209, label %914

; <label>:914                                     ; preds = %908
  %915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %29, float %30, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = extractvalue %dx.types.ResRet.f32 %915, 1
  %918 = extractvalue %dx.types.ResRet.f32 %915, 2
  %919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %29, float %30, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %920 = extractvalue %dx.types.ResRet.f32 %919, 0
  %921 = extractvalue %dx.types.ResRet.f32 %919, 1
  %922 = extractvalue %dx.types.ResRet.f32 %919, 2
  %923 = fmul fast float %916, %765
  %924 = fmul fast float %917, %765
  %925 = fmul fast float %918, %765
  %926 = fmul fast float %920, %913
  %927 = call float @dx.op.dot3.f32(i32 55, float %920, float %921, float %922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %928 = call float @dx.op.dot3.f32(i32 55, float %923, float %924, float %925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %929 = select i1 %110, float %927, float %920
  %930 = select i1 %110, float %927, float %921
  %931 = select i1 %110, float 1.000000e+00, float %922
  %932 = select i1 %110, float %928, float %923
  %933 = select i1 %110, float 0.000000e+00, float %924
  %934 = select i1 %110, float 0.000000e+00, float %925
  %935 = fmul fast float %929, %910
  %936 = fmul fast float %930, %911
  %937 = fmul fast float %931, %912
  %938 = fadd fast float %935, %932
  %939 = fadd fast float %936, %933
  %940 = fadd fast float %937, %934
  %941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.i32 %941, 0
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %1209, label %944, !dx.controlflow.hints !69

; <label>:944                                     ; preds = %914
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %947 = extractvalue %dx.types.CBufRet.f32 %945, 3
  %948 = fmul fast float %946, %51
  %949 = fmul fast float %947, %52
  %950 = fmul fast float %948, 2.000000e+00
  %951 = fmul fast float %949, 2.000000e+00
  %952 = fsub fast float 1.000000e+00, %950
  %953 = fsub fast float 1.000000e+00, %951
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 0
  %956 = extractvalue %dx.types.CBufRet.f32 %954, 1
  %957 = extractvalue %dx.types.CBufRet.f32 %954, 2
  %958 = fmul fast float %952, %955
  %959 = fmul fast float %952, %956
  %960 = fmul fast float %952, %957
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %964 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %965 = fmul fast float %953, %962
  %966 = fmul fast float %953, %963
  %967 = fmul fast float %953, %964
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 0
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 1
  %971 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %972 = fadd fast float %965, %969
  %973 = fadd fast float %972, %958
  %974 = fadd fast float %966, %970
  %975 = fadd fast float %974, %959
  %976 = fadd fast float %967, %971
  %977 = fadd fast float %976, %960
  %978 = fmul fast float %973, %909
  %979 = fmul fast float %975, %909
  %980 = fmul fast float %977, %909
  %981 = fmul fast float %978, %978
  %982 = fmul fast float %979, %979
  %983 = fadd fast float %981, %982
  %984 = fmul fast float %980, %980
  %985 = fadd fast float %983, %984
  %986 = call float @dx.op.unary.f32(i32 24, float %985)  ; Sqrt(value)
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 0
  %989 = fsub fast float %986, %988
  %990 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %991 = fmul fast float %989, %990
  %992 = call float @dx.op.unary.f32(i32 7, float %991)  ; Saturate(value)
  %993 = fadd fast float %992, -5.000000e-01
  %994 = fmul fast float %993, 2.000000e+00
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %997 = call float @dx.op.binary.f32(i32 36, float %996, float %994)  ; FMin(a,b)
  %998 = fsub fast float -0.000000e+00, %996
  %999 = fcmp fast ogt float %997, %998
  br i1 %999, label %1000, label %1209, !dx.controlflow.hints !70

; <label>:1000                                    ; preds = %944
  %1001 = fmul fast float %997, 5.000000e-01
  %1002 = fadd fast float %1001, 5.000000e-01
  %1003 = call float @dx.op.unary.f32(i32 22, float %1002)  ; Frc(value)
  %1004 = call float @dx.op.unary.f32(i32 27, float %1003)  ; Round_ni(value)
  %1005 = call float @dx.op.unary.f32(i32 22, float %1003)  ; Frc(value)
  %1006 = fmul fast float %1005, 2.000000e+00
  %1007 = fadd fast float %1006, -1.000000e+00
  %1008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %948, float %949, float %1004, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.ResRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1012 = extractvalue %dx.types.ResRet.f32 %1008, 3
  %1013 = fadd fast float %1009, -5.000000e-01
  %1014 = fadd fast float %1011, -5.000000e-01
  %1015 = fmul fast float %1013, 0xBFD5555560000000
  %1016 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1014, float %1015)  ; FMad(a,b,c)
  %1017 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1010, float 0.000000e+00)  ; FMad(a,b,c)
  %1018 = fadd fast float %1017, %1012
  %1019 = fmul fast float %1013, -7.500000e-01
  %1020 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1014, float %1019)  ; FMad(a,b,c)
  %1021 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1010, float 0.000000e+00)  ; FMad(a,b,c)
  %1022 = fadd fast float %1021, %1012
  %1023 = call float @dx.op.binary.f32(i32 35, float %1016, float -1.000000e+00)  ; FMax(a,b)
  %1024 = call float @dx.op.binary.f32(i32 35, float %1018, float -1.000000e+00)  ; FMax(a,b)
  %1025 = call float @dx.op.binary.f32(i32 35, float %1020, float -1.000000e+00)  ; FMax(a,b)
  %1026 = call float @dx.op.binary.f32(i32 35, float %1022, float -1.000000e+00)  ; FMax(a,b)
  %1027 = call float @dx.op.binary.f32(i32 36, float %1023, float 1.000000e+00)  ; FMin(a,b)
  %1028 = call float @dx.op.binary.f32(i32 36, float %1024, float 1.000000e+00)  ; FMin(a,b)
  %1029 = call float @dx.op.binary.f32(i32 36, float %1025, float 1.000000e+00)  ; FMin(a,b)
  %1030 = call float @dx.op.binary.f32(i32 36, float %1026, float 1.000000e+00)  ; FMin(a,b)
  %1031 = fcmp fast olt float %1027, 0x3FEFFF8020000000
  br i1 %1031, label %1032, label %1147, !dx.controlflow.hints !71

; <label>:1032                                    ; preds = %1000
  %1033 = extractvalue %dx.types.CBufRet.f32 %995, 3
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.CBufRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.CBufRet.f32 %1034, 2
  %1038 = extractvalue %dx.types.CBufRet.f32 %1034, 3
  %1039 = fsub fast float %1035, %1027
  %1040 = fsub fast float %1036, %1028
  %1041 = fsub fast float %1037, %1029
  %1042 = fsub fast float %1038, %1030
  %1043 = fmul fast float %1039, %1033
  %1044 = fmul fast float %1040, %1033
  %1045 = fmul fast float %1041, %1033
  %1046 = fmul fast float %1042, %1033
  %1047 = fadd fast float %1043, %1027
  %1048 = fadd fast float %1044, %1028
  %1049 = fsub fast float -0.000000e+00, %1048
  %1050 = fadd fast float %1045, %1029
  %1051 = fadd fast float %1046, %1030
  %1052 = fmul fast float %1047, %1047
  %1053 = fsub fast float %1048, %1052
  %1054 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1053)  ; FMax(a,b)
  %1055 = fdiv fast float 1.000000e+00, %1054
  %1056 = fmul fast float %1048, %1047
  %1057 = fsub fast float %1050, %1056
  %1058 = fsub fast float %1007, %1047
  %1059 = fmul fast float %1007, %1007
  %1060 = fsub fast float %1059, %1048
  %1061 = fmul fast float %1058, %1055
  %1062 = fmul fast float %1061, %1057
  %1063 = fsub fast float %1060, %1062
  %1064 = fmul fast float %1048, %1048
  %1065 = fsub fast float %1051, %1064
  %1066 = fmul fast float %1057, %1057
  %1067 = fmul fast float %1066, %1055
  %1068 = fsub fast float %1065, %1067
  %1069 = fdiv fast float %1063, %1068
  %1070 = fmul fast float %1057, %1069
  %1071 = fsub fast float %1058, %1070
  %1072 = fmul fast float %1071, %1055
  %1073 = fmul fast float %1072, %1047
  %1074 = fsub fast float 1.000000e+00, %1073
  %1075 = fmul fast float %1048, %1069
  %1076 = fsub fast float %1074, %1075
  %1077 = fmul fast float %1072, %1072
  %1078 = fmul fast float %1069, 4.000000e+00
  %1079 = fmul fast float %1078, %1076
  %1080 = fsub fast float %1077, %1079
  %1081 = call float @dx.op.unary.f32(i32 24, float %1080)  ; Sqrt(value)
  %1082 = fcmp fast oge float %1072, 0.000000e+00
  %1083 = fsub fast float -0.000000e+00, %1081
  %1084 = select i1 %1082, float %1083, float %1081
  %1085 = fsub fast float %1084, %1072
  %1086 = fdiv fast float %1085, %1069
  %1087 = fdiv fast float %1076, %1085
  %1088 = fmul fast float %1086, 5.000000e-01
  %1089 = fmul fast float %1087, 2.000000e+00
  %1090 = select i1 %1082, float %1088, float %1089
  %1091 = select i1 %1082, float %1089, float %1088
  %1092 = call float @dx.op.binary.f32(i32 35, float %1090, float %1091)  ; FMax(a,b)
  %1093 = call float @dx.op.binary.f32(i32 36, float %1090, float %1091)  ; FMin(a,b)
  %1094 = fcmp fast ogt float %1007, %1093
  br i1 %1094, label %1095, label %1105

; <label>:1095                                    ; preds = %1032
  %1096 = fsub fast float %1007, %1093
  %1097 = fsub fast float %1092, %1093
  %1098 = fmul fast float %1096, %1097
  %1099 = fmul fast float %1092, %1007
  %1100 = fadd fast float %1092, %1007
  %1101 = fmul fast float %1100, %1047
  %1102 = fadd fast float %1099, %1048
  %1103 = fsub fast float %1102, %1101
  %1104 = fdiv fast float %1103, %1098
  br label %1105

; <label>:1105                                    ; preds = %1095, %1032
  %1106 = phi float [ %1104, %1095 ], [ 0.000000e+00, %1032 ]
  %1107 = fcmp fast ogt float %1007, %1092
  %1108 = fsub fast float %1007, %1092
  br i1 %1107, label %1109, label %1119

; <label>:1109                                    ; preds = %1105
  %1110 = fsub fast float %1092, %1093
  %1111 = fmul fast float %1110, %1108
  %1112 = fmul fast float %1093, %1007
  %1113 = fadd fast float %1093, %1007
  %1114 = fmul fast float %1113, %1047
  %1115 = fsub fast float %1049, %1112
  %1116 = fadd fast float %1115, %1114
  %1117 = fdiv fast float %1116, %1111
  %1118 = fadd fast float %1117, %1106
  br label %1119

; <label>:1119                                    ; preds = %1109, %1105
  %1120 = phi float [ %1118, %1109 ], [ %1106, %1105 ]
  %1121 = fsub fast float %1007, %1093
  %1122 = fmul fast float %1121, %1108
  %1123 = fmul fast float %1093, %1092
  %1124 = fadd fast float %1093, %1092
  %1125 = fmul fast float %1124, %1047
  %1126 = fadd fast float %1123, %1048
  %1127 = fsub fast float %1126, %1125
  %1128 = fdiv fast float %1127, %1122
  %1129 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  %1130 = fcmp fast oeq float %784, 0.000000e+00
  %1131 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %1132 = fcmp fast oeq float %1131, 0.000000e+00
  %1133 = or i1 %1130, %1132
  %1134 = fmul fast float %1131, 2.000000e+00
  %1135 = fadd fast float %996, %997
  %1136 = fdiv fast float %1135, %1134
  %1137 = call float @dx.op.unary.f32(i32 7, float %1136)  ; Saturate(value)
  %1138 = fmul fast float %1137, 2.000000e+00
  %1139 = fsub fast float 3.000000e+00, %1138
  %1140 = fmul fast float %1137, %1137
  %1141 = fmul fast float %1140, %1139
  %1142 = select i1 %1133, float 1.000000e+00, float %1141
  %1143 = fmul fast float %1128, %784
  %1144 = fadd fast float %1129, %1143
  %1145 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  %1146 = fmul fast float %1142, %1145
  br label %1147

; <label>:1147                                    ; preds = %1119, %1000
  %1148 = phi float [ %1146, %1119 ], [ 0.000000e+00, %1000 ]
  %1149 = fsub fast float 1.000000e+00, %1148
  %1150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %948, float %949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1151 = extractvalue %dx.types.ResRet.f32 %1150, 0
  %1152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.i32 %1152, 2
  %1154 = icmp eq i32 %1153, 0
  br i1 %1154, label %1160, label %1155

; <label>:1155                                    ; preds = %1147
  %1156 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1157 = fadd fast float %1151, -1.000000e+00
  %1158 = fmul fast float %1156, %1157
  %1159 = fadd fast float %1158, 1.000000e+00
  br label %1160

; <label>:1160                                    ; preds = %1155, %1147
  %1161 = phi float [ %1159, %1155 ], [ %1149, %1147 ]
  %1162 = call float @dx.op.binary.f32(i32 35, float %1151, float %1161)  ; FMax(a,b)
  %1163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.i32 %1163, 2
  %1165 = and i32 %1164, 1
  %1166 = icmp eq i32 %1165, 0
  %1167 = fcmp fast une float %1162, 1.000000e+00
  %1168 = and i1 %1167, %1166
  br i1 %1168, label %1169, label %1188

; <label>:1169                                    ; preds = %1160
  %1170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %948, float %949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.ResRet.f32 %1170, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1170, 2
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 1
  %1176 = fmul fast float %1175, %1171
  %1177 = fmul fast float %1175, %1172
  %1178 = fmul fast float %1175, %1173
  %1179 = fcmp fast ogt float %1151, 0x3FEFFF2E40000000
  %1180 = fsub fast float 1.000000e+00, %1162
  %1181 = fsub fast float 1.000000e+00, %1151
  %1182 = fdiv fast float %1180, %1181
  %1183 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1184 = select i1 %1179, float 0.000000e+00, float %1183
  %1185 = fmul fast float %1176, %1184
  %1186 = fmul fast float %1177, %1184
  %1187 = fmul fast float %1178, %1184
  br label %1188

; <label>:1188                                    ; preds = %1169, %1160
  %1189 = phi float [ 0.000000e+00, %1160 ], [ %1185, %1169 ]
  %1190 = phi float [ 0.000000e+00, %1160 ], [ %1186, %1169 ]
  %1191 = phi float [ 0.000000e+00, %1160 ], [ %1187, %1169 ]
  %1192 = fmul fast float %1189, %765
  %1193 = fmul fast float %1190, %765
  %1194 = fmul fast float %1191, %765
  %1195 = fmul fast float %1162, %926
  %1196 = call float @dx.op.dot3.f32(i32 55, float %1162, float %1162, float %1162, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1197 = call float @dx.op.dot3.f32(i32 55, float %1192, float %1193, float %1194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1198 = select i1 %110, float %1196, float %1162
  %1199 = select i1 %110, float 1.000000e+00, float %1162
  %1200 = select i1 %110, float %1197, float %1192
  %1201 = select i1 %110, float 0.000000e+00, float %1193
  %1202 = select i1 %110, float 0.000000e+00, float %1194
  %1203 = fmul fast float %1198, %938
  %1204 = fmul fast float %1198, %939
  %1205 = fmul fast float %1199, %940
  %1206 = fadd fast float %1203, %1200
  %1207 = fadd fast float %1204, %1201
  %1208 = fadd fast float %1202, %1205
  br label %1209

; <label>:1209                                    ; preds = %1188, %944, %914, %908
  %1210 = phi float [ %910, %908 ], [ %938, %914 ], [ %1206, %1188 ], [ %938, %944 ]
  %1211 = phi float [ %911, %908 ], [ %939, %914 ], [ %1207, %1188 ], [ %939, %944 ]
  %1212 = phi float [ %912, %908 ], [ %940, %914 ], [ %1208, %1188 ], [ %940, %944 ]
  %1213 = phi float [ %913, %908 ], [ %926, %914 ], [ %1195, %1188 ], [ %926, %944 ]
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 2
  %1216 = extractvalue %dx.types.CBufRet.f32 %1214, 3
  %1217 = fmul fast float %1215, %51
  %1218 = fmul fast float %1216, %52
  %1219 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1220 = call float @dx.op.unary.f32(i32 7, float %1218)  ; Saturate(value)
  %1221 = select i1 %801, i32 2, i32 0
  %1222 = or i32 %1221, 1
  %1223 = uitofp i32 %1222 to float
  %1224 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1219, float %1220, float %1223, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.ResRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.ResRet.f32 %1224, 2
  %1228 = extractvalue %dx.types.ResRet.f32 %1224, 3
  %1229 = add nuw nsw i32 %1221, 2
  %1230 = uitofp i32 %1229 to float
  %1231 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1219, float %1220, float %1230, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1232 = extractvalue %dx.types.ResRet.f32 %1231, 0
  %1233 = extractvalue %dx.types.ResRet.f32 %1231, 1
  %1234 = extractvalue %dx.types.ResRet.f32 %1231, 2
  %1235 = extractvalue %dx.types.ResRet.f32 %1231, 3
  %1236 = call float @dx.op.binary.f32(i32 35, float %1226, float %1227)  ; FMax(a,b)
  %1237 = call float @dx.op.binary.f32(i32 35, float %1225, float %1236)  ; FMax(a,b)
  %1238 = call float @dx.op.binary.f32(i32 35, float %1237, float %1228)  ; FMax(a,b)
  %1239 = call float @dx.op.binary.f32(i32 36, float %1233, float %1234)  ; FMin(a,b)
  %1240 = call float @dx.op.binary.f32(i32 36, float %1232, float %1239)  ; FMin(a,b)
  %1241 = call float @dx.op.binary.f32(i32 36, float %1240, float %1235)  ; FMin(a,b)
  %1242 = fmul fast float %1238, 2.550000e+02
  %1243 = fadd fast float %1242, 0x3F70101020000000
  %1244 = fptoui float %1243 to i32
  %1245 = fmul fast float %1241, 2.550000e+02
  %1246 = fadd fast float %1245, 0x3F70101020000000
  %1247 = fptoui float %1246 to i32
  %1248 = icmp ult i32 %1244, %1247
  br i1 %1248, label %1249, label %1301

; <label>:1249                                    ; preds = %1209
  %1250 = fcmp fast ogt float %45, 9.843750e-01
  %1251 = fadd fast float %909, -4.000000e+00
  %1252 = select i1 %1250, float -4.000000e+00, float %1251
  %1253 = call float @dx.op.binary.f32(i32 35, float %1252, float 0.000000e+00)  ; FMax(a,b)
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1256 = fadd fast float %1255, %1253
  %1257 = extractvalue %dx.types.CBufRet.f32 %1254, 2
  %1258 = fmul fast float %1256, %1257
  %1259 = call float @dx.op.unary.f32(i32 23, float %1258)  ; Log(value)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1254, 3
  %1261 = fmul fast float %1260, %1259
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 2
  %1264 = fmul fast float %1261, %1263
  %1265 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1266 = uitofp i32 %1244 to float
  %1267 = uitofp i32 %1247 to float
  %1268 = fadd fast float %1266, 5.000000e-01
  %1269 = fadd fast float %1267, 5.000000e-01
  %1270 = fmul fast float %1263, %1268
  %1271 = fmul fast float %1263, %1269
  %1272 = fadd fast float %1270, 0x3F0FFB4800000000
  %1273 = fadd fast float %1271, 0xBF0FFB4800000000
  %1274 = call float @dx.op.binary.f32(i32 35, float %1265, float %1272)  ; FMax(a,b)
  %1275 = call float @dx.op.binary.f32(i32 36, float %1274, float %1273)  ; FMin(a,b)
  %1276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.f32 %1276, 1
  %1278 = extractvalue %dx.types.CBufRet.f32 %1276, 2
  %1279 = extractvalue %dx.types.CBufRet.f32 %1276, 0
  %1280 = select i1 %801, float %1279, float 0.000000e+00
  %1281 = fmul fast float %1277, %1275
  %1282 = fadd fast float %1280, %1281
  %1283 = fadd fast float %1280, %1278
  %1284 = fsub fast float %1277, %1278
  %1285 = fadd fast float %1284, %1280
  %1286 = call float @dx.op.binary.f32(i32 35, float %1282, float %1283)  ; FMax(a,b)
  %1287 = call float @dx.op.binary.f32(i32 36, float %1286, float %1285)  ; FMin(a,b)
  %1288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1219, float %1220, float %1287, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1289 = extractvalue %dx.types.ResRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.ResRet.f32 %1288, 1
  %1291 = extractvalue %dx.types.ResRet.f32 %1288, 2
  %1292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1219, float %1220, float %1287, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1293 = extractvalue %dx.types.ResRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.ResRet.f32 %1292, 1
  %1295 = extractvalue %dx.types.ResRet.f32 %1292, 2
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 1
  %1298 = fmul fast float %1297, %1293
  %1299 = fmul fast float %1297, %1294
  %1300 = fmul fast float %1297, %1295
  br label %1301

; <label>:1301                                    ; preds = %1249, %1209
  %1302 = phi float [ %1289, %1249 ], [ 1.000000e+00, %1209 ]
  %1303 = phi float [ %1290, %1249 ], [ 1.000000e+00, %1209 ]
  %1304 = phi float [ %1291, %1249 ], [ 1.000000e+00, %1209 ]
  %1305 = phi float [ %1298, %1249 ], [ 0.000000e+00, %1209 ]
  %1306 = phi float [ %1299, %1249 ], [ 0.000000e+00, %1209 ]
  %1307 = phi float [ %1300, %1249 ], [ 0.000000e+00, %1209 ]
  %1308 = fmul fast float %1305, %765
  %1309 = fmul fast float %1306, %765
  %1310 = fmul fast float %1307, %765
  %1311 = fmul fast float %1302, %1213
  %1312 = call float @dx.op.dot3.f32(i32 55, float %1302, float %1303, float %1304, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1313 = call float @dx.op.dot3.f32(i32 55, float %1308, float %1309, float %1310, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1314 = select i1 %110, float %1312, float %1302
  %1315 = select i1 %110, float %1312, float %1303
  %1316 = select i1 %110, float 1.000000e+00, float %1304
  %1317 = select i1 %110, float %1313, float %1308
  %1318 = select i1 %110, float 0.000000e+00, float %1309
  %1319 = select i1 %110, float 0.000000e+00, float %1310
  %1320 = fmul fast float %1314, %1210
  %1321 = fmul fast float %1315, %1211
  %1322 = fmul fast float %1316, %1212
  %1323 = fadd fast float %1320, %1317
  %1324 = fadd fast float %1321, %1318
  %1325 = fadd fast float %1319, %1322
  %1326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1327 = extractvalue %dx.types.CBufRet.i32 %1326, 3
  %1328 = and i32 %1327, 3
  %1329 = icmp ne i32 %1328, 0
  %1330 = and i32 %1327, 4
  %1331 = icmp ne i32 %1330, 0
  %1332 = and i1 %1329, %1331
  %1333 = and i1 %110, %1332
  br i1 %1333, label %1334, label %1340

; <label>:1334                                    ; preds = %1301
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 1
  %1337 = fadd fast float %1311, -1.000000e+00
  %1338 = fmul fast float %1336, %1337
  %1339 = fadd fast float %1338, 1.000000e+00
  br label %1340

; <label>:1340                                    ; preds = %1334, %1301
  %1341 = phi float [ %1339, %1334 ], [ %1311, %1301 ]
  %1342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1343 = extractvalue %dx.types.CBufRet.f32 %1342, 0
  br i1 %110, label %1344, label %1366

; <label>:1344                                    ; preds = %1340
  %1345 = fadd fast float %1323, %1324
  %1346 = fmul fast float %1343, %1345
  %1347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.f32 %1347, 3
  %1349 = extractvalue %dx.types.CBufRet.f32 %770, 1
  %1350 = fsub fast float %773, %1349
  %1351 = extractvalue %dx.types.CBufRet.f32 %770, 2
  %1352 = fmul fast float %1350, %1351
  %1353 = call float @dx.op.unary.f32(i32 7, float %1352)  ; Saturate(value)
  %1354 = fsub fast float %1353, %1348
  %1355 = fmul fast float %1354, %1341
  %1356 = fadd fast float %1355, %1348
  %1357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1358 = extractvalue %dx.types.CBufRet.f32 %1357, 0
  %1359 = fsub fast float %1356, %1358
  %1360 = fmul fast float %1359, 1.000000e+01
  %1361 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1362 = fsub fast float %744, %765
  %1363 = fmul fast float %1361, %1362
  %1364 = fadd fast float %1363, %765
  %1365 = fmul fast float %1364, %1356
  br label %1375

; <label>:1366                                    ; preds = %1340
  %1367 = fmul fast float %1343, %1323
  %1368 = fmul fast float %1343, %1324
  %1369 = fmul fast float %1343, %1325
  %1370 = call float @dx.op.binary.f32(i32 35, float %1368, float %1369)  ; FMax(a,b)
  %1371 = call float @dx.op.binary.f32(i32 35, float %1367, float %1370)  ; FMax(a,b)
  %1372 = call float @dx.op.binary.f32(i32 35, float %1371, float %765)  ; FMax(a,b)
  %1373 = fcmp fast ugt float %1372, 0x3F10000000000000
  br i1 %1373, label %1375, label %1374

; <label>:1374                                    ; preds = %1366
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1375

; <label>:1375                                    ; preds = %1374, %1366, %1344
  %1376 = phi float [ %1346, %1344 ], [ %1367, %1374 ], [ %1367, %1366 ]
  %1377 = phi float [ %1365, %1344 ], [ %1368, %1374 ], [ %1368, %1366 ]
  %1378 = phi float [ %1364, %1344 ], [ %1369, %1374 ], [ %1369, %1366 ]
  %1379 = phi float [ %1364, %1344 ], [ %765, %1374 ], [ %765, %1366 ]
  %1380 = fadd fast float %520, 0x3FE3C6EF40000000
  %1381 = call float @dx.op.unary.f32(i32 22, float %1380)  ; Frc(value)
  %1382 = call float @dx.op.unary.f32(i32 23, float %1376)  ; Log(value)
  %1383 = fadd fast float %1382, -7.000000e+00
  %1384 = call float @dx.op.unary.f32(i32 21, float %1383)  ; Exp(value)
  %1385 = fmul fast float %1381, 2.000000e+00
  %1386 = fadd fast float %1385, -1.000000e+00
  %1387 = fmul fast float %1384, %1386
  %1388 = fcmp fast ogt float %1376, 0.000000e+00
  %1389 = select i1 %1388, float %1387, float 0.000000e+00
  %1390 = fadd fast float %1389, %1376
  %1391 = fadd fast float %520, 0x3FF3C6EF40000000
  %1392 = call float @dx.op.unary.f32(i32 22, float %1391)  ; Frc(value)
  %1393 = call float @dx.op.unary.f32(i32 23, float %1377)  ; Log(value)
  %1394 = fadd fast float %1393, -7.000000e+00
  %1395 = call float @dx.op.unary.f32(i32 21, float %1394)  ; Exp(value)
  %1396 = fmul fast float %1392, 2.000000e+00
  %1397 = fadd fast float %1396, -1.000000e+00
  %1398 = fmul fast float %1395, %1397
  %1399 = fcmp fast ogt float %1377, 0.000000e+00
  %1400 = select i1 %1399, float %1398, float 0.000000e+00
  %1401 = fadd fast float %1400, %1377
  %1402 = fadd fast float %520, 0x3FFDAA66E0000000
  %1403 = call float @dx.op.unary.f32(i32 22, float %1402)  ; Frc(value)
  %1404 = call float @dx.op.unary.f32(i32 23, float %1378)  ; Log(value)
  %1405 = fadd fast float %1404, -6.000000e+00
  %1406 = call float @dx.op.unary.f32(i32 21, float %1405)  ; Exp(value)
  %1407 = fmul fast float %1403, 2.000000e+00
  %1408 = fadd fast float %1407, -1.000000e+00
  %1409 = fmul fast float %1406, %1408
  %1410 = fcmp fast ogt float %1378, 0.000000e+00
  %1411 = select i1 %1410, float %1409, float 0.000000e+00
  %1412 = fadd fast float %1411, %1378
  %1413 = select i1 %110, float %1377, float %1401
  %1414 = select i1 %110, float %1378, float %1412
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1415 = call float @dx.op.binary.f32(i32 36, float %1390, float 3.225500e+04)  ; FMin(a,b)
  %1416 = call float @dx.op.binary.f32(i32 36, float %1413, float 3.225500e+04)  ; FMin(a,b)
  %1417 = call float @dx.op.binary.f32(i32 36, float %1414, float 3.225500e+04)  ; FMin(a,b)
  %1418 = call float @dx.op.binary.f32(i32 36, float %1379, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1415)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1416)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1417)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1418)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1379)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1379)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1379)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1379)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!34}
!dx.entryPoints = !{!35}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !26, !29}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25}
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
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!29 = !{!30, !31, !32, !33}
!30 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!34 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255]}
!35 = !{void ()* @ps_main, !"ps_main", !36, !4, !60}
!36 = !{!37, !56, null}
!37 = !{!38, !41, !42, !44, !47, !49, !51, !53, !54, !55}
!38 = !{i32 0, !"SV_Position", i8 9, i8 3, !39, i8 4, i32 1, i8 4, i32 0, i8 0, !40}
!39 = !{i32 0}
!40 = !{i32 3, i32 15}
!41 = !{i32 1, !"COLOR", i8 9, i8 0, !39, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 1, i32 1, i8 4, i32 3, i8 0, !46}
!45 = !{i32 2}
!46 = !{i32 3, i32 7}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 4, i32 4, i8 0, !46}
!48 = !{i32 3}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 3, i32 1, i8 2, i32 5, i8 0, !43}
!50 = !{i32 5}
!51 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, null}
!52 = !{i32 8}
!53 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !39, i8 1, i32 1, i8 4, i32 7, i8 0, !40}
!54 = !{i32 8, !"COLOR", i8 5, i8 0, !48, i8 1, i32 1, i8 3, i32 8, i8 0, !46}
!55 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !39, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!56 = !{!57, !58}
!57 = !{i32 0, !"SV_Target", i8 9, i8 16, !39, i8 0, i32 1, i8 4, i32 0, i8 0, !40}
!58 = !{i32 1, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 1, i8 0, !40}
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

