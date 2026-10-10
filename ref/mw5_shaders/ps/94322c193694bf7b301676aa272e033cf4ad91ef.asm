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
; COLOR                    3   xyz         7     NONE    uint   xyz 
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
; shader hash: 9e1465ef55616b4f1fbcfdb502bf3e8f
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
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 29, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 29, 30 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 29, 30 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 29, 30 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 29, 30 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 29, 30 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 24, 25, 26, 27, 28, 29, 30 }
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
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = fmul fast float %47, %40
  %49 = fmul fast float %47, %41
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %53 = fmul fast float %48, 2.000000e+00
  %54 = fmul fast float %53, %51
  %55 = fmul fast float %49, 2.000000e+00
  %56 = fmul fast float %55, %52
  %57 = fsub fast float 1.000000e+00, %54
  %58 = fsub fast float 1.000000e+00, %56
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fmul fast float %57, %60
  %64 = fmul fast float %57, %61
  %65 = fmul fast float %57, %62
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = fmul fast float %58, %67
  %71 = fmul fast float %58, %68
  %72 = fmul fast float %58, %69
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fadd fast float %70, %74
  %78 = fadd fast float %77, %63
  %79 = fadd fast float %71, %75
  %80 = fadd fast float %79, %64
  %81 = fadd fast float %72, %76
  %82 = fadd fast float %81, %65
  %83 = fmul fast float %78, %43
  %84 = fmul fast float %80, %43
  %85 = fmul fast float %82, %43
  %86 = bitcast i32 %23 to float
  %87 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %88 = extractvalue %dx.types.CBufRet.i32 %87, 3
  %89 = and i32 %88, 3
  %90 = icmp ne i32 %89, 0
  %91 = and i32 %88, 4
  %92 = icmp ne i32 %91, 0
  %93 = and i1 %90, %92
  br i1 %93, label %94, label %103

; <label>:94                                      ; preds = %0
  %95 = fmul fast float %52, %49
  %96 = fmul fast float %51, %48
  %97 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %96, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = fsub fast float 1.000000e+00, %98
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = fcmp fast olt float %99, %101
  br label %106

; <label>:103                                     ; preds = %0
  %104 = icmp eq i32 %91, 0
  %105 = and i1 %90, %104
  br label %106

; <label>:106                                     ; preds = %103, %94
  %107 = phi i1 [ %102, %94 ], [ %105, %103 ]
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %111 = fmul fast float %109, %48
  %112 = fmul fast float %110, %49
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = and i32 %114, 114688
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %116, float %111, float 0.000000e+00
  %118 = select i1 %116, float %112, float 0.000000e+00
  %119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %117, float %118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = fmul fast float %120, 2.550000e+02
  %122 = fptoui float %121 to i32
  %123 = select i1 %116, i32 %122, i32 0
  %124 = mul i32 %22, 208
  %125 = add i32 %124, 188
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = and i32 %88, 114688
  %129 = and i32 %88, 8
  %130 = icmp ne i32 %129, 0
  %131 = or i1 %107, %130
  %132 = select i1 %131, i32 %128, i32 16384
  %133 = and i32 %132, %127
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %106
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %136

; <label>:136                                     ; preds = %135, %106
  %137 = and i32 %127, 512
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %163, label %139

; <label>:139                                     ; preds = %136
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %143 = fmul fast float %141, %48
  %144 = fmul fast float %142, %49
  %145 = extractvalue %dx.types.CBufRet.f32 %140, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %140, 1
  %147 = fdiv fast float %145, %146
  %148 = fcmp fast ogt float %147, 0x3FFC71C720000000
  br i1 %148, label %149, label %155

; <label>:149                                     ; preds = %139
  %150 = fdiv fast float 0x3FFC71C720000000, %147
  %151 = fmul fast float %150, %144
  %152 = fsub fast float 1.000000e+00, %150
  %153 = fmul fast float %152, 5.000000e-01
  %154 = fadd fast float %153, %151
  br label %163

; <label>:155                                     ; preds = %139
  %156 = fcmp fast olt float %147, 0x3FFC71C720000000
  br i1 %156, label %157, label %163

; <label>:157                                     ; preds = %155
  %158 = fmul fast float %143, 5.625000e-01
  %159 = fmul fast float %158, %147
  %160 = fmul fast float %147, 2.812500e-01
  %161 = fsub fast float 5.000000e-01, %160
  %162 = fadd fast float %161, %159
  br label %163

; <label>:163                                     ; preds = %157, %155, %149, %136
  %164 = phi float [ %34, %136 ], [ %143, %149 ], [ %162, %157 ], [ %143, %155 ]
  %165 = phi float [ %35, %136 ], [ %154, %149 ], [ %144, %157 ], [ %144, %155 ]
  %166 = add i32 %24, 72
  %167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.i32 %167, 0
  %169 = extractvalue %dx.types.ResRet.i32 %167, 1
  %170 = bitcast i32 %168 to float
  %171 = bitcast i32 %169 to float
  %172 = fmul fast float %170, %34
  %173 = fmul fast float %171, %35
  %174 = call float @dx.op.unary.f32(i32 22, float %172)  ; Frc(value)
  %175 = call float @dx.op.unary.f32(i32 22, float %173)  ; Frc(value)
  %176 = and i32 %127, 16
  %177 = icmp ne i32 %176, 0
  %178 = select i1 %177, float 1.000000e+00, float %39
  %179 = add i32 %24, 124
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = add i32 %181, 0
  %183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %182, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %186 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %183, %dx.types.Handle %45, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float %185, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fmul fast float %187, %178
  %189 = icmp eq i32 %176, 0
  br i1 %189, label %209, label %190, !dx.controlflow.hints !59

; <label>:190                                     ; preds = %163
  %191 = add i32 %124, 64
  %192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = fadd fast float %193, 1.000000e+00
  %195 = fmul fast float %194, %39
  %196 = fsub fast float %195, %193
  %197 = fsub fast float %194, %196
  %198 = call float @dx.op.unary.f32(i32 7, float %197)  ; Saturate(value)
  %199 = fsub fast float 1.000000e+00, %195
  %200 = call float @dx.op.unary.f32(i32 7, float %199)  ; Saturate(value)
  %201 = fsub fast float %198, %200
  %202 = fsub fast float %188, %200
  %203 = fdiv fast float %202, %201
  %204 = call float @dx.op.unary.f32(i32 7, float %203)  ; Saturate(value)
  %205 = fmul fast float %204, 2.000000e+00
  %206 = fsub fast float 3.000000e+00, %205
  %207 = fmul fast float %204, %204
  %208 = fmul fast float %207, %206
  br label %209

; <label>:209                                     ; preds = %190, %163
  %210 = phi float [ %208, %190 ], [ %188, %163 ]
  %211 = fcmp fast ogt float %210, 0.000000e+00
  br i1 %211, label %213, label %212

; <label>:212                                     ; preds = %209
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %213

; <label>:213                                     ; preds = %212, %209
  %214 = call float @dx.op.unary.f32(i32 7, float %210)  ; Saturate(value)
  %215 = fmul fast float %48, 5.000000e-01
  %216 = fmul fast float %49, 5.000000e-01
  %217 = fptosi float %215 to i32
  %218 = fptosi float %216 to i32
  %219 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %217, i32 %218, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = lshr i32 %220, 18
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F4C00EBA0000000
  %224 = call float @dx.op.unary.f32(i32 21, float %223)  ; Exp(value)
  %225 = fadd fast float %224, -1.000000e+00
  %226 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %227 = extractvalue %dx.types.Dimensions %226, 0
  %228 = sitofp i32 %227 to float
  %229 = extractvalue %dx.types.Dimensions %226, 1
  %230 = sitofp i32 %229 to float
  %231 = fcmp fast oge float %215, %228
  %232 = fcmp fast oge float %216, %230
  %233 = or i1 %231, %232
  %234 = select i1 %233, float 0x4197782600000000, float %225
  %235 = fsub fast float %234, %43
  %236 = fcmp fast ogt float %235, 0.000000e+00
  %237 = and i32 %123, -2
  %238 = icmp eq i32 %237, 2
  %239 = and i1 %238, %236
  %240 = xor i1 %236, true
  %241 = icmp eq i32 %123, 1
  %242 = and i1 %241, %240
  %243 = or i1 %239, %242
  %244 = and i32 %127, 262144
  %245 = icmp ne i32 %244, 0
  %246 = and i1 %245, %243
  %247 = xor i1 %243, true
  %248 = and i32 %127, 131072
  %249 = icmp ne i32 %248, 0
  %250 = and i1 %249, %247
  %251 = or i1 %246, %250
  br i1 %251, label %252, label %253

; <label>:252                                     ; preds = %213
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %253

; <label>:253                                     ; preds = %252, %213
  %254 = and i32 %127, 32
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %506, label %256, !dx.controlflow.hints !60

; <label>:256                                     ; preds = %253
  %257 = add i32 %124, 80
  %258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = extractvalue %dx.types.ResRet.f32 %258, 1
  %261 = extractvalue %dx.types.ResRet.f32 %258, 2
  %262 = extractvalue %dx.types.ResRet.f32 %258, 3
  %263 = add i32 %124, 96
  %264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = extractvalue %dx.types.ResRet.f32 %264, 1
  %267 = extractvalue %dx.types.ResRet.f32 %264, 2
  %268 = add i32 %124, 112
  %269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = extractvalue %dx.types.ResRet.f32 %269, 1
  %272 = extractvalue %dx.types.ResRet.f32 %269, 2
  %273 = extractvalue %dx.types.ResRet.f32 %269, 3
  %274 = add i32 %124, 128
  %275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = extractvalue %dx.types.ResRet.f32 %275, 1
  %278 = extractvalue %dx.types.ResRet.f32 %275, 2
  %279 = extractvalue %dx.types.ResRet.f32 %275, 3
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 4096
  %283 = icmp ne i32 %282, 0
  %284 = fcmp fast une float %267, 0.000000e+00
  %285 = and i32 %281, 64
  %286 = icmp ne i32 %285, 0
  %287 = and i32 %281, 128
  %288 = icmp eq i32 %287, 0
  %289 = and i32 %281, 2048
  %290 = icmp eq i32 %289, 0
  %291 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %292 = extractvalue %dx.types.Dimensions %291, 0
  %293 = sitofp i32 %292 to float
  %294 = extractvalue %dx.types.Dimensions %291, 1
  %295 = sitofp i32 %294 to float
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %298 = extractvalue %dx.types.CBufRet.f32 %296, 3
  %299 = fmul fast float %297, %48
  %300 = fmul fast float %298, %49
  %301 = fmul fast float %299, %293
  %302 = fmul fast float %300, %295
  %303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %304 = extractvalue %dx.types.CBufRet.f32 %303, 1
  %305 = fsub fast float -0.000000e+00, %304
  %306 = fptoui float %305 to i32
  %307 = fptoui float %301 to i32
  %308 = fptoui float %302 to i32
  %309 = and i32 %306, 31
  %310 = lshr i32 %307, %309
  %311 = lshr i32 %308, %309
  %312 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %306, i32 %310, i32 %311, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %313 = extractvalue %dx.types.ResRet.f32 %312, 0
  %314 = fcmp fast ogt float %313, -1.000000e+00
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 1
  %317 = select i1 %314, float %316, float 1.000000e+00
  %318 = fadd fast float %313, 1.000000e+00
  %319 = fmul fast float %317, %318
  %320 = call float @dx.op.unary.f32(i32 6, float %319)  ; FAbs(value)
  %321 = extractvalue %dx.types.CBufRet.f32 %315, 3
  %322 = fcmp fast oge float %320, %321
  %323 = select i1 %322, float 0x4197782600000000, float %320
  br i1 %290, label %401, label %324, !dx.controlflow.hints !61

; <label>:324                                     ; preds = %256
  %325 = fmul fast float %53, %297
  %326 = fmul fast float %55, %298
  %327 = fsub fast float 1.000000e+00, %325
  %328 = fsub fast float 1.000000e+00, %326
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %333 = fmul fast float %327, %330
  %334 = fmul fast float %327, %331
  %335 = fmul fast float %327, %332
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = fmul fast float %328, %337
  %341 = fmul fast float %328, %338
  %342 = fmul fast float %328, %339
  %343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %344 = extractvalue %dx.types.CBufRet.f32 %343, 0
  %345 = extractvalue %dx.types.CBufRet.f32 %343, 1
  %346 = extractvalue %dx.types.CBufRet.f32 %343, 2
  %347 = fadd fast float %340, %344
  %348 = fadd fast float %347, %333
  %349 = fadd fast float %341, %345
  %350 = fadd fast float %349, %334
  %351 = fadd fast float %342, %346
  %352 = fadd fast float %351, %335
  %353 = fmul fast float %348, %323
  %354 = fmul fast float %350, %323
  %355 = fmul fast float %352, %323
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = fsub fast float %357, %25
  %361 = fadd fast float %360, %353
  %362 = fsub fast float %358, %26
  %363 = fadd fast float %362, %354
  %364 = fsub fast float %359, %27
  %365 = fadd fast float %364, %355
  %366 = fmul fast float %28, %28
  %367 = call float @dx.op.dot3.f32(i32 55, float %361, float %363, float %365, float %361, float %363, float %365)  ; Dot3(ax,ay,az,bx,by,bz)
  %368 = fsub fast float %366, %367
  %369 = fmul fast float %266, %366
  %370 = fmul fast float %265, %366
  %371 = fcmp fast olt float %368, %369
  %372 = fcmp fast ogt float %368, %370
  %373 = or i1 %371, %372
  %374 = select i1 %373, float 0.000000e+00, float %368
  %375 = fsub fast float %265, %266
  %376 = fmul fast float %375, %366
  %377 = fsub fast float %374, %369
  %378 = fdiv fast float %377, %376
  %379 = call float @dx.op.unary.f32(i32 7, float %378)  ; Saturate(value)
  %380 = fmul fast float %379, 2.000000e+00
  %381 = fsub fast float 3.000000e+00, %380
  %382 = fmul fast float %379, %379
  %383 = fmul fast float %382, %381
  %384 = fmul fast float %270, %36
  %385 = fmul fast float %271, %37
  %386 = fmul fast float %272, %38
  %387 = fsub fast float %384, %276
  %388 = fsub fast float %385, %277
  %389 = fsub fast float %386, %278
  %390 = fsub fast float %273, %279
  %391 = fmul fast float %383, %387
  %392 = fmul fast float %383, %388
  %393 = fmul fast float %383, %389
  %394 = fmul fast float %383, %390
  %395 = fadd fast float %391, %276
  %396 = fadd fast float %392, %277
  %397 = fadd fast float %393, %278
  %398 = fadd fast float %394, %279
  %399 = fmul fast float %259, %259
  %400 = fmul fast float %399, %374
  br label %496

; <label>:401                                     ; preds = %256
  %402 = and i32 %281, 256
  %403 = icmp eq i32 %402, 0
  %404 = fsub fast float %323, %43
  br i1 %403, label %453, label %405

; <label>:405                                     ; preds = %401
  %406 = fadd fast float %265, %43
  %407 = fcmp fast olt float %323, %43
  %408 = fcmp fast ogt float %323, %406
  %409 = or i1 %407, %408
  %410 = select i1 %409, float 0.000000e+00, float %404
  %411 = call float @dx.op.unary.f32(i32 83, float %323)  ; DerivCoarseX(value)
  %412 = call float @dx.op.unary.f32(i32 84, float %323)  ; DerivCoarseY(value)
  %413 = fmul fast float %411, %411
  %414 = fmul fast float %412, %412
  %415 = fadd fast float %414, %413
  %416 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %417 = extractvalue %dx.types.CBufRet.f32 %303, 2
  %418 = fmul fast float %417, %416
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = fmul fast float %419, %266
  %421 = fdiv fast float %404, %420
  %422 = call float @dx.op.unary.f32(i32 7, float %421)  ; Saturate(value)
  %423 = fmul fast float %422, 2.000000e+00
  %424 = fsub fast float 3.000000e+00, %423
  %425 = fmul fast float %422, %422
  %426 = fmul fast float %425, %424
  %427 = fsub fast float %323, %406
  %428 = fadd fast float %427, %420
  %429 = fdiv fast float %428, %420
  %430 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %431 = fmul fast float %430, 2.000000e+00
  %432 = fsub fast float 3.000000e+00, %431
  %433 = fmul fast float %430, %430
  %434 = fmul fast float %433, %432
  %435 = fsub fast float %426, %434
  %436 = fmul fast float %270, %36
  %437 = fmul fast float %271, %37
  %438 = fmul fast float %272, %38
  %439 = fsub fast float %436, %276
  %440 = fsub fast float %437, %277
  %441 = fsub fast float %438, %278
  %442 = fsub fast float %273, %279
  %443 = fmul fast float %435, %439
  %444 = fmul fast float %435, %440
  %445 = fmul fast float %435, %441
  %446 = fmul fast float %435, %442
  %447 = fadd fast float %443, %276
  %448 = fadd fast float %444, %277
  %449 = fadd fast float %445, %278
  %450 = fadd fast float %446, %279
  %451 = fmul fast float %410, %259
  %452 = call float @dx.op.unary.f32(i32 6, float %451)  ; FAbs(value)
  br label %496

; <label>:453                                     ; preds = %401
  br i1 %284, label %454, label %467

; <label>:454                                     ; preds = %453
  %455 = fdiv fast float 5.000000e+01, %28
  %456 = select i1 %286, float %455, float 1.000000e+00
  %457 = fmul fast float %456, %259
  %458 = fmul fast float %174, 2.000000e+00
  %459 = fmul fast float %175, 2.000000e+00
  %460 = fadd fast float %458, -1.000000e+00
  %461 = fadd fast float %459, -1.000000e+00
  %462 = call float @dx.op.dot2.f32(i32 54, float %460, float %461, float %460, float %461)  ; Dot2(ax,ay,bx,by)
  %463 = fmul fast float %267, %28
  %464 = fmul fast float %463, %462
  %465 = fsub fast float %404, %464
  %466 = fmul fast float %457, %465
  br label %496

; <label>:467                                     ; preds = %453
  br i1 %288, label %488, label %468

; <label>:468                                     ; preds = %467
  %469 = fmul fast float %28, 0x3F947AE140000000
  %470 = select i1 %286, float %469, float 1.000000e+00
  %471 = fdiv fast float 1.000000e+00, %470
  %472 = fmul fast float %470, %260
  %473 = fmul fast float %470, %261
  %474 = fmul fast float %471, %262
  %475 = call float @dx.op.unary.f32(i32 6, float %404)  ; FAbs(value)
  %476 = fcmp fast olt float %475, %472
  br i1 %476, label %477, label %481, !dx.controlflow.hints !62

; <label>:477                                     ; preds = %468
  %478 = fmul fast float %471, %259
  %479 = fmul fast float %478, %475
  %480 = call float @dx.op.unary.f32(i32 6, float %479)  ; FAbs(value)
  br label %496

; <label>:481                                     ; preds = %468
  %482 = fcmp fast ogt float %475, %473
  br i1 %482, label %483, label %496

; <label>:483                                     ; preds = %481
  %484 = fsub fast float %475, %473
  %485 = fmul fast float %474, %484
  %486 = call float @dx.op.unary.f32(i32 6, float %485)  ; FAbs(value)
  %487 = fsub fast float 1.000000e+00, %486
  br label %496

; <label>:488                                     ; preds = %467
  %489 = fdiv fast float 5.000000e+01, %28
  %490 = select i1 %286, float %489, float 1.000000e+00
  %491 = fmul fast float %490, %259
  %492 = call float @dx.op.unary.f32(i32 6, float %235)  ; FAbs(value)
  %493 = select i1 %283, float %492, float 0x47EFFFFFE0000000
  %494 = call float @dx.op.binary.f32(i32 36, float %404, float %493)  ; FMin(a,b)
  %495 = fmul fast float %491, %494
  br label %496

; <label>:496                                     ; preds = %488, %483, %481, %477, %454, %405, %324
  %497 = phi float [ %400, %324 ], [ %452, %405 ], [ %466, %454 ], [ %495, %488 ], [ %480, %477 ], [ %487, %483 ], [ %475, %481 ]
  %498 = phi float [ %395, %324 ], [ %447, %405 ], [ %36, %454 ], [ %36, %488 ], [ %36, %477 ], [ %36, %483 ], [ %36, %481 ]
  %499 = phi float [ %396, %324 ], [ %448, %405 ], [ %37, %454 ], [ %37, %488 ], [ %37, %477 ], [ %37, %483 ], [ %37, %481 ]
  %500 = phi float [ %397, %324 ], [ %449, %405 ], [ %38, %454 ], [ %38, %488 ], [ %38, %477 ], [ %38, %483 ], [ %38, %481 ]
  %501 = phi float [ %398, %324 ], [ %450, %405 ], [ 1.000000e+00, %454 ], [ 1.000000e+00, %488 ], [ 1.000000e+00, %477 ], [ 1.000000e+00, %483 ], [ 1.000000e+00, %481 ]
  %502 = call float @dx.op.unary.f32(i32 7, float %497)  ; Saturate(value)
  %503 = fmul fast float %502, %39
  %504 = fmul fast float %501, %214
  %505 = fmul fast float %504, %502
  br label %506

; <label>:506                                     ; preds = %496, %253
  %507 = phi float [ %498, %496 ], [ %36, %253 ]
  %508 = phi float [ %499, %496 ], [ %37, %253 ]
  %509 = phi float [ %500, %496 ], [ %38, %253 ]
  %510 = phi float [ %505, %496 ], [ %214, %253 ]
  %511 = phi float [ %503, %496 ], [ %39, %253 ]
  %512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %513 = extractvalue %dx.types.CBufRet.f32 %512, 2
  %514 = fptosi float %43 to i32
  %515 = sitofp i32 %514 to float
  %516 = fadd fast float %513, %515
  %517 = fmul fast float %516, 0x3FE3C6EF40000000
  %518 = frem fast float %48, 2.560000e+02
  %519 = frem fast float %49, 2.560000e+02
  %520 = fptoui float %518 to i32
  %521 = fptoui float %519 to i32
  %522 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %520, i32 %521, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = fadd fast float %523, %517
  %525 = call float @dx.op.unary.f32(i32 22, float %524)  ; Frc(value)
  %526 = and i32 %127, 1
  %527 = icmp eq i32 %526, 0
  br i1 %527, label %585, label %528, !dx.controlflow.hints !63

; <label>:528                                     ; preds = %506
  %529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 2
  %531 = extractvalue %dx.types.ResRet.f32 %529, 3
  %532 = add i32 %124, 16
  %533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = extractvalue %dx.types.ResRet.f32 %533, 1
  %536 = extractvalue %dx.types.ResRet.f32 %533, 2
  %537 = add i32 %124, 32
  %538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = extractvalue %dx.types.ResRet.f32 %538, 2
  %542 = and i32 %127, 2
  %543 = icmp eq i32 %542, 0
  %544 = call float @dx.op.dot3.f32(i32 55, float %31, float %32, float %33, float %31, float %32, float %33)  ; Dot3(ax,ay,az,bx,by,bz)
  %545 = call float @dx.op.unary.f32(i32 25, float %544)  ; Rsqrt(value)
  %546 = fmul fast float %545, %31
  %547 = fmul fast float %545, %32
  %548 = fmul fast float %545, %33
  %549 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %550 = call float @dx.op.unary.f32(i32 25, float %549)  ; Rsqrt(value)
  %551 = fmul fast float %550, %83
  %552 = fmul fast float %550, %84
  %553 = fmul fast float %550, %85
  %554 = call float @dx.op.dot3.f32(i32 55, float %551, float %552, float %553, float %546, float %547, float %548)  ; Dot3(ax,ay,az,bx,by,bz)
  %555 = fmul fast float %554, %554
  %556 = fmul fast float %555, %530
  %557 = fadd fast float %556, %531
  %558 = call float @dx.op.unary.f32(i32 7, float %557)  ; Saturate(value)
  br i1 %543, label %559, label %569, !dx.controlflow.hints !64

; <label>:559                                     ; preds = %528
  %560 = extractvalue %dx.types.ResRet.f32 %529, 1
  %561 = extractvalue %dx.types.ResRet.f32 %529, 0
  %562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %563 = extractvalue %dx.types.CBufRet.f32 %562, 3
  %564 = fmul fast float %563, %549
  %565 = fsub fast float %561, %564
  %566 = fmul fast float %565, %560
  %567 = call float @dx.op.unary.f32(i32 7, float %566)  ; Saturate(value)
  %568 = fmul fast float %567, %558
  br label %569

; <label>:569                                     ; preds = %559, %528
  %570 = phi float [ %568, %559 ], [ %558, %528 ]
  %571 = fsub fast float %534, %539
  %572 = fsub fast float %535, %540
  %573 = fsub fast float %536, %541
  %574 = fmul fast float %570, %571
  %575 = fmul fast float %570, %572
  %576 = fmul fast float %570, %573
  %577 = fadd fast float %574, %539
  %578 = fadd fast float %575, %540
  %579 = fadd fast float %576, %541
  %580 = fmul fast float %577, %507
  %581 = fmul fast float %578, %508
  %582 = fmul fast float %579, %509
  %583 = fmul fast float %570, %510
  %584 = fmul fast float %570, %511
  br label %585

; <label>:585                                     ; preds = %569, %506
  %586 = phi float [ %580, %569 ], [ %507, %506 ]
  %587 = phi float [ %581, %569 ], [ %508, %506 ]
  %588 = phi float [ %582, %569 ], [ %509, %506 ]
  %589 = phi float [ %583, %569 ], [ %510, %506 ]
  %590 = phi float [ %584, %569 ], [ %511, %506 ]
  %591 = add i32 %24, 120
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = add i32 %593, 0
  %595 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %594, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %596 = add i32 %24, 24
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %595, %dx.types.Handle %44, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = extractvalue %dx.types.ResRet.f32 %599, 3
  %604 = and i32 %598, 255
  %605 = uitofp i32 %604 to float
  %606 = lshr i32 %598, 8
  %607 = and i32 %606, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %603, %605
  %610 = fadd fast float %609, %608
  %611 = fmul fast float %610, 0x3F70101000000000
  %612 = add i32 %24, 56
  %613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %612, i32 undef)  ; BufferLoad(srv,index,wot)
  %614 = extractvalue %dx.types.ResRet.i32 %613, 0
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F70101020000000
  %618 = lshr i32 %614, 8
  %619 = and i32 %618, 255
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = lshr i32 %614, 16
  %623 = and i32 %622, 255
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F70101020000000
  %626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %627 = extractvalue %dx.types.ResRet.f32 %626, 0
  %628 = extractvalue %dx.types.ResRet.f32 %626, 1
  %629 = extractvalue %dx.types.ResRet.f32 %626, 2
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 1
  %632 = fadd fast float %611, 0xBFB99999A0000000
  %633 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %634 = fmul fast float %633, 0x3FF1C71C80000000
  %635 = fsub fast float 1.000000e+00, %634
  %636 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %637 = fmul fast float %600, %586
  %638 = fmul fast float %617, %617
  %639 = fmul fast float %638, %637
  %640 = fmul fast float %639, %636
  %641 = fmul fast float %601, %587
  %642 = fmul fast float %621, %621
  %643 = fmul fast float %642, %641
  %644 = fmul fast float %643, %636
  %645 = fmul fast float %602, %588
  %646 = fmul fast float %625, %625
  %647 = fmul fast float %646, %645
  %648 = fmul fast float %647, %636
  %649 = call float @dx.op.unary.f32(i32 7, float %640)  ; Saturate(value)
  %650 = call float @dx.op.unary.f32(i32 7, float %644)  ; Saturate(value)
  %651 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %652 = call float @dx.op.dot3.f32(i32 55, float %649, float %650, float %651, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %653 = add i32 %24, 32
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = and i32 %655, 255
  %657 = uitofp i32 %656 to float
  %658 = lshr i32 %655, 8
  %659 = and i32 %658, 255
  %660 = uitofp i32 %659 to float
  %661 = fmul fast float %660, %652
  %662 = fadd fast float %661, %657
  %663 = fmul fast float %662, 0x3F70101020000000
  %664 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  %665 = add i32 %24, 128
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %665, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = add i32 %667, 0
  %669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %668, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %670 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %669, %dx.types.Handle %45, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = and i32 %127, 8192
  %673 = icmp eq i32 %672, 0
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 0
  br i1 %673, label %686, label %676, !dx.controlflow.hints !65

; <label>:676                                     ; preds = %585
  %677 = add i32 %124, 176
  %678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %677, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  %680 = extractvalue %dx.types.ResRet.f32 %678, 1
  %681 = fcmp fast oge float %679, 0.000000e+00
  %682 = select i1 %681, float %679, float %675
  %683 = fmul fast float %671, %86
  %684 = fmul fast float %683, %680
  %685 = fadd fast float %684, %682
  br label %697

; <label>:686                                     ; preds = %585
  %687 = add i32 %24, 104
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = extractvalue %dx.types.ResRet.i32 %688, 1
  %691 = bitcast i32 %689 to float
  %692 = bitcast i32 %690 to float
  %693 = fcmp fast oge float %691, 0.000000e+00
  %694 = select i1 %693, float %691, float %675
  %695 = fmul fast float %692, %671
  %696 = fadd fast float %694, %695
  br label %697

; <label>:697                                     ; preds = %686, %676
  %698 = phi float [ %685, %676 ], [ %696, %686 ]
  %699 = fmul fast float %590, %589
  %700 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %217, i32 %218, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
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
  %712 = fcmp fast oge float %215, %709
  %713 = fcmp fast oge float %216, %711
  %714 = or i1 %712, %713
  %715 = select i1 %714, float 0x4197782600000000, float %706
  %716 = fsub fast float 1.000000e+00, %589
  %717 = call float @dx.op.dot3.f32(i32 55, float %716, float %716, float %716, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %718 = fsub fast float 1.000000e+00, %717
  %719 = fmul fast float %698, %664
  %720 = fsub fast float 1.000000e+00, %699
  %721 = fsub fast float %720, %664
  %722 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 3
  %725 = fmul fast float %724, %722
  %726 = fadd fast float %725, %719
  %727 = and i32 %127, 2097152
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %733, label %729, !dx.controlflow.hints !66

; <label>:729                                     ; preds = %697
  %730 = add i32 %124, 192
  %731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %730, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.f32 %731, 0
  br label %736

; <label>:733                                     ; preds = %697
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 3
  br label %736

; <label>:736                                     ; preds = %733, %729
  %737 = phi float [ %732, %729 ], [ %735, %733 ]
  %738 = fmul fast float %627, %589
  %739 = fmul fast float %738, %631
  %740 = fmul fast float %739, %649
  %741 = fmul fast float %628, %589
  %742 = fmul fast float %741, %631
  %743 = fmul fast float %742, %650
  %744 = fmul fast float %629, %589
  %745 = fmul fast float %744, %631
  %746 = fmul fast float %745, %651
  %747 = icmp eq i32 %123, 3
  %748 = fcmp fast ogt float %43, %715
  %749 = and i1 %241, %748
  %750 = or i1 %747, %749
  %751 = icmp eq i32 %123, 2
  %752 = fcmp fast ole float %43, %715
  %753 = and i1 %751, %752
  %754 = or i1 %753, %750
  br i1 %749, label %755, label %861

; <label>:755                                     ; preds = %736
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 2
  %758 = extractvalue %dx.types.CBufRet.f32 %756, 3
  %759 = fmul fast float %757, %48
  %760 = fmul fast float %758, %49
  %761 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %762 = call float @dx.op.unary.f32(i32 7, float %760)  ; Saturate(value)
  %763 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %761, float %762, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %764 = extractvalue %dx.types.ResRet.f32 %763, 0
  %765 = extractvalue %dx.types.ResRet.f32 %763, 1
  %766 = extractvalue %dx.types.ResRet.f32 %763, 2
  %767 = extractvalue %dx.types.ResRet.f32 %763, 3
  %768 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %761, float %762, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = extractvalue %dx.types.ResRet.f32 %768, 1
  %771 = extractvalue %dx.types.ResRet.f32 %768, 2
  %772 = extractvalue %dx.types.ResRet.f32 %768, 3
  %773 = call float @dx.op.binary.f32(i32 35, float %765, float %766)  ; FMax(a,b)
  %774 = call float @dx.op.binary.f32(i32 35, float %764, float %773)  ; FMax(a,b)
  %775 = call float @dx.op.binary.f32(i32 35, float %774, float %767)  ; FMax(a,b)
  %776 = call float @dx.op.binary.f32(i32 36, float %770, float %771)  ; FMin(a,b)
  %777 = call float @dx.op.binary.f32(i32 36, float %769, float %776)  ; FMin(a,b)
  %778 = call float @dx.op.binary.f32(i32 36, float %777, float %772)  ; FMin(a,b)
  %779 = fmul fast float %775, 2.550000e+02
  %780 = fadd fast float %779, 0x3F70101020000000
  %781 = fptoui float %780 to i32
  %782 = fmul fast float %778, 2.550000e+02
  %783 = fadd fast float %782, 0x3F70101020000000
  %784 = fptoui float %783 to i32
  %785 = icmp ult i32 %781, %784
  br i1 %785, label %786, label %837

; <label>:786                                     ; preds = %755
  %787 = fcmp fast ogt float %42, 9.843750e-01
  %788 = fadd fast float %43, -4.000000e+00
  %789 = select i1 %787, float -4.000000e+00, float %788
  %790 = call float @dx.op.binary.f32(i32 35, float %789, float 0.000000e+00)  ; FMax(a,b)
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 0
  %793 = fadd fast float %792, %790
  %794 = extractvalue %dx.types.CBufRet.f32 %791, 2
  %795 = fmul fast float %793, %794
  %796 = call float @dx.op.unary.f32(i32 23, float %795)  ; Log(value)
  %797 = extractvalue %dx.types.CBufRet.f32 %791, 3
  %798 = fmul fast float %797, %796
  %799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.f32 %799, 2
  %801 = fmul fast float %798, %800
  %802 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %803 = uitofp i32 %781 to float
  %804 = uitofp i32 %784 to float
  %805 = fadd fast float %803, 5.000000e-01
  %806 = fadd fast float %804, 5.000000e-01
  %807 = fmul fast float %800, %805
  %808 = fmul fast float %800, %806
  %809 = fadd fast float %807, 0x3F0FFB4800000000
  %810 = fadd fast float %808, 0xBF0FFB4800000000
  %811 = call float @dx.op.binary.f32(i32 35, float %802, float %809)  ; FMax(a,b)
  %812 = call float @dx.op.binary.f32(i32 36, float %811, float %810)  ; FMin(a,b)
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 1
  %815 = extractvalue %dx.types.CBufRet.f32 %813, 2
  %816 = extractvalue %dx.types.CBufRet.f32 %813, 0
  %817 = fmul fast float %814, %812
  %818 = fadd fast float %816, %817
  %819 = fadd fast float %816, %815
  %820 = fsub fast float %814, %815
  %821 = fadd fast float %820, %816
  %822 = call float @dx.op.binary.f32(i32 35, float %818, float %819)  ; FMax(a,b)
  %823 = call float @dx.op.binary.f32(i32 36, float %822, float %821)  ; FMin(a,b)
  %824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %761, float %762, float %823, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %761, float %762, float %823, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  %830 = extractvalue %dx.types.ResRet.f32 %828, 1
  %831 = extractvalue %dx.types.ResRet.f32 %828, 2
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %834 = fmul fast float %833, %829
  %835 = fmul fast float %833, %830
  %836 = fmul fast float %833, %831
  br label %837

; <label>:837                                     ; preds = %786, %755
  %838 = phi float [ %825, %786 ], [ 1.000000e+00, %755 ]
  %839 = phi float [ %826, %786 ], [ 1.000000e+00, %755 ]
  %840 = phi float [ %827, %786 ], [ 1.000000e+00, %755 ]
  %841 = phi float [ %834, %786 ], [ 0.000000e+00, %755 ]
  %842 = phi float [ %835, %786 ], [ 0.000000e+00, %755 ]
  %843 = phi float [ %836, %786 ], [ 0.000000e+00, %755 ]
  %844 = fmul fast float %841, %718
  %845 = fmul fast float %842, %718
  %846 = fmul fast float %843, %718
  %847 = call float @dx.op.dot3.f32(i32 55, float %838, float %839, float %840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %848 = call float @dx.op.dot3.f32(i32 55, float %844, float %845, float %846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %849 = select i1 %107, float %847, float %838
  %850 = select i1 %107, float %847, float %839
  %851 = select i1 %107, float 1.000000e+00, float %840
  %852 = select i1 %107, float %848, float %844
  %853 = select i1 %107, float 0.000000e+00, float %845
  %854 = select i1 %107, float 0.000000e+00, float %846
  %855 = fmul fast float %849, %740
  %856 = fmul fast float %850, %743
  %857 = fmul fast float %851, %746
  %858 = fadd fast float %855, %852
  %859 = fadd fast float %856, %853
  %860 = fadd fast float %854, %857
  br label %861

; <label>:861                                     ; preds = %837, %736
  %862 = phi float [ %715, %837 ], [ %43, %736 ]
  %863 = phi float [ %858, %837 ], [ %740, %736 ]
  %864 = phi float [ %859, %837 ], [ %743, %736 ]
  %865 = phi float [ %860, %837 ], [ %746, %736 ]
  %866 = phi float [ %838, %837 ], [ 1.000000e+00, %736 ]
  br i1 %754, label %1162, label %867

; <label>:867                                     ; preds = %861
  %868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %29, float %30, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = extractvalue %dx.types.ResRet.f32 %868, 1
  %871 = extractvalue %dx.types.ResRet.f32 %868, 2
  %872 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %29, float %30, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %873 = extractvalue %dx.types.ResRet.f32 %872, 0
  %874 = extractvalue %dx.types.ResRet.f32 %872, 1
  %875 = extractvalue %dx.types.ResRet.f32 %872, 2
  %876 = fmul fast float %869, %718
  %877 = fmul fast float %870, %718
  %878 = fmul fast float %871, %718
  %879 = fmul fast float %873, %866
  %880 = call float @dx.op.dot3.f32(i32 55, float %873, float %874, float %875, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %881 = call float @dx.op.dot3.f32(i32 55, float %876, float %877, float %878, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %882 = select i1 %107, float %880, float %873
  %883 = select i1 %107, float %880, float %874
  %884 = select i1 %107, float 1.000000e+00, float %875
  %885 = select i1 %107, float %881, float %876
  %886 = select i1 %107, float 0.000000e+00, float %877
  %887 = select i1 %107, float 0.000000e+00, float %878
  %888 = fmul fast float %882, %863
  %889 = fmul fast float %883, %864
  %890 = fmul fast float %884, %865
  %891 = fadd fast float %888, %885
  %892 = fadd fast float %889, %886
  %893 = fadd fast float %890, %887
  %894 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.i32 %894, 0
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %1162, label %897, !dx.controlflow.hints !67

; <label>:897                                     ; preds = %867
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 2
  %900 = extractvalue %dx.types.CBufRet.f32 %898, 3
  %901 = fmul fast float %899, %48
  %902 = fmul fast float %900, %49
  %903 = fmul fast float %901, 2.000000e+00
  %904 = fmul fast float %902, 2.000000e+00
  %905 = fsub fast float 1.000000e+00, %903
  %906 = fsub fast float 1.000000e+00, %904
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = extractvalue %dx.types.CBufRet.f32 %907, 1
  %910 = extractvalue %dx.types.CBufRet.f32 %907, 2
  %911 = fmul fast float %905, %908
  %912 = fmul fast float %905, %909
  %913 = fmul fast float %905, %910
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 0
  %916 = extractvalue %dx.types.CBufRet.f32 %914, 1
  %917 = extractvalue %dx.types.CBufRet.f32 %914, 2
  %918 = fmul fast float %906, %915
  %919 = fmul fast float %906, %916
  %920 = fmul fast float %906, %917
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 0
  %923 = extractvalue %dx.types.CBufRet.f32 %921, 1
  %924 = extractvalue %dx.types.CBufRet.f32 %921, 2
  %925 = fadd fast float %918, %922
  %926 = fadd fast float %925, %911
  %927 = fadd fast float %919, %923
  %928 = fadd fast float %927, %912
  %929 = fadd fast float %920, %924
  %930 = fadd fast float %929, %913
  %931 = fmul fast float %926, %862
  %932 = fmul fast float %928, %862
  %933 = fmul fast float %930, %862
  %934 = fmul fast float %931, %931
  %935 = fmul fast float %932, %932
  %936 = fadd fast float %934, %935
  %937 = fmul fast float %933, %933
  %938 = fadd fast float %936, %937
  %939 = call float @dx.op.unary.f32(i32 24, float %938)  ; Sqrt(value)
  %940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %941 = extractvalue %dx.types.CBufRet.f32 %940, 0
  %942 = fsub fast float %939, %941
  %943 = extractvalue %dx.types.CBufRet.f32 %940, 2
  %944 = fmul fast float %942, %943
  %945 = call float @dx.op.unary.f32(i32 7, float %944)  ; Saturate(value)
  %946 = fadd fast float %945, -5.000000e-01
  %947 = fmul fast float %946, 2.000000e+00
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %950 = call float @dx.op.binary.f32(i32 36, float %949, float %947)  ; FMin(a,b)
  %951 = fsub fast float -0.000000e+00, %949
  %952 = fcmp fast ogt float %950, %951
  br i1 %952, label %953, label %1162, !dx.controlflow.hints !68

; <label>:953                                     ; preds = %897
  %954 = fmul fast float %950, 5.000000e-01
  %955 = fadd fast float %954, 5.000000e-01
  %956 = call float @dx.op.unary.f32(i32 22, float %955)  ; Frc(value)
  %957 = call float @dx.op.unary.f32(i32 27, float %956)  ; Round_ni(value)
  %958 = call float @dx.op.unary.f32(i32 22, float %956)  ; Frc(value)
  %959 = fmul fast float %958, 2.000000e+00
  %960 = fadd fast float %959, -1.000000e+00
  %961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %901, float %902, float %957, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %962 = extractvalue %dx.types.ResRet.f32 %961, 0
  %963 = extractvalue %dx.types.ResRet.f32 %961, 1
  %964 = extractvalue %dx.types.ResRet.f32 %961, 2
  %965 = extractvalue %dx.types.ResRet.f32 %961, 3
  %966 = fadd fast float %962, -5.000000e-01
  %967 = fadd fast float %964, -5.000000e-01
  %968 = fmul fast float %966, 0xBFD5555560000000
  %969 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %967, float %968)  ; FMad(a,b,c)
  %970 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %963, float 0.000000e+00)  ; FMad(a,b,c)
  %971 = fadd fast float %970, %965
  %972 = fmul fast float %966, -7.500000e-01
  %973 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %967, float %972)  ; FMad(a,b,c)
  %974 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %963, float 0.000000e+00)  ; FMad(a,b,c)
  %975 = fadd fast float %974, %965
  %976 = call float @dx.op.binary.f32(i32 35, float %969, float -1.000000e+00)  ; FMax(a,b)
  %977 = call float @dx.op.binary.f32(i32 35, float %971, float -1.000000e+00)  ; FMax(a,b)
  %978 = call float @dx.op.binary.f32(i32 35, float %973, float -1.000000e+00)  ; FMax(a,b)
  %979 = call float @dx.op.binary.f32(i32 35, float %975, float -1.000000e+00)  ; FMax(a,b)
  %980 = call float @dx.op.binary.f32(i32 36, float %976, float 1.000000e+00)  ; FMin(a,b)
  %981 = call float @dx.op.binary.f32(i32 36, float %977, float 1.000000e+00)  ; FMin(a,b)
  %982 = call float @dx.op.binary.f32(i32 36, float %978, float 1.000000e+00)  ; FMin(a,b)
  %983 = call float @dx.op.binary.f32(i32 36, float %979, float 1.000000e+00)  ; FMin(a,b)
  %984 = fcmp fast olt float %980, 0x3FEFFF8020000000
  br i1 %984, label %985, label %1100, !dx.controlflow.hints !69

; <label>:985                                     ; preds = %953
  %986 = extractvalue %dx.types.CBufRet.f32 %948, 3
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 0
  %989 = extractvalue %dx.types.CBufRet.f32 %987, 1
  %990 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %991 = extractvalue %dx.types.CBufRet.f32 %987, 3
  %992 = fsub fast float %988, %980
  %993 = fsub fast float %989, %981
  %994 = fsub fast float %990, %982
  %995 = fsub fast float %991, %983
  %996 = fmul fast float %992, %986
  %997 = fmul fast float %993, %986
  %998 = fmul fast float %994, %986
  %999 = fmul fast float %995, %986
  %1000 = fadd fast float %996, %980
  %1001 = fadd fast float %997, %981
  %1002 = fsub fast float -0.000000e+00, %1001
  %1003 = fadd fast float %998, %982
  %1004 = fadd fast float %999, %983
  %1005 = fmul fast float %1000, %1000
  %1006 = fsub fast float %1001, %1005
  %1007 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1006)  ; FMax(a,b)
  %1008 = fdiv fast float 1.000000e+00, %1007
  %1009 = fmul fast float %1001, %1000
  %1010 = fsub fast float %1003, %1009
  %1011 = fsub fast float %960, %1000
  %1012 = fmul fast float %960, %960
  %1013 = fsub fast float %1012, %1001
  %1014 = fmul fast float %1011, %1008
  %1015 = fmul fast float %1014, %1010
  %1016 = fsub fast float %1013, %1015
  %1017 = fmul fast float %1001, %1001
  %1018 = fsub fast float %1004, %1017
  %1019 = fmul fast float %1010, %1010
  %1020 = fmul fast float %1019, %1008
  %1021 = fsub fast float %1018, %1020
  %1022 = fdiv fast float %1016, %1021
  %1023 = fmul fast float %1010, %1022
  %1024 = fsub fast float %1011, %1023
  %1025 = fmul fast float %1024, %1008
  %1026 = fmul fast float %1025, %1000
  %1027 = fsub fast float 1.000000e+00, %1026
  %1028 = fmul fast float %1001, %1022
  %1029 = fsub fast float %1027, %1028
  %1030 = fmul fast float %1025, %1025
  %1031 = fmul fast float %1022, 4.000000e+00
  %1032 = fmul fast float %1031, %1029
  %1033 = fsub fast float %1030, %1032
  %1034 = call float @dx.op.unary.f32(i32 24, float %1033)  ; Sqrt(value)
  %1035 = fcmp fast oge float %1025, 0.000000e+00
  %1036 = fsub fast float -0.000000e+00, %1034
  %1037 = select i1 %1035, float %1036, float %1034
  %1038 = fsub fast float %1037, %1025
  %1039 = fdiv fast float %1038, %1022
  %1040 = fdiv fast float %1029, %1038
  %1041 = fmul fast float %1039, 5.000000e-01
  %1042 = fmul fast float %1040, 2.000000e+00
  %1043 = select i1 %1035, float %1041, float %1042
  %1044 = select i1 %1035, float %1042, float %1041
  %1045 = call float @dx.op.binary.f32(i32 35, float %1043, float %1044)  ; FMax(a,b)
  %1046 = call float @dx.op.binary.f32(i32 36, float %1043, float %1044)  ; FMin(a,b)
  %1047 = fcmp fast ogt float %960, %1046
  br i1 %1047, label %1048, label %1058

; <label>:1048                                    ; preds = %985
  %1049 = fsub fast float %960, %1046
  %1050 = fsub fast float %1045, %1046
  %1051 = fmul fast float %1049, %1050
  %1052 = fmul fast float %1045, %960
  %1053 = fadd fast float %1045, %960
  %1054 = fmul fast float %1053, %1000
  %1055 = fadd fast float %1052, %1001
  %1056 = fsub fast float %1055, %1054
  %1057 = fdiv fast float %1056, %1051
  br label %1058

; <label>:1058                                    ; preds = %1048, %985
  %1059 = phi float [ %1057, %1048 ], [ 0.000000e+00, %985 ]
  %1060 = fcmp fast ogt float %960, %1045
  %1061 = fsub fast float %960, %1045
  br i1 %1060, label %1062, label %1072

; <label>:1062                                    ; preds = %1058
  %1063 = fsub fast float %1045, %1046
  %1064 = fmul fast float %1063, %1061
  %1065 = fmul fast float %1046, %960
  %1066 = fadd fast float %1046, %960
  %1067 = fmul fast float %1066, %1000
  %1068 = fsub fast float %1002, %1065
  %1069 = fadd fast float %1068, %1067
  %1070 = fdiv fast float %1069, %1064
  %1071 = fadd fast float %1070, %1059
  br label %1072

; <label>:1072                                    ; preds = %1062, %1058
  %1073 = phi float [ %1071, %1062 ], [ %1059, %1058 ]
  %1074 = fsub fast float %960, %1046
  %1075 = fmul fast float %1074, %1061
  %1076 = fmul fast float %1046, %1045
  %1077 = fadd fast float %1046, %1045
  %1078 = fmul fast float %1077, %1000
  %1079 = fadd fast float %1076, %1001
  %1080 = fsub fast float %1079, %1078
  %1081 = fdiv fast float %1080, %1075
  %1082 = call float @dx.op.unary.f32(i32 7, float %1073)  ; Saturate(value)
  %1083 = fcmp fast oeq float %737, 0.000000e+00
  %1084 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %1085 = fcmp fast oeq float %1084, 0.000000e+00
  %1086 = or i1 %1083, %1085
  %1087 = fmul fast float %1084, 2.000000e+00
  %1088 = fadd fast float %949, %950
  %1089 = fdiv fast float %1088, %1087
  %1090 = call float @dx.op.unary.f32(i32 7, float %1089)  ; Saturate(value)
  %1091 = fmul fast float %1090, 2.000000e+00
  %1092 = fsub fast float 3.000000e+00, %1091
  %1093 = fmul fast float %1090, %1090
  %1094 = fmul fast float %1093, %1092
  %1095 = select i1 %1086, float 1.000000e+00, float %1094
  %1096 = fmul fast float %1081, %737
  %1097 = fadd fast float %1082, %1096
  %1098 = call float @dx.op.unary.f32(i32 7, float %1097)  ; Saturate(value)
  %1099 = fmul fast float %1095, %1098
  br label %1100

; <label>:1100                                    ; preds = %1072, %953
  %1101 = phi float [ %1099, %1072 ], [ 0.000000e+00, %953 ]
  %1102 = fsub fast float 1.000000e+00, %1101
  %1103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1104 = extractvalue %dx.types.ResRet.f32 %1103, 0
  %1105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.i32 %1105, 2
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1113, label %1108

; <label>:1108                                    ; preds = %1100
  %1109 = call float @dx.op.unary.f32(i32 7, float %1101)  ; Saturate(value)
  %1110 = fadd fast float %1104, -1.000000e+00
  %1111 = fmul fast float %1109, %1110
  %1112 = fadd fast float %1111, 1.000000e+00
  br label %1113

; <label>:1113                                    ; preds = %1108, %1100
  %1114 = phi float [ %1112, %1108 ], [ %1102, %1100 ]
  %1115 = call float @dx.op.binary.f32(i32 35, float %1104, float %1114)  ; FMax(a,b)
  %1116 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.i32 %1116, 2
  %1118 = and i32 %1117, 1
  %1119 = icmp eq i32 %1118, 0
  %1120 = fcmp fast une float %1115, 1.000000e+00
  %1121 = and i1 %1120, %1119
  br i1 %1121, label %1122, label %1141

; <label>:1122                                    ; preds = %1113
  %1123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %901, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1123, 2
  %1127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1128 = extractvalue %dx.types.CBufRet.f32 %1127, 1
  %1129 = fmul fast float %1128, %1124
  %1130 = fmul fast float %1128, %1125
  %1131 = fmul fast float %1128, %1126
  %1132 = fcmp fast ogt float %1104, 0x3FEFFF2E40000000
  %1133 = fsub fast float 1.000000e+00, %1115
  %1134 = fsub fast float 1.000000e+00, %1104
  %1135 = fdiv fast float %1133, %1134
  %1136 = call float @dx.op.unary.f32(i32 7, float %1135)  ; Saturate(value)
  %1137 = select i1 %1132, float 0.000000e+00, float %1136
  %1138 = fmul fast float %1129, %1137
  %1139 = fmul fast float %1130, %1137
  %1140 = fmul fast float %1131, %1137
  br label %1141

; <label>:1141                                    ; preds = %1122, %1113
  %1142 = phi float [ 0.000000e+00, %1113 ], [ %1138, %1122 ]
  %1143 = phi float [ 0.000000e+00, %1113 ], [ %1139, %1122 ]
  %1144 = phi float [ 0.000000e+00, %1113 ], [ %1140, %1122 ]
  %1145 = fmul fast float %1142, %718
  %1146 = fmul fast float %1143, %718
  %1147 = fmul fast float %1144, %718
  %1148 = fmul fast float %1115, %879
  %1149 = call float @dx.op.dot3.f32(i32 55, float %1115, float %1115, float %1115, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1150 = call float @dx.op.dot3.f32(i32 55, float %1145, float %1146, float %1147, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1151 = select i1 %107, float %1149, float %1115
  %1152 = select i1 %107, float 1.000000e+00, float %1115
  %1153 = select i1 %107, float %1150, float %1145
  %1154 = select i1 %107, float 0.000000e+00, float %1146
  %1155 = select i1 %107, float 0.000000e+00, float %1147
  %1156 = fmul fast float %1151, %891
  %1157 = fmul fast float %1151, %892
  %1158 = fmul fast float %1152, %893
  %1159 = fadd fast float %1156, %1153
  %1160 = fadd fast float %1157, %1154
  %1161 = fadd fast float %1155, %1158
  br label %1162

; <label>:1162                                    ; preds = %1141, %897, %867, %861
  %1163 = phi float [ %863, %861 ], [ %891, %867 ], [ %1159, %1141 ], [ %891, %897 ]
  %1164 = phi float [ %864, %861 ], [ %892, %867 ], [ %1160, %1141 ], [ %892, %897 ]
  %1165 = phi float [ %865, %861 ], [ %893, %867 ], [ %1161, %1141 ], [ %893, %897 ]
  %1166 = phi float [ %866, %861 ], [ %879, %867 ], [ %1148, %1141 ], [ %879, %897 ]
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 2
  %1169 = extractvalue %dx.types.CBufRet.f32 %1167, 3
  %1170 = fmul fast float %1168, %48
  %1171 = fmul fast float %1169, %49
  %1172 = call float @dx.op.unary.f32(i32 7, float %1170)  ; Saturate(value)
  %1173 = call float @dx.op.unary.f32(i32 7, float %1171)  ; Saturate(value)
  %1174 = select i1 %754, i32 2, i32 0
  %1175 = or i32 %1174, 1
  %1176 = uitofp i32 %1175 to float
  %1177 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1172, float %1173, float %1176, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = extractvalue %dx.types.ResRet.f32 %1177, 1
  %1180 = extractvalue %dx.types.ResRet.f32 %1177, 2
  %1181 = extractvalue %dx.types.ResRet.f32 %1177, 3
  %1182 = add nuw nsw i32 %1174, 2
  %1183 = uitofp i32 %1182 to float
  %1184 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1172, float %1173, float %1183, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1185 = extractvalue %dx.types.ResRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.ResRet.f32 %1184, 1
  %1187 = extractvalue %dx.types.ResRet.f32 %1184, 2
  %1188 = extractvalue %dx.types.ResRet.f32 %1184, 3
  %1189 = call float @dx.op.binary.f32(i32 35, float %1179, float %1180)  ; FMax(a,b)
  %1190 = call float @dx.op.binary.f32(i32 35, float %1178, float %1189)  ; FMax(a,b)
  %1191 = call float @dx.op.binary.f32(i32 35, float %1190, float %1181)  ; FMax(a,b)
  %1192 = call float @dx.op.binary.f32(i32 36, float %1186, float %1187)  ; FMin(a,b)
  %1193 = call float @dx.op.binary.f32(i32 36, float %1185, float %1192)  ; FMin(a,b)
  %1194 = call float @dx.op.binary.f32(i32 36, float %1193, float %1188)  ; FMin(a,b)
  %1195 = fmul fast float %1191, 2.550000e+02
  %1196 = fadd fast float %1195, 0x3F70101020000000
  %1197 = fptoui float %1196 to i32
  %1198 = fmul fast float %1194, 2.550000e+02
  %1199 = fadd fast float %1198, 0x3F70101020000000
  %1200 = fptoui float %1199 to i32
  %1201 = icmp ult i32 %1197, %1200
  br i1 %1201, label %1202, label %1254

; <label>:1202                                    ; preds = %1162
  %1203 = fcmp fast ogt float %42, 9.843750e-01
  %1204 = fadd fast float %862, -4.000000e+00
  %1205 = select i1 %1203, float -4.000000e+00, float %1204
  %1206 = call float @dx.op.binary.f32(i32 35, float %1205, float 0.000000e+00)  ; FMax(a,b)
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 0
  %1209 = fadd fast float %1208, %1206
  %1210 = extractvalue %dx.types.CBufRet.f32 %1207, 2
  %1211 = fmul fast float %1209, %1210
  %1212 = call float @dx.op.unary.f32(i32 23, float %1211)  ; Log(value)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1207, 3
  %1214 = fmul fast float %1213, %1212
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 2
  %1217 = fmul fast float %1214, %1216
  %1218 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1219 = uitofp i32 %1197 to float
  %1220 = uitofp i32 %1200 to float
  %1221 = fadd fast float %1219, 5.000000e-01
  %1222 = fadd fast float %1220, 5.000000e-01
  %1223 = fmul fast float %1216, %1221
  %1224 = fmul fast float %1216, %1222
  %1225 = fadd fast float %1223, 0x3F0FFB4800000000
  %1226 = fadd fast float %1224, 0xBF0FFB4800000000
  %1227 = call float @dx.op.binary.f32(i32 35, float %1218, float %1225)  ; FMax(a,b)
  %1228 = call float @dx.op.binary.f32(i32 36, float %1227, float %1226)  ; FMin(a,b)
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 1
  %1231 = extractvalue %dx.types.CBufRet.f32 %1229, 2
  %1232 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  %1233 = select i1 %754, float %1232, float 0.000000e+00
  %1234 = fmul fast float %1230, %1228
  %1235 = fadd fast float %1233, %1234
  %1236 = fadd fast float %1233, %1231
  %1237 = fsub fast float %1230, %1231
  %1238 = fadd fast float %1237, %1233
  %1239 = call float @dx.op.binary.f32(i32 35, float %1235, float %1236)  ; FMax(a,b)
  %1240 = call float @dx.op.binary.f32(i32 36, float %1239, float %1238)  ; FMin(a,b)
  %1241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1172, float %1173, float %1240, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = extractvalue %dx.types.ResRet.f32 %1241, 1
  %1244 = extractvalue %dx.types.ResRet.f32 %1241, 2
  %1245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1172, float %1173, float %1240, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.ResRet.f32 %1245, 1
  %1248 = extractvalue %dx.types.ResRet.f32 %1245, 2
  %1249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1250 = extractvalue %dx.types.CBufRet.f32 %1249, 1
  %1251 = fmul fast float %1250, %1246
  %1252 = fmul fast float %1250, %1247
  %1253 = fmul fast float %1250, %1248
  br label %1254

; <label>:1254                                    ; preds = %1202, %1162
  %1255 = phi float [ %1242, %1202 ], [ 1.000000e+00, %1162 ]
  %1256 = phi float [ %1243, %1202 ], [ 1.000000e+00, %1162 ]
  %1257 = phi float [ %1244, %1202 ], [ 1.000000e+00, %1162 ]
  %1258 = phi float [ %1251, %1202 ], [ 0.000000e+00, %1162 ]
  %1259 = phi float [ %1252, %1202 ], [ 0.000000e+00, %1162 ]
  %1260 = phi float [ %1253, %1202 ], [ 0.000000e+00, %1162 ]
  %1261 = fmul fast float %1258, %718
  %1262 = fmul fast float %1259, %718
  %1263 = fmul fast float %1260, %718
  %1264 = fmul fast float %1255, %1166
  %1265 = call float @dx.op.dot3.f32(i32 55, float %1255, float %1256, float %1257, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1266 = call float @dx.op.dot3.f32(i32 55, float %1261, float %1262, float %1263, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1267 = select i1 %107, float %1265, float %1255
  %1268 = select i1 %107, float %1265, float %1256
  %1269 = select i1 %107, float 1.000000e+00, float %1257
  %1270 = select i1 %107, float %1266, float %1261
  %1271 = select i1 %107, float 0.000000e+00, float %1262
  %1272 = select i1 %107, float 0.000000e+00, float %1263
  %1273 = fmul fast float %1267, %1163
  %1274 = fmul fast float %1268, %1164
  %1275 = fmul fast float %1269, %1165
  %1276 = fadd fast float %1273, %1270
  %1277 = fadd fast float %1274, %1271
  %1278 = fadd fast float %1272, %1275
  %1279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.i32 %1279, 3
  %1281 = and i32 %1280, 3
  %1282 = icmp ne i32 %1281, 0
  %1283 = and i32 %1280, 4
  %1284 = icmp ne i32 %1283, 0
  %1285 = and i1 %1282, %1284
  %1286 = and i1 %107, %1285
  br i1 %1286, label %1287, label %1293

; <label>:1287                                    ; preds = %1254
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1290 = fadd fast float %1264, -1.000000e+00
  %1291 = fmul fast float %1289, %1290
  %1292 = fadd fast float %1291, 1.000000e+00
  br label %1293

; <label>:1293                                    ; preds = %1287, %1254
  %1294 = phi float [ %1292, %1287 ], [ %1264, %1254 ]
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 0
  br i1 %107, label %1297, label %1319

; <label>:1297                                    ; preds = %1293
  %1298 = fadd fast float %1276, %1277
  %1299 = fmul fast float %1296, %1298
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 3
  %1302 = extractvalue %dx.types.CBufRet.f32 %723, 1
  %1303 = fsub fast float %726, %1302
  %1304 = extractvalue %dx.types.CBufRet.f32 %723, 2
  %1305 = fmul fast float %1303, %1304
  %1306 = call float @dx.op.unary.f32(i32 7, float %1305)  ; Saturate(value)
  %1307 = fsub fast float %1306, %1301
  %1308 = fmul fast float %1307, %1294
  %1309 = fadd fast float %1308, %1301
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 0
  %1312 = fsub fast float %1309, %1311
  %1313 = fmul fast float %1312, 1.000000e+01
  %1314 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1315 = fsub fast float %699, %718
  %1316 = fmul fast float %1314, %1315
  %1317 = fadd fast float %1316, %718
  %1318 = fmul fast float %1317, %1309
  br label %1328

; <label>:1319                                    ; preds = %1293
  %1320 = fmul fast float %1296, %1276
  %1321 = fmul fast float %1296, %1277
  %1322 = fmul fast float %1296, %1278
  %1323 = call float @dx.op.binary.f32(i32 35, float %1321, float %1322)  ; FMax(a,b)
  %1324 = call float @dx.op.binary.f32(i32 35, float %1320, float %1323)  ; FMax(a,b)
  %1325 = call float @dx.op.binary.f32(i32 35, float %1324, float %718)  ; FMax(a,b)
  %1326 = fcmp fast ugt float %1325, 0x3F10000000000000
  br i1 %1326, label %1328, label %1327

; <label>:1327                                    ; preds = %1319
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1328

; <label>:1328                                    ; preds = %1327, %1319, %1297
  %1329 = phi float [ %1299, %1297 ], [ %1320, %1327 ], [ %1320, %1319 ]
  %1330 = phi float [ %1318, %1297 ], [ %1321, %1327 ], [ %1321, %1319 ]
  %1331 = phi float [ %1317, %1297 ], [ %1322, %1327 ], [ %1322, %1319 ]
  %1332 = phi float [ %1317, %1297 ], [ %718, %1327 ], [ %718, %1319 ]
  %1333 = fadd fast float %525, 0x3FE3C6EF40000000
  %1334 = call float @dx.op.unary.f32(i32 22, float %1333)  ; Frc(value)
  %1335 = call float @dx.op.unary.f32(i32 23, float %1329)  ; Log(value)
  %1336 = fadd fast float %1335, -7.000000e+00
  %1337 = call float @dx.op.unary.f32(i32 21, float %1336)  ; Exp(value)
  %1338 = fmul fast float %1334, 2.000000e+00
  %1339 = fadd fast float %1338, -1.000000e+00
  %1340 = fmul fast float %1337, %1339
  %1341 = fcmp fast ogt float %1329, 0.000000e+00
  %1342 = select i1 %1341, float %1340, float 0.000000e+00
  %1343 = fadd fast float %1342, %1329
  %1344 = fadd fast float %525, 0x3FF3C6EF40000000
  %1345 = call float @dx.op.unary.f32(i32 22, float %1344)  ; Frc(value)
  %1346 = call float @dx.op.unary.f32(i32 23, float %1330)  ; Log(value)
  %1347 = fadd fast float %1346, -7.000000e+00
  %1348 = call float @dx.op.unary.f32(i32 21, float %1347)  ; Exp(value)
  %1349 = fmul fast float %1345, 2.000000e+00
  %1350 = fadd fast float %1349, -1.000000e+00
  %1351 = fmul fast float %1348, %1350
  %1352 = fcmp fast ogt float %1330, 0.000000e+00
  %1353 = select i1 %1352, float %1351, float 0.000000e+00
  %1354 = fadd fast float %1353, %1330
  %1355 = fadd fast float %525, 0x3FFDAA66E0000000
  %1356 = call float @dx.op.unary.f32(i32 22, float %1355)  ; Frc(value)
  %1357 = call float @dx.op.unary.f32(i32 23, float %1331)  ; Log(value)
  %1358 = fadd fast float %1357, -6.000000e+00
  %1359 = call float @dx.op.unary.f32(i32 21, float %1358)  ; Exp(value)
  %1360 = fmul fast float %1356, 2.000000e+00
  %1361 = fadd fast float %1360, -1.000000e+00
  %1362 = fmul fast float %1359, %1361
  %1363 = fcmp fast ogt float %1331, 0.000000e+00
  %1364 = select i1 %1363, float %1362, float 0.000000e+00
  %1365 = fadd fast float %1364, %1331
  %1366 = select i1 %107, float %1330, float %1354
  %1367 = select i1 %107, float %1331, float %1365
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1368 = call float @dx.op.binary.f32(i32 36, float %1343, float 3.225500e+04)  ; FMin(a,b)
  %1369 = call float @dx.op.binary.f32(i32 36, float %1366, float 3.225500e+04)  ; FMin(a,b)
  %1370 = call float @dx.op.binary.f32(i32 36, float %1367, float 3.225500e+04)  ; FMin(a,b)
  %1371 = call float @dx.op.binary.f32(i32 36, float %1332, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1368)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1369)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1370)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1371)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1332)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1332)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1332)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1332)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!34 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255]}
!35 = !{void ()* @ps_main, !"ps_main", !36, !4, !58}
!36 = !{!37, !54, null}
!37 = !{!38, !41, !42, !44, !47, !49, !51, !52, !53}
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
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 7, i8 0, !46}
!53 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !39, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!54 = !{!55, !56}
!55 = !{i32 0, !"SV_Target", i8 9, i8 16, !39, i8 0, i32 1, i8 4, i32 0, i8 0, !40}
!56 = !{i32 1, !"SV_Target", i8 9, i8 16, !57, i8 0, i32 1, i8 4, i32 1, i8 0, !40}
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

