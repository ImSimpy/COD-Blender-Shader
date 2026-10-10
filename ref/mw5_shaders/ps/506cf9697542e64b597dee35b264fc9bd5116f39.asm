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
; shader hash: a48dfb8a50ee6b28fb974b8c71b3fbf9
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
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
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
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = fmul fast float %49, %42
  %51 = fmul fast float %49, %43
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 2
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 3
  %55 = fmul fast float %50, 2.000000e+00
  %56 = fmul fast float %55, %53
  %57 = fmul fast float %51, 2.000000e+00
  %58 = fmul fast float %57, %54
  %59 = fsub fast float 1.000000e+00, %56
  %60 = fsub fast float 1.000000e+00, %58
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %65 = fmul fast float %59, %62
  %66 = fmul fast float %59, %63
  %67 = fmul fast float %59, %64
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fmul fast float %60, %69
  %73 = fmul fast float %60, %70
  %74 = fmul fast float %60, %71
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fadd fast float %72, %76
  %80 = fadd fast float %79, %65
  %81 = fadd fast float %73, %77
  %82 = fadd fast float %81, %66
  %83 = fadd fast float %74, %78
  %84 = fadd fast float %83, %67
  %85 = fmul fast float %80, %45
  %86 = fmul fast float %82, %45
  %87 = fmul fast float %84, %45
  %88 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %98 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %97, float %96, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fsub fast float 1.000000e+00, %99
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = fcmp fast olt float %100, %102
  br label %107

; <label>:104                                     ; preds = %0
  %105 = icmp eq i32 %92, 0
  %106 = and i1 %91, %105
  br label %107

; <label>:107                                     ; preds = %104, %95
  %108 = phi i1 [ %103, %95 ], [ %106, %104 ]
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %110, %50
  %113 = fmul fast float %111, %51
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = and i32 %115, 114688
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %117, float %112, float 0.000000e+00
  %119 = select i1 %117, float %113, float 0.000000e+00
  %120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = fmul fast float %121, 2.550000e+02
  %123 = fptoui float %122 to i32
  %124 = select i1 %117, i32 %123, i32 0
  %125 = mul i32 %22, 208
  %126 = add i32 %125, 188
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %165 = phi float [ %36, %137 ], [ %144, %150 ], [ %163, %158 ], [ %144, %156 ]
  %166 = phi float [ %37, %137 ], [ %155, %150 ], [ %145, %158 ], [ %145, %156 ]
  %167 = fadd fast float %36, %33
  %168 = fadd fast float %37, %34
  %169 = add i32 %23, 72
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = bitcast i32 %171 to float
  %174 = bitcast i32 %172 to float
  %175 = fmul fast float %173, %36
  %176 = fmul fast float %174, %37
  %177 = call float @dx.op.unary.f32(i32 22, float %175)  ; Frc(value)
  %178 = call float @dx.op.unary.f32(i32 22, float %176)  ; Frc(value)
  %179 = and i32 %128, 16
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %180, float 1.000000e+00, float %41
  %182 = add i32 %23, 124
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = add i32 %184, 0
  %186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %186, %dx.types.Handle %47, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float %188, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = add i32 %192, 0
  %194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %197 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %194, %dx.types.Handle %47, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float %196, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = fsub fast float %198, %190
  %200 = fmul fast float %199, %35
  %201 = fadd fast float %200, %190
  %202 = fmul fast float %201, %181
  %203 = icmp eq i32 %179, 0
  br i1 %203, label %223, label %204, !dx.controlflow.hints !62

; <label>:204                                     ; preds = %164
  %205 = add i32 %125, 64
  %206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = fadd fast float %207, 1.000000e+00
  %209 = fmul fast float %208, %41
  %210 = fsub fast float %209, %207
  %211 = fsub fast float %208, %210
  %212 = call float @dx.op.unary.f32(i32 7, float %211)  ; Saturate(value)
  %213 = fsub fast float 1.000000e+00, %209
  %214 = call float @dx.op.unary.f32(i32 7, float %213)  ; Saturate(value)
  %215 = fsub fast float %212, %214
  %216 = fsub fast float %202, %214
  %217 = fdiv fast float %216, %215
  %218 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %219 = fmul fast float %218, 2.000000e+00
  %220 = fsub fast float 3.000000e+00, %219
  %221 = fmul fast float %218, %218
  %222 = fmul fast float %221, %220
  br label %223

; <label>:223                                     ; preds = %204, %164
  %224 = phi float [ %222, %204 ], [ %202, %164 ]
  %225 = fcmp fast ogt float %224, 0.000000e+00
  br i1 %225, label %227, label %226

; <label>:226                                     ; preds = %223
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %227

; <label>:227                                     ; preds = %226, %223
  %228 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %229 = fmul fast float %50, 5.000000e-01
  %230 = fmul fast float %51, 5.000000e-01
  %231 = fptosi float %229 to i32
  %232 = fptosi float %230 to i32
  %233 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %231, i32 %232, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = lshr i32 %234, 18
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F4C00EBA0000000
  %238 = call float @dx.op.unary.f32(i32 21, float %237)  ; Exp(value)
  %239 = fadd fast float %238, -1.000000e+00
  %240 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %241 = extractvalue %dx.types.Dimensions %240, 0
  %242 = sitofp i32 %241 to float
  %243 = extractvalue %dx.types.Dimensions %240, 1
  %244 = sitofp i32 %243 to float
  %245 = fcmp fast oge float %229, %242
  %246 = fcmp fast oge float %230, %244
  %247 = or i1 %245, %246
  %248 = select i1 %247, float 0x4197782600000000, float %239
  %249 = fsub fast float %248, %45
  %250 = fcmp fast ogt float %249, 0.000000e+00
  %251 = and i32 %124, -2
  %252 = icmp eq i32 %251, 2
  %253 = and i1 %252, %250
  %254 = xor i1 %250, true
  %255 = icmp eq i32 %124, 1
  %256 = and i1 %255, %254
  %257 = or i1 %253, %256
  %258 = and i32 %128, 262144
  %259 = icmp ne i32 %258, 0
  %260 = and i1 %259, %257
  %261 = xor i1 %257, true
  %262 = and i32 %128, 131072
  %263 = icmp ne i32 %262, 0
  %264 = and i1 %263, %261
  %265 = or i1 %260, %264
  br i1 %265, label %266, label %267

; <label>:266                                     ; preds = %227
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %267

; <label>:267                                     ; preds = %266, %227
  %268 = and i32 %128, 32
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %520, label %270, !dx.controlflow.hints !63

; <label>:270                                     ; preds = %267
  %271 = add i32 %125, 80
  %272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = extractvalue %dx.types.ResRet.f32 %272, 1
  %275 = extractvalue %dx.types.ResRet.f32 %272, 2
  %276 = extractvalue %dx.types.ResRet.f32 %272, 3
  %277 = add i32 %125, 96
  %278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = extractvalue %dx.types.ResRet.f32 %278, 1
  %281 = extractvalue %dx.types.ResRet.f32 %278, 2
  %282 = add i32 %125, 112
  %283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.f32 %283, 0
  %285 = extractvalue %dx.types.ResRet.f32 %283, 1
  %286 = extractvalue %dx.types.ResRet.f32 %283, 2
  %287 = extractvalue %dx.types.ResRet.f32 %283, 3
  %288 = add i32 %125, 128
  %289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = extractvalue %dx.types.ResRet.f32 %289, 2
  %293 = extractvalue %dx.types.ResRet.f32 %289, 3
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 4096
  %297 = icmp ne i32 %296, 0
  %298 = fcmp fast une float %281, 0.000000e+00
  %299 = and i32 %295, 64
  %300 = icmp ne i32 %299, 0
  %301 = and i32 %295, 128
  %302 = icmp eq i32 %301, 0
  %303 = and i32 %295, 2048
  %304 = icmp eq i32 %303, 0
  %305 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %306 = extractvalue %dx.types.Dimensions %305, 0
  %307 = sitofp i32 %306 to float
  %308 = extractvalue %dx.types.Dimensions %305, 1
  %309 = sitofp i32 %308 to float
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 3
  %313 = fmul fast float %311, %50
  %314 = fmul fast float %312, %51
  %315 = fmul fast float %313, %307
  %316 = fmul fast float %314, %309
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %319 = fsub fast float -0.000000e+00, %318
  %320 = fptoui float %319 to i32
  %321 = fptoui float %315 to i32
  %322 = fptoui float %316 to i32
  %323 = and i32 %320, 31
  %324 = lshr i32 %321, %323
  %325 = lshr i32 %322, %323
  %326 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %320, i32 %324, i32 %325, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %327 = extractvalue %dx.types.ResRet.f32 %326, 0
  %328 = fcmp fast ogt float %327, -1.000000e+00
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %331 = select i1 %328, float %330, float 1.000000e+00
  %332 = fadd fast float %327, 1.000000e+00
  %333 = fmul fast float %331, %332
  %334 = call float @dx.op.unary.f32(i32 6, float %333)  ; FAbs(value)
  %335 = extractvalue %dx.types.CBufRet.f32 %329, 3
  %336 = fcmp fast oge float %334, %335
  %337 = select i1 %336, float 0x4197782600000000, float %334
  br i1 %304, label %415, label %338, !dx.controlflow.hints !64

; <label>:338                                     ; preds = %270
  %339 = fmul fast float %55, %311
  %340 = fmul fast float %57, %312
  %341 = fsub fast float 1.000000e+00, %339
  %342 = fsub fast float 1.000000e+00, %340
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %347 = fmul fast float %341, %344
  %348 = fmul fast float %341, %345
  %349 = fmul fast float %341, %346
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %354 = fmul fast float %342, %351
  %355 = fmul fast float %342, %352
  %356 = fmul fast float %342, %353
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = extractvalue %dx.types.CBufRet.f32 %357, 2
  %361 = fadd fast float %354, %358
  %362 = fadd fast float %361, %347
  %363 = fadd fast float %355, %359
  %364 = fadd fast float %363, %348
  %365 = fadd fast float %356, %360
  %366 = fadd fast float %365, %349
  %367 = fmul fast float %362, %337
  %368 = fmul fast float %364, %337
  %369 = fmul fast float %366, %337
  %370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.f32 %370, 0
  %372 = extractvalue %dx.types.CBufRet.f32 %370, 1
  %373 = extractvalue %dx.types.CBufRet.f32 %370, 2
  %374 = fsub fast float %371, %24
  %375 = fadd fast float %374, %367
  %376 = fsub fast float %372, %25
  %377 = fadd fast float %376, %368
  %378 = fsub fast float %373, %26
  %379 = fadd fast float %378, %369
  %380 = fmul fast float %27, %27
  %381 = call float @dx.op.dot3.f32(i32 55, float %375, float %377, float %379, float %375, float %377, float %379)  ; Dot3(ax,ay,az,bx,by,bz)
  %382 = fsub fast float %380, %381
  %383 = fmul fast float %280, %380
  %384 = fmul fast float %279, %380
  %385 = fcmp fast olt float %382, %383
  %386 = fcmp fast ogt float %382, %384
  %387 = or i1 %385, %386
  %388 = select i1 %387, float 0.000000e+00, float %382
  %389 = fsub fast float %279, %280
  %390 = fmul fast float %389, %380
  %391 = fsub fast float %388, %383
  %392 = fdiv fast float %391, %390
  %393 = call float @dx.op.unary.f32(i32 7, float %392)  ; Saturate(value)
  %394 = fmul fast float %393, 2.000000e+00
  %395 = fsub fast float 3.000000e+00, %394
  %396 = fmul fast float %393, %393
  %397 = fmul fast float %396, %395
  %398 = fmul fast float %284, %38
  %399 = fmul fast float %285, %39
  %400 = fmul fast float %286, %40
  %401 = fsub fast float %398, %290
  %402 = fsub fast float %399, %291
  %403 = fsub fast float %400, %292
  %404 = fsub fast float %287, %293
  %405 = fmul fast float %397, %401
  %406 = fmul fast float %397, %402
  %407 = fmul fast float %397, %403
  %408 = fmul fast float %397, %404
  %409 = fadd fast float %405, %290
  %410 = fadd fast float %406, %291
  %411 = fadd fast float %407, %292
  %412 = fadd fast float %408, %293
  %413 = fmul fast float %273, %273
  %414 = fmul fast float %413, %388
  br label %510

; <label>:415                                     ; preds = %270
  %416 = and i32 %295, 256
  %417 = icmp eq i32 %416, 0
  %418 = fsub fast float %337, %45
  br i1 %417, label %467, label %419

; <label>:419                                     ; preds = %415
  %420 = fadd fast float %279, %45
  %421 = fcmp fast olt float %337, %45
  %422 = fcmp fast ogt float %337, %420
  %423 = or i1 %421, %422
  %424 = select i1 %423, float 0.000000e+00, float %418
  %425 = call float @dx.op.unary.f32(i32 83, float %337)  ; DerivCoarseX(value)
  %426 = call float @dx.op.unary.f32(i32 84, float %337)  ; DerivCoarseY(value)
  %427 = fmul fast float %425, %425
  %428 = fmul fast float %426, %426
  %429 = fadd fast float %428, %427
  %430 = call float @dx.op.unary.f32(i32 24, float %429)  ; Sqrt(value)
  %431 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %432 = fmul fast float %431, %430
  %433 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %434 = fmul fast float %433, %280
  %435 = fdiv fast float %418, %434
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = fmul fast float %436, 2.000000e+00
  %438 = fsub fast float 3.000000e+00, %437
  %439 = fmul fast float %436, %436
  %440 = fmul fast float %439, %438
  %441 = fsub fast float %337, %420
  %442 = fadd fast float %441, %434
  %443 = fdiv fast float %442, %434
  %444 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %445 = fmul fast float %444, 2.000000e+00
  %446 = fsub fast float 3.000000e+00, %445
  %447 = fmul fast float %444, %444
  %448 = fmul fast float %447, %446
  %449 = fsub fast float %440, %448
  %450 = fmul fast float %284, %38
  %451 = fmul fast float %285, %39
  %452 = fmul fast float %286, %40
  %453 = fsub fast float %450, %290
  %454 = fsub fast float %451, %291
  %455 = fsub fast float %452, %292
  %456 = fsub fast float %287, %293
  %457 = fmul fast float %449, %453
  %458 = fmul fast float %449, %454
  %459 = fmul fast float %449, %455
  %460 = fmul fast float %449, %456
  %461 = fadd fast float %457, %290
  %462 = fadd fast float %458, %291
  %463 = fadd fast float %459, %292
  %464 = fadd fast float %460, %293
  %465 = fmul fast float %424, %273
  %466 = call float @dx.op.unary.f32(i32 6, float %465)  ; FAbs(value)
  br label %510

; <label>:467                                     ; preds = %415
  br i1 %298, label %468, label %481

; <label>:468                                     ; preds = %467
  %469 = fdiv fast float 5.000000e+01, %27
  %470 = select i1 %300, float %469, float 1.000000e+00
  %471 = fmul fast float %470, %273
  %472 = fmul fast float %177, 2.000000e+00
  %473 = fmul fast float %178, 2.000000e+00
  %474 = fadd fast float %472, -1.000000e+00
  %475 = fadd fast float %473, -1.000000e+00
  %476 = call float @dx.op.dot2.f32(i32 54, float %474, float %475, float %474, float %475)  ; Dot2(ax,ay,bx,by)
  %477 = fmul fast float %281, %27
  %478 = fmul fast float %477, %476
  %479 = fsub fast float %418, %478
  %480 = fmul fast float %471, %479
  br label %510

; <label>:481                                     ; preds = %467
  br i1 %302, label %502, label %482

; <label>:482                                     ; preds = %481
  %483 = fmul fast float %27, 0x3F947AE140000000
  %484 = select i1 %300, float %483, float 1.000000e+00
  %485 = fdiv fast float 1.000000e+00, %484
  %486 = fmul fast float %484, %274
  %487 = fmul fast float %484, %275
  %488 = fmul fast float %485, %276
  %489 = call float @dx.op.unary.f32(i32 6, float %418)  ; FAbs(value)
  %490 = fcmp fast olt float %489, %486
  br i1 %490, label %491, label %495, !dx.controlflow.hints !65

; <label>:491                                     ; preds = %482
  %492 = fmul fast float %485, %273
  %493 = fmul fast float %492, %489
  %494 = call float @dx.op.unary.f32(i32 6, float %493)  ; FAbs(value)
  br label %510

; <label>:495                                     ; preds = %482
  %496 = fcmp fast ogt float %489, %487
  br i1 %496, label %497, label %510

; <label>:497                                     ; preds = %495
  %498 = fsub fast float %489, %487
  %499 = fmul fast float %488, %498
  %500 = call float @dx.op.unary.f32(i32 6, float %499)  ; FAbs(value)
  %501 = fsub fast float 1.000000e+00, %500
  br label %510

; <label>:502                                     ; preds = %481
  %503 = fdiv fast float 5.000000e+01, %27
  %504 = select i1 %300, float %503, float 1.000000e+00
  %505 = fmul fast float %504, %273
  %506 = call float @dx.op.unary.f32(i32 6, float %249)  ; FAbs(value)
  %507 = select i1 %297, float %506, float 0x47EFFFFFE0000000
  %508 = call float @dx.op.binary.f32(i32 36, float %418, float %507)  ; FMin(a,b)
  %509 = fmul fast float %505, %508
  br label %510

; <label>:510                                     ; preds = %502, %497, %495, %491, %468, %419, %338
  %511 = phi float [ %414, %338 ], [ %466, %419 ], [ %480, %468 ], [ %509, %502 ], [ %494, %491 ], [ %501, %497 ], [ %489, %495 ]
  %512 = phi float [ %409, %338 ], [ %461, %419 ], [ %38, %468 ], [ %38, %502 ], [ %38, %491 ], [ %38, %497 ], [ %38, %495 ]
  %513 = phi float [ %410, %338 ], [ %462, %419 ], [ %39, %468 ], [ %39, %502 ], [ %39, %491 ], [ %39, %497 ], [ %39, %495 ]
  %514 = phi float [ %411, %338 ], [ %463, %419 ], [ %40, %468 ], [ %40, %502 ], [ %40, %491 ], [ %40, %497 ], [ %40, %495 ]
  %515 = phi float [ %412, %338 ], [ %464, %419 ], [ 1.000000e+00, %468 ], [ 1.000000e+00, %502 ], [ 1.000000e+00, %491 ], [ 1.000000e+00, %497 ], [ 1.000000e+00, %495 ]
  %516 = call float @dx.op.unary.f32(i32 7, float %511)  ; Saturate(value)
  %517 = fmul fast float %516, %41
  %518 = fmul fast float %515, %228
  %519 = fmul fast float %518, %516
  br label %520

; <label>:520                                     ; preds = %510, %267
  %521 = phi float [ %512, %510 ], [ %38, %267 ]
  %522 = phi float [ %513, %510 ], [ %39, %267 ]
  %523 = phi float [ %514, %510 ], [ %40, %267 ]
  %524 = phi float [ %519, %510 ], [ %228, %267 ]
  %525 = phi float [ %517, %510 ], [ %41, %267 ]
  %526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.f32 %526, 2
  %528 = fptosi float %45 to i32
  %529 = sitofp i32 %528 to float
  %530 = fadd fast float %527, %529
  %531 = fmul fast float %530, 0x3FE3C6EF40000000
  %532 = frem fast float %50, 2.560000e+02
  %533 = frem fast float %51, 2.560000e+02
  %534 = fptoui float %532 to i32
  %535 = fptoui float %533 to i32
  %536 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %534, i32 %535, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = fadd fast float %537, %531
  %539 = call float @dx.op.unary.f32(i32 22, float %538)  ; Frc(value)
  %540 = and i32 %128, 1
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %599, label %542, !dx.controlflow.hints !66

; <label>:542                                     ; preds = %520
  %543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 2
  %545 = extractvalue %dx.types.ResRet.f32 %543, 3
  %546 = add i32 %125, 16
  %547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = extractvalue %dx.types.ResRet.f32 %547, 1
  %550 = extractvalue %dx.types.ResRet.f32 %547, 2
  %551 = add i32 %125, 32
  %552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = extractvalue %dx.types.ResRet.f32 %552, 1
  %555 = extractvalue %dx.types.ResRet.f32 %552, 2
  %556 = and i32 %128, 2
  %557 = icmp eq i32 %556, 0
  %558 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %559 = call float @dx.op.unary.f32(i32 25, float %558)  ; Rsqrt(value)
  %560 = fmul fast float %559, %30
  %561 = fmul fast float %559, %31
  %562 = fmul fast float %559, %32
  %563 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %564 = call float @dx.op.unary.f32(i32 25, float %563)  ; Rsqrt(value)
  %565 = fmul fast float %564, %85
  %566 = fmul fast float %564, %86
  %567 = fmul fast float %564, %87
  %568 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %567, float %560, float %561, float %562)  ; Dot3(ax,ay,az,bx,by,bz)
  %569 = fmul fast float %568, %568
  %570 = fmul fast float %569, %544
  %571 = fadd fast float %570, %545
  %572 = call float @dx.op.unary.f32(i32 7, float %571)  ; Saturate(value)
  br i1 %557, label %573, label %583, !dx.controlflow.hints !67

; <label>:573                                     ; preds = %542
  %574 = extractvalue %dx.types.ResRet.f32 %543, 1
  %575 = extractvalue %dx.types.ResRet.f32 %543, 0
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 3
  %578 = fmul fast float %577, %563
  %579 = fsub fast float %575, %578
  %580 = fmul fast float %579, %574
  %581 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  %582 = fmul fast float %581, %572
  br label %583

; <label>:583                                     ; preds = %573, %542
  %584 = phi float [ %582, %573 ], [ %572, %542 ]
  %585 = fsub fast float %548, %553
  %586 = fsub fast float %549, %554
  %587 = fsub fast float %550, %555
  %588 = fmul fast float %584, %585
  %589 = fmul fast float %584, %586
  %590 = fmul fast float %584, %587
  %591 = fadd fast float %588, %553
  %592 = fadd fast float %589, %554
  %593 = fadd fast float %590, %555
  %594 = fmul fast float %591, %521
  %595 = fmul fast float %592, %522
  %596 = fmul fast float %593, %523
  %597 = fmul fast float %584, %524
  %598 = fmul fast float %584, %525
  br label %599

; <label>:599                                     ; preds = %583, %520
  %600 = phi float [ %594, %583 ], [ %521, %520 ]
  %601 = phi float [ %595, %583 ], [ %522, %520 ]
  %602 = phi float [ %596, %583 ], [ %523, %520 ]
  %603 = phi float [ %597, %583 ], [ %524, %520 ]
  %604 = phi float [ %598, %583 ], [ %525, %520 ]
  %605 = add i32 %23, 120
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = add i32 %607, 0
  %609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %610 = add i32 %23, 24
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %609, %dx.types.Handle %46, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = extractvalue %dx.types.ResRet.f32 %613, 3
  %618 = and i32 %612, 255
  %619 = uitofp i32 %618 to float
  %620 = lshr i32 %612, 8
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %617, %619
  %624 = fadd fast float %623, %622
  %625 = add i32 %23, 56
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = fmul fast float %629, 0x3F70101020000000
  %631 = lshr i32 %627, 8
  %632 = and i32 %631, 255
  %633 = uitofp i32 %632 to float
  %634 = fmul fast float %633, 0x3F70101020000000
  %635 = lshr i32 %627, 16
  %636 = and i32 %635, 255
  %637 = uitofp i32 %636 to float
  %638 = fmul fast float %637, 0x3F70101020000000
  %639 = fmul fast float %630, %630
  %640 = fmul fast float %639, %614
  %641 = fmul fast float %634, %634
  %642 = fmul fast float %641, %615
  %643 = fmul fast float %638, %638
  %644 = fmul fast float %643, %616
  %645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %646 = extractvalue %dx.types.ResRet.i32 %645, 0
  %647 = add i32 %646, 0
  %648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %648, %dx.types.Handle %46, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %652 = extractvalue %dx.types.ResRet.f32 %651, 0
  %653 = extractvalue %dx.types.ResRet.f32 %651, 1
  %654 = extractvalue %dx.types.ResRet.f32 %651, 2
  %655 = extractvalue %dx.types.ResRet.f32 %651, 3
  %656 = and i32 %650, 255
  %657 = uitofp i32 %656 to float
  %658 = lshr i32 %650, 8
  %659 = and i32 %658, 255
  %660 = uitofp i32 %659 to float
  %661 = fmul fast float %655, %657
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = and i32 %663, 255
  %665 = uitofp i32 %664 to float
  %666 = fmul fast float %665, 0x3F70101020000000
  %667 = lshr i32 %663, 8
  %668 = and i32 %667, 255
  %669 = uitofp i32 %668 to float
  %670 = fmul fast float %669, 0x3F70101020000000
  %671 = lshr i32 %663, 16
  %672 = and i32 %671, 255
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, 0x3F70101020000000
  %675 = fmul fast float %666, %666
  %676 = fmul fast float %675, %652
  %677 = fmul fast float %670, %670
  %678 = fmul fast float %677, %653
  %679 = fmul fast float %674, %674
  %680 = fmul fast float %679, %654
  %681 = fsub fast float %676, %640
  %682 = fsub fast float %678, %642
  %683 = fsub fast float %680, %644
  %684 = fmul fast float %681, %35
  %685 = fmul fast float %682, %35
  %686 = fmul fast float %683, %35
  %687 = fadd fast float %684, %640
  %688 = fadd fast float %685, %642
  %689 = fadd fast float %686, %644
  %690 = fsub fast float %660, %624
  %691 = fadd fast float %690, %661
  %692 = fmul fast float %691, %35
  %693 = fmul fast float %687, %600
  %694 = fmul fast float %688, %601
  %695 = fmul fast float %689, %602
  %696 = add i32 %23, 40
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = and i32 %698, 255
  %700 = uitofp i32 %699 to float
  %701 = fmul fast float %700, 0x3F70101020000000
  %702 = lshr i32 %698, 8
  %703 = and i32 %702, 255
  %704 = uitofp i32 %703 to float
  %705 = fmul fast float %704, 0x3F70101020000000
  %706 = lshr i32 %698, 16
  %707 = and i32 %706, 255
  %708 = uitofp i32 %707 to float
  %709 = fmul fast float %708, 0x3F70101020000000
  %710 = fmul fast float %701, %701
  %711 = fmul fast float %705, %705
  %712 = fmul fast float %709, %709
  %713 = add i32 %23, 128
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = add i32 %715, 0
  %717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %716, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %718 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %717, %dx.types.Handle %47, float %165, float %166, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %719 = extractvalue %dx.types.ResRet.f32 %718, 0
  %720 = extractvalue %dx.types.ResRet.f32 %718, 1
  %721 = extractvalue %dx.types.ResRet.f32 %718, 2
  %722 = fmul fast float %710, %719
  %723 = fmul fast float %711, %720
  %724 = fmul fast float %712, %721
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 255
  %728 = uitofp i32 %727 to float
  %729 = fmul fast float %728, 0x3F70101020000000
  %730 = lshr i32 %726, 8
  %731 = and i32 %730, 255
  %732 = uitofp i32 %731 to float
  %733 = fmul fast float %732, 0x3F70101020000000
  %734 = lshr i32 %726, 16
  %735 = and i32 %734, 255
  %736 = uitofp i32 %735 to float
  %737 = fmul fast float %736, 0x3F70101020000000
  %738 = fmul fast float %729, %729
  %739 = fmul fast float %733, %733
  %740 = fmul fast float %737, %737
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = add i32 %742, 0
  %744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %743, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %745 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %744, %dx.types.Handle %47, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = extractvalue %dx.types.ResRet.f32 %745, 1
  %748 = extractvalue %dx.types.ResRet.f32 %745, 2
  %749 = fmul fast float %738, %746
  %750 = fmul fast float %739, %747
  %751 = fmul fast float %740, %748
  %752 = fsub fast float %749, %722
  %753 = fsub fast float %750, %723
  %754 = fsub fast float %751, %724
  %755 = fmul fast float %752, %35
  %756 = fmul fast float %753, %35
  %757 = fmul fast float %754, %35
  %758 = fadd fast float %755, %722
  %759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  %761 = extractvalue %dx.types.ResRet.f32 %759, 1
  %762 = extractvalue %dx.types.ResRet.f32 %759, 2
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %765 = fadd fast float %692, %624
  %766 = fmul fast float %765, 0x3F70101000000000
  %767 = fadd fast float %766, 0xBFB99999A0000000
  %768 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  %769 = fmul fast float %768, 0x3FF1C71C80000000
  %770 = fsub fast float 1.000000e+00, %769
  %771 = call float @dx.op.unary.f32(i32 7, float %770)  ; Saturate(value)
  %772 = fmul fast float %693, %771
  %773 = fmul fast float %694, %771
  %774 = fmul fast float %695, %771
  %775 = call float @dx.op.unary.f32(i32 7, float %772)  ; Saturate(value)
  %776 = call float @dx.op.unary.f32(i32 7, float %773)  ; Saturate(value)
  %777 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  %778 = call float @dx.op.dot3.f32(i32 55, float %775, float %776, float %777, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %779 = add i32 %23, 32
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %779, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = and i32 %781, 255
  %783 = uitofp i32 %782 to float
  %784 = lshr i32 %781, 8
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = fmul fast float %786, %778
  %788 = fadd fast float %787, %783
  %789 = fmul fast float %788, 0x3F70101020000000
  %790 = call float @dx.op.unary.f32(i32 7, float %789)  ; Saturate(value)
  %791 = and i32 %128, 8192
  %792 = icmp eq i32 %791, 0
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 0
  br i1 %792, label %801, label %795, !dx.controlflow.hints !68

; <label>:795                                     ; preds = %599
  %796 = add i32 %125, 176
  %797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.f32 %797, 0
  %799 = fcmp fast oge float %798, 0.000000e+00
  %800 = select i1 %799, float %798, float %794
  br label %808

; <label>:801                                     ; preds = %599
  %802 = add i32 %23, 104
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = bitcast i32 %804 to float
  %806 = fcmp fast oge float %805, 0.000000e+00
  %807 = select i1 %806, float %805, float %794
  br label %808

; <label>:808                                     ; preds = %801, %795
  %809 = phi float [ %800, %795 ], [ %807, %801 ]
  %810 = fsub fast float 1.000000e+00, %758
  %811 = fmul fast float %810, %604
  %812 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %231, i32 %232, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = lshr i32 %813, 18
  %815 = uitofp i32 %814 to float
  %816 = fmul fast float %815, 0x3F4C00EBA0000000
  %817 = call float @dx.op.unary.f32(i32 21, float %816)  ; Exp(value)
  %818 = fadd fast float %817, -1.000000e+00
  %819 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %820 = extractvalue %dx.types.Dimensions %819, 0
  %821 = sitofp i32 %820 to float
  %822 = extractvalue %dx.types.Dimensions %819, 1
  %823 = sitofp i32 %822 to float
  %824 = fcmp fast oge float %229, %821
  %825 = fcmp fast oge float %230, %823
  %826 = or i1 %824, %825
  %827 = select i1 %826, float 0x4197782600000000, float %818
  %828 = fadd fast float %758, -1.000000e+00
  %829 = fadd fast float %723, -1.000000e+00
  %830 = fadd fast float %829, %756
  %831 = fadd fast float %724, -1.000000e+00
  %832 = fadd fast float %831, %757
  %833 = fmul fast float %828, %603
  %834 = fmul fast float %830, %603
  %835 = fmul fast float %832, %603
  %836 = fadd fast float %833, 1.000000e+00
  %837 = fadd fast float %834, 1.000000e+00
  %838 = fadd fast float %835, 1.000000e+00
  %839 = call float @dx.op.dot3.f32(i32 55, float %836, float %837, float %838, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %840 = fsub fast float 1.000000e+00, %839
  %841 = fmul fast float %809, %790
  %842 = fsub fast float 1.000000e+00, %811
  %843 = fsub fast float %842, %790
  %844 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 3
  %847 = fmul fast float %846, %844
  %848 = fadd fast float %847, %841
  %849 = and i32 %128, 2097152
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %855, label %851, !dx.controlflow.hints !69

; <label>:851                                     ; preds = %808
  %852 = add i32 %125, 192
  %853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %852, i32 undef)  ; BufferLoad(srv,index,wot)
  %854 = extractvalue %dx.types.ResRet.f32 %853, 0
  br label %858

; <label>:855                                     ; preds = %808
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 3
  br label %858

; <label>:858                                     ; preds = %855, %851
  %859 = phi float [ %854, %851 ], [ %857, %855 ]
  %860 = fmul fast float %760, %603
  %861 = fmul fast float %860, %764
  %862 = fmul fast float %861, %775
  %863 = fmul fast float %761, %603
  %864 = fmul fast float %863, %764
  %865 = fmul fast float %864, %776
  %866 = fmul fast float %762, %603
  %867 = fmul fast float %866, %764
  %868 = fmul fast float %867, %777
  %869 = icmp eq i32 %124, 3
  %870 = fcmp fast ogt float %45, %827
  %871 = and i1 %255, %870
  %872 = or i1 %869, %871
  %873 = icmp eq i32 %124, 2
  %874 = fcmp fast ole float %45, %827
  %875 = and i1 %873, %874
  %876 = or i1 %875, %872
  br i1 %871, label %877, label %983

; <label>:877                                     ; preds = %858
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 2
  %880 = extractvalue %dx.types.CBufRet.f32 %878, 3
  %881 = fmul fast float %879, %50
  %882 = fmul fast float %880, %51
  %883 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %884 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %885 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %883, float %884, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = extractvalue %dx.types.ResRet.f32 %885, 2
  %889 = extractvalue %dx.types.ResRet.f32 %885, 3
  %890 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %883, float %884, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %891 = extractvalue %dx.types.ResRet.f32 %890, 0
  %892 = extractvalue %dx.types.ResRet.f32 %890, 1
  %893 = extractvalue %dx.types.ResRet.f32 %890, 2
  %894 = extractvalue %dx.types.ResRet.f32 %890, 3
  %895 = call float @dx.op.binary.f32(i32 35, float %887, float %888)  ; FMax(a,b)
  %896 = call float @dx.op.binary.f32(i32 35, float %886, float %895)  ; FMax(a,b)
  %897 = call float @dx.op.binary.f32(i32 35, float %896, float %889)  ; FMax(a,b)
  %898 = call float @dx.op.binary.f32(i32 36, float %892, float %893)  ; FMin(a,b)
  %899 = call float @dx.op.binary.f32(i32 36, float %891, float %898)  ; FMin(a,b)
  %900 = call float @dx.op.binary.f32(i32 36, float %899, float %894)  ; FMin(a,b)
  %901 = fmul fast float %897, 2.550000e+02
  %902 = fadd fast float %901, 0x3F70101020000000
  %903 = fptoui float %902 to i32
  %904 = fmul fast float %900, 2.550000e+02
  %905 = fadd fast float %904, 0x3F70101020000000
  %906 = fptoui float %905 to i32
  %907 = icmp ult i32 %903, %906
  br i1 %907, label %908, label %959

; <label>:908                                     ; preds = %877
  %909 = fcmp fast ogt float %44, 9.843750e-01
  %910 = fadd fast float %45, -4.000000e+00
  %911 = select i1 %909, float -4.000000e+00, float %910
  %912 = call float @dx.op.binary.f32(i32 35, float %911, float 0.000000e+00)  ; FMax(a,b)
  %913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %914 = extractvalue %dx.types.CBufRet.f32 %913, 0
  %915 = fadd fast float %914, %912
  %916 = extractvalue %dx.types.CBufRet.f32 %913, 2
  %917 = fmul fast float %915, %916
  %918 = call float @dx.op.unary.f32(i32 23, float %917)  ; Log(value)
  %919 = extractvalue %dx.types.CBufRet.f32 %913, 3
  %920 = fmul fast float %919, %918
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %923 = fmul fast float %920, %922
  %924 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %925 = uitofp i32 %903 to float
  %926 = uitofp i32 %906 to float
  %927 = fadd fast float %925, 5.000000e-01
  %928 = fadd fast float %926, 5.000000e-01
  %929 = fmul fast float %922, %927
  %930 = fmul fast float %922, %928
  %931 = fadd fast float %929, 0x3F0FFB4800000000
  %932 = fadd fast float %930, 0xBF0FFB4800000000
  %933 = call float @dx.op.binary.f32(i32 35, float %924, float %931)  ; FMax(a,b)
  %934 = call float @dx.op.binary.f32(i32 36, float %933, float %932)  ; FMin(a,b)
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 1
  %937 = extractvalue %dx.types.CBufRet.f32 %935, 2
  %938 = extractvalue %dx.types.CBufRet.f32 %935, 0
  %939 = fmul fast float %936, %934
  %940 = fadd fast float %938, %939
  %941 = fadd fast float %938, %937
  %942 = fsub fast float %936, %937
  %943 = fadd fast float %942, %938
  %944 = call float @dx.op.binary.f32(i32 35, float %940, float %941)  ; FMax(a,b)
  %945 = call float @dx.op.binary.f32(i32 36, float %944, float %943)  ; FMin(a,b)
  %946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %883, float %884, float %945, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %947 = extractvalue %dx.types.ResRet.f32 %946, 0
  %948 = extractvalue %dx.types.ResRet.f32 %946, 1
  %949 = extractvalue %dx.types.ResRet.f32 %946, 2
  %950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %883, float %884, float %945, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %951 = extractvalue %dx.types.ResRet.f32 %950, 0
  %952 = extractvalue %dx.types.ResRet.f32 %950, 1
  %953 = extractvalue %dx.types.ResRet.f32 %950, 2
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 1
  %956 = fmul fast float %955, %951
  %957 = fmul fast float %955, %952
  %958 = fmul fast float %955, %953
  br label %959

; <label>:959                                     ; preds = %908, %877
  %960 = phi float [ %947, %908 ], [ 1.000000e+00, %877 ]
  %961 = phi float [ %948, %908 ], [ 1.000000e+00, %877 ]
  %962 = phi float [ %949, %908 ], [ 1.000000e+00, %877 ]
  %963 = phi float [ %956, %908 ], [ 0.000000e+00, %877 ]
  %964 = phi float [ %957, %908 ], [ 0.000000e+00, %877 ]
  %965 = phi float [ %958, %908 ], [ 0.000000e+00, %877 ]
  %966 = fmul fast float %963, %840
  %967 = fmul fast float %964, %840
  %968 = fmul fast float %965, %840
  %969 = call float @dx.op.dot3.f32(i32 55, float %960, float %961, float %962, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %970 = call float @dx.op.dot3.f32(i32 55, float %966, float %967, float %968, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %971 = select i1 %108, float %969, float %960
  %972 = select i1 %108, float %969, float %961
  %973 = select i1 %108, float 1.000000e+00, float %962
  %974 = select i1 %108, float %970, float %966
  %975 = select i1 %108, float 0.000000e+00, float %967
  %976 = select i1 %108, float 0.000000e+00, float %968
  %977 = fmul fast float %971, %862
  %978 = fmul fast float %972, %865
  %979 = fmul fast float %973, %868
  %980 = fadd fast float %977, %974
  %981 = fadd fast float %978, %975
  %982 = fadd fast float %976, %979
  br label %983

; <label>:983                                     ; preds = %959, %858
  %984 = phi float [ %827, %959 ], [ %45, %858 ]
  %985 = phi float [ %980, %959 ], [ %862, %858 ]
  %986 = phi float [ %981, %959 ], [ %865, %858 ]
  %987 = phi float [ %982, %959 ], [ %868, %858 ]
  %988 = phi float [ %960, %959 ], [ 1.000000e+00, %858 ]
  br i1 %876, label %1284, label %989

; <label>:989                                     ; preds = %983
  %990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %991 = extractvalue %dx.types.ResRet.f32 %990, 0
  %992 = extractvalue %dx.types.ResRet.f32 %990, 1
  %993 = extractvalue %dx.types.ResRet.f32 %990, 2
  %994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = extractvalue %dx.types.ResRet.f32 %994, 1
  %997 = extractvalue %dx.types.ResRet.f32 %994, 2
  %998 = fmul fast float %991, %840
  %999 = fmul fast float %992, %840
  %1000 = fmul fast float %993, %840
  %1001 = fmul fast float %995, %988
  %1002 = call float @dx.op.dot3.f32(i32 55, float %995, float %996, float %997, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1003 = call float @dx.op.dot3.f32(i32 55, float %998, float %999, float %1000, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1004 = select i1 %108, float %1002, float %995
  %1005 = select i1 %108, float %1002, float %996
  %1006 = select i1 %108, float 1.000000e+00, float %997
  %1007 = select i1 %108, float %1003, float %998
  %1008 = select i1 %108, float 0.000000e+00, float %999
  %1009 = select i1 %108, float 0.000000e+00, float %1000
  %1010 = fmul fast float %1004, %985
  %1011 = fmul fast float %1005, %986
  %1012 = fmul fast float %1006, %987
  %1013 = fadd fast float %1010, %1007
  %1014 = fadd fast float %1011, %1008
  %1015 = fadd fast float %1012, %1009
  %1016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.i32 %1016, 0
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1284, label %1019, !dx.controlflow.hints !70

; <label>:1019                                    ; preds = %989
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 2
  %1022 = extractvalue %dx.types.CBufRet.f32 %1020, 3
  %1023 = fmul fast float %1021, %50
  %1024 = fmul fast float %1022, %51
  %1025 = fmul fast float %1023, 2.000000e+00
  %1026 = fmul fast float %1024, 2.000000e+00
  %1027 = fsub fast float 1.000000e+00, %1025
  %1028 = fsub fast float 1.000000e+00, %1026
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1033 = fmul fast float %1027, %1030
  %1034 = fmul fast float %1027, %1031
  %1035 = fmul fast float %1027, %1032
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1039 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1040 = fmul fast float %1028, %1037
  %1041 = fmul fast float %1028, %1038
  %1042 = fmul fast float %1028, %1039
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 0
  %1045 = extractvalue %dx.types.CBufRet.f32 %1043, 1
  %1046 = extractvalue %dx.types.CBufRet.f32 %1043, 2
  %1047 = fadd fast float %1040, %1044
  %1048 = fadd fast float %1047, %1033
  %1049 = fadd fast float %1041, %1045
  %1050 = fadd fast float %1049, %1034
  %1051 = fadd fast float %1042, %1046
  %1052 = fadd fast float %1051, %1035
  %1053 = fmul fast float %1048, %984
  %1054 = fmul fast float %1050, %984
  %1055 = fmul fast float %1052, %984
  %1056 = fmul fast float %1053, %1053
  %1057 = fmul fast float %1054, %1054
  %1058 = fadd fast float %1056, %1057
  %1059 = fmul fast float %1055, %1055
  %1060 = fadd fast float %1058, %1059
  %1061 = call float @dx.op.unary.f32(i32 24, float %1060)  ; Sqrt(value)
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 0
  %1064 = fsub fast float %1061, %1063
  %1065 = extractvalue %dx.types.CBufRet.f32 %1062, 2
  %1066 = fmul fast float %1064, %1065
  %1067 = call float @dx.op.unary.f32(i32 7, float %1066)  ; Saturate(value)
  %1068 = fadd fast float %1067, -5.000000e-01
  %1069 = fmul fast float %1068, 2.000000e+00
  %1070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1070, 2
  %1072 = call float @dx.op.binary.f32(i32 36, float %1071, float %1069)  ; FMin(a,b)
  %1073 = fsub fast float -0.000000e+00, %1071
  %1074 = fcmp fast ogt float %1072, %1073
  br i1 %1074, label %1075, label %1284, !dx.controlflow.hints !71

; <label>:1075                                    ; preds = %1019
  %1076 = fmul fast float %1072, 5.000000e-01
  %1077 = fadd fast float %1076, 5.000000e-01
  %1078 = call float @dx.op.unary.f32(i32 22, float %1077)  ; Frc(value)
  %1079 = call float @dx.op.unary.f32(i32 27, float %1078)  ; Round_ni(value)
  %1080 = call float @dx.op.unary.f32(i32 22, float %1078)  ; Frc(value)
  %1081 = fmul fast float %1080, 2.000000e+00
  %1082 = fadd fast float %1081, -1.000000e+00
  %1083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %1023, float %1024, float %1079, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = extractvalue %dx.types.ResRet.f32 %1083, 3
  %1088 = fadd fast float %1084, -5.000000e-01
  %1089 = fadd fast float %1086, -5.000000e-01
  %1090 = fmul fast float %1088, 0xBFD5555560000000
  %1091 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1089, float %1090)  ; FMad(a,b,c)
  %1092 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1085, float 0.000000e+00)  ; FMad(a,b,c)
  %1093 = fadd fast float %1092, %1087
  %1094 = fmul fast float %1088, -7.500000e-01
  %1095 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1089, float %1094)  ; FMad(a,b,c)
  %1096 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1085, float 0.000000e+00)  ; FMad(a,b,c)
  %1097 = fadd fast float %1096, %1087
  %1098 = call float @dx.op.binary.f32(i32 35, float %1091, float -1.000000e+00)  ; FMax(a,b)
  %1099 = call float @dx.op.binary.f32(i32 35, float %1093, float -1.000000e+00)  ; FMax(a,b)
  %1100 = call float @dx.op.binary.f32(i32 35, float %1095, float -1.000000e+00)  ; FMax(a,b)
  %1101 = call float @dx.op.binary.f32(i32 35, float %1097, float -1.000000e+00)  ; FMax(a,b)
  %1102 = call float @dx.op.binary.f32(i32 36, float %1098, float 1.000000e+00)  ; FMin(a,b)
  %1103 = call float @dx.op.binary.f32(i32 36, float %1099, float 1.000000e+00)  ; FMin(a,b)
  %1104 = call float @dx.op.binary.f32(i32 36, float %1100, float 1.000000e+00)  ; FMin(a,b)
  %1105 = call float @dx.op.binary.f32(i32 36, float %1101, float 1.000000e+00)  ; FMin(a,b)
  %1106 = fcmp fast olt float %1102, 0x3FEFFF8020000000
  br i1 %1106, label %1107, label %1222, !dx.controlflow.hints !72

; <label>:1107                                    ; preds = %1075
  %1108 = extractvalue %dx.types.CBufRet.f32 %1070, 3
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1111 = extractvalue %dx.types.CBufRet.f32 %1109, 1
  %1112 = extractvalue %dx.types.CBufRet.f32 %1109, 2
  %1113 = extractvalue %dx.types.CBufRet.f32 %1109, 3
  %1114 = fsub fast float %1110, %1102
  %1115 = fsub fast float %1111, %1103
  %1116 = fsub fast float %1112, %1104
  %1117 = fsub fast float %1113, %1105
  %1118 = fmul fast float %1114, %1108
  %1119 = fmul fast float %1115, %1108
  %1120 = fmul fast float %1116, %1108
  %1121 = fmul fast float %1117, %1108
  %1122 = fadd fast float %1118, %1102
  %1123 = fadd fast float %1119, %1103
  %1124 = fsub fast float -0.000000e+00, %1123
  %1125 = fadd fast float %1120, %1104
  %1126 = fadd fast float %1121, %1105
  %1127 = fmul fast float %1122, %1122
  %1128 = fsub fast float %1123, %1127
  %1129 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1128)  ; FMax(a,b)
  %1130 = fdiv fast float 1.000000e+00, %1129
  %1131 = fmul fast float %1123, %1122
  %1132 = fsub fast float %1125, %1131
  %1133 = fsub fast float %1082, %1122
  %1134 = fmul fast float %1082, %1082
  %1135 = fsub fast float %1134, %1123
  %1136 = fmul fast float %1133, %1130
  %1137 = fmul fast float %1136, %1132
  %1138 = fsub fast float %1135, %1137
  %1139 = fmul fast float %1123, %1123
  %1140 = fsub fast float %1126, %1139
  %1141 = fmul fast float %1132, %1132
  %1142 = fmul fast float %1141, %1130
  %1143 = fsub fast float %1140, %1142
  %1144 = fdiv fast float %1138, %1143
  %1145 = fmul fast float %1132, %1144
  %1146 = fsub fast float %1133, %1145
  %1147 = fmul fast float %1146, %1130
  %1148 = fmul fast float %1147, %1122
  %1149 = fsub fast float 1.000000e+00, %1148
  %1150 = fmul fast float %1123, %1144
  %1151 = fsub fast float %1149, %1150
  %1152 = fmul fast float %1147, %1147
  %1153 = fmul fast float %1144, 4.000000e+00
  %1154 = fmul fast float %1153, %1151
  %1155 = fsub fast float %1152, %1154
  %1156 = call float @dx.op.unary.f32(i32 24, float %1155)  ; Sqrt(value)
  %1157 = fcmp fast oge float %1147, 0.000000e+00
  %1158 = fsub fast float -0.000000e+00, %1156
  %1159 = select i1 %1157, float %1158, float %1156
  %1160 = fsub fast float %1159, %1147
  %1161 = fdiv fast float %1160, %1144
  %1162 = fdiv fast float %1151, %1160
  %1163 = fmul fast float %1161, 5.000000e-01
  %1164 = fmul fast float %1162, 2.000000e+00
  %1165 = select i1 %1157, float %1163, float %1164
  %1166 = select i1 %1157, float %1164, float %1163
  %1167 = call float @dx.op.binary.f32(i32 35, float %1165, float %1166)  ; FMax(a,b)
  %1168 = call float @dx.op.binary.f32(i32 36, float %1165, float %1166)  ; FMin(a,b)
  %1169 = fcmp fast ogt float %1082, %1168
  br i1 %1169, label %1170, label %1180

; <label>:1170                                    ; preds = %1107
  %1171 = fsub fast float %1082, %1168
  %1172 = fsub fast float %1167, %1168
  %1173 = fmul fast float %1171, %1172
  %1174 = fmul fast float %1167, %1082
  %1175 = fadd fast float %1167, %1082
  %1176 = fmul fast float %1175, %1122
  %1177 = fadd fast float %1174, %1123
  %1178 = fsub fast float %1177, %1176
  %1179 = fdiv fast float %1178, %1173
  br label %1180

; <label>:1180                                    ; preds = %1170, %1107
  %1181 = phi float [ %1179, %1170 ], [ 0.000000e+00, %1107 ]
  %1182 = fcmp fast ogt float %1082, %1167
  %1183 = fsub fast float %1082, %1167
  br i1 %1182, label %1184, label %1194

; <label>:1184                                    ; preds = %1180
  %1185 = fsub fast float %1167, %1168
  %1186 = fmul fast float %1185, %1183
  %1187 = fmul fast float %1168, %1082
  %1188 = fadd fast float %1168, %1082
  %1189 = fmul fast float %1188, %1122
  %1190 = fsub fast float %1124, %1187
  %1191 = fadd fast float %1190, %1189
  %1192 = fdiv fast float %1191, %1186
  %1193 = fadd fast float %1192, %1181
  br label %1194

; <label>:1194                                    ; preds = %1184, %1180
  %1195 = phi float [ %1193, %1184 ], [ %1181, %1180 ]
  %1196 = fsub fast float %1082, %1168
  %1197 = fmul fast float %1196, %1183
  %1198 = fmul fast float %1168, %1167
  %1199 = fadd fast float %1168, %1167
  %1200 = fmul fast float %1199, %1122
  %1201 = fadd fast float %1198, %1123
  %1202 = fsub fast float %1201, %1200
  %1203 = fdiv fast float %1202, %1197
  %1204 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1205 = fcmp fast oeq float %859, 0.000000e+00
  %1206 = extractvalue %dx.types.CBufRet.f32 %1070, 0
  %1207 = fcmp fast oeq float %1206, 0.000000e+00
  %1208 = or i1 %1205, %1207
  %1209 = fmul fast float %1206, 2.000000e+00
  %1210 = fadd fast float %1071, %1072
  %1211 = fdiv fast float %1210, %1209
  %1212 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  %1213 = fmul fast float %1212, 2.000000e+00
  %1214 = fsub fast float 3.000000e+00, %1213
  %1215 = fmul fast float %1212, %1212
  %1216 = fmul fast float %1215, %1214
  %1217 = select i1 %1208, float 1.000000e+00, float %1216
  %1218 = fmul fast float %1203, %859
  %1219 = fadd fast float %1204, %1218
  %1220 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1221 = fmul fast float %1217, %1220
  br label %1222

; <label>:1222                                    ; preds = %1194, %1075
  %1223 = phi float [ %1221, %1194 ], [ 0.000000e+00, %1075 ]
  %1224 = fsub fast float 1.000000e+00, %1223
  %1225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.i32 %1227, 2
  %1229 = icmp eq i32 %1228, 0
  br i1 %1229, label %1235, label %1230

; <label>:1230                                    ; preds = %1222
  %1231 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1232 = fadd fast float %1226, -1.000000e+00
  %1233 = fmul fast float %1231, %1232
  %1234 = fadd fast float %1233, 1.000000e+00
  br label %1235

; <label>:1235                                    ; preds = %1230, %1222
  %1236 = phi float [ %1234, %1230 ], [ %1224, %1222 ]
  %1237 = call float @dx.op.binary.f32(i32 35, float %1226, float %1236)  ; FMax(a,b)
  %1238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1239 = extractvalue %dx.types.CBufRet.i32 %1238, 2
  %1240 = and i32 %1239, 1
  %1241 = icmp eq i32 %1240, 0
  %1242 = fcmp fast une float %1237, 1.000000e+00
  %1243 = and i1 %1242, %1241
  br i1 %1243, label %1244, label %1263

; <label>:1244                                    ; preds = %1235
  %1245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %1023, float %1024, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.ResRet.f32 %1245, 1
  %1248 = extractvalue %dx.types.ResRet.f32 %1245, 2
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 1
  %1251 = fmul fast float %1250, %1246
  %1252 = fmul fast float %1250, %1247
  %1253 = fmul fast float %1250, %1248
  %1254 = fcmp fast ogt float %1226, 0x3FEFFF2E40000000
  %1255 = fsub fast float 1.000000e+00, %1237
  %1256 = fsub fast float 1.000000e+00, %1226
  %1257 = fdiv fast float %1255, %1256
  %1258 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  %1259 = select i1 %1254, float 0.000000e+00, float %1258
  %1260 = fmul fast float %1251, %1259
  %1261 = fmul fast float %1252, %1259
  %1262 = fmul fast float %1253, %1259
  br label %1263

; <label>:1263                                    ; preds = %1244, %1235
  %1264 = phi float [ 0.000000e+00, %1235 ], [ %1260, %1244 ]
  %1265 = phi float [ 0.000000e+00, %1235 ], [ %1261, %1244 ]
  %1266 = phi float [ 0.000000e+00, %1235 ], [ %1262, %1244 ]
  %1267 = fmul fast float %1264, %840
  %1268 = fmul fast float %1265, %840
  %1269 = fmul fast float %1266, %840
  %1270 = fmul fast float %1237, %1001
  %1271 = call float @dx.op.dot3.f32(i32 55, float %1237, float %1237, float %1237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1272 = call float @dx.op.dot3.f32(i32 55, float %1267, float %1268, float %1269, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1273 = select i1 %108, float %1271, float %1237
  %1274 = select i1 %108, float 1.000000e+00, float %1237
  %1275 = select i1 %108, float %1272, float %1267
  %1276 = select i1 %108, float 0.000000e+00, float %1268
  %1277 = select i1 %108, float 0.000000e+00, float %1269
  %1278 = fmul fast float %1273, %1013
  %1279 = fmul fast float %1273, %1014
  %1280 = fmul fast float %1274, %1015
  %1281 = fadd fast float %1278, %1275
  %1282 = fadd fast float %1279, %1276
  %1283 = fadd fast float %1277, %1280
  br label %1284

; <label>:1284                                    ; preds = %1263, %1019, %989, %983
  %1285 = phi float [ %985, %983 ], [ %1013, %989 ], [ %1281, %1263 ], [ %1013, %1019 ]
  %1286 = phi float [ %986, %983 ], [ %1014, %989 ], [ %1282, %1263 ], [ %1014, %1019 ]
  %1287 = phi float [ %987, %983 ], [ %1015, %989 ], [ %1283, %1263 ], [ %1015, %1019 ]
  %1288 = phi float [ %988, %983 ], [ %1001, %989 ], [ %1270, %1263 ], [ %1001, %1019 ]
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1291 = extractvalue %dx.types.CBufRet.f32 %1289, 3
  %1292 = fmul fast float %1290, %50
  %1293 = fmul fast float %1291, %51
  %1294 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1295 = call float @dx.op.unary.f32(i32 7, float %1293)  ; Saturate(value)
  %1296 = select i1 %876, i32 2, i32 0
  %1297 = or i32 %1296, 1
  %1298 = uitofp i32 %1297 to float
  %1299 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1294, float %1295, float %1298, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.ResRet.f32 %1299, 2
  %1303 = extractvalue %dx.types.ResRet.f32 %1299, 3
  %1304 = add nuw nsw i32 %1296, 2
  %1305 = uitofp i32 %1304 to float
  %1306 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1294, float %1295, float %1305, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1307 = extractvalue %dx.types.ResRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.ResRet.f32 %1306, 1
  %1309 = extractvalue %dx.types.ResRet.f32 %1306, 2
  %1310 = extractvalue %dx.types.ResRet.f32 %1306, 3
  %1311 = call float @dx.op.binary.f32(i32 35, float %1301, float %1302)  ; FMax(a,b)
  %1312 = call float @dx.op.binary.f32(i32 35, float %1300, float %1311)  ; FMax(a,b)
  %1313 = call float @dx.op.binary.f32(i32 35, float %1312, float %1303)  ; FMax(a,b)
  %1314 = call float @dx.op.binary.f32(i32 36, float %1308, float %1309)  ; FMin(a,b)
  %1315 = call float @dx.op.binary.f32(i32 36, float %1307, float %1314)  ; FMin(a,b)
  %1316 = call float @dx.op.binary.f32(i32 36, float %1315, float %1310)  ; FMin(a,b)
  %1317 = fmul fast float %1313, 2.550000e+02
  %1318 = fadd fast float %1317, 0x3F70101020000000
  %1319 = fptoui float %1318 to i32
  %1320 = fmul fast float %1316, 2.550000e+02
  %1321 = fadd fast float %1320, 0x3F70101020000000
  %1322 = fptoui float %1321 to i32
  %1323 = icmp ult i32 %1319, %1322
  br i1 %1323, label %1324, label %1376

; <label>:1324                                    ; preds = %1284
  %1325 = fcmp fast ogt float %44, 9.843750e-01
  %1326 = fadd fast float %984, -4.000000e+00
  %1327 = select i1 %1325, float -4.000000e+00, float %1326
  %1328 = call float @dx.op.binary.f32(i32 35, float %1327, float 0.000000e+00)  ; FMax(a,b)
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 0
  %1331 = fadd fast float %1330, %1328
  %1332 = extractvalue %dx.types.CBufRet.f32 %1329, 2
  %1333 = fmul fast float %1331, %1332
  %1334 = call float @dx.op.unary.f32(i32 23, float %1333)  ; Log(value)
  %1335 = extractvalue %dx.types.CBufRet.f32 %1329, 3
  %1336 = fmul fast float %1335, %1334
  %1337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1337, 2
  %1339 = fmul fast float %1336, %1338
  %1340 = call float @dx.op.unary.f32(i32 7, float %1339)  ; Saturate(value)
  %1341 = uitofp i32 %1319 to float
  %1342 = uitofp i32 %1322 to float
  %1343 = fadd fast float %1341, 5.000000e-01
  %1344 = fadd fast float %1342, 5.000000e-01
  %1345 = fmul fast float %1338, %1343
  %1346 = fmul fast float %1338, %1344
  %1347 = fadd fast float %1345, 0x3F0FFB4800000000
  %1348 = fadd fast float %1346, 0xBF0FFB4800000000
  %1349 = call float @dx.op.binary.f32(i32 35, float %1340, float %1347)  ; FMax(a,b)
  %1350 = call float @dx.op.binary.f32(i32 36, float %1349, float %1348)  ; FMin(a,b)
  %1351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1352 = extractvalue %dx.types.CBufRet.f32 %1351, 1
  %1353 = extractvalue %dx.types.CBufRet.f32 %1351, 2
  %1354 = extractvalue %dx.types.CBufRet.f32 %1351, 0
  %1355 = select i1 %876, float %1354, float 0.000000e+00
  %1356 = fmul fast float %1352, %1350
  %1357 = fadd fast float %1355, %1356
  %1358 = fadd fast float %1355, %1353
  %1359 = fsub fast float %1352, %1353
  %1360 = fadd fast float %1359, %1355
  %1361 = call float @dx.op.binary.f32(i32 35, float %1357, float %1358)  ; FMax(a,b)
  %1362 = call float @dx.op.binary.f32(i32 36, float %1361, float %1360)  ; FMin(a,b)
  %1363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1294, float %1295, float %1362, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1364 = extractvalue %dx.types.ResRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.ResRet.f32 %1363, 1
  %1366 = extractvalue %dx.types.ResRet.f32 %1363, 2
  %1367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1294, float %1295, float %1362, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.ResRet.f32 %1367, 1
  %1370 = extractvalue %dx.types.ResRet.f32 %1367, 2
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 1
  %1373 = fmul fast float %1372, %1368
  %1374 = fmul fast float %1372, %1369
  %1375 = fmul fast float %1372, %1370
  br label %1376

; <label>:1376                                    ; preds = %1324, %1284
  %1377 = phi float [ %1364, %1324 ], [ 1.000000e+00, %1284 ]
  %1378 = phi float [ %1365, %1324 ], [ 1.000000e+00, %1284 ]
  %1379 = phi float [ %1366, %1324 ], [ 1.000000e+00, %1284 ]
  %1380 = phi float [ %1373, %1324 ], [ 0.000000e+00, %1284 ]
  %1381 = phi float [ %1374, %1324 ], [ 0.000000e+00, %1284 ]
  %1382 = phi float [ %1375, %1324 ], [ 0.000000e+00, %1284 ]
  %1383 = fmul fast float %1380, %840
  %1384 = fmul fast float %1381, %840
  %1385 = fmul fast float %1382, %840
  %1386 = fmul fast float %1377, %1288
  %1387 = call float @dx.op.dot3.f32(i32 55, float %1377, float %1378, float %1379, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1388 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1389 = select i1 %108, float %1387, float %1377
  %1390 = select i1 %108, float %1387, float %1378
  %1391 = select i1 %108, float 1.000000e+00, float %1379
  %1392 = select i1 %108, float %1388, float %1383
  %1393 = select i1 %108, float 0.000000e+00, float %1384
  %1394 = select i1 %108, float 0.000000e+00, float %1385
  %1395 = fmul fast float %1389, %1285
  %1396 = fmul fast float %1390, %1286
  %1397 = fmul fast float %1391, %1287
  %1398 = fadd fast float %1395, %1392
  %1399 = fadd fast float %1396, %1393
  %1400 = fadd fast float %1394, %1397
  %1401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.i32 %1401, 3
  %1403 = and i32 %1402, 3
  %1404 = icmp ne i32 %1403, 0
  %1405 = and i32 %1402, 4
  %1406 = icmp ne i32 %1405, 0
  %1407 = and i1 %1404, %1406
  %1408 = and i1 %108, %1407
  br i1 %1408, label %1409, label %1415

; <label>:1409                                    ; preds = %1376
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 1
  %1412 = fadd fast float %1386, -1.000000e+00
  %1413 = fmul fast float %1411, %1412
  %1414 = fadd fast float %1413, 1.000000e+00
  br label %1415

; <label>:1415                                    ; preds = %1409, %1376
  %1416 = phi float [ %1414, %1409 ], [ %1386, %1376 ]
  %1417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.f32 %1417, 0
  br i1 %108, label %1419, label %1441

; <label>:1419                                    ; preds = %1415
  %1420 = fadd fast float %1398, %1399
  %1421 = fmul fast float %1418, %1420
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 3
  %1424 = extractvalue %dx.types.CBufRet.f32 %845, 1
  %1425 = fsub fast float %848, %1424
  %1426 = extractvalue %dx.types.CBufRet.f32 %845, 2
  %1427 = fmul fast float %1425, %1426
  %1428 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1429 = fsub fast float %1428, %1423
  %1430 = fmul fast float %1429, %1416
  %1431 = fadd fast float %1430, %1423
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 0
  %1434 = fsub fast float %1431, %1433
  %1435 = fmul fast float %1434, 1.000000e+01
  %1436 = call float @dx.op.unary.f32(i32 7, float %1435)  ; Saturate(value)
  %1437 = fsub fast float %811, %840
  %1438 = fmul fast float %1436, %1437
  %1439 = fadd fast float %1438, %840
  %1440 = fmul fast float %1439, %1431
  br label %1450

; <label>:1441                                    ; preds = %1415
  %1442 = fmul fast float %1418, %1398
  %1443 = fmul fast float %1418, %1399
  %1444 = fmul fast float %1418, %1400
  %1445 = call float @dx.op.binary.f32(i32 35, float %1443, float %1444)  ; FMax(a,b)
  %1446 = call float @dx.op.binary.f32(i32 35, float %1442, float %1445)  ; FMax(a,b)
  %1447 = call float @dx.op.binary.f32(i32 35, float %1446, float %840)  ; FMax(a,b)
  %1448 = fcmp fast ugt float %1447, 0x3F10000000000000
  br i1 %1448, label %1450, label %1449

; <label>:1449                                    ; preds = %1441
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1450

; <label>:1450                                    ; preds = %1449, %1441, %1419
  %1451 = phi float [ %1421, %1419 ], [ %1442, %1449 ], [ %1442, %1441 ]
  %1452 = phi float [ %1440, %1419 ], [ %1443, %1449 ], [ %1443, %1441 ]
  %1453 = phi float [ %1439, %1419 ], [ %1444, %1449 ], [ %1444, %1441 ]
  %1454 = phi float [ %1439, %1419 ], [ %840, %1449 ], [ %840, %1441 ]
  %1455 = fadd fast float %539, 0x3FE3C6EF40000000
  %1456 = call float @dx.op.unary.f32(i32 22, float %1455)  ; Frc(value)
  %1457 = call float @dx.op.unary.f32(i32 23, float %1451)  ; Log(value)
  %1458 = fadd fast float %1457, -7.000000e+00
  %1459 = call float @dx.op.unary.f32(i32 21, float %1458)  ; Exp(value)
  %1460 = fmul fast float %1456, 2.000000e+00
  %1461 = fadd fast float %1460, -1.000000e+00
  %1462 = fmul fast float %1459, %1461
  %1463 = fcmp fast ogt float %1451, 0.000000e+00
  %1464 = select i1 %1463, float %1462, float 0.000000e+00
  %1465 = fadd fast float %1464, %1451
  %1466 = fadd fast float %539, 0x3FF3C6EF40000000
  %1467 = call float @dx.op.unary.f32(i32 22, float %1466)  ; Frc(value)
  %1468 = call float @dx.op.unary.f32(i32 23, float %1452)  ; Log(value)
  %1469 = fadd fast float %1468, -7.000000e+00
  %1470 = call float @dx.op.unary.f32(i32 21, float %1469)  ; Exp(value)
  %1471 = fmul fast float %1467, 2.000000e+00
  %1472 = fadd fast float %1471, -1.000000e+00
  %1473 = fmul fast float %1470, %1472
  %1474 = fcmp fast ogt float %1452, 0.000000e+00
  %1475 = select i1 %1474, float %1473, float 0.000000e+00
  %1476 = fadd fast float %1475, %1452
  %1477 = fadd fast float %539, 0x3FFDAA66E0000000
  %1478 = call float @dx.op.unary.f32(i32 22, float %1477)  ; Frc(value)
  %1479 = call float @dx.op.unary.f32(i32 23, float %1453)  ; Log(value)
  %1480 = fadd fast float %1479, -6.000000e+00
  %1481 = call float @dx.op.unary.f32(i32 21, float %1480)  ; Exp(value)
  %1482 = fmul fast float %1478, 2.000000e+00
  %1483 = fadd fast float %1482, -1.000000e+00
  %1484 = fmul fast float %1481, %1483
  %1485 = fcmp fast ogt float %1453, 0.000000e+00
  %1486 = select i1 %1485, float %1484, float 0.000000e+00
  %1487 = fadd fast float %1486, %1453
  %1488 = select i1 %108, float %1452, float %1476
  %1489 = select i1 %108, float %1453, float %1487
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1490 = call float @dx.op.binary.f32(i32 36, float %1465, float 3.225500e+04)  ; FMin(a,b)
  %1491 = call float @dx.op.binary.f32(i32 36, float %1488, float 3.225500e+04)  ; FMin(a,b)
  %1492 = call float @dx.op.binary.f32(i32 36, float %1489, float 3.225500e+04)  ; FMin(a,b)
  %1493 = call float @dx.op.binary.f32(i32 36, float %1454, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1490)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1491)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1492)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1493)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1454)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1454)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1454)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1454)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!34 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!35 = !{void ()* @ps_main, !"ps_main", !36, !4, !61}
!36 = !{!37, !57, null}
!37 = !{!38, !41, !42, !44, !47, !49, !51, !53, !54, !56}
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
!54 = !{i32 8, !"COLOR", i8 5, i8 0, !48, i8 1, i32 1, i8 3, i32 8, i8 0, !55}
!55 = !{i32 3, i32 5}
!56 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !39, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!57 = !{!58, !59}
!58 = !{i32 0, !"SV_Target", i8 9, i8 16, !39, i8 0, i32 1, i8 4, i32 0, i8 0, !40}
!59 = !{i32 1, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 1, i8 0, !40}
!60 = !{i32 1}
!61 = !{i32 0, i64 24}
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

