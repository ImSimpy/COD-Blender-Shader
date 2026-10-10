;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyz 
; TEXCOORD                 5   xy          4     NONE   float   xy  
; TEXCOORD                 8   xyzw        5     NONE   float       
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
; shader hash: 12bb70c813d0ee53379b969601b8a8df
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
;
;
; ViewId state:
;
; Number of inputs: 31, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 30 }
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
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = fmul fast float %46, %39
  %48 = fmul fast float %46, %40
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %52 = fmul fast float %47, 2.000000e+00
  %53 = fmul fast float %52, %50
  %54 = fmul fast float %48, 2.000000e+00
  %55 = fmul fast float %54, %51
  %56 = fsub fast float 1.000000e+00, %53
  %57 = fsub fast float 1.000000e+00, %55
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = fmul fast float %56, %59
  %63 = fmul fast float %56, %60
  %64 = fmul fast float %56, %61
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %69 = fmul fast float %57, %66
  %70 = fmul fast float %57, %67
  %71 = fmul fast float %57, %68
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = fadd fast float %69, %73
  %77 = fadd fast float %76, %62
  %78 = fadd fast float %70, %74
  %79 = fadd fast float %78, %63
  %80 = fadd fast float %71, %75
  %81 = fadd fast float %80, %64
  %82 = fmul fast float %77, %42
  %83 = fmul fast float %79, %42
  %84 = fmul fast float %81, %42
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %95 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %94, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = fsub fast float 1.000000e+00, %96
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = fcmp fast olt float %97, %99
  br label %104

; <label>:101                                     ; preds = %0
  %102 = icmp eq i32 %89, 0
  %103 = and i1 %88, %102
  br label %104

; <label>:104                                     ; preds = %101, %92
  %105 = phi i1 [ %100, %92 ], [ %103, %101 ]
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %109 = fmul fast float %107, %47
  %110 = fmul fast float %108, %48
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = and i32 %112, 114688
  %114 = icmp ne i32 %113, 0
  %115 = select i1 %114, float %109, float 0.000000e+00
  %116 = select i1 %114, float %110, float 0.000000e+00
  %117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %115, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fmul fast float %118, 2.550000e+02
  %120 = fptoui float %119 to i32
  %121 = select i1 %114, i32 %120, i32 0
  %122 = mul i32 %22, 208
  %123 = add i32 %122, 188
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %162 = phi float [ %33, %134 ], [ %141, %147 ], [ %160, %155 ], [ %141, %153 ]
  %163 = phi float [ %34, %134 ], [ %152, %147 ], [ %142, %155 ], [ %142, %153 ]
  %164 = add i32 %23, 72
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = extractvalue %dx.types.ResRet.i32 %165, 1
  %168 = bitcast i32 %166 to float
  %169 = bitcast i32 %167 to float
  %170 = fmul fast float %168, %33
  %171 = fmul fast float %169, %34
  %172 = call float @dx.op.unary.f32(i32 22, float %170)  ; Frc(value)
  %173 = call float @dx.op.unary.f32(i32 22, float %171)  ; Frc(value)
  %174 = and i32 %125, 16
  %175 = icmp ne i32 %174, 0
  %176 = select i1 %175, float 1.000000e+00, float %38
  %177 = add i32 %23, 124
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = add i32 %179, 0
  %181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %181, %dx.types.Handle %44, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float %183, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = fmul fast float %185, %176
  %187 = icmp eq i32 %174, 0
  br i1 %187, label %207, label %188, !dx.controlflow.hints !60

; <label>:188                                     ; preds = %161
  %189 = add i32 %122, 64
  %190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = fadd fast float %191, 1.000000e+00
  %193 = fmul fast float %192, %38
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

; <label>:207                                     ; preds = %188, %161
  %208 = phi float [ %206, %188 ], [ %186, %161 ]
  %209 = fcmp fast ogt float %208, 0.000000e+00
  br i1 %209, label %211, label %210

; <label>:210                                     ; preds = %207
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %211

; <label>:211                                     ; preds = %210, %207
  %212 = call float @dx.op.unary.f32(i32 7, float %208)  ; Saturate(value)
  %213 = fmul fast float %47, 5.000000e-01
  %214 = fmul fast float %48, 5.000000e-01
  %215 = fptosi float %213 to i32
  %216 = fptosi float %214 to i32
  %217 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %215, i32 %216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = lshr i32 %218, 18
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F4C00EBA0000000
  %222 = call float @dx.op.unary.f32(i32 21, float %221)  ; Exp(value)
  %223 = fadd fast float %222, -1.000000e+00
  %224 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %225 = extractvalue %dx.types.Dimensions %224, 0
  %226 = sitofp i32 %225 to float
  %227 = extractvalue %dx.types.Dimensions %224, 1
  %228 = sitofp i32 %227 to float
  %229 = fcmp fast oge float %213, %226
  %230 = fcmp fast oge float %214, %228
  %231 = or i1 %229, %230
  %232 = select i1 %231, float 0x4197782600000000, float %223
  %233 = fsub fast float %232, %42
  %234 = fcmp fast ogt float %233, 0.000000e+00
  %235 = and i32 %121, -2
  %236 = icmp eq i32 %235, 2
  %237 = and i1 %236, %234
  %238 = xor i1 %234, true
  %239 = icmp eq i32 %121, 1
  %240 = and i1 %239, %238
  %241 = or i1 %237, %240
  %242 = and i32 %125, 262144
  %243 = icmp ne i32 %242, 0
  %244 = and i1 %243, %241
  %245 = xor i1 %241, true
  %246 = and i32 %125, 131072
  %247 = icmp ne i32 %246, 0
  %248 = and i1 %247, %245
  %249 = or i1 %244, %248
  br i1 %249, label %250, label %251

; <label>:250                                     ; preds = %211
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %251

; <label>:251                                     ; preds = %250, %211
  %252 = and i32 %125, 32
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %504, label %254, !dx.controlflow.hints !61

; <label>:254                                     ; preds = %251
  %255 = add i32 %122, 80
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = extractvalue %dx.types.ResRet.f32 %256, 1
  %259 = extractvalue %dx.types.ResRet.f32 %256, 2
  %260 = extractvalue %dx.types.ResRet.f32 %256, 3
  %261 = add i32 %122, 96
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = add i32 %122, 112
  %267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = extractvalue %dx.types.ResRet.f32 %267, 1
  %270 = extractvalue %dx.types.ResRet.f32 %267, 2
  %271 = extractvalue %dx.types.ResRet.f32 %267, 3
  %272 = add i32 %122, 128
  %273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.f32 %273, 0
  %275 = extractvalue %dx.types.ResRet.f32 %273, 1
  %276 = extractvalue %dx.types.ResRet.f32 %273, 2
  %277 = extractvalue %dx.types.ResRet.f32 %273, 3
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 4096
  %281 = icmp ne i32 %280, 0
  %282 = fcmp fast une float %265, 0.000000e+00
  %283 = and i32 %279, 64
  %284 = icmp ne i32 %283, 0
  %285 = and i32 %279, 128
  %286 = icmp eq i32 %285, 0
  %287 = and i32 %279, 2048
  %288 = icmp eq i32 %287, 0
  %289 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %290 = extractvalue %dx.types.Dimensions %289, 0
  %291 = sitofp i32 %290 to float
  %292 = extractvalue %dx.types.Dimensions %289, 1
  %293 = sitofp i32 %292 to float
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 2
  %296 = extractvalue %dx.types.CBufRet.f32 %294, 3
  %297 = fmul fast float %295, %47
  %298 = fmul fast float %296, %48
  %299 = fmul fast float %297, %291
  %300 = fmul fast float %298, %293
  %301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.f32 %301, 1
  %303 = fsub fast float -0.000000e+00, %302
  %304 = fptoui float %303 to i32
  %305 = fptoui float %299 to i32
  %306 = fptoui float %300 to i32
  %307 = and i32 %304, 31
  %308 = lshr i32 %305, %307
  %309 = lshr i32 %306, %307
  %310 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %304, i32 %308, i32 %309, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  %312 = fcmp fast ogt float %311, -1.000000e+00
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %315 = select i1 %312, float %314, float 1.000000e+00
  %316 = fadd fast float %311, 1.000000e+00
  %317 = fmul fast float %315, %316
  %318 = call float @dx.op.unary.f32(i32 6, float %317)  ; FAbs(value)
  %319 = extractvalue %dx.types.CBufRet.f32 %313, 3
  %320 = fcmp fast oge float %318, %319
  %321 = select i1 %320, float 0x4197782600000000, float %318
  br i1 %288, label %399, label %322, !dx.controlflow.hints !62

; <label>:322                                     ; preds = %254
  %323 = fmul fast float %52, %295
  %324 = fmul fast float %54, %296
  %325 = fsub fast float 1.000000e+00, %323
  %326 = fsub fast float 1.000000e+00, %324
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = fmul fast float %325, %328
  %332 = fmul fast float %325, %329
  %333 = fmul fast float %325, %330
  %334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.f32 %334, 0
  %336 = extractvalue %dx.types.CBufRet.f32 %334, 1
  %337 = extractvalue %dx.types.CBufRet.f32 %334, 2
  %338 = fmul fast float %326, %335
  %339 = fmul fast float %326, %336
  %340 = fmul fast float %326, %337
  %341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %342 = extractvalue %dx.types.CBufRet.f32 %341, 0
  %343 = extractvalue %dx.types.CBufRet.f32 %341, 1
  %344 = extractvalue %dx.types.CBufRet.f32 %341, 2
  %345 = fadd fast float %338, %342
  %346 = fadd fast float %345, %331
  %347 = fadd fast float %339, %343
  %348 = fadd fast float %347, %332
  %349 = fadd fast float %340, %344
  %350 = fadd fast float %349, %333
  %351 = fmul fast float %346, %321
  %352 = fmul fast float %348, %321
  %353 = fmul fast float %350, %321
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 0
  %356 = extractvalue %dx.types.CBufRet.f32 %354, 1
  %357 = extractvalue %dx.types.CBufRet.f32 %354, 2
  %358 = fsub fast float %355, %24
  %359 = fadd fast float %358, %351
  %360 = fsub fast float %356, %25
  %361 = fadd fast float %360, %352
  %362 = fsub fast float %357, %26
  %363 = fadd fast float %362, %353
  %364 = fmul fast float %27, %27
  %365 = call float @dx.op.dot3.f32(i32 55, float %359, float %361, float %363, float %359, float %361, float %363)  ; Dot3(ax,ay,az,bx,by,bz)
  %366 = fsub fast float %364, %365
  %367 = fmul fast float %264, %364
  %368 = fmul fast float %263, %364
  %369 = fcmp fast olt float %366, %367
  %370 = fcmp fast ogt float %366, %368
  %371 = or i1 %369, %370
  %372 = select i1 %371, float 0.000000e+00, float %366
  %373 = fsub fast float %263, %264
  %374 = fmul fast float %373, %364
  %375 = fsub fast float %372, %367
  %376 = fdiv fast float %375, %374
  %377 = call float @dx.op.unary.f32(i32 7, float %376)  ; Saturate(value)
  %378 = fmul fast float %377, 2.000000e+00
  %379 = fsub fast float 3.000000e+00, %378
  %380 = fmul fast float %377, %377
  %381 = fmul fast float %380, %379
  %382 = fmul fast float %268, %35
  %383 = fmul fast float %269, %36
  %384 = fmul fast float %270, %37
  %385 = fsub fast float %382, %274
  %386 = fsub fast float %383, %275
  %387 = fsub fast float %384, %276
  %388 = fsub fast float %271, %277
  %389 = fmul fast float %381, %385
  %390 = fmul fast float %381, %386
  %391 = fmul fast float %381, %387
  %392 = fmul fast float %381, %388
  %393 = fadd fast float %389, %274
  %394 = fadd fast float %390, %275
  %395 = fadd fast float %391, %276
  %396 = fadd fast float %392, %277
  %397 = fmul fast float %257, %257
  %398 = fmul fast float %397, %372
  br label %494

; <label>:399                                     ; preds = %254
  %400 = and i32 %279, 256
  %401 = icmp eq i32 %400, 0
  %402 = fsub fast float %321, %42
  br i1 %401, label %451, label %403

; <label>:403                                     ; preds = %399
  %404 = fadd fast float %263, %42
  %405 = fcmp fast olt float %321, %42
  %406 = fcmp fast ogt float %321, %404
  %407 = or i1 %405, %406
  %408 = select i1 %407, float 0.000000e+00, float %402
  %409 = call float @dx.op.unary.f32(i32 83, float %321)  ; DerivCoarseX(value)
  %410 = call float @dx.op.unary.f32(i32 84, float %321)  ; DerivCoarseY(value)
  %411 = fmul fast float %409, %409
  %412 = fmul fast float %410, %410
  %413 = fadd fast float %412, %411
  %414 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %415 = extractvalue %dx.types.CBufRet.f32 %301, 2
  %416 = fmul fast float %415, %414
  %417 = call float @dx.op.unary.f32(i32 7, float %416)  ; Saturate(value)
  %418 = fmul fast float %417, %264
  %419 = fdiv fast float %402, %418
  %420 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %421 = fmul fast float %420, 2.000000e+00
  %422 = fsub fast float 3.000000e+00, %421
  %423 = fmul fast float %420, %420
  %424 = fmul fast float %423, %422
  %425 = fsub fast float %321, %404
  %426 = fadd fast float %425, %418
  %427 = fdiv fast float %426, %418
  %428 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %429 = fmul fast float %428, 2.000000e+00
  %430 = fsub fast float 3.000000e+00, %429
  %431 = fmul fast float %428, %428
  %432 = fmul fast float %431, %430
  %433 = fsub fast float %424, %432
  %434 = fmul fast float %268, %35
  %435 = fmul fast float %269, %36
  %436 = fmul fast float %270, %37
  %437 = fsub fast float %434, %274
  %438 = fsub fast float %435, %275
  %439 = fsub fast float %436, %276
  %440 = fsub fast float %271, %277
  %441 = fmul fast float %433, %437
  %442 = fmul fast float %433, %438
  %443 = fmul fast float %433, %439
  %444 = fmul fast float %433, %440
  %445 = fadd fast float %441, %274
  %446 = fadd fast float %442, %275
  %447 = fadd fast float %443, %276
  %448 = fadd fast float %444, %277
  %449 = fmul fast float %408, %257
  %450 = call float @dx.op.unary.f32(i32 6, float %449)  ; FAbs(value)
  br label %494

; <label>:451                                     ; preds = %399
  br i1 %282, label %452, label %465

; <label>:452                                     ; preds = %451
  %453 = fdiv fast float 5.000000e+01, %27
  %454 = select i1 %284, float %453, float 1.000000e+00
  %455 = fmul fast float %454, %257
  %456 = fmul fast float %172, 2.000000e+00
  %457 = fmul fast float %173, 2.000000e+00
  %458 = fadd fast float %456, -1.000000e+00
  %459 = fadd fast float %457, -1.000000e+00
  %460 = call float @dx.op.dot2.f32(i32 54, float %458, float %459, float %458, float %459)  ; Dot2(ax,ay,bx,by)
  %461 = fmul fast float %265, %27
  %462 = fmul fast float %461, %460
  %463 = fsub fast float %402, %462
  %464 = fmul fast float %455, %463
  br label %494

; <label>:465                                     ; preds = %451
  br i1 %286, label %486, label %466

; <label>:466                                     ; preds = %465
  %467 = fmul fast float %27, 0x3F947AE140000000
  %468 = select i1 %284, float %467, float 1.000000e+00
  %469 = fdiv fast float 1.000000e+00, %468
  %470 = fmul fast float %468, %258
  %471 = fmul fast float %468, %259
  %472 = fmul fast float %469, %260
  %473 = call float @dx.op.unary.f32(i32 6, float %402)  ; FAbs(value)
  %474 = fcmp fast olt float %473, %470
  br i1 %474, label %475, label %479, !dx.controlflow.hints !63

; <label>:475                                     ; preds = %466
  %476 = fmul fast float %469, %257
  %477 = fmul fast float %476, %473
  %478 = call float @dx.op.unary.f32(i32 6, float %477)  ; FAbs(value)
  br label %494

; <label>:479                                     ; preds = %466
  %480 = fcmp fast ogt float %473, %471
  br i1 %480, label %481, label %494

; <label>:481                                     ; preds = %479
  %482 = fsub fast float %473, %471
  %483 = fmul fast float %472, %482
  %484 = call float @dx.op.unary.f32(i32 6, float %483)  ; FAbs(value)
  %485 = fsub fast float 1.000000e+00, %484
  br label %494

; <label>:486                                     ; preds = %465
  %487 = fdiv fast float 5.000000e+01, %27
  %488 = select i1 %284, float %487, float 1.000000e+00
  %489 = fmul fast float %488, %257
  %490 = call float @dx.op.unary.f32(i32 6, float %233)  ; FAbs(value)
  %491 = select i1 %281, float %490, float 0x47EFFFFFE0000000
  %492 = call float @dx.op.binary.f32(i32 36, float %402, float %491)  ; FMin(a,b)
  %493 = fmul fast float %489, %492
  br label %494

; <label>:494                                     ; preds = %486, %481, %479, %475, %452, %403, %322
  %495 = phi float [ %398, %322 ], [ %450, %403 ], [ %464, %452 ], [ %493, %486 ], [ %478, %475 ], [ %485, %481 ], [ %473, %479 ]
  %496 = phi float [ %393, %322 ], [ %445, %403 ], [ %35, %452 ], [ %35, %486 ], [ %35, %475 ], [ %35, %481 ], [ %35, %479 ]
  %497 = phi float [ %394, %322 ], [ %446, %403 ], [ %36, %452 ], [ %36, %486 ], [ %36, %475 ], [ %36, %481 ], [ %36, %479 ]
  %498 = phi float [ %395, %322 ], [ %447, %403 ], [ %37, %452 ], [ %37, %486 ], [ %37, %475 ], [ %37, %481 ], [ %37, %479 ]
  %499 = phi float [ %396, %322 ], [ %448, %403 ], [ 1.000000e+00, %452 ], [ 1.000000e+00, %486 ], [ 1.000000e+00, %475 ], [ 1.000000e+00, %481 ], [ 1.000000e+00, %479 ]
  %500 = call float @dx.op.unary.f32(i32 7, float %495)  ; Saturate(value)
  %501 = fmul fast float %500, %38
  %502 = fmul fast float %499, %212
  %503 = fmul fast float %502, %500
  br label %504

; <label>:504                                     ; preds = %494, %251
  %505 = phi float [ %496, %494 ], [ %35, %251 ]
  %506 = phi float [ %497, %494 ], [ %36, %251 ]
  %507 = phi float [ %498, %494 ], [ %37, %251 ]
  %508 = phi float [ %503, %494 ], [ %212, %251 ]
  %509 = phi float [ %501, %494 ], [ %38, %251 ]
  %510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.f32 %510, 2
  %512 = fptosi float %42 to i32
  %513 = sitofp i32 %512 to float
  %514 = fadd fast float %511, %513
  %515 = fmul fast float %514, 0x3FE3C6EF40000000
  %516 = frem fast float %47, 2.560000e+02
  %517 = frem fast float %48, 2.560000e+02
  %518 = fptoui float %516 to i32
  %519 = fptoui float %517 to i32
  %520 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %518, i32 %519, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = fadd fast float %521, %515
  %523 = call float @dx.op.unary.f32(i32 22, float %522)  ; Frc(value)
  %524 = and i32 %125, 1
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %583, label %526, !dx.controlflow.hints !64

; <label>:526                                     ; preds = %504
  %527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 2
  %529 = extractvalue %dx.types.ResRet.f32 %527, 3
  %530 = add i32 %122, 16
  %531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = extractvalue %dx.types.ResRet.f32 %531, 1
  %534 = extractvalue %dx.types.ResRet.f32 %531, 2
  %535 = add i32 %122, 32
  %536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = extractvalue %dx.types.ResRet.f32 %536, 1
  %539 = extractvalue %dx.types.ResRet.f32 %536, 2
  %540 = and i32 %125, 2
  %541 = icmp eq i32 %540, 0
  %542 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %543 = call float @dx.op.unary.f32(i32 25, float %542)  ; Rsqrt(value)
  %544 = fmul fast float %543, %30
  %545 = fmul fast float %543, %31
  %546 = fmul fast float %543, %32
  %547 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %548 = call float @dx.op.unary.f32(i32 25, float %547)  ; Rsqrt(value)
  %549 = fmul fast float %548, %82
  %550 = fmul fast float %548, %83
  %551 = fmul fast float %548, %84
  %552 = call float @dx.op.dot3.f32(i32 55, float %549, float %550, float %551, float %544, float %545, float %546)  ; Dot3(ax,ay,az,bx,by,bz)
  %553 = fmul fast float %552, %552
  %554 = fmul fast float %553, %528
  %555 = fadd fast float %554, %529
  %556 = call float @dx.op.unary.f32(i32 7, float %555)  ; Saturate(value)
  br i1 %541, label %557, label %567, !dx.controlflow.hints !65

; <label>:557                                     ; preds = %526
  %558 = extractvalue %dx.types.ResRet.f32 %527, 1
  %559 = extractvalue %dx.types.ResRet.f32 %527, 0
  %560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %561 = extractvalue %dx.types.CBufRet.f32 %560, 3
  %562 = fmul fast float %561, %547
  %563 = fsub fast float %559, %562
  %564 = fmul fast float %563, %558
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  %566 = fmul fast float %565, %556
  br label %567

; <label>:567                                     ; preds = %557, %526
  %568 = phi float [ %566, %557 ], [ %556, %526 ]
  %569 = fsub fast float %532, %537
  %570 = fsub fast float %533, %538
  %571 = fsub fast float %534, %539
  %572 = fmul fast float %568, %569
  %573 = fmul fast float %568, %570
  %574 = fmul fast float %568, %571
  %575 = fadd fast float %572, %537
  %576 = fadd fast float %573, %538
  %577 = fadd fast float %574, %539
  %578 = fmul fast float %575, %505
  %579 = fmul fast float %576, %506
  %580 = fmul fast float %577, %507
  %581 = fmul fast float %568, %508
  %582 = fmul fast float %568, %509
  br label %583

; <label>:583                                     ; preds = %567, %504
  %584 = phi float [ %578, %567 ], [ %505, %504 ]
  %585 = phi float [ %579, %567 ], [ %506, %504 ]
  %586 = phi float [ %580, %567 ], [ %507, %504 ]
  %587 = phi float [ %581, %567 ], [ %508, %504 ]
  %588 = phi float [ %582, %567 ], [ %509, %504 ]
  %589 = add i32 %23, 120
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = add i32 %591, 0
  %593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %592, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %594 = add i32 %23, 24
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %593, %dx.types.Handle %43, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = extractvalue %dx.types.ResRet.f32 %597, 2
  %601 = extractvalue %dx.types.ResRet.f32 %597, 3
  %602 = and i32 %596, 255
  %603 = uitofp i32 %602 to float
  %604 = lshr i32 %596, 8
  %605 = and i32 %604, 255
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %601, %603
  %608 = fadd fast float %607, %606
  %609 = fmul fast float %608, 0x3F70101000000000
  %610 = add i32 %23, 56
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = and i32 %612, 255
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = lshr i32 %612, 8
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = lshr i32 %612, 16
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %625 = extractvalue %dx.types.ResRet.f32 %624, 0
  %626 = extractvalue %dx.types.ResRet.f32 %624, 1
  %627 = extractvalue %dx.types.ResRet.f32 %624, 2
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 1
  %630 = fadd fast float %609, 0xBFB99999A0000000
  %631 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %632 = fmul fast float %631, 0x3FF1C71C80000000
  %633 = fsub fast float 1.000000e+00, %632
  %634 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %635 = fmul fast float %598, %584
  %636 = fmul fast float %615, %615
  %637 = fmul fast float %636, %635
  %638 = fmul fast float %637, %634
  %639 = fmul fast float %599, %585
  %640 = fmul fast float %619, %619
  %641 = fmul fast float %640, %639
  %642 = fmul fast float %641, %634
  %643 = fmul fast float %600, %586
  %644 = fmul fast float %623, %623
  %645 = fmul fast float %644, %643
  %646 = fmul fast float %645, %634
  %647 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  %648 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %649 = call float @dx.op.unary.f32(i32 7, float %646)  ; Saturate(value)
  %650 = call float @dx.op.dot3.f32(i32 55, float %647, float %648, float %649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %651 = add i32 %23, 32
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 255
  %655 = uitofp i32 %654 to float
  %656 = lshr i32 %653, 8
  %657 = and i32 %656, 255
  %658 = uitofp i32 %657 to float
  %659 = fmul fast float %658, %650
  %660 = fadd fast float %659, %655
  %661 = fmul fast float %660, 0x3F70101020000000
  %662 = call float @dx.op.unary.f32(i32 7, float %661)  ; Saturate(value)
  %663 = and i32 %125, 8192
  %664 = icmp eq i32 %663, 0
  %665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %666 = extractvalue %dx.types.CBufRet.f32 %665, 0
  br i1 %664, label %673, label %667, !dx.controlflow.hints !66

; <label>:667                                     ; preds = %583
  %668 = add i32 %122, 176
  %669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = fcmp fast oge float %670, 0.000000e+00
  %672 = select i1 %671, float %670, float %666
  br label %680

; <label>:673                                     ; preds = %583
  %674 = add i32 %23, 104
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = bitcast i32 %676 to float
  %678 = fcmp fast oge float %677, 0.000000e+00
  %679 = select i1 %678, float %677, float %666
  br label %680

; <label>:680                                     ; preds = %673, %667
  %681 = phi float [ %672, %667 ], [ %679, %673 ]
  %682 = fmul fast float %588, %587
  %683 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %215, i32 %216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = lshr i32 %684, 18
  %686 = uitofp i32 %685 to float
  %687 = fmul fast float %686, 0x3F4C00EBA0000000
  %688 = call float @dx.op.unary.f32(i32 21, float %687)  ; Exp(value)
  %689 = fadd fast float %688, -1.000000e+00
  %690 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %691 = extractvalue %dx.types.Dimensions %690, 0
  %692 = sitofp i32 %691 to float
  %693 = extractvalue %dx.types.Dimensions %690, 1
  %694 = sitofp i32 %693 to float
  %695 = fcmp fast oge float %213, %692
  %696 = fcmp fast oge float %214, %694
  %697 = or i1 %695, %696
  %698 = select i1 %697, float 0x4197782600000000, float %689
  %699 = fsub fast float 1.000000e+00, %587
  %700 = call float @dx.op.dot3.f32(i32 55, float %699, float %699, float %699, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %701 = fsub fast float 1.000000e+00, %700
  %702 = fmul fast float %681, %662
  %703 = fsub fast float 1.000000e+00, %682
  %704 = fsub fast float %703, %662
  %705 = call float @dx.op.unary.f32(i32 7, float %704)  ; Saturate(value)
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 3
  %708 = fmul fast float %707, %705
  %709 = fadd fast float %708, %702
  %710 = and i32 %125, 2097152
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %716, label %712, !dx.controlflow.hints !67

; <label>:712                                     ; preds = %680
  %713 = add i32 %122, 192
  %714 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  br label %719

; <label>:716                                     ; preds = %680
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 3
  br label %719

; <label>:719                                     ; preds = %716, %712
  %720 = phi float [ %715, %712 ], [ %718, %716 ]
  %721 = fmul fast float %625, %587
  %722 = fmul fast float %721, %629
  %723 = fmul fast float %722, %647
  %724 = fmul fast float %626, %587
  %725 = fmul fast float %724, %629
  %726 = fmul fast float %725, %648
  %727 = fmul fast float %627, %587
  %728 = fmul fast float %727, %629
  %729 = fmul fast float %728, %649
  %730 = icmp eq i32 %121, 3
  %731 = fcmp fast ogt float %42, %698
  %732 = and i1 %239, %731
  %733 = or i1 %730, %732
  %734 = icmp eq i32 %121, 2
  %735 = fcmp fast ole float %42, %698
  %736 = and i1 %734, %735
  %737 = or i1 %736, %733
  br i1 %732, label %738, label %844

; <label>:738                                     ; preds = %719
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 2
  %741 = extractvalue %dx.types.CBufRet.f32 %739, 3
  %742 = fmul fast float %740, %47
  %743 = fmul fast float %741, %48
  %744 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  %745 = call float @dx.op.unary.f32(i32 7, float %743)  ; Saturate(value)
  %746 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %744, float %745, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  %750 = extractvalue %dx.types.ResRet.f32 %746, 3
  %751 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %744, float %745, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  %753 = extractvalue %dx.types.ResRet.f32 %751, 1
  %754 = extractvalue %dx.types.ResRet.f32 %751, 2
  %755 = extractvalue %dx.types.ResRet.f32 %751, 3
  %756 = call float @dx.op.binary.f32(i32 35, float %748, float %749)  ; FMax(a,b)
  %757 = call float @dx.op.binary.f32(i32 35, float %747, float %756)  ; FMax(a,b)
  %758 = call float @dx.op.binary.f32(i32 35, float %757, float %750)  ; FMax(a,b)
  %759 = call float @dx.op.binary.f32(i32 36, float %753, float %754)  ; FMin(a,b)
  %760 = call float @dx.op.binary.f32(i32 36, float %752, float %759)  ; FMin(a,b)
  %761 = call float @dx.op.binary.f32(i32 36, float %760, float %755)  ; FMin(a,b)
  %762 = fmul fast float %758, 2.550000e+02
  %763 = fadd fast float %762, 0x3F70101020000000
  %764 = fptoui float %763 to i32
  %765 = fmul fast float %761, 2.550000e+02
  %766 = fadd fast float %765, 0x3F70101020000000
  %767 = fptoui float %766 to i32
  %768 = icmp ult i32 %764, %767
  br i1 %768, label %769, label %820

; <label>:769                                     ; preds = %738
  %770 = fcmp fast ogt float %41, 9.843750e-01
  %771 = fadd fast float %42, -4.000000e+00
  %772 = select i1 %770, float -4.000000e+00, float %771
  %773 = call float @dx.op.binary.f32(i32 35, float %772, float 0.000000e+00)  ; FMax(a,b)
  %774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.f32 %774, 0
  %776 = fadd fast float %775, %773
  %777 = extractvalue %dx.types.CBufRet.f32 %774, 2
  %778 = fmul fast float %776, %777
  %779 = call float @dx.op.unary.f32(i32 23, float %778)  ; Log(value)
  %780 = extractvalue %dx.types.CBufRet.f32 %774, 3
  %781 = fmul fast float %780, %779
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 2
  %784 = fmul fast float %781, %783
  %785 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %786 = uitofp i32 %764 to float
  %787 = uitofp i32 %767 to float
  %788 = fadd fast float %786, 5.000000e-01
  %789 = fadd fast float %787, 5.000000e-01
  %790 = fmul fast float %783, %788
  %791 = fmul fast float %783, %789
  %792 = fadd fast float %790, 0x3F0FFB4800000000
  %793 = fadd fast float %791, 0xBF0FFB4800000000
  %794 = call float @dx.op.binary.f32(i32 35, float %785, float %792)  ; FMax(a,b)
  %795 = call float @dx.op.binary.f32(i32 36, float %794, float %793)  ; FMin(a,b)
  %796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %797 = extractvalue %dx.types.CBufRet.f32 %796, 1
  %798 = extractvalue %dx.types.CBufRet.f32 %796, 2
  %799 = extractvalue %dx.types.CBufRet.f32 %796, 0
  %800 = fmul fast float %797, %795
  %801 = fadd fast float %799, %800
  %802 = fadd fast float %799, %798
  %803 = fsub fast float %797, %798
  %804 = fadd fast float %803, %799
  %805 = call float @dx.op.binary.f32(i32 35, float %801, float %802)  ; FMax(a,b)
  %806 = call float @dx.op.binary.f32(i32 36, float %805, float %804)  ; FMin(a,b)
  %807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %744, float %745, float %806, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %808 = extractvalue %dx.types.ResRet.f32 %807, 0
  %809 = extractvalue %dx.types.ResRet.f32 %807, 1
  %810 = extractvalue %dx.types.ResRet.f32 %807, 2
  %811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %744, float %745, float %806, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %812 = extractvalue %dx.types.ResRet.f32 %811, 0
  %813 = extractvalue %dx.types.ResRet.f32 %811, 1
  %814 = extractvalue %dx.types.ResRet.f32 %811, 2
  %815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %816 = extractvalue %dx.types.CBufRet.f32 %815, 1
  %817 = fmul fast float %816, %812
  %818 = fmul fast float %816, %813
  %819 = fmul fast float %816, %814
  br label %820

; <label>:820                                     ; preds = %769, %738
  %821 = phi float [ %808, %769 ], [ 1.000000e+00, %738 ]
  %822 = phi float [ %809, %769 ], [ 1.000000e+00, %738 ]
  %823 = phi float [ %810, %769 ], [ 1.000000e+00, %738 ]
  %824 = phi float [ %817, %769 ], [ 0.000000e+00, %738 ]
  %825 = phi float [ %818, %769 ], [ 0.000000e+00, %738 ]
  %826 = phi float [ %819, %769 ], [ 0.000000e+00, %738 ]
  %827 = fmul fast float %824, %701
  %828 = fmul fast float %825, %701
  %829 = fmul fast float %826, %701
  %830 = call float @dx.op.dot3.f32(i32 55, float %821, float %822, float %823, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = call float @dx.op.dot3.f32(i32 55, float %827, float %828, float %829, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %832 = select i1 %105, float %830, float %821
  %833 = select i1 %105, float %830, float %822
  %834 = select i1 %105, float 1.000000e+00, float %823
  %835 = select i1 %105, float %831, float %827
  %836 = select i1 %105, float 0.000000e+00, float %828
  %837 = select i1 %105, float 0.000000e+00, float %829
  %838 = fmul fast float %832, %723
  %839 = fmul fast float %833, %726
  %840 = fmul fast float %834, %729
  %841 = fadd fast float %838, %835
  %842 = fadd fast float %839, %836
  %843 = fadd fast float %837, %840
  br label %844

; <label>:844                                     ; preds = %820, %719
  %845 = phi float [ %698, %820 ], [ %42, %719 ]
  %846 = phi float [ %841, %820 ], [ %723, %719 ]
  %847 = phi float [ %842, %820 ], [ %726, %719 ]
  %848 = phi float [ %843, %820 ], [ %729, %719 ]
  %849 = phi float [ %821, %820 ], [ 1.000000e+00, %719 ]
  br i1 %737, label %1145, label %850

; <label>:850                                     ; preds = %844
  %851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %852 = extractvalue %dx.types.ResRet.f32 %851, 0
  %853 = extractvalue %dx.types.ResRet.f32 %851, 1
  %854 = extractvalue %dx.types.ResRet.f32 %851, 2
  %855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = extractvalue %dx.types.ResRet.f32 %855, 2
  %859 = fmul fast float %852, %701
  %860 = fmul fast float %853, %701
  %861 = fmul fast float %854, %701
  %862 = fmul fast float %856, %849
  %863 = call float @dx.op.dot3.f32(i32 55, float %856, float %857, float %858, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %864 = call float @dx.op.dot3.f32(i32 55, float %859, float %860, float %861, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %865 = select i1 %105, float %863, float %856
  %866 = select i1 %105, float %863, float %857
  %867 = select i1 %105, float 1.000000e+00, float %858
  %868 = select i1 %105, float %864, float %859
  %869 = select i1 %105, float 0.000000e+00, float %860
  %870 = select i1 %105, float 0.000000e+00, float %861
  %871 = fmul fast float %865, %846
  %872 = fmul fast float %866, %847
  %873 = fmul fast float %867, %848
  %874 = fadd fast float %871, %868
  %875 = fadd fast float %872, %869
  %876 = fadd fast float %873, %870
  %877 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.i32 %877, 0
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %1145, label %880, !dx.controlflow.hints !68

; <label>:880                                     ; preds = %850
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 2
  %883 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %884 = fmul fast float %882, %47
  %885 = fmul fast float %883, %48
  %886 = fmul fast float %884, 2.000000e+00
  %887 = fmul fast float %885, 2.000000e+00
  %888 = fsub fast float 1.000000e+00, %886
  %889 = fsub fast float 1.000000e+00, %887
  %890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.f32 %890, 0
  %892 = extractvalue %dx.types.CBufRet.f32 %890, 1
  %893 = extractvalue %dx.types.CBufRet.f32 %890, 2
  %894 = fmul fast float %888, %891
  %895 = fmul fast float %888, %892
  %896 = fmul fast float %888, %893
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 0
  %899 = extractvalue %dx.types.CBufRet.f32 %897, 1
  %900 = extractvalue %dx.types.CBufRet.f32 %897, 2
  %901 = fmul fast float %889, %898
  %902 = fmul fast float %889, %899
  %903 = fmul fast float %889, %900
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %906 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %907 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %908 = fadd fast float %901, %905
  %909 = fadd fast float %908, %894
  %910 = fadd fast float %902, %906
  %911 = fadd fast float %910, %895
  %912 = fadd fast float %903, %907
  %913 = fadd fast float %912, %896
  %914 = fmul fast float %909, %845
  %915 = fmul fast float %911, %845
  %916 = fmul fast float %913, %845
  %917 = fmul fast float %914, %914
  %918 = fmul fast float %915, %915
  %919 = fadd fast float %917, %918
  %920 = fmul fast float %916, %916
  %921 = fadd fast float %919, %920
  %922 = call float @dx.op.unary.f32(i32 24, float %921)  ; Sqrt(value)
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = fsub fast float %922, %924
  %926 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %927 = fmul fast float %925, %926
  %928 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %929 = fadd fast float %928, -5.000000e-01
  %930 = fmul fast float %929, 2.000000e+00
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %933 = call float @dx.op.binary.f32(i32 36, float %932, float %930)  ; FMin(a,b)
  %934 = fsub fast float -0.000000e+00, %932
  %935 = fcmp fast ogt float %933, %934
  br i1 %935, label %936, label %1145, !dx.controlflow.hints !69

; <label>:936                                     ; preds = %880
  %937 = fmul fast float %933, 5.000000e-01
  %938 = fadd fast float %937, 5.000000e-01
  %939 = call float @dx.op.unary.f32(i32 22, float %938)  ; Frc(value)
  %940 = call float @dx.op.unary.f32(i32 27, float %939)  ; Round_ni(value)
  %941 = call float @dx.op.unary.f32(i32 22, float %939)  ; Frc(value)
  %942 = fmul fast float %941, 2.000000e+00
  %943 = fadd fast float %942, -1.000000e+00
  %944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %884, float %885, float %940, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %945 = extractvalue %dx.types.ResRet.f32 %944, 0
  %946 = extractvalue %dx.types.ResRet.f32 %944, 1
  %947 = extractvalue %dx.types.ResRet.f32 %944, 2
  %948 = extractvalue %dx.types.ResRet.f32 %944, 3
  %949 = fadd fast float %945, -5.000000e-01
  %950 = fadd fast float %947, -5.000000e-01
  %951 = fmul fast float %949, 0xBFD5555560000000
  %952 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %950, float %951)  ; FMad(a,b,c)
  %953 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %946, float 0.000000e+00)  ; FMad(a,b,c)
  %954 = fadd fast float %953, %948
  %955 = fmul fast float %949, -7.500000e-01
  %956 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %950, float %955)  ; FMad(a,b,c)
  %957 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %946, float 0.000000e+00)  ; FMad(a,b,c)
  %958 = fadd fast float %957, %948
  %959 = call float @dx.op.binary.f32(i32 35, float %952, float -1.000000e+00)  ; FMax(a,b)
  %960 = call float @dx.op.binary.f32(i32 35, float %954, float -1.000000e+00)  ; FMax(a,b)
  %961 = call float @dx.op.binary.f32(i32 35, float %956, float -1.000000e+00)  ; FMax(a,b)
  %962 = call float @dx.op.binary.f32(i32 35, float %958, float -1.000000e+00)  ; FMax(a,b)
  %963 = call float @dx.op.binary.f32(i32 36, float %959, float 1.000000e+00)  ; FMin(a,b)
  %964 = call float @dx.op.binary.f32(i32 36, float %960, float 1.000000e+00)  ; FMin(a,b)
  %965 = call float @dx.op.binary.f32(i32 36, float %961, float 1.000000e+00)  ; FMin(a,b)
  %966 = call float @dx.op.binary.f32(i32 36, float %962, float 1.000000e+00)  ; FMin(a,b)
  %967 = fcmp fast olt float %963, 0x3FEFFF8020000000
  br i1 %967, label %968, label %1083, !dx.controlflow.hints !70

; <label>:968                                     ; preds = %936
  %969 = extractvalue %dx.types.CBufRet.f32 %931, 3
  %970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.f32 %970, 0
  %972 = extractvalue %dx.types.CBufRet.f32 %970, 1
  %973 = extractvalue %dx.types.CBufRet.f32 %970, 2
  %974 = extractvalue %dx.types.CBufRet.f32 %970, 3
  %975 = fsub fast float %971, %963
  %976 = fsub fast float %972, %964
  %977 = fsub fast float %973, %965
  %978 = fsub fast float %974, %966
  %979 = fmul fast float %975, %969
  %980 = fmul fast float %976, %969
  %981 = fmul fast float %977, %969
  %982 = fmul fast float %978, %969
  %983 = fadd fast float %979, %963
  %984 = fadd fast float %980, %964
  %985 = fsub fast float -0.000000e+00, %984
  %986 = fadd fast float %981, %965
  %987 = fadd fast float %982, %966
  %988 = fmul fast float %983, %983
  %989 = fsub fast float %984, %988
  %990 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %989)  ; FMax(a,b)
  %991 = fdiv fast float 1.000000e+00, %990
  %992 = fmul fast float %984, %983
  %993 = fsub fast float %986, %992
  %994 = fsub fast float %943, %983
  %995 = fmul fast float %943, %943
  %996 = fsub fast float %995, %984
  %997 = fmul fast float %994, %991
  %998 = fmul fast float %997, %993
  %999 = fsub fast float %996, %998
  %1000 = fmul fast float %984, %984
  %1001 = fsub fast float %987, %1000
  %1002 = fmul fast float %993, %993
  %1003 = fmul fast float %1002, %991
  %1004 = fsub fast float %1001, %1003
  %1005 = fdiv fast float %999, %1004
  %1006 = fmul fast float %993, %1005
  %1007 = fsub fast float %994, %1006
  %1008 = fmul fast float %1007, %991
  %1009 = fmul fast float %1008, %983
  %1010 = fsub fast float 1.000000e+00, %1009
  %1011 = fmul fast float %984, %1005
  %1012 = fsub fast float %1010, %1011
  %1013 = fmul fast float %1008, %1008
  %1014 = fmul fast float %1005, 4.000000e+00
  %1015 = fmul fast float %1014, %1012
  %1016 = fsub fast float %1013, %1015
  %1017 = call float @dx.op.unary.f32(i32 24, float %1016)  ; Sqrt(value)
  %1018 = fcmp fast oge float %1008, 0.000000e+00
  %1019 = fsub fast float -0.000000e+00, %1017
  %1020 = select i1 %1018, float %1019, float %1017
  %1021 = fsub fast float %1020, %1008
  %1022 = fdiv fast float %1021, %1005
  %1023 = fdiv fast float %1012, %1021
  %1024 = fmul fast float %1022, 5.000000e-01
  %1025 = fmul fast float %1023, 2.000000e+00
  %1026 = select i1 %1018, float %1024, float %1025
  %1027 = select i1 %1018, float %1025, float %1024
  %1028 = call float @dx.op.binary.f32(i32 35, float %1026, float %1027)  ; FMax(a,b)
  %1029 = call float @dx.op.binary.f32(i32 36, float %1026, float %1027)  ; FMin(a,b)
  %1030 = fcmp fast ogt float %943, %1029
  br i1 %1030, label %1031, label %1041

; <label>:1031                                    ; preds = %968
  %1032 = fsub fast float %943, %1029
  %1033 = fsub fast float %1028, %1029
  %1034 = fmul fast float %1032, %1033
  %1035 = fmul fast float %1028, %943
  %1036 = fadd fast float %1028, %943
  %1037 = fmul fast float %1036, %983
  %1038 = fadd fast float %1035, %984
  %1039 = fsub fast float %1038, %1037
  %1040 = fdiv fast float %1039, %1034
  br label %1041

; <label>:1041                                    ; preds = %1031, %968
  %1042 = phi float [ %1040, %1031 ], [ 0.000000e+00, %968 ]
  %1043 = fcmp fast ogt float %943, %1028
  %1044 = fsub fast float %943, %1028
  br i1 %1043, label %1045, label %1055

; <label>:1045                                    ; preds = %1041
  %1046 = fsub fast float %1028, %1029
  %1047 = fmul fast float %1046, %1044
  %1048 = fmul fast float %1029, %943
  %1049 = fadd fast float %1029, %943
  %1050 = fmul fast float %1049, %983
  %1051 = fsub fast float %985, %1048
  %1052 = fadd fast float %1051, %1050
  %1053 = fdiv fast float %1052, %1047
  %1054 = fadd fast float %1053, %1042
  br label %1055

; <label>:1055                                    ; preds = %1045, %1041
  %1056 = phi float [ %1054, %1045 ], [ %1042, %1041 ]
  %1057 = fsub fast float %943, %1029
  %1058 = fmul fast float %1057, %1044
  %1059 = fmul fast float %1029, %1028
  %1060 = fadd fast float %1029, %1028
  %1061 = fmul fast float %1060, %983
  %1062 = fadd fast float %1059, %984
  %1063 = fsub fast float %1062, %1061
  %1064 = fdiv fast float %1063, %1058
  %1065 = call float @dx.op.unary.f32(i32 7, float %1056)  ; Saturate(value)
  %1066 = fcmp fast oeq float %720, 0.000000e+00
  %1067 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %1068 = fcmp fast oeq float %1067, 0.000000e+00
  %1069 = or i1 %1066, %1068
  %1070 = fmul fast float %1067, 2.000000e+00
  %1071 = fadd fast float %932, %933
  %1072 = fdiv fast float %1071, %1070
  %1073 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  %1074 = fmul fast float %1073, 2.000000e+00
  %1075 = fsub fast float 3.000000e+00, %1074
  %1076 = fmul fast float %1073, %1073
  %1077 = fmul fast float %1076, %1075
  %1078 = select i1 %1069, float 1.000000e+00, float %1077
  %1079 = fmul fast float %1064, %720
  %1080 = fadd fast float %1065, %1079
  %1081 = call float @dx.op.unary.f32(i32 7, float %1080)  ; Saturate(value)
  %1082 = fmul fast float %1078, %1081
  br label %1083

; <label>:1083                                    ; preds = %1055, %936
  %1084 = phi float [ %1082, %1055 ], [ 0.000000e+00, %936 ]
  %1085 = fsub fast float 1.000000e+00, %1084
  %1086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %884, float %885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.i32 %1088, 2
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1096, label %1091

; <label>:1091                                    ; preds = %1083
  %1092 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  %1093 = fadd fast float %1087, -1.000000e+00
  %1094 = fmul fast float %1092, %1093
  %1095 = fadd fast float %1094, 1.000000e+00
  br label %1096

; <label>:1096                                    ; preds = %1091, %1083
  %1097 = phi float [ %1095, %1091 ], [ %1085, %1083 ]
  %1098 = call float @dx.op.binary.f32(i32 35, float %1087, float %1097)  ; FMax(a,b)
  %1099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.i32 %1099, 2
  %1101 = and i32 %1100, 1
  %1102 = icmp eq i32 %1101, 0
  %1103 = fcmp fast une float %1098, 1.000000e+00
  %1104 = and i1 %1103, %1102
  br i1 %1104, label %1105, label %1124

; <label>:1105                                    ; preds = %1096
  %1106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %884, float %885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.ResRet.f32 %1106, 1
  %1109 = extractvalue %dx.types.ResRet.f32 %1106, 2
  %1110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1110, 1
  %1112 = fmul fast float %1111, %1107
  %1113 = fmul fast float %1111, %1108
  %1114 = fmul fast float %1111, %1109
  %1115 = fcmp fast ogt float %1087, 0x3FEFFF2E40000000
  %1116 = fsub fast float 1.000000e+00, %1098
  %1117 = fsub fast float 1.000000e+00, %1087
  %1118 = fdiv fast float %1116, %1117
  %1119 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1120 = select i1 %1115, float 0.000000e+00, float %1119
  %1121 = fmul fast float %1112, %1120
  %1122 = fmul fast float %1113, %1120
  %1123 = fmul fast float %1114, %1120
  br label %1124

; <label>:1124                                    ; preds = %1105, %1096
  %1125 = phi float [ 0.000000e+00, %1096 ], [ %1121, %1105 ]
  %1126 = phi float [ 0.000000e+00, %1096 ], [ %1122, %1105 ]
  %1127 = phi float [ 0.000000e+00, %1096 ], [ %1123, %1105 ]
  %1128 = fmul fast float %1125, %701
  %1129 = fmul fast float %1126, %701
  %1130 = fmul fast float %1127, %701
  %1131 = fmul fast float %1098, %862
  %1132 = call float @dx.op.dot3.f32(i32 55, float %1098, float %1098, float %1098, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1133 = call float @dx.op.dot3.f32(i32 55, float %1128, float %1129, float %1130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1134 = select i1 %105, float %1132, float %1098
  %1135 = select i1 %105, float 1.000000e+00, float %1098
  %1136 = select i1 %105, float %1133, float %1128
  %1137 = select i1 %105, float 0.000000e+00, float %1129
  %1138 = select i1 %105, float 0.000000e+00, float %1130
  %1139 = fmul fast float %1134, %874
  %1140 = fmul fast float %1134, %875
  %1141 = fmul fast float %1135, %876
  %1142 = fadd fast float %1139, %1136
  %1143 = fadd fast float %1140, %1137
  %1144 = fadd fast float %1138, %1141
  br label %1145

; <label>:1145                                    ; preds = %1124, %880, %850, %844
  %1146 = phi float [ %846, %844 ], [ %874, %850 ], [ %1142, %1124 ], [ %874, %880 ]
  %1147 = phi float [ %847, %844 ], [ %875, %850 ], [ %1143, %1124 ], [ %875, %880 ]
  %1148 = phi float [ %848, %844 ], [ %876, %850 ], [ %1144, %1124 ], [ %876, %880 ]
  %1149 = phi float [ %849, %844 ], [ %862, %850 ], [ %1131, %1124 ], [ %862, %880 ]
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 2
  %1152 = extractvalue %dx.types.CBufRet.f32 %1150, 3
  %1153 = fmul fast float %1151, %47
  %1154 = fmul fast float %1152, %48
  %1155 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  %1156 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  %1157 = select i1 %737, i32 2, i32 0
  %1158 = or i32 %1157, 1
  %1159 = uitofp i32 %1158 to float
  %1160 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1155, float %1156, float %1159, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = extractvalue %dx.types.ResRet.f32 %1160, 1
  %1163 = extractvalue %dx.types.ResRet.f32 %1160, 2
  %1164 = extractvalue %dx.types.ResRet.f32 %1160, 3
  %1165 = add nuw nsw i32 %1157, 2
  %1166 = uitofp i32 %1165 to float
  %1167 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1155, float %1156, float %1166, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = extractvalue %dx.types.ResRet.f32 %1167, 1
  %1170 = extractvalue %dx.types.ResRet.f32 %1167, 2
  %1171 = extractvalue %dx.types.ResRet.f32 %1167, 3
  %1172 = call float @dx.op.binary.f32(i32 35, float %1162, float %1163)  ; FMax(a,b)
  %1173 = call float @dx.op.binary.f32(i32 35, float %1161, float %1172)  ; FMax(a,b)
  %1174 = call float @dx.op.binary.f32(i32 35, float %1173, float %1164)  ; FMax(a,b)
  %1175 = call float @dx.op.binary.f32(i32 36, float %1169, float %1170)  ; FMin(a,b)
  %1176 = call float @dx.op.binary.f32(i32 36, float %1168, float %1175)  ; FMin(a,b)
  %1177 = call float @dx.op.binary.f32(i32 36, float %1176, float %1171)  ; FMin(a,b)
  %1178 = fmul fast float %1174, 2.550000e+02
  %1179 = fadd fast float %1178, 0x3F70101020000000
  %1180 = fptoui float %1179 to i32
  %1181 = fmul fast float %1177, 2.550000e+02
  %1182 = fadd fast float %1181, 0x3F70101020000000
  %1183 = fptoui float %1182 to i32
  %1184 = icmp ult i32 %1180, %1183
  br i1 %1184, label %1185, label %1237

; <label>:1185                                    ; preds = %1145
  %1186 = fcmp fast ogt float %41, 9.843750e-01
  %1187 = fadd fast float %845, -4.000000e+00
  %1188 = select i1 %1186, float -4.000000e+00, float %1187
  %1189 = call float @dx.op.binary.f32(i32 35, float %1188, float 0.000000e+00)  ; FMax(a,b)
  %1190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1191 = extractvalue %dx.types.CBufRet.f32 %1190, 0
  %1192 = fadd fast float %1191, %1189
  %1193 = extractvalue %dx.types.CBufRet.f32 %1190, 2
  %1194 = fmul fast float %1192, %1193
  %1195 = call float @dx.op.unary.f32(i32 23, float %1194)  ; Log(value)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1190, 3
  %1197 = fmul fast float %1196, %1195
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 2
  %1200 = fmul fast float %1197, %1199
  %1201 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1202 = uitofp i32 %1180 to float
  %1203 = uitofp i32 %1183 to float
  %1204 = fadd fast float %1202, 5.000000e-01
  %1205 = fadd fast float %1203, 5.000000e-01
  %1206 = fmul fast float %1199, %1204
  %1207 = fmul fast float %1199, %1205
  %1208 = fadd fast float %1206, 0x3F0FFB4800000000
  %1209 = fadd fast float %1207, 0xBF0FFB4800000000
  %1210 = call float @dx.op.binary.f32(i32 35, float %1201, float %1208)  ; FMax(a,b)
  %1211 = call float @dx.op.binary.f32(i32 36, float %1210, float %1209)  ; FMin(a,b)
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 1
  %1214 = extractvalue %dx.types.CBufRet.f32 %1212, 2
  %1215 = extractvalue %dx.types.CBufRet.f32 %1212, 0
  %1216 = select i1 %737, float %1215, float 0.000000e+00
  %1217 = fmul fast float %1213, %1211
  %1218 = fadd fast float %1216, %1217
  %1219 = fadd fast float %1216, %1214
  %1220 = fsub fast float %1213, %1214
  %1221 = fadd fast float %1220, %1216
  %1222 = call float @dx.op.binary.f32(i32 35, float %1218, float %1219)  ; FMax(a,b)
  %1223 = call float @dx.op.binary.f32(i32 36, float %1222, float %1221)  ; FMin(a,b)
  %1224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1155, float %1156, float %1223, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.ResRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.ResRet.f32 %1224, 2
  %1228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1155, float %1156, float %1223, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = extractvalue %dx.types.ResRet.f32 %1228, 1
  %1231 = extractvalue %dx.types.ResRet.f32 %1228, 2
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 1
  %1234 = fmul fast float %1233, %1229
  %1235 = fmul fast float %1233, %1230
  %1236 = fmul fast float %1233, %1231
  br label %1237

; <label>:1237                                    ; preds = %1185, %1145
  %1238 = phi float [ %1225, %1185 ], [ 1.000000e+00, %1145 ]
  %1239 = phi float [ %1226, %1185 ], [ 1.000000e+00, %1145 ]
  %1240 = phi float [ %1227, %1185 ], [ 1.000000e+00, %1145 ]
  %1241 = phi float [ %1234, %1185 ], [ 0.000000e+00, %1145 ]
  %1242 = phi float [ %1235, %1185 ], [ 0.000000e+00, %1145 ]
  %1243 = phi float [ %1236, %1185 ], [ 0.000000e+00, %1145 ]
  %1244 = fmul fast float %1241, %701
  %1245 = fmul fast float %1242, %701
  %1246 = fmul fast float %1243, %701
  %1247 = fmul fast float %1238, %1149
  %1248 = call float @dx.op.dot3.f32(i32 55, float %1238, float %1239, float %1240, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1249 = call float @dx.op.dot3.f32(i32 55, float %1244, float %1245, float %1246, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1250 = select i1 %105, float %1248, float %1238
  %1251 = select i1 %105, float %1248, float %1239
  %1252 = select i1 %105, float 1.000000e+00, float %1240
  %1253 = select i1 %105, float %1249, float %1244
  %1254 = select i1 %105, float 0.000000e+00, float %1245
  %1255 = select i1 %105, float 0.000000e+00, float %1246
  %1256 = fmul fast float %1250, %1146
  %1257 = fmul fast float %1251, %1147
  %1258 = fmul fast float %1252, %1148
  %1259 = fadd fast float %1256, %1253
  %1260 = fadd fast float %1257, %1254
  %1261 = fadd fast float %1255, %1258
  %1262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.i32 %1262, 3
  %1264 = and i32 %1263, 3
  %1265 = icmp ne i32 %1264, 0
  %1266 = and i32 %1263, 4
  %1267 = icmp ne i32 %1266, 0
  %1268 = and i1 %1265, %1267
  %1269 = and i1 %105, %1268
  br i1 %1269, label %1270, label %1276

; <label>:1270                                    ; preds = %1237
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1273 = fadd fast float %1247, -1.000000e+00
  %1274 = fmul fast float %1272, %1273
  %1275 = fadd fast float %1274, 1.000000e+00
  br label %1276

; <label>:1276                                    ; preds = %1270, %1237
  %1277 = phi float [ %1275, %1270 ], [ %1247, %1237 ]
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  br i1 %105, label %1280, label %1302

; <label>:1280                                    ; preds = %1276
  %1281 = fadd fast float %1259, %1260
  %1282 = fmul fast float %1279, %1281
  %1283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1284 = extractvalue %dx.types.CBufRet.f32 %1283, 3
  %1285 = extractvalue %dx.types.CBufRet.f32 %706, 1
  %1286 = fsub fast float %709, %1285
  %1287 = extractvalue %dx.types.CBufRet.f32 %706, 2
  %1288 = fmul fast float %1286, %1287
  %1289 = call float @dx.op.unary.f32(i32 7, float %1288)  ; Saturate(value)
  %1290 = fsub fast float %1289, %1284
  %1291 = fmul fast float %1290, %1277
  %1292 = fadd fast float %1291, %1284
  %1293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1293, 0
  %1295 = fsub fast float %1292, %1294
  %1296 = fmul fast float %1295, 1.000000e+01
  %1297 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1298 = fsub fast float %682, %701
  %1299 = fmul fast float %1297, %1298
  %1300 = fadd fast float %1299, %701
  %1301 = fmul fast float %1300, %1292
  br label %1311

; <label>:1302                                    ; preds = %1276
  %1303 = fmul fast float %1279, %1259
  %1304 = fmul fast float %1279, %1260
  %1305 = fmul fast float %1279, %1261
  %1306 = call float @dx.op.binary.f32(i32 35, float %1304, float %1305)  ; FMax(a,b)
  %1307 = call float @dx.op.binary.f32(i32 35, float %1303, float %1306)  ; FMax(a,b)
  %1308 = call float @dx.op.binary.f32(i32 35, float %1307, float %701)  ; FMax(a,b)
  %1309 = fcmp fast ugt float %1308, 0x3F10000000000000
  br i1 %1309, label %1311, label %1310

; <label>:1310                                    ; preds = %1302
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1311

; <label>:1311                                    ; preds = %1310, %1302, %1280
  %1312 = phi float [ %1282, %1280 ], [ %1303, %1310 ], [ %1303, %1302 ]
  %1313 = phi float [ %1301, %1280 ], [ %1304, %1310 ], [ %1304, %1302 ]
  %1314 = phi float [ %1300, %1280 ], [ %1305, %1310 ], [ %1305, %1302 ]
  %1315 = phi float [ %1300, %1280 ], [ %701, %1310 ], [ %701, %1302 ]
  %1316 = fadd fast float %523, 0x3FE3C6EF40000000
  %1317 = call float @dx.op.unary.f32(i32 22, float %1316)  ; Frc(value)
  %1318 = call float @dx.op.unary.f32(i32 23, float %1312)  ; Log(value)
  %1319 = fadd fast float %1318, -7.000000e+00
  %1320 = call float @dx.op.unary.f32(i32 21, float %1319)  ; Exp(value)
  %1321 = fmul fast float %1317, 2.000000e+00
  %1322 = fadd fast float %1321, -1.000000e+00
  %1323 = fmul fast float %1320, %1322
  %1324 = fcmp fast ogt float %1312, 0.000000e+00
  %1325 = select i1 %1324, float %1323, float 0.000000e+00
  %1326 = fadd fast float %1325, %1312
  %1327 = fadd fast float %523, 0x3FF3C6EF40000000
  %1328 = call float @dx.op.unary.f32(i32 22, float %1327)  ; Frc(value)
  %1329 = call float @dx.op.unary.f32(i32 23, float %1313)  ; Log(value)
  %1330 = fadd fast float %1329, -7.000000e+00
  %1331 = call float @dx.op.unary.f32(i32 21, float %1330)  ; Exp(value)
  %1332 = fmul fast float %1328, 2.000000e+00
  %1333 = fadd fast float %1332, -1.000000e+00
  %1334 = fmul fast float %1331, %1333
  %1335 = fcmp fast ogt float %1313, 0.000000e+00
  %1336 = select i1 %1335, float %1334, float 0.000000e+00
  %1337 = fadd fast float %1336, %1313
  %1338 = fadd fast float %523, 0x3FFDAA66E0000000
  %1339 = call float @dx.op.unary.f32(i32 22, float %1338)  ; Frc(value)
  %1340 = call float @dx.op.unary.f32(i32 23, float %1314)  ; Log(value)
  %1341 = fadd fast float %1340, -6.000000e+00
  %1342 = call float @dx.op.unary.f32(i32 21, float %1341)  ; Exp(value)
  %1343 = fmul fast float %1339, 2.000000e+00
  %1344 = fadd fast float %1343, -1.000000e+00
  %1345 = fmul fast float %1342, %1344
  %1346 = fcmp fast ogt float %1314, 0.000000e+00
  %1347 = select i1 %1346, float %1345, float 0.000000e+00
  %1348 = fadd fast float %1347, %1314
  %1349 = select i1 %105, float %1313, float %1337
  %1350 = select i1 %105, float %1314, float %1348
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1351 = call float @dx.op.binary.f32(i32 36, float %1326, float 3.225500e+04)  ; FMin(a,b)
  %1352 = call float @dx.op.binary.f32(i32 36, float %1349, float 3.225500e+04)  ; FMin(a,b)
  %1353 = call float @dx.op.binary.f32(i32 36, float %1350, float 3.225500e+04)  ; FMin(a,b)
  %1354 = call float @dx.op.binary.f32(i32 36, float %1315, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1351)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1352)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1353)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1354)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1315)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1315)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1315)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1315)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!34 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!35 = !{void ()* @ps_main, !"ps_main", !36, !4, !59}
!36 = !{!37, !55, null}
!37 = !{!38, !41, !42, !44, !47, !49, !51, !52, !54}
!38 = !{i32 0, !"SV_Position", i8 9, i8 3, !39, i8 4, i32 1, i8 4, i32 0, i8 0, !40}
!39 = !{i32 0}
!40 = !{i32 3, i32 15}
!41 = !{i32 1, !"COLOR", i8 9, i8 0, !39, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !39, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 3, i8 0, !46}
!45 = !{i32 3}
!46 = !{i32 3, i32 7}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 3, i32 1, i8 2, i32 4, i8 0, !43}
!48 = !{i32 5}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 5, i8 0, null}
!50 = !{i32 8}
!51 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !39, i8 1, i32 1, i8 4, i32 6, i8 0, !40}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 7, i8 0, !53}
!53 = !{i32 3, i32 5}
!54 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !39, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56, !57}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !39, i8 0, i32 1, i8 4, i32 0, i8 0, !40}
!57 = !{i32 1, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 1, i8 0, !40}
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

