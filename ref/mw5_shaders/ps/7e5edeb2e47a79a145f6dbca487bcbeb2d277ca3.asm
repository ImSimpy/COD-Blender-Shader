;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 5   xy          4     NONE   float   xy  
; TEXCOORD                 8   xyzw        5     NONE   float   xyzw
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
; shader hash: 6bcc423e3c127165261a746597f45e93
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
;                                   texture     f32          3d     T17     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 31, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24, 25, 26, 27, 28, 30 }
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
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = fmul fast float %52, %45
  %54 = fmul fast float %52, %46
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 3
  %58 = fmul fast float %53, 2.000000e+00
  %59 = fmul fast float %58, %56
  %60 = fmul fast float %54, 2.000000e+00
  %61 = fmul fast float %60, %57
  %62 = fsub fast float 1.000000e+00, %59
  %63 = fsub fast float 1.000000e+00, %61
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = extractvalue %dx.types.CBufRet.f32 %64, 1
  %67 = extractvalue %dx.types.CBufRet.f32 %64, 2
  %68 = fmul fast float %62, %65
  %69 = fmul fast float %62, %66
  %70 = fmul fast float %62, %67
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 1
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %75 = fmul fast float %63, %72
  %76 = fmul fast float %63, %73
  %77 = fmul fast float %63, %74
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = extractvalue %dx.types.CBufRet.f32 %78, 1
  %81 = extractvalue %dx.types.CBufRet.f32 %78, 2
  %82 = fadd fast float %75, %79
  %83 = fadd fast float %82, %68
  %84 = fadd fast float %76, %80
  %85 = fadd fast float %84, %69
  %86 = fadd fast float %77, %81
  %87 = fadd fast float %86, %70
  %88 = fmul fast float %83, %48
  %89 = fmul fast float %85, %48
  %90 = fmul fast float %87, %48
  %91 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.i32 %91, 3
  %93 = and i32 %92, 3
  %94 = icmp ne i32 %93, 0
  %95 = and i32 %92, 4
  %96 = icmp ne i32 %95, 0
  %97 = and i1 %94, %96
  br i1 %97, label %98, label %107

; <label>:98                                      ; preds = %0
  %99 = fmul fast float %57, %54
  %100 = fmul fast float %56, %53
  %101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %19, float %100, float %99, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = fsub fast float 1.000000e+00, %102
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = fcmp fast olt float %103, %105
  br label %110

; <label>:107                                     ; preds = %0
  %108 = icmp eq i32 %95, 0
  %109 = and i1 %94, %108
  br label %110

; <label>:110                                     ; preds = %107, %98
  %111 = phi i1 [ %106, %98 ], [ %109, %107 ]
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %113, %53
  %116 = fmul fast float %114, %54
  %117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  %119 = and i32 %118, 114688
  %120 = icmp ne i32 %119, 0
  %121 = select i1 %120, float %115, float 0.000000e+00
  %122 = select i1 %120, float %116, float 0.000000e+00
  %123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %20, float %121, float %122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = fmul fast float %124, 2.550000e+02
  %126 = fptoui float %125 to i32
  %127 = select i1 %120, i32 %126, i32 0
  %128 = mul i32 %23, 208
  %129 = add i32 %128, 188
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = and i32 %92, 114688
  %133 = and i32 %92, 8
  %134 = icmp ne i32 %133, 0
  %135 = or i1 %111, %134
  %136 = select i1 %135, i32 %132, i32 16384
  %137 = and i32 %136, %131
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

; <label>:139                                     ; preds = %110
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %140

; <label>:140                                     ; preds = %139, %110
  %141 = and i32 %131, 512
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %167, label %143

; <label>:143                                     ; preds = %140
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %147 = fmul fast float %145, %53
  %148 = fmul fast float %146, %54
  %149 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %150 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %151 = fdiv fast float %149, %150
  %152 = fcmp fast ogt float %151, 0x3FFC71C720000000
  br i1 %152, label %153, label %159

; <label>:153                                     ; preds = %143
  %154 = fdiv fast float 0x3FFC71C720000000, %151
  %155 = fmul fast float %154, %148
  %156 = fsub fast float 1.000000e+00, %154
  %157 = fmul fast float %156, 5.000000e-01
  %158 = fadd fast float %157, %155
  br label %167

; <label>:159                                     ; preds = %143
  %160 = fcmp fast olt float %151, 0x3FFC71C720000000
  br i1 %160, label %161, label %167

; <label>:161                                     ; preds = %159
  %162 = fmul fast float %147, 5.625000e-01
  %163 = fmul fast float %162, %151
  %164 = fmul fast float %151, 2.812500e-01
  %165 = fsub fast float 5.000000e-01, %164
  %166 = fadd fast float %165, %163
  br label %167

; <label>:167                                     ; preds = %161, %159, %153, %140
  %168 = phi float [ %39, %140 ], [ %147, %153 ], [ %166, %161 ], [ %147, %159 ]
  %169 = phi float [ %40, %140 ], [ %158, %153 ], [ %148, %161 ], [ %148, %159 ]
  %170 = add i32 %24, 88
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = bitcast i32 %172 to float
  %174 = add i32 %24, 72
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = extractvalue %dx.types.ResRet.i32 %175, 1
  %178 = extractvalue %dx.types.ResRet.i32 %175, 2
  %179 = extractvalue %dx.types.ResRet.i32 %175, 3
  %180 = bitcast i32 %176 to float
  %181 = bitcast i32 %177 to float
  %182 = bitcast i32 %178 to float
  %183 = bitcast i32 %179 to float
  %184 = add i32 %24, 116
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = add i32 %186, 0
  %188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %189 = fmul fast float %182, %39
  %190 = fmul fast float %183, %40
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %193 = fmul fast float %192, %180
  %194 = fmul fast float %192, %181
  %195 = fadd fast float %193, %189
  %196 = fadd fast float %194, %190
  %197 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %188, %dx.types.Handle %50, float %195, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = extractvalue %dx.types.ResRet.f32 %197, 1
  %200 = fmul fast float %198, 2.000000e+00
  %201 = fmul fast float %199, 2.000000e+00
  %202 = fadd fast float %200, -1.000000e+00
  %203 = fadd fast float %201, -1.000000e+00
  %204 = fmul fast float %202, %173
  %205 = fmul fast float %203, %173
  %206 = fadd fast float %204, %168
  %207 = fadd fast float %205, %169
  %208 = and i32 %131, 16
  %209 = icmp ne i32 %208, 0
  %210 = select i1 %209, float 1.000000e+00, float %44
  %211 = add i32 %24, 112
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = add i32 %213, 0
  %215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %215, %dx.types.Handle %50, float %206, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float %217, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = fmul fast float %219, %210
  %221 = icmp eq i32 %208, 0
  br i1 %221, label %241, label %222, !dx.controlflow.hints !60

; <label>:222                                     ; preds = %167
  %223 = add i32 %128, 64
  %224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = fadd fast float %225, 1.000000e+00
  %227 = fmul fast float %226, %44
  %228 = fsub fast float %227, %225
  %229 = fsub fast float %226, %228
  %230 = call float @dx.op.unary.f32(i32 7, float %229)  ; Saturate(value)
  %231 = fsub fast float 1.000000e+00, %227
  %232 = call float @dx.op.unary.f32(i32 7, float %231)  ; Saturate(value)
  %233 = fsub fast float %230, %232
  %234 = fsub fast float %220, %232
  %235 = fdiv fast float %234, %233
  %236 = call float @dx.op.unary.f32(i32 7, float %235)  ; Saturate(value)
  %237 = fmul fast float %236, 2.000000e+00
  %238 = fsub fast float 3.000000e+00, %237
  %239 = fmul fast float %236, %236
  %240 = fmul fast float %239, %238
  br label %241

; <label>:241                                     ; preds = %222, %167
  %242 = phi float [ %240, %222 ], [ %220, %167 ]
  %243 = fcmp fast ogt float %242, 0.000000e+00
  br i1 %243, label %245, label %244

; <label>:244                                     ; preds = %241
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %245

; <label>:245                                     ; preds = %244, %241
  %246 = call float @dx.op.unary.f32(i32 7, float %242)  ; Saturate(value)
  %247 = fmul fast float %53, 5.000000e-01
  %248 = fmul fast float %54, 5.000000e-01
  %249 = fptosi float %247 to i32
  %250 = fptosi float %248 to i32
  %251 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %249, i32 %250, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = lshr i32 %252, 18
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F4C00EBA0000000
  %256 = call float @dx.op.unary.f32(i32 21, float %255)  ; Exp(value)
  %257 = fadd fast float %256, -1.000000e+00
  %258 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %259 = extractvalue %dx.types.Dimensions %258, 0
  %260 = sitofp i32 %259 to float
  %261 = extractvalue %dx.types.Dimensions %258, 1
  %262 = sitofp i32 %261 to float
  %263 = fcmp fast oge float %247, %260
  %264 = fcmp fast oge float %248, %262
  %265 = or i1 %263, %264
  %266 = select i1 %265, float 0x4197782600000000, float %257
  %267 = fsub fast float %266, %48
  %268 = fcmp fast ogt float %267, 0.000000e+00
  %269 = and i32 %127, -2
  %270 = icmp eq i32 %269, 2
  %271 = and i1 %270, %268
  %272 = xor i1 %268, true
  %273 = icmp eq i32 %127, 1
  %274 = and i1 %273, %272
  %275 = or i1 %271, %274
  %276 = and i32 %131, 262144
  %277 = icmp ne i32 %276, 0
  %278 = and i1 %277, %275
  %279 = xor i1 %275, true
  %280 = and i32 %131, 131072
  %281 = icmp ne i32 %280, 0
  %282 = and i1 %281, %279
  %283 = or i1 %278, %282
  br i1 %283, label %284, label %285

; <label>:284                                     ; preds = %245
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %285

; <label>:285                                     ; preds = %284, %245
  %286 = and i32 %131, 32
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %564, label %288, !dx.controlflow.hints !61

; <label>:288                                     ; preds = %285
  %289 = add i32 %128, 80
  %290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  %294 = extractvalue %dx.types.ResRet.f32 %290, 3
  %295 = add i32 %128, 96
  %296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = extractvalue %dx.types.ResRet.f32 %296, 1
  %299 = extractvalue %dx.types.ResRet.f32 %296, 2
  %300 = add i32 %128, 112
  %301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = extractvalue %dx.types.ResRet.f32 %301, 1
  %304 = extractvalue %dx.types.ResRet.f32 %301, 2
  %305 = extractvalue %dx.types.ResRet.f32 %301, 3
  %306 = add i32 %128, 128
  %307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = extractvalue %dx.types.ResRet.f32 %307, 1
  %310 = extractvalue %dx.types.ResRet.f32 %307, 2
  %311 = extractvalue %dx.types.ResRet.f32 %307, 3
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 4096
  %315 = icmp ne i32 %314, 0
  %316 = fcmp fast une float %299, 0.000000e+00
  %317 = and i32 %313, 64
  %318 = icmp ne i32 %317, 0
  %319 = and i32 %313, 128
  %320 = icmp eq i32 %319, 0
  %321 = and i32 %313, 2048
  %322 = icmp eq i32 %321, 0
  %323 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %13, i32 0)  ; GetDimensions(handle,mipLevel)
  %324 = extractvalue %dx.types.Dimensions %323, 0
  %325 = sitofp i32 %324 to float
  %326 = extractvalue %dx.types.Dimensions %323, 1
  %327 = sitofp i32 %326 to float
  %328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.f32 %328, 2
  %330 = extractvalue %dx.types.CBufRet.f32 %328, 3
  %331 = fmul fast float %329, %53
  %332 = fmul fast float %330, %54
  %333 = fmul fast float %331, %325
  %334 = fmul fast float %332, %327
  %335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %336 = extractvalue %dx.types.CBufRet.f32 %335, 1
  %337 = fsub fast float -0.000000e+00, %336
  %338 = fptoui float %337 to i32
  %339 = fptoui float %333 to i32
  %340 = fptoui float %334 to i32
  %341 = and i32 %338, 31
  %342 = lshr i32 %339, %341
  %343 = lshr i32 %340, %341
  %344 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %13, i32 %338, i32 %342, i32 %343, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %345 = extractvalue %dx.types.ResRet.f32 %344, 0
  %346 = fcmp fast ogt float %345, -1.000000e+00
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %349 = select i1 %346, float %348, float 1.000000e+00
  %350 = fadd fast float %345, 1.000000e+00
  %351 = fmul fast float %349, %350
  %352 = call float @dx.op.unary.f32(i32 6, float %351)  ; FAbs(value)
  %353 = extractvalue %dx.types.CBufRet.f32 %347, 3
  %354 = fcmp fast oge float %352, %353
  %355 = select i1 %354, float 0x4197782600000000, float %352
  br i1 %322, label %445, label %356, !dx.controlflow.hints !62

; <label>:356                                     ; preds = %288
  %357 = fmul fast float %58, %329
  %358 = fmul fast float %60, %330
  %359 = fsub fast float 1.000000e+00, %357
  %360 = fsub fast float 1.000000e+00, %358
  %361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.f32 %361, 0
  %363 = extractvalue %dx.types.CBufRet.f32 %361, 1
  %364 = extractvalue %dx.types.CBufRet.f32 %361, 2
  %365 = fmul fast float %359, %362
  %366 = fmul fast float %359, %363
  %367 = fmul fast float %359, %364
  %368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.f32 %368, 0
  %370 = extractvalue %dx.types.CBufRet.f32 %368, 1
  %371 = extractvalue %dx.types.CBufRet.f32 %368, 2
  %372 = fmul fast float %360, %369
  %373 = fmul fast float %360, %370
  %374 = fmul fast float %360, %371
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %377 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %378 = extractvalue %dx.types.CBufRet.f32 %375, 2
  %379 = fadd fast float %372, %376
  %380 = fadd fast float %379, %365
  %381 = fadd fast float %373, %377
  %382 = fadd fast float %381, %366
  %383 = fadd fast float %374, %378
  %384 = fadd fast float %383, %367
  %385 = fmul fast float %380, %355
  %386 = fmul fast float %382, %355
  %387 = fmul fast float %384, %355
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 0
  %390 = extractvalue %dx.types.CBufRet.f32 %388, 1
  %391 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %392 = fsub fast float %389, %25
  %393 = fadd fast float %392, %385
  %394 = fsub fast float %390, %26
  %395 = fadd fast float %394, %386
  %396 = fsub fast float %391, %27
  %397 = fadd fast float %396, %387
  %398 = fmul fast float %28, %28
  %399 = call float @dx.op.dot3.f32(i32 55, float %393, float %395, float %397, float %393, float %395, float %397)  ; Dot3(ax,ay,az,bx,by,bz)
  %400 = fsub fast float %398, %399
  %401 = fmul fast float %298, %398
  %402 = fmul fast float %297, %398
  %403 = fcmp fast olt float %400, %401
  %404 = fcmp fast ogt float %400, %402
  %405 = or i1 %403, %404
  %406 = select i1 %405, float 0.000000e+00, float %400
  %407 = fsub fast float %297, %298
  %408 = fmul fast float %407, %398
  %409 = fsub fast float %406, %401
  %410 = fdiv fast float %409, %408
  %411 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %412 = fmul fast float %411, 2.000000e+00
  %413 = fsub fast float 3.000000e+00, %412
  %414 = fmul fast float %411, %411
  %415 = fmul fast float %414, %413
  %416 = fmul fast float %302, %41
  %417 = fmul fast float %303, %42
  %418 = fmul fast float %304, %43
  %419 = fsub fast float %416, %308
  %420 = fsub fast float %417, %309
  %421 = fsub fast float %418, %310
  %422 = fsub fast float %305, %311
  %423 = fmul fast float %415, %419
  %424 = fmul fast float %415, %420
  %425 = fmul fast float %415, %421
  %426 = fmul fast float %415, %422
  %427 = fadd fast float %423, %308
  %428 = fadd fast float %424, %309
  %429 = fadd fast float %425, %310
  %430 = fadd fast float %426, %311
  %431 = fmul fast float %302, %29
  %432 = fmul fast float %303, %30
  %433 = fmul fast float %304, %31
  %434 = fsub fast float %431, %308
  %435 = fsub fast float %432, %309
  %436 = fsub fast float %433, %310
  %437 = fmul fast float %415, %434
  %438 = fmul fast float %415, %435
  %439 = fmul fast float %415, %436
  %440 = fadd fast float %437, %308
  %441 = fadd fast float %438, %309
  %442 = fadd fast float %439, %310
  %443 = fmul fast float %291, %291
  %444 = fmul fast float %443, %406
  br label %552

; <label>:445                                     ; preds = %288
  %446 = and i32 %313, 256
  %447 = icmp eq i32 %446, 0
  %448 = fsub fast float %355, %48
  br i1 %447, label %509, label %449

; <label>:449                                     ; preds = %445
  %450 = fadd fast float %297, %48
  %451 = fcmp fast olt float %355, %48
  %452 = fcmp fast ogt float %355, %450
  %453 = or i1 %451, %452
  %454 = select i1 %453, float 0.000000e+00, float %448
  %455 = call float @dx.op.unary.f32(i32 83, float %355)  ; DerivCoarseX(value)
  %456 = call float @dx.op.unary.f32(i32 84, float %355)  ; DerivCoarseY(value)
  %457 = fmul fast float %455, %455
  %458 = fmul fast float %456, %456
  %459 = fadd fast float %458, %457
  %460 = call float @dx.op.unary.f32(i32 24, float %459)  ; Sqrt(value)
  %461 = extractvalue %dx.types.CBufRet.f32 %335, 2
  %462 = fmul fast float %461, %460
  %463 = call float @dx.op.unary.f32(i32 7, float %462)  ; Saturate(value)
  %464 = fmul fast float %463, %298
  %465 = fdiv fast float %448, %464
  %466 = call float @dx.op.unary.f32(i32 7, float %465)  ; Saturate(value)
  %467 = fmul fast float %466, 2.000000e+00
  %468 = fsub fast float 3.000000e+00, %467
  %469 = fmul fast float %466, %466
  %470 = fmul fast float %469, %468
  %471 = fsub fast float %355, %450
  %472 = fadd fast float %471, %464
  %473 = fdiv fast float %472, %464
  %474 = call float @dx.op.unary.f32(i32 7, float %473)  ; Saturate(value)
  %475 = fmul fast float %474, 2.000000e+00
  %476 = fsub fast float 3.000000e+00, %475
  %477 = fmul fast float %474, %474
  %478 = fmul fast float %477, %476
  %479 = fsub fast float %470, %478
  %480 = fmul fast float %302, %41
  %481 = fmul fast float %303, %42
  %482 = fmul fast float %304, %43
  %483 = fsub fast float %480, %308
  %484 = fsub fast float %481, %309
  %485 = fsub fast float %482, %310
  %486 = fsub fast float %305, %311
  %487 = fmul fast float %479, %483
  %488 = fmul fast float %479, %484
  %489 = fmul fast float %479, %485
  %490 = fmul fast float %479, %486
  %491 = fadd fast float %487, %308
  %492 = fadd fast float %488, %309
  %493 = fadd fast float %489, %310
  %494 = fadd fast float %490, %311
  %495 = fmul fast float %302, %29
  %496 = fmul fast float %303, %30
  %497 = fmul fast float %304, %31
  %498 = fsub fast float %495, %308
  %499 = fsub fast float %496, %309
  %500 = fsub fast float %497, %310
  %501 = fmul fast float %479, %498
  %502 = fmul fast float %479, %499
  %503 = fmul fast float %479, %500
  %504 = fadd fast float %501, %308
  %505 = fadd fast float %502, %309
  %506 = fadd fast float %503, %310
  %507 = fmul fast float %454, %291
  %508 = call float @dx.op.unary.f32(i32 6, float %507)  ; FAbs(value)
  br label %552

; <label>:509                                     ; preds = %445
  br i1 %316, label %510, label %523

; <label>:510                                     ; preds = %509
  %511 = fdiv fast float 5.000000e+01, %28
  %512 = select i1 %318, float %511, float 1.000000e+00
  %513 = fmul fast float %512, %291
  %514 = fmul fast float %39, 2.000000e+00
  %515 = fmul fast float %40, 2.000000e+00
  %516 = fadd fast float %514, -1.000000e+00
  %517 = fadd fast float %515, -1.000000e+00
  %518 = call float @dx.op.dot2.f32(i32 54, float %516, float %517, float %516, float %517)  ; Dot2(ax,ay,bx,by)
  %519 = fmul fast float %299, %28
  %520 = fmul fast float %519, %518
  %521 = fsub fast float %448, %520
  %522 = fmul fast float %513, %521
  br label %552

; <label>:523                                     ; preds = %509
  br i1 %320, label %544, label %524

; <label>:524                                     ; preds = %523
  %525 = fmul fast float %28, 0x3F947AE140000000
  %526 = select i1 %318, float %525, float 1.000000e+00
  %527 = fdiv fast float 1.000000e+00, %526
  %528 = fmul fast float %526, %292
  %529 = fmul fast float %526, %293
  %530 = fmul fast float %527, %294
  %531 = call float @dx.op.unary.f32(i32 6, float %448)  ; FAbs(value)
  %532 = fcmp fast olt float %531, %528
  br i1 %532, label %533, label %537, !dx.controlflow.hints !63

; <label>:533                                     ; preds = %524
  %534 = fmul fast float %527, %291
  %535 = fmul fast float %534, %531
  %536 = call float @dx.op.unary.f32(i32 6, float %535)  ; FAbs(value)
  br label %552

; <label>:537                                     ; preds = %524
  %538 = fcmp fast ogt float %531, %529
  br i1 %538, label %539, label %552

; <label>:539                                     ; preds = %537
  %540 = fsub fast float %531, %529
  %541 = fmul fast float %530, %540
  %542 = call float @dx.op.unary.f32(i32 6, float %541)  ; FAbs(value)
  %543 = fsub fast float 1.000000e+00, %542
  br label %552

; <label>:544                                     ; preds = %523
  %545 = fdiv fast float 5.000000e+01, %28
  %546 = select i1 %318, float %545, float 1.000000e+00
  %547 = fmul fast float %546, %291
  %548 = call float @dx.op.unary.f32(i32 6, float %267)  ; FAbs(value)
  %549 = select i1 %315, float %548, float 0x47EFFFFFE0000000
  %550 = call float @dx.op.binary.f32(i32 36, float %448, float %549)  ; FMin(a,b)
  %551 = fmul fast float %547, %550
  br label %552

; <label>:552                                     ; preds = %544, %539, %537, %533, %510, %449, %356
  %553 = phi float [ %444, %356 ], [ %508, %449 ], [ %522, %510 ], [ %551, %544 ], [ %536, %533 ], [ %543, %539 ], [ %531, %537 ]
  %554 = phi float [ %440, %356 ], [ %504, %449 ], [ %29, %510 ], [ %29, %544 ], [ %29, %533 ], [ %29, %539 ], [ %29, %537 ]
  %555 = phi float [ %441, %356 ], [ %505, %449 ], [ %30, %510 ], [ %30, %544 ], [ %30, %533 ], [ %30, %539 ], [ %30, %537 ]
  %556 = phi float [ %442, %356 ], [ %506, %449 ], [ %31, %510 ], [ %31, %544 ], [ %31, %533 ], [ %31, %539 ], [ %31, %537 ]
  %557 = phi float [ %427, %356 ], [ %491, %449 ], [ %41, %510 ], [ %41, %544 ], [ %41, %533 ], [ %41, %539 ], [ %41, %537 ]
  %558 = phi float [ %428, %356 ], [ %492, %449 ], [ %42, %510 ], [ %42, %544 ], [ %42, %533 ], [ %42, %539 ], [ %42, %537 ]
  %559 = phi float [ %429, %356 ], [ %493, %449 ], [ %43, %510 ], [ %43, %544 ], [ %43, %533 ], [ %43, %539 ], [ %43, %537 ]
  %560 = phi float [ %430, %356 ], [ %494, %449 ], [ 1.000000e+00, %510 ], [ 1.000000e+00, %544 ], [ 1.000000e+00, %533 ], [ 1.000000e+00, %539 ], [ 1.000000e+00, %537 ]
  %561 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  %562 = fmul fast float %560, %246
  %563 = fmul fast float %562, %561
  br label %564

; <label>:564                                     ; preds = %552, %285
  %565 = phi float [ %557, %552 ], [ %41, %285 ]
  %566 = phi float [ %558, %552 ], [ %42, %285 ]
  %567 = phi float [ %559, %552 ], [ %43, %285 ]
  %568 = phi float [ %563, %552 ], [ %246, %285 ]
  %569 = phi float [ %554, %552 ], [ %29, %285 ]
  %570 = phi float [ %555, %552 ], [ %30, %285 ]
  %571 = phi float [ %556, %552 ], [ %31, %285 ]
  %572 = fmul fast float %569, %32
  %573 = fmul fast float %570, %32
  %574 = fmul fast float %571, %32
  %575 = fmul fast float %569, %38
  %576 = fmul fast float %570, %38
  %577 = fmul fast float %571, %38
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %580 = fptosi float %48 to i32
  %581 = sitofp i32 %580 to float
  %582 = fadd fast float %579, %581
  %583 = fmul fast float %582, 0x3FE3C6EF40000000
  %584 = frem fast float %53, 2.560000e+02
  %585 = frem fast float %54, 2.560000e+02
  %586 = fptoui float %584 to i32
  %587 = fptoui float %585 to i32
  %588 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %586, i32 %587, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = fadd fast float %589, %583
  %591 = call float @dx.op.unary.f32(i32 22, float %590)  ; Frc(value)
  %592 = and i32 %131, 1
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %653, label %594, !dx.controlflow.hints !64

; <label>:594                                     ; preds = %564
  %595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 2
  %597 = extractvalue %dx.types.ResRet.f32 %595, 3
  %598 = add i32 %128, 16
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = add i32 %128, 32
  %604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = and i32 %131, 2
  %609 = icmp eq i32 %608, 0
  %610 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %611 = call float @dx.op.unary.f32(i32 25, float %610)  ; Rsqrt(value)
  %612 = fmul fast float %611, %35
  %613 = fmul fast float %611, %36
  %614 = fmul fast float %611, %37
  %615 = call float @dx.op.dot3.f32(i32 55, float %88, float %89, float %90, float %88, float %89, float %90)  ; Dot3(ax,ay,az,bx,by,bz)
  %616 = call float @dx.op.unary.f32(i32 25, float %615)  ; Rsqrt(value)
  %617 = fmul fast float %616, %88
  %618 = fmul fast float %616, %89
  %619 = fmul fast float %616, %90
  %620 = call float @dx.op.dot3.f32(i32 55, float %617, float %618, float %619, float %612, float %613, float %614)  ; Dot3(ax,ay,az,bx,by,bz)
  %621 = fmul fast float %620, %620
  %622 = fmul fast float %621, %596
  %623 = fadd fast float %622, %597
  %624 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  br i1 %609, label %625, label %635, !dx.controlflow.hints !65

; <label>:625                                     ; preds = %594
  %626 = extractvalue %dx.types.ResRet.f32 %595, 1
  %627 = extractvalue %dx.types.ResRet.f32 %595, 0
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 3
  %630 = fmul fast float %629, %615
  %631 = fsub fast float %627, %630
  %632 = fmul fast float %631, %626
  %633 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %634 = fmul fast float %633, %624
  br label %635

; <label>:635                                     ; preds = %625, %594
  %636 = phi float [ %634, %625 ], [ %624, %594 ]
  %637 = fsub fast float %600, %605
  %638 = fsub fast float %601, %606
  %639 = fsub fast float %602, %607
  %640 = fmul fast float %636, %637
  %641 = fmul fast float %636, %638
  %642 = fmul fast float %636, %639
  %643 = fadd fast float %640, %605
  %644 = fadd fast float %641, %606
  %645 = fadd fast float %642, %607
  %646 = fmul fast float %643, %565
  %647 = fmul fast float %644, %566
  %648 = fmul fast float %645, %567
  %649 = fmul fast float %643, %572
  %650 = fmul fast float %644, %573
  %651 = fmul fast float %645, %574
  %652 = fmul fast float %636, %568
  br label %653

; <label>:653                                     ; preds = %635, %564
  %654 = phi float [ %646, %635 ], [ %565, %564 ]
  %655 = phi float [ %647, %635 ], [ %566, %564 ]
  %656 = phi float [ %648, %635 ], [ %567, %564 ]
  %657 = phi float [ %652, %635 ], [ %568, %564 ]
  %658 = phi float [ %649, %635 ], [ %572, %564 ]
  %659 = phi float [ %650, %635 ], [ %573, %564 ]
  %660 = phi float [ %651, %635 ], [ %574, %564 ]
  %661 = add i32 %24, 104
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = add i32 %663, 0
  %665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %666 = add i32 %24, 24
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %665, %dx.types.Handle %49, float %206, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = extractvalue %dx.types.ResRet.f32 %669, 1
  %672 = extractvalue %dx.types.ResRet.f32 %669, 2
  %673 = extractvalue %dx.types.ResRet.f32 %669, 3
  %674 = and i32 %668, 255
  %675 = uitofp i32 %674 to float
  %676 = lshr i32 %668, 8
  %677 = and i32 %676, 255
  %678 = uitofp i32 %677 to float
  %679 = fmul fast float %673, %675
  %680 = fadd fast float %679, %678
  %681 = fmul fast float %680, 0x3F70101000000000
  %682 = add i32 %24, 56
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %682, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 255
  %686 = uitofp i32 %685 to float
  %687 = fmul fast float %686, 0x3F70101020000000
  %688 = lshr i32 %684, 8
  %689 = and i32 %688, 255
  %690 = uitofp i32 %689 to float
  %691 = fmul fast float %690, 0x3F70101020000000
  %692 = lshr i32 %684, 16
  %693 = and i32 %692, 255
  %694 = uitofp i32 %693 to float
  %695 = fmul fast float %694, 0x3F70101020000000
  %696 = add i32 %24, 108
  %697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.i32 %697, 0
  %699 = add i32 %698, 0
  %700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %701 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %700, %dx.types.Handle %49, float %206, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %702 = extractvalue %dx.types.ResRet.f32 %701, 0
  %703 = extractvalue %dx.types.ResRet.f32 %701, 1
  %704 = extractvalue %dx.types.ResRet.f32 %701, 2
  %705 = add i32 %24, 44
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = shl i32 %707, 4
  %709 = and i32 %708, 32752
  %710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %709)  ; LegacyF16ToF32(value)
  %711 = lshr i32 %707, 7
  %712 = and i32 %711, 32752
  %713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %712)  ; LegacyF16ToF32(value)
  %714 = lshr i32 %707, 22
  %715 = shl nuw nsw i32 %714, 5
  %716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %715)  ; LegacyF16ToF32(value)
  %717 = fmul fast float %710, %702
  %718 = fmul fast float %713, %703
  %719 = fmul fast float %716, %704
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 0
  %722 = fmul fast float %717, %721
  %723 = fmul fast float %718, %721
  %724 = fmul fast float %719, %721
  %725 = add i32 %24, 48
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = lshr i32 %727, 22
  %729 = shl nuw nsw i32 %728, 5
  %730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %729)  ; LegacyF16ToF32(value)
  %731 = fmul fast float %730, %722
  %732 = select i1 %111, float %731, float %722
  %733 = add i32 %24, 40
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 255
  %737 = uitofp i32 %736 to float
  %738 = fmul fast float %737, 0x3F70101020000000
  %739 = lshr i32 %735, 8
  %740 = and i32 %739, 255
  %741 = uitofp i32 %740 to float
  %742 = fmul fast float %741, 0x3F70101020000000
  %743 = lshr i32 %735, 16
  %744 = and i32 %743, 255
  %745 = uitofp i32 %744 to float
  %746 = fmul fast float %745, 0x3F70101020000000
  %747 = fmul fast float %738, %738
  %748 = fmul fast float %742, %742
  %749 = fmul fast float %746, %746
  %750 = add i32 %24, 120
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = add i32 %752, 0
  %754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %754, %dx.types.Handle %50, float %206, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = extractvalue %dx.types.ResRet.f32 %755, 1
  %758 = extractvalue %dx.types.ResRet.f32 %755, 2
  %759 = fmul fast float %747, %756
  %760 = fmul fast float %748, %757
  %761 = fmul fast float %749, %758
  %762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %19, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %763 = extractvalue %dx.types.ResRet.f32 %762, 0
  %764 = extractvalue %dx.types.ResRet.f32 %762, 1
  %765 = extractvalue %dx.types.ResRet.f32 %762, 2
  %766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %767 = extractvalue %dx.types.CBufRet.f32 %766, 1
  %768 = fmul fast float %767, %763
  %769 = fmul fast float %767, %764
  %770 = fmul fast float %767, %765
  %771 = fadd fast float %681, 0xBFB99999A0000000
  %772 = call float @dx.op.unary.f32(i32 7, float %771)  ; Saturate(value)
  %773 = fmul fast float %772, 0x3FF1C71C80000000
  %774 = fsub fast float 1.000000e+00, %773
  %775 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  %776 = fmul fast float %670, %654
  %777 = fmul fast float %687, %687
  %778 = fmul fast float %777, %776
  %779 = fmul fast float %778, %775
  %780 = fmul fast float %671, %655
  %781 = fmul fast float %691, %691
  %782 = fmul fast float %781, %780
  %783 = fmul fast float %782, %775
  %784 = fmul fast float %672, %656
  %785 = fmul fast float %695, %695
  %786 = fmul fast float %785, %784
  %787 = fmul fast float %786, %775
  %788 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %789 = call float @dx.op.unary.f32(i32 7, float %783)  ; Saturate(value)
  %790 = call float @dx.op.unary.f32(i32 7, float %787)  ; Saturate(value)
  %791 = fmul fast float %732, %658
  %792 = fmul fast float %723, %659
  %793 = fmul fast float %724, %660
  %794 = call float @dx.op.dot3.f32(i32 55, float %791, float %792, float %793, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %795 = select i1 %111, float 0.000000e+00, float %791
  %796 = select i1 %111, float %794, float %792
  %797 = select i1 %111, float 0.000000e+00, float %793
  %798 = fmul fast float %575, %732
  %799 = fmul fast float %576, %723
  %800 = fmul fast float %577, %724
  %801 = call float @dx.op.dot3.f32(i32 55, float %788, float %789, float %790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %802 = add i32 %24, 32
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = and i32 %804, 255
  %806 = uitofp i32 %805 to float
  %807 = lshr i32 %804, 8
  %808 = and i32 %807, 255
  %809 = uitofp i32 %808 to float
  %810 = fmul fast float %809, %801
  %811 = fadd fast float %810, %806
  %812 = fmul fast float %811, 0x3F70101020000000
  %813 = call float @dx.op.unary.f32(i32 7, float %812)  ; Saturate(value)
  %814 = and i32 %131, 8192
  %815 = icmp eq i32 %814, 0
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 0
  br i1 %815, label %824, label %818, !dx.controlflow.hints !66

; <label>:818                                     ; preds = %653
  %819 = add i32 %128, 176
  %820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = fcmp fast oge float %821, 0.000000e+00
  %823 = select i1 %822, float %821, float %817
  br label %824

; <label>:824                                     ; preds = %818, %653
  %825 = phi float [ %823, %818 ], [ %817, %653 ]
  %826 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %10, i32 0, i32 %249, i32 %250, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = lshr i32 %827, 18
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F4C00EBA0000000
  %831 = call float @dx.op.unary.f32(i32 21, float %830)  ; Exp(value)
  %832 = fadd fast float %831, -1.000000e+00
  %833 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %10, i32 0)  ; GetDimensions(handle,mipLevel)
  %834 = extractvalue %dx.types.Dimensions %833, 0
  %835 = sitofp i32 %834 to float
  %836 = extractvalue %dx.types.Dimensions %833, 1
  %837 = sitofp i32 %836 to float
  %838 = fcmp fast oge float %247, %835
  %839 = fcmp fast oge float %248, %837
  %840 = or i1 %838, %839
  %841 = select i1 %840, float 0x4197782600000000, float %832
  %842 = icmp eq i32 %127, 3
  %843 = fcmp fast ogt float %48, %841
  %844 = and i1 %273, %843
  %845 = or i1 %842, %844
  %846 = icmp eq i32 %127, 2
  %847 = fcmp fast ole float %48, %841
  %848 = and i1 %846, %847
  %849 = or i1 %848, %845
  %850 = fmul fast float %798, %768
  %851 = fmul fast float %799, %769
  %852 = fmul fast float %800, %770
  %853 = fadd fast float %850, %795
  %854 = fadd fast float %796, %851
  %855 = fadd fast float %852, %797
  %856 = fmul fast float %853, %657
  %857 = fmul fast float %854, %657
  %858 = fmul fast float %855, %657
  %859 = fmul fast float %768, %657
  %860 = fmul fast float %769, %657
  %861 = fmul fast float %770, %657
  %862 = fadd fast float %759, -1.000000e+00
  %863 = fadd fast float %760, -1.000000e+00
  %864 = fadd fast float %761, -1.000000e+00
  %865 = fmul fast float %862, %657
  %866 = fmul fast float %863, %657
  %867 = fmul fast float %864, %657
  %868 = fadd fast float %865, 1.000000e+00
  %869 = fadd fast float %866, 1.000000e+00
  %870 = fadd fast float %867, 1.000000e+00
  %871 = call float @dx.op.dot3.f32(i32 55, float %868, float %869, float %870, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %872 = fsub fast float 1.000000e+00, %871
  %873 = fmul fast float %825, %813
  %874 = fsub fast float 1.000000e+00, %813
  %875 = call float @dx.op.unary.f32(i32 7, float %874)  ; Saturate(value)
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 3
  %878 = fmul fast float %877, %875
  %879 = fadd fast float %878, %873
  %880 = and i32 %131, 1048576
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %973, label %882, !dx.controlflow.hints !67

; <label>:882                                     ; preds = %824
  %883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %884 = extractvalue %dx.types.CBufRet.f32 %883, 2
  %885 = extractvalue %dx.types.CBufRet.f32 %883, 3
  %886 = fmul fast float %884, %53
  %887 = fmul fast float %885, %54
  %888 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %889 = call float @dx.op.unary.f32(i32 7, float %887)  ; Saturate(value)
  %890 = select i1 %849, i32 2, i32 0
  %891 = or i32 %890, 1
  %892 = uitofp i32 %891 to float
  %893 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %888, float %889, float %892, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %894 = extractvalue %dx.types.ResRet.f32 %893, 0
  %895 = extractvalue %dx.types.ResRet.f32 %893, 1
  %896 = extractvalue %dx.types.ResRet.f32 %893, 2
  %897 = extractvalue %dx.types.ResRet.f32 %893, 3
  %898 = add nuw nsw i32 %890, 2
  %899 = uitofp i32 %898 to float
  %900 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %888, float %889, float %899, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %901 = extractvalue %dx.types.ResRet.f32 %900, 0
  %902 = extractvalue %dx.types.ResRet.f32 %900, 1
  %903 = extractvalue %dx.types.ResRet.f32 %900, 2
  %904 = extractvalue %dx.types.ResRet.f32 %900, 3
  %905 = call float @dx.op.binary.f32(i32 35, float %895, float %896)  ; FMax(a,b)
  %906 = call float @dx.op.binary.f32(i32 35, float %894, float %905)  ; FMax(a,b)
  %907 = call float @dx.op.binary.f32(i32 35, float %906, float %897)  ; FMax(a,b)
  %908 = call float @dx.op.binary.f32(i32 36, float %902, float %903)  ; FMin(a,b)
  %909 = call float @dx.op.binary.f32(i32 36, float %901, float %908)  ; FMin(a,b)
  %910 = call float @dx.op.binary.f32(i32 36, float %909, float %904)  ; FMin(a,b)
  %911 = fmul fast float %907, 2.550000e+02
  %912 = fadd fast float %911, 0x3F70101020000000
  %913 = fptoui float %912 to i32
  %914 = fmul fast float %910, 2.550000e+02
  %915 = fadd fast float %914, 0x3F70101020000000
  %916 = fptoui float %915 to i32
  %917 = icmp ult i32 %913, %916
  br i1 %917, label %918, label %966

; <label>:918                                     ; preds = %882
  %919 = fcmp fast ogt float %47, 9.843750e-01
  %920 = fadd fast float %48, -4.000000e+00
  %921 = select i1 %919, float -4.000000e+00, float %920
  %922 = call float @dx.op.binary.f32(i32 35, float %921, float 0.000000e+00)  ; FMax(a,b)
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = fadd fast float %924, %922
  %926 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %927 = fmul fast float %925, %926
  %928 = call float @dx.op.unary.f32(i32 23, float %927)  ; Log(value)
  %929 = extractvalue %dx.types.CBufRet.f32 %923, 3
  %930 = fmul fast float %929, %928
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 2
  %933 = fmul fast float %930, %932
  %934 = call float @dx.op.unary.f32(i32 7, float %933)  ; Saturate(value)
  %935 = uitofp i32 %913 to float
  %936 = uitofp i32 %916 to float
  %937 = fadd fast float %935, 5.000000e-01
  %938 = fadd fast float %936, 5.000000e-01
  %939 = fmul fast float %932, %937
  %940 = fmul fast float %932, %938
  %941 = fadd fast float %939, 0x3F0FFB4800000000
  %942 = fadd fast float %940, 0xBF0FFB4800000000
  %943 = call float @dx.op.binary.f32(i32 35, float %934, float %941)  ; FMax(a,b)
  %944 = call float @dx.op.binary.f32(i32 36, float %943, float %942)  ; FMin(a,b)
  %945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %946 = extractvalue %dx.types.CBufRet.f32 %945, 1
  %947 = extractvalue %dx.types.CBufRet.f32 %945, 2
  %948 = extractvalue %dx.types.CBufRet.f32 %945, 0
  %949 = select i1 %849, float %948, float 0.000000e+00
  %950 = fmul fast float %946, %944
  %951 = fadd fast float %949, %950
  %952 = fadd fast float %949, %947
  %953 = fsub fast float %946, %947
  %954 = fadd fast float %953, %949
  %955 = call float @dx.op.binary.f32(i32 35, float %951, float %952)  ; FMax(a,b)
  %956 = call float @dx.op.binary.f32(i32 36, float %955, float %954)  ; FMin(a,b)
  %957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %888, float %889, float %956, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = extractvalue %dx.types.ResRet.f32 %957, 1
  %960 = extractvalue %dx.types.ResRet.f32 %957, 2
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %963 = fmul fast float %962, %958
  %964 = fmul fast float %962, %959
  %965 = fmul fast float %962, %960
  br label %966

; <label>:966                                     ; preds = %918, %882
  %967 = phi float [ %963, %918 ], [ 1.000000e+00, %882 ]
  %968 = phi float [ %964, %918 ], [ 1.000000e+00, %882 ]
  %969 = phi float [ %965, %918 ], [ 1.000000e+00, %882 ]
  %970 = fmul fast float %967, %856
  %971 = fmul fast float %968, %857
  %972 = fmul fast float %969, %858
  br label %973

; <label>:973                                     ; preds = %966, %824
  %974 = phi float [ %970, %966 ], [ %856, %824 ]
  %975 = phi float [ %971, %966 ], [ %857, %824 ]
  %976 = phi float [ %972, %966 ], [ %858, %824 ]
  %977 = and i32 %131, 2097152
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %983, label %979, !dx.controlflow.hints !68

; <label>:979                                     ; preds = %973
  %980 = add i32 %128, 192
  %981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.f32 %981, 0
  br label %986

; <label>:983                                     ; preds = %973
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 3
  br label %986

; <label>:986                                     ; preds = %983, %979
  %987 = phi float [ %982, %979 ], [ %985, %983 ]
  %988 = fmul fast float %859, %788
  %989 = fmul fast float %860, %789
  %990 = fmul fast float %861, %790
  br i1 %844, label %991, label %1100

; <label>:991                                     ; preds = %986
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 3
  %995 = fmul fast float %993, %53
  %996 = fmul fast float %994, %54
  %997 = call float @dx.op.unary.f32(i32 7, float %995)  ; Saturate(value)
  %998 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  %999 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %997, float %998, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1000 = extractvalue %dx.types.ResRet.f32 %999, 0
  %1001 = extractvalue %dx.types.ResRet.f32 %999, 1
  %1002 = extractvalue %dx.types.ResRet.f32 %999, 2
  %1003 = extractvalue %dx.types.ResRet.f32 %999, 3
  %1004 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %997, float %998, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1005 = extractvalue %dx.types.ResRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.ResRet.f32 %1004, 1
  %1007 = extractvalue %dx.types.ResRet.f32 %1004, 2
  %1008 = extractvalue %dx.types.ResRet.f32 %1004, 3
  %1009 = call float @dx.op.binary.f32(i32 35, float %1001, float %1002)  ; FMax(a,b)
  %1010 = call float @dx.op.binary.f32(i32 35, float %1000, float %1009)  ; FMax(a,b)
  %1011 = call float @dx.op.binary.f32(i32 35, float %1010, float %1003)  ; FMax(a,b)
  %1012 = call float @dx.op.binary.f32(i32 36, float %1006, float %1007)  ; FMin(a,b)
  %1013 = call float @dx.op.binary.f32(i32 36, float %1005, float %1012)  ; FMin(a,b)
  %1014 = call float @dx.op.binary.f32(i32 36, float %1013, float %1008)  ; FMin(a,b)
  %1015 = fmul fast float %1011, 2.550000e+02
  %1016 = fadd fast float %1015, 0x3F70101020000000
  %1017 = fptoui float %1016 to i32
  %1018 = fmul fast float %1014, 2.550000e+02
  %1019 = fadd fast float %1018, 0x3F70101020000000
  %1020 = fptoui float %1019 to i32
  %1021 = icmp ult i32 %1017, %1020
  br i1 %1021, label %1022, label %1073

; <label>:1022                                    ; preds = %991
  %1023 = fcmp fast ogt float %47, 9.843750e-01
  %1024 = fadd fast float %48, -4.000000e+00
  %1025 = select i1 %1023, float -4.000000e+00, float %1024
  %1026 = call float @dx.op.binary.f32(i32 35, float %1025, float 0.000000e+00)  ; FMax(a,b)
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 0
  %1029 = fadd fast float %1028, %1026
  %1030 = extractvalue %dx.types.CBufRet.f32 %1027, 2
  %1031 = fmul fast float %1029, %1030
  %1032 = call float @dx.op.unary.f32(i32 23, float %1031)  ; Log(value)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1027, 3
  %1034 = fmul fast float %1033, %1032
  %1035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1036 = extractvalue %dx.types.CBufRet.f32 %1035, 2
  %1037 = fmul fast float %1034, %1036
  %1038 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1039 = uitofp i32 %1017 to float
  %1040 = uitofp i32 %1020 to float
  %1041 = fadd fast float %1039, 5.000000e-01
  %1042 = fadd fast float %1040, 5.000000e-01
  %1043 = fmul fast float %1036, %1041
  %1044 = fmul fast float %1036, %1042
  %1045 = fadd fast float %1043, 0x3F0FFB4800000000
  %1046 = fadd fast float %1044, 0xBF0FFB4800000000
  %1047 = call float @dx.op.binary.f32(i32 35, float %1038, float %1045)  ; FMax(a,b)
  %1048 = call float @dx.op.binary.f32(i32 36, float %1047, float %1046)  ; FMin(a,b)
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1051 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1052 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1053 = fmul fast float %1050, %1048
  %1054 = fadd fast float %1052, %1053
  %1055 = fadd fast float %1052, %1051
  %1056 = fsub fast float %1050, %1051
  %1057 = fadd fast float %1056, %1052
  %1058 = call float @dx.op.binary.f32(i32 35, float %1054, float %1055)  ; FMax(a,b)
  %1059 = call float @dx.op.binary.f32(i32 36, float %1058, float %1057)  ; FMin(a,b)
  %1060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %997, float %998, float %1059, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %997, float %998, float %1059, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.ResRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.ResRet.f32 %1064, 2
  %1068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1068, 1
  %1070 = fmul fast float %1069, %1065
  %1071 = fmul fast float %1069, %1066
  %1072 = fmul fast float %1069, %1067
  br label %1073

; <label>:1073                                    ; preds = %1022, %991
  %1074 = phi float [ %1061, %1022 ], [ 1.000000e+00, %991 ]
  %1075 = phi float [ %1062, %1022 ], [ 1.000000e+00, %991 ]
  %1076 = phi float [ %1063, %1022 ], [ 1.000000e+00, %991 ]
  %1077 = phi float [ %1070, %1022 ], [ 0.000000e+00, %991 ]
  %1078 = phi float [ %1071, %1022 ], [ 0.000000e+00, %991 ]
  %1079 = phi float [ %1072, %1022 ], [ 0.000000e+00, %991 ]
  %1080 = fmul fast float %1077, %872
  %1081 = fmul fast float %1078, %872
  %1082 = fmul fast float %1079, %872
  %1083 = call float @dx.op.dot3.f32(i32 55, float %1074, float %1075, float %1076, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1084 = call float @dx.op.dot3.f32(i32 55, float %1080, float %1081, float %1082, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1085 = select i1 %111, float %1083, float %1074
  %1086 = select i1 %111, float %1083, float %1075
  %1087 = select i1 %111, float 1.000000e+00, float %1076
  %1088 = select i1 %111, float %1084, float %1080
  %1089 = select i1 %111, float 0.000000e+00, float %1081
  %1090 = select i1 %111, float 0.000000e+00, float %1082
  %1091 = fmul fast float %1085, %988
  %1092 = fmul fast float %1086, %989
  %1093 = fmul fast float %1087, %990
  %1094 = fadd fast float %1091, %1088
  %1095 = fadd fast float %1092, %1089
  %1096 = fadd fast float %1090, %1093
  %1097 = fmul fast float %1085, %974
  %1098 = fmul fast float %1086, %975
  %1099 = fmul fast float %1087, %976
  br label %1100

; <label>:1100                                    ; preds = %1073, %986
  %1101 = phi float [ %841, %1073 ], [ %48, %986 ]
  %1102 = phi float [ %1094, %1073 ], [ %988, %986 ]
  %1103 = phi float [ %1095, %1073 ], [ %989, %986 ]
  %1104 = phi float [ %1096, %1073 ], [ %990, %986 ]
  %1105 = phi float [ %1097, %1073 ], [ %974, %986 ]
  %1106 = phi float [ %1098, %1073 ], [ %975, %986 ]
  %1107 = phi float [ %1099, %1073 ], [ %976, %986 ]
  %1108 = phi float [ %1074, %1073 ], [ 1.000000e+00, %986 ]
  br i1 %849, label %1410, label %1109

; <label>:1109                                    ; preds = %1100
  %1110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.ResRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.ResRet.f32 %1110, 2
  %1114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %19, float %33, float %34, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = fmul fast float %1111, %872
  %1119 = fmul fast float %1112, %872
  %1120 = fmul fast float %1113, %872
  %1121 = fmul fast float %1115, %1108
  %1122 = call float @dx.op.dot3.f32(i32 55, float %1115, float %1116, float %1117, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1123 = call float @dx.op.dot3.f32(i32 55, float %1118, float %1119, float %1120, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1124 = select i1 %111, float %1122, float %1115
  %1125 = select i1 %111, float %1122, float %1116
  %1126 = select i1 %111, float 1.000000e+00, float %1117
  %1127 = select i1 %111, float %1123, float %1118
  %1128 = select i1 %111, float 0.000000e+00, float %1119
  %1129 = select i1 %111, float 0.000000e+00, float %1120
  %1130 = fmul fast float %1124, %1102
  %1131 = fmul fast float %1125, %1103
  %1132 = fmul fast float %1126, %1104
  %1133 = fadd fast float %1130, %1127
  %1134 = fadd fast float %1131, %1128
  %1135 = fadd fast float %1132, %1129
  %1136 = fmul fast float %1124, %1105
  %1137 = fmul fast float %1125, %1106
  %1138 = fmul fast float %1126, %1107
  %1139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.i32 %1139, 0
  %1141 = icmp eq i32 %1140, 0
  br i1 %1141, label %1410, label %1142, !dx.controlflow.hints !69

; <label>:1142                                    ; preds = %1109
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 2
  %1145 = extractvalue %dx.types.CBufRet.f32 %1143, 3
  %1146 = fmul fast float %1144, %53
  %1147 = fmul fast float %1145, %54
  %1148 = fmul fast float %1146, 2.000000e+00
  %1149 = fmul fast float %1147, 2.000000e+00
  %1150 = fsub fast float 1.000000e+00, %1148
  %1151 = fsub fast float 1.000000e+00, %1149
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.CBufRet.f32 %1152, 1
  %1155 = extractvalue %dx.types.CBufRet.f32 %1152, 2
  %1156 = fmul fast float %1150, %1153
  %1157 = fmul fast float %1150, %1154
  %1158 = fmul fast float %1150, %1155
  %1159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1160 = extractvalue %dx.types.CBufRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.CBufRet.f32 %1159, 1
  %1162 = extractvalue %dx.types.CBufRet.f32 %1159, 2
  %1163 = fmul fast float %1151, %1160
  %1164 = fmul fast float %1151, %1161
  %1165 = fmul fast float %1151, %1162
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.CBufRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.CBufRet.f32 %1166, 2
  %1170 = fadd fast float %1163, %1167
  %1171 = fadd fast float %1170, %1156
  %1172 = fadd fast float %1164, %1168
  %1173 = fadd fast float %1172, %1157
  %1174 = fadd fast float %1165, %1169
  %1175 = fadd fast float %1174, %1158
  %1176 = fmul fast float %1171, %1101
  %1177 = fmul fast float %1173, %1101
  %1178 = fmul fast float %1175, %1101
  %1179 = fmul fast float %1176, %1176
  %1180 = fmul fast float %1177, %1177
  %1181 = fadd fast float %1179, %1180
  %1182 = fmul fast float %1178, %1178
  %1183 = fadd fast float %1181, %1182
  %1184 = call float @dx.op.unary.f32(i32 24, float %1183)  ; Sqrt(value)
  %1185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1186 = extractvalue %dx.types.CBufRet.f32 %1185, 0
  %1187 = fsub fast float %1184, %1186
  %1188 = extractvalue %dx.types.CBufRet.f32 %1185, 2
  %1189 = fmul fast float %1187, %1188
  %1190 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  %1191 = fadd fast float %1190, -5.000000e-01
  %1192 = fmul fast float %1191, 2.000000e+00
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 2
  %1195 = call float @dx.op.binary.f32(i32 36, float %1194, float %1192)  ; FMin(a,b)
  %1196 = fsub fast float -0.000000e+00, %1194
  %1197 = fcmp fast ogt float %1195, %1196
  br i1 %1197, label %1198, label %1410, !dx.controlflow.hints !70

; <label>:1198                                    ; preds = %1142
  %1199 = fmul fast float %1195, 5.000000e-01
  %1200 = fadd fast float %1199, 5.000000e-01
  %1201 = call float @dx.op.unary.f32(i32 22, float %1200)  ; Frc(value)
  %1202 = call float @dx.op.unary.f32(i32 27, float %1201)  ; Round_ni(value)
  %1203 = call float @dx.op.unary.f32(i32 22, float %1201)  ; Frc(value)
  %1204 = fmul fast float %1203, 2.000000e+00
  %1205 = fadd fast float %1204, -1.000000e+00
  %1206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %19, float %1146, float %1147, float %1202, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.ResRet.f32 %1206, 1
  %1209 = extractvalue %dx.types.ResRet.f32 %1206, 2
  %1210 = extractvalue %dx.types.ResRet.f32 %1206, 3
  %1211 = fadd fast float %1207, -5.000000e-01
  %1212 = fadd fast float %1209, -5.000000e-01
  %1213 = fmul fast float %1211, 0xBFD5555560000000
  %1214 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1212, float %1213)  ; FMad(a,b,c)
  %1215 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1208, float 0.000000e+00)  ; FMad(a,b,c)
  %1216 = fadd fast float %1215, %1210
  %1217 = fmul fast float %1211, -7.500000e-01
  %1218 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1212, float %1217)  ; FMad(a,b,c)
  %1219 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1208, float 0.000000e+00)  ; FMad(a,b,c)
  %1220 = fadd fast float %1219, %1210
  %1221 = call float @dx.op.binary.f32(i32 35, float %1214, float -1.000000e+00)  ; FMax(a,b)
  %1222 = call float @dx.op.binary.f32(i32 35, float %1216, float -1.000000e+00)  ; FMax(a,b)
  %1223 = call float @dx.op.binary.f32(i32 35, float %1218, float -1.000000e+00)  ; FMax(a,b)
  %1224 = call float @dx.op.binary.f32(i32 35, float %1220, float -1.000000e+00)  ; FMax(a,b)
  %1225 = call float @dx.op.binary.f32(i32 36, float %1221, float 1.000000e+00)  ; FMin(a,b)
  %1226 = call float @dx.op.binary.f32(i32 36, float %1222, float 1.000000e+00)  ; FMin(a,b)
  %1227 = call float @dx.op.binary.f32(i32 36, float %1223, float 1.000000e+00)  ; FMin(a,b)
  %1228 = call float @dx.op.binary.f32(i32 36, float %1224, float 1.000000e+00)  ; FMin(a,b)
  %1229 = fcmp fast olt float %1225, 0x3FEFFF8020000000
  br i1 %1229, label %1230, label %1345, !dx.controlflow.hints !71

; <label>:1230                                    ; preds = %1198
  %1231 = extractvalue %dx.types.CBufRet.f32 %1193, 3
  %1232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1233 = extractvalue %dx.types.CBufRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.CBufRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.CBufRet.f32 %1232, 2
  %1236 = extractvalue %dx.types.CBufRet.f32 %1232, 3
  %1237 = fsub fast float %1233, %1225
  %1238 = fsub fast float %1234, %1226
  %1239 = fsub fast float %1235, %1227
  %1240 = fsub fast float %1236, %1228
  %1241 = fmul fast float %1237, %1231
  %1242 = fmul fast float %1238, %1231
  %1243 = fmul fast float %1239, %1231
  %1244 = fmul fast float %1240, %1231
  %1245 = fadd fast float %1241, %1225
  %1246 = fadd fast float %1242, %1226
  %1247 = fsub fast float -0.000000e+00, %1246
  %1248 = fadd fast float %1243, %1227
  %1249 = fadd fast float %1244, %1228
  %1250 = fmul fast float %1245, %1245
  %1251 = fsub fast float %1246, %1250
  %1252 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1251)  ; FMax(a,b)
  %1253 = fdiv fast float 1.000000e+00, %1252
  %1254 = fmul fast float %1246, %1245
  %1255 = fsub fast float %1248, %1254
  %1256 = fsub fast float %1205, %1245
  %1257 = fmul fast float %1205, %1205
  %1258 = fsub fast float %1257, %1246
  %1259 = fmul fast float %1256, %1253
  %1260 = fmul fast float %1259, %1255
  %1261 = fsub fast float %1258, %1260
  %1262 = fmul fast float %1246, %1246
  %1263 = fsub fast float %1249, %1262
  %1264 = fmul fast float %1255, %1255
  %1265 = fmul fast float %1264, %1253
  %1266 = fsub fast float %1263, %1265
  %1267 = fdiv fast float %1261, %1266
  %1268 = fmul fast float %1255, %1267
  %1269 = fsub fast float %1256, %1268
  %1270 = fmul fast float %1269, %1253
  %1271 = fmul fast float %1270, %1245
  %1272 = fsub fast float 1.000000e+00, %1271
  %1273 = fmul fast float %1246, %1267
  %1274 = fsub fast float %1272, %1273
  %1275 = fmul fast float %1270, %1270
  %1276 = fmul fast float %1267, 4.000000e+00
  %1277 = fmul fast float %1276, %1274
  %1278 = fsub fast float %1275, %1277
  %1279 = call float @dx.op.unary.f32(i32 24, float %1278)  ; Sqrt(value)
  %1280 = fcmp fast oge float %1270, 0.000000e+00
  %1281 = fsub fast float -0.000000e+00, %1279
  %1282 = select i1 %1280, float %1281, float %1279
  %1283 = fsub fast float %1282, %1270
  %1284 = fdiv fast float %1283, %1267
  %1285 = fdiv fast float %1274, %1283
  %1286 = fmul fast float %1284, 5.000000e-01
  %1287 = fmul fast float %1285, 2.000000e+00
  %1288 = select i1 %1280, float %1286, float %1287
  %1289 = select i1 %1280, float %1287, float %1286
  %1290 = call float @dx.op.binary.f32(i32 35, float %1288, float %1289)  ; FMax(a,b)
  %1291 = call float @dx.op.binary.f32(i32 36, float %1288, float %1289)  ; FMin(a,b)
  %1292 = fcmp fast ogt float %1205, %1291
  br i1 %1292, label %1293, label %1303

; <label>:1293                                    ; preds = %1230
  %1294 = fsub fast float %1205, %1291
  %1295 = fsub fast float %1290, %1291
  %1296 = fmul fast float %1294, %1295
  %1297 = fmul fast float %1290, %1205
  %1298 = fadd fast float %1290, %1205
  %1299 = fmul fast float %1298, %1245
  %1300 = fadd fast float %1297, %1246
  %1301 = fsub fast float %1300, %1299
  %1302 = fdiv fast float %1301, %1296
  br label %1303

; <label>:1303                                    ; preds = %1293, %1230
  %1304 = phi float [ %1302, %1293 ], [ 0.000000e+00, %1230 ]
  %1305 = fcmp fast ogt float %1205, %1290
  %1306 = fsub fast float %1205, %1290
  br i1 %1305, label %1307, label %1317

; <label>:1307                                    ; preds = %1303
  %1308 = fsub fast float %1290, %1291
  %1309 = fmul fast float %1308, %1306
  %1310 = fmul fast float %1291, %1205
  %1311 = fadd fast float %1291, %1205
  %1312 = fmul fast float %1311, %1245
  %1313 = fsub fast float %1247, %1310
  %1314 = fadd fast float %1313, %1312
  %1315 = fdiv fast float %1314, %1309
  %1316 = fadd fast float %1315, %1304
  br label %1317

; <label>:1317                                    ; preds = %1307, %1303
  %1318 = phi float [ %1316, %1307 ], [ %1304, %1303 ]
  %1319 = fsub fast float %1205, %1291
  %1320 = fmul fast float %1319, %1306
  %1321 = fmul fast float %1291, %1290
  %1322 = fadd fast float %1291, %1290
  %1323 = fmul fast float %1322, %1245
  %1324 = fadd fast float %1321, %1246
  %1325 = fsub fast float %1324, %1323
  %1326 = fdiv fast float %1325, %1320
  %1327 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1328 = fcmp fast oeq float %987, 0.000000e+00
  %1329 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  %1330 = fcmp fast oeq float %1329, 0.000000e+00
  %1331 = or i1 %1328, %1330
  %1332 = fmul fast float %1329, 2.000000e+00
  %1333 = fadd fast float %1194, %1195
  %1334 = fdiv fast float %1333, %1332
  %1335 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1336 = fmul fast float %1335, 2.000000e+00
  %1337 = fsub fast float 3.000000e+00, %1336
  %1338 = fmul fast float %1335, %1335
  %1339 = fmul fast float %1338, %1337
  %1340 = select i1 %1331, float 1.000000e+00, float %1339
  %1341 = fmul fast float %1326, %987
  %1342 = fadd fast float %1327, %1341
  %1343 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1344 = fmul fast float %1340, %1343
  br label %1345

; <label>:1345                                    ; preds = %1317, %1198
  %1346 = phi float [ %1344, %1317 ], [ 0.000000e+00, %1198 ]
  %1347 = fsub fast float 1.000000e+00, %1346
  %1348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %19, float %1146, float %1147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1349 = extractvalue %dx.types.ResRet.f32 %1348, 0
  %1350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1351 = extractvalue %dx.types.CBufRet.i32 %1350, 2
  %1352 = icmp eq i32 %1351, 0
  br i1 %1352, label %1358, label %1353

; <label>:1353                                    ; preds = %1345
  %1354 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  %1355 = fadd fast float %1349, -1.000000e+00
  %1356 = fmul fast float %1354, %1355
  %1357 = fadd fast float %1356, 1.000000e+00
  br label %1358

; <label>:1358                                    ; preds = %1353, %1345
  %1359 = phi float [ %1357, %1353 ], [ %1347, %1345 ]
  %1360 = call float @dx.op.binary.f32(i32 35, float %1349, float %1359)  ; FMax(a,b)
  %1361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.i32 %1361, 2
  %1363 = and i32 %1362, 1
  %1364 = icmp eq i32 %1363, 0
  %1365 = fcmp fast une float %1360, 1.000000e+00
  %1366 = and i1 %1365, %1364
  br i1 %1366, label %1367, label %1386

; <label>:1367                                    ; preds = %1358
  %1368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %19, float %1146, float %1147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = extractvalue %dx.types.ResRet.f32 %1368, 1
  %1371 = extractvalue %dx.types.ResRet.f32 %1368, 2
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 1
  %1374 = fmul fast float %1373, %1369
  %1375 = fmul fast float %1373, %1370
  %1376 = fmul fast float %1373, %1371
  %1377 = fcmp fast ogt float %1349, 0x3FEFFF2E40000000
  %1378 = fsub fast float 1.000000e+00, %1360
  %1379 = fsub fast float 1.000000e+00, %1349
  %1380 = fdiv fast float %1378, %1379
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = select i1 %1377, float 0.000000e+00, float %1381
  %1383 = fmul fast float %1374, %1382
  %1384 = fmul fast float %1375, %1382
  %1385 = fmul fast float %1376, %1382
  br label %1386

; <label>:1386                                    ; preds = %1367, %1358
  %1387 = phi float [ 0.000000e+00, %1358 ], [ %1383, %1367 ]
  %1388 = phi float [ 0.000000e+00, %1358 ], [ %1384, %1367 ]
  %1389 = phi float [ 0.000000e+00, %1358 ], [ %1385, %1367 ]
  %1390 = fmul fast float %1387, %872
  %1391 = fmul fast float %1388, %872
  %1392 = fmul fast float %1389, %872
  %1393 = fmul fast float %1360, %1121
  %1394 = call float @dx.op.dot3.f32(i32 55, float %1360, float %1360, float %1360, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1395 = call float @dx.op.dot3.f32(i32 55, float %1390, float %1391, float %1392, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1396 = select i1 %111, float %1394, float %1360
  %1397 = select i1 %111, float 1.000000e+00, float %1360
  %1398 = select i1 %111, float %1395, float %1390
  %1399 = select i1 %111, float 0.000000e+00, float %1391
  %1400 = select i1 %111, float 0.000000e+00, float %1392
  %1401 = fmul fast float %1396, %1133
  %1402 = fmul fast float %1396, %1134
  %1403 = fmul fast float %1397, %1135
  %1404 = fadd fast float %1401, %1398
  %1405 = fadd fast float %1402, %1399
  %1406 = fadd fast float %1400, %1403
  %1407 = fmul fast float %1396, %1136
  %1408 = fmul fast float %1396, %1137
  %1409 = fmul fast float %1397, %1138
  br label %1410

; <label>:1410                                    ; preds = %1386, %1142, %1109, %1100
  %1411 = phi float [ %1102, %1100 ], [ %1133, %1109 ], [ %1404, %1386 ], [ %1133, %1142 ]
  %1412 = phi float [ %1103, %1100 ], [ %1134, %1109 ], [ %1405, %1386 ], [ %1134, %1142 ]
  %1413 = phi float [ %1104, %1100 ], [ %1135, %1109 ], [ %1406, %1386 ], [ %1135, %1142 ]
  %1414 = phi float [ %1105, %1100 ], [ %1136, %1109 ], [ %1407, %1386 ], [ %1136, %1142 ]
  %1415 = phi float [ %1106, %1100 ], [ %1137, %1109 ], [ %1408, %1386 ], [ %1137, %1142 ]
  %1416 = phi float [ %1107, %1100 ], [ %1138, %1109 ], [ %1409, %1386 ], [ %1138, %1142 ]
  %1417 = phi float [ %1108, %1100 ], [ %1121, %1109 ], [ %1393, %1386 ], [ %1121, %1142 ]
  %1418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.f32 %1418, 2
  %1420 = extractvalue %dx.types.CBufRet.f32 %1418, 3
  %1421 = fmul fast float %1419, %53
  %1422 = fmul fast float %1420, %54
  %1423 = call float @dx.op.unary.f32(i32 7, float %1421)  ; Saturate(value)
  %1424 = call float @dx.op.unary.f32(i32 7, float %1422)  ; Saturate(value)
  %1425 = select i1 %849, i32 2, i32 0
  %1426 = or i32 %1425, 1
  %1427 = uitofp i32 %1426 to float
  %1428 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1423, float %1424, float %1427, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.ResRet.f32 %1428, 1
  %1431 = extractvalue %dx.types.ResRet.f32 %1428, 2
  %1432 = extractvalue %dx.types.ResRet.f32 %1428, 3
  %1433 = add nuw nsw i32 %1425, 2
  %1434 = uitofp i32 %1433 to float
  %1435 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %19, float %1423, float %1424, float %1434, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1436 = extractvalue %dx.types.ResRet.f32 %1435, 0
  %1437 = extractvalue %dx.types.ResRet.f32 %1435, 1
  %1438 = extractvalue %dx.types.ResRet.f32 %1435, 2
  %1439 = extractvalue %dx.types.ResRet.f32 %1435, 3
  %1440 = call float @dx.op.binary.f32(i32 35, float %1430, float %1431)  ; FMax(a,b)
  %1441 = call float @dx.op.binary.f32(i32 35, float %1429, float %1440)  ; FMax(a,b)
  %1442 = call float @dx.op.binary.f32(i32 35, float %1441, float %1432)  ; FMax(a,b)
  %1443 = call float @dx.op.binary.f32(i32 36, float %1437, float %1438)  ; FMin(a,b)
  %1444 = call float @dx.op.binary.f32(i32 36, float %1436, float %1443)  ; FMin(a,b)
  %1445 = call float @dx.op.binary.f32(i32 36, float %1444, float %1439)  ; FMin(a,b)
  %1446 = fmul fast float %1442, 2.550000e+02
  %1447 = fadd fast float %1446, 0x3F70101020000000
  %1448 = fptoui float %1447 to i32
  %1449 = fmul fast float %1445, 2.550000e+02
  %1450 = fadd fast float %1449, 0x3F70101020000000
  %1451 = fptoui float %1450 to i32
  %1452 = icmp ult i32 %1448, %1451
  br i1 %1452, label %1453, label %1505

; <label>:1453                                    ; preds = %1410
  %1454 = fcmp fast ogt float %47, 9.843750e-01
  %1455 = fadd fast float %1101, -4.000000e+00
  %1456 = select i1 %1454, float -4.000000e+00, float %1455
  %1457 = call float @dx.op.binary.f32(i32 35, float %1456, float 0.000000e+00)  ; FMax(a,b)
  %1458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.f32 %1458, 0
  %1460 = fadd fast float %1459, %1457
  %1461 = extractvalue %dx.types.CBufRet.f32 %1458, 2
  %1462 = fmul fast float %1460, %1461
  %1463 = call float @dx.op.unary.f32(i32 23, float %1462)  ; Log(value)
  %1464 = extractvalue %dx.types.CBufRet.f32 %1458, 3
  %1465 = fmul fast float %1464, %1463
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 2
  %1468 = fmul fast float %1465, %1467
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1470 = uitofp i32 %1448 to float
  %1471 = uitofp i32 %1451 to float
  %1472 = fadd fast float %1470, 5.000000e-01
  %1473 = fadd fast float %1471, 5.000000e-01
  %1474 = fmul fast float %1467, %1472
  %1475 = fmul fast float %1467, %1473
  %1476 = fadd fast float %1474, 0x3F0FFB4800000000
  %1477 = fadd fast float %1475, 0xBF0FFB4800000000
  %1478 = call float @dx.op.binary.f32(i32 35, float %1469, float %1476)  ; FMax(a,b)
  %1479 = call float @dx.op.binary.f32(i32 36, float %1478, float %1477)  ; FMin(a,b)
  %1480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.f32 %1480, 1
  %1482 = extractvalue %dx.types.CBufRet.f32 %1480, 2
  %1483 = extractvalue %dx.types.CBufRet.f32 %1480, 0
  %1484 = select i1 %849, float %1483, float 0.000000e+00
  %1485 = fmul fast float %1481, %1479
  %1486 = fadd fast float %1484, %1485
  %1487 = fadd fast float %1484, %1482
  %1488 = fsub fast float %1481, %1482
  %1489 = fadd fast float %1488, %1484
  %1490 = call float @dx.op.binary.f32(i32 35, float %1486, float %1487)  ; FMax(a,b)
  %1491 = call float @dx.op.binary.f32(i32 36, float %1490, float %1489)  ; FMin(a,b)
  %1492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1423, float %1424, float %1491, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = extractvalue %dx.types.ResRet.f32 %1492, 1
  %1495 = extractvalue %dx.types.ResRet.f32 %1492, 2
  %1496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %18, float %1423, float %1424, float %1491, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1497 = extractvalue %dx.types.ResRet.f32 %1496, 0
  %1498 = extractvalue %dx.types.ResRet.f32 %1496, 1
  %1499 = extractvalue %dx.types.ResRet.f32 %1496, 2
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 1
  %1502 = fmul fast float %1501, %1497
  %1503 = fmul fast float %1501, %1498
  %1504 = fmul fast float %1501, %1499
  br label %1505

; <label>:1505                                    ; preds = %1453, %1410
  %1506 = phi float [ %1493, %1453 ], [ 1.000000e+00, %1410 ]
  %1507 = phi float [ %1494, %1453 ], [ 1.000000e+00, %1410 ]
  %1508 = phi float [ %1495, %1453 ], [ 1.000000e+00, %1410 ]
  %1509 = phi float [ %1502, %1453 ], [ 0.000000e+00, %1410 ]
  %1510 = phi float [ %1503, %1453 ], [ 0.000000e+00, %1410 ]
  %1511 = phi float [ %1504, %1453 ], [ 0.000000e+00, %1410 ]
  %1512 = fmul fast float %1509, %872
  %1513 = fmul fast float %1510, %872
  %1514 = fmul fast float %1511, %872
  %1515 = fmul fast float %1506, %1417
  %1516 = call float @dx.op.dot3.f32(i32 55, float %1506, float %1507, float %1508, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1517 = call float @dx.op.dot3.f32(i32 55, float %1512, float %1513, float %1514, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1518 = select i1 %111, float %1516, float %1506
  %1519 = select i1 %111, float %1516, float %1507
  %1520 = select i1 %111, float 1.000000e+00, float %1508
  %1521 = select i1 %111, float %1517, float %1512
  %1522 = select i1 %111, float 0.000000e+00, float %1513
  %1523 = select i1 %111, float 0.000000e+00, float %1514
  %1524 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %22, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.i32 %1524, 3
  %1526 = and i32 %1525, 3
  %1527 = icmp ne i32 %1526, 0
  %1528 = and i32 %1525, 4
  %1529 = icmp ne i32 %1528, 0
  %1530 = and i1 %1527, %1529
  %1531 = and i1 %111, %1530
  br i1 %1531, label %1532, label %1538

; <label>:1532                                    ; preds = %1505
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 1
  %1535 = fadd fast float %1515, -1.000000e+00
  %1536 = fmul fast float %1534, %1535
  %1537 = fadd fast float %1536, 1.000000e+00
  br label %1538

; <label>:1538                                    ; preds = %1532, %1505
  %1539 = phi float [ %1537, %1532 ], [ %1515, %1505 ]
  %1540 = fadd fast float %1414, %1411
  %1541 = fmul fast float %1518, %1540
  %1542 = fadd fast float %1541, %1521
  %1543 = fadd fast float %1415, %1412
  %1544 = fmul fast float %1519, %1543
  %1545 = fadd fast float %1544, %1522
  %1546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1547 = extractvalue %dx.types.CBufRet.f32 %1546, 0
  br i1 %111, label %1548, label %1569

; <label>:1548                                    ; preds = %1538
  %1549 = fadd fast float %1542, %1545
  %1550 = fmul fast float %1547, %1549
  %1551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1552 = extractvalue %dx.types.CBufRet.f32 %1551, 3
  %1553 = extractvalue %dx.types.CBufRet.f32 %876, 1
  %1554 = fsub fast float %879, %1553
  %1555 = extractvalue %dx.types.CBufRet.f32 %876, 2
  %1556 = fmul fast float %1554, %1555
  %1557 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1558 = fsub fast float %1557, %1552
  %1559 = fmul fast float %1558, %1539
  %1560 = fadd fast float %1559, %1552
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %22, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 0
  %1563 = fsub fast float %1560, %1562
  %1564 = fmul fast float %1563, 1.000000e+01
  %1565 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1566 = fmul fast float %1565, %872
  %1567 = fsub fast float %872, %1566
  %1568 = fmul fast float %1567, %1560
  br label %1581

; <label>:1569                                    ; preds = %1538
  %1570 = fadd fast float %1416, %1413
  %1571 = fmul fast float %1520, %1570
  %1572 = fadd fast float %1571, %1523
  %1573 = fmul fast float %1547, %1542
  %1574 = fmul fast float %1547, %1545
  %1575 = fmul fast float %1547, %1572
  %1576 = call float @dx.op.binary.f32(i32 35, float %1574, float %1575)  ; FMax(a,b)
  %1577 = call float @dx.op.binary.f32(i32 35, float %1573, float %1576)  ; FMax(a,b)
  %1578 = call float @dx.op.binary.f32(i32 35, float %1577, float %872)  ; FMax(a,b)
  %1579 = fcmp fast ugt float %1578, 0x3F10000000000000
  br i1 %1579, label %1581, label %1580

; <label>:1580                                    ; preds = %1569
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1581

; <label>:1581                                    ; preds = %1580, %1569, %1548
  %1582 = phi float [ %1550, %1548 ], [ %1573, %1580 ], [ %1573, %1569 ]
  %1583 = phi float [ %1568, %1548 ], [ %1574, %1580 ], [ %1574, %1569 ]
  %1584 = phi float [ %1567, %1548 ], [ %1575, %1580 ], [ %1575, %1569 ]
  %1585 = phi float [ %1567, %1548 ], [ %872, %1580 ], [ %872, %1569 ]
  %1586 = fadd fast float %591, 0x3FE3C6EF40000000
  %1587 = call float @dx.op.unary.f32(i32 22, float %1586)  ; Frc(value)
  %1588 = call float @dx.op.unary.f32(i32 23, float %1582)  ; Log(value)
  %1589 = fadd fast float %1588, -7.000000e+00
  %1590 = call float @dx.op.unary.f32(i32 21, float %1589)  ; Exp(value)
  %1591 = fmul fast float %1587, 2.000000e+00
  %1592 = fadd fast float %1591, -1.000000e+00
  %1593 = fmul fast float %1590, %1592
  %1594 = fcmp fast ogt float %1582, 0.000000e+00
  %1595 = select i1 %1594, float %1593, float 0.000000e+00
  %1596 = fadd fast float %1595, %1582
  %1597 = fadd fast float %591, 0x3FF3C6EF40000000
  %1598 = call float @dx.op.unary.f32(i32 22, float %1597)  ; Frc(value)
  %1599 = call float @dx.op.unary.f32(i32 23, float %1583)  ; Log(value)
  %1600 = fadd fast float %1599, -7.000000e+00
  %1601 = call float @dx.op.unary.f32(i32 21, float %1600)  ; Exp(value)
  %1602 = fmul fast float %1598, 2.000000e+00
  %1603 = fadd fast float %1602, -1.000000e+00
  %1604 = fmul fast float %1601, %1603
  %1605 = fcmp fast ogt float %1583, 0.000000e+00
  %1606 = select i1 %1605, float %1604, float 0.000000e+00
  %1607 = fadd fast float %1606, %1583
  %1608 = fadd fast float %591, 0x3FFDAA66E0000000
  %1609 = call float @dx.op.unary.f32(i32 22, float %1608)  ; Frc(value)
  %1610 = call float @dx.op.unary.f32(i32 23, float %1584)  ; Log(value)
  %1611 = fadd fast float %1610, -6.000000e+00
  %1612 = call float @dx.op.unary.f32(i32 21, float %1611)  ; Exp(value)
  %1613 = fmul fast float %1609, 2.000000e+00
  %1614 = fadd fast float %1613, -1.000000e+00
  %1615 = fmul fast float %1612, %1614
  %1616 = fcmp fast ogt float %1584, 0.000000e+00
  %1617 = select i1 %1616, float %1615, float 0.000000e+00
  %1618 = fadd fast float %1617, %1584
  %1619 = select i1 %111, float %1583, float %1607
  %1620 = select i1 %111, float %1584, float %1618
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1621 = call float @dx.op.binary.f32(i32 36, float %1596, float 3.225500e+04)  ; FMin(a,b)
  %1622 = call float @dx.op.binary.f32(i32 36, float %1619, float 3.225500e+04)  ; FMin(a,b)
  %1623 = call float @dx.op.binary.f32(i32 36, float %1620, float 3.225500e+04)  ; FMin(a,b)
  %1624 = call float @dx.op.binary.f32(i32 36, float %1585, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1621)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1622)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1623)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1624)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1585)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1585)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1585)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1585)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!35 = !{[33 x i32] [i32 31, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 255, i32 255, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 255]}
!36 = !{void ()* @ps_main, !"ps_main", !37, !4, !59}
!37 = !{!38, !55, null}
!38 = !{!39, !42, !43, !45, !47, !49, !51, !52, !54}
!39 = !{i32 0, !"SV_Position", i8 9, i8 3, !40, i8 4, i32 1, i8 4, i32 0, i8 0, !41}
!40 = !{i32 0}
!41 = !{i32 3, i32 15}
!42 = !{i32 1, !"COLOR", i8 9, i8 0, !40, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!43 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !40, i8 2, i32 1, i8 2, i32 2, i8 0, !44}
!44 = !{i32 3, i32 3}
!45 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 3, i8 0, !41}
!46 = !{i32 3}
!47 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !48, i8 3, i32 1, i8 2, i32 4, i8 0, !44}
!48 = !{i32 5}
!49 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !50, i8 2, i32 1, i8 4, i32 5, i8 0, !41}
!50 = !{i32 8}
!51 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !40, i8 1, i32 1, i8 4, i32 6, i8 0, !41}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !46, i8 1, i32 1, i8 3, i32 7, i8 0, !53}
!53 = !{i32 3, i32 5}
!54 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !40, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56, !57}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !40, i8 0, i32 1, i8 4, i32 0, i8 0, !41}
!57 = !{i32 1, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 1, i8 0, !41}
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
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}

