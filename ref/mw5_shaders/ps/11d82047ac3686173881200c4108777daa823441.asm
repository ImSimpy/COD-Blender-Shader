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
; shader hash: 936db95617d6bfa80ef91debf9c13703
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
  br i1 %235, label %486, label %236, !dx.controlflow.hints !60

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
  %483 = fmul fast float %482, %39
  %484 = fmul fast float %481, %194
  %485 = fmul fast float %484, %482
  br label %486

; <label>:486                                     ; preds = %476, %233
  %487 = phi float [ %478, %476 ], [ %36, %233 ]
  %488 = phi float [ %479, %476 ], [ %37, %233 ]
  %489 = phi float [ %480, %476 ], [ %38, %233 ]
  %490 = phi float [ %485, %476 ], [ %194, %233 ]
  %491 = phi float [ %483, %476 ], [ %39, %233 ]
  %492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.f32 %492, 2
  %494 = fptosi float %43 to i32
  %495 = sitofp i32 %494 to float
  %496 = fadd fast float %493, %495
  %497 = fmul fast float %496, 0x3FE3C6EF40000000
  %498 = frem fast float %48, 2.560000e+02
  %499 = frem fast float %49, 2.560000e+02
  %500 = fptoui float %498 to i32
  %501 = fptoui float %499 to i32
  %502 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %500, i32 %501, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = fadd fast float %503, %497
  %505 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %506 = and i32 %127, 1
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %565, label %508, !dx.controlflow.hints !63

; <label>:508                                     ; preds = %486
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 2
  %511 = extractvalue %dx.types.ResRet.f32 %509, 3
  %512 = add i32 %124, 16
  %513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = extractvalue %dx.types.ResRet.f32 %513, 1
  %516 = extractvalue %dx.types.ResRet.f32 %513, 2
  %517 = add i32 %124, 32
  %518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = extractvalue %dx.types.ResRet.f32 %518, 1
  %521 = extractvalue %dx.types.ResRet.f32 %518, 2
  %522 = and i32 %127, 2
  %523 = icmp eq i32 %522, 0
  %524 = call float @dx.op.dot3.f32(i32 55, float %31, float %32, float %33, float %31, float %32, float %33)  ; Dot3(ax,ay,az,bx,by,bz)
  %525 = call float @dx.op.unary.f32(i32 25, float %524)  ; Rsqrt(value)
  %526 = fmul fast float %525, %31
  %527 = fmul fast float %525, %32
  %528 = fmul fast float %525, %33
  %529 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %530 = call float @dx.op.unary.f32(i32 25, float %529)  ; Rsqrt(value)
  %531 = fmul fast float %530, %83
  %532 = fmul fast float %530, %84
  %533 = fmul fast float %530, %85
  %534 = call float @dx.op.dot3.f32(i32 55, float %531, float %532, float %533, float %526, float %527, float %528)  ; Dot3(ax,ay,az,bx,by,bz)
  %535 = fmul fast float %534, %534
  %536 = fmul fast float %535, %510
  %537 = fadd fast float %536, %511
  %538 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  br i1 %523, label %539, label %549, !dx.controlflow.hints !64

; <label>:539                                     ; preds = %508
  %540 = extractvalue %dx.types.ResRet.f32 %509, 1
  %541 = extractvalue %dx.types.ResRet.f32 %509, 0
  %542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %543 = extractvalue %dx.types.CBufRet.f32 %542, 3
  %544 = fmul fast float %543, %529
  %545 = fsub fast float %541, %544
  %546 = fmul fast float %545, %540
  %547 = call float @dx.op.unary.f32(i32 7, float %546)  ; Saturate(value)
  %548 = fmul fast float %547, %538
  br label %549

; <label>:549                                     ; preds = %539, %508
  %550 = phi float [ %548, %539 ], [ %538, %508 ]
  %551 = fsub fast float %514, %519
  %552 = fsub fast float %515, %520
  %553 = fsub fast float %516, %521
  %554 = fmul fast float %550, %551
  %555 = fmul fast float %550, %552
  %556 = fmul fast float %550, %553
  %557 = fadd fast float %554, %519
  %558 = fadd fast float %555, %520
  %559 = fadd fast float %556, %521
  %560 = fmul fast float %557, %487
  %561 = fmul fast float %558, %488
  %562 = fmul fast float %559, %489
  %563 = fmul fast float %550, %490
  %564 = fmul fast float %550, %491
  br label %565

; <label>:565                                     ; preds = %549, %486
  %566 = phi float [ %560, %549 ], [ %487, %486 ]
  %567 = phi float [ %561, %549 ], [ %488, %486 ]
  %568 = phi float [ %562, %549 ], [ %489, %486 ]
  %569 = phi float [ %563, %549 ], [ %490, %486 ]
  %570 = phi float [ %564, %549 ], [ %491, %486 ]
  %571 = add i32 %24, 88
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = add i32 %573, 0
  %575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %575, %dx.types.Handle %44, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = extractvalue %dx.types.ResRet.f32 %576, 1
  %579 = extractvalue %dx.types.ResRet.f32 %576, 2
  %580 = add i32 %24, 56
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = and i32 %582, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = lshr i32 %582, 8
  %587 = and i32 %586, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = lshr i32 %582, 16
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = add i32 %24, 40
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %596, 255
  %598 = uitofp i32 %597 to float
  %599 = fmul fast float %598, 0x3F70101020000000
  %600 = fmul fast float %599, %599
  %601 = add i32 %24, 96
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = add i32 %603, 0
  %605 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %604, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %606 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %605, %dx.types.Handle %45, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = fmul fast float %600, %607
  %609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %18, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %614 = extractvalue %dx.types.CBufRet.f32 %613, 1
  %615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %616 = extractvalue %dx.types.CBufRet.f32 %615, 0
  %617 = fmul fast float %577, %566
  %618 = fmul fast float %585, %585
  %619 = fmul fast float %618, %617
  %620 = fmul fast float %619, %616
  %621 = fmul fast float %578, %567
  %622 = fmul fast float %589, %589
  %623 = fmul fast float %622, %621
  %624 = fmul fast float %623, %616
  %625 = fmul fast float %579, %568
  %626 = fmul fast float %593, %593
  %627 = fmul fast float %626, %625
  %628 = fmul fast float %627, %616
  %629 = call float @dx.op.dot3.f32(i32 55, float %620, float %624, float %628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %630 = add i32 %24, 32
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = lshr i32 %632, 8
  %636 = and i32 %635, 255
  %637 = uitofp i32 %636 to float
  %638 = fmul fast float %637, %629
  %639 = fadd fast float %638, %634
  %640 = fmul fast float %639, 0x3F70101020000000
  %641 = call float @dx.op.unary.f32(i32 7, float %640)  ; Saturate(value)
  %642 = add i32 %24, 92
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = add i32 %644, 0
  %646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %646, %dx.types.Handle %45, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = and i32 %127, 8192
  %650 = icmp eq i32 %649, 0
  %651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.f32 %651, 0
  br i1 %650, label %663, label %653, !dx.controlflow.hints !65

; <label>:653                                     ; preds = %565
  %654 = add i32 %124, 176
  %655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = extractvalue %dx.types.ResRet.f32 %655, 1
  %658 = fcmp fast oge float %656, 0.000000e+00
  %659 = select i1 %658, float %656, float %652
  %660 = fmul fast float %648, %86
  %661 = fmul fast float %660, %657
  %662 = fadd fast float %661, %659
  br label %674

; <label>:663                                     ; preds = %565
  %664 = add i32 %24, 72
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %664, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = extractvalue %dx.types.ResRet.i32 %665, 1
  %668 = bitcast i32 %666 to float
  %669 = bitcast i32 %667 to float
  %670 = fcmp fast oge float %668, 0.000000e+00
  %671 = select i1 %670, float %668, float %652
  %672 = fmul fast float %669, %648
  %673 = fadd fast float %671, %672
  br label %674

; <label>:674                                     ; preds = %663, %653
  %675 = phi float [ %662, %653 ], [ %673, %663 ]
  %676 = fsub fast float 1.000000e+00, %608
  %677 = fmul fast float %676, %570
  %678 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %197, i32 %198, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = lshr i32 %679, 18
  %681 = uitofp i32 %680 to float
  %682 = fmul fast float %681, 0x3F4C00EBA0000000
  %683 = call float @dx.op.unary.f32(i32 21, float %682)  ; Exp(value)
  %684 = fadd fast float %683, -1.000000e+00
  %685 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %686 = extractvalue %dx.types.Dimensions %685, 0
  %687 = sitofp i32 %686 to float
  %688 = extractvalue %dx.types.Dimensions %685, 1
  %689 = sitofp i32 %688 to float
  %690 = fcmp fast oge float %195, %687
  %691 = fcmp fast oge float %196, %689
  %692 = or i1 %690, %691
  %693 = select i1 %692, float 0x4197782600000000, float %684
  %694 = fadd fast float %608, -1.000000e+00
  %695 = fmul fast float %694, %569
  %696 = fadd fast float %695, 1.000000e+00
  %697 = call float @dx.op.dot3.f32(i32 55, float %696, float %696, float %696, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %698 = fsub fast float 1.000000e+00, %697
  %699 = fmul fast float %675, %641
  %700 = fsub fast float 1.000000e+00, %677
  %701 = fsub fast float %700, %641
  %702 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %704 = extractvalue %dx.types.CBufRet.f32 %703, 3
  %705 = fmul fast float %704, %702
  %706 = fadd fast float %705, %699
  %707 = and i32 %127, 2097152
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %713, label %709, !dx.controlflow.hints !66

; <label>:709                                     ; preds = %674
  %710 = add i32 %124, 192
  %711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.f32 %711, 0
  br label %716

; <label>:713                                     ; preds = %674
  %714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %715 = extractvalue %dx.types.CBufRet.f32 %714, 3
  br label %716

; <label>:716                                     ; preds = %713, %709
  %717 = phi float [ %712, %709 ], [ %715, %713 ]
  %718 = fmul fast float %610, %569
  %719 = fmul fast float %718, %614
  %720 = fmul fast float %719, %620
  %721 = fmul fast float %611, %569
  %722 = fmul fast float %721, %614
  %723 = fmul fast float %722, %624
  %724 = fmul fast float %612, %569
  %725 = fmul fast float %724, %614
  %726 = fmul fast float %725, %628
  %727 = icmp eq i32 %123, 3
  %728 = fcmp fast ogt float %43, %693
  %729 = and i1 %221, %728
  %730 = or i1 %727, %729
  %731 = icmp eq i32 %123, 2
  %732 = fcmp fast ole float %43, %693
  %733 = and i1 %731, %732
  %734 = or i1 %733, %730
  br i1 %729, label %735, label %841

; <label>:735                                     ; preds = %716
  %736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.f32 %736, 2
  %738 = extractvalue %dx.types.CBufRet.f32 %736, 3
  %739 = fmul fast float %737, %48
  %740 = fmul fast float %738, %49
  %741 = call float @dx.op.unary.f32(i32 7, float %739)  ; Saturate(value)
  %742 = call float @dx.op.unary.f32(i32 7, float %740)  ; Saturate(value)
  %743 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %741, float %742, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = extractvalue %dx.types.ResRet.f32 %743, 1
  %746 = extractvalue %dx.types.ResRet.f32 %743, 2
  %747 = extractvalue %dx.types.ResRet.f32 %743, 3
  %748 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %741, float %742, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %749 = extractvalue %dx.types.ResRet.f32 %748, 0
  %750 = extractvalue %dx.types.ResRet.f32 %748, 1
  %751 = extractvalue %dx.types.ResRet.f32 %748, 2
  %752 = extractvalue %dx.types.ResRet.f32 %748, 3
  %753 = call float @dx.op.binary.f32(i32 35, float %745, float %746)  ; FMax(a,b)
  %754 = call float @dx.op.binary.f32(i32 35, float %744, float %753)  ; FMax(a,b)
  %755 = call float @dx.op.binary.f32(i32 35, float %754, float %747)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 36, float %750, float %751)  ; FMin(a,b)
  %757 = call float @dx.op.binary.f32(i32 36, float %749, float %756)  ; FMin(a,b)
  %758 = call float @dx.op.binary.f32(i32 36, float %757, float %752)  ; FMin(a,b)
  %759 = fmul fast float %755, 2.550000e+02
  %760 = fadd fast float %759, 0x3F70101020000000
  %761 = fptoui float %760 to i32
  %762 = fmul fast float %758, 2.550000e+02
  %763 = fadd fast float %762, 0x3F70101020000000
  %764 = fptoui float %763 to i32
  %765 = icmp ult i32 %761, %764
  br i1 %765, label %766, label %817

; <label>:766                                     ; preds = %735
  %767 = fcmp fast ogt float %42, 9.843750e-01
  %768 = fadd fast float %43, -4.000000e+00
  %769 = select i1 %767, float -4.000000e+00, float %768
  %770 = call float @dx.op.binary.f32(i32 35, float %769, float 0.000000e+00)  ; FMax(a,b)
  %771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %772 = extractvalue %dx.types.CBufRet.f32 %771, 0
  %773 = fadd fast float %772, %770
  %774 = extractvalue %dx.types.CBufRet.f32 %771, 2
  %775 = fmul fast float %773, %774
  %776 = call float @dx.op.unary.f32(i32 23, float %775)  ; Log(value)
  %777 = extractvalue %dx.types.CBufRet.f32 %771, 3
  %778 = fmul fast float %777, %776
  %779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %780 = extractvalue %dx.types.CBufRet.f32 %779, 2
  %781 = fmul fast float %778, %780
  %782 = call float @dx.op.unary.f32(i32 7, float %781)  ; Saturate(value)
  %783 = uitofp i32 %761 to float
  %784 = uitofp i32 %764 to float
  %785 = fadd fast float %783, 5.000000e-01
  %786 = fadd fast float %784, 5.000000e-01
  %787 = fmul fast float %780, %785
  %788 = fmul fast float %780, %786
  %789 = fadd fast float %787, 0x3F0FFB4800000000
  %790 = fadd fast float %788, 0xBF0FFB4800000000
  %791 = call float @dx.op.binary.f32(i32 35, float %782, float %789)  ; FMax(a,b)
  %792 = call float @dx.op.binary.f32(i32 36, float %791, float %790)  ; FMin(a,b)
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 1
  %795 = extractvalue %dx.types.CBufRet.f32 %793, 2
  %796 = extractvalue %dx.types.CBufRet.f32 %793, 0
  %797 = fmul fast float %794, %792
  %798 = fadd fast float %796, %797
  %799 = fadd fast float %796, %795
  %800 = fsub fast float %794, %795
  %801 = fadd fast float %800, %796
  %802 = call float @dx.op.binary.f32(i32 35, float %798, float %799)  ; FMax(a,b)
  %803 = call float @dx.op.binary.f32(i32 36, float %802, float %801)  ; FMin(a,b)
  %804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %741, float %742, float %803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %805 = extractvalue %dx.types.ResRet.f32 %804, 0
  %806 = extractvalue %dx.types.ResRet.f32 %804, 1
  %807 = extractvalue %dx.types.ResRet.f32 %804, 2
  %808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %741, float %742, float %803, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %809 = extractvalue %dx.types.ResRet.f32 %808, 0
  %810 = extractvalue %dx.types.ResRet.f32 %808, 1
  %811 = extractvalue %dx.types.ResRet.f32 %808, 2
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 1
  %814 = fmul fast float %813, %809
  %815 = fmul fast float %813, %810
  %816 = fmul fast float %813, %811
  br label %817

; <label>:817                                     ; preds = %766, %735
  %818 = phi float [ %805, %766 ], [ 1.000000e+00, %735 ]
  %819 = phi float [ %806, %766 ], [ 1.000000e+00, %735 ]
  %820 = phi float [ %807, %766 ], [ 1.000000e+00, %735 ]
  %821 = phi float [ %814, %766 ], [ 0.000000e+00, %735 ]
  %822 = phi float [ %815, %766 ], [ 0.000000e+00, %735 ]
  %823 = phi float [ %816, %766 ], [ 0.000000e+00, %735 ]
  %824 = fmul fast float %821, %698
  %825 = fmul fast float %822, %698
  %826 = fmul fast float %823, %698
  %827 = call float @dx.op.dot3.f32(i32 55, float %818, float %819, float %820, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %828 = call float @dx.op.dot3.f32(i32 55, float %824, float %825, float %826, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %829 = select i1 %107, float %827, float %818
  %830 = select i1 %107, float %827, float %819
  %831 = select i1 %107, float 1.000000e+00, float %820
  %832 = select i1 %107, float %828, float %824
  %833 = select i1 %107, float 0.000000e+00, float %825
  %834 = select i1 %107, float 0.000000e+00, float %826
  %835 = fmul fast float %829, %720
  %836 = fmul fast float %830, %723
  %837 = fmul fast float %831, %726
  %838 = fadd fast float %835, %832
  %839 = fadd fast float %836, %833
  %840 = fadd fast float %834, %837
  br label %841

; <label>:841                                     ; preds = %817, %716
  %842 = phi float [ %693, %817 ], [ %43, %716 ]
  %843 = phi float [ %838, %817 ], [ %720, %716 ]
  %844 = phi float [ %839, %817 ], [ %723, %716 ]
  %845 = phi float [ %840, %817 ], [ %726, %716 ]
  %846 = phi float [ %818, %817 ], [ 1.000000e+00, %716 ]
  br i1 %734, label %1142, label %847

; <label>:847                                     ; preds = %841
  %848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %29, float %30, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = extractvalue %dx.types.ResRet.f32 %848, 1
  %851 = extractvalue %dx.types.ResRet.f32 %848, 2
  %852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %29, float %30, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  %854 = extractvalue %dx.types.ResRet.f32 %852, 1
  %855 = extractvalue %dx.types.ResRet.f32 %852, 2
  %856 = fmul fast float %849, %698
  %857 = fmul fast float %850, %698
  %858 = fmul fast float %851, %698
  %859 = fmul fast float %853, %846
  %860 = call float @dx.op.dot3.f32(i32 55, float %853, float %854, float %855, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %861 = call float @dx.op.dot3.f32(i32 55, float %856, float %857, float %858, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %862 = select i1 %107, float %860, float %853
  %863 = select i1 %107, float %860, float %854
  %864 = select i1 %107, float 1.000000e+00, float %855
  %865 = select i1 %107, float %861, float %856
  %866 = select i1 %107, float 0.000000e+00, float %857
  %867 = select i1 %107, float 0.000000e+00, float %858
  %868 = fmul fast float %862, %843
  %869 = fmul fast float %863, %844
  %870 = fmul fast float %864, %845
  %871 = fadd fast float %868, %865
  %872 = fadd fast float %869, %866
  %873 = fadd fast float %870, %867
  %874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.i32 %874, 0
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %1142, label %877, !dx.controlflow.hints !67

; <label>:877                                     ; preds = %847
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 2
  %880 = extractvalue %dx.types.CBufRet.f32 %878, 3
  %881 = fmul fast float %879, %48
  %882 = fmul fast float %880, %49
  %883 = fmul fast float %881, 2.000000e+00
  %884 = fmul fast float %882, 2.000000e+00
  %885 = fsub fast float 1.000000e+00, %883
  %886 = fsub fast float 1.000000e+00, %884
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 0
  %889 = extractvalue %dx.types.CBufRet.f32 %887, 1
  %890 = extractvalue %dx.types.CBufRet.f32 %887, 2
  %891 = fmul fast float %885, %888
  %892 = fmul fast float %885, %889
  %893 = fmul fast float %885, %890
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = extractvalue %dx.types.CBufRet.f32 %894, 2
  %898 = fmul fast float %886, %895
  %899 = fmul fast float %886, %896
  %900 = fmul fast float %886, %897
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 0
  %903 = extractvalue %dx.types.CBufRet.f32 %901, 1
  %904 = extractvalue %dx.types.CBufRet.f32 %901, 2
  %905 = fadd fast float %898, %902
  %906 = fadd fast float %905, %891
  %907 = fadd fast float %899, %903
  %908 = fadd fast float %907, %892
  %909 = fadd fast float %900, %904
  %910 = fadd fast float %909, %893
  %911 = fmul fast float %906, %842
  %912 = fmul fast float %908, %842
  %913 = fmul fast float %910, %842
  %914 = fmul fast float %911, %911
  %915 = fmul fast float %912, %912
  %916 = fadd fast float %914, %915
  %917 = fmul fast float %913, %913
  %918 = fadd fast float %916, %917
  %919 = call float @dx.op.unary.f32(i32 24, float %918)  ; Sqrt(value)
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 0
  %922 = fsub fast float %919, %921
  %923 = extractvalue %dx.types.CBufRet.f32 %920, 2
  %924 = fmul fast float %922, %923
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %926 = fadd fast float %925, -5.000000e-01
  %927 = fmul fast float %926, 2.000000e+00
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 2
  %930 = call float @dx.op.binary.f32(i32 36, float %929, float %927)  ; FMin(a,b)
  %931 = fsub fast float -0.000000e+00, %929
  %932 = fcmp fast ogt float %930, %931
  br i1 %932, label %933, label %1142, !dx.controlflow.hints !68

; <label>:933                                     ; preds = %877
  %934 = fmul fast float %930, 5.000000e-01
  %935 = fadd fast float %934, 5.000000e-01
  %936 = call float @dx.op.unary.f32(i32 22, float %935)  ; Frc(value)
  %937 = call float @dx.op.unary.f32(i32 27, float %936)  ; Round_ni(value)
  %938 = call float @dx.op.unary.f32(i32 22, float %936)  ; Frc(value)
  %939 = fmul fast float %938, 2.000000e+00
  %940 = fadd fast float %939, -1.000000e+00
  %941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %881, float %882, float %937, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %942 = extractvalue %dx.types.ResRet.f32 %941, 0
  %943 = extractvalue %dx.types.ResRet.f32 %941, 1
  %944 = extractvalue %dx.types.ResRet.f32 %941, 2
  %945 = extractvalue %dx.types.ResRet.f32 %941, 3
  %946 = fadd fast float %942, -5.000000e-01
  %947 = fadd fast float %944, -5.000000e-01
  %948 = fmul fast float %946, 0xBFD5555560000000
  %949 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %947, float %948)  ; FMad(a,b,c)
  %950 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %943, float 0.000000e+00)  ; FMad(a,b,c)
  %951 = fadd fast float %950, %945
  %952 = fmul fast float %946, -7.500000e-01
  %953 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %947, float %952)  ; FMad(a,b,c)
  %954 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %943, float 0.000000e+00)  ; FMad(a,b,c)
  %955 = fadd fast float %954, %945
  %956 = call float @dx.op.binary.f32(i32 35, float %949, float -1.000000e+00)  ; FMax(a,b)
  %957 = call float @dx.op.binary.f32(i32 35, float %951, float -1.000000e+00)  ; FMax(a,b)
  %958 = call float @dx.op.binary.f32(i32 35, float %953, float -1.000000e+00)  ; FMax(a,b)
  %959 = call float @dx.op.binary.f32(i32 35, float %955, float -1.000000e+00)  ; FMax(a,b)
  %960 = call float @dx.op.binary.f32(i32 36, float %956, float 1.000000e+00)  ; FMin(a,b)
  %961 = call float @dx.op.binary.f32(i32 36, float %957, float 1.000000e+00)  ; FMin(a,b)
  %962 = call float @dx.op.binary.f32(i32 36, float %958, float 1.000000e+00)  ; FMin(a,b)
  %963 = call float @dx.op.binary.f32(i32 36, float %959, float 1.000000e+00)  ; FMin(a,b)
  %964 = fcmp fast olt float %960, 0x3FEFFF8020000000
  br i1 %964, label %965, label %1080, !dx.controlflow.hints !69

; <label>:965                                     ; preds = %933
  %966 = extractvalue %dx.types.CBufRet.f32 %928, 3
  %967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %968 = extractvalue %dx.types.CBufRet.f32 %967, 0
  %969 = extractvalue %dx.types.CBufRet.f32 %967, 1
  %970 = extractvalue %dx.types.CBufRet.f32 %967, 2
  %971 = extractvalue %dx.types.CBufRet.f32 %967, 3
  %972 = fsub fast float %968, %960
  %973 = fsub fast float %969, %961
  %974 = fsub fast float %970, %962
  %975 = fsub fast float %971, %963
  %976 = fmul fast float %972, %966
  %977 = fmul fast float %973, %966
  %978 = fmul fast float %974, %966
  %979 = fmul fast float %975, %966
  %980 = fadd fast float %976, %960
  %981 = fadd fast float %977, %961
  %982 = fsub fast float -0.000000e+00, %981
  %983 = fadd fast float %978, %962
  %984 = fadd fast float %979, %963
  %985 = fmul fast float %980, %980
  %986 = fsub fast float %981, %985
  %987 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %986)  ; FMax(a,b)
  %988 = fdiv fast float 1.000000e+00, %987
  %989 = fmul fast float %981, %980
  %990 = fsub fast float %983, %989
  %991 = fsub fast float %940, %980
  %992 = fmul fast float %940, %940
  %993 = fsub fast float %992, %981
  %994 = fmul fast float %991, %988
  %995 = fmul fast float %994, %990
  %996 = fsub fast float %993, %995
  %997 = fmul fast float %981, %981
  %998 = fsub fast float %984, %997
  %999 = fmul fast float %990, %990
  %1000 = fmul fast float %999, %988
  %1001 = fsub fast float %998, %1000
  %1002 = fdiv fast float %996, %1001
  %1003 = fmul fast float %990, %1002
  %1004 = fsub fast float %991, %1003
  %1005 = fmul fast float %1004, %988
  %1006 = fmul fast float %1005, %980
  %1007 = fsub fast float 1.000000e+00, %1006
  %1008 = fmul fast float %981, %1002
  %1009 = fsub fast float %1007, %1008
  %1010 = fmul fast float %1005, %1005
  %1011 = fmul fast float %1002, 4.000000e+00
  %1012 = fmul fast float %1011, %1009
  %1013 = fsub fast float %1010, %1012
  %1014 = call float @dx.op.unary.f32(i32 24, float %1013)  ; Sqrt(value)
  %1015 = fcmp fast oge float %1005, 0.000000e+00
  %1016 = fsub fast float -0.000000e+00, %1014
  %1017 = select i1 %1015, float %1016, float %1014
  %1018 = fsub fast float %1017, %1005
  %1019 = fdiv fast float %1018, %1002
  %1020 = fdiv fast float %1009, %1018
  %1021 = fmul fast float %1019, 5.000000e-01
  %1022 = fmul fast float %1020, 2.000000e+00
  %1023 = select i1 %1015, float %1021, float %1022
  %1024 = select i1 %1015, float %1022, float %1021
  %1025 = call float @dx.op.binary.f32(i32 35, float %1023, float %1024)  ; FMax(a,b)
  %1026 = call float @dx.op.binary.f32(i32 36, float %1023, float %1024)  ; FMin(a,b)
  %1027 = fcmp fast ogt float %940, %1026
  br i1 %1027, label %1028, label %1038

; <label>:1028                                    ; preds = %965
  %1029 = fsub fast float %940, %1026
  %1030 = fsub fast float %1025, %1026
  %1031 = fmul fast float %1029, %1030
  %1032 = fmul fast float %1025, %940
  %1033 = fadd fast float %1025, %940
  %1034 = fmul fast float %1033, %980
  %1035 = fadd fast float %1032, %981
  %1036 = fsub fast float %1035, %1034
  %1037 = fdiv fast float %1036, %1031
  br label %1038

; <label>:1038                                    ; preds = %1028, %965
  %1039 = phi float [ %1037, %1028 ], [ 0.000000e+00, %965 ]
  %1040 = fcmp fast ogt float %940, %1025
  %1041 = fsub fast float %940, %1025
  br i1 %1040, label %1042, label %1052

; <label>:1042                                    ; preds = %1038
  %1043 = fsub fast float %1025, %1026
  %1044 = fmul fast float %1043, %1041
  %1045 = fmul fast float %1026, %940
  %1046 = fadd fast float %1026, %940
  %1047 = fmul fast float %1046, %980
  %1048 = fsub fast float %982, %1045
  %1049 = fadd fast float %1048, %1047
  %1050 = fdiv fast float %1049, %1044
  %1051 = fadd fast float %1050, %1039
  br label %1052

; <label>:1052                                    ; preds = %1042, %1038
  %1053 = phi float [ %1051, %1042 ], [ %1039, %1038 ]
  %1054 = fsub fast float %940, %1026
  %1055 = fmul fast float %1054, %1041
  %1056 = fmul fast float %1026, %1025
  %1057 = fadd fast float %1026, %1025
  %1058 = fmul fast float %1057, %980
  %1059 = fadd fast float %1056, %981
  %1060 = fsub fast float %1059, %1058
  %1061 = fdiv fast float %1060, %1055
  %1062 = call float @dx.op.unary.f32(i32 7, float %1053)  ; Saturate(value)
  %1063 = fcmp fast oeq float %717, 0.000000e+00
  %1064 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %1065 = fcmp fast oeq float %1064, 0.000000e+00
  %1066 = or i1 %1063, %1065
  %1067 = fmul fast float %1064, 2.000000e+00
  %1068 = fadd fast float %929, %930
  %1069 = fdiv fast float %1068, %1067
  %1070 = call float @dx.op.unary.f32(i32 7, float %1069)  ; Saturate(value)
  %1071 = fmul fast float %1070, 2.000000e+00
  %1072 = fsub fast float 3.000000e+00, %1071
  %1073 = fmul fast float %1070, %1070
  %1074 = fmul fast float %1073, %1072
  %1075 = select i1 %1066, float 1.000000e+00, float %1074
  %1076 = fmul fast float %1061, %717
  %1077 = fadd fast float %1062, %1076
  %1078 = call float @dx.op.unary.f32(i32 7, float %1077)  ; Saturate(value)
  %1079 = fmul fast float %1075, %1078
  br label %1080

; <label>:1080                                    ; preds = %1052, %933
  %1081 = phi float [ %1079, %1052 ], [ 0.000000e+00, %933 ]
  %1082 = fsub fast float 1.000000e+00, %1081
  %1083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %881, float %882, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.i32 %1085, 2
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %1093, label %1088

; <label>:1088                                    ; preds = %1080
  %1089 = call float @dx.op.unary.f32(i32 7, float %1081)  ; Saturate(value)
  %1090 = fadd fast float %1084, -1.000000e+00
  %1091 = fmul fast float %1089, %1090
  %1092 = fadd fast float %1091, 1.000000e+00
  br label %1093

; <label>:1093                                    ; preds = %1088, %1080
  %1094 = phi float [ %1092, %1088 ], [ %1082, %1080 ]
  %1095 = call float @dx.op.binary.f32(i32 35, float %1084, float %1094)  ; FMax(a,b)
  %1096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.i32 %1096, 2
  %1098 = and i32 %1097, 1
  %1099 = icmp eq i32 %1098, 0
  %1100 = fcmp fast une float %1095, 1.000000e+00
  %1101 = and i1 %1100, %1099
  br i1 %1101, label %1102, label %1121

; <label>:1102                                    ; preds = %1093
  %1103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %881, float %882, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1104 = extractvalue %dx.types.ResRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.ResRet.f32 %1103, 1
  %1106 = extractvalue %dx.types.ResRet.f32 %1103, 2
  %1107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.f32 %1107, 1
  %1109 = fmul fast float %1108, %1104
  %1110 = fmul fast float %1108, %1105
  %1111 = fmul fast float %1108, %1106
  %1112 = fcmp fast ogt float %1084, 0x3FEFFF2E40000000
  %1113 = fsub fast float 1.000000e+00, %1095
  %1114 = fsub fast float 1.000000e+00, %1084
  %1115 = fdiv fast float %1113, %1114
  %1116 = call float @dx.op.unary.f32(i32 7, float %1115)  ; Saturate(value)
  %1117 = select i1 %1112, float 0.000000e+00, float %1116
  %1118 = fmul fast float %1109, %1117
  %1119 = fmul fast float %1110, %1117
  %1120 = fmul fast float %1111, %1117
  br label %1121

; <label>:1121                                    ; preds = %1102, %1093
  %1122 = phi float [ 0.000000e+00, %1093 ], [ %1118, %1102 ]
  %1123 = phi float [ 0.000000e+00, %1093 ], [ %1119, %1102 ]
  %1124 = phi float [ 0.000000e+00, %1093 ], [ %1120, %1102 ]
  %1125 = fmul fast float %1122, %698
  %1126 = fmul fast float %1123, %698
  %1127 = fmul fast float %1124, %698
  %1128 = fmul fast float %1095, %859
  %1129 = call float @dx.op.dot3.f32(i32 55, float %1095, float %1095, float %1095, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1130 = call float @dx.op.dot3.f32(i32 55, float %1125, float %1126, float %1127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1131 = select i1 %107, float %1129, float %1095
  %1132 = select i1 %107, float 1.000000e+00, float %1095
  %1133 = select i1 %107, float %1130, float %1125
  %1134 = select i1 %107, float 0.000000e+00, float %1126
  %1135 = select i1 %107, float 0.000000e+00, float %1127
  %1136 = fmul fast float %1131, %871
  %1137 = fmul fast float %1131, %872
  %1138 = fmul fast float %1132, %873
  %1139 = fadd fast float %1136, %1133
  %1140 = fadd fast float %1137, %1134
  %1141 = fadd fast float %1135, %1138
  br label %1142

; <label>:1142                                    ; preds = %1121, %877, %847, %841
  %1143 = phi float [ %843, %841 ], [ %871, %847 ], [ %1139, %1121 ], [ %871, %877 ]
  %1144 = phi float [ %844, %841 ], [ %872, %847 ], [ %1140, %1121 ], [ %872, %877 ]
  %1145 = phi float [ %845, %841 ], [ %873, %847 ], [ %1141, %1121 ], [ %873, %877 ]
  %1146 = phi float [ %846, %841 ], [ %859, %847 ], [ %1128, %1121 ], [ %859, %877 ]
  %1147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1148 = extractvalue %dx.types.CBufRet.f32 %1147, 2
  %1149 = extractvalue %dx.types.CBufRet.f32 %1147, 3
  %1150 = fmul fast float %1148, %48
  %1151 = fmul fast float %1149, %49
  %1152 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  %1153 = call float @dx.op.unary.f32(i32 7, float %1151)  ; Saturate(value)
  %1154 = select i1 %734, i32 2, i32 0
  %1155 = or i32 %1154, 1
  %1156 = uitofp i32 %1155 to float
  %1157 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1152, float %1153, float %1156, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = extractvalue %dx.types.ResRet.f32 %1157, 1
  %1160 = extractvalue %dx.types.ResRet.f32 %1157, 2
  %1161 = extractvalue %dx.types.ResRet.f32 %1157, 3
  %1162 = add nuw nsw i32 %1154, 2
  %1163 = uitofp i32 %1162 to float
  %1164 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %18, float %1152, float %1153, float %1163, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  %1168 = extractvalue %dx.types.ResRet.f32 %1164, 3
  %1169 = call float @dx.op.binary.f32(i32 35, float %1159, float %1160)  ; FMax(a,b)
  %1170 = call float @dx.op.binary.f32(i32 35, float %1158, float %1169)  ; FMax(a,b)
  %1171 = call float @dx.op.binary.f32(i32 35, float %1170, float %1161)  ; FMax(a,b)
  %1172 = call float @dx.op.binary.f32(i32 36, float %1166, float %1167)  ; FMin(a,b)
  %1173 = call float @dx.op.binary.f32(i32 36, float %1165, float %1172)  ; FMin(a,b)
  %1174 = call float @dx.op.binary.f32(i32 36, float %1173, float %1168)  ; FMin(a,b)
  %1175 = fmul fast float %1171, 2.550000e+02
  %1176 = fadd fast float %1175, 0x3F70101020000000
  %1177 = fptoui float %1176 to i32
  %1178 = fmul fast float %1174, 2.550000e+02
  %1179 = fadd fast float %1178, 0x3F70101020000000
  %1180 = fptoui float %1179 to i32
  %1181 = icmp ult i32 %1177, %1180
  br i1 %1181, label %1182, label %1234

; <label>:1182                                    ; preds = %1142
  %1183 = fcmp fast ogt float %42, 9.843750e-01
  %1184 = fadd fast float %842, -4.000000e+00
  %1185 = select i1 %1183, float -4.000000e+00, float %1184
  %1186 = call float @dx.op.binary.f32(i32 35, float %1185, float 0.000000e+00)  ; FMax(a,b)
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1189 = fadd fast float %1188, %1186
  %1190 = extractvalue %dx.types.CBufRet.f32 %1187, 2
  %1191 = fmul fast float %1189, %1190
  %1192 = call float @dx.op.unary.f32(i32 23, float %1191)  ; Log(value)
  %1193 = extractvalue %dx.types.CBufRet.f32 %1187, 3
  %1194 = fmul fast float %1193, %1192
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 2
  %1197 = fmul fast float %1194, %1196
  %1198 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1199 = uitofp i32 %1177 to float
  %1200 = uitofp i32 %1180 to float
  %1201 = fadd fast float %1199, 5.000000e-01
  %1202 = fadd fast float %1200, 5.000000e-01
  %1203 = fmul fast float %1196, %1201
  %1204 = fmul fast float %1196, %1202
  %1205 = fadd fast float %1203, 0x3F0FFB4800000000
  %1206 = fadd fast float %1204, 0xBF0FFB4800000000
  %1207 = call float @dx.op.binary.f32(i32 35, float %1198, float %1205)  ; FMax(a,b)
  %1208 = call float @dx.op.binary.f32(i32 36, float %1207, float %1206)  ; FMin(a,b)
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 1
  %1211 = extractvalue %dx.types.CBufRet.f32 %1209, 2
  %1212 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1213 = select i1 %734, float %1212, float 0.000000e+00
  %1214 = fmul fast float %1210, %1208
  %1215 = fadd fast float %1213, %1214
  %1216 = fadd fast float %1213, %1211
  %1217 = fsub fast float %1210, %1211
  %1218 = fadd fast float %1217, %1213
  %1219 = call float @dx.op.binary.f32(i32 35, float %1215, float %1216)  ; FMax(a,b)
  %1220 = call float @dx.op.binary.f32(i32 36, float %1219, float %1218)  ; FMin(a,b)
  %1221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1152, float %1153, float %1220, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.ResRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.ResRet.f32 %1221, 2
  %1225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1152, float %1153, float %1220, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = extractvalue %dx.types.ResRet.f32 %1225, 1
  %1228 = extractvalue %dx.types.ResRet.f32 %1225, 2
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 1
  %1231 = fmul fast float %1230, %1226
  %1232 = fmul fast float %1230, %1227
  %1233 = fmul fast float %1230, %1228
  br label %1234

; <label>:1234                                    ; preds = %1182, %1142
  %1235 = phi float [ %1222, %1182 ], [ 1.000000e+00, %1142 ]
  %1236 = phi float [ %1223, %1182 ], [ 1.000000e+00, %1142 ]
  %1237 = phi float [ %1224, %1182 ], [ 1.000000e+00, %1142 ]
  %1238 = phi float [ %1231, %1182 ], [ 0.000000e+00, %1142 ]
  %1239 = phi float [ %1232, %1182 ], [ 0.000000e+00, %1142 ]
  %1240 = phi float [ %1233, %1182 ], [ 0.000000e+00, %1142 ]
  %1241 = fmul fast float %1238, %698
  %1242 = fmul fast float %1239, %698
  %1243 = fmul fast float %1240, %698
  %1244 = fmul fast float %1235, %1146
  %1245 = call float @dx.op.dot3.f32(i32 55, float %1235, float %1236, float %1237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1246 = call float @dx.op.dot3.f32(i32 55, float %1241, float %1242, float %1243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1247 = select i1 %107, float %1245, float %1235
  %1248 = select i1 %107, float %1245, float %1236
  %1249 = select i1 %107, float 1.000000e+00, float %1237
  %1250 = select i1 %107, float %1246, float %1241
  %1251 = select i1 %107, float 0.000000e+00, float %1242
  %1252 = select i1 %107, float 0.000000e+00, float %1243
  %1253 = fmul fast float %1247, %1143
  %1254 = fmul fast float %1248, %1144
  %1255 = fmul fast float %1249, %1145
  %1256 = fadd fast float %1253, %1250
  %1257 = fadd fast float %1254, %1251
  %1258 = fadd fast float %1252, %1255
  %1259 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.i32 %1259, 3
  %1261 = and i32 %1260, 3
  %1262 = icmp ne i32 %1261, 0
  %1263 = and i32 %1260, 4
  %1264 = icmp ne i32 %1263, 0
  %1265 = and i1 %1262, %1264
  %1266 = and i1 %107, %1265
  br i1 %1266, label %1267, label %1273

; <label>:1267                                    ; preds = %1234
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 1
  %1270 = fadd fast float %1244, -1.000000e+00
  %1271 = fmul fast float %1269, %1270
  %1272 = fadd fast float %1271, 1.000000e+00
  br label %1273

; <label>:1273                                    ; preds = %1267, %1234
  %1274 = phi float [ %1272, %1267 ], [ %1244, %1234 ]
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 0
  br i1 %107, label %1277, label %1299

; <label>:1277                                    ; preds = %1273
  %1278 = fadd fast float %1256, %1257
  %1279 = fmul fast float %1276, %1278
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 3
  %1282 = extractvalue %dx.types.CBufRet.f32 %703, 1
  %1283 = fsub fast float %706, %1282
  %1284 = extractvalue %dx.types.CBufRet.f32 %703, 2
  %1285 = fmul fast float %1283, %1284
  %1286 = call float @dx.op.unary.f32(i32 7, float %1285)  ; Saturate(value)
  %1287 = fsub fast float %1286, %1281
  %1288 = fmul fast float %1287, %1274
  %1289 = fadd fast float %1288, %1281
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 0
  %1292 = fsub fast float %1289, %1291
  %1293 = fmul fast float %1292, 1.000000e+01
  %1294 = call float @dx.op.unary.f32(i32 7, float %1293)  ; Saturate(value)
  %1295 = fsub fast float %677, %698
  %1296 = fmul fast float %1294, %1295
  %1297 = fadd fast float %1296, %698
  %1298 = fmul fast float %1297, %1289
  br label %1308

; <label>:1299                                    ; preds = %1273
  %1300 = fmul fast float %1276, %1256
  %1301 = fmul fast float %1276, %1257
  %1302 = fmul fast float %1276, %1258
  %1303 = call float @dx.op.binary.f32(i32 35, float %1301, float %1302)  ; FMax(a,b)
  %1304 = call float @dx.op.binary.f32(i32 35, float %1300, float %1303)  ; FMax(a,b)
  %1305 = call float @dx.op.binary.f32(i32 35, float %1304, float %698)  ; FMax(a,b)
  %1306 = fcmp fast ugt float %1305, 0x3F10000000000000
  br i1 %1306, label %1308, label %1307

; <label>:1307                                    ; preds = %1299
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1308

; <label>:1308                                    ; preds = %1307, %1299, %1277
  %1309 = phi float [ %1279, %1277 ], [ %1300, %1307 ], [ %1300, %1299 ]
  %1310 = phi float [ %1298, %1277 ], [ %1301, %1307 ], [ %1301, %1299 ]
  %1311 = phi float [ %1297, %1277 ], [ %1302, %1307 ], [ %1302, %1299 ]
  %1312 = phi float [ %1297, %1277 ], [ %698, %1307 ], [ %698, %1299 ]
  %1313 = fadd fast float %505, 0x3FE3C6EF40000000
  %1314 = call float @dx.op.unary.f32(i32 22, float %1313)  ; Frc(value)
  %1315 = call float @dx.op.unary.f32(i32 23, float %1309)  ; Log(value)
  %1316 = fadd fast float %1315, -7.000000e+00
  %1317 = call float @dx.op.unary.f32(i32 21, float %1316)  ; Exp(value)
  %1318 = fmul fast float %1314, 2.000000e+00
  %1319 = fadd fast float %1318, -1.000000e+00
  %1320 = fmul fast float %1317, %1319
  %1321 = fcmp fast ogt float %1309, 0.000000e+00
  %1322 = select i1 %1321, float %1320, float 0.000000e+00
  %1323 = fadd fast float %1322, %1309
  %1324 = fadd fast float %505, 0x3FF3C6EF40000000
  %1325 = call float @dx.op.unary.f32(i32 22, float %1324)  ; Frc(value)
  %1326 = call float @dx.op.unary.f32(i32 23, float %1310)  ; Log(value)
  %1327 = fadd fast float %1326, -7.000000e+00
  %1328 = call float @dx.op.unary.f32(i32 21, float %1327)  ; Exp(value)
  %1329 = fmul fast float %1325, 2.000000e+00
  %1330 = fadd fast float %1329, -1.000000e+00
  %1331 = fmul fast float %1328, %1330
  %1332 = fcmp fast ogt float %1310, 0.000000e+00
  %1333 = select i1 %1332, float %1331, float 0.000000e+00
  %1334 = fadd fast float %1333, %1310
  %1335 = fadd fast float %505, 0x3FFDAA66E0000000
  %1336 = call float @dx.op.unary.f32(i32 22, float %1335)  ; Frc(value)
  %1337 = call float @dx.op.unary.f32(i32 23, float %1311)  ; Log(value)
  %1338 = fadd fast float %1337, -6.000000e+00
  %1339 = call float @dx.op.unary.f32(i32 21, float %1338)  ; Exp(value)
  %1340 = fmul fast float %1336, 2.000000e+00
  %1341 = fadd fast float %1340, -1.000000e+00
  %1342 = fmul fast float %1339, %1341
  %1343 = fcmp fast ogt float %1311, 0.000000e+00
  %1344 = select i1 %1343, float %1342, float 0.000000e+00
  %1345 = fadd fast float %1344, %1311
  %1346 = select i1 %107, float %1310, float %1334
  %1347 = select i1 %107, float %1311, float %1345
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1348 = call float @dx.op.binary.f32(i32 36, float %1323, float 3.225500e+04)  ; FMin(a,b)
  %1349 = call float @dx.op.binary.f32(i32 36, float %1346, float 3.225500e+04)  ; FMin(a,b)
  %1350 = call float @dx.op.binary.f32(i32 36, float %1347, float 3.225500e+04)  ; FMin(a,b)
  %1351 = call float @dx.op.binary.f32(i32 36, float %1312, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1348)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1349)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1350)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1351)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1312)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1312)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1312)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1312)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

