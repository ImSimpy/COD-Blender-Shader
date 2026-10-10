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
; shader hash: 2837df622aa50b827d9be657dbd3a389
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
  %177 = add i32 %23, 108
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
  br i1 %253, label %503, label %254, !dx.controlflow.hints !61

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
  %501 = fmul fast float %499, %212
  %502 = fmul fast float %501, %500
  br label %503

; <label>:503                                     ; preds = %494, %251
  %504 = phi float [ %496, %494 ], [ %35, %251 ]
  %505 = phi float [ %497, %494 ], [ %36, %251 ]
  %506 = phi float [ %498, %494 ], [ %37, %251 ]
  %507 = phi float [ %502, %494 ], [ %212, %251 ]
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 2
  %510 = fptosi float %42 to i32
  %511 = sitofp i32 %510 to float
  %512 = fadd fast float %509, %511
  %513 = fmul fast float %512, 0x3FE3C6EF40000000
  %514 = frem fast float %47, 2.560000e+02
  %515 = frem fast float %48, 2.560000e+02
  %516 = fptoui float %514 to i32
  %517 = fptoui float %515 to i32
  %518 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %516, i32 %517, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = fadd fast float %519, %513
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = and i32 %125, 1
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %580, label %524, !dx.controlflow.hints !64

; <label>:524                                     ; preds = %503
  %525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 2
  %527 = extractvalue %dx.types.ResRet.f32 %525, 3
  %528 = add i32 %122, 16
  %529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = extractvalue %dx.types.ResRet.f32 %529, 2
  %533 = add i32 %122, 32
  %534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = extractvalue %dx.types.ResRet.f32 %534, 1
  %537 = extractvalue %dx.types.ResRet.f32 %534, 2
  %538 = and i32 %125, 2
  %539 = icmp eq i32 %538, 0
  %540 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %541 = call float @dx.op.unary.f32(i32 25, float %540)  ; Rsqrt(value)
  %542 = fmul fast float %541, %30
  %543 = fmul fast float %541, %31
  %544 = fmul fast float %541, %32
  %545 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %546 = call float @dx.op.unary.f32(i32 25, float %545)  ; Rsqrt(value)
  %547 = fmul fast float %546, %82
  %548 = fmul fast float %546, %83
  %549 = fmul fast float %546, %84
  %550 = call float @dx.op.dot3.f32(i32 55, float %547, float %548, float %549, float %542, float %543, float %544)  ; Dot3(ax,ay,az,bx,by,bz)
  %551 = fmul fast float %550, %550
  %552 = fmul fast float %551, %526
  %553 = fadd fast float %552, %527
  %554 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  br i1 %539, label %555, label %565, !dx.controlflow.hints !65

; <label>:555                                     ; preds = %524
  %556 = extractvalue %dx.types.ResRet.f32 %525, 1
  %557 = extractvalue %dx.types.ResRet.f32 %525, 0
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 3
  %560 = fmul fast float %559, %545
  %561 = fsub fast float %557, %560
  %562 = fmul fast float %561, %556
  %563 = call float @dx.op.unary.f32(i32 7, float %562)  ; Saturate(value)
  %564 = fmul fast float %563, %554
  br label %565

; <label>:565                                     ; preds = %555, %524
  %566 = phi float [ %564, %555 ], [ %554, %524 ]
  %567 = fsub fast float %530, %535
  %568 = fsub fast float %531, %536
  %569 = fsub fast float %532, %537
  %570 = fmul fast float %566, %567
  %571 = fmul fast float %566, %568
  %572 = fmul fast float %566, %569
  %573 = fadd fast float %570, %535
  %574 = fadd fast float %571, %536
  %575 = fadd fast float %572, %537
  %576 = fmul fast float %573, %504
  %577 = fmul fast float %574, %505
  %578 = fmul fast float %575, %506
  %579 = fmul fast float %566, %507
  br label %580

; <label>:580                                     ; preds = %565, %503
  %581 = phi float [ %576, %565 ], [ %504, %503 ]
  %582 = phi float [ %577, %565 ], [ %505, %503 ]
  %583 = phi float [ %578, %565 ], [ %506, %503 ]
  %584 = phi float [ %579, %565 ], [ %507, %503 ]
  %585 = add i32 %23, 104
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = add i32 %587, 0
  %589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %588, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %590 = add i32 %23, 24
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %589, %dx.types.Handle %43, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = extractvalue %dx.types.ResRet.f32 %593, 2
  %597 = extractvalue %dx.types.ResRet.f32 %593, 3
  %598 = and i32 %592, 255
  %599 = uitofp i32 %598 to float
  %600 = lshr i32 %592, 8
  %601 = and i32 %600, 255
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %597, %599
  %604 = fadd fast float %603, %602
  %605 = fmul fast float %604, 0x3F70101000000000
  %606 = add i32 %23, 56
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = and i32 %608, 255
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = lshr i32 %608, 8
  %613 = and i32 %612, 255
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = lshr i32 %608, 16
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = add i32 %23, 40
  %621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.i32 %621, 0
  %623 = and i32 %622, 255
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F70101020000000
  %626 = lshr i32 %622, 8
  %627 = and i32 %626, 255
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %628, 0x3F70101020000000
  %630 = lshr i32 %622, 16
  %631 = and i32 %630, 255
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %632, 0x3F70101020000000
  %634 = fmul fast float %625, %625
  %635 = fmul fast float %629, %629
  %636 = fmul fast float %633, %633
  %637 = add i32 %23, 112
  %638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.i32 %638, 0
  %640 = add i32 %639, 0
  %641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %641, %dx.types.Handle %44, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = fmul fast float %634, %643
  %647 = fmul fast float %635, %644
  %648 = fmul fast float %636, %645
  %649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %28, float %29, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = extractvalue %dx.types.ResRet.f32 %649, 1
  %652 = extractvalue %dx.types.ResRet.f32 %649, 2
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %655 = fadd fast float %605, 0xBFB99999A0000000
  %656 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  %657 = fmul fast float %656, 0x3FF1C71C80000000
  %658 = fsub fast float 1.000000e+00, %657
  %659 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %660 = fmul fast float %594, %581
  %661 = fmul fast float %611, %611
  %662 = fmul fast float %661, %660
  %663 = fmul fast float %662, %659
  %664 = fmul fast float %595, %582
  %665 = fmul fast float %615, %615
  %666 = fmul fast float %665, %664
  %667 = fmul fast float %666, %659
  %668 = fmul fast float %596, %583
  %669 = fmul fast float %619, %619
  %670 = fmul fast float %669, %668
  %671 = fmul fast float %670, %659
  %672 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  %673 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  %674 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %675 = call float @dx.op.dot3.f32(i32 55, float %672, float %673, float %674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %676 = add i32 %23, 32
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %676, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = and i32 %678, 255
  %680 = uitofp i32 %679 to float
  %681 = lshr i32 %678, 8
  %682 = and i32 %681, 255
  %683 = uitofp i32 %682 to float
  %684 = fmul fast float %683, %675
  %685 = fadd fast float %684, %680
  %686 = fmul fast float %685, 0x3F70101020000000
  %687 = call float @dx.op.unary.f32(i32 7, float %686)  ; Saturate(value)
  %688 = and i32 %125, 8192
  %689 = icmp eq i32 %688, 0
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 0
  br i1 %689, label %698, label %692, !dx.controlflow.hints !66

; <label>:692                                     ; preds = %580
  %693 = add i32 %122, 176
  %694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.f32 %694, 0
  %696 = fcmp fast oge float %695, 0.000000e+00
  %697 = select i1 %696, float %695, float %691
  br label %698

; <label>:698                                     ; preds = %692, %580
  %699 = phi float [ %697, %692 ], [ %691, %580 ]
  %700 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %215, i32 %216, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = lshr i32 %701, 18
  %703 = uitofp i32 %702 to float
  %704 = fmul fast float %703, 0x3F4C00EBA0000000
  %705 = call float @dx.op.unary.f32(i32 21, float %704)  ; Exp(value)
  %706 = fadd fast float %705, -1.000000e+00
  %707 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %708 = extractvalue %dx.types.Dimensions %707, 0
  %709 = sitofp i32 %708 to float
  %710 = extractvalue %dx.types.Dimensions %707, 1
  %711 = sitofp i32 %710 to float
  %712 = fcmp fast oge float %213, %709
  %713 = fcmp fast oge float %214, %711
  %714 = or i1 %712, %713
  %715 = select i1 %714, float 0x4197782600000000, float %706
  %716 = fadd fast float %646, -1.000000e+00
  %717 = fadd fast float %647, -1.000000e+00
  %718 = fadd fast float %648, -1.000000e+00
  %719 = fmul fast float %716, %584
  %720 = fmul fast float %717, %584
  %721 = fmul fast float %718, %584
  %722 = fadd fast float %719, 1.000000e+00
  %723 = fadd fast float %720, 1.000000e+00
  %724 = fadd fast float %721, 1.000000e+00
  %725 = call float @dx.op.dot3.f32(i32 55, float %722, float %723, float %724, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %726 = fsub fast float 1.000000e+00, %725
  %727 = fmul fast float %699, %687
  %728 = fsub fast float 1.000000e+00, %687
  %729 = call float @dx.op.unary.f32(i32 7, float %728)  ; Saturate(value)
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %732 = fmul fast float %731, %729
  %733 = fadd fast float %732, %727
  %734 = and i32 %125, 2097152
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %740, label %736, !dx.controlflow.hints !67

; <label>:736                                     ; preds = %698
  %737 = add i32 %122, 192
  %738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  br label %743

; <label>:740                                     ; preds = %698
  %741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.f32 %741, 3
  br label %743

; <label>:743                                     ; preds = %740, %736
  %744 = phi float [ %739, %736 ], [ %742, %740 ]
  %745 = fmul fast float %650, %584
  %746 = fmul fast float %745, %654
  %747 = fmul fast float %746, %672
  %748 = fmul fast float %651, %584
  %749 = fmul fast float %748, %654
  %750 = fmul fast float %749, %673
  %751 = fmul fast float %652, %584
  %752 = fmul fast float %751, %654
  %753 = fmul fast float %752, %674
  %754 = icmp eq i32 %121, 3
  %755 = fcmp fast ogt float %42, %715
  %756 = and i1 %239, %755
  %757 = or i1 %754, %756
  %758 = icmp eq i32 %121, 2
  %759 = fcmp fast ole float %42, %715
  %760 = and i1 %758, %759
  %761 = or i1 %760, %757
  br i1 %756, label %762, label %868

; <label>:762                                     ; preds = %743
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %765 = extractvalue %dx.types.CBufRet.f32 %763, 3
  %766 = fmul fast float %764, %47
  %767 = fmul fast float %765, %48
  %768 = call float @dx.op.unary.f32(i32 7, float %766)  ; Saturate(value)
  %769 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  %770 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %768, float %769, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %771 = extractvalue %dx.types.ResRet.f32 %770, 0
  %772 = extractvalue %dx.types.ResRet.f32 %770, 1
  %773 = extractvalue %dx.types.ResRet.f32 %770, 2
  %774 = extractvalue %dx.types.ResRet.f32 %770, 3
  %775 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %768, float %769, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %776 = extractvalue %dx.types.ResRet.f32 %775, 0
  %777 = extractvalue %dx.types.ResRet.f32 %775, 1
  %778 = extractvalue %dx.types.ResRet.f32 %775, 2
  %779 = extractvalue %dx.types.ResRet.f32 %775, 3
  %780 = call float @dx.op.binary.f32(i32 35, float %772, float %773)  ; FMax(a,b)
  %781 = call float @dx.op.binary.f32(i32 35, float %771, float %780)  ; FMax(a,b)
  %782 = call float @dx.op.binary.f32(i32 35, float %781, float %774)  ; FMax(a,b)
  %783 = call float @dx.op.binary.f32(i32 36, float %777, float %778)  ; FMin(a,b)
  %784 = call float @dx.op.binary.f32(i32 36, float %776, float %783)  ; FMin(a,b)
  %785 = call float @dx.op.binary.f32(i32 36, float %784, float %779)  ; FMin(a,b)
  %786 = fmul fast float %782, 2.550000e+02
  %787 = fadd fast float %786, 0x3F70101020000000
  %788 = fptoui float %787 to i32
  %789 = fmul fast float %785, 2.550000e+02
  %790 = fadd fast float %789, 0x3F70101020000000
  %791 = fptoui float %790 to i32
  %792 = icmp ult i32 %788, %791
  br i1 %792, label %793, label %844

; <label>:793                                     ; preds = %762
  %794 = fcmp fast ogt float %41, 9.843750e-01
  %795 = fadd fast float %42, -4.000000e+00
  %796 = select i1 %794, float -4.000000e+00, float %795
  %797 = call float @dx.op.binary.f32(i32 35, float %796, float 0.000000e+00)  ; FMax(a,b)
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 0
  %800 = fadd fast float %799, %797
  %801 = extractvalue %dx.types.CBufRet.f32 %798, 2
  %802 = fmul fast float %800, %801
  %803 = call float @dx.op.unary.f32(i32 23, float %802)  ; Log(value)
  %804 = extractvalue %dx.types.CBufRet.f32 %798, 3
  %805 = fmul fast float %804, %803
  %806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %807 = extractvalue %dx.types.CBufRet.f32 %806, 2
  %808 = fmul fast float %805, %807
  %809 = call float @dx.op.unary.f32(i32 7, float %808)  ; Saturate(value)
  %810 = uitofp i32 %788 to float
  %811 = uitofp i32 %791 to float
  %812 = fadd fast float %810, 5.000000e-01
  %813 = fadd fast float %811, 5.000000e-01
  %814 = fmul fast float %807, %812
  %815 = fmul fast float %807, %813
  %816 = fadd fast float %814, 0x3F0FFB4800000000
  %817 = fadd fast float %815, 0xBF0FFB4800000000
  %818 = call float @dx.op.binary.f32(i32 35, float %809, float %816)  ; FMax(a,b)
  %819 = call float @dx.op.binary.f32(i32 36, float %818, float %817)  ; FMin(a,b)
  %820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %821 = extractvalue %dx.types.CBufRet.f32 %820, 1
  %822 = extractvalue %dx.types.CBufRet.f32 %820, 2
  %823 = extractvalue %dx.types.CBufRet.f32 %820, 0
  %824 = fmul fast float %821, %819
  %825 = fadd fast float %823, %824
  %826 = fadd fast float %823, %822
  %827 = fsub fast float %821, %822
  %828 = fadd fast float %827, %823
  %829 = call float @dx.op.binary.f32(i32 35, float %825, float %826)  ; FMax(a,b)
  %830 = call float @dx.op.binary.f32(i32 36, float %829, float %828)  ; FMin(a,b)
  %831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %768, float %769, float %830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = extractvalue %dx.types.ResRet.f32 %831, 1
  %834 = extractvalue %dx.types.ResRet.f32 %831, 2
  %835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %768, float %769, float %830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %836 = extractvalue %dx.types.ResRet.f32 %835, 0
  %837 = extractvalue %dx.types.ResRet.f32 %835, 1
  %838 = extractvalue %dx.types.ResRet.f32 %835, 2
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 1
  %841 = fmul fast float %840, %836
  %842 = fmul fast float %840, %837
  %843 = fmul fast float %840, %838
  br label %844

; <label>:844                                     ; preds = %793, %762
  %845 = phi float [ %832, %793 ], [ 1.000000e+00, %762 ]
  %846 = phi float [ %833, %793 ], [ 1.000000e+00, %762 ]
  %847 = phi float [ %834, %793 ], [ 1.000000e+00, %762 ]
  %848 = phi float [ %841, %793 ], [ 0.000000e+00, %762 ]
  %849 = phi float [ %842, %793 ], [ 0.000000e+00, %762 ]
  %850 = phi float [ %843, %793 ], [ 0.000000e+00, %762 ]
  %851 = fmul fast float %848, %726
  %852 = fmul fast float %849, %726
  %853 = fmul fast float %850, %726
  %854 = call float @dx.op.dot3.f32(i32 55, float %845, float %846, float %847, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %855 = call float @dx.op.dot3.f32(i32 55, float %851, float %852, float %853, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %856 = select i1 %105, float %854, float %845
  %857 = select i1 %105, float %854, float %846
  %858 = select i1 %105, float 1.000000e+00, float %847
  %859 = select i1 %105, float %855, float %851
  %860 = select i1 %105, float 0.000000e+00, float %852
  %861 = select i1 %105, float 0.000000e+00, float %853
  %862 = fmul fast float %856, %747
  %863 = fmul fast float %857, %750
  %864 = fmul fast float %858, %753
  %865 = fadd fast float %862, %859
  %866 = fadd fast float %863, %860
  %867 = fadd fast float %861, %864
  br label %868

; <label>:868                                     ; preds = %844, %743
  %869 = phi float [ %715, %844 ], [ %42, %743 ]
  %870 = phi float [ %865, %844 ], [ %747, %743 ]
  %871 = phi float [ %866, %844 ], [ %750, %743 ]
  %872 = phi float [ %867, %844 ], [ %753, %743 ]
  %873 = phi float [ %845, %844 ], [ 1.000000e+00, %743 ]
  br i1 %761, label %1169, label %874

; <label>:874                                     ; preds = %868
  %875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %876 = extractvalue %dx.types.ResRet.f32 %875, 0
  %877 = extractvalue %dx.types.ResRet.f32 %875, 1
  %878 = extractvalue %dx.types.ResRet.f32 %875, 2
  %879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %28, float %29, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %880 = extractvalue %dx.types.ResRet.f32 %879, 0
  %881 = extractvalue %dx.types.ResRet.f32 %879, 1
  %882 = extractvalue %dx.types.ResRet.f32 %879, 2
  %883 = fmul fast float %876, %726
  %884 = fmul fast float %877, %726
  %885 = fmul fast float %878, %726
  %886 = fmul fast float %880, %873
  %887 = call float @dx.op.dot3.f32(i32 55, float %880, float %881, float %882, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %888 = call float @dx.op.dot3.f32(i32 55, float %883, float %884, float %885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %889 = select i1 %105, float %887, float %880
  %890 = select i1 %105, float %887, float %881
  %891 = select i1 %105, float 1.000000e+00, float %882
  %892 = select i1 %105, float %888, float %883
  %893 = select i1 %105, float 0.000000e+00, float %884
  %894 = select i1 %105, float 0.000000e+00, float %885
  %895 = fmul fast float %889, %870
  %896 = fmul fast float %890, %871
  %897 = fmul fast float %891, %872
  %898 = fadd fast float %895, %892
  %899 = fadd fast float %896, %893
  %900 = fadd fast float %897, %894
  %901 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.i32 %901, 0
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %1169, label %904, !dx.controlflow.hints !68

; <label>:904                                     ; preds = %874
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 2
  %907 = extractvalue %dx.types.CBufRet.f32 %905, 3
  %908 = fmul fast float %906, %47
  %909 = fmul fast float %907, %48
  %910 = fmul fast float %908, 2.000000e+00
  %911 = fmul fast float %909, 2.000000e+00
  %912 = fsub fast float 1.000000e+00, %910
  %913 = fsub fast float 1.000000e+00, %911
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 0
  %916 = extractvalue %dx.types.CBufRet.f32 %914, 1
  %917 = extractvalue %dx.types.CBufRet.f32 %914, 2
  %918 = fmul fast float %912, %915
  %919 = fmul fast float %912, %916
  %920 = fmul fast float %912, %917
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 0
  %923 = extractvalue %dx.types.CBufRet.f32 %921, 1
  %924 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %925 = fmul fast float %913, %922
  %926 = fmul fast float %913, %923
  %927 = fmul fast float %913, %924
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %930 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %931 = extractvalue %dx.types.CBufRet.f32 %928, 2
  %932 = fadd fast float %925, %929
  %933 = fadd fast float %932, %918
  %934 = fadd fast float %926, %930
  %935 = fadd fast float %934, %919
  %936 = fadd fast float %927, %931
  %937 = fadd fast float %936, %920
  %938 = fmul fast float %933, %869
  %939 = fmul fast float %935, %869
  %940 = fmul fast float %937, %869
  %941 = fmul fast float %938, %938
  %942 = fmul fast float %939, %939
  %943 = fadd fast float %941, %942
  %944 = fmul fast float %940, %940
  %945 = fadd fast float %943, %944
  %946 = call float @dx.op.unary.f32(i32 24, float %945)  ; Sqrt(value)
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = fsub fast float %946, %948
  %950 = extractvalue %dx.types.CBufRet.f32 %947, 2
  %951 = fmul fast float %949, %950
  %952 = call float @dx.op.unary.f32(i32 7, float %951)  ; Saturate(value)
  %953 = fadd fast float %952, -5.000000e-01
  %954 = fmul fast float %953, 2.000000e+00
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %957 = call float @dx.op.binary.f32(i32 36, float %956, float %954)  ; FMin(a,b)
  %958 = fsub fast float -0.000000e+00, %956
  %959 = fcmp fast ogt float %957, %958
  br i1 %959, label %960, label %1169, !dx.controlflow.hints !69

; <label>:960                                     ; preds = %904
  %961 = fmul fast float %957, 5.000000e-01
  %962 = fadd fast float %961, 5.000000e-01
  %963 = call float @dx.op.unary.f32(i32 22, float %962)  ; Frc(value)
  %964 = call float @dx.op.unary.f32(i32 27, float %963)  ; Round_ni(value)
  %965 = call float @dx.op.unary.f32(i32 22, float %963)  ; Frc(value)
  %966 = fmul fast float %965, 2.000000e+00
  %967 = fadd fast float %966, -1.000000e+00
  %968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %908, float %909, float %964, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %969 = extractvalue %dx.types.ResRet.f32 %968, 0
  %970 = extractvalue %dx.types.ResRet.f32 %968, 1
  %971 = extractvalue %dx.types.ResRet.f32 %968, 2
  %972 = extractvalue %dx.types.ResRet.f32 %968, 3
  %973 = fadd fast float %969, -5.000000e-01
  %974 = fadd fast float %971, -5.000000e-01
  %975 = fmul fast float %973, 0xBFD5555560000000
  %976 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %974, float %975)  ; FMad(a,b,c)
  %977 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %970, float 0.000000e+00)  ; FMad(a,b,c)
  %978 = fadd fast float %977, %972
  %979 = fmul fast float %973, -7.500000e-01
  %980 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %974, float %979)  ; FMad(a,b,c)
  %981 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %970, float 0.000000e+00)  ; FMad(a,b,c)
  %982 = fadd fast float %981, %972
  %983 = call float @dx.op.binary.f32(i32 35, float %976, float -1.000000e+00)  ; FMax(a,b)
  %984 = call float @dx.op.binary.f32(i32 35, float %978, float -1.000000e+00)  ; FMax(a,b)
  %985 = call float @dx.op.binary.f32(i32 35, float %980, float -1.000000e+00)  ; FMax(a,b)
  %986 = call float @dx.op.binary.f32(i32 35, float %982, float -1.000000e+00)  ; FMax(a,b)
  %987 = call float @dx.op.binary.f32(i32 36, float %983, float 1.000000e+00)  ; FMin(a,b)
  %988 = call float @dx.op.binary.f32(i32 36, float %984, float 1.000000e+00)  ; FMin(a,b)
  %989 = call float @dx.op.binary.f32(i32 36, float %985, float 1.000000e+00)  ; FMin(a,b)
  %990 = call float @dx.op.binary.f32(i32 36, float %986, float 1.000000e+00)  ; FMin(a,b)
  %991 = fcmp fast olt float %987, 0x3FEFFF8020000000
  br i1 %991, label %992, label %1107, !dx.controlflow.hints !70

; <label>:992                                     ; preds = %960
  %993 = extractvalue %dx.types.CBufRet.f32 %955, 3
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %996 = extractvalue %dx.types.CBufRet.f32 %994, 1
  %997 = extractvalue %dx.types.CBufRet.f32 %994, 2
  %998 = extractvalue %dx.types.CBufRet.f32 %994, 3
  %999 = fsub fast float %995, %987
  %1000 = fsub fast float %996, %988
  %1001 = fsub fast float %997, %989
  %1002 = fsub fast float %998, %990
  %1003 = fmul fast float %999, %993
  %1004 = fmul fast float %1000, %993
  %1005 = fmul fast float %1001, %993
  %1006 = fmul fast float %1002, %993
  %1007 = fadd fast float %1003, %987
  %1008 = fadd fast float %1004, %988
  %1009 = fsub fast float -0.000000e+00, %1008
  %1010 = fadd fast float %1005, %989
  %1011 = fadd fast float %1006, %990
  %1012 = fmul fast float %1007, %1007
  %1013 = fsub fast float %1008, %1012
  %1014 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1013)  ; FMax(a,b)
  %1015 = fdiv fast float 1.000000e+00, %1014
  %1016 = fmul fast float %1008, %1007
  %1017 = fsub fast float %1010, %1016
  %1018 = fsub fast float %967, %1007
  %1019 = fmul fast float %967, %967
  %1020 = fsub fast float %1019, %1008
  %1021 = fmul fast float %1018, %1015
  %1022 = fmul fast float %1021, %1017
  %1023 = fsub fast float %1020, %1022
  %1024 = fmul fast float %1008, %1008
  %1025 = fsub fast float %1011, %1024
  %1026 = fmul fast float %1017, %1017
  %1027 = fmul fast float %1026, %1015
  %1028 = fsub fast float %1025, %1027
  %1029 = fdiv fast float %1023, %1028
  %1030 = fmul fast float %1017, %1029
  %1031 = fsub fast float %1018, %1030
  %1032 = fmul fast float %1031, %1015
  %1033 = fmul fast float %1032, %1007
  %1034 = fsub fast float 1.000000e+00, %1033
  %1035 = fmul fast float %1008, %1029
  %1036 = fsub fast float %1034, %1035
  %1037 = fmul fast float %1032, %1032
  %1038 = fmul fast float %1029, 4.000000e+00
  %1039 = fmul fast float %1038, %1036
  %1040 = fsub fast float %1037, %1039
  %1041 = call float @dx.op.unary.f32(i32 24, float %1040)  ; Sqrt(value)
  %1042 = fcmp fast oge float %1032, 0.000000e+00
  %1043 = fsub fast float -0.000000e+00, %1041
  %1044 = select i1 %1042, float %1043, float %1041
  %1045 = fsub fast float %1044, %1032
  %1046 = fdiv fast float %1045, %1029
  %1047 = fdiv fast float %1036, %1045
  %1048 = fmul fast float %1046, 5.000000e-01
  %1049 = fmul fast float %1047, 2.000000e+00
  %1050 = select i1 %1042, float %1048, float %1049
  %1051 = select i1 %1042, float %1049, float %1048
  %1052 = call float @dx.op.binary.f32(i32 35, float %1050, float %1051)  ; FMax(a,b)
  %1053 = call float @dx.op.binary.f32(i32 36, float %1050, float %1051)  ; FMin(a,b)
  %1054 = fcmp fast ogt float %967, %1053
  br i1 %1054, label %1055, label %1065

; <label>:1055                                    ; preds = %992
  %1056 = fsub fast float %967, %1053
  %1057 = fsub fast float %1052, %1053
  %1058 = fmul fast float %1056, %1057
  %1059 = fmul fast float %1052, %967
  %1060 = fadd fast float %1052, %967
  %1061 = fmul fast float %1060, %1007
  %1062 = fadd fast float %1059, %1008
  %1063 = fsub fast float %1062, %1061
  %1064 = fdiv fast float %1063, %1058
  br label %1065

; <label>:1065                                    ; preds = %1055, %992
  %1066 = phi float [ %1064, %1055 ], [ 0.000000e+00, %992 ]
  %1067 = fcmp fast ogt float %967, %1052
  %1068 = fsub fast float %967, %1052
  br i1 %1067, label %1069, label %1079

; <label>:1069                                    ; preds = %1065
  %1070 = fsub fast float %1052, %1053
  %1071 = fmul fast float %1070, %1068
  %1072 = fmul fast float %1053, %967
  %1073 = fadd fast float %1053, %967
  %1074 = fmul fast float %1073, %1007
  %1075 = fsub fast float %1009, %1072
  %1076 = fadd fast float %1075, %1074
  %1077 = fdiv fast float %1076, %1071
  %1078 = fadd fast float %1077, %1066
  br label %1079

; <label>:1079                                    ; preds = %1069, %1065
  %1080 = phi float [ %1078, %1069 ], [ %1066, %1065 ]
  %1081 = fsub fast float %967, %1053
  %1082 = fmul fast float %1081, %1068
  %1083 = fmul fast float %1053, %1052
  %1084 = fadd fast float %1053, %1052
  %1085 = fmul fast float %1084, %1007
  %1086 = fadd fast float %1083, %1008
  %1087 = fsub fast float %1086, %1085
  %1088 = fdiv fast float %1087, %1082
  %1089 = call float @dx.op.unary.f32(i32 7, float %1080)  ; Saturate(value)
  %1090 = fcmp fast oeq float %744, 0.000000e+00
  %1091 = extractvalue %dx.types.CBufRet.f32 %955, 0
  %1092 = fcmp fast oeq float %1091, 0.000000e+00
  %1093 = or i1 %1090, %1092
  %1094 = fmul fast float %1091, 2.000000e+00
  %1095 = fadd fast float %956, %957
  %1096 = fdiv fast float %1095, %1094
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1098 = fmul fast float %1097, 2.000000e+00
  %1099 = fsub fast float 3.000000e+00, %1098
  %1100 = fmul fast float %1097, %1097
  %1101 = fmul fast float %1100, %1099
  %1102 = select i1 %1093, float 1.000000e+00, float %1101
  %1103 = fmul fast float %1088, %744
  %1104 = fadd fast float %1089, %1103
  %1105 = call float @dx.op.unary.f32(i32 7, float %1104)  ; Saturate(value)
  %1106 = fmul fast float %1102, %1105
  br label %1107

; <label>:1107                                    ; preds = %1079, %960
  %1108 = phi float [ %1106, %1079 ], [ 0.000000e+00, %960 ]
  %1109 = fsub fast float 1.000000e+00, %1108
  %1110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %908, float %909, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.i32 %1112, 2
  %1114 = icmp eq i32 %1113, 0
  br i1 %1114, label %1120, label %1115

; <label>:1115                                    ; preds = %1107
  %1116 = call float @dx.op.unary.f32(i32 7, float %1108)  ; Saturate(value)
  %1117 = fadd fast float %1111, -1.000000e+00
  %1118 = fmul fast float %1116, %1117
  %1119 = fadd fast float %1118, 1.000000e+00
  br label %1120

; <label>:1120                                    ; preds = %1115, %1107
  %1121 = phi float [ %1119, %1115 ], [ %1109, %1107 ]
  %1122 = call float @dx.op.binary.f32(i32 35, float %1111, float %1121)  ; FMax(a,b)
  %1123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1124 = extractvalue %dx.types.CBufRet.i32 %1123, 2
  %1125 = and i32 %1124, 1
  %1126 = icmp eq i32 %1125, 0
  %1127 = fcmp fast une float %1122, 1.000000e+00
  %1128 = and i1 %1127, %1126
  br i1 %1128, label %1129, label %1148

; <label>:1129                                    ; preds = %1120
  %1130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %908, float %909, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.f32 %1130, 2
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 1
  %1136 = fmul fast float %1135, %1131
  %1137 = fmul fast float %1135, %1132
  %1138 = fmul fast float %1135, %1133
  %1139 = fcmp fast ogt float %1111, 0x3FEFFF2E40000000
  %1140 = fsub fast float 1.000000e+00, %1122
  %1141 = fsub fast float 1.000000e+00, %1111
  %1142 = fdiv fast float %1140, %1141
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  %1144 = select i1 %1139, float 0.000000e+00, float %1143
  %1145 = fmul fast float %1136, %1144
  %1146 = fmul fast float %1137, %1144
  %1147 = fmul fast float %1138, %1144
  br label %1148

; <label>:1148                                    ; preds = %1129, %1120
  %1149 = phi float [ 0.000000e+00, %1120 ], [ %1145, %1129 ]
  %1150 = phi float [ 0.000000e+00, %1120 ], [ %1146, %1129 ]
  %1151 = phi float [ 0.000000e+00, %1120 ], [ %1147, %1129 ]
  %1152 = fmul fast float %1149, %726
  %1153 = fmul fast float %1150, %726
  %1154 = fmul fast float %1151, %726
  %1155 = fmul fast float %1122, %886
  %1156 = call float @dx.op.dot3.f32(i32 55, float %1122, float %1122, float %1122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1157 = call float @dx.op.dot3.f32(i32 55, float %1152, float %1153, float %1154, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1158 = select i1 %105, float %1156, float %1122
  %1159 = select i1 %105, float 1.000000e+00, float %1122
  %1160 = select i1 %105, float %1157, float %1152
  %1161 = select i1 %105, float 0.000000e+00, float %1153
  %1162 = select i1 %105, float 0.000000e+00, float %1154
  %1163 = fmul fast float %1158, %898
  %1164 = fmul fast float %1158, %899
  %1165 = fmul fast float %1159, %900
  %1166 = fadd fast float %1163, %1160
  %1167 = fadd fast float %1164, %1161
  %1168 = fadd fast float %1162, %1165
  br label %1169

; <label>:1169                                    ; preds = %1148, %904, %874, %868
  %1170 = phi float [ %870, %868 ], [ %898, %874 ], [ %1166, %1148 ], [ %898, %904 ]
  %1171 = phi float [ %871, %868 ], [ %899, %874 ], [ %1167, %1148 ], [ %899, %904 ]
  %1172 = phi float [ %872, %868 ], [ %900, %874 ], [ %1168, %1148 ], [ %900, %904 ]
  %1173 = phi float [ %873, %868 ], [ %886, %874 ], [ %1155, %1148 ], [ %886, %904 ]
  %1174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1175 = extractvalue %dx.types.CBufRet.f32 %1174, 2
  %1176 = extractvalue %dx.types.CBufRet.f32 %1174, 3
  %1177 = fmul fast float %1175, %47
  %1178 = fmul fast float %1176, %48
  %1179 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  %1180 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1181 = select i1 %761, i32 2, i32 0
  %1182 = or i32 %1181, 1
  %1183 = uitofp i32 %1182 to float
  %1184 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1179, float %1180, float %1183, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1185 = extractvalue %dx.types.ResRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.ResRet.f32 %1184, 1
  %1187 = extractvalue %dx.types.ResRet.f32 %1184, 2
  %1188 = extractvalue %dx.types.ResRet.f32 %1184, 3
  %1189 = add nuw nsw i32 %1181, 2
  %1190 = uitofp i32 %1189 to float
  %1191 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1179, float %1180, float %1190, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = extractvalue %dx.types.ResRet.f32 %1191, 1
  %1194 = extractvalue %dx.types.ResRet.f32 %1191, 2
  %1195 = extractvalue %dx.types.ResRet.f32 %1191, 3
  %1196 = call float @dx.op.binary.f32(i32 35, float %1186, float %1187)  ; FMax(a,b)
  %1197 = call float @dx.op.binary.f32(i32 35, float %1185, float %1196)  ; FMax(a,b)
  %1198 = call float @dx.op.binary.f32(i32 35, float %1197, float %1188)  ; FMax(a,b)
  %1199 = call float @dx.op.binary.f32(i32 36, float %1193, float %1194)  ; FMin(a,b)
  %1200 = call float @dx.op.binary.f32(i32 36, float %1192, float %1199)  ; FMin(a,b)
  %1201 = call float @dx.op.binary.f32(i32 36, float %1200, float %1195)  ; FMin(a,b)
  %1202 = fmul fast float %1198, 2.550000e+02
  %1203 = fadd fast float %1202, 0x3F70101020000000
  %1204 = fptoui float %1203 to i32
  %1205 = fmul fast float %1201, 2.550000e+02
  %1206 = fadd fast float %1205, 0x3F70101020000000
  %1207 = fptoui float %1206 to i32
  %1208 = icmp ult i32 %1204, %1207
  br i1 %1208, label %1209, label %1261

; <label>:1209                                    ; preds = %1169
  %1210 = fcmp fast ogt float %41, 9.843750e-01
  %1211 = fadd fast float %869, -4.000000e+00
  %1212 = select i1 %1210, float -4.000000e+00, float %1211
  %1213 = call float @dx.op.binary.f32(i32 35, float %1212, float 0.000000e+00)  ; FMax(a,b)
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 0
  %1216 = fadd fast float %1215, %1213
  %1217 = extractvalue %dx.types.CBufRet.f32 %1214, 2
  %1218 = fmul fast float %1216, %1217
  %1219 = call float @dx.op.unary.f32(i32 23, float %1218)  ; Log(value)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1214, 3
  %1221 = fmul fast float %1220, %1219
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1224 = fmul fast float %1221, %1223
  %1225 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1226 = uitofp i32 %1204 to float
  %1227 = uitofp i32 %1207 to float
  %1228 = fadd fast float %1226, 5.000000e-01
  %1229 = fadd fast float %1227, 5.000000e-01
  %1230 = fmul fast float %1223, %1228
  %1231 = fmul fast float %1223, %1229
  %1232 = fadd fast float %1230, 0x3F0FFB4800000000
  %1233 = fadd fast float %1231, 0xBF0FFB4800000000
  %1234 = call float @dx.op.binary.f32(i32 35, float %1225, float %1232)  ; FMax(a,b)
  %1235 = call float @dx.op.binary.f32(i32 36, float %1234, float %1233)  ; FMin(a,b)
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 1
  %1238 = extractvalue %dx.types.CBufRet.f32 %1236, 2
  %1239 = extractvalue %dx.types.CBufRet.f32 %1236, 0
  %1240 = select i1 %761, float %1239, float 0.000000e+00
  %1241 = fmul fast float %1237, %1235
  %1242 = fadd fast float %1240, %1241
  %1243 = fadd fast float %1240, %1238
  %1244 = fsub fast float %1237, %1238
  %1245 = fadd fast float %1244, %1240
  %1246 = call float @dx.op.binary.f32(i32 35, float %1242, float %1243)  ; FMax(a,b)
  %1247 = call float @dx.op.binary.f32(i32 36, float %1246, float %1245)  ; FMin(a,b)
  %1248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1179, float %1180, float %1247, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.ResRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.ResRet.f32 %1248, 2
  %1252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1179, float %1180, float %1247, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.ResRet.f32 %1252, 1
  %1255 = extractvalue %dx.types.ResRet.f32 %1252, 2
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 1
  %1258 = fmul fast float %1257, %1253
  %1259 = fmul fast float %1257, %1254
  %1260 = fmul fast float %1257, %1255
  br label %1261

; <label>:1261                                    ; preds = %1209, %1169
  %1262 = phi float [ %1249, %1209 ], [ 1.000000e+00, %1169 ]
  %1263 = phi float [ %1250, %1209 ], [ 1.000000e+00, %1169 ]
  %1264 = phi float [ %1251, %1209 ], [ 1.000000e+00, %1169 ]
  %1265 = phi float [ %1258, %1209 ], [ 0.000000e+00, %1169 ]
  %1266 = phi float [ %1259, %1209 ], [ 0.000000e+00, %1169 ]
  %1267 = phi float [ %1260, %1209 ], [ 0.000000e+00, %1169 ]
  %1268 = fmul fast float %1265, %726
  %1269 = fmul fast float %1266, %726
  %1270 = fmul fast float %1267, %726
  %1271 = fmul fast float %1262, %1173
  %1272 = call float @dx.op.dot3.f32(i32 55, float %1262, float %1263, float %1264, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1273 = call float @dx.op.dot3.f32(i32 55, float %1268, float %1269, float %1270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1274 = select i1 %105, float %1272, float %1262
  %1275 = select i1 %105, float %1272, float %1263
  %1276 = select i1 %105, float 1.000000e+00, float %1264
  %1277 = select i1 %105, float %1273, float %1268
  %1278 = select i1 %105, float 0.000000e+00, float %1269
  %1279 = select i1 %105, float 0.000000e+00, float %1270
  %1280 = fmul fast float %1274, %1170
  %1281 = fmul fast float %1275, %1171
  %1282 = fmul fast float %1276, %1172
  %1283 = fadd fast float %1280, %1277
  %1284 = fadd fast float %1281, %1278
  %1285 = fadd fast float %1279, %1282
  %1286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1287 = extractvalue %dx.types.CBufRet.i32 %1286, 3
  %1288 = and i32 %1287, 3
  %1289 = icmp ne i32 %1288, 0
  %1290 = and i32 %1287, 4
  %1291 = icmp ne i32 %1290, 0
  %1292 = and i1 %1289, %1291
  %1293 = and i1 %105, %1292
  br i1 %1293, label %1294, label %1300

; <label>:1294                                    ; preds = %1261
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 1
  %1297 = fadd fast float %1271, -1.000000e+00
  %1298 = fmul fast float %1296, %1297
  %1299 = fadd fast float %1298, 1.000000e+00
  br label %1300

; <label>:1300                                    ; preds = %1294, %1261
  %1301 = phi float [ %1299, %1294 ], [ %1271, %1261 ]
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 0
  br i1 %105, label %1304, label %1325

; <label>:1304                                    ; preds = %1300
  %1305 = fadd fast float %1283, %1284
  %1306 = fmul fast float %1303, %1305
  %1307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1308 = extractvalue %dx.types.CBufRet.f32 %1307, 3
  %1309 = extractvalue %dx.types.CBufRet.f32 %730, 1
  %1310 = fsub fast float %733, %1309
  %1311 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %1312 = fmul fast float %1310, %1311
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1314 = fsub fast float %1313, %1308
  %1315 = fmul fast float %1314, %1301
  %1316 = fadd fast float %1315, %1308
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  %1319 = fsub fast float %1316, %1318
  %1320 = fmul fast float %1319, 1.000000e+01
  %1321 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1322 = fmul fast float %1321, %726
  %1323 = fsub fast float %726, %1322
  %1324 = fmul fast float %1323, %1316
  br label %1334

; <label>:1325                                    ; preds = %1300
  %1326 = fmul fast float %1303, %1283
  %1327 = fmul fast float %1303, %1284
  %1328 = fmul fast float %1303, %1285
  %1329 = call float @dx.op.binary.f32(i32 35, float %1327, float %1328)  ; FMax(a,b)
  %1330 = call float @dx.op.binary.f32(i32 35, float %1326, float %1329)  ; FMax(a,b)
  %1331 = call float @dx.op.binary.f32(i32 35, float %1330, float %726)  ; FMax(a,b)
  %1332 = fcmp fast ugt float %1331, 0x3F10000000000000
  br i1 %1332, label %1334, label %1333

; <label>:1333                                    ; preds = %1325
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1334

; <label>:1334                                    ; preds = %1333, %1325, %1304
  %1335 = phi float [ %1306, %1304 ], [ %1326, %1333 ], [ %1326, %1325 ]
  %1336 = phi float [ %1324, %1304 ], [ %1327, %1333 ], [ %1327, %1325 ]
  %1337 = phi float [ %1323, %1304 ], [ %1328, %1333 ], [ %1328, %1325 ]
  %1338 = phi float [ %1323, %1304 ], [ %726, %1333 ], [ %726, %1325 ]
  %1339 = fadd fast float %521, 0x3FE3C6EF40000000
  %1340 = call float @dx.op.unary.f32(i32 22, float %1339)  ; Frc(value)
  %1341 = call float @dx.op.unary.f32(i32 23, float %1335)  ; Log(value)
  %1342 = fadd fast float %1341, -7.000000e+00
  %1343 = call float @dx.op.unary.f32(i32 21, float %1342)  ; Exp(value)
  %1344 = fmul fast float %1340, 2.000000e+00
  %1345 = fadd fast float %1344, -1.000000e+00
  %1346 = fmul fast float %1343, %1345
  %1347 = fcmp fast ogt float %1335, 0.000000e+00
  %1348 = select i1 %1347, float %1346, float 0.000000e+00
  %1349 = fadd fast float %1348, %1335
  %1350 = fadd fast float %521, 0x3FF3C6EF40000000
  %1351 = call float @dx.op.unary.f32(i32 22, float %1350)  ; Frc(value)
  %1352 = call float @dx.op.unary.f32(i32 23, float %1336)  ; Log(value)
  %1353 = fadd fast float %1352, -7.000000e+00
  %1354 = call float @dx.op.unary.f32(i32 21, float %1353)  ; Exp(value)
  %1355 = fmul fast float %1351, 2.000000e+00
  %1356 = fadd fast float %1355, -1.000000e+00
  %1357 = fmul fast float %1354, %1356
  %1358 = fcmp fast ogt float %1336, 0.000000e+00
  %1359 = select i1 %1358, float %1357, float 0.000000e+00
  %1360 = fadd fast float %1359, %1336
  %1361 = fadd fast float %521, 0x3FFDAA66E0000000
  %1362 = call float @dx.op.unary.f32(i32 22, float %1361)  ; Frc(value)
  %1363 = call float @dx.op.unary.f32(i32 23, float %1337)  ; Log(value)
  %1364 = fadd fast float %1363, -6.000000e+00
  %1365 = call float @dx.op.unary.f32(i32 21, float %1364)  ; Exp(value)
  %1366 = fmul fast float %1362, 2.000000e+00
  %1367 = fadd fast float %1366, -1.000000e+00
  %1368 = fmul fast float %1365, %1367
  %1369 = fcmp fast ogt float %1337, 0.000000e+00
  %1370 = select i1 %1369, float %1368, float 0.000000e+00
  %1371 = fadd fast float %1370, %1337
  %1372 = select i1 %105, float %1336, float %1360
  %1373 = select i1 %105, float %1337, float %1371
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1374 = call float @dx.op.binary.f32(i32 36, float %1349, float 3.225500e+04)  ; FMin(a,b)
  %1375 = call float @dx.op.binary.f32(i32 36, float %1372, float 3.225500e+04)  ; FMin(a,b)
  %1376 = call float @dx.op.binary.f32(i32 36, float %1373, float 3.225500e+04)  ; FMin(a,b)
  %1377 = call float @dx.op.binary.f32(i32 36, float %1338, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1374)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1375)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1376)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1377)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1338)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1338)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1338)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1338)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

