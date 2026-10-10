;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2   xyzw        3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyzw
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
; shader hash: 6e035a57a369d9c8c2c3238190418dc6
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
;                                   texture     f32          3d     T17     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 35, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 26, 27, 28, 29, 30, 31, 32, 34 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28, 29, 30, 31, 32, 34 }
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
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = fmul fast float %55, %48
  %57 = fmul fast float %55, %49
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 3
  %61 = fmul fast float %56, 2.000000e+00
  %62 = fmul fast float %61, %59
  %63 = fmul fast float %57, 2.000000e+00
  %64 = fmul fast float %63, %60
  %65 = fsub fast float 1.000000e+00, %62
  %66 = fsub fast float 1.000000e+00, %64
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fmul fast float %65, %68
  %72 = fmul fast float %65, %69
  %73 = fmul fast float %65, %70
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = fmul fast float %66, %75
  %79 = fmul fast float %66, %76
  %80 = fmul fast float %66, %77
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fadd fast float %78, %82
  %86 = fadd fast float %85, %71
  %87 = fadd fast float %79, %83
  %88 = fadd fast float %87, %72
  %89 = fadd fast float %80, %84
  %90 = fadd fast float %89, %73
  %91 = fmul fast float %86, %51
  %92 = fmul fast float %88, %51
  %93 = fmul fast float %90, %51
  %94 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.i32 %94, 3
  %96 = and i32 %95, 3
  %97 = icmp ne i32 %96, 0
  %98 = and i32 %95, 4
  %99 = icmp ne i32 %98, 0
  %100 = and i1 %97, %99
  br i1 %100, label %101, label %110

; <label>:101                                     ; preds = %0
  %102 = fmul fast float %60, %57
  %103 = fmul fast float %59, %56
  %104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %103, float %102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = fsub fast float 1.000000e+00, %105
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = fcmp fast olt float %106, %108
  br label %113

; <label>:110                                     ; preds = %0
  %111 = icmp eq i32 %98, 0
  %112 = and i1 %97, %111
  br label %113

; <label>:113                                     ; preds = %110, %101
  %114 = phi i1 [ %109, %101 ], [ %112, %110 ]
  %115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %116 = extractvalue %dx.types.CBufRet.f32 %115, 2
  %117 = extractvalue %dx.types.CBufRet.f32 %115, 3
  %118 = fmul fast float %116, %56
  %119 = fmul fast float %117, %57
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = and i32 %121, 114688
  %123 = icmp ne i32 %122, 0
  %124 = select i1 %123, float %118, float 0.000000e+00
  %125 = select i1 %123, float %119, float 0.000000e+00
  %126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %124, float %125, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = fmul fast float %127, 2.550000e+02
  %129 = fptoui float %128 to i32
  %130 = select i1 %123, i32 %129, i32 0
  %131 = mul i32 %23, 208
  %132 = add i32 %131, 188
  %133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.i32 %133, 0
  %135 = and i32 %95, 114688
  %136 = and i32 %95, 8
  %137 = icmp ne i32 %136, 0
  %138 = or i1 %114, %137
  %139 = select i1 %138, i32 %135, i32 16384
  %140 = and i32 %139, %134
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

; <label>:142                                     ; preds = %113
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %143

; <label>:143                                     ; preds = %142, %113
  %144 = and i32 %134, 512
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %170, label %146

; <label>:146                                     ; preds = %143
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %150 = fmul fast float %148, %56
  %151 = fmul fast float %149, %57
  %152 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %154 = fdiv fast float %152, %153
  %155 = fcmp fast ogt float %154, 0x3FFC71C720000000
  br i1 %155, label %156, label %162

; <label>:156                                     ; preds = %146
  %157 = fdiv fast float 0x3FFC71C720000000, %154
  %158 = fmul fast float %157, %151
  %159 = fsub fast float 1.000000e+00, %157
  %160 = fmul fast float %159, 5.000000e-01
  %161 = fadd fast float %160, %158
  br label %170

; <label>:162                                     ; preds = %146
  %163 = fcmp fast olt float %154, 0x3FFC71C720000000
  br i1 %163, label %164, label %170

; <label>:164                                     ; preds = %162
  %165 = fmul fast float %150, 5.625000e-01
  %166 = fmul fast float %165, %154
  %167 = fmul fast float %154, 2.812500e-01
  %168 = fsub fast float 5.000000e-01, %167
  %169 = fadd fast float %168, %166
  br label %170

; <label>:170                                     ; preds = %164, %162, %156, %143
  %171 = phi float [ %42, %143 ], [ %150, %156 ], [ %169, %164 ], [ %150, %162 ]
  %172 = phi float [ %43, %143 ], [ %161, %156 ], [ %151, %164 ], [ %151, %162 ]
  %173 = fadd fast float %42, %39
  %174 = fadd fast float %43, %40
  %175 = add i32 %24, 72
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = extractvalue %dx.types.ResRet.i32 %176, 1
  %179 = bitcast i32 %177 to float
  %180 = bitcast i32 %178 to float
  %181 = fmul fast float %179, %42
  %182 = fmul fast float %180, %43
  %183 = call float @dx.op.unary.f32(i32 22, float %181)  ; Frc(value)
  %184 = call float @dx.op.unary.f32(i32 22, float %182)  ; Frc(value)
  %185 = and i32 %134, 16
  %186 = icmp ne i32 %185, 0
  %187 = select i1 %186, float 1.000000e+00, float %47
  %188 = add i32 %24, 108
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = add i32 %190, 0
  %192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %191, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %195 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %192, %dx.types.Handle %53, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float %194, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = add i32 %198, 0
  %200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %199, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %202 = extractvalue %dx.types.CBufRet.f32 %201, 2
  %203 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %200, %dx.types.Handle %53, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float %202, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = fsub fast float %204, %196
  %206 = fmul fast float %205, %41
  %207 = fadd fast float %206, %196
  %208 = fmul fast float %207, %187
  %209 = icmp eq i32 %185, 0
  br i1 %209, label %229, label %210, !dx.controlflow.hints !63

; <label>:210                                     ; preds = %170
  %211 = add i32 %131, 64
  %212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = fadd fast float %213, 1.000000e+00
  %215 = fmul fast float %214, %47
  %216 = fsub fast float %215, %213
  %217 = fsub fast float %214, %216
  %218 = call float @dx.op.unary.f32(i32 7, float %217)  ; Saturate(value)
  %219 = fsub fast float 1.000000e+00, %215
  %220 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  %221 = fsub fast float %218, %220
  %222 = fsub fast float %208, %220
  %223 = fdiv fast float %222, %221
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = fmul fast float %224, 2.000000e+00
  %226 = fsub fast float 3.000000e+00, %225
  %227 = fmul fast float %224, %224
  %228 = fmul fast float %227, %226
  br label %229

; <label>:229                                     ; preds = %210, %170
  %230 = phi float [ %228, %210 ], [ %208, %170 ]
  %231 = fcmp fast ogt float %230, 0.000000e+00
  br i1 %231, label %233, label %232

; <label>:232                                     ; preds = %229
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %233

; <label>:233                                     ; preds = %232, %229
  %234 = call float @dx.op.unary.f32(i32 7, float %230)  ; Saturate(value)
  %235 = fmul fast float %56, 5.000000e-01
  %236 = fmul fast float %57, 5.000000e-01
  %237 = fptosi float %235 to i32
  %238 = fptosi float %236 to i32
  %239 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %237, i32 %238, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = lshr i32 %240, 18
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F4C00EBA0000000
  %244 = call float @dx.op.unary.f32(i32 21, float %243)  ; Exp(value)
  %245 = fadd fast float %244, -1.000000e+00
  %246 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %247 = extractvalue %dx.types.Dimensions %246, 0
  %248 = sitofp i32 %247 to float
  %249 = extractvalue %dx.types.Dimensions %246, 1
  %250 = sitofp i32 %249 to float
  %251 = fcmp fast oge float %235, %248
  %252 = fcmp fast oge float %236, %250
  %253 = or i1 %251, %252
  %254 = select i1 %253, float 0x4197782600000000, float %245
  %255 = fsub fast float %254, %51
  %256 = fcmp fast ogt float %255, 0.000000e+00
  %257 = and i32 %130, -2
  %258 = icmp eq i32 %257, 2
  %259 = and i1 %258, %256
  %260 = xor i1 %256, true
  %261 = icmp eq i32 %130, 1
  %262 = and i1 %261, %260
  %263 = or i1 %259, %262
  %264 = and i32 %134, 262144
  %265 = icmp ne i32 %264, 0
  %266 = and i1 %265, %263
  %267 = xor i1 %263, true
  %268 = and i32 %134, 131072
  %269 = icmp ne i32 %268, 0
  %270 = and i1 %269, %267
  %271 = or i1 %266, %270
  br i1 %271, label %272, label %273

; <label>:272                                     ; preds = %233
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %273

; <label>:273                                     ; preds = %272, %233
  %274 = and i32 %134, 32
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %552, label %276, !dx.controlflow.hints !64

; <label>:276                                     ; preds = %273
  %277 = add i32 %131, 80
  %278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.f32 %278, 0
  %280 = extractvalue %dx.types.ResRet.f32 %278, 1
  %281 = extractvalue %dx.types.ResRet.f32 %278, 2
  %282 = extractvalue %dx.types.ResRet.f32 %278, 3
  %283 = add i32 %131, 96
  %284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = extractvalue %dx.types.ResRet.f32 %284, 1
  %287 = extractvalue %dx.types.ResRet.f32 %284, 2
  %288 = add i32 %131, 112
  %289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.f32 %289, 0
  %291 = extractvalue %dx.types.ResRet.f32 %289, 1
  %292 = extractvalue %dx.types.ResRet.f32 %289, 2
  %293 = extractvalue %dx.types.ResRet.f32 %289, 3
  %294 = add i32 %131, 128
  %295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.f32 %295, 0
  %297 = extractvalue %dx.types.ResRet.f32 %295, 1
  %298 = extractvalue %dx.types.ResRet.f32 %295, 2
  %299 = extractvalue %dx.types.ResRet.f32 %295, 3
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 4096
  %303 = icmp ne i32 %302, 0
  %304 = fcmp fast une float %287, 0.000000e+00
  %305 = and i32 %301, 64
  %306 = icmp ne i32 %305, 0
  %307 = and i32 %301, 128
  %308 = icmp eq i32 %307, 0
  %309 = and i32 %301, 2048
  %310 = icmp eq i32 %309, 0
  %311 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %312 = extractvalue %dx.types.Dimensions %311, 0
  %313 = sitofp i32 %312 to float
  %314 = extractvalue %dx.types.Dimensions %311, 1
  %315 = sitofp i32 %314 to float
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %318 = extractvalue %dx.types.CBufRet.f32 %316, 3
  %319 = fmul fast float %317, %56
  %320 = fmul fast float %318, %57
  %321 = fmul fast float %319, %313
  %322 = fmul fast float %320, %315
  %323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.f32 %323, 1
  %325 = fsub fast float -0.000000e+00, %324
  %326 = fptoui float %325 to i32
  %327 = fptoui float %321 to i32
  %328 = fptoui float %322 to i32
  %329 = and i32 %326, 31
  %330 = lshr i32 %327, %329
  %331 = lshr i32 %328, %329
  %332 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %326, i32 %330, i32 %331, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %333 = extractvalue %dx.types.ResRet.f32 %332, 0
  %334 = fcmp fast ogt float %333, -1.000000e+00
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %337 = select i1 %334, float %336, float 1.000000e+00
  %338 = fadd fast float %333, 1.000000e+00
  %339 = fmul fast float %337, %338
  %340 = call float @dx.op.unary.f32(i32 6, float %339)  ; FAbs(value)
  %341 = extractvalue %dx.types.CBufRet.f32 %335, 3
  %342 = fcmp fast oge float %340, %341
  %343 = select i1 %342, float 0x4197782600000000, float %340
  br i1 %310, label %433, label %344, !dx.controlflow.hints !65

; <label>:344                                     ; preds = %276
  %345 = fmul fast float %61, %317
  %346 = fmul fast float %63, %318
  %347 = fsub fast float 1.000000e+00, %345
  %348 = fsub fast float 1.000000e+00, %346
  %349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.f32 %349, 0
  %351 = extractvalue %dx.types.CBufRet.f32 %349, 1
  %352 = extractvalue %dx.types.CBufRet.f32 %349, 2
  %353 = fmul fast float %347, %350
  %354 = fmul fast float %347, %351
  %355 = fmul fast float %347, %352
  %356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.f32 %356, 0
  %358 = extractvalue %dx.types.CBufRet.f32 %356, 1
  %359 = extractvalue %dx.types.CBufRet.f32 %356, 2
  %360 = fmul fast float %348, %357
  %361 = fmul fast float %348, %358
  %362 = fmul fast float %348, %359
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = extractvalue %dx.types.CBufRet.f32 %363, 1
  %366 = extractvalue %dx.types.CBufRet.f32 %363, 2
  %367 = fadd fast float %360, %364
  %368 = fadd fast float %367, %353
  %369 = fadd fast float %361, %365
  %370 = fadd fast float %369, %354
  %371 = fadd fast float %362, %366
  %372 = fadd fast float %371, %355
  %373 = fmul fast float %368, %343
  %374 = fmul fast float %370, %343
  %375 = fmul fast float %372, %343
  %376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.f32 %376, 0
  %378 = extractvalue %dx.types.CBufRet.f32 %376, 1
  %379 = extractvalue %dx.types.CBufRet.f32 %376, 2
  %380 = fsub fast float %377, %25
  %381 = fadd fast float %380, %373
  %382 = fsub fast float %378, %26
  %383 = fadd fast float %382, %374
  %384 = fsub fast float %379, %27
  %385 = fadd fast float %384, %375
  %386 = fmul fast float %28, %28
  %387 = call float @dx.op.dot3.f32(i32 55, float %381, float %383, float %385, float %381, float %383, float %385)  ; Dot3(ax,ay,az,bx,by,bz)
  %388 = fsub fast float %386, %387
  %389 = fmul fast float %286, %386
  %390 = fmul fast float %285, %386
  %391 = fcmp fast olt float %388, %389
  %392 = fcmp fast ogt float %388, %390
  %393 = or i1 %391, %392
  %394 = select i1 %393, float 0.000000e+00, float %388
  %395 = fsub fast float %285, %286
  %396 = fmul fast float %395, %386
  %397 = fsub fast float %394, %389
  %398 = fdiv fast float %397, %396
  %399 = call float @dx.op.unary.f32(i32 7, float %398)  ; Saturate(value)
  %400 = fmul fast float %399, 2.000000e+00
  %401 = fsub fast float 3.000000e+00, %400
  %402 = fmul fast float %399, %399
  %403 = fmul fast float %402, %401
  %404 = fmul fast float %290, %44
  %405 = fmul fast float %291, %45
  %406 = fmul fast float %292, %46
  %407 = fsub fast float %404, %296
  %408 = fsub fast float %405, %297
  %409 = fsub fast float %406, %298
  %410 = fsub fast float %293, %299
  %411 = fmul fast float %403, %407
  %412 = fmul fast float %403, %408
  %413 = fmul fast float %403, %409
  %414 = fmul fast float %403, %410
  %415 = fadd fast float %411, %296
  %416 = fadd fast float %412, %297
  %417 = fadd fast float %413, %298
  %418 = fadd fast float %414, %299
  %419 = fmul fast float %290, %29
  %420 = fmul fast float %291, %30
  %421 = fmul fast float %292, %31
  %422 = fsub fast float %419, %296
  %423 = fsub fast float %420, %297
  %424 = fsub fast float %421, %298
  %425 = fmul fast float %403, %422
  %426 = fmul fast float %403, %423
  %427 = fmul fast float %403, %424
  %428 = fadd fast float %425, %296
  %429 = fadd fast float %426, %297
  %430 = fadd fast float %427, %298
  %431 = fmul fast float %279, %279
  %432 = fmul fast float %431, %394
  br label %540

; <label>:433                                     ; preds = %276
  %434 = and i32 %301, 256
  %435 = icmp eq i32 %434, 0
  %436 = fsub fast float %343, %51
  br i1 %435, label %497, label %437

; <label>:437                                     ; preds = %433
  %438 = fadd fast float %285, %51
  %439 = fcmp fast olt float %343, %51
  %440 = fcmp fast ogt float %343, %438
  %441 = or i1 %439, %440
  %442 = select i1 %441, float 0.000000e+00, float %436
  %443 = call float @dx.op.unary.f32(i32 83, float %343)  ; DerivCoarseX(value)
  %444 = call float @dx.op.unary.f32(i32 84, float %343)  ; DerivCoarseY(value)
  %445 = fmul fast float %443, %443
  %446 = fmul fast float %444, %444
  %447 = fadd fast float %446, %445
  %448 = call float @dx.op.unary.f32(i32 24, float %447)  ; Sqrt(value)
  %449 = extractvalue %dx.types.CBufRet.f32 %323, 2
  %450 = fmul fast float %449, %448
  %451 = call float @dx.op.unary.f32(i32 7, float %450)  ; Saturate(value)
  %452 = fmul fast float %451, %286
  %453 = fdiv fast float %436, %452
  %454 = call float @dx.op.unary.f32(i32 7, float %453)  ; Saturate(value)
  %455 = fmul fast float %454, 2.000000e+00
  %456 = fsub fast float 3.000000e+00, %455
  %457 = fmul fast float %454, %454
  %458 = fmul fast float %457, %456
  %459 = fsub fast float %343, %438
  %460 = fadd fast float %459, %452
  %461 = fdiv fast float %460, %452
  %462 = call float @dx.op.unary.f32(i32 7, float %461)  ; Saturate(value)
  %463 = fmul fast float %462, 2.000000e+00
  %464 = fsub fast float 3.000000e+00, %463
  %465 = fmul fast float %462, %462
  %466 = fmul fast float %465, %464
  %467 = fsub fast float %458, %466
  %468 = fmul fast float %290, %44
  %469 = fmul fast float %291, %45
  %470 = fmul fast float %292, %46
  %471 = fsub fast float %468, %296
  %472 = fsub fast float %469, %297
  %473 = fsub fast float %470, %298
  %474 = fsub fast float %293, %299
  %475 = fmul fast float %467, %471
  %476 = fmul fast float %467, %472
  %477 = fmul fast float %467, %473
  %478 = fmul fast float %467, %474
  %479 = fadd fast float %475, %296
  %480 = fadd fast float %476, %297
  %481 = fadd fast float %477, %298
  %482 = fadd fast float %478, %299
  %483 = fmul fast float %290, %29
  %484 = fmul fast float %291, %30
  %485 = fmul fast float %292, %31
  %486 = fsub fast float %483, %296
  %487 = fsub fast float %484, %297
  %488 = fsub fast float %485, %298
  %489 = fmul fast float %467, %486
  %490 = fmul fast float %467, %487
  %491 = fmul fast float %467, %488
  %492 = fadd fast float %489, %296
  %493 = fadd fast float %490, %297
  %494 = fadd fast float %491, %298
  %495 = fmul fast float %442, %279
  %496 = call float @dx.op.unary.f32(i32 6, float %495)  ; FAbs(value)
  br label %540

; <label>:497                                     ; preds = %433
  br i1 %304, label %498, label %511

; <label>:498                                     ; preds = %497
  %499 = fdiv fast float 5.000000e+01, %28
  %500 = select i1 %306, float %499, float 1.000000e+00
  %501 = fmul fast float %500, %279
  %502 = fmul fast float %183, 2.000000e+00
  %503 = fmul fast float %184, 2.000000e+00
  %504 = fadd fast float %502, -1.000000e+00
  %505 = fadd fast float %503, -1.000000e+00
  %506 = call float @dx.op.dot2.f32(i32 54, float %504, float %505, float %504, float %505)  ; Dot2(ax,ay,bx,by)
  %507 = fmul fast float %287, %28
  %508 = fmul fast float %507, %506
  %509 = fsub fast float %436, %508
  %510 = fmul fast float %501, %509
  br label %540

; <label>:511                                     ; preds = %497
  br i1 %308, label %532, label %512

; <label>:512                                     ; preds = %511
  %513 = fmul fast float %28, 0x3F947AE140000000
  %514 = select i1 %306, float %513, float 1.000000e+00
  %515 = fdiv fast float 1.000000e+00, %514
  %516 = fmul fast float %514, %280
  %517 = fmul fast float %514, %281
  %518 = fmul fast float %515, %282
  %519 = call float @dx.op.unary.f32(i32 6, float %436)  ; FAbs(value)
  %520 = fcmp fast olt float %519, %516
  br i1 %520, label %521, label %525, !dx.controlflow.hints !66

; <label>:521                                     ; preds = %512
  %522 = fmul fast float %515, %279
  %523 = fmul fast float %522, %519
  %524 = call float @dx.op.unary.f32(i32 6, float %523)  ; FAbs(value)
  br label %540

; <label>:525                                     ; preds = %512
  %526 = fcmp fast ogt float %519, %517
  br i1 %526, label %527, label %540

; <label>:527                                     ; preds = %525
  %528 = fsub fast float %519, %517
  %529 = fmul fast float %518, %528
  %530 = call float @dx.op.unary.f32(i32 6, float %529)  ; FAbs(value)
  %531 = fsub fast float 1.000000e+00, %530
  br label %540

; <label>:532                                     ; preds = %511
  %533 = fdiv fast float 5.000000e+01, %28
  %534 = select i1 %306, float %533, float 1.000000e+00
  %535 = fmul fast float %534, %279
  %536 = call float @dx.op.unary.f32(i32 6, float %255)  ; FAbs(value)
  %537 = select i1 %303, float %536, float 0x47EFFFFFE0000000
  %538 = call float @dx.op.binary.f32(i32 36, float %436, float %537)  ; FMin(a,b)
  %539 = fmul fast float %535, %538
  br label %540

; <label>:540                                     ; preds = %532, %527, %525, %521, %498, %437, %344
  %541 = phi float [ %432, %344 ], [ %496, %437 ], [ %510, %498 ], [ %539, %532 ], [ %524, %521 ], [ %531, %527 ], [ %519, %525 ]
  %542 = phi float [ %428, %344 ], [ %492, %437 ], [ %29, %498 ], [ %29, %532 ], [ %29, %521 ], [ %29, %527 ], [ %29, %525 ]
  %543 = phi float [ %429, %344 ], [ %493, %437 ], [ %30, %498 ], [ %30, %532 ], [ %30, %521 ], [ %30, %527 ], [ %30, %525 ]
  %544 = phi float [ %430, %344 ], [ %494, %437 ], [ %31, %498 ], [ %31, %532 ], [ %31, %521 ], [ %31, %527 ], [ %31, %525 ]
  %545 = phi float [ %415, %344 ], [ %479, %437 ], [ %44, %498 ], [ %44, %532 ], [ %44, %521 ], [ %44, %527 ], [ %44, %525 ]
  %546 = phi float [ %416, %344 ], [ %480, %437 ], [ %45, %498 ], [ %45, %532 ], [ %45, %521 ], [ %45, %527 ], [ %45, %525 ]
  %547 = phi float [ %417, %344 ], [ %481, %437 ], [ %46, %498 ], [ %46, %532 ], [ %46, %521 ], [ %46, %527 ], [ %46, %525 ]
  %548 = phi float [ %418, %344 ], [ %482, %437 ], [ 1.000000e+00, %498 ], [ 1.000000e+00, %532 ], [ 1.000000e+00, %521 ], [ 1.000000e+00, %527 ], [ 1.000000e+00, %525 ]
  %549 = call float @dx.op.unary.f32(i32 7, float %541)  ; Saturate(value)
  %550 = fmul fast float %548, %234
  %551 = fmul fast float %550, %549
  br label %552

; <label>:552                                     ; preds = %540, %273
  %553 = phi float [ %545, %540 ], [ %44, %273 ]
  %554 = phi float [ %546, %540 ], [ %45, %273 ]
  %555 = phi float [ %547, %540 ], [ %46, %273 ]
  %556 = phi float [ %551, %540 ], [ %234, %273 ]
  %557 = phi float [ %542, %540 ], [ %29, %273 ]
  %558 = phi float [ %543, %540 ], [ %30, %273 ]
  %559 = phi float [ %544, %540 ], [ %31, %273 ]
  %560 = fmul fast float %557, %32
  %561 = fmul fast float %558, %32
  %562 = fmul fast float %559, %32
  %563 = fmul fast float %557, %38
  %564 = fmul fast float %558, %38
  %565 = fmul fast float %559, %38
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 2
  %568 = fptosi float %51 to i32
  %569 = sitofp i32 %568 to float
  %570 = fadd fast float %567, %569
  %571 = fmul fast float %570, 0x3FE3C6EF40000000
  %572 = frem fast float %56, 2.560000e+02
  %573 = frem fast float %57, 2.560000e+02
  %574 = fptoui float %572 to i32
  %575 = fptoui float %573 to i32
  %576 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %574, i32 %575, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = fadd fast float %577, %571
  %579 = call float @dx.op.unary.f32(i32 22, float %578)  ; Frc(value)
  %580 = and i32 %134, 1
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %641, label %582, !dx.controlflow.hints !67

; <label>:582                                     ; preds = %552
  %583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %131, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 2
  %585 = extractvalue %dx.types.ResRet.f32 %583, 3
  %586 = add i32 %131, 16
  %587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.f32 %587, 0
  %589 = extractvalue %dx.types.ResRet.f32 %587, 1
  %590 = extractvalue %dx.types.ResRet.f32 %587, 2
  %591 = add i32 %131, 32
  %592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = extractvalue %dx.types.ResRet.f32 %592, 1
  %595 = extractvalue %dx.types.ResRet.f32 %592, 2
  %596 = and i32 %134, 2
  %597 = icmp eq i32 %596, 0
  %598 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %599 = call float @dx.op.unary.f32(i32 25, float %598)  ; Rsqrt(value)
  %600 = fmul fast float %599, %35
  %601 = fmul fast float %599, %36
  %602 = fmul fast float %599, %37
  %603 = call float @dx.op.dot3.f32(i32 55, float %91, float %92, float %93, float %91, float %92, float %93)  ; Dot3(ax,ay,az,bx,by,bz)
  %604 = call float @dx.op.unary.f32(i32 25, float %603)  ; Rsqrt(value)
  %605 = fmul fast float %604, %91
  %606 = fmul fast float %604, %92
  %607 = fmul fast float %604, %93
  %608 = call float @dx.op.dot3.f32(i32 55, float %605, float %606, float %607, float %600, float %601, float %602)  ; Dot3(ax,ay,az,bx,by,bz)
  %609 = fmul fast float %608, %608
  %610 = fmul fast float %609, %584
  %611 = fadd fast float %610, %585
  %612 = call float @dx.op.unary.f32(i32 7, float %611)  ; Saturate(value)
  br i1 %597, label %613, label %623, !dx.controlflow.hints !68

; <label>:613                                     ; preds = %582
  %614 = extractvalue %dx.types.ResRet.f32 %583, 1
  %615 = extractvalue %dx.types.ResRet.f32 %583, 0
  %616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %617 = extractvalue %dx.types.CBufRet.f32 %616, 3
  %618 = fmul fast float %617, %603
  %619 = fsub fast float %615, %618
  %620 = fmul fast float %619, %614
  %621 = call float @dx.op.unary.f32(i32 7, float %620)  ; Saturate(value)
  %622 = fmul fast float %621, %612
  br label %623

; <label>:623                                     ; preds = %613, %582
  %624 = phi float [ %622, %613 ], [ %612, %582 ]
  %625 = fsub fast float %588, %593
  %626 = fsub fast float %589, %594
  %627 = fsub fast float %590, %595
  %628 = fmul fast float %624, %625
  %629 = fmul fast float %624, %626
  %630 = fmul fast float %624, %627
  %631 = fadd fast float %628, %593
  %632 = fadd fast float %629, %594
  %633 = fadd fast float %630, %595
  %634 = fmul fast float %631, %553
  %635 = fmul fast float %632, %554
  %636 = fmul fast float %633, %555
  %637 = fmul fast float %631, %560
  %638 = fmul fast float %632, %561
  %639 = fmul fast float %633, %562
  %640 = fmul fast float %624, %556
  br label %641

; <label>:641                                     ; preds = %623, %552
  %642 = phi float [ %634, %623 ], [ %553, %552 ]
  %643 = phi float [ %635, %623 ], [ %554, %552 ]
  %644 = phi float [ %636, %623 ], [ %555, %552 ]
  %645 = phi float [ %640, %623 ], [ %556, %552 ]
  %646 = phi float [ %637, %623 ], [ %560, %552 ]
  %647 = phi float [ %638, %623 ], [ %561, %552 ]
  %648 = phi float [ %639, %623 ], [ %562, %552 ]
  %649 = add i32 %24, 104
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = add i32 %651, 0
  %653 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %652, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %654 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %653, %dx.types.Handle %52, float %171, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %655 = extractvalue %dx.types.ResRet.f32 %654, 0
  %656 = extractvalue %dx.types.ResRet.f32 %654, 1
  %657 = extractvalue %dx.types.ResRet.f32 %654, 2
  %658 = add i32 %24, 44
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = shl i32 %660, 4
  %662 = and i32 %661, 32752
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = lshr i32 %660, 7
  %665 = and i32 %664, 32752
  %666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %665)  ; LegacyF16ToF32(value)
  %667 = lshr i32 %660, 22
  %668 = shl nuw nsw i32 %667, 5
  %669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %668)  ; LegacyF16ToF32(value)
  %670 = fmul fast float %663, %655
  %671 = fmul fast float %666, %656
  %672 = fmul fast float %669, %657
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 0
  %675 = fmul fast float %670, %674
  %676 = fmul fast float %671, %674
  %677 = fmul fast float %672, %674
  %678 = add i32 %24, 48
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = lshr i32 %680, 22
  %682 = shl nuw nsw i32 %681, 5
  %683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %682)  ; LegacyF16ToF32(value)
  %684 = fmul fast float %683, %675
  %685 = select i1 %114, float %684, float %675
  %686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %687 = extractvalue %dx.types.ResRet.i32 %686, 0
  %688 = add i32 %687, 0
  %689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %688, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %690 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %689, %dx.types.Handle %52, float %173, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %691 = extractvalue %dx.types.ResRet.f32 %690, 0
  %692 = extractvalue %dx.types.ResRet.f32 %690, 1
  %693 = extractvalue %dx.types.ResRet.f32 %690, 2
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = shl i32 %695, 4
  %697 = and i32 %696, 32752
  %698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %697)  ; LegacyF16ToF32(value)
  %699 = lshr i32 %695, 7
  %700 = and i32 %699, 32752
  %701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %700)  ; LegacyF16ToF32(value)
  %702 = lshr i32 %695, 22
  %703 = shl nuw nsw i32 %702, 5
  %704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %703)  ; LegacyF16ToF32(value)
  %705 = fmul fast float %698, %691
  %706 = fmul fast float %701, %692
  %707 = fmul fast float %704, %693
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 0
  %710 = fmul fast float %705, %709
  %711 = fmul fast float %706, %709
  %712 = fmul fast float %707, %709
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = lshr i32 %714, 22
  %716 = shl nuw nsw i32 %715, 5
  %717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %716)  ; LegacyF16ToF32(value)
  %718 = fmul fast float %717, %710
  %719 = select i1 %114, float %718, float %710
  %720 = fsub fast float %719, %685
  %721 = fsub fast float %711, %676
  %722 = fsub fast float %712, %677
  %723 = fmul fast float %720, %41
  %724 = fmul fast float %721, %41
  %725 = fmul fast float %722, %41
  %726 = fadd fast float %723, %685
  %727 = fadd fast float %724, %676
  %728 = fadd fast float %725, %677
  %729 = fsub fast float %691, %655
  %730 = fsub fast float %692, %656
  %731 = fsub fast float %693, %657
  %732 = fmul fast float %729, %41
  %733 = fmul fast float %730, %41
  %734 = fmul fast float %731, %41
  %735 = fadd fast float %732, %655
  %736 = fadd fast float %733, %656
  %737 = fadd fast float %734, %657
  %738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  %740 = extractvalue %dx.types.ResRet.f32 %738, 1
  %741 = extractvalue %dx.types.ResRet.f32 %738, 2
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 1
  %744 = fmul fast float %743, %739
  %745 = fmul fast float %743, %740
  %746 = fmul fast float %743, %741
  %747 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %748 = call float @dx.op.unary.f32(i32 7, float %643)  ; Saturate(value)
  %749 = call float @dx.op.unary.f32(i32 7, float %644)  ; Saturate(value)
  %750 = fmul fast float %726, %646
  %751 = fmul fast float %727, %647
  %752 = fmul fast float %728, %648
  %753 = call float @dx.op.dot3.f32(i32 55, float %750, float %751, float %752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %754 = select i1 %114, float 0.000000e+00, float %750
  %755 = select i1 %114, float %753, float %751
  %756 = select i1 %114, float 0.000000e+00, float %752
  %757 = fmul fast float %563, %726
  %758 = fmul fast float %564, %727
  %759 = fmul fast float %565, %728
  %760 = call float @dx.op.dot3.f32(i32 55, float %735, float %736, float %737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %761 = add i32 %24, 32
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 255
  %765 = uitofp i32 %764 to float
  %766 = lshr i32 %763, 8
  %767 = and i32 %766, 255
  %768 = uitofp i32 %767 to float
  %769 = fmul fast float %768, %760
  %770 = fadd fast float %769, %765
  %771 = fmul fast float %770, 0x3F70101020000000
  %772 = call float @dx.op.unary.f32(i32 7, float %771)  ; Saturate(value)
  %773 = and i32 %134, 8192
  %774 = icmp eq i32 %773, 0
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 0
  br i1 %774, label %783, label %777, !dx.controlflow.hints !69

; <label>:777                                     ; preds = %641
  %778 = add i32 %131, 176
  %779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = fcmp fast oge float %780, 0.000000e+00
  %782 = select i1 %781, float %780, float %776
  br label %783

; <label>:783                                     ; preds = %777, %641
  %784 = phi float [ %782, %777 ], [ %776, %641 ]
  %785 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %237, i32 %238, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = lshr i32 %786, 18
  %788 = uitofp i32 %787 to float
  %789 = fmul fast float %788, 0x3F4C00EBA0000000
  %790 = call float @dx.op.unary.f32(i32 21, float %789)  ; Exp(value)
  %791 = fadd fast float %790, -1.000000e+00
  %792 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %793 = extractvalue %dx.types.Dimensions %792, 0
  %794 = sitofp i32 %793 to float
  %795 = extractvalue %dx.types.Dimensions %792, 1
  %796 = sitofp i32 %795 to float
  %797 = fcmp fast oge float %235, %794
  %798 = fcmp fast oge float %236, %796
  %799 = or i1 %797, %798
  %800 = select i1 %799, float 0x4197782600000000, float %791
  %801 = icmp eq i32 %130, 3
  %802 = fcmp fast ogt float %51, %800
  %803 = and i1 %261, %802
  %804 = or i1 %801, %803
  %805 = icmp eq i32 %130, 2
  %806 = fcmp fast ole float %51, %800
  %807 = and i1 %805, %806
  %808 = or i1 %807, %804
  %809 = fmul fast float %757, %744
  %810 = fmul fast float %758, %745
  %811 = fmul fast float %759, %746
  %812 = fadd fast float %809, %754
  %813 = fadd fast float %755, %810
  %814 = fadd fast float %811, %756
  %815 = fmul fast float %812, %645
  %816 = fmul fast float %813, %645
  %817 = fmul fast float %814, %645
  %818 = fmul fast float %745, %645
  %819 = fmul fast float %746, %645
  %820 = fsub fast float 1.000000e+00, %645
  %821 = call float @dx.op.dot3.f32(i32 55, float %820, float %820, float %820, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %822 = fsub fast float 1.000000e+00, %821
  %823 = fmul fast float %784, %772
  %824 = fsub fast float 1.000000e+00, %772
  %825 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 3
  %828 = fmul fast float %827, %825
  %829 = fadd fast float %828, %823
  %830 = and i32 %134, 1048576
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %923, label %832, !dx.controlflow.hints !70

; <label>:832                                     ; preds = %783
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %835 = extractvalue %dx.types.CBufRet.f32 %833, 3
  %836 = fmul fast float %834, %56
  %837 = fmul fast float %835, %57
  %838 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  %839 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %840 = select i1 %808, i32 2, i32 0
  %841 = or i32 %840, 1
  %842 = uitofp i32 %841 to float
  %843 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %838, float %839, float %842, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %844 = extractvalue %dx.types.ResRet.f32 %843, 0
  %845 = extractvalue %dx.types.ResRet.f32 %843, 1
  %846 = extractvalue %dx.types.ResRet.f32 %843, 2
  %847 = extractvalue %dx.types.ResRet.f32 %843, 3
  %848 = add nuw nsw i32 %840, 2
  %849 = uitofp i32 %848 to float
  %850 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %838, float %839, float %849, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = extractvalue %dx.types.ResRet.f32 %850, 1
  %853 = extractvalue %dx.types.ResRet.f32 %850, 2
  %854 = extractvalue %dx.types.ResRet.f32 %850, 3
  %855 = call float @dx.op.binary.f32(i32 35, float %845, float %846)  ; FMax(a,b)
  %856 = call float @dx.op.binary.f32(i32 35, float %844, float %855)  ; FMax(a,b)
  %857 = call float @dx.op.binary.f32(i32 35, float %856, float %847)  ; FMax(a,b)
  %858 = call float @dx.op.binary.f32(i32 36, float %852, float %853)  ; FMin(a,b)
  %859 = call float @dx.op.binary.f32(i32 36, float %851, float %858)  ; FMin(a,b)
  %860 = call float @dx.op.binary.f32(i32 36, float %859, float %854)  ; FMin(a,b)
  %861 = fmul fast float %857, 2.550000e+02
  %862 = fadd fast float %861, 0x3F70101020000000
  %863 = fptoui float %862 to i32
  %864 = fmul fast float %860, 2.550000e+02
  %865 = fadd fast float %864, 0x3F70101020000000
  %866 = fptoui float %865 to i32
  %867 = icmp ult i32 %863, %866
  br i1 %867, label %868, label %916

; <label>:868                                     ; preds = %832
  %869 = fcmp fast ogt float %50, 9.843750e-01
  %870 = fadd fast float %51, -4.000000e+00
  %871 = select i1 %869, float -4.000000e+00, float %870
  %872 = call float @dx.op.binary.f32(i32 35, float %871, float 0.000000e+00)  ; FMax(a,b)
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 0
  %875 = fadd fast float %874, %872
  %876 = extractvalue %dx.types.CBufRet.f32 %873, 2
  %877 = fmul fast float %875, %876
  %878 = call float @dx.op.unary.f32(i32 23, float %877)  ; Log(value)
  %879 = extractvalue %dx.types.CBufRet.f32 %873, 3
  %880 = fmul fast float %879, %878
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 2
  %883 = fmul fast float %880, %882
  %884 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %885 = uitofp i32 %863 to float
  %886 = uitofp i32 %866 to float
  %887 = fadd fast float %885, 5.000000e-01
  %888 = fadd fast float %886, 5.000000e-01
  %889 = fmul fast float %882, %887
  %890 = fmul fast float %882, %888
  %891 = fadd fast float %889, 0x3F0FFB4800000000
  %892 = fadd fast float %890, 0xBF0FFB4800000000
  %893 = call float @dx.op.binary.f32(i32 35, float %884, float %891)  ; FMax(a,b)
  %894 = call float @dx.op.binary.f32(i32 36, float %893, float %892)  ; FMin(a,b)
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %897 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %898 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %899 = select i1 %808, float %898, float 0.000000e+00
  %900 = fmul fast float %896, %894
  %901 = fadd fast float %899, %900
  %902 = fadd fast float %899, %897
  %903 = fsub fast float %896, %897
  %904 = fadd fast float %903, %899
  %905 = call float @dx.op.binary.f32(i32 35, float %901, float %902)  ; FMax(a,b)
  %906 = call float @dx.op.binary.f32(i32 36, float %905, float %904)  ; FMin(a,b)
  %907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %838, float %839, float %906, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  %909 = extractvalue %dx.types.ResRet.f32 %907, 1
  %910 = extractvalue %dx.types.ResRet.f32 %907, 2
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %913 = fmul fast float %912, %908
  %914 = fmul fast float %912, %909
  %915 = fmul fast float %912, %910
  br label %916

; <label>:916                                     ; preds = %868, %832
  %917 = phi float [ %913, %868 ], [ 1.000000e+00, %832 ]
  %918 = phi float [ %914, %868 ], [ 1.000000e+00, %832 ]
  %919 = phi float [ %915, %868 ], [ 1.000000e+00, %832 ]
  %920 = fmul fast float %917, %815
  %921 = fmul fast float %918, %816
  %922 = fmul fast float %919, %817
  br label %923

; <label>:923                                     ; preds = %916, %783
  %924 = phi float [ %920, %916 ], [ %815, %783 ]
  %925 = phi float [ %921, %916 ], [ %816, %783 ]
  %926 = phi float [ %922, %916 ], [ %817, %783 ]
  %927 = and i32 %134, 2097152
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %933, label %929, !dx.controlflow.hints !71

; <label>:929                                     ; preds = %923
  %930 = add i32 %131, 192
  %931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.f32 %931, 0
  br label %936

; <label>:933                                     ; preds = %923
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 3
  br label %936

; <label>:936                                     ; preds = %933, %929
  %937 = phi float [ %932, %929 ], [ %935, %933 ]
  %938 = fmul fast float %747, %645
  %939 = fmul fast float %938, %744
  %940 = fmul fast float %818, %748
  %941 = fmul fast float %819, %749
  br i1 %803, label %942, label %1051

; <label>:942                                     ; preds = %936
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 2
  %945 = extractvalue %dx.types.CBufRet.f32 %943, 3
  %946 = fmul fast float %944, %56
  %947 = fmul fast float %945, %57
  %948 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %949 = call float @dx.op.unary.f32(i32 7, float %947)  ; Saturate(value)
  %950 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %948, float %949, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %951 = extractvalue %dx.types.ResRet.f32 %950, 0
  %952 = extractvalue %dx.types.ResRet.f32 %950, 1
  %953 = extractvalue %dx.types.ResRet.f32 %950, 2
  %954 = extractvalue %dx.types.ResRet.f32 %950, 3
  %955 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %948, float %949, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %956 = extractvalue %dx.types.ResRet.f32 %955, 0
  %957 = extractvalue %dx.types.ResRet.f32 %955, 1
  %958 = extractvalue %dx.types.ResRet.f32 %955, 2
  %959 = extractvalue %dx.types.ResRet.f32 %955, 3
  %960 = call float @dx.op.binary.f32(i32 35, float %952, float %953)  ; FMax(a,b)
  %961 = call float @dx.op.binary.f32(i32 35, float %951, float %960)  ; FMax(a,b)
  %962 = call float @dx.op.binary.f32(i32 35, float %961, float %954)  ; FMax(a,b)
  %963 = call float @dx.op.binary.f32(i32 36, float %957, float %958)  ; FMin(a,b)
  %964 = call float @dx.op.binary.f32(i32 36, float %956, float %963)  ; FMin(a,b)
  %965 = call float @dx.op.binary.f32(i32 36, float %964, float %959)  ; FMin(a,b)
  %966 = fmul fast float %962, 2.550000e+02
  %967 = fadd fast float %966, 0x3F70101020000000
  %968 = fptoui float %967 to i32
  %969 = fmul fast float %965, 2.550000e+02
  %970 = fadd fast float %969, 0x3F70101020000000
  %971 = fptoui float %970 to i32
  %972 = icmp ult i32 %968, %971
  br i1 %972, label %973, label %1024

; <label>:973                                     ; preds = %942
  %974 = fcmp fast ogt float %50, 9.843750e-01
  %975 = fadd fast float %51, -4.000000e+00
  %976 = select i1 %974, float -4.000000e+00, float %975
  %977 = call float @dx.op.binary.f32(i32 35, float %976, float 0.000000e+00)  ; FMax(a,b)
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 0
  %980 = fadd fast float %979, %977
  %981 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %982 = fmul fast float %980, %981
  %983 = call float @dx.op.unary.f32(i32 23, float %982)  ; Log(value)
  %984 = extractvalue %dx.types.CBufRet.f32 %978, 3
  %985 = fmul fast float %984, %983
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %988 = fmul fast float %985, %987
  %989 = call float @dx.op.unary.f32(i32 7, float %988)  ; Saturate(value)
  %990 = uitofp i32 %968 to float
  %991 = uitofp i32 %971 to float
  %992 = fadd fast float %990, 5.000000e-01
  %993 = fadd fast float %991, 5.000000e-01
  %994 = fmul fast float %987, %992
  %995 = fmul fast float %987, %993
  %996 = fadd fast float %994, 0x3F0FFB4800000000
  %997 = fadd fast float %995, 0xBF0FFB4800000000
  %998 = call float @dx.op.binary.f32(i32 35, float %989, float %996)  ; FMax(a,b)
  %999 = call float @dx.op.binary.f32(i32 36, float %998, float %997)  ; FMin(a,b)
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1003 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1004 = fmul fast float %1001, %999
  %1005 = fadd fast float %1003, %1004
  %1006 = fadd fast float %1003, %1002
  %1007 = fsub fast float %1001, %1002
  %1008 = fadd fast float %1007, %1003
  %1009 = call float @dx.op.binary.f32(i32 35, float %1005, float %1006)  ; FMax(a,b)
  %1010 = call float @dx.op.binary.f32(i32 36, float %1009, float %1008)  ; FMin(a,b)
  %1011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %948, float %949, float %1010, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1011, 2
  %1015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %948, float %949, float %1010, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.ResRet.f32 %1015, 2
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 1
  %1021 = fmul fast float %1020, %1016
  %1022 = fmul fast float %1020, %1017
  %1023 = fmul fast float %1020, %1018
  br label %1024

; <label>:1024                                    ; preds = %973, %942
  %1025 = phi float [ %1012, %973 ], [ 1.000000e+00, %942 ]
  %1026 = phi float [ %1013, %973 ], [ 1.000000e+00, %942 ]
  %1027 = phi float [ %1014, %973 ], [ 1.000000e+00, %942 ]
  %1028 = phi float [ %1021, %973 ], [ 0.000000e+00, %942 ]
  %1029 = phi float [ %1022, %973 ], [ 0.000000e+00, %942 ]
  %1030 = phi float [ %1023, %973 ], [ 0.000000e+00, %942 ]
  %1031 = fmul fast float %1028, %822
  %1032 = fmul fast float %1029, %822
  %1033 = fmul fast float %1030, %822
  %1034 = call float @dx.op.dot3.f32(i32 55, float %1025, float %1026, float %1027, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = call float @dx.op.dot3.f32(i32 55, float %1031, float %1032, float %1033, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1036 = select i1 %114, float %1034, float %1025
  %1037 = select i1 %114, float %1034, float %1026
  %1038 = select i1 %114, float 1.000000e+00, float %1027
  %1039 = select i1 %114, float %1035, float %1031
  %1040 = select i1 %114, float 0.000000e+00, float %1032
  %1041 = select i1 %114, float 0.000000e+00, float %1033
  %1042 = fmul fast float %1036, %939
  %1043 = fmul fast float %1037, %940
  %1044 = fmul fast float %1038, %941
  %1045 = fadd fast float %1042, %1039
  %1046 = fadd fast float %1043, %1040
  %1047 = fadd fast float %1041, %1044
  %1048 = fmul fast float %1036, %924
  %1049 = fmul fast float %1037, %925
  %1050 = fmul fast float %1038, %926
  br label %1051

; <label>:1051                                    ; preds = %1024, %936
  %1052 = phi float [ %800, %1024 ], [ %51, %936 ]
  %1053 = phi float [ %1045, %1024 ], [ %939, %936 ]
  %1054 = phi float [ %1046, %1024 ], [ %940, %936 ]
  %1055 = phi float [ %1047, %1024 ], [ %941, %936 ]
  %1056 = phi float [ %1048, %1024 ], [ %924, %936 ]
  %1057 = phi float [ %1049, %1024 ], [ %925, %936 ]
  %1058 = phi float [ %1050, %1024 ], [ %926, %936 ]
  %1059 = phi float [ %1025, %1024 ], [ 1.000000e+00, %936 ]
  br i1 %808, label %1361, label %1060

; <label>:1060                                    ; preds = %1051
  %1061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.ResRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.ResRet.f32 %1061, 2
  %1065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.ResRet.f32 %1065, 1
  %1068 = extractvalue %dx.types.ResRet.f32 %1065, 2
  %1069 = fmul fast float %1062, %822
  %1070 = fmul fast float %1063, %822
  %1071 = fmul fast float %1064, %822
  %1072 = fmul fast float %1066, %1059
  %1073 = call float @dx.op.dot3.f32(i32 55, float %1066, float %1067, float %1068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1074 = call float @dx.op.dot3.f32(i32 55, float %1069, float %1070, float %1071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1075 = select i1 %114, float %1073, float %1066
  %1076 = select i1 %114, float %1073, float %1067
  %1077 = select i1 %114, float 1.000000e+00, float %1068
  %1078 = select i1 %114, float %1074, float %1069
  %1079 = select i1 %114, float 0.000000e+00, float %1070
  %1080 = select i1 %114, float 0.000000e+00, float %1071
  %1081 = fmul fast float %1075, %1053
  %1082 = fmul fast float %1076, %1054
  %1083 = fmul fast float %1077, %1055
  %1084 = fadd fast float %1081, %1078
  %1085 = fadd fast float %1082, %1079
  %1086 = fadd fast float %1083, %1080
  %1087 = fmul fast float %1075, %1056
  %1088 = fmul fast float %1076, %1057
  %1089 = fmul fast float %1077, %1058
  %1090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.i32 %1090, 0
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1361, label %1093, !dx.controlflow.hints !72

; <label>:1093                                    ; preds = %1060
  %1094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1095 = extractvalue %dx.types.CBufRet.f32 %1094, 2
  %1096 = extractvalue %dx.types.CBufRet.f32 %1094, 3
  %1097 = fmul fast float %1095, %56
  %1098 = fmul fast float %1096, %57
  %1099 = fmul fast float %1097, 2.000000e+00
  %1100 = fmul fast float %1098, 2.000000e+00
  %1101 = fsub fast float 1.000000e+00, %1099
  %1102 = fsub fast float 1.000000e+00, %1100
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.CBufRet.f32 %1103, 1
  %1106 = extractvalue %dx.types.CBufRet.f32 %1103, 2
  %1107 = fmul fast float %1101, %1104
  %1108 = fmul fast float %1101, %1105
  %1109 = fmul fast float %1101, %1106
  %1110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.CBufRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.CBufRet.f32 %1110, 2
  %1114 = fmul fast float %1102, %1111
  %1115 = fmul fast float %1102, %1112
  %1116 = fmul fast float %1102, %1113
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.CBufRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1121 = fadd fast float %1114, %1118
  %1122 = fadd fast float %1121, %1107
  %1123 = fadd fast float %1115, %1119
  %1124 = fadd fast float %1123, %1108
  %1125 = fadd fast float %1116, %1120
  %1126 = fadd fast float %1125, %1109
  %1127 = fmul fast float %1122, %1052
  %1128 = fmul fast float %1124, %1052
  %1129 = fmul fast float %1126, %1052
  %1130 = fmul fast float %1127, %1127
  %1131 = fmul fast float %1128, %1128
  %1132 = fadd fast float %1130, %1131
  %1133 = fmul fast float %1129, %1129
  %1134 = fadd fast float %1132, %1133
  %1135 = call float @dx.op.unary.f32(i32 24, float %1134)  ; Sqrt(value)
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 0
  %1138 = fsub fast float %1135, %1137
  %1139 = extractvalue %dx.types.CBufRet.f32 %1136, 2
  %1140 = fmul fast float %1138, %1139
  %1141 = call float @dx.op.unary.f32(i32 7, float %1140)  ; Saturate(value)
  %1142 = fadd fast float %1141, -5.000000e-01
  %1143 = fmul fast float %1142, 2.000000e+00
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 2
  %1146 = call float @dx.op.binary.f32(i32 36, float %1145, float %1143)  ; FMin(a,b)
  %1147 = fsub fast float -0.000000e+00, %1145
  %1148 = fcmp fast ogt float %1146, %1147
  br i1 %1148, label %1149, label %1361, !dx.controlflow.hints !73

; <label>:1149                                    ; preds = %1093
  %1150 = fmul fast float %1146, 5.000000e-01
  %1151 = fadd fast float %1150, 5.000000e-01
  %1152 = call float @dx.op.unary.f32(i32 22, float %1151)  ; Frc(value)
  %1153 = call float @dx.op.unary.f32(i32 27, float %1152)  ; Round_ni(value)
  %1154 = call float @dx.op.unary.f32(i32 22, float %1152)  ; Frc(value)
  %1155 = fmul fast float %1154, 2.000000e+00
  %1156 = fadd fast float %1155, -1.000000e+00
  %1157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1097, float %1098, float %1153, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = extractvalue %dx.types.ResRet.f32 %1157, 1
  %1160 = extractvalue %dx.types.ResRet.f32 %1157, 2
  %1161 = extractvalue %dx.types.ResRet.f32 %1157, 3
  %1162 = fadd fast float %1158, -5.000000e-01
  %1163 = fadd fast float %1160, -5.000000e-01
  %1164 = fmul fast float %1162, 0xBFD5555560000000
  %1165 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1163, float %1164)  ; FMad(a,b,c)
  %1166 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1159, float 0.000000e+00)  ; FMad(a,b,c)
  %1167 = fadd fast float %1166, %1161
  %1168 = fmul fast float %1162, -7.500000e-01
  %1169 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1163, float %1168)  ; FMad(a,b,c)
  %1170 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1159, float 0.000000e+00)  ; FMad(a,b,c)
  %1171 = fadd fast float %1170, %1161
  %1172 = call float @dx.op.binary.f32(i32 35, float %1165, float -1.000000e+00)  ; FMax(a,b)
  %1173 = call float @dx.op.binary.f32(i32 35, float %1167, float -1.000000e+00)  ; FMax(a,b)
  %1174 = call float @dx.op.binary.f32(i32 35, float %1169, float -1.000000e+00)  ; FMax(a,b)
  %1175 = call float @dx.op.binary.f32(i32 35, float %1171, float -1.000000e+00)  ; FMax(a,b)
  %1176 = call float @dx.op.binary.f32(i32 36, float %1172, float 1.000000e+00)  ; FMin(a,b)
  %1177 = call float @dx.op.binary.f32(i32 36, float %1173, float 1.000000e+00)  ; FMin(a,b)
  %1178 = call float @dx.op.binary.f32(i32 36, float %1174, float 1.000000e+00)  ; FMin(a,b)
  %1179 = call float @dx.op.binary.f32(i32 36, float %1175, float 1.000000e+00)  ; FMin(a,b)
  %1180 = fcmp fast olt float %1176, 0x3FEFFF8020000000
  br i1 %1180, label %1181, label %1296, !dx.controlflow.hints !74

; <label>:1181                                    ; preds = %1149
  %1182 = extractvalue %dx.types.CBufRet.f32 %1144, 3
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.CBufRet.f32 %1183, 1
  %1186 = extractvalue %dx.types.CBufRet.f32 %1183, 2
  %1187 = extractvalue %dx.types.CBufRet.f32 %1183, 3
  %1188 = fsub fast float %1184, %1176
  %1189 = fsub fast float %1185, %1177
  %1190 = fsub fast float %1186, %1178
  %1191 = fsub fast float %1187, %1179
  %1192 = fmul fast float %1188, %1182
  %1193 = fmul fast float %1189, %1182
  %1194 = fmul fast float %1190, %1182
  %1195 = fmul fast float %1191, %1182
  %1196 = fadd fast float %1192, %1176
  %1197 = fadd fast float %1193, %1177
  %1198 = fsub fast float -0.000000e+00, %1197
  %1199 = fadd fast float %1194, %1178
  %1200 = fadd fast float %1195, %1179
  %1201 = fmul fast float %1196, %1196
  %1202 = fsub fast float %1197, %1201
  %1203 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1202)  ; FMax(a,b)
  %1204 = fdiv fast float 1.000000e+00, %1203
  %1205 = fmul fast float %1197, %1196
  %1206 = fsub fast float %1199, %1205
  %1207 = fsub fast float %1156, %1196
  %1208 = fmul fast float %1156, %1156
  %1209 = fsub fast float %1208, %1197
  %1210 = fmul fast float %1207, %1204
  %1211 = fmul fast float %1210, %1206
  %1212 = fsub fast float %1209, %1211
  %1213 = fmul fast float %1197, %1197
  %1214 = fsub fast float %1200, %1213
  %1215 = fmul fast float %1206, %1206
  %1216 = fmul fast float %1215, %1204
  %1217 = fsub fast float %1214, %1216
  %1218 = fdiv fast float %1212, %1217
  %1219 = fmul fast float %1206, %1218
  %1220 = fsub fast float %1207, %1219
  %1221 = fmul fast float %1220, %1204
  %1222 = fmul fast float %1221, %1196
  %1223 = fsub fast float 1.000000e+00, %1222
  %1224 = fmul fast float %1197, %1218
  %1225 = fsub fast float %1223, %1224
  %1226 = fmul fast float %1221, %1221
  %1227 = fmul fast float %1218, 4.000000e+00
  %1228 = fmul fast float %1227, %1225
  %1229 = fsub fast float %1226, %1228
  %1230 = call float @dx.op.unary.f32(i32 24, float %1229)  ; Sqrt(value)
  %1231 = fcmp fast oge float %1221, 0.000000e+00
  %1232 = fsub fast float -0.000000e+00, %1230
  %1233 = select i1 %1231, float %1232, float %1230
  %1234 = fsub fast float %1233, %1221
  %1235 = fdiv fast float %1234, %1218
  %1236 = fdiv fast float %1225, %1234
  %1237 = fmul fast float %1235, 5.000000e-01
  %1238 = fmul fast float %1236, 2.000000e+00
  %1239 = select i1 %1231, float %1237, float %1238
  %1240 = select i1 %1231, float %1238, float %1237
  %1241 = call float @dx.op.binary.f32(i32 35, float %1239, float %1240)  ; FMax(a,b)
  %1242 = call float @dx.op.binary.f32(i32 36, float %1239, float %1240)  ; FMin(a,b)
  %1243 = fcmp fast ogt float %1156, %1242
  br i1 %1243, label %1244, label %1254

; <label>:1244                                    ; preds = %1181
  %1245 = fsub fast float %1156, %1242
  %1246 = fsub fast float %1241, %1242
  %1247 = fmul fast float %1245, %1246
  %1248 = fmul fast float %1241, %1156
  %1249 = fadd fast float %1241, %1156
  %1250 = fmul fast float %1249, %1196
  %1251 = fadd fast float %1248, %1197
  %1252 = fsub fast float %1251, %1250
  %1253 = fdiv fast float %1252, %1247
  br label %1254

; <label>:1254                                    ; preds = %1244, %1181
  %1255 = phi float [ %1253, %1244 ], [ 0.000000e+00, %1181 ]
  %1256 = fcmp fast ogt float %1156, %1241
  %1257 = fsub fast float %1156, %1241
  br i1 %1256, label %1258, label %1268

; <label>:1258                                    ; preds = %1254
  %1259 = fsub fast float %1241, %1242
  %1260 = fmul fast float %1259, %1257
  %1261 = fmul fast float %1242, %1156
  %1262 = fadd fast float %1242, %1156
  %1263 = fmul fast float %1262, %1196
  %1264 = fsub fast float %1198, %1261
  %1265 = fadd fast float %1264, %1263
  %1266 = fdiv fast float %1265, %1260
  %1267 = fadd fast float %1266, %1255
  br label %1268

; <label>:1268                                    ; preds = %1258, %1254
  %1269 = phi float [ %1267, %1258 ], [ %1255, %1254 ]
  %1270 = fsub fast float %1156, %1242
  %1271 = fmul fast float %1270, %1257
  %1272 = fmul fast float %1242, %1241
  %1273 = fadd fast float %1242, %1241
  %1274 = fmul fast float %1273, %1196
  %1275 = fadd fast float %1272, %1197
  %1276 = fsub fast float %1275, %1274
  %1277 = fdiv fast float %1276, %1271
  %1278 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1279 = fcmp fast oeq float %937, 0.000000e+00
  %1280 = extractvalue %dx.types.CBufRet.f32 %1144, 0
  %1281 = fcmp fast oeq float %1280, 0.000000e+00
  %1282 = or i1 %1279, %1281
  %1283 = fmul fast float %1280, 2.000000e+00
  %1284 = fadd fast float %1145, %1146
  %1285 = fdiv fast float %1284, %1283
  %1286 = call float @dx.op.unary.f32(i32 7, float %1285)  ; Saturate(value)
  %1287 = fmul fast float %1286, 2.000000e+00
  %1288 = fsub fast float 3.000000e+00, %1287
  %1289 = fmul fast float %1286, %1286
  %1290 = fmul fast float %1289, %1288
  %1291 = select i1 %1282, float 1.000000e+00, float %1290
  %1292 = fmul fast float %1277, %937
  %1293 = fadd fast float %1278, %1292
  %1294 = call float @dx.op.unary.f32(i32 7, float %1293)  ; Saturate(value)
  %1295 = fmul fast float %1291, %1294
  br label %1296

; <label>:1296                                    ; preds = %1268, %1149
  %1297 = phi float [ %1295, %1268 ], [ 0.000000e+00, %1149 ]
  %1298 = fsub fast float 1.000000e+00, %1297
  %1299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1097, float %1098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.i32 %1301, 2
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %1309, label %1304

; <label>:1304                                    ; preds = %1296
  %1305 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1306 = fadd fast float %1300, -1.000000e+00
  %1307 = fmul fast float %1305, %1306
  %1308 = fadd fast float %1307, 1.000000e+00
  br label %1309

; <label>:1309                                    ; preds = %1304, %1296
  %1310 = phi float [ %1308, %1304 ], [ %1298, %1296 ]
  %1311 = call float @dx.op.binary.f32(i32 35, float %1300, float %1310)  ; FMax(a,b)
  %1312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.i32 %1312, 2
  %1314 = and i32 %1313, 1
  %1315 = icmp eq i32 %1314, 0
  %1316 = fcmp fast une float %1311, 1.000000e+00
  %1317 = and i1 %1316, %1315
  br i1 %1317, label %1318, label %1337

; <label>:1318                                    ; preds = %1309
  %1319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1097, float %1098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1320 = extractvalue %dx.types.ResRet.f32 %1319, 0
  %1321 = extractvalue %dx.types.ResRet.f32 %1319, 1
  %1322 = extractvalue %dx.types.ResRet.f32 %1319, 2
  %1323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.f32 %1323, 1
  %1325 = fmul fast float %1324, %1320
  %1326 = fmul fast float %1324, %1321
  %1327 = fmul fast float %1324, %1322
  %1328 = fcmp fast ogt float %1300, 0x3FEFFF2E40000000
  %1329 = fsub fast float 1.000000e+00, %1311
  %1330 = fsub fast float 1.000000e+00, %1300
  %1331 = fdiv fast float %1329, %1330
  %1332 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1333 = select i1 %1328, float 0.000000e+00, float %1332
  %1334 = fmul fast float %1325, %1333
  %1335 = fmul fast float %1326, %1333
  %1336 = fmul fast float %1327, %1333
  br label %1337

; <label>:1337                                    ; preds = %1318, %1309
  %1338 = phi float [ 0.000000e+00, %1309 ], [ %1334, %1318 ]
  %1339 = phi float [ 0.000000e+00, %1309 ], [ %1335, %1318 ]
  %1340 = phi float [ 0.000000e+00, %1309 ], [ %1336, %1318 ]
  %1341 = fmul fast float %1338, %822
  %1342 = fmul fast float %1339, %822
  %1343 = fmul fast float %1340, %822
  %1344 = fmul fast float %1311, %1072
  %1345 = call float @dx.op.dot3.f32(i32 55, float %1311, float %1311, float %1311, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1346 = call float @dx.op.dot3.f32(i32 55, float %1341, float %1342, float %1343, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1347 = select i1 %114, float %1345, float %1311
  %1348 = select i1 %114, float 1.000000e+00, float %1311
  %1349 = select i1 %114, float %1346, float %1341
  %1350 = select i1 %114, float 0.000000e+00, float %1342
  %1351 = select i1 %114, float 0.000000e+00, float %1343
  %1352 = fmul fast float %1347, %1084
  %1353 = fmul fast float %1347, %1085
  %1354 = fmul fast float %1348, %1086
  %1355 = fadd fast float %1352, %1349
  %1356 = fadd fast float %1353, %1350
  %1357 = fadd fast float %1351, %1354
  %1358 = fmul fast float %1347, %1087
  %1359 = fmul fast float %1347, %1088
  %1360 = fmul fast float %1348, %1089
  br label %1361

; <label>:1361                                    ; preds = %1337, %1093, %1060, %1051
  %1362 = phi float [ %1053, %1051 ], [ %1084, %1060 ], [ %1355, %1337 ], [ %1084, %1093 ]
  %1363 = phi float [ %1054, %1051 ], [ %1085, %1060 ], [ %1356, %1337 ], [ %1085, %1093 ]
  %1364 = phi float [ %1055, %1051 ], [ %1086, %1060 ], [ %1357, %1337 ], [ %1086, %1093 ]
  %1365 = phi float [ %1056, %1051 ], [ %1087, %1060 ], [ %1358, %1337 ], [ %1087, %1093 ]
  %1366 = phi float [ %1057, %1051 ], [ %1088, %1060 ], [ %1359, %1337 ], [ %1088, %1093 ]
  %1367 = phi float [ %1058, %1051 ], [ %1089, %1060 ], [ %1360, %1337 ], [ %1089, %1093 ]
  %1368 = phi float [ %1059, %1051 ], [ %1072, %1060 ], [ %1344, %1337 ], [ %1072, %1093 ]
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 2
  %1371 = extractvalue %dx.types.CBufRet.f32 %1369, 3
  %1372 = fmul fast float %1370, %56
  %1373 = fmul fast float %1371, %57
  %1374 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1375 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1376 = select i1 %808, i32 2, i32 0
  %1377 = or i32 %1376, 1
  %1378 = uitofp i32 %1377 to float
  %1379 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1374, float %1375, float %1378, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = extractvalue %dx.types.ResRet.f32 %1379, 1
  %1382 = extractvalue %dx.types.ResRet.f32 %1379, 2
  %1383 = extractvalue %dx.types.ResRet.f32 %1379, 3
  %1384 = add nuw nsw i32 %1376, 2
  %1385 = uitofp i32 %1384 to float
  %1386 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1374, float %1375, float %1385, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  %1388 = extractvalue %dx.types.ResRet.f32 %1386, 1
  %1389 = extractvalue %dx.types.ResRet.f32 %1386, 2
  %1390 = extractvalue %dx.types.ResRet.f32 %1386, 3
  %1391 = call float @dx.op.binary.f32(i32 35, float %1381, float %1382)  ; FMax(a,b)
  %1392 = call float @dx.op.binary.f32(i32 35, float %1380, float %1391)  ; FMax(a,b)
  %1393 = call float @dx.op.binary.f32(i32 35, float %1392, float %1383)  ; FMax(a,b)
  %1394 = call float @dx.op.binary.f32(i32 36, float %1388, float %1389)  ; FMin(a,b)
  %1395 = call float @dx.op.binary.f32(i32 36, float %1387, float %1394)  ; FMin(a,b)
  %1396 = call float @dx.op.binary.f32(i32 36, float %1395, float %1390)  ; FMin(a,b)
  %1397 = fmul fast float %1393, 2.550000e+02
  %1398 = fadd fast float %1397, 0x3F70101020000000
  %1399 = fptoui float %1398 to i32
  %1400 = fmul fast float %1396, 2.550000e+02
  %1401 = fadd fast float %1400, 0x3F70101020000000
  %1402 = fptoui float %1401 to i32
  %1403 = icmp ult i32 %1399, %1402
  br i1 %1403, label %1404, label %1456

; <label>:1404                                    ; preds = %1361
  %1405 = fcmp fast ogt float %50, 9.843750e-01
  %1406 = fadd fast float %1052, -4.000000e+00
  %1407 = select i1 %1405, float -4.000000e+00, float %1406
  %1408 = call float @dx.op.binary.f32(i32 35, float %1407, float 0.000000e+00)  ; FMax(a,b)
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 0
  %1411 = fadd fast float %1410, %1408
  %1412 = extractvalue %dx.types.CBufRet.f32 %1409, 2
  %1413 = fmul fast float %1411, %1412
  %1414 = call float @dx.op.unary.f32(i32 23, float %1413)  ; Log(value)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1409, 3
  %1416 = fmul fast float %1415, %1414
  %1417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.f32 %1417, 2
  %1419 = fmul fast float %1416, %1418
  %1420 = call float @dx.op.unary.f32(i32 7, float %1419)  ; Saturate(value)
  %1421 = uitofp i32 %1399 to float
  %1422 = uitofp i32 %1402 to float
  %1423 = fadd fast float %1421, 5.000000e-01
  %1424 = fadd fast float %1422, 5.000000e-01
  %1425 = fmul fast float %1418, %1423
  %1426 = fmul fast float %1418, %1424
  %1427 = fadd fast float %1425, 0x3F0FFB4800000000
  %1428 = fadd fast float %1426, 0xBF0FFB4800000000
  %1429 = call float @dx.op.binary.f32(i32 35, float %1420, float %1427)  ; FMax(a,b)
  %1430 = call float @dx.op.binary.f32(i32 36, float %1429, float %1428)  ; FMin(a,b)
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 1
  %1433 = extractvalue %dx.types.CBufRet.f32 %1431, 2
  %1434 = extractvalue %dx.types.CBufRet.f32 %1431, 0
  %1435 = select i1 %808, float %1434, float 0.000000e+00
  %1436 = fmul fast float %1432, %1430
  %1437 = fadd fast float %1435, %1436
  %1438 = fadd fast float %1435, %1433
  %1439 = fsub fast float %1432, %1433
  %1440 = fadd fast float %1439, %1435
  %1441 = call float @dx.op.binary.f32(i32 35, float %1437, float %1438)  ; FMax(a,b)
  %1442 = call float @dx.op.binary.f32(i32 36, float %1441, float %1440)  ; FMin(a,b)
  %1443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1374, float %1375, float %1442, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.ResRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.ResRet.f32 %1443, 2
  %1447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1374, float %1375, float %1442, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1448 = extractvalue %dx.types.ResRet.f32 %1447, 0
  %1449 = extractvalue %dx.types.ResRet.f32 %1447, 1
  %1450 = extractvalue %dx.types.ResRet.f32 %1447, 2
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 1
  %1453 = fmul fast float %1452, %1448
  %1454 = fmul fast float %1452, %1449
  %1455 = fmul fast float %1452, %1450
  br label %1456

; <label>:1456                                    ; preds = %1404, %1361
  %1457 = phi float [ %1444, %1404 ], [ 1.000000e+00, %1361 ]
  %1458 = phi float [ %1445, %1404 ], [ 1.000000e+00, %1361 ]
  %1459 = phi float [ %1446, %1404 ], [ 1.000000e+00, %1361 ]
  %1460 = phi float [ %1453, %1404 ], [ 0.000000e+00, %1361 ]
  %1461 = phi float [ %1454, %1404 ], [ 0.000000e+00, %1361 ]
  %1462 = phi float [ %1455, %1404 ], [ 0.000000e+00, %1361 ]
  %1463 = fmul fast float %1460, %822
  %1464 = fmul fast float %1461, %822
  %1465 = fmul fast float %1462, %822
  %1466 = fmul fast float %1457, %1368
  %1467 = call float @dx.op.dot3.f32(i32 55, float %1457, float %1458, float %1459, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1468 = call float @dx.op.dot3.f32(i32 55, float %1463, float %1464, float %1465, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1469 = select i1 %114, float %1467, float %1457
  %1470 = select i1 %114, float %1467, float %1458
  %1471 = select i1 %114, float 1.000000e+00, float %1459
  %1472 = select i1 %114, float %1468, float %1463
  %1473 = select i1 %114, float 0.000000e+00, float %1464
  %1474 = select i1 %114, float 0.000000e+00, float %1465
  %1475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.i32 %1475, 3
  %1477 = and i32 %1476, 3
  %1478 = icmp ne i32 %1477, 0
  %1479 = and i32 %1476, 4
  %1480 = icmp ne i32 %1479, 0
  %1481 = and i1 %1478, %1480
  %1482 = and i1 %114, %1481
  br i1 %1482, label %1483, label %1489

; <label>:1483                                    ; preds = %1456
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 1
  %1486 = fadd fast float %1466, -1.000000e+00
  %1487 = fmul fast float %1485, %1486
  %1488 = fadd fast float %1487, 1.000000e+00
  br label %1489

; <label>:1489                                    ; preds = %1483, %1456
  %1490 = phi float [ %1488, %1483 ], [ %1466, %1456 ]
  %1491 = fadd fast float %1365, %1362
  %1492 = fmul fast float %1469, %1491
  %1493 = fadd fast float %1492, %1472
  %1494 = fadd fast float %1366, %1363
  %1495 = fmul fast float %1470, %1494
  %1496 = fadd fast float %1495, %1473
  %1497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.f32 %1497, 0
  br i1 %114, label %1499, label %1520

; <label>:1499                                    ; preds = %1489
  %1500 = fadd fast float %1493, %1496
  %1501 = fmul fast float %1498, %1500
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 3
  %1504 = extractvalue %dx.types.CBufRet.f32 %826, 1
  %1505 = fsub fast float %829, %1504
  %1506 = extractvalue %dx.types.CBufRet.f32 %826, 2
  %1507 = fmul fast float %1505, %1506
  %1508 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1509 = fsub fast float %1508, %1503
  %1510 = fmul fast float %1509, %1490
  %1511 = fadd fast float %1510, %1503
  %1512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.f32 %1512, 0
  %1514 = fsub fast float %1511, %1513
  %1515 = fmul fast float %1514, 1.000000e+01
  %1516 = call float @dx.op.unary.f32(i32 7, float %1515)  ; Saturate(value)
  %1517 = fmul fast float %1516, %822
  %1518 = fsub fast float %822, %1517
  %1519 = fmul fast float %1518, %1511
  br label %1532

; <label>:1520                                    ; preds = %1489
  %1521 = fadd fast float %1367, %1364
  %1522 = fmul fast float %1471, %1521
  %1523 = fadd fast float %1522, %1474
  %1524 = fmul fast float %1498, %1493
  %1525 = fmul fast float %1498, %1496
  %1526 = fmul fast float %1498, %1523
  %1527 = call float @dx.op.binary.f32(i32 35, float %1525, float %1526)  ; FMax(a,b)
  %1528 = call float @dx.op.binary.f32(i32 35, float %1524, float %1527)  ; FMax(a,b)
  %1529 = call float @dx.op.binary.f32(i32 35, float %1528, float %822)  ; FMax(a,b)
  %1530 = fcmp fast ugt float %1529, 0x3F10000000000000
  br i1 %1530, label %1532, label %1531

; <label>:1531                                    ; preds = %1520
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1532

; <label>:1532                                    ; preds = %1531, %1520, %1499
  %1533 = phi float [ %1501, %1499 ], [ %1524, %1531 ], [ %1524, %1520 ]
  %1534 = phi float [ %1519, %1499 ], [ %1525, %1531 ], [ %1525, %1520 ]
  %1535 = phi float [ %1518, %1499 ], [ %1526, %1531 ], [ %1526, %1520 ]
  %1536 = phi float [ %1518, %1499 ], [ %822, %1531 ], [ %822, %1520 ]
  %1537 = fadd fast float %579, 0x3FE3C6EF40000000
  %1538 = call float @dx.op.unary.f32(i32 22, float %1537)  ; Frc(value)
  %1539 = call float @dx.op.unary.f32(i32 23, float %1533)  ; Log(value)
  %1540 = fadd fast float %1539, -7.000000e+00
  %1541 = call float @dx.op.unary.f32(i32 21, float %1540)  ; Exp(value)
  %1542 = fmul fast float %1538, 2.000000e+00
  %1543 = fadd fast float %1542, -1.000000e+00
  %1544 = fmul fast float %1541, %1543
  %1545 = fcmp fast ogt float %1533, 0.000000e+00
  %1546 = select i1 %1545, float %1544, float 0.000000e+00
  %1547 = fadd fast float %1546, %1533
  %1548 = fadd fast float %579, 0x3FF3C6EF40000000
  %1549 = call float @dx.op.unary.f32(i32 22, float %1548)  ; Frc(value)
  %1550 = call float @dx.op.unary.f32(i32 23, float %1534)  ; Log(value)
  %1551 = fadd fast float %1550, -7.000000e+00
  %1552 = call float @dx.op.unary.f32(i32 21, float %1551)  ; Exp(value)
  %1553 = fmul fast float %1549, 2.000000e+00
  %1554 = fadd fast float %1553, -1.000000e+00
  %1555 = fmul fast float %1552, %1554
  %1556 = fcmp fast ogt float %1534, 0.000000e+00
  %1557 = select i1 %1556, float %1555, float 0.000000e+00
  %1558 = fadd fast float %1557, %1534
  %1559 = fadd fast float %579, 0x3FFDAA66E0000000
  %1560 = call float @dx.op.unary.f32(i32 22, float %1559)  ; Frc(value)
  %1561 = call float @dx.op.unary.f32(i32 23, float %1535)  ; Log(value)
  %1562 = fadd fast float %1561, -6.000000e+00
  %1563 = call float @dx.op.unary.f32(i32 21, float %1562)  ; Exp(value)
  %1564 = fmul fast float %1560, 2.000000e+00
  %1565 = fadd fast float %1564, -1.000000e+00
  %1566 = fmul fast float %1563, %1565
  %1567 = fcmp fast ogt float %1535, 0.000000e+00
  %1568 = select i1 %1567, float %1566, float 0.000000e+00
  %1569 = fadd fast float %1568, %1535
  %1570 = select i1 %114, float %1534, float %1558
  %1571 = select i1 %114, float %1535, float %1569
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1572 = call float @dx.op.binary.f32(i32 36, float %1547, float 3.225500e+04)  ; FMin(a,b)
  %1573 = call float @dx.op.binary.f32(i32 36, float %1570, float 3.225500e+04)  ; FMin(a,b)
  %1574 = call float @dx.op.binary.f32(i32 36, float %1571, float 3.225500e+04)  ; FMin(a,b)
  %1575 = call float @dx.op.binary.f32(i32 36, float %1536, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1572)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1573)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1574)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1575)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1536)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1536)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1536)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1536)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!35 = !{[37 x i32] [i32 35, i32 8, i32 255, i32 255, i32 255, i32 255, i32 1, i32 3, i32 4, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!36 = !{void ()* @ps_main, !"ps_main", !37, !4, !62}
!37 = !{!38, !58, null}
!38 = !{!39, !42, !43, !45, !48, !50, !52, !54, !55, !57}
!39 = !{i32 0, !"SV_Position", i8 9, i8 3, !40, i8 4, i32 1, i8 4, i32 0, i8 0, !41}
!40 = !{i32 0}
!41 = !{i32 3, i32 15}
!42 = !{i32 1, !"COLOR", i8 9, i8 0, !40, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!43 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 2, i8 0, !44}
!44 = !{i32 3, i32 3}
!45 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !46, i8 1, i32 1, i8 4, i32 3, i8 0, !47}
!46 = !{i32 2}
!47 = !{i32 3, i32 7}
!48 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 4, i8 0, !41}
!49 = !{i32 3}
!50 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !51, i8 3, i32 1, i8 2, i32 5, i8 0, !44}
!51 = !{i32 5}
!52 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 6, i8 0, !41}
!53 = !{i32 8}
!54 = !{i32 7, !"QUAD_POSITION", i8 9, i8 0, !40, i8 1, i32 1, i8 4, i32 7, i8 0, !41}
!55 = !{i32 8, !"COLOR", i8 5, i8 0, !49, i8 1, i32 1, i8 3, i32 8, i8 0, !56}
!56 = !{i32 3, i32 5}
!57 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !40, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!58 = !{!59, !60}
!59 = !{i32 0, !"SV_Target", i8 9, i8 16, !40, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!60 = !{i32 1, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 1, i8 0, !41}
!61 = !{i32 1}
!62 = !{i32 0, i64 24}
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

