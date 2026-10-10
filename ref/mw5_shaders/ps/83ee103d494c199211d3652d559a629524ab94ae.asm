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
; COLOR                    3   xyz         6     NONE    uint   x   
; COLOR                    4      w        6     NONE    uint       
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
; shader hash: 46956050a8427e46f31c2e4eb9989558
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
; COLOR                    3        nointerpolation       
; COLOR                    4        nointerpolation       
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
;                                   texture    byte         r/o      T2             t0     1
;                                   texture     f32          2d      T3     t77,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t1     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture     f32          3d      T9     t44,space2     1
;                                   texture     f32          3d     T10     t45,space2     1
;                                   texture     f32     2darray     T11     t47,space2     1
;                                   textureunorm_f32     2darray     T12     t85,space2     1
;                                   texture     f32          2d     T13     t83,space2     1
;                                   texture     f32          2d     T14     t86,space2     1
;                                   texture     f32     2darray     T15             t2     1
;                                   texture    byte         r/o     T16             t3     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = fmul fast float %41, %34
  %43 = fmul fast float %41, %35
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %46 = extractvalue %dx.types.CBufRet.f32 %44, 3
  %47 = fmul fast float %42, 2.000000e+00
  %48 = fmul fast float %47, %45
  %49 = fmul fast float %43, 2.000000e+00
  %50 = fmul fast float %49, %46
  %51 = fsub fast float 1.000000e+00, %48
  %52 = fsub fast float 1.000000e+00, %50
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %57 = fmul fast float %51, %54
  %58 = fmul fast float %51, %55
  %59 = fmul fast float %51, %56
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = fmul fast float %52, %61
  %65 = fmul fast float %52, %62
  %66 = fmul fast float %52, %63
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fadd fast float %64, %68
  %72 = fadd fast float %71, %57
  %73 = fadd fast float %65, %69
  %74 = fadd fast float %73, %58
  %75 = fadd fast float %66, %70
  %76 = fadd fast float %75, %59
  %77 = fmul fast float %72, %37
  %78 = fmul fast float %74, %37
  %79 = fmul fast float %76, %37
  %80 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.i32 %80, 3
  %82 = and i32 %81, 3
  %83 = icmp ne i32 %82, 0
  %84 = and i32 %81, 4
  %85 = icmp ne i32 %84, 0
  %86 = and i1 %83, %85
  br i1 %86, label %87, label %96

; <label>:87                                      ; preds = %0
  %88 = fmul fast float %46, %43
  %89 = fmul fast float %45, %42
  %90 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %89, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = fsub fast float 1.000000e+00, %91
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = fcmp fast olt float %92, %94
  br label %99

; <label>:96                                      ; preds = %0
  %97 = icmp eq i32 %84, 0
  %98 = and i1 %83, %97
  br label %99

; <label>:99                                      ; preds = %96, %87
  %100 = phi i1 [ %95, %87 ], [ %98, %96 ]
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %104 = fmul fast float %102, %42
  %105 = fmul fast float %103, %43
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = and i32 %107, 114688
  %109 = icmp ne i32 %108, 0
  %110 = select i1 %109, float %104, float 0.000000e+00
  %111 = select i1 %109, float %105, float 0.000000e+00
  %112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %110, float %111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = fmul fast float %113, 2.550000e+02
  %115 = fptoui float %114 to i32
  %116 = select i1 %109, i32 %115, i32 0
  %117 = mul i32 %22, 208
  %118 = add i32 %117, 188
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = and i32 %81, 114688
  %122 = and i32 %81, 8
  %123 = icmp ne i32 %122, 0
  %124 = or i1 %100, %123
  %125 = select i1 %124, i32 %121, i32 16384
  %126 = and i32 %125, %120
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

; <label>:128                                     ; preds = %99
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %129

; <label>:129                                     ; preds = %128, %99
  %130 = and i32 %120, 512
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %156, label %132

; <label>:132                                     ; preds = %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %136 = fmul fast float %134, %42
  %137 = fmul fast float %135, %43
  %138 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %140 = fdiv fast float %138, %139
  %141 = fcmp fast ogt float %140, 0x3FFC71C720000000
  br i1 %141, label %142, label %148

; <label>:142                                     ; preds = %132
  %143 = fdiv fast float 0x3FFC71C720000000, %140
  %144 = fmul fast float %143, %137
  %145 = fsub fast float 1.000000e+00, %143
  %146 = fmul fast float %145, 5.000000e-01
  %147 = fadd fast float %146, %144
  br label %156

; <label>:148                                     ; preds = %132
  %149 = fcmp fast olt float %140, 0x3FFC71C720000000
  br i1 %149, label %150, label %156

; <label>:150                                     ; preds = %148
  %151 = fmul fast float %136, 5.625000e-01
  %152 = fmul fast float %151, %140
  %153 = fmul fast float %140, 2.812500e-01
  %154 = fsub fast float 5.000000e-01, %153
  %155 = fadd fast float %154, %152
  br label %156

; <label>:156                                     ; preds = %150, %148, %142, %129
  %157 = phi float [ %28, %129 ], [ %136, %142 ], [ %155, %150 ], [ %136, %148 ]
  %158 = phi float [ %29, %129 ], [ %147, %142 ], [ %137, %150 ], [ %137, %148 ]
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = extractvalue %dx.types.ResRet.i32 %159, 1
  %162 = bitcast i32 %160 to float
  %163 = bitcast i32 %161 to float
  %164 = fmul fast float %162, %28
  %165 = fmul fast float %163, %29
  %166 = call float @dx.op.unary.f32(i32 22, float %164)  ; Frc(value)
  %167 = call float @dx.op.unary.f32(i32 22, float %165)  ; Frc(value)
  %168 = and i32 %120, 16
  %169 = icmp ne i32 %168, 0
  %170 = select i1 %169, float 1.000000e+00, float %33
  %171 = icmp eq i32 %168, 0
  br i1 %171, label %191, label %172, !dx.controlflow.hints !61

; <label>:172                                     ; preds = %156
  %173 = add i32 %117, 64
  %174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.f32 %174, 0
  %176 = fadd fast float %175, 1.000000e+00
  %177 = fmul fast float %176, %33
  %178 = fsub fast float %177, %175
  %179 = fsub fast float %176, %178
  %180 = call float @dx.op.unary.f32(i32 7, float %179)  ; Saturate(value)
  %181 = fsub fast float 1.000000e+00, %177
  %182 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %183 = fsub fast float %180, %182
  %184 = fsub fast float %170, %182
  %185 = fdiv fast float %184, %183
  %186 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %187 = fmul fast float %186, 2.000000e+00
  %188 = fsub fast float 3.000000e+00, %187
  %189 = fmul fast float %186, %186
  %190 = fmul fast float %189, %188
  br label %191

; <label>:191                                     ; preds = %172, %156
  %192 = phi float [ %190, %172 ], [ %170, %156 ]
  %193 = fcmp fast ogt float %192, 0.000000e+00
  br i1 %193, label %195, label %194

; <label>:194                                     ; preds = %191
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %195

; <label>:195                                     ; preds = %194, %191
  %196 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %197 = fmul fast float %42, 5.000000e-01
  %198 = fmul fast float %43, 5.000000e-01
  %199 = fptosi float %197 to i32
  %200 = fptosi float %198 to i32
  %201 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %199, i32 %200, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = lshr i32 %202, 18
  %204 = uitofp i32 %203 to float
  %205 = fmul fast float %204, 0x3F4C00EBA0000000
  %206 = call float @dx.op.unary.f32(i32 21, float %205)  ; Exp(value)
  %207 = fadd fast float %206, -1.000000e+00
  %208 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %209 = extractvalue %dx.types.Dimensions %208, 0
  %210 = sitofp i32 %209 to float
  %211 = extractvalue %dx.types.Dimensions %208, 1
  %212 = sitofp i32 %211 to float
  %213 = fcmp fast oge float %197, %210
  %214 = fcmp fast oge float %198, %212
  %215 = or i1 %213, %214
  %216 = select i1 %215, float 0x4197782600000000, float %207
  %217 = fsub fast float %216, %37
  %218 = fcmp fast ogt float %217, 0.000000e+00
  %219 = and i32 %116, -2
  %220 = icmp eq i32 %219, 2
  %221 = and i1 %220, %218
  %222 = xor i1 %218, true
  %223 = icmp eq i32 %116, 1
  %224 = and i1 %223, %222
  %225 = or i1 %221, %224
  %226 = and i32 %120, 262144
  %227 = icmp ne i32 %226, 0
  %228 = and i1 %227, %225
  %229 = xor i1 %225, true
  %230 = and i32 %120, 131072
  %231 = icmp ne i32 %230, 0
  %232 = and i1 %231, %229
  %233 = or i1 %228, %232
  br i1 %233, label %234, label %235

; <label>:234                                     ; preds = %195
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %235

; <label>:235                                     ; preds = %234, %195
  %236 = and i32 %120, 32
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %477, label %238, !dx.controlflow.hints !62

; <label>:238                                     ; preds = %235
  %239 = add i32 %117, 80
  %240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.f32 %240, 0
  %242 = extractvalue %dx.types.ResRet.f32 %240, 1
  %243 = extractvalue %dx.types.ResRet.f32 %240, 2
  %244 = extractvalue %dx.types.ResRet.f32 %240, 3
  %245 = add i32 %117, 96
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = add i32 %117, 112
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = extractvalue %dx.types.ResRet.f32 %251, 1
  %254 = extractvalue %dx.types.ResRet.f32 %251, 2
  %255 = extractvalue %dx.types.ResRet.f32 %251, 3
  %256 = add i32 %117, 128
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = extractvalue %dx.types.ResRet.f32 %257, 3
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 4096
  %265 = icmp ne i32 %264, 0
  %266 = fcmp fast une float %249, 0.000000e+00
  %267 = and i32 %263, 64
  %268 = icmp ne i32 %267, 0
  %269 = and i32 %263, 128
  %270 = icmp eq i32 %269, 0
  %271 = and i32 %263, 2048
  %272 = icmp eq i32 %271, 0
  %273 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %274 = extractvalue %dx.types.Dimensions %273, 0
  %275 = sitofp i32 %274 to float
  %276 = extractvalue %dx.types.Dimensions %273, 1
  %277 = sitofp i32 %276 to float
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 2
  %280 = extractvalue %dx.types.CBufRet.f32 %278, 3
  %281 = fmul fast float %279, %42
  %282 = fmul fast float %280, %43
  %283 = fmul fast float %281, %275
  %284 = fmul fast float %282, %277
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 1
  %287 = fsub fast float -0.000000e+00, %286
  %288 = fptoui float %287 to i32
  %289 = fptoui float %283 to i32
  %290 = fptoui float %284 to i32
  %291 = and i32 %288, 31
  %292 = lshr i32 %289, %291
  %293 = lshr i32 %290, %291
  %294 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %288, i32 %292, i32 %293, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = fcmp fast ogt float %295, -1.000000e+00
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %299 = select i1 %296, float %298, float 1.000000e+00
  %300 = fadd fast float %295, 1.000000e+00
  %301 = fmul fast float %299, %300
  %302 = call float @dx.op.unary.f32(i32 6, float %301)  ; FAbs(value)
  %303 = extractvalue %dx.types.CBufRet.f32 %297, 3
  %304 = fcmp fast oge float %302, %303
  %305 = select i1 %304, float 0x4197782600000000, float %302
  br i1 %272, label %376, label %306, !dx.controlflow.hints !63

; <label>:306                                     ; preds = %238
  %307 = fmul fast float %47, %279
  %308 = fmul fast float %49, %280
  %309 = fsub fast float 1.000000e+00, %307
  %310 = fsub fast float 1.000000e+00, %308
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %314 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %315 = fmul fast float %309, %312
  %316 = fmul fast float %309, %313
  %317 = fmul fast float %309, %314
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %322 = fmul fast float %310, %319
  %323 = fmul fast float %310, %320
  %324 = fmul fast float %310, %321
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %328 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %329 = fadd fast float %322, %326
  %330 = fadd fast float %329, %315
  %331 = fadd fast float %323, %327
  %332 = fadd fast float %331, %316
  %333 = fadd fast float %324, %328
  %334 = fadd fast float %333, %317
  %335 = fmul fast float %330, %305
  %336 = fmul fast float %332, %305
  %337 = fmul fast float %334, %305
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %340 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %341 = extractvalue %dx.types.CBufRet.f32 %338, 2
  %342 = fadd fast float %335, %339
  %343 = fadd fast float %336, %340
  %344 = fadd fast float %337, %341
  %345 = call float @dx.op.dot3.f32(i32 55, float %342, float %343, float %344, float %342, float %343, float %344)  ; Dot3(ax,ay,az,bx,by,bz)
  %346 = fsub fast float 1.000000e+00, %345
  %347 = fcmp fast olt float %346, %248
  %348 = fcmp fast ogt float %346, %247
  %349 = or i1 %347, %348
  %350 = select i1 %349, float 0.000000e+00, float %346
  %351 = fsub fast float %247, %248
  %352 = fsub fast float %350, %248
  %353 = fdiv fast float %352, %351
  %354 = call float @dx.op.unary.f32(i32 7, float %353)  ; Saturate(value)
  %355 = fmul fast float %354, 2.000000e+00
  %356 = fsub fast float 3.000000e+00, %355
  %357 = fmul fast float %354, %354
  %358 = fmul fast float %357, %356
  %359 = fmul fast float %252, %30
  %360 = fmul fast float %253, %31
  %361 = fmul fast float %254, %32
  %362 = fsub fast float %359, %258
  %363 = fsub fast float %360, %259
  %364 = fsub fast float %361, %260
  %365 = fsub fast float %255, %261
  %366 = fmul fast float %358, %362
  %367 = fmul fast float %358, %363
  %368 = fmul fast float %358, %364
  %369 = fmul fast float %358, %365
  %370 = fadd fast float %366, %258
  %371 = fadd fast float %367, %259
  %372 = fadd fast float %368, %260
  %373 = fadd fast float %369, %261
  %374 = fmul fast float %241, %241
  %375 = fmul fast float %374, %350
  br label %467

; <label>:376                                     ; preds = %238
  %377 = and i32 %263, 256
  %378 = icmp eq i32 %377, 0
  %379 = fsub fast float %305, %37
  br i1 %378, label %428, label %380

; <label>:380                                     ; preds = %376
  %381 = fadd fast float %247, %37
  %382 = fcmp fast olt float %305, %37
  %383 = fcmp fast ogt float %305, %381
  %384 = or i1 %382, %383
  %385 = select i1 %384, float 0.000000e+00, float %379
  %386 = call float @dx.op.unary.f32(i32 83, float %305)  ; DerivCoarseX(value)
  %387 = call float @dx.op.unary.f32(i32 84, float %305)  ; DerivCoarseY(value)
  %388 = fmul fast float %386, %386
  %389 = fmul fast float %387, %387
  %390 = fadd fast float %389, %388
  %391 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %392 = extractvalue %dx.types.CBufRet.f32 %285, 2
  %393 = fmul fast float %392, %391
  %394 = call float @dx.op.unary.f32(i32 7, float %393)  ; Saturate(value)
  %395 = fmul fast float %394, %248
  %396 = fdiv fast float %379, %395
  %397 = call float @dx.op.unary.f32(i32 7, float %396)  ; Saturate(value)
  %398 = fmul fast float %397, 2.000000e+00
  %399 = fsub fast float 3.000000e+00, %398
  %400 = fmul fast float %397, %397
  %401 = fmul fast float %400, %399
  %402 = fsub fast float %305, %381
  %403 = fadd fast float %402, %395
  %404 = fdiv fast float %403, %395
  %405 = call float @dx.op.unary.f32(i32 7, float %404)  ; Saturate(value)
  %406 = fmul fast float %405, 2.000000e+00
  %407 = fsub fast float 3.000000e+00, %406
  %408 = fmul fast float %405, %405
  %409 = fmul fast float %408, %407
  %410 = fsub fast float %401, %409
  %411 = fmul fast float %252, %30
  %412 = fmul fast float %253, %31
  %413 = fmul fast float %254, %32
  %414 = fsub fast float %411, %258
  %415 = fsub fast float %412, %259
  %416 = fsub fast float %413, %260
  %417 = fsub fast float %255, %261
  %418 = fmul fast float %410, %414
  %419 = fmul fast float %410, %415
  %420 = fmul fast float %410, %416
  %421 = fmul fast float %410, %417
  %422 = fadd fast float %418, %258
  %423 = fadd fast float %419, %259
  %424 = fadd fast float %420, %260
  %425 = fadd fast float %421, %261
  %426 = fmul fast float %385, %241
  %427 = call float @dx.op.unary.f32(i32 6, float %426)  ; FAbs(value)
  br label %467

; <label>:428                                     ; preds = %376
  br i1 %266, label %429, label %440

; <label>:429                                     ; preds = %428
  %430 = select i1 %268, float 5.000000e+01, float 1.000000e+00
  %431 = fmul fast float %430, %241
  %432 = fmul fast float %166, 2.000000e+00
  %433 = fmul fast float %167, 2.000000e+00
  %434 = fadd fast float %432, -1.000000e+00
  %435 = fadd fast float %433, -1.000000e+00
  %436 = call float @dx.op.dot2.f32(i32 54, float %434, float %435, float %434, float %435)  ; Dot2(ax,ay,bx,by)
  %437 = fmul fast float %436, %249
  %438 = fsub fast float %379, %437
  %439 = fmul fast float %431, %438
  br label %467

; <label>:440                                     ; preds = %428
  br i1 %270, label %460, label %441

; <label>:441                                     ; preds = %440
  %442 = select i1 %268, float 0x3F947AE140000000, float 1.000000e+00
  %443 = fdiv fast float 1.000000e+00, %442
  %444 = fmul fast float %442, %242
  %445 = fmul fast float %442, %243
  %446 = fmul fast float %443, %244
  %447 = call float @dx.op.unary.f32(i32 6, float %379)  ; FAbs(value)
  %448 = fcmp fast olt float %447, %444
  br i1 %448, label %449, label %453, !dx.controlflow.hints !64

; <label>:449                                     ; preds = %441
  %450 = fmul fast float %443, %241
  %451 = fmul fast float %450, %447
  %452 = call float @dx.op.unary.f32(i32 6, float %451)  ; FAbs(value)
  br label %467

; <label>:453                                     ; preds = %441
  %454 = fcmp fast ogt float %447, %445
  br i1 %454, label %455, label %467

; <label>:455                                     ; preds = %453
  %456 = fsub fast float %447, %445
  %457 = fmul fast float %446, %456
  %458 = call float @dx.op.unary.f32(i32 6, float %457)  ; FAbs(value)
  %459 = fsub fast float 1.000000e+00, %458
  br label %467

; <label>:460                                     ; preds = %440
  %461 = select i1 %268, float 5.000000e+01, float 1.000000e+00
  %462 = fmul fast float %461, %241
  %463 = call float @dx.op.unary.f32(i32 6, float %217)  ; FAbs(value)
  %464 = select i1 %265, float %463, float 0x47EFFFFFE0000000
  %465 = call float @dx.op.binary.f32(i32 36, float %379, float %464)  ; FMin(a,b)
  %466 = fmul fast float %462, %465
  br label %467

; <label>:467                                     ; preds = %460, %455, %453, %449, %429, %380, %306
  %468 = phi float [ %375, %306 ], [ %427, %380 ], [ %439, %429 ], [ %466, %460 ], [ %452, %449 ], [ %459, %455 ], [ %447, %453 ]
  %469 = phi float [ %370, %306 ], [ %422, %380 ], [ %30, %429 ], [ %30, %460 ], [ %30, %449 ], [ %30, %455 ], [ %30, %453 ]
  %470 = phi float [ %371, %306 ], [ %423, %380 ], [ %31, %429 ], [ %31, %460 ], [ %31, %449 ], [ %31, %455 ], [ %31, %453 ]
  %471 = phi float [ %372, %306 ], [ %424, %380 ], [ %32, %429 ], [ %32, %460 ], [ %32, %449 ], [ %32, %455 ], [ %32, %453 ]
  %472 = phi float [ %373, %306 ], [ %425, %380 ], [ 1.000000e+00, %429 ], [ 1.000000e+00, %460 ], [ 1.000000e+00, %449 ], [ 1.000000e+00, %455 ], [ 1.000000e+00, %453 ]
  %473 = call float @dx.op.unary.f32(i32 7, float %468)  ; Saturate(value)
  %474 = fmul fast float %473, %33
  %475 = fmul fast float %472, %196
  %476 = fmul fast float %475, %473
  br label %477

; <label>:477                                     ; preds = %467, %235
  %478 = phi float [ %469, %467 ], [ %30, %235 ]
  %479 = phi float [ %470, %467 ], [ %31, %235 ]
  %480 = phi float [ %471, %467 ], [ %32, %235 ]
  %481 = phi float [ %476, %467 ], [ %196, %235 ]
  %482 = phi float [ %474, %467 ], [ %33, %235 ]
  %483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %484 = extractvalue %dx.types.CBufRet.f32 %483, 2
  %485 = fptosi float %37 to i32
  %486 = sitofp i32 %485 to float
  %487 = fadd fast float %484, %486
  %488 = fmul fast float %487, 0x3FE3C6EF40000000
  %489 = frem fast float %42, 2.560000e+02
  %490 = frem fast float %43, 2.560000e+02
  %491 = fptoui float %489 to i32
  %492 = fptoui float %490 to i32
  %493 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %491, i32 %492, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = fadd fast float %494, %488
  %496 = call float @dx.op.unary.f32(i32 22, float %495)  ; Frc(value)
  %497 = and i32 %120, 1
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %556, label %499, !dx.controlflow.hints !65

; <label>:499                                     ; preds = %477
  %500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 2
  %502 = extractvalue %dx.types.ResRet.f32 %500, 3
  %503 = add i32 %117, 16
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = extractvalue %dx.types.ResRet.f32 %504, 1
  %507 = extractvalue %dx.types.ResRet.f32 %504, 2
  %508 = add i32 %117, 32
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = and i32 %120, 2
  %514 = icmp eq i32 %513, 0
  %515 = call float @dx.op.dot3.f32(i32 55, float %25, float %26, float %27, float %25, float %26, float %27)  ; Dot3(ax,ay,az,bx,by,bz)
  %516 = call float @dx.op.unary.f32(i32 25, float %515)  ; Rsqrt(value)
  %517 = fmul fast float %516, %25
  %518 = fmul fast float %516, %26
  %519 = fmul fast float %516, %27
  %520 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = call float @dx.op.unary.f32(i32 25, float %520)  ; Rsqrt(value)
  %522 = fmul fast float %521, %77
  %523 = fmul fast float %521, %78
  %524 = fmul fast float %521, %79
  %525 = call float @dx.op.dot3.f32(i32 55, float %522, float %523, float %524, float %517, float %518, float %519)  ; Dot3(ax,ay,az,bx,by,bz)
  %526 = fmul fast float %525, %525
  %527 = fmul fast float %526, %501
  %528 = fadd fast float %527, %502
  %529 = call float @dx.op.unary.f32(i32 7, float %528)  ; Saturate(value)
  br i1 %514, label %530, label %540, !dx.controlflow.hints !66

; <label>:530                                     ; preds = %499
  %531 = extractvalue %dx.types.ResRet.f32 %500, 1
  %532 = extractvalue %dx.types.ResRet.f32 %500, 0
  %533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.f32 %533, 3
  %535 = fmul fast float %534, %520
  %536 = fsub fast float %532, %535
  %537 = fmul fast float %536, %531
  %538 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %539 = fmul fast float %538, %529
  br label %540

; <label>:540                                     ; preds = %530, %499
  %541 = phi float [ %539, %530 ], [ %529, %499 ]
  %542 = fsub fast float %505, %510
  %543 = fsub fast float %506, %511
  %544 = fsub fast float %507, %512
  %545 = fmul fast float %541, %542
  %546 = fmul fast float %541, %543
  %547 = fmul fast float %541, %544
  %548 = fadd fast float %545, %510
  %549 = fadd fast float %546, %511
  %550 = fadd fast float %547, %512
  %551 = fmul fast float %548, %478
  %552 = fmul fast float %549, %479
  %553 = fmul fast float %550, %480
  %554 = fmul fast float %541, %481
  %555 = fmul fast float %541, %482
  br label %556

; <label>:556                                     ; preds = %540, %477
  %557 = phi float [ %551, %540 ], [ %478, %477 ]
  %558 = phi float [ %552, %540 ], [ %479, %477 ]
  %559 = phi float [ %553, %540 ], [ %480, %477 ]
  %560 = phi float [ %554, %540 ], [ %481, %477 ]
  %561 = phi float [ %555, %540 ], [ %482, %477 ]
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = add i32 %563, 0
  %565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %565, %dx.types.Handle %38, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = extractvalue %dx.types.ResRet.f32 %566, 1
  %569 = extractvalue %dx.types.ResRet.f32 %566, 2
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = and i32 %571, 255
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %573, 0x3F70101020000000
  %575 = lshr i32 %571, 8
  %576 = and i32 %575, 255
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %577, 0x3F70101020000000
  %579 = lshr i32 %571, 16
  %580 = and i32 %579, 255
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %581, 0x3F70101020000000
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = and i32 %584, 255
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %586, 0x3F70101020000000
  %588 = fmul fast float %587, %587
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = add i32 %590, 0
  %592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %592, %dx.types.Handle %39, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = fmul fast float %588, %594
  %596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %23, float %24, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 0
  %598 = extractvalue %dx.types.ResRet.f32 %596, 1
  %599 = extractvalue %dx.types.ResRet.f32 %596, 2
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 0
  %604 = fmul fast float %567, %557
  %605 = fmul fast float %574, %574
  %606 = fmul fast float %605, %604
  %607 = fmul fast float %606, %603
  %608 = fmul fast float %568, %558
  %609 = fmul fast float %578, %578
  %610 = fmul fast float %609, %608
  %611 = fmul fast float %610, %603
  %612 = fmul fast float %569, %559
  %613 = fmul fast float %582, %582
  %614 = fmul fast float %613, %612
  %615 = fmul fast float %614, %603
  %616 = call float @dx.op.dot3.f32(i32 55, float %607, float %611, float %615, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = and i32 %618, 255
  %620 = uitofp i32 %619 to float
  %621 = lshr i32 %618, 8
  %622 = and i32 %621, 255
  %623 = uitofp i32 %622 to float
  %624 = fmul fast float %623, %616
  %625 = fadd fast float %624, %620
  %626 = fmul fast float %625, 0x3F70101020000000
  %627 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %628 = and i32 %120, 8192
  %629 = icmp eq i32 %628, 0
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 0
  br i1 %629, label %638, label %632, !dx.controlflow.hints !67

; <label>:632                                     ; preds = %556
  %633 = add i32 %117, 176
  %634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  %636 = fcmp fast oge float %635, 0.000000e+00
  %637 = select i1 %636, float %635, float %631
  br label %644

; <label>:638                                     ; preds = %556
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = bitcast i32 %640 to float
  %642 = fcmp fast oge float %641, 0.000000e+00
  %643 = select i1 %642, float %641, float %631
  br label %644

; <label>:644                                     ; preds = %638, %632
  %645 = phi float [ %637, %632 ], [ %643, %638 ]
  %646 = fsub fast float 1.000000e+00, %595
  %647 = fmul fast float %646, %561
  %648 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %199, i32 %200, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = lshr i32 %649, 18
  %651 = uitofp i32 %650 to float
  %652 = fmul fast float %651, 0x3F4C00EBA0000000
  %653 = call float @dx.op.unary.f32(i32 21, float %652)  ; Exp(value)
  %654 = fadd fast float %653, -1.000000e+00
  %655 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %656 = extractvalue %dx.types.Dimensions %655, 0
  %657 = sitofp i32 %656 to float
  %658 = extractvalue %dx.types.Dimensions %655, 1
  %659 = sitofp i32 %658 to float
  %660 = fcmp fast oge float %197, %657
  %661 = fcmp fast oge float %198, %659
  %662 = or i1 %660, %661
  %663 = select i1 %662, float 0x4197782600000000, float %654
  %664 = fadd fast float %595, -1.000000e+00
  %665 = fmul fast float %664, %560
  %666 = fadd fast float %665, 1.000000e+00
  %667 = call float @dx.op.dot3.f32(i32 55, float %666, float %666, float %666, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %668 = fsub fast float 1.000000e+00, %667
  %669 = fmul fast float %645, %627
  %670 = fsub fast float 1.000000e+00, %647
  %671 = fsub fast float %670, %627
  %672 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 3
  %675 = fmul fast float %674, %672
  %676 = fadd fast float %675, %669
  %677 = and i32 %120, 2097152
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %683, label %679, !dx.controlflow.hints !68

; <label>:679                                     ; preds = %644
  %680 = add i32 %117, 192
  %681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %680, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 0
  br label %686

; <label>:683                                     ; preds = %644
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 3
  br label %686

; <label>:686                                     ; preds = %683, %679
  %687 = phi float [ %682, %679 ], [ %685, %683 ]
  %688 = fmul fast float %597, %560
  %689 = fmul fast float %688, %601
  %690 = fmul fast float %689, %607
  %691 = fmul fast float %598, %560
  %692 = fmul fast float %691, %601
  %693 = fmul fast float %692, %611
  %694 = fmul fast float %599, %560
  %695 = fmul fast float %694, %601
  %696 = fmul fast float %695, %615
  %697 = icmp eq i32 %116, 3
  %698 = fcmp fast ogt float %37, %663
  %699 = and i1 %223, %698
  %700 = or i1 %697, %699
  %701 = icmp eq i32 %116, 2
  %702 = fcmp fast ole float %37, %663
  %703 = and i1 %701, %702
  %704 = or i1 %703, %700
  br i1 %699, label %705, label %811

; <label>:705                                     ; preds = %686
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 2
  %708 = extractvalue %dx.types.CBufRet.f32 %706, 3
  %709 = fmul fast float %707, %42
  %710 = fmul fast float %708, %43
  %711 = call float @dx.op.unary.f32(i32 7, float %709)  ; Saturate(value)
  %712 = call float @dx.op.unary.f32(i32 7, float %710)  ; Saturate(value)
  %713 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %711, float %712, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = extractvalue %dx.types.ResRet.f32 %713, 1
  %716 = extractvalue %dx.types.ResRet.f32 %713, 2
  %717 = extractvalue %dx.types.ResRet.f32 %713, 3
  %718 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %711, float %712, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %719 = extractvalue %dx.types.ResRet.f32 %718, 0
  %720 = extractvalue %dx.types.ResRet.f32 %718, 1
  %721 = extractvalue %dx.types.ResRet.f32 %718, 2
  %722 = extractvalue %dx.types.ResRet.f32 %718, 3
  %723 = call float @dx.op.binary.f32(i32 35, float %715, float %716)  ; FMax(a,b)
  %724 = call float @dx.op.binary.f32(i32 35, float %714, float %723)  ; FMax(a,b)
  %725 = call float @dx.op.binary.f32(i32 35, float %724, float %717)  ; FMax(a,b)
  %726 = call float @dx.op.binary.f32(i32 36, float %720, float %721)  ; FMin(a,b)
  %727 = call float @dx.op.binary.f32(i32 36, float %719, float %726)  ; FMin(a,b)
  %728 = call float @dx.op.binary.f32(i32 36, float %727, float %722)  ; FMin(a,b)
  %729 = fmul fast float %725, 2.550000e+02
  %730 = fadd fast float %729, 0x3F70101020000000
  %731 = fptoui float %730 to i32
  %732 = fmul fast float %728, 2.550000e+02
  %733 = fadd fast float %732, 0x3F70101020000000
  %734 = fptoui float %733 to i32
  %735 = icmp ult i32 %731, %734
  br i1 %735, label %736, label %787

; <label>:736                                     ; preds = %705
  %737 = fcmp fast ogt float %36, 9.843750e-01
  %738 = fadd fast float %37, -4.000000e+00
  %739 = select i1 %737, float -4.000000e+00, float %738
  %740 = call float @dx.op.binary.f32(i32 35, float %739, float 0.000000e+00)  ; FMax(a,b)
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 0
  %743 = fadd fast float %742, %740
  %744 = extractvalue %dx.types.CBufRet.f32 %741, 2
  %745 = fmul fast float %743, %744
  %746 = call float @dx.op.unary.f32(i32 23, float %745)  ; Log(value)
  %747 = extractvalue %dx.types.CBufRet.f32 %741, 3
  %748 = fmul fast float %747, %746
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 2
  %751 = fmul fast float %748, %750
  %752 = call float @dx.op.unary.f32(i32 7, float %751)  ; Saturate(value)
  %753 = uitofp i32 %731 to float
  %754 = uitofp i32 %734 to float
  %755 = fadd fast float %753, 5.000000e-01
  %756 = fadd fast float %754, 5.000000e-01
  %757 = fmul fast float %750, %755
  %758 = fmul fast float %750, %756
  %759 = fadd fast float %757, 0x3F0FFB4800000000
  %760 = fadd fast float %758, 0xBF0FFB4800000000
  %761 = call float @dx.op.binary.f32(i32 35, float %752, float %759)  ; FMax(a,b)
  %762 = call float @dx.op.binary.f32(i32 36, float %761, float %760)  ; FMin(a,b)
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %765 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %766 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %767 = fmul fast float %764, %762
  %768 = fadd fast float %766, %767
  %769 = fadd fast float %766, %765
  %770 = fsub fast float %764, %765
  %771 = fadd fast float %770, %766
  %772 = call float @dx.op.binary.f32(i32 35, float %768, float %769)  ; FMax(a,b)
  %773 = call float @dx.op.binary.f32(i32 36, float %772, float %771)  ; FMin(a,b)
  %774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %711, float %712, float %773, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 0
  %776 = extractvalue %dx.types.ResRet.f32 %774, 1
  %777 = extractvalue %dx.types.ResRet.f32 %774, 2
  %778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %711, float %712, float %773, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %779 = extractvalue %dx.types.ResRet.f32 %778, 0
  %780 = extractvalue %dx.types.ResRet.f32 %778, 1
  %781 = extractvalue %dx.types.ResRet.f32 %778, 2
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 1
  %784 = fmul fast float %783, %779
  %785 = fmul fast float %783, %780
  %786 = fmul fast float %783, %781
  br label %787

; <label>:787                                     ; preds = %736, %705
  %788 = phi float [ %775, %736 ], [ 1.000000e+00, %705 ]
  %789 = phi float [ %776, %736 ], [ 1.000000e+00, %705 ]
  %790 = phi float [ %777, %736 ], [ 1.000000e+00, %705 ]
  %791 = phi float [ %784, %736 ], [ 0.000000e+00, %705 ]
  %792 = phi float [ %785, %736 ], [ 0.000000e+00, %705 ]
  %793 = phi float [ %786, %736 ], [ 0.000000e+00, %705 ]
  %794 = fmul fast float %791, %668
  %795 = fmul fast float %792, %668
  %796 = fmul fast float %793, %668
  %797 = call float @dx.op.dot3.f32(i32 55, float %788, float %789, float %790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %798 = call float @dx.op.dot3.f32(i32 55, float %794, float %795, float %796, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %799 = select i1 %100, float %797, float %788
  %800 = select i1 %100, float %797, float %789
  %801 = select i1 %100, float 1.000000e+00, float %790
  %802 = select i1 %100, float %798, float %794
  %803 = select i1 %100, float 0.000000e+00, float %795
  %804 = select i1 %100, float 0.000000e+00, float %796
  %805 = fmul fast float %799, %690
  %806 = fmul fast float %800, %693
  %807 = fmul fast float %801, %696
  %808 = fadd fast float %805, %802
  %809 = fadd fast float %806, %803
  %810 = fadd fast float %804, %807
  br label %811

; <label>:811                                     ; preds = %787, %686
  %812 = phi float [ %663, %787 ], [ %37, %686 ]
  %813 = phi float [ %808, %787 ], [ %690, %686 ]
  %814 = phi float [ %809, %787 ], [ %693, %686 ]
  %815 = phi float [ %810, %787 ], [ %696, %686 ]
  %816 = phi float [ %788, %787 ], [ 1.000000e+00, %686 ]
  br i1 %704, label %1212, label %817

; <label>:817                                     ; preds = %811
  %818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %23, float %24, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = extractvalue %dx.types.ResRet.f32 %818, 1
  %821 = extractvalue %dx.types.ResRet.f32 %818, 2
  %822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %23, float %24, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %823 = extractvalue %dx.types.ResRet.f32 %822, 0
  %824 = extractvalue %dx.types.ResRet.f32 %822, 1
  %825 = extractvalue %dx.types.ResRet.f32 %822, 2
  %826 = fmul fast float %819, %668
  %827 = fmul fast float %820, %668
  %828 = fmul fast float %821, %668
  %829 = fmul fast float %823, %816
  %830 = call float @dx.op.dot3.f32(i32 55, float %823, float %824, float %825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = call float @dx.op.dot3.f32(i32 55, float %826, float %827, float %828, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %832 = select i1 %100, float %830, float %823
  %833 = select i1 %100, float %830, float %824
  %834 = select i1 %100, float 1.000000e+00, float %825
  %835 = select i1 %100, float %831, float %826
  %836 = select i1 %100, float 0.000000e+00, float %827
  %837 = select i1 %100, float 0.000000e+00, float %828
  %838 = fmul fast float %832, %813
  %839 = fmul fast float %833, %814
  %840 = fmul fast float %834, %815
  %841 = fadd fast float %838, %835
  %842 = fadd fast float %839, %836
  %843 = fadd fast float %840, %837
  %844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %845 = extractvalue %dx.types.CBufRet.i32 %844, 0
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %1212, label %847, !dx.controlflow.hints !69

; <label>:847                                     ; preds = %817
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 2
  %850 = extractvalue %dx.types.CBufRet.f32 %848, 3
  %851 = fmul fast float %849, %42
  %852 = fmul fast float %850, %43
  %853 = fmul fast float %851, 2.000000e+00
  %854 = fmul fast float %852, 2.000000e+00
  %855 = fsub fast float 1.000000e+00, %853
  %856 = fsub fast float 1.000000e+00, %854
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %860 = extractvalue %dx.types.CBufRet.f32 %857, 2
  %861 = fmul fast float %855, %858
  %862 = fmul fast float %855, %859
  %863 = fmul fast float %855, %860
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = extractvalue %dx.types.CBufRet.f32 %864, 1
  %867 = extractvalue %dx.types.CBufRet.f32 %864, 2
  %868 = fmul fast float %856, %865
  %869 = fmul fast float %856, %866
  %870 = fmul fast float %856, %867
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = extractvalue %dx.types.CBufRet.f32 %871, 1
  %874 = extractvalue %dx.types.CBufRet.f32 %871, 2
  %875 = fadd fast float %868, %872
  %876 = fadd fast float %875, %861
  %877 = fadd fast float %869, %873
  %878 = fadd fast float %877, %862
  %879 = fadd fast float %870, %874
  %880 = fadd fast float %879, %863
  %881 = fmul fast float %876, %812
  %882 = fmul fast float %878, %812
  %883 = fmul fast float %880, %812
  %884 = fmul fast float %881, %881
  %885 = fmul fast float %882, %882
  %886 = fadd fast float %884, %885
  %887 = fmul fast float %883, %883
  %888 = fadd fast float %886, %887
  %889 = call float @dx.op.unary.f32(i32 24, float %888)  ; Sqrt(value)
  %890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.f32 %890, 0
  %892 = fsub fast float %889, %891
  %893 = extractvalue %dx.types.CBufRet.f32 %890, 2
  %894 = fmul fast float %892, %893
  %895 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  %896 = fadd fast float %895, -5.000000e-01
  %897 = fmul fast float %896, 2.000000e+00
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 2
  %900 = call float @dx.op.binary.f32(i32 36, float %899, float %897)  ; FMin(a,b)
  %901 = fsub fast float -0.000000e+00, %899
  %902 = fcmp fast ogt float %900, %901
  br i1 %902, label %903, label %1212, !dx.controlflow.hints !70

; <label>:903                                     ; preds = %847
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 3
  %906 = fcmp fast ogt float %905, 0.000000e+00
  br i1 %906, label %907, label %982, !dx.controlflow.hints !71

; <label>:907                                     ; preds = %903
  %908 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %909 = extractvalue %dx.types.Dimensions %908, 0
  %910 = sitofp i32 %909 to float
  %911 = extractvalue %dx.types.Dimensions %908, 1
  %912 = sitofp i32 %911 to float
  %913 = fmul fast float %851, %910
  %914 = fmul fast float %852, %912
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 1
  %917 = fsub fast float -0.000000e+00, %916
  %918 = fptoui float %917 to i32
  %919 = fptoui float %913 to i32
  %920 = fptoui float %914 to i32
  %921 = and i32 %918, 31
  %922 = lshr i32 %919, %921
  %923 = lshr i32 %920, %921
  %924 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %918, i32 %922, i32 %923, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %925 = extractvalue %dx.types.ResRet.f32 %924, 0
  %926 = fcmp fast olt float %925, -1.000000e+00
  %927 = fcmp fast ogt float %925, -1.000000e+00
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %930 = select i1 %927, float %929, float 1.000000e+00
  %931 = fadd fast float %925, 1.000000e+00
  %932 = fmul fast float %930, %931
  %933 = call float @dx.op.unary.f32(i32 6, float %932)  ; FAbs(value)
  %934 = extractvalue %dx.types.CBufRet.f32 %928, 3
  %935 = fcmp fast oge float %933, %934
  %936 = select i1 %935, float 0x4197782600000000, float %933
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 0
  %939 = extractvalue %dx.types.CBufRet.f32 %937, 1
  %940 = extractvalue %dx.types.CBufRet.f32 %937, 2
  %941 = select i1 %926, float %938, float %858
  %942 = select i1 %926, float %939, float %859
  %943 = select i1 %926, float %940, float %860
  %944 = fmul fast float %941, %855
  %945 = fmul fast float %942, %855
  %946 = fmul fast float %943, %855
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = extractvalue %dx.types.CBufRet.f32 %947, 1
  %950 = extractvalue %dx.types.CBufRet.f32 %947, 2
  %951 = select i1 %926, float %948, float %865
  %952 = select i1 %926, float %949, float %866
  %953 = select i1 %926, float %950, float %867
  %954 = fmul fast float %951, %856
  %955 = fmul fast float %952, %856
  %956 = fmul fast float %953, %856
  %957 = fadd fast float %954, %944
  %958 = fadd fast float %955, %945
  %959 = fadd fast float %956, %946
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 0
  %962 = extractvalue %dx.types.CBufRet.f32 %960, 1
  %963 = extractvalue %dx.types.CBufRet.f32 %960, 2
  %964 = select i1 %926, float %961, float %872
  %965 = select i1 %926, float %962, float %873
  %966 = select i1 %926, float %963, float %874
  %967 = fadd fast float %957, %964
  %968 = fadd fast float %958, %965
  %969 = fadd fast float %959, %966
  %970 = fmul fast float %967, %936
  %971 = fmul fast float %968, %936
  %972 = fmul fast float %969, %936
  %973 = fmul fast float %970, %970
  %974 = fmul fast float %971, %971
  %975 = fadd fast float %973, %974
  %976 = fmul fast float %972, %972
  %977 = fadd fast float %975, %976
  %978 = call float @dx.op.unary.f32(i32 24, float %977)  ; Sqrt(value)
  %979 = fsub fast float %978, %891
  %980 = fmul fast float %979, %893
  %981 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  br label %982

; <label>:982                                     ; preds = %907, %903
  %983 = phi float [ %981, %907 ], [ 1.000000e+00, %903 ]
  %984 = fmul fast float %900, 5.000000e-01
  %985 = fadd fast float %984, 5.000000e-01
  %986 = call float @dx.op.unary.f32(i32 22, float %985)  ; Frc(value)
  %987 = call float @dx.op.unary.f32(i32 27, float %986)  ; Round_ni(value)
  %988 = call float @dx.op.unary.f32(i32 22, float %986)  ; Frc(value)
  %989 = fmul fast float %988, 2.000000e+00
  %990 = fadd fast float %989, -1.000000e+00
  %991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %851, float %852, float %987, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %992 = extractvalue %dx.types.ResRet.f32 %991, 0
  %993 = extractvalue %dx.types.ResRet.f32 %991, 1
  %994 = extractvalue %dx.types.ResRet.f32 %991, 2
  %995 = extractvalue %dx.types.ResRet.f32 %991, 3
  %996 = fadd fast float %992, -5.000000e-01
  %997 = fadd fast float %994, -5.000000e-01
  %998 = fmul fast float %996, 0xBFD5555560000000
  %999 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %997, float %998)  ; FMad(a,b,c)
  %1000 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %993, float 0.000000e+00)  ; FMad(a,b,c)
  %1001 = fadd fast float %1000, %995
  %1002 = fmul fast float %996, -7.500000e-01
  %1003 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %997, float %1002)  ; FMad(a,b,c)
  %1004 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %993, float 0.000000e+00)  ; FMad(a,b,c)
  %1005 = fadd fast float %1004, %995
  %1006 = call float @dx.op.binary.f32(i32 35, float %999, float -1.000000e+00)  ; FMax(a,b)
  %1007 = call float @dx.op.binary.f32(i32 35, float %1001, float -1.000000e+00)  ; FMax(a,b)
  %1008 = call float @dx.op.binary.f32(i32 35, float %1003, float -1.000000e+00)  ; FMax(a,b)
  %1009 = call float @dx.op.binary.f32(i32 35, float %1005, float -1.000000e+00)  ; FMax(a,b)
  %1010 = call float @dx.op.binary.f32(i32 36, float %1006, float 1.000000e+00)  ; FMin(a,b)
  %1011 = call float @dx.op.binary.f32(i32 36, float %1007, float 1.000000e+00)  ; FMin(a,b)
  %1012 = call float @dx.op.binary.f32(i32 36, float %1008, float 1.000000e+00)  ; FMin(a,b)
  %1013 = call float @dx.op.binary.f32(i32 36, float %1009, float 1.000000e+00)  ; FMin(a,b)
  %1014 = fcmp fast olt float %1010, 0x3FEFFF8020000000
  br i1 %1014, label %1015, label %1130, !dx.controlflow.hints !72

; <label>:1015                                    ; preds = %982
  %1016 = extractvalue %dx.types.CBufRet.f32 %898, 3
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.CBufRet.f32 %1017, 1
  %1020 = extractvalue %dx.types.CBufRet.f32 %1017, 2
  %1021 = extractvalue %dx.types.CBufRet.f32 %1017, 3
  %1022 = fsub fast float %1018, %1010
  %1023 = fsub fast float %1019, %1011
  %1024 = fsub fast float %1020, %1012
  %1025 = fsub fast float %1021, %1013
  %1026 = fmul fast float %1022, %1016
  %1027 = fmul fast float %1023, %1016
  %1028 = fmul fast float %1024, %1016
  %1029 = fmul fast float %1025, %1016
  %1030 = fadd fast float %1026, %1010
  %1031 = fadd fast float %1027, %1011
  %1032 = fsub fast float -0.000000e+00, %1031
  %1033 = fadd fast float %1028, %1012
  %1034 = fadd fast float %1029, %1013
  %1035 = fmul fast float %1030, %1030
  %1036 = fsub fast float %1031, %1035
  %1037 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1036)  ; FMax(a,b)
  %1038 = fdiv fast float 1.000000e+00, %1037
  %1039 = fmul fast float %1031, %1030
  %1040 = fsub fast float %1033, %1039
  %1041 = fsub fast float %990, %1030
  %1042 = fmul fast float %990, %990
  %1043 = fsub fast float %1042, %1031
  %1044 = fmul fast float %1041, %1038
  %1045 = fmul fast float %1044, %1040
  %1046 = fsub fast float %1043, %1045
  %1047 = fmul fast float %1031, %1031
  %1048 = fsub fast float %1034, %1047
  %1049 = fmul fast float %1040, %1040
  %1050 = fmul fast float %1049, %1038
  %1051 = fsub fast float %1048, %1050
  %1052 = fdiv fast float %1046, %1051
  %1053 = fmul fast float %1040, %1052
  %1054 = fsub fast float %1041, %1053
  %1055 = fmul fast float %1054, %1038
  %1056 = fmul fast float %1055, %1030
  %1057 = fsub fast float 1.000000e+00, %1056
  %1058 = fmul fast float %1031, %1052
  %1059 = fsub fast float %1057, %1058
  %1060 = fmul fast float %1055, %1055
  %1061 = fmul fast float %1052, 4.000000e+00
  %1062 = fmul fast float %1061, %1059
  %1063 = fsub fast float %1060, %1062
  %1064 = call float @dx.op.unary.f32(i32 24, float %1063)  ; Sqrt(value)
  %1065 = fcmp fast oge float %1055, 0.000000e+00
  %1066 = fsub fast float -0.000000e+00, %1064
  %1067 = select i1 %1065, float %1066, float %1064
  %1068 = fsub fast float %1067, %1055
  %1069 = fdiv fast float %1068, %1052
  %1070 = fdiv fast float %1059, %1068
  %1071 = fmul fast float %1069, 5.000000e-01
  %1072 = fmul fast float %1070, 2.000000e+00
  %1073 = select i1 %1065, float %1071, float %1072
  %1074 = select i1 %1065, float %1072, float %1071
  %1075 = call float @dx.op.binary.f32(i32 35, float %1073, float %1074)  ; FMax(a,b)
  %1076 = call float @dx.op.binary.f32(i32 36, float %1073, float %1074)  ; FMin(a,b)
  %1077 = fcmp fast ogt float %990, %1076
  br i1 %1077, label %1078, label %1088

; <label>:1078                                    ; preds = %1015
  %1079 = fsub fast float %990, %1076
  %1080 = fsub fast float %1075, %1076
  %1081 = fmul fast float %1079, %1080
  %1082 = fmul fast float %1075, %990
  %1083 = fadd fast float %1075, %990
  %1084 = fmul fast float %1083, %1030
  %1085 = fadd fast float %1082, %1031
  %1086 = fsub fast float %1085, %1084
  %1087 = fdiv fast float %1086, %1081
  br label %1088

; <label>:1088                                    ; preds = %1078, %1015
  %1089 = phi float [ %1087, %1078 ], [ 0.000000e+00, %1015 ]
  %1090 = fcmp fast ogt float %990, %1075
  %1091 = fsub fast float %990, %1075
  br i1 %1090, label %1092, label %1102

; <label>:1092                                    ; preds = %1088
  %1093 = fsub fast float %1075, %1076
  %1094 = fmul fast float %1093, %1091
  %1095 = fmul fast float %1076, %990
  %1096 = fadd fast float %1076, %990
  %1097 = fmul fast float %1096, %1030
  %1098 = fsub fast float %1032, %1095
  %1099 = fadd fast float %1098, %1097
  %1100 = fdiv fast float %1099, %1094
  %1101 = fadd fast float %1100, %1089
  br label %1102

; <label>:1102                                    ; preds = %1092, %1088
  %1103 = phi float [ %1101, %1092 ], [ %1089, %1088 ]
  %1104 = fsub fast float %990, %1076
  %1105 = fmul fast float %1104, %1091
  %1106 = fmul fast float %1076, %1075
  %1107 = fadd fast float %1076, %1075
  %1108 = fmul fast float %1107, %1030
  %1109 = fadd fast float %1106, %1031
  %1110 = fsub fast float %1109, %1108
  %1111 = fdiv fast float %1110, %1105
  %1112 = call float @dx.op.unary.f32(i32 7, float %1103)  ; Saturate(value)
  %1113 = fcmp fast oeq float %687, 0.000000e+00
  %1114 = extractvalue %dx.types.CBufRet.f32 %898, 0
  %1115 = fcmp fast oeq float %1114, 0.000000e+00
  %1116 = or i1 %1113, %1115
  %1117 = fmul fast float %1114, 2.000000e+00
  %1118 = fadd fast float %899, %900
  %1119 = fdiv fast float %1118, %1117
  %1120 = call float @dx.op.unary.f32(i32 7, float %1119)  ; Saturate(value)
  %1121 = fmul fast float %1120, 2.000000e+00
  %1122 = fsub fast float 3.000000e+00, %1121
  %1123 = fmul fast float %1120, %1120
  %1124 = fmul fast float %1123, %1122
  %1125 = select i1 %1116, float 1.000000e+00, float %1124
  %1126 = fmul fast float %1111, %687
  %1127 = fadd fast float %1112, %1126
  %1128 = call float @dx.op.unary.f32(i32 7, float %1127)  ; Saturate(value)
  %1129 = fmul fast float %1125, %1128
  br label %1130

; <label>:1130                                    ; preds = %1102, %982
  %1131 = phi float [ %1129, %1102 ], [ 0.000000e+00, %982 ]
  %1132 = fsub fast float 1.000000e+00, %1131
  %1133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %851, float %852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1134 = extractvalue %dx.types.ResRet.f32 %1133, 0
  %1135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.i32 %1135, 2
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1143, label %1138

; <label>:1138                                    ; preds = %1130
  %1139 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  %1140 = fadd fast float %1134, -1.000000e+00
  %1141 = fmul fast float %1139, %1140
  %1142 = fadd fast float %1141, 1.000000e+00
  br label %1143

; <label>:1143                                    ; preds = %1138, %1130
  %1144 = phi float [ %1142, %1138 ], [ %1132, %1130 ]
  br i1 %906, label %1145, label %1163

; <label>:1145                                    ; preds = %1143
  %1146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1147 = extractvalue %dx.types.CBufRet.f32 %1146, 1
  %1148 = fsub fast float %983, %1147
  %1149 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1150 = fsub fast float %983, %905
  %1151 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  %1152 = fsub fast float %1149, %1151
  %1153 = fsub fast float %985, %1151
  %1154 = fdiv fast float %1153, %1152
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  %1156 = fmul fast float %1155, 2.000000e+00
  %1157 = fsub fast float 3.000000e+00, %1156
  %1158 = fsub fast float %1134, %1144
  %1159 = fmul fast float %1155, %1155
  %1160 = fmul fast float %1159, %1158
  %1161 = fmul fast float %1160, %1157
  %1162 = fadd fast float %1161, %1144
  br label %1163

; <label>:1163                                    ; preds = %1145, %1143
  %1164 = phi float [ %1162, %1145 ], [ %1144, %1143 ]
  %1165 = call float @dx.op.binary.f32(i32 35, float %1134, float %1164)  ; FMax(a,b)
  %1166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.i32 %1166, 2
  %1168 = and i32 %1167, 1
  %1169 = icmp eq i32 %1168, 0
  %1170 = fcmp fast une float %1165, 1.000000e+00
  %1171 = and i1 %1170, %1169
  br i1 %1171, label %1172, label %1191

; <label>:1172                                    ; preds = %1163
  %1173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %851, float %852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1175 = extractvalue %dx.types.ResRet.f32 %1173, 1
  %1176 = extractvalue %dx.types.ResRet.f32 %1173, 2
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 1
  %1179 = fmul fast float %1178, %1174
  %1180 = fmul fast float %1178, %1175
  %1181 = fmul fast float %1178, %1176
  %1182 = fcmp fast ogt float %1134, 0x3FEFFF2E40000000
  %1183 = fsub fast float 1.000000e+00, %1165
  %1184 = fsub fast float 1.000000e+00, %1134
  %1185 = fdiv fast float %1183, %1184
  %1186 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  %1187 = select i1 %1182, float 0.000000e+00, float %1186
  %1188 = fmul fast float %1179, %1187
  %1189 = fmul fast float %1180, %1187
  %1190 = fmul fast float %1181, %1187
  br label %1191

; <label>:1191                                    ; preds = %1172, %1163
  %1192 = phi float [ 0.000000e+00, %1163 ], [ %1188, %1172 ]
  %1193 = phi float [ 0.000000e+00, %1163 ], [ %1189, %1172 ]
  %1194 = phi float [ 0.000000e+00, %1163 ], [ %1190, %1172 ]
  %1195 = fmul fast float %1192, %668
  %1196 = fmul fast float %1193, %668
  %1197 = fmul fast float %1194, %668
  %1198 = fmul fast float %1165, %829
  %1199 = call float @dx.op.dot3.f32(i32 55, float %1165, float %1165, float %1165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1200 = call float @dx.op.dot3.f32(i32 55, float %1195, float %1196, float %1197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1201 = select i1 %100, float %1199, float %1165
  %1202 = select i1 %100, float 1.000000e+00, float %1165
  %1203 = select i1 %100, float %1200, float %1195
  %1204 = select i1 %100, float 0.000000e+00, float %1196
  %1205 = select i1 %100, float 0.000000e+00, float %1197
  %1206 = fmul fast float %1201, %841
  %1207 = fmul fast float %1201, %842
  %1208 = fmul fast float %1202, %843
  %1209 = fadd fast float %1206, %1203
  %1210 = fadd fast float %1207, %1204
  %1211 = fadd fast float %1205, %1208
  br label %1212

; <label>:1212                                    ; preds = %1191, %847, %817, %811
  %1213 = phi float [ %813, %811 ], [ %841, %817 ], [ %1209, %1191 ], [ %841, %847 ]
  %1214 = phi float [ %814, %811 ], [ %842, %817 ], [ %1210, %1191 ], [ %842, %847 ]
  %1215 = phi float [ %815, %811 ], [ %843, %817 ], [ %1211, %1191 ], [ %843, %847 ]
  %1216 = phi float [ %816, %811 ], [ %829, %817 ], [ %1198, %1191 ], [ %829, %847 ]
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1219 = extractvalue %dx.types.CBufRet.f32 %1217, 3
  %1220 = fmul fast float %1218, %42
  %1221 = fmul fast float %1219, %43
  %1222 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1223 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1224 = select i1 %704, i32 2, i32 0
  %1225 = or i32 %1224, 1
  %1226 = uitofp i32 %1225 to float
  %1227 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1222, float %1223, float %1226, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.ResRet.f32 %1227, 2
  %1231 = extractvalue %dx.types.ResRet.f32 %1227, 3
  %1232 = add nuw nsw i32 %1224, 2
  %1233 = uitofp i32 %1232 to float
  %1234 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1222, float %1223, float %1233, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = extractvalue %dx.types.ResRet.f32 %1234, 1
  %1237 = extractvalue %dx.types.ResRet.f32 %1234, 2
  %1238 = extractvalue %dx.types.ResRet.f32 %1234, 3
  %1239 = call float @dx.op.binary.f32(i32 35, float %1229, float %1230)  ; FMax(a,b)
  %1240 = call float @dx.op.binary.f32(i32 35, float %1228, float %1239)  ; FMax(a,b)
  %1241 = call float @dx.op.binary.f32(i32 35, float %1240, float %1231)  ; FMax(a,b)
  %1242 = call float @dx.op.binary.f32(i32 36, float %1236, float %1237)  ; FMin(a,b)
  %1243 = call float @dx.op.binary.f32(i32 36, float %1235, float %1242)  ; FMin(a,b)
  %1244 = call float @dx.op.binary.f32(i32 36, float %1243, float %1238)  ; FMin(a,b)
  %1245 = fmul fast float %1241, 2.550000e+02
  %1246 = fadd fast float %1245, 0x3F70101020000000
  %1247 = fptoui float %1246 to i32
  %1248 = fmul fast float %1244, 2.550000e+02
  %1249 = fadd fast float %1248, 0x3F70101020000000
  %1250 = fptoui float %1249 to i32
  %1251 = icmp ult i32 %1247, %1250
  br i1 %1251, label %1252, label %1304

; <label>:1252                                    ; preds = %1212
  %1253 = fcmp fast ogt float %36, 9.843750e-01
  %1254 = fadd fast float %812, -4.000000e+00
  %1255 = select i1 %1253, float -4.000000e+00, float %1254
  %1256 = call float @dx.op.binary.f32(i32 35, float %1255, float 0.000000e+00)  ; FMax(a,b)
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = fadd fast float %1258, %1256
  %1260 = extractvalue %dx.types.CBufRet.f32 %1257, 2
  %1261 = fmul fast float %1259, %1260
  %1262 = call float @dx.op.unary.f32(i32 23, float %1261)  ; Log(value)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1257, 3
  %1264 = fmul fast float %1263, %1262
  %1265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1266 = extractvalue %dx.types.CBufRet.f32 %1265, 2
  %1267 = fmul fast float %1264, %1266
  %1268 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1269 = uitofp i32 %1247 to float
  %1270 = uitofp i32 %1250 to float
  %1271 = fadd fast float %1269, 5.000000e-01
  %1272 = fadd fast float %1270, 5.000000e-01
  %1273 = fmul fast float %1266, %1271
  %1274 = fmul fast float %1266, %1272
  %1275 = fadd fast float %1273, 0x3F0FFB4800000000
  %1276 = fadd fast float %1274, 0xBF0FFB4800000000
  %1277 = call float @dx.op.binary.f32(i32 35, float %1268, float %1275)  ; FMax(a,b)
  %1278 = call float @dx.op.binary.f32(i32 36, float %1277, float %1276)  ; FMin(a,b)
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 1
  %1281 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1282 = extractvalue %dx.types.CBufRet.f32 %1279, 0
  %1283 = select i1 %704, float %1282, float 0.000000e+00
  %1284 = fmul fast float %1280, %1278
  %1285 = fadd fast float %1283, %1284
  %1286 = fadd fast float %1283, %1281
  %1287 = fsub fast float %1280, %1281
  %1288 = fadd fast float %1287, %1283
  %1289 = call float @dx.op.binary.f32(i32 35, float %1285, float %1286)  ; FMax(a,b)
  %1290 = call float @dx.op.binary.f32(i32 36, float %1289, float %1288)  ; FMin(a,b)
  %1291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1222, float %1223, float %1290, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1292 = extractvalue %dx.types.ResRet.f32 %1291, 0
  %1293 = extractvalue %dx.types.ResRet.f32 %1291, 1
  %1294 = extractvalue %dx.types.ResRet.f32 %1291, 2
  %1295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1222, float %1223, float %1290, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1296 = extractvalue %dx.types.ResRet.f32 %1295, 0
  %1297 = extractvalue %dx.types.ResRet.f32 %1295, 1
  %1298 = extractvalue %dx.types.ResRet.f32 %1295, 2
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 1
  %1301 = fmul fast float %1300, %1296
  %1302 = fmul fast float %1300, %1297
  %1303 = fmul fast float %1300, %1298
  br label %1304

; <label>:1304                                    ; preds = %1252, %1212
  %1305 = phi float [ %1292, %1252 ], [ 1.000000e+00, %1212 ]
  %1306 = phi float [ %1293, %1252 ], [ 1.000000e+00, %1212 ]
  %1307 = phi float [ %1294, %1252 ], [ 1.000000e+00, %1212 ]
  %1308 = phi float [ %1301, %1252 ], [ 0.000000e+00, %1212 ]
  %1309 = phi float [ %1302, %1252 ], [ 0.000000e+00, %1212 ]
  %1310 = phi float [ %1303, %1252 ], [ 0.000000e+00, %1212 ]
  %1311 = fmul fast float %1308, %668
  %1312 = fmul fast float %1309, %668
  %1313 = fmul fast float %1310, %668
  %1314 = fmul fast float %1305, %1216
  %1315 = call float @dx.op.dot3.f32(i32 55, float %1305, float %1306, float %1307, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1316 = call float @dx.op.dot3.f32(i32 55, float %1311, float %1312, float %1313, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1317 = select i1 %100, float %1315, float %1305
  %1318 = select i1 %100, float %1315, float %1306
  %1319 = select i1 %100, float 1.000000e+00, float %1307
  %1320 = select i1 %100, float %1316, float %1311
  %1321 = select i1 %100, float 0.000000e+00, float %1312
  %1322 = select i1 %100, float 0.000000e+00, float %1313
  %1323 = fmul fast float %1317, %1213
  %1324 = fmul fast float %1318, %1214
  %1325 = fmul fast float %1319, %1215
  %1326 = fadd fast float %1323, %1320
  %1327 = fadd fast float %1324, %1321
  %1328 = fadd fast float %1322, %1325
  %1329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.i32 %1329, 3
  %1331 = and i32 %1330, 3
  %1332 = icmp ne i32 %1331, 0
  %1333 = and i32 %1330, 4
  %1334 = icmp ne i32 %1333, 0
  %1335 = and i1 %1332, %1334
  %1336 = and i1 %100, %1335
  br i1 %1336, label %1337, label %1343

; <label>:1337                                    ; preds = %1304
  %1338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1339 = extractvalue %dx.types.CBufRet.f32 %1338, 1
  %1340 = fadd fast float %1314, -1.000000e+00
  %1341 = fmul fast float %1339, %1340
  %1342 = fadd fast float %1341, 1.000000e+00
  br label %1343

; <label>:1343                                    ; preds = %1337, %1304
  %1344 = phi float [ %1342, %1337 ], [ %1314, %1304 ]
  %1345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1346 = extractvalue %dx.types.CBufRet.f32 %1345, 0
  br i1 %100, label %1347, label %1369

; <label>:1347                                    ; preds = %1343
  %1348 = fadd fast float %1326, %1327
  %1349 = fmul fast float %1346, %1348
  %1350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.f32 %1350, 3
  %1352 = extractvalue %dx.types.CBufRet.f32 %673, 1
  %1353 = fsub fast float %676, %1352
  %1354 = extractvalue %dx.types.CBufRet.f32 %673, 2
  %1355 = fmul fast float %1353, %1354
  %1356 = call float @dx.op.unary.f32(i32 7, float %1355)  ; Saturate(value)
  %1357 = fsub fast float %1356, %1351
  %1358 = fmul fast float %1357, %1344
  %1359 = fadd fast float %1358, %1351
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 0
  %1362 = fsub fast float %1359, %1361
  %1363 = fmul fast float %1362, 1.000000e+01
  %1364 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1365 = fsub fast float %647, %668
  %1366 = fmul fast float %1364, %1365
  %1367 = fadd fast float %1366, %668
  %1368 = fmul fast float %1367, %1359
  br label %1378

; <label>:1369                                    ; preds = %1343
  %1370 = fmul fast float %1346, %1326
  %1371 = fmul fast float %1346, %1327
  %1372 = fmul fast float %1346, %1328
  %1373 = call float @dx.op.binary.f32(i32 35, float %1371, float %1372)  ; FMax(a,b)
  %1374 = call float @dx.op.binary.f32(i32 35, float %1370, float %1373)  ; FMax(a,b)
  %1375 = call float @dx.op.binary.f32(i32 35, float %1374, float %668)  ; FMax(a,b)
  %1376 = fcmp fast ugt float %1375, 0x3F10000000000000
  br i1 %1376, label %1378, label %1377

; <label>:1377                                    ; preds = %1369
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1378

; <label>:1378                                    ; preds = %1377, %1369, %1347
  %1379 = phi float [ %1349, %1347 ], [ %1370, %1377 ], [ %1370, %1369 ]
  %1380 = phi float [ %1368, %1347 ], [ %1371, %1377 ], [ %1371, %1369 ]
  %1381 = phi float [ %1367, %1347 ], [ %1372, %1377 ], [ %1372, %1369 ]
  %1382 = phi float [ %1367, %1347 ], [ %668, %1377 ], [ %668, %1369 ]
  %1383 = fadd fast float %496, 0x3FE3C6EF40000000
  %1384 = call float @dx.op.unary.f32(i32 22, float %1383)  ; Frc(value)
  %1385 = call float @dx.op.unary.f32(i32 23, float %1379)  ; Log(value)
  %1386 = fadd fast float %1385, -7.000000e+00
  %1387 = call float @dx.op.unary.f32(i32 21, float %1386)  ; Exp(value)
  %1388 = fmul fast float %1384, 2.000000e+00
  %1389 = fadd fast float %1388, -1.000000e+00
  %1390 = fmul fast float %1387, %1389
  %1391 = fcmp fast ogt float %1379, 0.000000e+00
  %1392 = select i1 %1391, float %1390, float 0.000000e+00
  %1393 = fadd fast float %1392, %1379
  %1394 = fadd fast float %496, 0x3FF3C6EF40000000
  %1395 = call float @dx.op.unary.f32(i32 22, float %1394)  ; Frc(value)
  %1396 = call float @dx.op.unary.f32(i32 23, float %1380)  ; Log(value)
  %1397 = fadd fast float %1396, -7.000000e+00
  %1398 = call float @dx.op.unary.f32(i32 21, float %1397)  ; Exp(value)
  %1399 = fmul fast float %1395, 2.000000e+00
  %1400 = fadd fast float %1399, -1.000000e+00
  %1401 = fmul fast float %1398, %1400
  %1402 = fcmp fast ogt float %1380, 0.000000e+00
  %1403 = select i1 %1402, float %1401, float 0.000000e+00
  %1404 = fadd fast float %1403, %1380
  %1405 = fadd fast float %496, 0x3FFDAA66E0000000
  %1406 = call float @dx.op.unary.f32(i32 22, float %1405)  ; Frc(value)
  %1407 = call float @dx.op.unary.f32(i32 23, float %1381)  ; Log(value)
  %1408 = fadd fast float %1407, -6.000000e+00
  %1409 = call float @dx.op.unary.f32(i32 21, float %1408)  ; Exp(value)
  %1410 = fmul fast float %1406, 2.000000e+00
  %1411 = fadd fast float %1410, -1.000000e+00
  %1412 = fmul fast float %1409, %1411
  %1413 = fcmp fast ogt float %1381, 0.000000e+00
  %1414 = select i1 %1413, float %1412, float 0.000000e+00
  %1415 = fadd fast float %1414, %1381
  %1416 = select i1 %100, float %1380, float %1404
  %1417 = select i1 %100, float %1381, float %1415
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1418 = call float @dx.op.binary.f32(i32 36, float %1393, float 3.225500e+04)  ; FMin(a,b)
  %1419 = call float @dx.op.binary.f32(i32 36, float %1416, float 3.225500e+04)  ; FMin(a,b)
  %1420 = call float @dx.op.binary.f32(i32 36, float %1417, float 3.225500e+04)  ; FMin(a,b)
  %1421 = call float @dx.op.binary.f32(i32 36, float %1382, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1418)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1419)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1420)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1421)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1382)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
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
!24 = !{i32 15, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i32 0, !7}
!25 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!29 = !{!30, !31, !32, !33}
!30 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!34 = !{[30 x i32] [i32 28, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
!35 = !{void ()* @ps_main, !"ps_main", !36, !4, !60}
!36 = !{!37, !56, null}
!37 = !{!38, !41, !42, !44, !47, !49, !51, !53, !55}
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
!51 = !{i32 6, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 6, i8 0, !52}
!52 = !{i32 3, i32 1}
!53 = !{i32 7, !"COLOR", i8 5, i8 0, !54, i8 1, i32 1, i8 1, i32 6, i8 3, null}
!54 = !{i32 4}
!55 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !39, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
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
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}

