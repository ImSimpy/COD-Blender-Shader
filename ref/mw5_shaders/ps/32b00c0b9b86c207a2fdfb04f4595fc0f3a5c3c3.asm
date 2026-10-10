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
; shader hash: 16916f4812a64eef5491e1e739388a6b
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
  %166 = and i32 %127, 16
  %167 = icmp ne i32 %166, 0
  %168 = select i1 %167, float 1.000000e+00, float %39
  %169 = icmp eq i32 %166, 0
  br i1 %169, label %189, label %170, !dx.controlflow.hints !59

; <label>:170                                     ; preds = %163
  %171 = add i32 %124, 64
  %172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.f32 %172, 0
  %174 = fadd fast float %173, 1.000000e+00
  %175 = fmul fast float %174, %39
  %176 = fsub fast float %175, %173
  %177 = fsub fast float %174, %176
  %178 = call float @dx.op.unary.f32(i32 7, float %177)  ; Saturate(value)
  %179 = fsub fast float 1.000000e+00, %175
  %180 = call float @dx.op.unary.f32(i32 7, float %179)  ; Saturate(value)
  %181 = fsub fast float %178, %180
  %182 = fsub fast float %168, %180
  %183 = fdiv fast float %182, %181
  %184 = call float @dx.op.unary.f32(i32 7, float %183)  ; Saturate(value)
  %185 = fmul fast float %184, 2.000000e+00
  %186 = fsub fast float 3.000000e+00, %185
  %187 = fmul fast float %184, %184
  %188 = fmul fast float %187, %186
  br label %189

; <label>:189                                     ; preds = %170, %163
  %190 = phi float [ %188, %170 ], [ %168, %163 ]
  %191 = fcmp fast ogt float %190, 0.000000e+00
  br i1 %191, label %193, label %192

; <label>:192                                     ; preds = %189
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %193

; <label>:193                                     ; preds = %192, %189
  %194 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %195 = fmul fast float %48, 5.000000e-01
  %196 = fmul fast float %49, 5.000000e-01
  %197 = fptosi float %195 to i32
  %198 = fptosi float %196 to i32
  %199 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %197, i32 %198, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = lshr i32 %200, 18
  %202 = uitofp i32 %201 to float
  %203 = fmul fast float %202, 0x3F4C00EBA0000000
  %204 = call float @dx.op.unary.f32(i32 21, float %203)  ; Exp(value)
  %205 = fadd fast float %204, -1.000000e+00
  %206 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %207 = extractvalue %dx.types.Dimensions %206, 0
  %208 = sitofp i32 %207 to float
  %209 = extractvalue %dx.types.Dimensions %206, 1
  %210 = sitofp i32 %209 to float
  %211 = fcmp fast oge float %195, %208
  %212 = fcmp fast oge float %196, %210
  %213 = or i1 %211, %212
  %214 = select i1 %213, float 0x4197782600000000, float %205
  %215 = fsub fast float %214, %43
  %216 = fcmp fast ogt float %215, 0.000000e+00
  %217 = and i32 %123, -2
  %218 = icmp eq i32 %217, 2
  %219 = and i1 %218, %216
  %220 = xor i1 %216, true
  %221 = icmp eq i32 %123, 1
  %222 = and i1 %221, %220
  %223 = or i1 %219, %222
  %224 = and i32 %127, 262144
  %225 = icmp ne i32 %224, 0
  %226 = and i1 %225, %223
  %227 = xor i1 %223, true
  %228 = and i32 %127, 131072
  %229 = icmp ne i32 %228, 0
  %230 = and i1 %229, %227
  %231 = or i1 %226, %230
  br i1 %231, label %232, label %233

; <label>:232                                     ; preds = %193
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %233

; <label>:233                                     ; preds = %232, %193
  %234 = and i32 %127, 32
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %485, label %236, !dx.controlflow.hints !60

; <label>:236                                     ; preds = %233
  %237 = add i32 %124, 80
  %238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.f32 %238, 0
  %240 = extractvalue %dx.types.ResRet.f32 %238, 1
  %241 = extractvalue %dx.types.ResRet.f32 %238, 2
  %242 = extractvalue %dx.types.ResRet.f32 %238, 3
  %243 = add i32 %124, 96
  %244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = extractvalue %dx.types.ResRet.f32 %244, 1
  %247 = extractvalue %dx.types.ResRet.f32 %244, 2
  %248 = add i32 %124, 112
  %249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = extractvalue %dx.types.ResRet.f32 %249, 1
  %252 = extractvalue %dx.types.ResRet.f32 %249, 2
  %253 = extractvalue %dx.types.ResRet.f32 %249, 3
  %254 = add i32 %124, 128
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = extractvalue %dx.types.ResRet.f32 %255, 1
  %258 = extractvalue %dx.types.ResRet.f32 %255, 2
  %259 = extractvalue %dx.types.ResRet.f32 %255, 3
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = and i32 %261, 4096
  %263 = icmp ne i32 %262, 0
  %264 = fcmp fast une float %247, 0.000000e+00
  %265 = and i32 %261, 64
  %266 = icmp ne i32 %265, 0
  %267 = and i32 %261, 128
  %268 = icmp eq i32 %267, 0
  %269 = and i32 %261, 2048
  %270 = icmp eq i32 %269, 0
  %271 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %272 = extractvalue %dx.types.Dimensions %271, 0
  %273 = sitofp i32 %272 to float
  %274 = extractvalue %dx.types.Dimensions %271, 1
  %275 = sitofp i32 %274 to float
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 2
  %278 = extractvalue %dx.types.CBufRet.f32 %276, 3
  %279 = fmul fast float %277, %48
  %280 = fmul fast float %278, %49
  %281 = fmul fast float %279, %273
  %282 = fmul fast float %280, %275
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %285 = fsub fast float -0.000000e+00, %284
  %286 = fptoui float %285 to i32
  %287 = fptoui float %281 to i32
  %288 = fptoui float %282 to i32
  %289 = and i32 %286, 31
  %290 = lshr i32 %287, %289
  %291 = lshr i32 %288, %289
  %292 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %286, i32 %290, i32 %291, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = fcmp fast ogt float %293, -1.000000e+00
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 1
  %297 = select i1 %294, float %296, float 1.000000e+00
  %298 = fadd fast float %293, 1.000000e+00
  %299 = fmul fast float %297, %298
  %300 = call float @dx.op.unary.f32(i32 6, float %299)  ; FAbs(value)
  %301 = extractvalue %dx.types.CBufRet.f32 %295, 3
  %302 = fcmp fast oge float %300, %301
  %303 = select i1 %302, float 0x4197782600000000, float %300
  br i1 %270, label %381, label %304, !dx.controlflow.hints !61

; <label>:304                                     ; preds = %236
  %305 = fmul fast float %53, %277
  %306 = fmul fast float %55, %278
  %307 = fsub fast float 1.000000e+00, %305
  %308 = fsub fast float 1.000000e+00, %306
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %312 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %313 = fmul fast float %307, %310
  %314 = fmul fast float %307, %311
  %315 = fmul fast float %307, %312
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 0
  %318 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %319 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %320 = fmul fast float %308, %317
  %321 = fmul fast float %308, %318
  %322 = fmul fast float %308, %319
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 0
  %325 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %326 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %327 = fadd fast float %320, %324
  %328 = fadd fast float %327, %313
  %329 = fadd fast float %321, %325
  %330 = fadd fast float %329, %314
  %331 = fadd fast float %322, %326
  %332 = fadd fast float %331, %315
  %333 = fmul fast float %328, %303
  %334 = fmul fast float %330, %303
  %335 = fmul fast float %332, %303
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 0
  %338 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %339 = extractvalue %dx.types.CBufRet.f32 %336, 2
  %340 = fsub fast float %337, %25
  %341 = fadd fast float %340, %333
  %342 = fsub fast float %338, %26
  %343 = fadd fast float %342, %334
  %344 = fsub fast float %339, %27
  %345 = fadd fast float %344, %335
  %346 = fmul fast float %28, %28
  %347 = call float @dx.op.dot3.f32(i32 55, float %341, float %343, float %345, float %341, float %343, float %345)  ; Dot3(ax,ay,az,bx,by,bz)
  %348 = fsub fast float %346, %347
  %349 = fmul fast float %246, %346
  %350 = fmul fast float %245, %346
  %351 = fcmp fast olt float %348, %349
  %352 = fcmp fast ogt float %348, %350
  %353 = or i1 %351, %352
  %354 = select i1 %353, float 0.000000e+00, float %348
  %355 = fsub fast float %245, %246
  %356 = fmul fast float %355, %346
  %357 = fsub fast float %354, %349
  %358 = fdiv fast float %357, %356
  %359 = call float @dx.op.unary.f32(i32 7, float %358)  ; Saturate(value)
  %360 = fmul fast float %359, 2.000000e+00
  %361 = fsub fast float 3.000000e+00, %360
  %362 = fmul fast float %359, %359
  %363 = fmul fast float %362, %361
  %364 = fmul fast float %250, %36
  %365 = fmul fast float %251, %37
  %366 = fmul fast float %252, %38
  %367 = fsub fast float %364, %256
  %368 = fsub fast float %365, %257
  %369 = fsub fast float %366, %258
  %370 = fsub fast float %253, %259
  %371 = fmul fast float %363, %367
  %372 = fmul fast float %363, %368
  %373 = fmul fast float %363, %369
  %374 = fmul fast float %363, %370
  %375 = fadd fast float %371, %256
  %376 = fadd fast float %372, %257
  %377 = fadd fast float %373, %258
  %378 = fadd fast float %374, %259
  %379 = fmul fast float %239, %239
  %380 = fmul fast float %379, %354
  br label %476

; <label>:381                                     ; preds = %236
  %382 = and i32 %261, 256
  %383 = icmp eq i32 %382, 0
  %384 = fsub fast float %303, %43
  br i1 %383, label %433, label %385

; <label>:385                                     ; preds = %381
  %386 = fadd fast float %245, %43
  %387 = fcmp fast olt float %303, %43
  %388 = fcmp fast ogt float %303, %386
  %389 = or i1 %387, %388
  %390 = select i1 %389, float 0.000000e+00, float %384
  %391 = call float @dx.op.unary.f32(i32 83, float %303)  ; DerivCoarseX(value)
  %392 = call float @dx.op.unary.f32(i32 84, float %303)  ; DerivCoarseY(value)
  %393 = fmul fast float %391, %391
  %394 = fmul fast float %392, %392
  %395 = fadd fast float %394, %393
  %396 = call float @dx.op.unary.f32(i32 24, float %395)  ; Sqrt(value)
  %397 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %398 = fmul fast float %397, %396
  %399 = call float @dx.op.unary.f32(i32 7, float %398)  ; Saturate(value)
  %400 = fmul fast float %399, %246
  %401 = fdiv fast float %384, %400
  %402 = call float @dx.op.unary.f32(i32 7, float %401)  ; Saturate(value)
  %403 = fmul fast float %402, 2.000000e+00
  %404 = fsub fast float 3.000000e+00, %403
  %405 = fmul fast float %402, %402
  %406 = fmul fast float %405, %404
  %407 = fsub fast float %303, %386
  %408 = fadd fast float %407, %400
  %409 = fdiv fast float %408, %400
  %410 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %411 = fmul fast float %410, 2.000000e+00
  %412 = fsub fast float 3.000000e+00, %411
  %413 = fmul fast float %410, %410
  %414 = fmul fast float %413, %412
  %415 = fsub fast float %406, %414
  %416 = fmul fast float %250, %36
  %417 = fmul fast float %251, %37
  %418 = fmul fast float %252, %38
  %419 = fsub fast float %416, %256
  %420 = fsub fast float %417, %257
  %421 = fsub fast float %418, %258
  %422 = fsub fast float %253, %259
  %423 = fmul fast float %415, %419
  %424 = fmul fast float %415, %420
  %425 = fmul fast float %415, %421
  %426 = fmul fast float %415, %422
  %427 = fadd fast float %423, %256
  %428 = fadd fast float %424, %257
  %429 = fadd fast float %425, %258
  %430 = fadd fast float %426, %259
  %431 = fmul fast float %390, %239
  %432 = call float @dx.op.unary.f32(i32 6, float %431)  ; FAbs(value)
  br label %476

; <label>:433                                     ; preds = %381
  br i1 %264, label %434, label %447

; <label>:434                                     ; preds = %433
  %435 = fdiv fast float 5.000000e+01, %28
  %436 = select i1 %266, float %435, float 1.000000e+00
  %437 = fmul fast float %436, %239
  %438 = fmul fast float %34, 2.000000e+00
  %439 = fmul fast float %35, 2.000000e+00
  %440 = fadd fast float %438, -1.000000e+00
  %441 = fadd fast float %439, -1.000000e+00
  %442 = call float @dx.op.dot2.f32(i32 54, float %440, float %441, float %440, float %441)  ; Dot2(ax,ay,bx,by)
  %443 = fmul fast float %247, %28
  %444 = fmul fast float %443, %442
  %445 = fsub fast float %384, %444
  %446 = fmul fast float %437, %445
  br label %476

; <label>:447                                     ; preds = %433
  br i1 %268, label %468, label %448

; <label>:448                                     ; preds = %447
  %449 = fmul fast float %28, 0x3F947AE140000000
  %450 = select i1 %266, float %449, float 1.000000e+00
  %451 = fdiv fast float 1.000000e+00, %450
  %452 = fmul fast float %450, %240
  %453 = fmul fast float %450, %241
  %454 = fmul fast float %451, %242
  %455 = call float @dx.op.unary.f32(i32 6, float %384)  ; FAbs(value)
  %456 = fcmp fast olt float %455, %452
  br i1 %456, label %457, label %461, !dx.controlflow.hints !62

; <label>:457                                     ; preds = %448
  %458 = fmul fast float %451, %239
  %459 = fmul fast float %458, %455
  %460 = call float @dx.op.unary.f32(i32 6, float %459)  ; FAbs(value)
  br label %476

; <label>:461                                     ; preds = %448
  %462 = fcmp fast ogt float %455, %453
  br i1 %462, label %463, label %476

; <label>:463                                     ; preds = %461
  %464 = fsub fast float %455, %453
  %465 = fmul fast float %454, %464
  %466 = call float @dx.op.unary.f32(i32 6, float %465)  ; FAbs(value)
  %467 = fsub fast float 1.000000e+00, %466
  br label %476

; <label>:468                                     ; preds = %447
  %469 = fdiv fast float 5.000000e+01, %28
  %470 = select i1 %266, float %469, float 1.000000e+00
  %471 = fmul fast float %470, %239
  %472 = call float @dx.op.unary.f32(i32 6, float %215)  ; FAbs(value)
  %473 = select i1 %263, float %472, float 0x47EFFFFFE0000000
  %474 = call float @dx.op.binary.f32(i32 36, float %384, float %473)  ; FMin(a,b)
  %475 = fmul fast float %471, %474
  br label %476

; <label>:476                                     ; preds = %468, %463, %461, %457, %434, %385, %304
  %477 = phi float [ %380, %304 ], [ %432, %385 ], [ %446, %434 ], [ %475, %468 ], [ %460, %457 ], [ %467, %463 ], [ %455, %461 ]
  %478 = phi float [ %375, %304 ], [ %427, %385 ], [ %36, %434 ], [ %36, %468 ], [ %36, %457 ], [ %36, %463 ], [ %36, %461 ]
  %479 = phi float [ %376, %304 ], [ %428, %385 ], [ %37, %434 ], [ %37, %468 ], [ %37, %457 ], [ %37, %463 ], [ %37, %461 ]
  %480 = phi float [ %377, %304 ], [ %429, %385 ], [ %38, %434 ], [ %38, %468 ], [ %38, %457 ], [ %38, %463 ], [ %38, %461 ]
  %481 = phi float [ %378, %304 ], [ %430, %385 ], [ 1.000000e+00, %434 ], [ 1.000000e+00, %468 ], [ 1.000000e+00, %457 ], [ 1.000000e+00, %463 ], [ 1.000000e+00, %461 ]
  %482 = call float @dx.op.unary.f32(i32 7, float %477)  ; Saturate(value)
  %483 = fmul fast float %481, %194
  %484 = fmul fast float %483, %482
  br label %485

; <label>:485                                     ; preds = %476, %233
  %486 = phi float [ %478, %476 ], [ %36, %233 ]
  %487 = phi float [ %479, %476 ], [ %37, %233 ]
  %488 = phi float [ %480, %476 ], [ %38, %233 ]
  %489 = phi float [ %484, %476 ], [ %194, %233 ]
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 2
  %492 = fptosi float %43 to i32
  %493 = sitofp i32 %492 to float
  %494 = fadd fast float %491, %493
  %495 = fmul fast float %494, 0x3FE3C6EF40000000
  %496 = frem fast float %48, 2.560000e+02
  %497 = frem fast float %49, 2.560000e+02
  %498 = fptoui float %496 to i32
  %499 = fptoui float %497 to i32
  %500 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %498, i32 %499, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  %502 = fadd fast float %501, %495
  %503 = call float @dx.op.unary.f32(i32 22, float %502)  ; Frc(value)
  %504 = and i32 %127, 1
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %562, label %506, !dx.controlflow.hints !63

; <label>:506                                     ; preds = %485
  %507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 2
  %509 = extractvalue %dx.types.ResRet.f32 %507, 3
  %510 = add i32 %124, 16
  %511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = extractvalue %dx.types.ResRet.f32 %511, 1
  %514 = extractvalue %dx.types.ResRet.f32 %511, 2
  %515 = add i32 %124, 32
  %516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  %518 = extractvalue %dx.types.ResRet.f32 %516, 1
  %519 = extractvalue %dx.types.ResRet.f32 %516, 2
  %520 = and i32 %127, 2
  %521 = icmp eq i32 %520, 0
  %522 = call float @dx.op.dot3.f32(i32 55, float %31, float %32, float %33, float %31, float %32, float %33)  ; Dot3(ax,ay,az,bx,by,bz)
  %523 = call float @dx.op.unary.f32(i32 25, float %522)  ; Rsqrt(value)
  %524 = fmul fast float %523, %31
  %525 = fmul fast float %523, %32
  %526 = fmul fast float %523, %33
  %527 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %528 = call float @dx.op.unary.f32(i32 25, float %527)  ; Rsqrt(value)
  %529 = fmul fast float %528, %83
  %530 = fmul fast float %528, %84
  %531 = fmul fast float %528, %85
  %532 = call float @dx.op.dot3.f32(i32 55, float %529, float %530, float %531, float %524, float %525, float %526)  ; Dot3(ax,ay,az,bx,by,bz)
  %533 = fmul fast float %532, %532
  %534 = fmul fast float %533, %508
  %535 = fadd fast float %534, %509
  %536 = call float @dx.op.unary.f32(i32 7, float %535)  ; Saturate(value)
  br i1 %521, label %537, label %547, !dx.controlflow.hints !64

; <label>:537                                     ; preds = %506
  %538 = extractvalue %dx.types.ResRet.f32 %507, 1
  %539 = extractvalue %dx.types.ResRet.f32 %507, 0
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %542 = fmul fast float %541, %527
  %543 = fsub fast float %539, %542
  %544 = fmul fast float %543, %538
  %545 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %546 = fmul fast float %545, %536
  br label %547

; <label>:547                                     ; preds = %537, %506
  %548 = phi float [ %546, %537 ], [ %536, %506 ]
  %549 = fsub fast float %512, %517
  %550 = fsub fast float %513, %518
  %551 = fsub fast float %514, %519
  %552 = fmul fast float %548, %549
  %553 = fmul fast float %548, %550
  %554 = fmul fast float %548, %551
  %555 = fadd fast float %552, %517
  %556 = fadd fast float %553, %518
  %557 = fadd fast float %554, %519
  %558 = fmul fast float %555, %486
  %559 = fmul fast float %556, %487
  %560 = fmul fast float %557, %488
  %561 = fmul fast float %548, %489
  br label %562

; <label>:562                                     ; preds = %547, %485
  %563 = phi float [ %558, %547 ], [ %486, %485 ]
  %564 = phi float [ %559, %547 ], [ %487, %485 ]
  %565 = phi float [ %560, %547 ], [ %488, %485 ]
  %566 = phi float [ %561, %547 ], [ %489, %485 ]
  %567 = add i32 %24, 88
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = add i32 %569, 0
  %571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %570, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %572 = add i32 %24, 24
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %571, %dx.types.Handle %44, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = extractvalue %dx.types.ResRet.f32 %575, 1
  %578 = extractvalue %dx.types.ResRet.f32 %575, 2
  %579 = extractvalue %dx.types.ResRet.f32 %575, 3
  %580 = and i32 %574, 255
  %581 = uitofp i32 %580 to float
  %582 = lshr i32 %574, 8
  %583 = and i32 %582, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %579, %581
  %586 = fadd fast float %585, %584
  %587 = fmul fast float %586, 0x3F70101000000000
  %588 = add i32 %24, 56
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = lshr i32 %590, 8
  %595 = and i32 %594, 255
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %596, 0x3F70101020000000
  %598 = lshr i32 %590, 16
  %599 = and i32 %598, 255
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %600, 0x3F70101020000000
  %602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.f32 %606, 1
  %608 = fadd fast float %587, 0xBFB99999A0000000
  %609 = call float @dx.op.unary.f32(i32 7, float %608)  ; Saturate(value)
  %610 = fmul fast float %609, 0x3FF1C71C80000000
  %611 = fsub fast float 1.000000e+00, %610
  %612 = call float @dx.op.unary.f32(i32 7, float %611)  ; Saturate(value)
  %613 = fmul fast float %576, %563
  %614 = fmul fast float %593, %593
  %615 = fmul fast float %614, %613
  %616 = fmul fast float %615, %612
  %617 = fmul fast float %577, %564
  %618 = fmul fast float %597, %597
  %619 = fmul fast float %618, %617
  %620 = fmul fast float %619, %612
  %621 = fmul fast float %578, %565
  %622 = fmul fast float %601, %601
  %623 = fmul fast float %622, %621
  %624 = fmul fast float %623, %612
  %625 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %626 = call float @dx.op.unary.f32(i32 7, float %620)  ; Saturate(value)
  %627 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %628 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %629 = add i32 %24, 32
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = and i32 %631, 255
  %633 = uitofp i32 %632 to float
  %634 = lshr i32 %631, 8
  %635 = and i32 %634, 255
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, %628
  %638 = fadd fast float %637, %633
  %639 = fmul fast float %638, 0x3F70101020000000
  %640 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  %641 = add i32 %24, 92
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = add i32 %643, 0
  %645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %645, %dx.types.Handle %45, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = and i32 %127, 8192
  %649 = icmp eq i32 %648, 0
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 0
  br i1 %649, label %662, label %652, !dx.controlflow.hints !65

; <label>:652                                     ; preds = %562
  %653 = add i32 %124, 176
  %654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.f32 %654, 0
  %656 = extractvalue %dx.types.ResRet.f32 %654, 1
  %657 = fcmp fast oge float %655, 0.000000e+00
  %658 = select i1 %657, float %655, float %651
  %659 = fmul fast float %647, %86
  %660 = fmul fast float %659, %656
  %661 = fadd fast float %660, %658
  br label %673

; <label>:662                                     ; preds = %562
  %663 = add i32 %24, 72
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %663, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = extractvalue %dx.types.ResRet.i32 %664, 1
  %667 = bitcast i32 %665 to float
  %668 = bitcast i32 %666 to float
  %669 = fcmp fast oge float %667, 0.000000e+00
  %670 = select i1 %669, float %667, float %651
  %671 = fmul fast float %668, %647
  %672 = fadd fast float %670, %671
  br label %673

; <label>:673                                     ; preds = %662, %652
  %674 = phi float [ %661, %652 ], [ %672, %662 ]
  %675 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %197, i32 %198, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = lshr i32 %676, 18
  %678 = uitofp i32 %677 to float
  %679 = fmul fast float %678, 0x3F4C00EBA0000000
  %680 = call float @dx.op.unary.f32(i32 21, float %679)  ; Exp(value)
  %681 = fadd fast float %680, -1.000000e+00
  %682 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %683 = extractvalue %dx.types.Dimensions %682, 0
  %684 = sitofp i32 %683 to float
  %685 = extractvalue %dx.types.Dimensions %682, 1
  %686 = sitofp i32 %685 to float
  %687 = fcmp fast oge float %195, %684
  %688 = fcmp fast oge float %196, %686
  %689 = or i1 %687, %688
  %690 = select i1 %689, float 0x4197782600000000, float %681
  %691 = fsub fast float 1.000000e+00, %566
  %692 = call float @dx.op.dot3.f32(i32 55, float %691, float %691, float %691, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = fsub fast float 1.000000e+00, %692
  %694 = fmul fast float %674, %640
  %695 = fsub fast float 1.000000e+00, %640
  %696 = call float @dx.op.unary.f32(i32 7, float %695)  ; Saturate(value)
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 3
  %699 = fmul fast float %698, %696
  %700 = fadd fast float %699, %694
  %701 = and i32 %127, 2097152
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %707, label %703, !dx.controlflow.hints !66

; <label>:703                                     ; preds = %673
  %704 = add i32 %124, 192
  %705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %704, i32 undef)  ; BufferLoad(srv,index,wot)
  %706 = extractvalue %dx.types.ResRet.f32 %705, 0
  br label %710

; <label>:707                                     ; preds = %673
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 3
  br label %710

; <label>:710                                     ; preds = %707, %703
  %711 = phi float [ %706, %703 ], [ %709, %707 ]
  %712 = fmul fast float %603, %566
  %713 = fmul fast float %712, %607
  %714 = fmul fast float %713, %625
  %715 = fmul fast float %604, %566
  %716 = fmul fast float %715, %607
  %717 = fmul fast float %716, %626
  %718 = fmul fast float %605, %566
  %719 = fmul fast float %718, %607
  %720 = fmul fast float %719, %627
  %721 = icmp eq i32 %123, 3
  %722 = fcmp fast ogt float %43, %690
  %723 = and i1 %221, %722
  %724 = or i1 %721, %723
  %725 = icmp eq i32 %123, 2
  %726 = fcmp fast ole float %43, %690
  %727 = and i1 %725, %726
  %728 = or i1 %727, %724
  br i1 %723, label %729, label %835

; <label>:729                                     ; preds = %710
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 2
  %732 = extractvalue %dx.types.CBufRet.f32 %730, 3
  %733 = fmul fast float %731, %48
  %734 = fmul fast float %732, %49
  %735 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  %736 = call float @dx.op.unary.f32(i32 7, float %734)  ; Saturate(value)
  %737 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %735, float %736, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  %739 = extractvalue %dx.types.ResRet.f32 %737, 1
  %740 = extractvalue %dx.types.ResRet.f32 %737, 2
  %741 = extractvalue %dx.types.ResRet.f32 %737, 3
  %742 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %735, float %736, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  %744 = extractvalue %dx.types.ResRet.f32 %742, 1
  %745 = extractvalue %dx.types.ResRet.f32 %742, 2
  %746 = extractvalue %dx.types.ResRet.f32 %742, 3
  %747 = call float @dx.op.binary.f32(i32 35, float %739, float %740)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 35, float %738, float %747)  ; FMax(a,b)
  %749 = call float @dx.op.binary.f32(i32 35, float %748, float %741)  ; FMax(a,b)
  %750 = call float @dx.op.binary.f32(i32 36, float %744, float %745)  ; FMin(a,b)
  %751 = call float @dx.op.binary.f32(i32 36, float %743, float %750)  ; FMin(a,b)
  %752 = call float @dx.op.binary.f32(i32 36, float %751, float %746)  ; FMin(a,b)
  %753 = fmul fast float %749, 2.550000e+02
  %754 = fadd fast float %753, 0x3F70101020000000
  %755 = fptoui float %754 to i32
  %756 = fmul fast float %752, 2.550000e+02
  %757 = fadd fast float %756, 0x3F70101020000000
  %758 = fptoui float %757 to i32
  %759 = icmp ult i32 %755, %758
  br i1 %759, label %760, label %811

; <label>:760                                     ; preds = %729
  %761 = fcmp fast ogt float %42, 9.843750e-01
  %762 = fadd fast float %43, -4.000000e+00
  %763 = select i1 %761, float -4.000000e+00, float %762
  %764 = call float @dx.op.binary.f32(i32 35, float %763, float 0.000000e+00)  ; FMax(a,b)
  %765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %766 = extractvalue %dx.types.CBufRet.f32 %765, 0
  %767 = fadd fast float %766, %764
  %768 = extractvalue %dx.types.CBufRet.f32 %765, 2
  %769 = fmul fast float %767, %768
  %770 = call float @dx.op.unary.f32(i32 23, float %769)  ; Log(value)
  %771 = extractvalue %dx.types.CBufRet.f32 %765, 3
  %772 = fmul fast float %771, %770
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %775 = fmul fast float %772, %774
  %776 = call float @dx.op.unary.f32(i32 7, float %775)  ; Saturate(value)
  %777 = uitofp i32 %755 to float
  %778 = uitofp i32 %758 to float
  %779 = fadd fast float %777, 5.000000e-01
  %780 = fadd fast float %778, 5.000000e-01
  %781 = fmul fast float %774, %779
  %782 = fmul fast float %774, %780
  %783 = fadd fast float %781, 0x3F0FFB4800000000
  %784 = fadd fast float %782, 0xBF0FFB4800000000
  %785 = call float @dx.op.binary.f32(i32 35, float %776, float %783)  ; FMax(a,b)
  %786 = call float @dx.op.binary.f32(i32 36, float %785, float %784)  ; FMin(a,b)
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 1
  %789 = extractvalue %dx.types.CBufRet.f32 %787, 2
  %790 = extractvalue %dx.types.CBufRet.f32 %787, 0
  %791 = fmul fast float %788, %786
  %792 = fadd fast float %790, %791
  %793 = fadd fast float %790, %789
  %794 = fsub fast float %788, %789
  %795 = fadd fast float %794, %790
  %796 = call float @dx.op.binary.f32(i32 35, float %792, float %793)  ; FMax(a,b)
  %797 = call float @dx.op.binary.f32(i32 36, float %796, float %795)  ; FMin(a,b)
  %798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %735, float %736, float %797, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = extractvalue %dx.types.ResRet.f32 %798, 1
  %801 = extractvalue %dx.types.ResRet.f32 %798, 2
  %802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %735, float %736, float %797, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %803 = extractvalue %dx.types.ResRet.f32 %802, 0
  %804 = extractvalue %dx.types.ResRet.f32 %802, 1
  %805 = extractvalue %dx.types.ResRet.f32 %802, 2
  %806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %807 = extractvalue %dx.types.CBufRet.f32 %806, 1
  %808 = fmul fast float %807, %803
  %809 = fmul fast float %807, %804
  %810 = fmul fast float %807, %805
  br label %811

; <label>:811                                     ; preds = %760, %729
  %812 = phi float [ %799, %760 ], [ 1.000000e+00, %729 ]
  %813 = phi float [ %800, %760 ], [ 1.000000e+00, %729 ]
  %814 = phi float [ %801, %760 ], [ 1.000000e+00, %729 ]
  %815 = phi float [ %808, %760 ], [ 0.000000e+00, %729 ]
  %816 = phi float [ %809, %760 ], [ 0.000000e+00, %729 ]
  %817 = phi float [ %810, %760 ], [ 0.000000e+00, %729 ]
  %818 = fmul fast float %815, %693
  %819 = fmul fast float %816, %693
  %820 = fmul fast float %817, %693
  %821 = call float @dx.op.dot3.f32(i32 55, float %812, float %813, float %814, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %822 = call float @dx.op.dot3.f32(i32 55, float %818, float %819, float %820, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %823 = select i1 %107, float %821, float %812
  %824 = select i1 %107, float %821, float %813
  %825 = select i1 %107, float 1.000000e+00, float %814
  %826 = select i1 %107, float %822, float %818
  %827 = select i1 %107, float 0.000000e+00, float %819
  %828 = select i1 %107, float 0.000000e+00, float %820
  %829 = fmul fast float %823, %714
  %830 = fmul fast float %824, %717
  %831 = fmul fast float %825, %720
  %832 = fadd fast float %829, %826
  %833 = fadd fast float %830, %827
  %834 = fadd fast float %828, %831
  br label %835

; <label>:835                                     ; preds = %811, %710
  %836 = phi float [ %690, %811 ], [ %43, %710 ]
  %837 = phi float [ %832, %811 ], [ %714, %710 ]
  %838 = phi float [ %833, %811 ], [ %717, %710 ]
  %839 = phi float [ %834, %811 ], [ %720, %710 ]
  %840 = phi float [ %812, %811 ], [ 1.000000e+00, %710 ]
  br i1 %728, label %1136, label %841

; <label>:841                                     ; preds = %835
  %842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %29, float %30, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = extractvalue %dx.types.ResRet.f32 %842, 1
  %845 = extractvalue %dx.types.ResRet.f32 %842, 2
  %846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %29, float %30, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = extractvalue %dx.types.ResRet.f32 %846, 1
  %849 = extractvalue %dx.types.ResRet.f32 %846, 2
  %850 = fmul fast float %843, %693
  %851 = fmul fast float %844, %693
  %852 = fmul fast float %845, %693
  %853 = fmul fast float %847, %840
  %854 = call float @dx.op.dot3.f32(i32 55, float %847, float %848, float %849, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %855 = call float @dx.op.dot3.f32(i32 55, float %850, float %851, float %852, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %856 = select i1 %107, float %854, float %847
  %857 = select i1 %107, float %854, float %848
  %858 = select i1 %107, float 1.000000e+00, float %849
  %859 = select i1 %107, float %855, float %850
  %860 = select i1 %107, float 0.000000e+00, float %851
  %861 = select i1 %107, float 0.000000e+00, float %852
  %862 = fmul fast float %856, %837
  %863 = fmul fast float %857, %838
  %864 = fmul fast float %858, %839
  %865 = fadd fast float %862, %859
  %866 = fadd fast float %863, %860
  %867 = fadd fast float %864, %861
  %868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.i32 %868, 0
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %1136, label %871, !dx.controlflow.hints !67

; <label>:871                                     ; preds = %841
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 2
  %874 = extractvalue %dx.types.CBufRet.f32 %872, 3
  %875 = fmul fast float %873, %48
  %876 = fmul fast float %874, %49
  %877 = fmul fast float %875, 2.000000e+00
  %878 = fmul fast float %876, 2.000000e+00
  %879 = fsub fast float 1.000000e+00, %877
  %880 = fsub fast float 1.000000e+00, %878
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 0
  %883 = extractvalue %dx.types.CBufRet.f32 %881, 1
  %884 = extractvalue %dx.types.CBufRet.f32 %881, 2
  %885 = fmul fast float %879, %882
  %886 = fmul fast float %879, %883
  %887 = fmul fast float %879, %884
  %888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.f32 %888, 0
  %890 = extractvalue %dx.types.CBufRet.f32 %888, 1
  %891 = extractvalue %dx.types.CBufRet.f32 %888, 2
  %892 = fmul fast float %880, %889
  %893 = fmul fast float %880, %890
  %894 = fmul fast float %880, %891
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %898 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %899 = fadd fast float %892, %896
  %900 = fadd fast float %899, %885
  %901 = fadd fast float %893, %897
  %902 = fadd fast float %901, %886
  %903 = fadd fast float %894, %898
  %904 = fadd fast float %903, %887
  %905 = fmul fast float %900, %836
  %906 = fmul fast float %902, %836
  %907 = fmul fast float %904, %836
  %908 = fmul fast float %905, %905
  %909 = fmul fast float %906, %906
  %910 = fadd fast float %908, %909
  %911 = fmul fast float %907, %907
  %912 = fadd fast float %910, %911
  %913 = call float @dx.op.unary.f32(i32 24, float %912)  ; Sqrt(value)
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 0
  %916 = fsub fast float %913, %915
  %917 = extractvalue %dx.types.CBufRet.f32 %914, 2
  %918 = fmul fast float %916, %917
  %919 = call float @dx.op.unary.f32(i32 7, float %918)  ; Saturate(value)
  %920 = fadd fast float %919, -5.000000e-01
  %921 = fmul fast float %920, 2.000000e+00
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 2
  %924 = call float @dx.op.binary.f32(i32 36, float %923, float %921)  ; FMin(a,b)
  %925 = fsub fast float -0.000000e+00, %923
  %926 = fcmp fast ogt float %924, %925
  br i1 %926, label %927, label %1136, !dx.controlflow.hints !68

; <label>:927                                     ; preds = %871
  %928 = fmul fast float %924, 5.000000e-01
  %929 = fadd fast float %928, 5.000000e-01
  %930 = call float @dx.op.unary.f32(i32 22, float %929)  ; Frc(value)
  %931 = call float @dx.op.unary.f32(i32 27, float %930)  ; Round_ni(value)
  %932 = call float @dx.op.unary.f32(i32 22, float %930)  ; Frc(value)
  %933 = fmul fast float %932, 2.000000e+00
  %934 = fadd fast float %933, -1.000000e+00
  %935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %875, float %876, float %931, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = extractvalue %dx.types.ResRet.f32 %935, 1
  %938 = extractvalue %dx.types.ResRet.f32 %935, 2
  %939 = extractvalue %dx.types.ResRet.f32 %935, 3
  %940 = fadd fast float %936, -5.000000e-01
  %941 = fadd fast float %938, -5.000000e-01
  %942 = fmul fast float %940, 0xBFD5555560000000
  %943 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %941, float %942)  ; FMad(a,b,c)
  %944 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %937, float 0.000000e+00)  ; FMad(a,b,c)
  %945 = fadd fast float %944, %939
  %946 = fmul fast float %940, -7.500000e-01
  %947 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %941, float %946)  ; FMad(a,b,c)
  %948 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %937, float 0.000000e+00)  ; FMad(a,b,c)
  %949 = fadd fast float %948, %939
  %950 = call float @dx.op.binary.f32(i32 35, float %943, float -1.000000e+00)  ; FMax(a,b)
  %951 = call float @dx.op.binary.f32(i32 35, float %945, float -1.000000e+00)  ; FMax(a,b)
  %952 = call float @dx.op.binary.f32(i32 35, float %947, float -1.000000e+00)  ; FMax(a,b)
  %953 = call float @dx.op.binary.f32(i32 35, float %949, float -1.000000e+00)  ; FMax(a,b)
  %954 = call float @dx.op.binary.f32(i32 36, float %950, float 1.000000e+00)  ; FMin(a,b)
  %955 = call float @dx.op.binary.f32(i32 36, float %951, float 1.000000e+00)  ; FMin(a,b)
  %956 = call float @dx.op.binary.f32(i32 36, float %952, float 1.000000e+00)  ; FMin(a,b)
  %957 = call float @dx.op.binary.f32(i32 36, float %953, float 1.000000e+00)  ; FMin(a,b)
  %958 = fcmp fast olt float %954, 0x3FEFFF8020000000
  br i1 %958, label %959, label %1074, !dx.controlflow.hints !69

; <label>:959                                     ; preds = %927
  %960 = extractvalue %dx.types.CBufRet.f32 %922, 3
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %964 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %965 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %966 = fsub fast float %962, %954
  %967 = fsub fast float %963, %955
  %968 = fsub fast float %964, %956
  %969 = fsub fast float %965, %957
  %970 = fmul fast float %966, %960
  %971 = fmul fast float %967, %960
  %972 = fmul fast float %968, %960
  %973 = fmul fast float %969, %960
  %974 = fadd fast float %970, %954
  %975 = fadd fast float %971, %955
  %976 = fsub fast float -0.000000e+00, %975
  %977 = fadd fast float %972, %956
  %978 = fadd fast float %973, %957
  %979 = fmul fast float %974, %974
  %980 = fsub fast float %975, %979
  %981 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %980)  ; FMax(a,b)
  %982 = fdiv fast float 1.000000e+00, %981
  %983 = fmul fast float %975, %974
  %984 = fsub fast float %977, %983
  %985 = fsub fast float %934, %974
  %986 = fmul fast float %934, %934
  %987 = fsub fast float %986, %975
  %988 = fmul fast float %985, %982
  %989 = fmul fast float %988, %984
  %990 = fsub fast float %987, %989
  %991 = fmul fast float %975, %975
  %992 = fsub fast float %978, %991
  %993 = fmul fast float %984, %984
  %994 = fmul fast float %993, %982
  %995 = fsub fast float %992, %994
  %996 = fdiv fast float %990, %995
  %997 = fmul fast float %984, %996
  %998 = fsub fast float %985, %997
  %999 = fmul fast float %998, %982
  %1000 = fmul fast float %999, %974
  %1001 = fsub fast float 1.000000e+00, %1000
  %1002 = fmul fast float %975, %996
  %1003 = fsub fast float %1001, %1002
  %1004 = fmul fast float %999, %999
  %1005 = fmul fast float %996, 4.000000e+00
  %1006 = fmul fast float %1005, %1003
  %1007 = fsub fast float %1004, %1006
  %1008 = call float @dx.op.unary.f32(i32 24, float %1007)  ; Sqrt(value)
  %1009 = fcmp fast oge float %999, 0.000000e+00
  %1010 = fsub fast float -0.000000e+00, %1008
  %1011 = select i1 %1009, float %1010, float %1008
  %1012 = fsub fast float %1011, %999
  %1013 = fdiv fast float %1012, %996
  %1014 = fdiv fast float %1003, %1012
  %1015 = fmul fast float %1013, 5.000000e-01
  %1016 = fmul fast float %1014, 2.000000e+00
  %1017 = select i1 %1009, float %1015, float %1016
  %1018 = select i1 %1009, float %1016, float %1015
  %1019 = call float @dx.op.binary.f32(i32 35, float %1017, float %1018)  ; FMax(a,b)
  %1020 = call float @dx.op.binary.f32(i32 36, float %1017, float %1018)  ; FMin(a,b)
  %1021 = fcmp fast ogt float %934, %1020
  br i1 %1021, label %1022, label %1032

; <label>:1022                                    ; preds = %959
  %1023 = fsub fast float %934, %1020
  %1024 = fsub fast float %1019, %1020
  %1025 = fmul fast float %1023, %1024
  %1026 = fmul fast float %1019, %934
  %1027 = fadd fast float %1019, %934
  %1028 = fmul fast float %1027, %974
  %1029 = fadd fast float %1026, %975
  %1030 = fsub fast float %1029, %1028
  %1031 = fdiv fast float %1030, %1025
  br label %1032

; <label>:1032                                    ; preds = %1022, %959
  %1033 = phi float [ %1031, %1022 ], [ 0.000000e+00, %959 ]
  %1034 = fcmp fast ogt float %934, %1019
  %1035 = fsub fast float %934, %1019
  br i1 %1034, label %1036, label %1046

; <label>:1036                                    ; preds = %1032
  %1037 = fsub fast float %1019, %1020
  %1038 = fmul fast float %1037, %1035
  %1039 = fmul fast float %1020, %934
  %1040 = fadd fast float %1020, %934
  %1041 = fmul fast float %1040, %974
  %1042 = fsub fast float %976, %1039
  %1043 = fadd fast float %1042, %1041
  %1044 = fdiv fast float %1043, %1038
  %1045 = fadd fast float %1044, %1033
  br label %1046

; <label>:1046                                    ; preds = %1036, %1032
  %1047 = phi float [ %1045, %1036 ], [ %1033, %1032 ]
  %1048 = fsub fast float %934, %1020
  %1049 = fmul fast float %1048, %1035
  %1050 = fmul fast float %1020, %1019
  %1051 = fadd fast float %1020, %1019
  %1052 = fmul fast float %1051, %974
  %1053 = fadd fast float %1050, %975
  %1054 = fsub fast float %1053, %1052
  %1055 = fdiv fast float %1054, %1049
  %1056 = call float @dx.op.unary.f32(i32 7, float %1047)  ; Saturate(value)
  %1057 = fcmp fast oeq float %711, 0.000000e+00
  %1058 = extractvalue %dx.types.CBufRet.f32 %922, 0
  %1059 = fcmp fast oeq float %1058, 0.000000e+00
  %1060 = or i1 %1057, %1059
  %1061 = fmul fast float %1058, 2.000000e+00
  %1062 = fadd fast float %923, %924
  %1063 = fdiv fast float %1062, %1061
  %1064 = call float @dx.op.unary.f32(i32 7, float %1063)  ; Saturate(value)
  %1065 = fmul fast float %1064, 2.000000e+00
  %1066 = fsub fast float 3.000000e+00, %1065
  %1067 = fmul fast float %1064, %1064
  %1068 = fmul fast float %1067, %1066
  %1069 = select i1 %1060, float 1.000000e+00, float %1068
  %1070 = fmul fast float %1055, %711
  %1071 = fadd fast float %1056, %1070
  %1072 = call float @dx.op.unary.f32(i32 7, float %1071)  ; Saturate(value)
  %1073 = fmul fast float %1069, %1072
  br label %1074

; <label>:1074                                    ; preds = %1046, %927
  %1075 = phi float [ %1073, %1046 ], [ 0.000000e+00, %927 ]
  %1076 = fsub fast float 1.000000e+00, %1075
  %1077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %875, float %876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.i32 %1079, 2
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1087, label %1082

; <label>:1082                                    ; preds = %1074
  %1083 = call float @dx.op.unary.f32(i32 7, float %1075)  ; Saturate(value)
  %1084 = fadd fast float %1078, -1.000000e+00
  %1085 = fmul fast float %1083, %1084
  %1086 = fadd fast float %1085, 1.000000e+00
  br label %1087

; <label>:1087                                    ; preds = %1082, %1074
  %1088 = phi float [ %1086, %1082 ], [ %1076, %1074 ]
  %1089 = call float @dx.op.binary.f32(i32 35, float %1078, float %1088)  ; FMax(a,b)
  %1090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.i32 %1090, 2
  %1092 = and i32 %1091, 1
  %1093 = icmp eq i32 %1092, 0
  %1094 = fcmp fast une float %1089, 1.000000e+00
  %1095 = and i1 %1094, %1093
  br i1 %1095, label %1096, label %1115

; <label>:1096                                    ; preds = %1087
  %1097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %875, float %876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1098 = extractvalue %dx.types.ResRet.f32 %1097, 0
  %1099 = extractvalue %dx.types.ResRet.f32 %1097, 1
  %1100 = extractvalue %dx.types.ResRet.f32 %1097, 2
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 1
  %1103 = fmul fast float %1102, %1098
  %1104 = fmul fast float %1102, %1099
  %1105 = fmul fast float %1102, %1100
  %1106 = fcmp fast ogt float %1078, 0x3FEFFF2E40000000
  %1107 = fsub fast float 1.000000e+00, %1089
  %1108 = fsub fast float 1.000000e+00, %1078
  %1109 = fdiv fast float %1107, %1108
  %1110 = call float @dx.op.unary.f32(i32 7, float %1109)  ; Saturate(value)
  %1111 = select i1 %1106, float 0.000000e+00, float %1110
  %1112 = fmul fast float %1103, %1111
  %1113 = fmul fast float %1104, %1111
  %1114 = fmul fast float %1105, %1111
  br label %1115

; <label>:1115                                    ; preds = %1096, %1087
  %1116 = phi float [ 0.000000e+00, %1087 ], [ %1112, %1096 ]
  %1117 = phi float [ 0.000000e+00, %1087 ], [ %1113, %1096 ]
  %1118 = phi float [ 0.000000e+00, %1087 ], [ %1114, %1096 ]
  %1119 = fmul fast float %1116, %693
  %1120 = fmul fast float %1117, %693
  %1121 = fmul fast float %1118, %693
  %1122 = fmul fast float %1089, %853
  %1123 = call float @dx.op.dot3.f32(i32 55, float %1089, float %1089, float %1089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1124 = call float @dx.op.dot3.f32(i32 55, float %1119, float %1120, float %1121, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = select i1 %107, float %1123, float %1089
  %1126 = select i1 %107, float 1.000000e+00, float %1089
  %1127 = select i1 %107, float %1124, float %1119
  %1128 = select i1 %107, float 0.000000e+00, float %1120
  %1129 = select i1 %107, float 0.000000e+00, float %1121
  %1130 = fmul fast float %1125, %865
  %1131 = fmul fast float %1125, %866
  %1132 = fmul fast float %1126, %867
  %1133 = fadd fast float %1130, %1127
  %1134 = fadd fast float %1131, %1128
  %1135 = fadd fast float %1129, %1132
  br label %1136

; <label>:1136                                    ; preds = %1115, %871, %841, %835
  %1137 = phi float [ %837, %835 ], [ %865, %841 ], [ %1133, %1115 ], [ %865, %871 ]
  %1138 = phi float [ %838, %835 ], [ %866, %841 ], [ %1134, %1115 ], [ %866, %871 ]
  %1139 = phi float [ %839, %835 ], [ %867, %841 ], [ %1135, %1115 ], [ %867, %871 ]
  %1140 = phi float [ %840, %835 ], [ %853, %841 ], [ %1122, %1115 ], [ %853, %871 ]
  %1141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.f32 %1141, 2
  %1143 = extractvalue %dx.types.CBufRet.f32 %1141, 3
  %1144 = fmul fast float %1142, %48
  %1145 = fmul fast float %1143, %49
  %1146 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  %1147 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1148 = select i1 %728, i32 2, i32 0
  %1149 = or i32 %1148, 1
  %1150 = uitofp i32 %1149 to float
  %1151 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1146, float %1147, float %1150, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  %1153 = extractvalue %dx.types.ResRet.f32 %1151, 1
  %1154 = extractvalue %dx.types.ResRet.f32 %1151, 2
  %1155 = extractvalue %dx.types.ResRet.f32 %1151, 3
  %1156 = add nuw nsw i32 %1148, 2
  %1157 = uitofp i32 %1156 to float
  %1158 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1146, float %1147, float %1157, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.ResRet.f32 %1158, 1
  %1161 = extractvalue %dx.types.ResRet.f32 %1158, 2
  %1162 = extractvalue %dx.types.ResRet.f32 %1158, 3
  %1163 = call float @dx.op.binary.f32(i32 35, float %1153, float %1154)  ; FMax(a,b)
  %1164 = call float @dx.op.binary.f32(i32 35, float %1152, float %1163)  ; FMax(a,b)
  %1165 = call float @dx.op.binary.f32(i32 35, float %1164, float %1155)  ; FMax(a,b)
  %1166 = call float @dx.op.binary.f32(i32 36, float %1160, float %1161)  ; FMin(a,b)
  %1167 = call float @dx.op.binary.f32(i32 36, float %1159, float %1166)  ; FMin(a,b)
  %1168 = call float @dx.op.binary.f32(i32 36, float %1167, float %1162)  ; FMin(a,b)
  %1169 = fmul fast float %1165, 2.550000e+02
  %1170 = fadd fast float %1169, 0x3F70101020000000
  %1171 = fptoui float %1170 to i32
  %1172 = fmul fast float %1168, 2.550000e+02
  %1173 = fadd fast float %1172, 0x3F70101020000000
  %1174 = fptoui float %1173 to i32
  %1175 = icmp ult i32 %1171, %1174
  br i1 %1175, label %1176, label %1228

; <label>:1176                                    ; preds = %1136
  %1177 = fcmp fast ogt float %42, 9.843750e-01
  %1178 = fadd fast float %836, -4.000000e+00
  %1179 = select i1 %1177, float -4.000000e+00, float %1178
  %1180 = call float @dx.op.binary.f32(i32 35, float %1179, float 0.000000e+00)  ; FMax(a,b)
  %1181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1181, 0
  %1183 = fadd fast float %1182, %1180
  %1184 = extractvalue %dx.types.CBufRet.f32 %1181, 2
  %1185 = fmul fast float %1183, %1184
  %1186 = call float @dx.op.unary.f32(i32 23, float %1185)  ; Log(value)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1181, 3
  %1188 = fmul fast float %1187, %1186
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 2
  %1191 = fmul fast float %1188, %1190
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1193 = uitofp i32 %1171 to float
  %1194 = uitofp i32 %1174 to float
  %1195 = fadd fast float %1193, 5.000000e-01
  %1196 = fadd fast float %1194, 5.000000e-01
  %1197 = fmul fast float %1190, %1195
  %1198 = fmul fast float %1190, %1196
  %1199 = fadd fast float %1197, 0x3F0FFB4800000000
  %1200 = fadd fast float %1198, 0xBF0FFB4800000000
  %1201 = call float @dx.op.binary.f32(i32 35, float %1192, float %1199)  ; FMax(a,b)
  %1202 = call float @dx.op.binary.f32(i32 36, float %1201, float %1200)  ; FMin(a,b)
  %1203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1204 = extractvalue %dx.types.CBufRet.f32 %1203, 1
  %1205 = extractvalue %dx.types.CBufRet.f32 %1203, 2
  %1206 = extractvalue %dx.types.CBufRet.f32 %1203, 0
  %1207 = select i1 %728, float %1206, float 0.000000e+00
  %1208 = fmul fast float %1204, %1202
  %1209 = fadd fast float %1207, %1208
  %1210 = fadd fast float %1207, %1205
  %1211 = fsub fast float %1204, %1205
  %1212 = fadd fast float %1211, %1207
  %1213 = call float @dx.op.binary.f32(i32 35, float %1209, float %1210)  ; FMax(a,b)
  %1214 = call float @dx.op.binary.f32(i32 36, float %1213, float %1212)  ; FMin(a,b)
  %1215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1146, float %1147, float %1214, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.ResRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.ResRet.f32 %1215, 2
  %1219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1146, float %1147, float %1214, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.ResRet.f32 %1219, 1
  %1222 = extractvalue %dx.types.ResRet.f32 %1219, 2
  %1223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1224 = extractvalue %dx.types.CBufRet.f32 %1223, 1
  %1225 = fmul fast float %1224, %1220
  %1226 = fmul fast float %1224, %1221
  %1227 = fmul fast float %1224, %1222
  br label %1228

; <label>:1228                                    ; preds = %1176, %1136
  %1229 = phi float [ %1216, %1176 ], [ 1.000000e+00, %1136 ]
  %1230 = phi float [ %1217, %1176 ], [ 1.000000e+00, %1136 ]
  %1231 = phi float [ %1218, %1176 ], [ 1.000000e+00, %1136 ]
  %1232 = phi float [ %1225, %1176 ], [ 0.000000e+00, %1136 ]
  %1233 = phi float [ %1226, %1176 ], [ 0.000000e+00, %1136 ]
  %1234 = phi float [ %1227, %1176 ], [ 0.000000e+00, %1136 ]
  %1235 = fmul fast float %1232, %693
  %1236 = fmul fast float %1233, %693
  %1237 = fmul fast float %1234, %693
  %1238 = fmul fast float %1229, %1140
  %1239 = call float @dx.op.dot3.f32(i32 55, float %1229, float %1230, float %1231, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1240 = call float @dx.op.dot3.f32(i32 55, float %1235, float %1236, float %1237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1241 = select i1 %107, float %1239, float %1229
  %1242 = select i1 %107, float %1239, float %1230
  %1243 = select i1 %107, float 1.000000e+00, float %1231
  %1244 = select i1 %107, float %1240, float %1235
  %1245 = select i1 %107, float 0.000000e+00, float %1236
  %1246 = select i1 %107, float 0.000000e+00, float %1237
  %1247 = fmul fast float %1241, %1137
  %1248 = fmul fast float %1242, %1138
  %1249 = fmul fast float %1243, %1139
  %1250 = fadd fast float %1247, %1244
  %1251 = fadd fast float %1248, %1245
  %1252 = fadd fast float %1246, %1249
  %1253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1254 = extractvalue %dx.types.CBufRet.i32 %1253, 3
  %1255 = and i32 %1254, 3
  %1256 = icmp ne i32 %1255, 0
  %1257 = and i32 %1254, 4
  %1258 = icmp ne i32 %1257, 0
  %1259 = and i1 %1256, %1258
  %1260 = and i1 %107, %1259
  br i1 %1260, label %1261, label %1267

; <label>:1261                                    ; preds = %1228
  %1262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1263 = extractvalue %dx.types.CBufRet.f32 %1262, 1
  %1264 = fadd fast float %1238, -1.000000e+00
  %1265 = fmul fast float %1263, %1264
  %1266 = fadd fast float %1265, 1.000000e+00
  br label %1267

; <label>:1267                                    ; preds = %1261, %1228
  %1268 = phi float [ %1266, %1261 ], [ %1238, %1228 ]
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 0
  br i1 %107, label %1271, label %1292

; <label>:1271                                    ; preds = %1267
  %1272 = fadd fast float %1250, %1251
  %1273 = fmul fast float %1270, %1272
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 3
  %1276 = extractvalue %dx.types.CBufRet.f32 %697, 1
  %1277 = fsub fast float %700, %1276
  %1278 = extractvalue %dx.types.CBufRet.f32 %697, 2
  %1279 = fmul fast float %1277, %1278
  %1280 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1281 = fsub fast float %1280, %1275
  %1282 = fmul fast float %1281, %1268
  %1283 = fadd fast float %1282, %1275
  %1284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1284, 0
  %1286 = fsub fast float %1283, %1285
  %1287 = fmul fast float %1286, 1.000000e+01
  %1288 = call float @dx.op.unary.f32(i32 7, float %1287)  ; Saturate(value)
  %1289 = fmul fast float %1288, %693
  %1290 = fsub fast float %693, %1289
  %1291 = fmul fast float %1290, %1283
  br label %1301

; <label>:1292                                    ; preds = %1267
  %1293 = fmul fast float %1270, %1250
  %1294 = fmul fast float %1270, %1251
  %1295 = fmul fast float %1270, %1252
  %1296 = call float @dx.op.binary.f32(i32 35, float %1294, float %1295)  ; FMax(a,b)
  %1297 = call float @dx.op.binary.f32(i32 35, float %1293, float %1296)  ; FMax(a,b)
  %1298 = call float @dx.op.binary.f32(i32 35, float %1297, float %693)  ; FMax(a,b)
  %1299 = fcmp fast ugt float %1298, 0x3F10000000000000
  br i1 %1299, label %1301, label %1300

; <label>:1300                                    ; preds = %1292
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1301

; <label>:1301                                    ; preds = %1300, %1292, %1271
  %1302 = phi float [ %1273, %1271 ], [ %1293, %1300 ], [ %1293, %1292 ]
  %1303 = phi float [ %1291, %1271 ], [ %1294, %1300 ], [ %1294, %1292 ]
  %1304 = phi float [ %1290, %1271 ], [ %1295, %1300 ], [ %1295, %1292 ]
  %1305 = phi float [ %1290, %1271 ], [ %693, %1300 ], [ %693, %1292 ]
  %1306 = fadd fast float %503, 0x3FE3C6EF40000000
  %1307 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1308 = call float @dx.op.unary.f32(i32 23, float %1302)  ; Log(value)
  %1309 = fadd fast float %1308, -7.000000e+00
  %1310 = call float @dx.op.unary.f32(i32 21, float %1309)  ; Exp(value)
  %1311 = fmul fast float %1307, 2.000000e+00
  %1312 = fadd fast float %1311, -1.000000e+00
  %1313 = fmul fast float %1310, %1312
  %1314 = fcmp fast ogt float %1302, 0.000000e+00
  %1315 = select i1 %1314, float %1313, float 0.000000e+00
  %1316 = fadd fast float %1315, %1302
  %1317 = fadd fast float %503, 0x3FF3C6EF40000000
  %1318 = call float @dx.op.unary.f32(i32 22, float %1317)  ; Frc(value)
  %1319 = call float @dx.op.unary.f32(i32 23, float %1303)  ; Log(value)
  %1320 = fadd fast float %1319, -7.000000e+00
  %1321 = call float @dx.op.unary.f32(i32 21, float %1320)  ; Exp(value)
  %1322 = fmul fast float %1318, 2.000000e+00
  %1323 = fadd fast float %1322, -1.000000e+00
  %1324 = fmul fast float %1321, %1323
  %1325 = fcmp fast ogt float %1303, 0.000000e+00
  %1326 = select i1 %1325, float %1324, float 0.000000e+00
  %1327 = fadd fast float %1326, %1303
  %1328 = fadd fast float %503, 0x3FFDAA66E0000000
  %1329 = call float @dx.op.unary.f32(i32 22, float %1328)  ; Frc(value)
  %1330 = call float @dx.op.unary.f32(i32 23, float %1304)  ; Log(value)
  %1331 = fadd fast float %1330, -6.000000e+00
  %1332 = call float @dx.op.unary.f32(i32 21, float %1331)  ; Exp(value)
  %1333 = fmul fast float %1329, 2.000000e+00
  %1334 = fadd fast float %1333, -1.000000e+00
  %1335 = fmul fast float %1332, %1334
  %1336 = fcmp fast ogt float %1304, 0.000000e+00
  %1337 = select i1 %1336, float %1335, float 0.000000e+00
  %1338 = fadd fast float %1337, %1304
  %1339 = select i1 %107, float %1303, float %1327
  %1340 = select i1 %107, float %1304, float %1338
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1341 = call float @dx.op.binary.f32(i32 36, float %1316, float 3.225500e+04)  ; FMin(a,b)
  %1342 = call float @dx.op.binary.f32(i32 36, float %1339, float 3.225500e+04)  ; FMin(a,b)
  %1343 = call float @dx.op.binary.f32(i32 36, float %1340, float 3.225500e+04)  ; FMin(a,b)
  %1344 = call float @dx.op.binary.f32(i32 36, float %1305, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1341)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1342)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1343)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1344)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1305)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1305)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1305)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1305)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

