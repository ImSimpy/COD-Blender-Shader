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
; shader hash: 39c007ed5e7d913abd7f342a604d0a1b
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
  %164 = and i32 %125, 16
  %165 = icmp ne i32 %164, 0
  %166 = select i1 %165, float 1.000000e+00, float %38
  %167 = add i32 %23, 76
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = add i32 %169, 0
  %171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %174 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %171, %dx.types.Handle %44, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float %173, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = fmul fast float %175, %166
  %177 = icmp eq i32 %164, 0
  br i1 %177, label %197, label %178, !dx.controlflow.hints !60

; <label>:178                                     ; preds = %161
  %179 = add i32 %122, 64
  %180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = fadd fast float %181, 1.000000e+00
  %183 = fmul fast float %182, %38
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
  %207 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = lshr i32 %208, 18
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F4C00EBA0000000
  %212 = call float @dx.op.unary.f32(i32 21, float %211)  ; Exp(value)
  %213 = fadd fast float %212, -1.000000e+00
  %214 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %215 = extractvalue %dx.types.Dimensions %214, 0
  %216 = sitofp i32 %215 to float
  %217 = extractvalue %dx.types.Dimensions %214, 1
  %218 = sitofp i32 %217 to float
  %219 = fcmp fast oge float %203, %216
  %220 = fcmp fast oge float %204, %218
  %221 = or i1 %219, %220
  %222 = select i1 %221, float 0x4197782600000000, float %213
  %223 = fsub fast float %222, %42
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
  br i1 %243, label %493, label %244, !dx.controlflow.hints !61

; <label>:244                                     ; preds = %241
  %245 = add i32 %122, 80
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = extractvalue %dx.types.ResRet.f32 %246, 3
  %251 = add i32 %122, 96
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = extractvalue %dx.types.ResRet.f32 %252, 2
  %256 = add i32 %122, 112
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = extractvalue %dx.types.ResRet.f32 %257, 3
  %262 = add i32 %122, 128
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = extractvalue %dx.types.ResRet.f32 %263, 1
  %266 = extractvalue %dx.types.ResRet.f32 %263, 2
  %267 = extractvalue %dx.types.ResRet.f32 %263, 3
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %279 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %280 = extractvalue %dx.types.Dimensions %279, 0
  %281 = sitofp i32 %280 to float
  %282 = extractvalue %dx.types.Dimensions %279, 1
  %283 = sitofp i32 %282 to float
  %284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %285 = extractvalue %dx.types.CBufRet.f32 %284, 2
  %286 = extractvalue %dx.types.CBufRet.f32 %284, 3
  %287 = fmul fast float %285, %47
  %288 = fmul fast float %286, %48
  %289 = fmul fast float %287, %281
  %290 = fmul fast float %288, %283
  %291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %292 = extractvalue %dx.types.CBufRet.f32 %291, 1
  %293 = fsub fast float -0.000000e+00, %292
  %294 = fptoui float %293 to i32
  %295 = fptoui float %289 to i32
  %296 = fptoui float %290 to i32
  %297 = and i32 %294, 31
  %298 = lshr i32 %295, %297
  %299 = lshr i32 %296, %297
  %300 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %294, i32 %298, i32 %299, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = fcmp fast ogt float %301, -1.000000e+00
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %305 = select i1 %302, float %304, float 1.000000e+00
  %306 = fadd fast float %301, 1.000000e+00
  %307 = fmul fast float %305, %306
  %308 = call float @dx.op.unary.f32(i32 6, float %307)  ; FAbs(value)
  %309 = extractvalue %dx.types.CBufRet.f32 %303, 3
  %310 = fcmp fast oge float %308, %309
  %311 = select i1 %310, float 0x4197782600000000, float %308
  br i1 %278, label %389, label %312, !dx.controlflow.hints !62

; <label>:312                                     ; preds = %244
  %313 = fmul fast float %52, %285
  %314 = fmul fast float %54, %286
  %315 = fsub fast float 1.000000e+00, %313
  %316 = fsub fast float 1.000000e+00, %314
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 0
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 1
  %320 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %321 = fmul fast float %315, %318
  %322 = fmul fast float %315, %319
  %323 = fmul fast float %315, %320
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 0
  %326 = extractvalue %dx.types.CBufRet.f32 %324, 1
  %327 = extractvalue %dx.types.CBufRet.f32 %324, 2
  %328 = fmul fast float %316, %325
  %329 = fmul fast float %316, %326
  %330 = fmul fast float %316, %327
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %345 = extractvalue %dx.types.CBufRet.f32 %344, 0
  %346 = extractvalue %dx.types.CBufRet.f32 %344, 1
  %347 = extractvalue %dx.types.CBufRet.f32 %344, 2
  %348 = fsub fast float %345, %24
  %349 = fadd fast float %348, %341
  %350 = fsub fast float %346, %25
  %351 = fadd fast float %350, %342
  %352 = fsub fast float %347, %26
  %353 = fadd fast float %352, %343
  %354 = fmul fast float %27, %27
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
  %372 = fmul fast float %258, %35
  %373 = fmul fast float %259, %36
  %374 = fmul fast float %260, %37
  %375 = fsub fast float %372, %264
  %376 = fsub fast float %373, %265
  %377 = fsub fast float %374, %266
  %378 = fsub fast float %261, %267
  %379 = fmul fast float %371, %375
  %380 = fmul fast float %371, %376
  %381 = fmul fast float %371, %377
  %382 = fmul fast float %371, %378
  %383 = fadd fast float %379, %264
  %384 = fadd fast float %380, %265
  %385 = fadd fast float %381, %266
  %386 = fadd fast float %382, %267
  %387 = fmul fast float %247, %247
  %388 = fmul fast float %387, %362
  br label %484

; <label>:389                                     ; preds = %244
  %390 = and i32 %269, 256
  %391 = icmp eq i32 %390, 0
  %392 = fsub fast float %311, %42
  br i1 %391, label %441, label %393

; <label>:393                                     ; preds = %389
  %394 = fadd fast float %253, %42
  %395 = fcmp fast olt float %311, %42
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
  %424 = fmul fast float %258, %35
  %425 = fmul fast float %259, %36
  %426 = fmul fast float %260, %37
  %427 = fsub fast float %424, %264
  %428 = fsub fast float %425, %265
  %429 = fsub fast float %426, %266
  %430 = fsub fast float %261, %267
  %431 = fmul fast float %423, %427
  %432 = fmul fast float %423, %428
  %433 = fmul fast float %423, %429
  %434 = fmul fast float %423, %430
  %435 = fadd fast float %431, %264
  %436 = fadd fast float %432, %265
  %437 = fadd fast float %433, %266
  %438 = fadd fast float %434, %267
  %439 = fmul fast float %398, %247
  %440 = call float @dx.op.unary.f32(i32 6, float %439)  ; FAbs(value)
  br label %484

; <label>:441                                     ; preds = %389
  br i1 %272, label %442, label %455

; <label>:442                                     ; preds = %441
  %443 = fdiv fast float 5.000000e+01, %27
  %444 = select i1 %274, float %443, float 1.000000e+00
  %445 = fmul fast float %444, %247
  %446 = fmul fast float %33, 2.000000e+00
  %447 = fmul fast float %34, 2.000000e+00
  %448 = fadd fast float %446, -1.000000e+00
  %449 = fadd fast float %447, -1.000000e+00
  %450 = call float @dx.op.dot2.f32(i32 54, float %448, float %449, float %448, float %449)  ; Dot2(ax,ay,bx,by)
  %451 = fmul fast float %255, %27
  %452 = fmul fast float %451, %450
  %453 = fsub fast float %392, %452
  %454 = fmul fast float %445, %453
  br label %484

; <label>:455                                     ; preds = %441
  br i1 %276, label %476, label %456

; <label>:456                                     ; preds = %455
  %457 = fmul fast float %27, 0x3F947AE140000000
  %458 = select i1 %274, float %457, float 1.000000e+00
  %459 = fdiv fast float 1.000000e+00, %458
  %460 = fmul fast float %458, %248
  %461 = fmul fast float %458, %249
  %462 = fmul fast float %459, %250
  %463 = call float @dx.op.unary.f32(i32 6, float %392)  ; FAbs(value)
  %464 = fcmp fast olt float %463, %460
  br i1 %464, label %465, label %469, !dx.controlflow.hints !63

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
  %477 = fdiv fast float 5.000000e+01, %27
  %478 = select i1 %274, float %477, float 1.000000e+00
  %479 = fmul fast float %478, %247
  %480 = call float @dx.op.unary.f32(i32 6, float %223)  ; FAbs(value)
  %481 = select i1 %271, float %480, float 0x47EFFFFFE0000000
  %482 = call float @dx.op.binary.f32(i32 36, float %392, float %481)  ; FMin(a,b)
  %483 = fmul fast float %479, %482
  br label %484

; <label>:484                                     ; preds = %476, %471, %469, %465, %442, %393, %312
  %485 = phi float [ %388, %312 ], [ %440, %393 ], [ %454, %442 ], [ %483, %476 ], [ %468, %465 ], [ %475, %471 ], [ %463, %469 ]
  %486 = phi float [ %383, %312 ], [ %435, %393 ], [ %35, %442 ], [ %35, %476 ], [ %35, %465 ], [ %35, %471 ], [ %35, %469 ]
  %487 = phi float [ %384, %312 ], [ %436, %393 ], [ %36, %442 ], [ %36, %476 ], [ %36, %465 ], [ %36, %471 ], [ %36, %469 ]
  %488 = phi float [ %385, %312 ], [ %437, %393 ], [ %37, %442 ], [ %37, %476 ], [ %37, %465 ], [ %37, %471 ], [ %37, %469 ]
  %489 = phi float [ %386, %312 ], [ %438, %393 ], [ 1.000000e+00, %442 ], [ 1.000000e+00, %476 ], [ 1.000000e+00, %465 ], [ 1.000000e+00, %471 ], [ 1.000000e+00, %469 ]
  %490 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %491 = fmul fast float %489, %202
  %492 = fmul fast float %491, %490
  br label %493

; <label>:493                                     ; preds = %484, %241
  %494 = phi float [ %486, %484 ], [ %35, %241 ]
  %495 = phi float [ %487, %484 ], [ %36, %241 ]
  %496 = phi float [ %488, %484 ], [ %37, %241 ]
  %497 = phi float [ %492, %484 ], [ %202, %241 ]
  %498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %499 = extractvalue %dx.types.CBufRet.f32 %498, 2
  %500 = fptosi float %42 to i32
  %501 = sitofp i32 %500 to float
  %502 = fadd fast float %499, %501
  %503 = fmul fast float %502, 0x3FE3C6EF40000000
  %504 = frem fast float %47, 2.560000e+02
  %505 = frem fast float %48, 2.560000e+02
  %506 = fptoui float %504 to i32
  %507 = fptoui float %505 to i32
  %508 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %506, i32 %507, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = fadd fast float %509, %503
  %511 = call float @dx.op.unary.f32(i32 22, float %510)  ; Frc(value)
  %512 = and i32 %125, 1
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %570, label %514, !dx.controlflow.hints !64

; <label>:514                                     ; preds = %493
  %515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 2
  %517 = extractvalue %dx.types.ResRet.f32 %515, 3
  %518 = add i32 %122, 16
  %519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 0
  %521 = extractvalue %dx.types.ResRet.f32 %519, 1
  %522 = extractvalue %dx.types.ResRet.f32 %519, 2
  %523 = add i32 %122, 32
  %524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = extractvalue %dx.types.ResRet.f32 %524, 1
  %527 = extractvalue %dx.types.ResRet.f32 %524, 2
  %528 = and i32 %125, 2
  %529 = icmp eq i32 %528, 0
  %530 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %531 = call float @dx.op.unary.f32(i32 25, float %530)  ; Rsqrt(value)
  %532 = fmul fast float %531, %30
  %533 = fmul fast float %531, %31
  %534 = fmul fast float %531, %32
  %535 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %536 = call float @dx.op.unary.f32(i32 25, float %535)  ; Rsqrt(value)
  %537 = fmul fast float %536, %82
  %538 = fmul fast float %536, %83
  %539 = fmul fast float %536, %84
  %540 = call float @dx.op.dot3.f32(i32 55, float %537, float %538, float %539, float %532, float %533, float %534)  ; Dot3(ax,ay,az,bx,by,bz)
  %541 = fmul fast float %540, %540
  %542 = fmul fast float %541, %516
  %543 = fadd fast float %542, %517
  %544 = call float @dx.op.unary.f32(i32 7, float %543)  ; Saturate(value)
  br i1 %529, label %545, label %555, !dx.controlflow.hints !65

; <label>:545                                     ; preds = %514
  %546 = extractvalue %dx.types.ResRet.f32 %515, 1
  %547 = extractvalue %dx.types.ResRet.f32 %515, 0
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 3
  %550 = fmul fast float %549, %535
  %551 = fsub fast float %547, %550
  %552 = fmul fast float %551, %546
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %554 = fmul fast float %553, %544
  br label %555

; <label>:555                                     ; preds = %545, %514
  %556 = phi float [ %554, %545 ], [ %544, %514 ]
  %557 = fsub fast float %520, %525
  %558 = fsub fast float %521, %526
  %559 = fsub fast float %522, %527
  %560 = fmul fast float %556, %557
  %561 = fmul fast float %556, %558
  %562 = fmul fast float %556, %559
  %563 = fadd fast float %560, %525
  %564 = fadd fast float %561, %526
  %565 = fadd fast float %562, %527
  %566 = fmul fast float %563, %494
  %567 = fmul fast float %564, %495
  %568 = fmul fast float %565, %496
  %569 = fmul fast float %556, %497
  br label %570

; <label>:570                                     ; preds = %555, %493
  %571 = phi float [ %566, %555 ], [ %494, %493 ]
  %572 = phi float [ %567, %555 ], [ %495, %493 ]
  %573 = phi float [ %568, %555 ], [ %496, %493 ]
  %574 = phi float [ %569, %555 ], [ %497, %493 ]
  %575 = add i32 %23, 72
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = add i32 %577, 0
  %579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %578, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %580 = add i32 %23, 24
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %579, %dx.types.Handle %43, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = extractvalue %dx.types.ResRet.f32 %583, 3
  %588 = and i32 %582, 255
  %589 = uitofp i32 %588 to float
  %590 = lshr i32 %582, 8
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %587, %589
  %594 = fadd fast float %593, %592
  %595 = fmul fast float %594, 0x3F70101000000000
  %596 = add i32 %23, 56
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %598, 255
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %600, 0x3F70101020000000
  %602 = lshr i32 %598, 8
  %603 = and i32 %602, 255
  %604 = uitofp i32 %603 to float
  %605 = fmul fast float %604, 0x3F70101020000000
  %606 = lshr i32 %598, 16
  %607 = and i32 %606, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = add i32 %23, 40
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
  %624 = fmul fast float %615, %615
  %625 = fmul fast float %619, %619
  %626 = fmul fast float %623, %623
  %627 = add i32 %23, 80
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = add i32 %629, 0
  %631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %632 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %44, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %633 = extractvalue %dx.types.ResRet.f32 %632, 0
  %634 = extractvalue %dx.types.ResRet.f32 %632, 1
  %635 = extractvalue %dx.types.ResRet.f32 %632, 2
  %636 = fmul fast float %624, %633
  %637 = fmul fast float %625, %634
  %638 = fmul fast float %626, %635
  %639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %644 = extractvalue %dx.types.CBufRet.f32 %643, 1
  %645 = fadd fast float %595, 0xBFB99999A0000000
  %646 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  %647 = fmul fast float %646, 0x3FF1C71C80000000
  %648 = fsub fast float 1.000000e+00, %647
  %649 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %650 = fmul fast float %584, %571
  %651 = fmul fast float %601, %601
  %652 = fmul fast float %651, %650
  %653 = fmul fast float %652, %649
  %654 = fmul fast float %585, %572
  %655 = fmul fast float %605, %605
  %656 = fmul fast float %655, %654
  %657 = fmul fast float %656, %649
  %658 = fmul fast float %586, %573
  %659 = fmul fast float %609, %609
  %660 = fmul fast float %659, %658
  %661 = fmul fast float %660, %649
  %662 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %663 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %664 = call float @dx.op.unary.f32(i32 7, float %661)  ; Saturate(value)
  %665 = call float @dx.op.dot3.f32(i32 55, float %662, float %663, float %664, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %666 = add i32 %23, 32
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = and i32 %668, 255
  %670 = uitofp i32 %669 to float
  %671 = lshr i32 %668, 8
  %672 = and i32 %671, 255
  %673 = uitofp i32 %672 to float
  %674 = fmul fast float %673, %665
  %675 = fadd fast float %674, %670
  %676 = fmul fast float %675, 0x3F70101020000000
  %677 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  %678 = and i32 %125, 8192
  %679 = icmp eq i32 %678, 0
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 0
  br i1 %679, label %688, label %682, !dx.controlflow.hints !66

; <label>:682                                     ; preds = %570
  %683 = add i32 %122, 176
  %684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.f32 %684, 0
  %686 = fcmp fast oge float %685, 0.000000e+00
  %687 = select i1 %686, float %685, float %681
  br label %688

; <label>:688                                     ; preds = %682, %570
  %689 = phi float [ %687, %682 ], [ %681, %570 ]
  %690 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %205, i32 %206, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = lshr i32 %691, 18
  %693 = uitofp i32 %692 to float
  %694 = fmul fast float %693, 0x3F4C00EBA0000000
  %695 = call float @dx.op.unary.f32(i32 21, float %694)  ; Exp(value)
  %696 = fadd fast float %695, -1.000000e+00
  %697 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %698 = extractvalue %dx.types.Dimensions %697, 0
  %699 = sitofp i32 %698 to float
  %700 = extractvalue %dx.types.Dimensions %697, 1
  %701 = sitofp i32 %700 to float
  %702 = fcmp fast oge float %203, %699
  %703 = fcmp fast oge float %204, %701
  %704 = or i1 %702, %703
  %705 = select i1 %704, float 0x4197782600000000, float %696
  %706 = fadd fast float %636, -1.000000e+00
  %707 = fadd fast float %637, -1.000000e+00
  %708 = fadd fast float %638, -1.000000e+00
  %709 = fmul fast float %706, %574
  %710 = fmul fast float %707, %574
  %711 = fmul fast float %708, %574
  %712 = fadd fast float %709, 1.000000e+00
  %713 = fadd fast float %710, 1.000000e+00
  %714 = fadd fast float %711, 1.000000e+00
  %715 = call float @dx.op.dot3.f32(i32 55, float %712, float %713, float %714, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %716 = fsub fast float 1.000000e+00, %715
  %717 = fmul fast float %689, %677
  %718 = fsub fast float 1.000000e+00, %677
  %719 = call float @dx.op.unary.f32(i32 7, float %718)  ; Saturate(value)
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 3
  %722 = fmul fast float %721, %719
  %723 = fadd fast float %722, %717
  %724 = and i32 %125, 2097152
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %730, label %726, !dx.controlflow.hints !67

; <label>:726                                     ; preds = %688
  %727 = add i32 %122, 192
  %728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  br label %733

; <label>:730                                     ; preds = %688
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 3
  br label %733

; <label>:733                                     ; preds = %730, %726
  %734 = phi float [ %729, %726 ], [ %732, %730 ]
  %735 = fmul fast float %640, %574
  %736 = fmul fast float %735, %644
  %737 = fmul fast float %736, %662
  %738 = fmul fast float %641, %574
  %739 = fmul fast float %738, %644
  %740 = fmul fast float %739, %663
  %741 = fmul fast float %642, %574
  %742 = fmul fast float %741, %644
  %743 = fmul fast float %742, %664
  %744 = icmp eq i32 %121, 3
  %745 = fcmp fast ogt float %42, %705
  %746 = and i1 %229, %745
  %747 = or i1 %744, %746
  %748 = icmp eq i32 %121, 2
  %749 = fcmp fast ole float %42, %705
  %750 = and i1 %748, %749
  %751 = or i1 %750, %747
  br i1 %746, label %752, label %858

; <label>:752                                     ; preds = %733
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 2
  %755 = extractvalue %dx.types.CBufRet.f32 %753, 3
  %756 = fmul fast float %754, %47
  %757 = fmul fast float %755, %48
  %758 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %759 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %760 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %758, float %759, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = extractvalue %dx.types.ResRet.f32 %760, 1
  %763 = extractvalue %dx.types.ResRet.f32 %760, 2
  %764 = extractvalue %dx.types.ResRet.f32 %760, 3
  %765 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %758, float %759, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 0
  %767 = extractvalue %dx.types.ResRet.f32 %765, 1
  %768 = extractvalue %dx.types.ResRet.f32 %765, 2
  %769 = extractvalue %dx.types.ResRet.f32 %765, 3
  %770 = call float @dx.op.binary.f32(i32 35, float %762, float %763)  ; FMax(a,b)
  %771 = call float @dx.op.binary.f32(i32 35, float %761, float %770)  ; FMax(a,b)
  %772 = call float @dx.op.binary.f32(i32 35, float %771, float %764)  ; FMax(a,b)
  %773 = call float @dx.op.binary.f32(i32 36, float %767, float %768)  ; FMin(a,b)
  %774 = call float @dx.op.binary.f32(i32 36, float %766, float %773)  ; FMin(a,b)
  %775 = call float @dx.op.binary.f32(i32 36, float %774, float %769)  ; FMin(a,b)
  %776 = fmul fast float %772, 2.550000e+02
  %777 = fadd fast float %776, 0x3F70101020000000
  %778 = fptoui float %777 to i32
  %779 = fmul fast float %775, 2.550000e+02
  %780 = fadd fast float %779, 0x3F70101020000000
  %781 = fptoui float %780 to i32
  %782 = icmp ult i32 %778, %781
  br i1 %782, label %783, label %834

; <label>:783                                     ; preds = %752
  %784 = fcmp fast ogt float %41, 9.843750e-01
  %785 = fadd fast float %42, -4.000000e+00
  %786 = select i1 %784, float -4.000000e+00, float %785
  %787 = call float @dx.op.binary.f32(i32 35, float %786, float 0.000000e+00)  ; FMax(a,b)
  %788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %789 = extractvalue %dx.types.CBufRet.f32 %788, 0
  %790 = fadd fast float %789, %787
  %791 = extractvalue %dx.types.CBufRet.f32 %788, 2
  %792 = fmul fast float %790, %791
  %793 = call float @dx.op.unary.f32(i32 23, float %792)  ; Log(value)
  %794 = extractvalue %dx.types.CBufRet.f32 %788, 3
  %795 = fmul fast float %794, %793
  %796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %797 = extractvalue %dx.types.CBufRet.f32 %796, 2
  %798 = fmul fast float %795, %797
  %799 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %800 = uitofp i32 %778 to float
  %801 = uitofp i32 %781 to float
  %802 = fadd fast float %800, 5.000000e-01
  %803 = fadd fast float %801, 5.000000e-01
  %804 = fmul fast float %797, %802
  %805 = fmul fast float %797, %803
  %806 = fadd fast float %804, 0x3F0FFB4800000000
  %807 = fadd fast float %805, 0xBF0FFB4800000000
  %808 = call float @dx.op.binary.f32(i32 35, float %799, float %806)  ; FMax(a,b)
  %809 = call float @dx.op.binary.f32(i32 36, float %808, float %807)  ; FMin(a,b)
  %810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %811 = extractvalue %dx.types.CBufRet.f32 %810, 1
  %812 = extractvalue %dx.types.CBufRet.f32 %810, 2
  %813 = extractvalue %dx.types.CBufRet.f32 %810, 0
  %814 = fmul fast float %811, %809
  %815 = fadd fast float %813, %814
  %816 = fadd fast float %813, %812
  %817 = fsub fast float %811, %812
  %818 = fadd fast float %817, %813
  %819 = call float @dx.op.binary.f32(i32 35, float %815, float %816)  ; FMax(a,b)
  %820 = call float @dx.op.binary.f32(i32 36, float %819, float %818)  ; FMin(a,b)
  %821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %758, float %759, float %820, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  %823 = extractvalue %dx.types.ResRet.f32 %821, 1
  %824 = extractvalue %dx.types.ResRet.f32 %821, 2
  %825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %758, float %759, float %820, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = extractvalue %dx.types.ResRet.f32 %825, 1
  %828 = extractvalue %dx.types.ResRet.f32 %825, 2
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 1
  %831 = fmul fast float %830, %826
  %832 = fmul fast float %830, %827
  %833 = fmul fast float %830, %828
  br label %834

; <label>:834                                     ; preds = %783, %752
  %835 = phi float [ %822, %783 ], [ 1.000000e+00, %752 ]
  %836 = phi float [ %823, %783 ], [ 1.000000e+00, %752 ]
  %837 = phi float [ %824, %783 ], [ 1.000000e+00, %752 ]
  %838 = phi float [ %831, %783 ], [ 0.000000e+00, %752 ]
  %839 = phi float [ %832, %783 ], [ 0.000000e+00, %752 ]
  %840 = phi float [ %833, %783 ], [ 0.000000e+00, %752 ]
  %841 = fmul fast float %838, %716
  %842 = fmul fast float %839, %716
  %843 = fmul fast float %840, %716
  %844 = call float @dx.op.dot3.f32(i32 55, float %835, float %836, float %837, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %845 = call float @dx.op.dot3.f32(i32 55, float %841, float %842, float %843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %846 = select i1 %105, float %844, float %835
  %847 = select i1 %105, float %844, float %836
  %848 = select i1 %105, float 1.000000e+00, float %837
  %849 = select i1 %105, float %845, float %841
  %850 = select i1 %105, float 0.000000e+00, float %842
  %851 = select i1 %105, float 0.000000e+00, float %843
  %852 = fmul fast float %846, %737
  %853 = fmul fast float %847, %740
  %854 = fmul fast float %848, %743
  %855 = fadd fast float %852, %849
  %856 = fadd fast float %853, %850
  %857 = fadd fast float %851, %854
  br label %858

; <label>:858                                     ; preds = %834, %733
  %859 = phi float [ %705, %834 ], [ %42, %733 ]
  %860 = phi float [ %855, %834 ], [ %737, %733 ]
  %861 = phi float [ %856, %834 ], [ %740, %733 ]
  %862 = phi float [ %857, %834 ], [ %743, %733 ]
  %863 = phi float [ %835, %834 ], [ 1.000000e+00, %733 ]
  br i1 %751, label %1159, label %864

; <label>:864                                     ; preds = %858
  %865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %866 = extractvalue %dx.types.ResRet.f32 %865, 0
  %867 = extractvalue %dx.types.ResRet.f32 %865, 1
  %868 = extractvalue %dx.types.ResRet.f32 %865, 2
  %869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %870 = extractvalue %dx.types.ResRet.f32 %869, 0
  %871 = extractvalue %dx.types.ResRet.f32 %869, 1
  %872 = extractvalue %dx.types.ResRet.f32 %869, 2
  %873 = fmul fast float %866, %716
  %874 = fmul fast float %867, %716
  %875 = fmul fast float %868, %716
  %876 = fmul fast float %870, %863
  %877 = call float @dx.op.dot3.f32(i32 55, float %870, float %871, float %872, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %878 = call float @dx.op.dot3.f32(i32 55, float %873, float %874, float %875, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = select i1 %105, float %877, float %870
  %880 = select i1 %105, float %877, float %871
  %881 = select i1 %105, float 1.000000e+00, float %872
  %882 = select i1 %105, float %878, float %873
  %883 = select i1 %105, float 0.000000e+00, float %874
  %884 = select i1 %105, float 0.000000e+00, float %875
  %885 = fmul fast float %879, %860
  %886 = fmul fast float %880, %861
  %887 = fmul fast float %881, %862
  %888 = fadd fast float %885, %882
  %889 = fadd fast float %886, %883
  %890 = fadd fast float %887, %884
  %891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.i32 %891, 0
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %1159, label %894, !dx.controlflow.hints !68

; <label>:894                                     ; preds = %864
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 3
  %898 = fmul fast float %896, %47
  %899 = fmul fast float %897, %48
  %900 = fmul fast float %898, 2.000000e+00
  %901 = fmul fast float %899, 2.000000e+00
  %902 = fsub fast float 1.000000e+00, %900
  %903 = fsub fast float 1.000000e+00, %901
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %906 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %907 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %908 = fmul fast float %902, %905
  %909 = fmul fast float %902, %906
  %910 = fmul fast float %902, %907
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %914 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %915 = fmul fast float %903, %912
  %916 = fmul fast float %903, %913
  %917 = fmul fast float %903, %914
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %920 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %921 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %922 = fadd fast float %915, %919
  %923 = fadd fast float %922, %908
  %924 = fadd fast float %916, %920
  %925 = fadd fast float %924, %909
  %926 = fadd fast float %917, %921
  %927 = fadd fast float %926, %910
  %928 = fmul fast float %923, %859
  %929 = fmul fast float %925, %859
  %930 = fmul fast float %927, %859
  %931 = fmul fast float %928, %928
  %932 = fmul fast float %929, %929
  %933 = fadd fast float %931, %932
  %934 = fmul fast float %930, %930
  %935 = fadd fast float %933, %934
  %936 = call float @dx.op.unary.f32(i32 24, float %935)  ; Sqrt(value)
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 0
  %939 = fsub fast float %936, %938
  %940 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %941 = fmul fast float %939, %940
  %942 = call float @dx.op.unary.f32(i32 7, float %941)  ; Saturate(value)
  %943 = fadd fast float %942, -5.000000e-01
  %944 = fmul fast float %943, 2.000000e+00
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %947 = call float @dx.op.binary.f32(i32 36, float %946, float %944)  ; FMin(a,b)
  %948 = fsub fast float -0.000000e+00, %946
  %949 = fcmp fast ogt float %947, %948
  br i1 %949, label %950, label %1159, !dx.controlflow.hints !69

; <label>:950                                     ; preds = %894
  %951 = fmul fast float %947, 5.000000e-01
  %952 = fadd fast float %951, 5.000000e-01
  %953 = call float @dx.op.unary.f32(i32 22, float %952)  ; Frc(value)
  %954 = call float @dx.op.unary.f32(i32 27, float %953)  ; Round_ni(value)
  %955 = call float @dx.op.unary.f32(i32 22, float %953)  ; Frc(value)
  %956 = fmul fast float %955, 2.000000e+00
  %957 = fadd fast float %956, -1.000000e+00
  %958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %898, float %899, float %954, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %959 = extractvalue %dx.types.ResRet.f32 %958, 0
  %960 = extractvalue %dx.types.ResRet.f32 %958, 1
  %961 = extractvalue %dx.types.ResRet.f32 %958, 2
  %962 = extractvalue %dx.types.ResRet.f32 %958, 3
  %963 = fadd fast float %959, -5.000000e-01
  %964 = fadd fast float %961, -5.000000e-01
  %965 = fmul fast float %963, 0xBFD5555560000000
  %966 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %964, float %965)  ; FMad(a,b,c)
  %967 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %960, float 0.000000e+00)  ; FMad(a,b,c)
  %968 = fadd fast float %967, %962
  %969 = fmul fast float %963, -7.500000e-01
  %970 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %964, float %969)  ; FMad(a,b,c)
  %971 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %960, float 0.000000e+00)  ; FMad(a,b,c)
  %972 = fadd fast float %971, %962
  %973 = call float @dx.op.binary.f32(i32 35, float %966, float -1.000000e+00)  ; FMax(a,b)
  %974 = call float @dx.op.binary.f32(i32 35, float %968, float -1.000000e+00)  ; FMax(a,b)
  %975 = call float @dx.op.binary.f32(i32 35, float %970, float -1.000000e+00)  ; FMax(a,b)
  %976 = call float @dx.op.binary.f32(i32 35, float %972, float -1.000000e+00)  ; FMax(a,b)
  %977 = call float @dx.op.binary.f32(i32 36, float %973, float 1.000000e+00)  ; FMin(a,b)
  %978 = call float @dx.op.binary.f32(i32 36, float %974, float 1.000000e+00)  ; FMin(a,b)
  %979 = call float @dx.op.binary.f32(i32 36, float %975, float 1.000000e+00)  ; FMin(a,b)
  %980 = call float @dx.op.binary.f32(i32 36, float %976, float 1.000000e+00)  ; FMin(a,b)
  %981 = fcmp fast olt float %977, 0x3FEFFF8020000000
  br i1 %981, label %982, label %1097, !dx.controlflow.hints !70

; <label>:982                                     ; preds = %950
  %983 = extractvalue %dx.types.CBufRet.f32 %945, 3
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %986 = extractvalue %dx.types.CBufRet.f32 %984, 1
  %987 = extractvalue %dx.types.CBufRet.f32 %984, 2
  %988 = extractvalue %dx.types.CBufRet.f32 %984, 3
  %989 = fsub fast float %985, %977
  %990 = fsub fast float %986, %978
  %991 = fsub fast float %987, %979
  %992 = fsub fast float %988, %980
  %993 = fmul fast float %989, %983
  %994 = fmul fast float %990, %983
  %995 = fmul fast float %991, %983
  %996 = fmul fast float %992, %983
  %997 = fadd fast float %993, %977
  %998 = fadd fast float %994, %978
  %999 = fsub fast float -0.000000e+00, %998
  %1000 = fadd fast float %995, %979
  %1001 = fadd fast float %996, %980
  %1002 = fmul fast float %997, %997
  %1003 = fsub fast float %998, %1002
  %1004 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1003)  ; FMax(a,b)
  %1005 = fdiv fast float 1.000000e+00, %1004
  %1006 = fmul fast float %998, %997
  %1007 = fsub fast float %1000, %1006
  %1008 = fsub fast float %957, %997
  %1009 = fmul fast float %957, %957
  %1010 = fsub fast float %1009, %998
  %1011 = fmul fast float %1008, %1005
  %1012 = fmul fast float %1011, %1007
  %1013 = fsub fast float %1010, %1012
  %1014 = fmul fast float %998, %998
  %1015 = fsub fast float %1001, %1014
  %1016 = fmul fast float %1007, %1007
  %1017 = fmul fast float %1016, %1005
  %1018 = fsub fast float %1015, %1017
  %1019 = fdiv fast float %1013, %1018
  %1020 = fmul fast float %1007, %1019
  %1021 = fsub fast float %1008, %1020
  %1022 = fmul fast float %1021, %1005
  %1023 = fmul fast float %1022, %997
  %1024 = fsub fast float 1.000000e+00, %1023
  %1025 = fmul fast float %998, %1019
  %1026 = fsub fast float %1024, %1025
  %1027 = fmul fast float %1022, %1022
  %1028 = fmul fast float %1019, 4.000000e+00
  %1029 = fmul fast float %1028, %1026
  %1030 = fsub fast float %1027, %1029
  %1031 = call float @dx.op.unary.f32(i32 24, float %1030)  ; Sqrt(value)
  %1032 = fcmp fast oge float %1022, 0.000000e+00
  %1033 = fsub fast float -0.000000e+00, %1031
  %1034 = select i1 %1032, float %1033, float %1031
  %1035 = fsub fast float %1034, %1022
  %1036 = fdiv fast float %1035, %1019
  %1037 = fdiv fast float %1026, %1035
  %1038 = fmul fast float %1036, 5.000000e-01
  %1039 = fmul fast float %1037, 2.000000e+00
  %1040 = select i1 %1032, float %1038, float %1039
  %1041 = select i1 %1032, float %1039, float %1038
  %1042 = call float @dx.op.binary.f32(i32 35, float %1040, float %1041)  ; FMax(a,b)
  %1043 = call float @dx.op.binary.f32(i32 36, float %1040, float %1041)  ; FMin(a,b)
  %1044 = fcmp fast ogt float %957, %1043
  br i1 %1044, label %1045, label %1055

; <label>:1045                                    ; preds = %982
  %1046 = fsub fast float %957, %1043
  %1047 = fsub fast float %1042, %1043
  %1048 = fmul fast float %1046, %1047
  %1049 = fmul fast float %1042, %957
  %1050 = fadd fast float %1042, %957
  %1051 = fmul fast float %1050, %997
  %1052 = fadd fast float %1049, %998
  %1053 = fsub fast float %1052, %1051
  %1054 = fdiv fast float %1053, %1048
  br label %1055

; <label>:1055                                    ; preds = %1045, %982
  %1056 = phi float [ %1054, %1045 ], [ 0.000000e+00, %982 ]
  %1057 = fcmp fast ogt float %957, %1042
  %1058 = fsub fast float %957, %1042
  br i1 %1057, label %1059, label %1069

; <label>:1059                                    ; preds = %1055
  %1060 = fsub fast float %1042, %1043
  %1061 = fmul fast float %1060, %1058
  %1062 = fmul fast float %1043, %957
  %1063 = fadd fast float %1043, %957
  %1064 = fmul fast float %1063, %997
  %1065 = fsub fast float %999, %1062
  %1066 = fadd fast float %1065, %1064
  %1067 = fdiv fast float %1066, %1061
  %1068 = fadd fast float %1067, %1056
  br label %1069

; <label>:1069                                    ; preds = %1059, %1055
  %1070 = phi float [ %1068, %1059 ], [ %1056, %1055 ]
  %1071 = fsub fast float %957, %1043
  %1072 = fmul fast float %1071, %1058
  %1073 = fmul fast float %1043, %1042
  %1074 = fadd fast float %1043, %1042
  %1075 = fmul fast float %1074, %997
  %1076 = fadd fast float %1073, %998
  %1077 = fsub fast float %1076, %1075
  %1078 = fdiv fast float %1077, %1072
  %1079 = call float @dx.op.unary.f32(i32 7, float %1070)  ; Saturate(value)
  %1080 = fcmp fast oeq float %734, 0.000000e+00
  %1081 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %1082 = fcmp fast oeq float %1081, 0.000000e+00
  %1083 = or i1 %1080, %1082
  %1084 = fmul fast float %1081, 2.000000e+00
  %1085 = fadd fast float %946, %947
  %1086 = fdiv fast float %1085, %1084
  %1087 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  %1088 = fmul fast float %1087, 2.000000e+00
  %1089 = fsub fast float 3.000000e+00, %1088
  %1090 = fmul fast float %1087, %1087
  %1091 = fmul fast float %1090, %1089
  %1092 = select i1 %1083, float 1.000000e+00, float %1091
  %1093 = fmul fast float %1078, %734
  %1094 = fadd fast float %1079, %1093
  %1095 = call float @dx.op.unary.f32(i32 7, float %1094)  ; Saturate(value)
  %1096 = fmul fast float %1092, %1095
  br label %1097

; <label>:1097                                    ; preds = %1069, %950
  %1098 = phi float [ %1096, %1069 ], [ 0.000000e+00, %950 ]
  %1099 = fsub fast float 1.000000e+00, %1098
  %1100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %898, float %899, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1101 = extractvalue %dx.types.ResRet.f32 %1100, 0
  %1102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.i32 %1102, 2
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1110, label %1105

; <label>:1105                                    ; preds = %1097
  %1106 = call float @dx.op.unary.f32(i32 7, float %1098)  ; Saturate(value)
  %1107 = fadd fast float %1101, -1.000000e+00
  %1108 = fmul fast float %1106, %1107
  %1109 = fadd fast float %1108, 1.000000e+00
  br label %1110

; <label>:1110                                    ; preds = %1105, %1097
  %1111 = phi float [ %1109, %1105 ], [ %1099, %1097 ]
  %1112 = call float @dx.op.binary.f32(i32 35, float %1101, float %1111)  ; FMax(a,b)
  %1113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.i32 %1113, 2
  %1115 = and i32 %1114, 1
  %1116 = icmp eq i32 %1115, 0
  %1117 = fcmp fast une float %1112, 1.000000e+00
  %1118 = and i1 %1117, %1116
  br i1 %1118, label %1119, label %1138

; <label>:1119                                    ; preds = %1110
  %1120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %898, float %899, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1120, 2
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1126 = fmul fast float %1125, %1121
  %1127 = fmul fast float %1125, %1122
  %1128 = fmul fast float %1125, %1123
  %1129 = fcmp fast ogt float %1101, 0x3FEFFF2E40000000
  %1130 = fsub fast float 1.000000e+00, %1112
  %1131 = fsub fast float 1.000000e+00, %1101
  %1132 = fdiv fast float %1130, %1131
  %1133 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1134 = select i1 %1129, float 0.000000e+00, float %1133
  %1135 = fmul fast float %1126, %1134
  %1136 = fmul fast float %1127, %1134
  %1137 = fmul fast float %1128, %1134
  br label %1138

; <label>:1138                                    ; preds = %1119, %1110
  %1139 = phi float [ 0.000000e+00, %1110 ], [ %1135, %1119 ]
  %1140 = phi float [ 0.000000e+00, %1110 ], [ %1136, %1119 ]
  %1141 = phi float [ 0.000000e+00, %1110 ], [ %1137, %1119 ]
  %1142 = fmul fast float %1139, %716
  %1143 = fmul fast float %1140, %716
  %1144 = fmul fast float %1141, %716
  %1145 = fmul fast float %1112, %876
  %1146 = call float @dx.op.dot3.f32(i32 55, float %1112, float %1112, float %1112, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1147 = call float @dx.op.dot3.f32(i32 55, float %1142, float %1143, float %1144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1148 = select i1 %105, float %1146, float %1112
  %1149 = select i1 %105, float 1.000000e+00, float %1112
  %1150 = select i1 %105, float %1147, float %1142
  %1151 = select i1 %105, float 0.000000e+00, float %1143
  %1152 = select i1 %105, float 0.000000e+00, float %1144
  %1153 = fmul fast float %1148, %888
  %1154 = fmul fast float %1148, %889
  %1155 = fmul fast float %1149, %890
  %1156 = fadd fast float %1153, %1150
  %1157 = fadd fast float %1154, %1151
  %1158 = fadd fast float %1152, %1155
  br label %1159

; <label>:1159                                    ; preds = %1138, %894, %864, %858
  %1160 = phi float [ %860, %858 ], [ %888, %864 ], [ %1156, %1138 ], [ %888, %894 ]
  %1161 = phi float [ %861, %858 ], [ %889, %864 ], [ %1157, %1138 ], [ %889, %894 ]
  %1162 = phi float [ %862, %858 ], [ %890, %864 ], [ %1158, %1138 ], [ %890, %894 ]
  %1163 = phi float [ %863, %858 ], [ %876, %864 ], [ %1145, %1138 ], [ %876, %894 ]
  %1164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1165 = extractvalue %dx.types.CBufRet.f32 %1164, 2
  %1166 = extractvalue %dx.types.CBufRet.f32 %1164, 3
  %1167 = fmul fast float %1165, %47
  %1168 = fmul fast float %1166, %48
  %1169 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1170 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  %1171 = select i1 %751, i32 2, i32 0
  %1172 = or i32 %1171, 1
  %1173 = uitofp i32 %1172 to float
  %1174 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1169, float %1170, float %1173, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = extractvalue %dx.types.ResRet.f32 %1174, 1
  %1177 = extractvalue %dx.types.ResRet.f32 %1174, 2
  %1178 = extractvalue %dx.types.ResRet.f32 %1174, 3
  %1179 = add nuw nsw i32 %1171, 2
  %1180 = uitofp i32 %1179 to float
  %1181 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1169, float %1170, float %1180, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1182 = extractvalue %dx.types.ResRet.f32 %1181, 0
  %1183 = extractvalue %dx.types.ResRet.f32 %1181, 1
  %1184 = extractvalue %dx.types.ResRet.f32 %1181, 2
  %1185 = extractvalue %dx.types.ResRet.f32 %1181, 3
  %1186 = call float @dx.op.binary.f32(i32 35, float %1176, float %1177)  ; FMax(a,b)
  %1187 = call float @dx.op.binary.f32(i32 35, float %1175, float %1186)  ; FMax(a,b)
  %1188 = call float @dx.op.binary.f32(i32 35, float %1187, float %1178)  ; FMax(a,b)
  %1189 = call float @dx.op.binary.f32(i32 36, float %1183, float %1184)  ; FMin(a,b)
  %1190 = call float @dx.op.binary.f32(i32 36, float %1182, float %1189)  ; FMin(a,b)
  %1191 = call float @dx.op.binary.f32(i32 36, float %1190, float %1185)  ; FMin(a,b)
  %1192 = fmul fast float %1188, 2.550000e+02
  %1193 = fadd fast float %1192, 0x3F70101020000000
  %1194 = fptoui float %1193 to i32
  %1195 = fmul fast float %1191, 2.550000e+02
  %1196 = fadd fast float %1195, 0x3F70101020000000
  %1197 = fptoui float %1196 to i32
  %1198 = icmp ult i32 %1194, %1197
  br i1 %1198, label %1199, label %1251

; <label>:1199                                    ; preds = %1159
  %1200 = fcmp fast ogt float %41, 9.843750e-01
  %1201 = fadd fast float %859, -4.000000e+00
  %1202 = select i1 %1200, float -4.000000e+00, float %1201
  %1203 = call float @dx.op.binary.f32(i32 35, float %1202, float 0.000000e+00)  ; FMax(a,b)
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 0
  %1206 = fadd fast float %1205, %1203
  %1207 = extractvalue %dx.types.CBufRet.f32 %1204, 2
  %1208 = fmul fast float %1206, %1207
  %1209 = call float @dx.op.unary.f32(i32 23, float %1208)  ; Log(value)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1204, 3
  %1211 = fmul fast float %1210, %1209
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 2
  %1214 = fmul fast float %1211, %1213
  %1215 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  %1216 = uitofp i32 %1194 to float
  %1217 = uitofp i32 %1197 to float
  %1218 = fadd fast float %1216, 5.000000e-01
  %1219 = fadd fast float %1217, 5.000000e-01
  %1220 = fmul fast float %1213, %1218
  %1221 = fmul fast float %1213, %1219
  %1222 = fadd fast float %1220, 0x3F0FFB4800000000
  %1223 = fadd fast float %1221, 0xBF0FFB4800000000
  %1224 = call float @dx.op.binary.f32(i32 35, float %1215, float %1222)  ; FMax(a,b)
  %1225 = call float @dx.op.binary.f32(i32 36, float %1224, float %1223)  ; FMin(a,b)
  %1226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1227 = extractvalue %dx.types.CBufRet.f32 %1226, 1
  %1228 = extractvalue %dx.types.CBufRet.f32 %1226, 2
  %1229 = extractvalue %dx.types.CBufRet.f32 %1226, 0
  %1230 = select i1 %751, float %1229, float 0.000000e+00
  %1231 = fmul fast float %1227, %1225
  %1232 = fadd fast float %1230, %1231
  %1233 = fadd fast float %1230, %1228
  %1234 = fsub fast float %1227, %1228
  %1235 = fadd fast float %1234, %1230
  %1236 = call float @dx.op.binary.f32(i32 35, float %1232, float %1233)  ; FMax(a,b)
  %1237 = call float @dx.op.binary.f32(i32 36, float %1236, float %1235)  ; FMin(a,b)
  %1238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1169, float %1170, float %1237, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1239 = extractvalue %dx.types.ResRet.f32 %1238, 0
  %1240 = extractvalue %dx.types.ResRet.f32 %1238, 1
  %1241 = extractvalue %dx.types.ResRet.f32 %1238, 2
  %1242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1169, float %1170, float %1237, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.ResRet.f32 %1242, 1
  %1245 = extractvalue %dx.types.ResRet.f32 %1242, 2
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 1
  %1248 = fmul fast float %1247, %1243
  %1249 = fmul fast float %1247, %1244
  %1250 = fmul fast float %1247, %1245
  br label %1251

; <label>:1251                                    ; preds = %1199, %1159
  %1252 = phi float [ %1239, %1199 ], [ 1.000000e+00, %1159 ]
  %1253 = phi float [ %1240, %1199 ], [ 1.000000e+00, %1159 ]
  %1254 = phi float [ %1241, %1199 ], [ 1.000000e+00, %1159 ]
  %1255 = phi float [ %1248, %1199 ], [ 0.000000e+00, %1159 ]
  %1256 = phi float [ %1249, %1199 ], [ 0.000000e+00, %1159 ]
  %1257 = phi float [ %1250, %1199 ], [ 0.000000e+00, %1159 ]
  %1258 = fmul fast float %1255, %716
  %1259 = fmul fast float %1256, %716
  %1260 = fmul fast float %1257, %716
  %1261 = fmul fast float %1252, %1163
  %1262 = call float @dx.op.dot3.f32(i32 55, float %1252, float %1253, float %1254, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1263 = call float @dx.op.dot3.f32(i32 55, float %1258, float %1259, float %1260, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1264 = select i1 %105, float %1262, float %1252
  %1265 = select i1 %105, float %1262, float %1253
  %1266 = select i1 %105, float 1.000000e+00, float %1254
  %1267 = select i1 %105, float %1263, float %1258
  %1268 = select i1 %105, float 0.000000e+00, float %1259
  %1269 = select i1 %105, float 0.000000e+00, float %1260
  %1270 = fmul fast float %1264, %1160
  %1271 = fmul fast float %1265, %1161
  %1272 = fmul fast float %1266, %1162
  %1273 = fadd fast float %1270, %1267
  %1274 = fadd fast float %1271, %1268
  %1275 = fadd fast float %1269, %1272
  %1276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.i32 %1276, 3
  %1278 = and i32 %1277, 3
  %1279 = icmp ne i32 %1278, 0
  %1280 = and i32 %1277, 4
  %1281 = icmp ne i32 %1280, 0
  %1282 = and i1 %1279, %1281
  %1283 = and i1 %105, %1282
  br i1 %1283, label %1284, label %1290

; <label>:1284                                    ; preds = %1251
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 1
  %1287 = fadd fast float %1261, -1.000000e+00
  %1288 = fmul fast float %1286, %1287
  %1289 = fadd fast float %1288, 1.000000e+00
  br label %1290

; <label>:1290                                    ; preds = %1284, %1251
  %1291 = phi float [ %1289, %1284 ], [ %1261, %1251 ]
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  br i1 %105, label %1294, label %1315

; <label>:1294                                    ; preds = %1290
  %1295 = fadd fast float %1273, %1274
  %1296 = fmul fast float %1293, %1295
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 3
  %1299 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %1300 = fsub fast float %723, %1299
  %1301 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %1302 = fmul fast float %1300, %1301
  %1303 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1304 = fsub fast float %1303, %1298
  %1305 = fmul fast float %1304, %1291
  %1306 = fadd fast float %1305, %1298
  %1307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.f32 %1307, 0
  %1309 = fsub fast float %1306, %1308
  %1310 = fmul fast float %1309, 1.000000e+01
  %1311 = call float @dx.op.unary.f32(i32 7, float %1310)  ; Saturate(value)
  %1312 = fmul fast float %1311, %716
  %1313 = fsub fast float %716, %1312
  %1314 = fmul fast float %1313, %1306
  br label %1324

; <label>:1315                                    ; preds = %1290
  %1316 = fmul fast float %1293, %1273
  %1317 = fmul fast float %1293, %1274
  %1318 = fmul fast float %1293, %1275
  %1319 = call float @dx.op.binary.f32(i32 35, float %1317, float %1318)  ; FMax(a,b)
  %1320 = call float @dx.op.binary.f32(i32 35, float %1316, float %1319)  ; FMax(a,b)
  %1321 = call float @dx.op.binary.f32(i32 35, float %1320, float %716)  ; FMax(a,b)
  %1322 = fcmp fast ugt float %1321, 0x3F10000000000000
  br i1 %1322, label %1324, label %1323

; <label>:1323                                    ; preds = %1315
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1324

; <label>:1324                                    ; preds = %1323, %1315, %1294
  %1325 = phi float [ %1296, %1294 ], [ %1316, %1323 ], [ %1316, %1315 ]
  %1326 = phi float [ %1314, %1294 ], [ %1317, %1323 ], [ %1317, %1315 ]
  %1327 = phi float [ %1313, %1294 ], [ %1318, %1323 ], [ %1318, %1315 ]
  %1328 = phi float [ %1313, %1294 ], [ %716, %1323 ], [ %716, %1315 ]
  %1329 = fadd fast float %511, 0x3FE3C6EF40000000
  %1330 = call float @dx.op.unary.f32(i32 22, float %1329)  ; Frc(value)
  %1331 = call float @dx.op.unary.f32(i32 23, float %1325)  ; Log(value)
  %1332 = fadd fast float %1331, -7.000000e+00
  %1333 = call float @dx.op.unary.f32(i32 21, float %1332)  ; Exp(value)
  %1334 = fmul fast float %1330, 2.000000e+00
  %1335 = fadd fast float %1334, -1.000000e+00
  %1336 = fmul fast float %1333, %1335
  %1337 = fcmp fast ogt float %1325, 0.000000e+00
  %1338 = select i1 %1337, float %1336, float 0.000000e+00
  %1339 = fadd fast float %1338, %1325
  %1340 = fadd fast float %511, 0x3FF3C6EF40000000
  %1341 = call float @dx.op.unary.f32(i32 22, float %1340)  ; Frc(value)
  %1342 = call float @dx.op.unary.f32(i32 23, float %1326)  ; Log(value)
  %1343 = fadd fast float %1342, -7.000000e+00
  %1344 = call float @dx.op.unary.f32(i32 21, float %1343)  ; Exp(value)
  %1345 = fmul fast float %1341, 2.000000e+00
  %1346 = fadd fast float %1345, -1.000000e+00
  %1347 = fmul fast float %1344, %1346
  %1348 = fcmp fast ogt float %1326, 0.000000e+00
  %1349 = select i1 %1348, float %1347, float 0.000000e+00
  %1350 = fadd fast float %1349, %1326
  %1351 = fadd fast float %511, 0x3FFDAA66E0000000
  %1352 = call float @dx.op.unary.f32(i32 22, float %1351)  ; Frc(value)
  %1353 = call float @dx.op.unary.f32(i32 23, float %1327)  ; Log(value)
  %1354 = fadd fast float %1353, -6.000000e+00
  %1355 = call float @dx.op.unary.f32(i32 21, float %1354)  ; Exp(value)
  %1356 = fmul fast float %1352, 2.000000e+00
  %1357 = fadd fast float %1356, -1.000000e+00
  %1358 = fmul fast float %1355, %1357
  %1359 = fcmp fast ogt float %1327, 0.000000e+00
  %1360 = select i1 %1359, float %1358, float 0.000000e+00
  %1361 = fadd fast float %1360, %1327
  %1362 = select i1 %105, float %1326, float %1350
  %1363 = select i1 %105, float %1327, float %1361
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1364 = call float @dx.op.binary.f32(i32 36, float %1339, float 3.225500e+04)  ; FMin(a,b)
  %1365 = call float @dx.op.binary.f32(i32 36, float %1362, float 3.225500e+04)  ; FMin(a,b)
  %1366 = call float @dx.op.binary.f32(i32 36, float %1363, float 3.225500e+04)  ; FMin(a,b)
  %1367 = call float @dx.op.binary.f32(i32 36, float %1328, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1364)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1365)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1366)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1367)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1328)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1328)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1328)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1328)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

