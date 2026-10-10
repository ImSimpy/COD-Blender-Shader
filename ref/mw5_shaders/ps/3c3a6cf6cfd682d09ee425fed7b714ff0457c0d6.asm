;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 5   xyz         4     NONE   float   xyz 
; TEXCOORD                 8   xyzw        5     NONE   float   xyzw
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
; shader hash: 3c54f8b876578470007f62978c4a9ff3
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
; TEXCOORD                 5                 linear       
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
;                                   texture     f32          2d      T3     t69,space2     1
;                                   texture     f32          2d      T4             t1     1
;                                   texture     f32          2d      T5     t57,space2     1
;                                   texture    byte         r/o      T6     t69,space1     1
;                                   texture     u32          2d      T7     t56,space2     1
;                                   texture     f32          1d      T8     t30,space2     1
;                                   texture     f32          3d      T9     t45,space2     1
;                                   texture     f32     2darray     T10     t47,space2     1
;                                   textureunorm_f32     2darray     T11     t85,space2     1
;                                   texture     f32          2d     T12     t83,space2     1
;                                   texture    byte         r/o     T13             t2     1
;                                   texture     f32          3d     T14     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 17, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 18, 22, 23, 24 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 24 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 24 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 24 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 24 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 24 }
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
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = alloca [3 x float], align 4
  %40 = alloca [3 x float], align 4
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = fmul fast float %44, %35
  %46 = fmul fast float %44, %36
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 2
  %49 = extractvalue %dx.types.CBufRet.f32 %47, 3
  %50 = fmul fast float %45, 2.000000e+00
  %51 = fmul fast float %50, %48
  %52 = fmul fast float %46, 2.000000e+00
  %53 = fmul fast float %52, %49
  %54 = fsub fast float 1.000000e+00, %51
  %55 = fsub fast float 1.000000e+00, %53
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = extractvalue %dx.types.CBufRet.f32 %56, 1
  %59 = extractvalue %dx.types.CBufRet.f32 %56, 2
  %60 = fmul fast float %54, %57
  %61 = fmul fast float %54, %58
  %62 = fmul fast float %54, %59
  %63 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %64 = extractvalue %dx.types.CBufRet.f32 %63, 0
  %65 = extractvalue %dx.types.CBufRet.f32 %63, 1
  %66 = extractvalue %dx.types.CBufRet.f32 %63, 2
  %67 = fmul fast float %55, %64
  %68 = fmul fast float %55, %65
  %69 = fmul fast float %55, %66
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = extractvalue %dx.types.CBufRet.f32 %70, 1
  %73 = extractvalue %dx.types.CBufRet.f32 %70, 2
  %74 = fadd fast float %67, %71
  %75 = fadd fast float %74, %60
  %76 = fadd fast float %68, %72
  %77 = fadd fast float %76, %61
  %78 = fadd fast float %69, %73
  %79 = fadd fast float %78, %62
  %80 = fmul fast float %75, %38
  %81 = fmul fast float %77, %38
  %82 = fmul fast float %79, %38
  %83 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.i32 %83, 3
  %85 = and i32 %84, 3
  %86 = icmp ne i32 %85, 0
  %87 = and i32 %84, 4
  %88 = icmp ne i32 %87, 0
  %89 = and i1 %86, %88
  br i1 %89, label %90, label %99

; <label>:90                                      ; preds = %0
  %91 = fmul fast float %49, %46
  %92 = fmul fast float %48, %45
  %93 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %92, float %91, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = fsub fast float 1.000000e+00, %94
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = fcmp fast olt float %95, %97
  br label %102

; <label>:99                                      ; preds = %0
  %100 = icmp eq i32 %87, 0
  %101 = and i1 %86, %100
  br label %102

; <label>:102                                     ; preds = %99, %90
  %103 = phi i1 [ %98, %90 ], [ %101, %99 ]
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %107 = fmul fast float %105, %45
  %108 = fmul fast float %106, %46
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 0
  %111 = and i32 %110, 114688
  %112 = icmp ne i32 %111, 0
  %113 = select i1 %112, float %107, float 0.000000e+00
  %114 = select i1 %112, float %108, float 0.000000e+00
  %115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %113, float %114, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = fmul fast float %116, 2.550000e+02
  %118 = fptoui float %117 to i32
  %119 = select i1 %112, i32 %118, i32 0
  %120 = mul i32 %20, 208
  %121 = add i32 %120, 188
  %122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %121, i32 undef)  ; BufferLoad(srv,index,wot)
  %123 = extractvalue %dx.types.ResRet.i32 %122, 0
  %124 = and i32 %84, 114688
  %125 = and i32 %84, 8
  %126 = icmp ne i32 %125, 0
  %127 = or i1 %103, %126
  %128 = select i1 %127, i32 %124, i32 16384
  %129 = and i32 %128, %123
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

; <label>:131                                     ; preds = %102
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %132

; <label>:132                                     ; preds = %131, %102
  %133 = and i32 %123, 512
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %159, label %135

; <label>:135                                     ; preds = %132
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %139 = fmul fast float %137, %45
  %140 = fmul fast float %138, %46
  %141 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %142 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %143 = fdiv fast float %141, %142
  %144 = fcmp fast ogt float %143, 0x3FFC71C720000000
  br i1 %144, label %145, label %151

; <label>:145                                     ; preds = %135
  %146 = fdiv fast float 0x3FFC71C720000000, %143
  %147 = fmul fast float %146, %140
  %148 = fsub fast float 1.000000e+00, %146
  %149 = fmul fast float %148, 5.000000e-01
  %150 = fadd fast float %149, %147
  br label %159

; <label>:151                                     ; preds = %135
  %152 = fcmp fast olt float %143, 0x3FFC71C720000000
  br i1 %152, label %153, label %159

; <label>:153                                     ; preds = %151
  %154 = fmul fast float %139, 5.625000e-01
  %155 = fmul fast float %154, %143
  %156 = fmul fast float %143, 2.812500e-01
  %157 = fsub fast float 5.000000e-01, %156
  %158 = fadd fast float %157, %155
  br label %159

; <label>:159                                     ; preds = %153, %151, %145, %132
  %160 = phi float [ %32, %132 ], [ %139, %145 ], [ %158, %153 ], [ %139, %151 ]
  %161 = phi float [ %33, %132 ], [ %150, %145 ], [ %140, %153 ], [ %140, %151 ]
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = bitcast i32 %163 to float
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = extractvalue %dx.types.ResRet.i32 %165, 1
  %168 = extractvalue %dx.types.ResRet.i32 %165, 2
  %169 = extractvalue %dx.types.ResRet.i32 %165, 3
  %170 = bitcast i32 %166 to float
  %171 = bitcast i32 %167 to float
  %172 = bitcast i32 %168 to float
  %173 = bitcast i32 %169 to float
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = add i32 %175, 0
  %177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %178 = fmul fast float %172, %32
  %179 = fmul fast float %173, %33
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %182 = fmul fast float %181, %170
  %183 = fmul fast float %181, %171
  %184 = fadd fast float %182, %178
  %185 = fadd fast float %183, %179
  %186 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %177, %dx.types.Handle %42, float %184, float %185, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = extractvalue %dx.types.ResRet.f32 %186, 1
  %189 = fmul fast float %187, 2.000000e+00
  %190 = fmul fast float %188, 2.000000e+00
  %191 = fadd fast float %189, -1.000000e+00
  %192 = fadd fast float %190, -1.000000e+00
  %193 = fmul fast float %191, %164
  %194 = fmul fast float %192, %164
  %195 = fadd fast float %193, %160
  %196 = fadd fast float %194, %161
  %197 = and i32 %123, 16
  %198 = icmp ne i32 %197, 0
  %199 = select i1 %198, float 1.000000e+00, float %34
  %200 = icmp eq i32 %197, 0
  br i1 %200, label %220, label %201, !dx.controlflow.hints !60

; <label>:201                                     ; preds = %159
  %202 = add i32 %120, 64
  %203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = fadd fast float %204, 1.000000e+00
  %206 = fmul fast float %205, %34
  %207 = fsub fast float %206, %204
  %208 = fsub fast float %205, %207
  %209 = call float @dx.op.unary.f32(i32 7, float %208)  ; Saturate(value)
  %210 = fsub fast float 1.000000e+00, %206
  %211 = call float @dx.op.unary.f32(i32 7, float %210)  ; Saturate(value)
  %212 = fsub fast float %209, %211
  %213 = fsub fast float %199, %211
  %214 = fdiv fast float %213, %212
  %215 = call float @dx.op.unary.f32(i32 7, float %214)  ; Saturate(value)
  %216 = fmul fast float %215, 2.000000e+00
  %217 = fsub fast float 3.000000e+00, %216
  %218 = fmul fast float %215, %215
  %219 = fmul fast float %218, %217
  br label %220

; <label>:220                                     ; preds = %201, %159
  %221 = phi float [ %219, %201 ], [ %199, %159 ]
  %222 = fcmp fast ogt float %221, 0.000000e+00
  br i1 %222, label %224, label %223

; <label>:223                                     ; preds = %220
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %224

; <label>:224                                     ; preds = %223, %220
  %225 = call float @dx.op.unary.f32(i32 7, float %221)  ; Saturate(value)
  %226 = fmul fast float %45, 5.000000e-01
  %227 = fmul fast float %46, 5.000000e-01
  %228 = fptosi float %226 to i32
  %229 = fptosi float %227 to i32
  %230 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %228, i32 %229, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = lshr i32 %231, 18
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F4C00EBA0000000
  %235 = call float @dx.op.unary.f32(i32 21, float %234)  ; Exp(value)
  %236 = fadd fast float %235, -1.000000e+00
  %237 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %238 = extractvalue %dx.types.Dimensions %237, 0
  %239 = sitofp i32 %238 to float
  %240 = extractvalue %dx.types.Dimensions %237, 1
  %241 = sitofp i32 %240 to float
  %242 = fcmp fast oge float %226, %239
  %243 = fcmp fast oge float %227, %241
  %244 = or i1 %242, %243
  %245 = select i1 %244, float 0x4197782600000000, float %236
  %246 = fsub fast float %245, %38
  %247 = fcmp fast ogt float %246, 0.000000e+00
  %248 = and i32 %119, -2
  %249 = icmp eq i32 %248, 2
  %250 = and i1 %249, %247
  %251 = xor i1 %247, true
  %252 = icmp eq i32 %119, 1
  %253 = and i1 %252, %251
  %254 = or i1 %250, %253
  %255 = and i32 %123, 262144
  %256 = icmp ne i32 %255, 0
  %257 = and i1 %256, %254
  %258 = xor i1 %254, true
  %259 = and i32 %123, 131072
  %260 = icmp ne i32 %259, 0
  %261 = and i1 %260, %258
  %262 = or i1 %257, %261
  br i1 %262, label %263, label %264

; <label>:263                                     ; preds = %224
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %264

; <label>:264                                     ; preds = %263, %224
  %265 = and i32 %123, 32
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %506, label %267, !dx.controlflow.hints !61

; <label>:267                                     ; preds = %264
  %268 = add i32 %120, 80
  %269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = extractvalue %dx.types.ResRet.f32 %269, 1
  %272 = extractvalue %dx.types.ResRet.f32 %269, 2
  %273 = extractvalue %dx.types.ResRet.f32 %269, 3
  %274 = add i32 %120, 96
  %275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = extractvalue %dx.types.ResRet.f32 %275, 1
  %278 = extractvalue %dx.types.ResRet.f32 %275, 2
  %279 = add i32 %120, 112
  %280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.f32 %280, 0
  %282 = extractvalue %dx.types.ResRet.f32 %280, 1
  %283 = extractvalue %dx.types.ResRet.f32 %280, 2
  %284 = extractvalue %dx.types.ResRet.f32 %280, 3
  %285 = add i32 %120, 128
  %286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = extractvalue %dx.types.ResRet.f32 %286, 3
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %121, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 4096
  %294 = icmp ne i32 %293, 0
  %295 = fcmp fast une float %278, 0.000000e+00
  %296 = and i32 %292, 64
  %297 = icmp ne i32 %296, 0
  %298 = and i32 %292, 128
  %299 = icmp eq i32 %298, 0
  %300 = and i32 %292, 2048
  %301 = icmp eq i32 %300, 0
  %302 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %303 = extractvalue %dx.types.Dimensions %302, 0
  %304 = sitofp i32 %303 to float
  %305 = extractvalue %dx.types.Dimensions %302, 1
  %306 = sitofp i32 %305 to float
  %307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %308 = extractvalue %dx.types.CBufRet.f32 %307, 2
  %309 = extractvalue %dx.types.CBufRet.f32 %307, 3
  %310 = fmul fast float %308, %45
  %311 = fmul fast float %309, %46
  %312 = fmul fast float %310, %304
  %313 = fmul fast float %311, %306
  %314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.f32 %314, 1
  %316 = fsub fast float -0.000000e+00, %315
  %317 = fptoui float %316 to i32
  %318 = fptoui float %312 to i32
  %319 = fptoui float %313 to i32
  %320 = and i32 %317, 31
  %321 = lshr i32 %318, %320
  %322 = lshr i32 %319, %320
  %323 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %317, i32 %321, i32 %322, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %324 = extractvalue %dx.types.ResRet.f32 %323, 0
  %325 = fcmp fast ogt float %324, -1.000000e+00
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %328 = select i1 %325, float %327, float 1.000000e+00
  %329 = fadd fast float %324, 1.000000e+00
  %330 = fmul fast float %328, %329
  %331 = call float @dx.op.unary.f32(i32 6, float %330)  ; FAbs(value)
  %332 = extractvalue %dx.types.CBufRet.f32 %326, 3
  %333 = fcmp fast oge float %331, %332
  %334 = select i1 %333, float 0x4197782600000000, float %331
  br i1 %301, label %405, label %335, !dx.controlflow.hints !62

; <label>:335                                     ; preds = %267
  %336 = fmul fast float %50, %308
  %337 = fmul fast float %52, %309
  %338 = fsub fast float 1.000000e+00, %336
  %339 = fsub fast float 1.000000e+00, %337
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %344 = fmul fast float %338, %341
  %345 = fmul fast float %338, %342
  %346 = fmul fast float %338, %343
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = extractvalue %dx.types.CBufRet.f32 %347, 0
  %349 = extractvalue %dx.types.CBufRet.f32 %347, 1
  %350 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %351 = fmul fast float %339, %348
  %352 = fmul fast float %339, %349
  %353 = fmul fast float %339, %350
  %354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.f32 %354, 0
  %356 = extractvalue %dx.types.CBufRet.f32 %354, 1
  %357 = extractvalue %dx.types.CBufRet.f32 %354, 2
  %358 = fadd fast float %351, %355
  %359 = fadd fast float %358, %344
  %360 = fadd fast float %352, %356
  %361 = fadd fast float %360, %345
  %362 = fadd fast float %353, %357
  %363 = fadd fast float %362, %346
  %364 = fmul fast float %359, %334
  %365 = fmul fast float %361, %334
  %366 = fmul fast float %363, %334
  %367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.f32 %367, 0
  %369 = extractvalue %dx.types.CBufRet.f32 %367, 1
  %370 = extractvalue %dx.types.CBufRet.f32 %367, 2
  %371 = fadd fast float %364, %368
  %372 = fadd fast float %365, %369
  %373 = fadd fast float %366, %370
  %374 = call float @dx.op.dot3.f32(i32 55, float %371, float %372, float %373, float %371, float %372, float %373)  ; Dot3(ax,ay,az,bx,by,bz)
  %375 = fsub fast float 1.000000e+00, %374
  %376 = fcmp fast olt float %375, %277
  %377 = fcmp fast ogt float %375, %276
  %378 = or i1 %376, %377
  %379 = select i1 %378, float 0.000000e+00, float %375
  %380 = fsub fast float %276, %277
  %381 = fsub fast float %379, %277
  %382 = fdiv fast float %381, %380
  %383 = call float @dx.op.unary.f32(i32 7, float %382)  ; Saturate(value)
  %384 = fmul fast float %383, 2.000000e+00
  %385 = fsub fast float 3.000000e+00, %384
  %386 = fmul fast float %383, %383
  %387 = fmul fast float %386, %385
  %388 = fsub fast float %284, %290
  %389 = fmul fast float %387, %388
  %390 = fadd fast float %389, %290
  %391 = fmul fast float %281, %21
  %392 = fmul fast float %282, %22
  %393 = fmul fast float %283, %23
  %394 = fsub fast float %391, %287
  %395 = fsub fast float %392, %288
  %396 = fsub fast float %393, %289
  %397 = fmul fast float %387, %394
  %398 = fmul fast float %387, %395
  %399 = fmul fast float %387, %396
  %400 = fadd fast float %397, %287
  %401 = fadd fast float %398, %288
  %402 = fadd fast float %399, %289
  %403 = fmul fast float %270, %270
  %404 = fmul fast float %403, %379
  br label %496

; <label>:405                                     ; preds = %267
  %406 = and i32 %292, 256
  %407 = icmp eq i32 %406, 0
  %408 = fsub fast float %334, %38
  br i1 %407, label %457, label %409

; <label>:409                                     ; preds = %405
  %410 = fadd fast float %276, %38
  %411 = fcmp fast olt float %334, %38
  %412 = fcmp fast ogt float %334, %410
  %413 = or i1 %411, %412
  %414 = select i1 %413, float 0.000000e+00, float %408
  %415 = call float @dx.op.unary.f32(i32 83, float %334)  ; DerivCoarseX(value)
  %416 = call float @dx.op.unary.f32(i32 84, float %334)  ; DerivCoarseY(value)
  %417 = fmul fast float %415, %415
  %418 = fmul fast float %416, %416
  %419 = fadd fast float %418, %417
  %420 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %421 = extractvalue %dx.types.CBufRet.f32 %314, 2
  %422 = fmul fast float %421, %420
  %423 = call float @dx.op.unary.f32(i32 7, float %422)  ; Saturate(value)
  %424 = fmul fast float %423, %277
  %425 = fdiv fast float %408, %424
  %426 = call float @dx.op.unary.f32(i32 7, float %425)  ; Saturate(value)
  %427 = fmul fast float %426, 2.000000e+00
  %428 = fsub fast float 3.000000e+00, %427
  %429 = fmul fast float %426, %426
  %430 = fmul fast float %429, %428
  %431 = fsub fast float %334, %410
  %432 = fadd fast float %431, %424
  %433 = fdiv fast float %432, %424
  %434 = call float @dx.op.unary.f32(i32 7, float %433)  ; Saturate(value)
  %435 = fmul fast float %434, 2.000000e+00
  %436 = fsub fast float 3.000000e+00, %435
  %437 = fmul fast float %434, %434
  %438 = fmul fast float %437, %436
  %439 = fsub fast float %430, %438
  %440 = fsub fast float %284, %290
  %441 = fmul fast float %439, %440
  %442 = fadd fast float %441, %290
  %443 = fmul fast float %281, %21
  %444 = fmul fast float %282, %22
  %445 = fmul fast float %283, %23
  %446 = fsub fast float %443, %287
  %447 = fsub fast float %444, %288
  %448 = fsub fast float %445, %289
  %449 = fmul fast float %439, %446
  %450 = fmul fast float %439, %447
  %451 = fmul fast float %439, %448
  %452 = fadd fast float %449, %287
  %453 = fadd fast float %450, %288
  %454 = fadd fast float %451, %289
  %455 = fmul fast float %414, %270
  %456 = call float @dx.op.unary.f32(i32 6, float %455)  ; FAbs(value)
  br label %496

; <label>:457                                     ; preds = %405
  br i1 %295, label %458, label %469

; <label>:458                                     ; preds = %457
  %459 = select i1 %297, float 5.000000e+01, float 1.000000e+00
  %460 = fmul fast float %459, %270
  %461 = fmul fast float %32, 2.000000e+00
  %462 = fmul fast float %33, 2.000000e+00
  %463 = fadd fast float %461, -1.000000e+00
  %464 = fadd fast float %462, -1.000000e+00
  %465 = call float @dx.op.dot2.f32(i32 54, float %463, float %464, float %463, float %464)  ; Dot2(ax,ay,bx,by)
  %466 = fmul fast float %465, %278
  %467 = fsub fast float %408, %466
  %468 = fmul fast float %460, %467
  br label %496

; <label>:469                                     ; preds = %457
  br i1 %299, label %489, label %470

; <label>:470                                     ; preds = %469
  %471 = select i1 %297, float 0x3F947AE140000000, float 1.000000e+00
  %472 = fdiv fast float 1.000000e+00, %471
  %473 = fmul fast float %471, %271
  %474 = fmul fast float %471, %272
  %475 = fmul fast float %472, %273
  %476 = call float @dx.op.unary.f32(i32 6, float %408)  ; FAbs(value)
  %477 = fcmp fast olt float %476, %473
  br i1 %477, label %478, label %482, !dx.controlflow.hints !63

; <label>:478                                     ; preds = %470
  %479 = fmul fast float %472, %270
  %480 = fmul fast float %479, %476
  %481 = call float @dx.op.unary.f32(i32 6, float %480)  ; FAbs(value)
  br label %496

; <label>:482                                     ; preds = %470
  %483 = fcmp fast ogt float %476, %474
  br i1 %483, label %484, label %496

; <label>:484                                     ; preds = %482
  %485 = fsub fast float %476, %474
  %486 = fmul fast float %475, %485
  %487 = call float @dx.op.unary.f32(i32 6, float %486)  ; FAbs(value)
  %488 = fsub fast float 1.000000e+00, %487
  br label %496

; <label>:489                                     ; preds = %469
  %490 = select i1 %297, float 5.000000e+01, float 1.000000e+00
  %491 = fmul fast float %490, %270
  %492 = call float @dx.op.unary.f32(i32 6, float %246)  ; FAbs(value)
  %493 = select i1 %294, float %492, float 0x47EFFFFFE0000000
  %494 = call float @dx.op.binary.f32(i32 36, float %408, float %493)  ; FMin(a,b)
  %495 = fmul fast float %491, %494
  br label %496

; <label>:496                                     ; preds = %489, %484, %482, %478, %458, %409, %335
  %497 = phi float [ %404, %335 ], [ %456, %409 ], [ %468, %458 ], [ %495, %489 ], [ %481, %478 ], [ %488, %484 ], [ %476, %482 ]
  %498 = phi float [ %400, %335 ], [ %452, %409 ], [ %21, %458 ], [ %21, %489 ], [ %21, %478 ], [ %21, %484 ], [ %21, %482 ]
  %499 = phi float [ %401, %335 ], [ %453, %409 ], [ %22, %458 ], [ %22, %489 ], [ %22, %478 ], [ %22, %484 ], [ %22, %482 ]
  %500 = phi float [ %402, %335 ], [ %454, %409 ], [ %23, %458 ], [ %23, %489 ], [ %23, %478 ], [ %23, %484 ], [ %23, %482 ]
  %501 = phi float [ %390, %335 ], [ %442, %409 ], [ 1.000000e+00, %458 ], [ 1.000000e+00, %489 ], [ 1.000000e+00, %478 ], [ 1.000000e+00, %484 ], [ 1.000000e+00, %482 ]
  %502 = call float @dx.op.unary.f32(i32 7, float %497)  ; Saturate(value)
  %503 = fmul fast float %502, %34
  %504 = fmul fast float %501, %225
  %505 = fmul fast float %504, %502
  br label %506

; <label>:506                                     ; preds = %496, %264
  %507 = phi float [ %505, %496 ], [ %225, %264 ]
  %508 = phi float [ %503, %496 ], [ %34, %264 ]
  %509 = phi float [ %498, %496 ], [ %21, %264 ]
  %510 = phi float [ %499, %496 ], [ %22, %264 ]
  %511 = phi float [ %500, %496 ], [ %23, %264 ]
  %512 = fmul fast float %509, %24
  %513 = fmul fast float %510, %24
  %514 = fmul fast float %511, %24
  %515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %516 = extractvalue %dx.types.CBufRet.f32 %515, 2
  %517 = fptosi float %38 to i32
  %518 = sitofp i32 %517 to float
  %519 = fadd fast float %516, %518
  %520 = fmul fast float %519, 0x3FE3C6EF40000000
  %521 = frem fast float %45, 2.560000e+02
  %522 = frem fast float %46, 2.560000e+02
  %523 = fptoui float %521 to i32
  %524 = fptoui float %522 to i32
  %525 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %523, i32 %524, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  %527 = fadd fast float %526, %520
  %528 = call float @dx.op.unary.f32(i32 22, float %527)  ; Frc(value)
  %529 = and i32 %123, 1
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %588, label %531, !dx.controlflow.hints !64

; <label>:531                                     ; preds = %506
  %532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 2
  %534 = extractvalue %dx.types.ResRet.f32 %532, 3
  %535 = add i32 %120, 16
  %536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = extractvalue %dx.types.ResRet.f32 %536, 1
  %539 = extractvalue %dx.types.ResRet.f32 %536, 2
  %540 = add i32 %120, 32
  %541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = extractvalue %dx.types.ResRet.f32 %541, 1
  %544 = extractvalue %dx.types.ResRet.f32 %541, 2
  %545 = and i32 %123, 2
  %546 = icmp eq i32 %545, 0
  %547 = call float @dx.op.dot3.f32(i32 55, float %28, float %29, float %30, float %28, float %29, float %30)  ; Dot3(ax,ay,az,bx,by,bz)
  %548 = call float @dx.op.unary.f32(i32 25, float %547)  ; Rsqrt(value)
  %549 = fmul fast float %548, %28
  %550 = fmul fast float %548, %29
  %551 = fmul fast float %548, %30
  %552 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %553 = call float @dx.op.unary.f32(i32 25, float %552)  ; Rsqrt(value)
  %554 = fmul fast float %553, %80
  %555 = fmul fast float %553, %81
  %556 = fmul fast float %553, %82
  %557 = call float @dx.op.dot3.f32(i32 55, float %554, float %555, float %556, float %549, float %550, float %551)  ; Dot3(ax,ay,az,bx,by,bz)
  %558 = fmul fast float %557, %557
  %559 = fmul fast float %558, %533
  %560 = fadd fast float %559, %534
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  br i1 %546, label %562, label %572, !dx.controlflow.hints !65

; <label>:562                                     ; preds = %531
  %563 = extractvalue %dx.types.ResRet.f32 %532, 1
  %564 = extractvalue %dx.types.ResRet.f32 %532, 0
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 3
  %567 = fmul fast float %566, %552
  %568 = fsub fast float %564, %567
  %569 = fmul fast float %568, %563
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %571 = fmul fast float %570, %561
  br label %572

; <label>:572                                     ; preds = %562, %531
  %573 = phi float [ %571, %562 ], [ %561, %531 ]
  %574 = fsub fast float %537, %542
  %575 = fsub fast float %538, %543
  %576 = fsub fast float %539, %544
  %577 = fmul fast float %573, %574
  %578 = fmul fast float %573, %575
  %579 = fmul fast float %573, %576
  %580 = fadd fast float %577, %542
  %581 = fadd fast float %578, %543
  %582 = fadd fast float %579, %544
  %583 = fmul fast float %580, %512
  %584 = fmul fast float %581, %513
  %585 = fmul fast float %582, %514
  %586 = fmul fast float %573, %507
  %587 = fmul fast float %573, %508
  br label %588

; <label>:588                                     ; preds = %572, %506
  %589 = phi float [ %586, %572 ], [ %507, %506 ]
  %590 = phi float [ %587, %572 ], [ %508, %506 ]
  %591 = phi float [ %583, %572 ], [ %512, %506 ]
  %592 = phi float [ %584, %572 ], [ %513, %506 ]
  %593 = phi float [ %585, %572 ], [ %514, %506 ]
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = add i32 %595, 0
  %597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %597, %dx.types.Handle %41, float %195, float %196, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = extractvalue %dx.types.ResRet.f32 %598, 2
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = shl i32 %603, 4
  %605 = and i32 %604, 32752
  %606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %605)  ; LegacyF16ToF32(value)
  %607 = lshr i32 %603, 7
  %608 = and i32 %607, 32752
  %609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %608)  ; LegacyF16ToF32(value)
  %610 = lshr i32 %603, 22
  %611 = shl nuw nsw i32 %610, 5
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = fmul fast float %606, %599
  %614 = fmul fast float %609, %600
  %615 = fmul fast float %612, %601
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = lshr i32 %617, 22
  %619 = shl nuw nsw i32 %618, 5
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = fmul fast float %620, %613
  %622 = select i1 %103, float %621, float %613
  %623 = fmul fast float %622, %591
  %624 = fmul fast float %614, %592
  %625 = fmul fast float %615, %593
  %626 = call float @dx.op.dot3.f32(i32 55, float %623, float %624, float %625, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = select i1 %103, float 0.000000e+00, float %623
  %628 = select i1 %103, float %626, float %624
  %629 = select i1 %103, float 0.000000e+00, float %625
  %630 = call float @dx.op.dot3.f32(i32 55, float %599, float %600, float %601, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = and i32 %632, 255
  %634 = uitofp i32 %633 to float
  %635 = lshr i32 %632, 8
  %636 = and i32 %635, 255
  %637 = uitofp i32 %636 to float
  %638 = fmul fast float %637, %630
  %639 = fadd fast float %638, %634
  %640 = fmul fast float %639, 0x3F70101020000000
  %641 = call float @dx.op.unary.f32(i32 7, float %640)  ; Saturate(value)
  %642 = and i32 %123, 8192
  %643 = icmp eq i32 %642, 0
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 0
  br i1 %643, label %652, label %646, !dx.controlflow.hints !66

; <label>:646                                     ; preds = %588
  %647 = add i32 %120, 176
  %648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = fcmp fast oge float %649, 0.000000e+00
  %651 = select i1 %650, float %649, float %645
  br label %658

; <label>:652                                     ; preds = %588
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = bitcast i32 %654 to float
  %656 = fcmp fast oge float %655, 0.000000e+00
  %657 = select i1 %656, float %655, float %645
  br label %658

; <label>:658                                     ; preds = %652, %646
  %659 = phi float [ %651, %646 ], [ %657, %652 ]
  %660 = fmul fast float %630, %590
  %661 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %228, i32 %229, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = lshr i32 %662, 18
  %664 = uitofp i32 %663 to float
  %665 = fmul fast float %664, 0x3F4C00EBA0000000
  %666 = call float @dx.op.unary.f32(i32 21, float %665)  ; Exp(value)
  %667 = fadd fast float %666, -1.000000e+00
  %668 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %669 = extractvalue %dx.types.Dimensions %668, 0
  %670 = sitofp i32 %669 to float
  %671 = extractvalue %dx.types.Dimensions %668, 1
  %672 = sitofp i32 %671 to float
  %673 = fcmp fast oge float %226, %670
  %674 = fcmp fast oge float %227, %672
  %675 = or i1 %673, %674
  %676 = select i1 %675, float 0x4197782600000000, float %667
  %677 = icmp eq i32 %119, 3
  %678 = fcmp fast ogt float %38, %676
  %679 = and i1 %252, %678
  %680 = or i1 %677, %679
  %681 = icmp eq i32 %119, 2
  %682 = fcmp fast ole float %38, %676
  %683 = and i1 %681, %682
  %684 = or i1 %683, %680
  %685 = fmul fast float %31, %25
  %686 = fmul fast float %685, %509
  %687 = fmul fast float %686, %622
  %688 = fmul fast float %31, %26
  %689 = fmul fast float %688, %510
  %690 = fmul fast float %689, %614
  %691 = fmul fast float %31, %27
  %692 = fmul fast float %691, %511
  %693 = fmul fast float %692, %615
  %694 = fadd fast float %627, %687
  %695 = fadd fast float %628, %690
  %696 = fadd fast float %629, %693
  %697 = fmul fast float %694, %589
  %698 = fmul fast float %695, %589
  %699 = fmul fast float %696, %589
  %700 = fmul fast float %659, %641
  %701 = fsub fast float 1.000000e+00, %641
  %702 = fsub fast float %701, %660
  %703 = call float @dx.op.unary.f32(i32 7, float %702)  ; Saturate(value)
  %704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.f32 %704, 3
  %706 = fmul fast float %705, %703
  %707 = fadd fast float %706, %700
  %708 = and i32 %123, 1048576
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %801, label %710, !dx.controlflow.hints !67

; <label>:710                                     ; preds = %658
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 2
  %713 = extractvalue %dx.types.CBufRet.f32 %711, 3
  %714 = fmul fast float %712, %45
  %715 = fmul fast float %713, %46
  %716 = call float @dx.op.unary.f32(i32 7, float %714)  ; Saturate(value)
  %717 = call float @dx.op.unary.f32(i32 7, float %715)  ; Saturate(value)
  %718 = select i1 %684, i32 2, i32 0
  %719 = or i32 %718, 1
  %720 = uitofp i32 %719 to float
  %721 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %716, float %717, float %720, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  %723 = extractvalue %dx.types.ResRet.f32 %721, 1
  %724 = extractvalue %dx.types.ResRet.f32 %721, 2
  %725 = extractvalue %dx.types.ResRet.f32 %721, 3
  %726 = add nuw nsw i32 %718, 2
  %727 = uitofp i32 %726 to float
  %728 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %716, float %717, float %727, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  %730 = extractvalue %dx.types.ResRet.f32 %728, 1
  %731 = extractvalue %dx.types.ResRet.f32 %728, 2
  %732 = extractvalue %dx.types.ResRet.f32 %728, 3
  %733 = call float @dx.op.binary.f32(i32 35, float %723, float %724)  ; FMax(a,b)
  %734 = call float @dx.op.binary.f32(i32 35, float %722, float %733)  ; FMax(a,b)
  %735 = call float @dx.op.binary.f32(i32 35, float %734, float %725)  ; FMax(a,b)
  %736 = call float @dx.op.binary.f32(i32 36, float %730, float %731)  ; FMin(a,b)
  %737 = call float @dx.op.binary.f32(i32 36, float %729, float %736)  ; FMin(a,b)
  %738 = call float @dx.op.binary.f32(i32 36, float %737, float %732)  ; FMin(a,b)
  %739 = fmul fast float %735, 2.550000e+02
  %740 = fadd fast float %739, 0x3F70101020000000
  %741 = fptoui float %740 to i32
  %742 = fmul fast float %738, 2.550000e+02
  %743 = fadd fast float %742, 0x3F70101020000000
  %744 = fptoui float %743 to i32
  %745 = icmp ult i32 %741, %744
  br i1 %745, label %746, label %794

; <label>:746                                     ; preds = %710
  %747 = fcmp fast ogt float %37, 9.843750e-01
  %748 = fadd fast float %38, -4.000000e+00
  %749 = select i1 %747, float -4.000000e+00, float %748
  %750 = call float @dx.op.binary.f32(i32 35, float %749, float 0.000000e+00)  ; FMax(a,b)
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 0
  %753 = fadd fast float %752, %750
  %754 = extractvalue %dx.types.CBufRet.f32 %751, 2
  %755 = fmul fast float %753, %754
  %756 = call float @dx.op.unary.f32(i32 23, float %755)  ; Log(value)
  %757 = extractvalue %dx.types.CBufRet.f32 %751, 3
  %758 = fmul fast float %757, %756
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 2
  %761 = fmul fast float %758, %760
  %762 = call float @dx.op.unary.f32(i32 7, float %761)  ; Saturate(value)
  %763 = uitofp i32 %741 to float
  %764 = uitofp i32 %744 to float
  %765 = fadd fast float %763, 5.000000e-01
  %766 = fadd fast float %764, 5.000000e-01
  %767 = fmul fast float %760, %765
  %768 = fmul fast float %760, %766
  %769 = fadd fast float %767, 0x3F0FFB4800000000
  %770 = fadd fast float %768, 0xBF0FFB4800000000
  %771 = call float @dx.op.binary.f32(i32 35, float %762, float %769)  ; FMax(a,b)
  %772 = call float @dx.op.binary.f32(i32 36, float %771, float %770)  ; FMin(a,b)
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 1
  %775 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %776 = extractvalue %dx.types.CBufRet.f32 %773, 0
  %777 = select i1 %684, float %776, float 0.000000e+00
  %778 = fmul fast float %774, %772
  %779 = fadd fast float %777, %778
  %780 = fadd fast float %777, %775
  %781 = fsub fast float %774, %775
  %782 = fadd fast float %781, %777
  %783 = call float @dx.op.binary.f32(i32 35, float %779, float %780)  ; FMax(a,b)
  %784 = call float @dx.op.binary.f32(i32 36, float %783, float %782)  ; FMin(a,b)
  %785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %15, float %716, float %717, float %784, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %786 = extractvalue %dx.types.ResRet.f32 %785, 0
  %787 = extractvalue %dx.types.ResRet.f32 %785, 1
  %788 = extractvalue %dx.types.ResRet.f32 %785, 2
  %789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %790 = extractvalue %dx.types.CBufRet.f32 %789, 1
  %791 = fmul fast float %790, %786
  %792 = fmul fast float %790, %787
  %793 = fmul fast float %790, %788
  br label %794

; <label>:794                                     ; preds = %746, %710
  %795 = phi float [ %791, %746 ], [ 1.000000e+00, %710 ]
  %796 = phi float [ %792, %746 ], [ 1.000000e+00, %710 ]
  %797 = phi float [ %793, %746 ], [ 1.000000e+00, %710 ]
  %798 = fmul fast float %795, %697
  %799 = fmul fast float %796, %698
  %800 = fmul fast float %797, %699
  br label %801

; <label>:801                                     ; preds = %794, %658
  %802 = phi float [ %798, %794 ], [ %697, %658 ]
  %803 = phi float [ %799, %794 ], [ %698, %658 ]
  %804 = phi float [ %800, %794 ], [ %699, %658 ]
  %805 = and i32 %123, 2097152
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %811, label %807, !dx.controlflow.hints !68

; <label>:807                                     ; preds = %801
  %808 = add i32 %120, 192
  %809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  br label %814

; <label>:811                                     ; preds = %801
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 3
  br label %814

; <label>:814                                     ; preds = %811, %807
  %815 = phi float [ %810, %807 ], [ %813, %811 ]
  br i1 %679, label %816, label %931

; <label>:816                                     ; preds = %814
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 2
  %819 = extractvalue %dx.types.CBufRet.f32 %817, 3
  %820 = fmul fast float %818, %45
  %821 = fmul fast float %819, %46
  %822 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  %823 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  %824 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %822, float %823, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = extractvalue %dx.types.ResRet.f32 %824, 3
  %829 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %822, float %823, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 0
  %831 = extractvalue %dx.types.ResRet.f32 %829, 1
  %832 = extractvalue %dx.types.ResRet.f32 %829, 2
  %833 = extractvalue %dx.types.ResRet.f32 %829, 3
  %834 = call float @dx.op.binary.f32(i32 35, float %826, float %827)  ; FMax(a,b)
  %835 = call float @dx.op.binary.f32(i32 35, float %825, float %834)  ; FMax(a,b)
  %836 = call float @dx.op.binary.f32(i32 35, float %835, float %828)  ; FMax(a,b)
  %837 = call float @dx.op.binary.f32(i32 36, float %831, float %832)  ; FMin(a,b)
  %838 = call float @dx.op.binary.f32(i32 36, float %830, float %837)  ; FMin(a,b)
  %839 = call float @dx.op.binary.f32(i32 36, float %838, float %833)  ; FMin(a,b)
  %840 = fmul fast float %836, 2.550000e+02
  %841 = fadd fast float %840, 0x3F70101020000000
  %842 = fptoui float %841 to i32
  %843 = fmul fast float %839, 2.550000e+02
  %844 = fadd fast float %843, 0x3F70101020000000
  %845 = fptoui float %844 to i32
  %846 = icmp ult i32 %842, %845
  br i1 %846, label %847, label %889

; <label>:847                                     ; preds = %816
  %848 = fcmp fast ogt float %37, 9.843750e-01
  %849 = fadd fast float %38, -4.000000e+00
  %850 = select i1 %848, float -4.000000e+00, float %849
  %851 = call float @dx.op.binary.f32(i32 35, float %850, float 0.000000e+00)  ; FMax(a,b)
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 0
  %854 = fadd fast float %853, %851
  %855 = extractvalue %dx.types.CBufRet.f32 %852, 2
  %856 = fmul fast float %854, %855
  %857 = call float @dx.op.unary.f32(i32 23, float %856)  ; Log(value)
  %858 = extractvalue %dx.types.CBufRet.f32 %852, 3
  %859 = fmul fast float %858, %857
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %862 = fmul fast float %859, %861
  %863 = call float @dx.op.unary.f32(i32 7, float %862)  ; Saturate(value)
  %864 = uitofp i32 %842 to float
  %865 = uitofp i32 %845 to float
  %866 = fadd fast float %864, 5.000000e-01
  %867 = fadd fast float %865, 5.000000e-01
  %868 = fmul fast float %861, %866
  %869 = fmul fast float %861, %867
  %870 = fadd fast float %868, 0x3F0FFB4800000000
  %871 = fadd fast float %869, 0xBF0FFB4800000000
  %872 = call float @dx.op.binary.f32(i32 35, float %863, float %870)  ; FMax(a,b)
  %873 = call float @dx.op.binary.f32(i32 36, float %872, float %871)  ; FMin(a,b)
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 1
  %876 = extractvalue %dx.types.CBufRet.f32 %874, 2
  %877 = extractvalue %dx.types.CBufRet.f32 %874, 0
  %878 = fmul fast float %875, %873
  %879 = fadd fast float %877, %878
  %880 = fadd fast float %877, %876
  %881 = fsub fast float %875, %876
  %882 = fadd fast float %881, %877
  %883 = call float @dx.op.binary.f32(i32 35, float %879, float %880)  ; FMax(a,b)
  %884 = call float @dx.op.binary.f32(i32 36, float %883, float %882)  ; FMin(a,b)
  %885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %822, float %823, float %884, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = extractvalue %dx.types.ResRet.f32 %885, 2
  br label %889

; <label>:889                                     ; preds = %847, %816
  %890 = phi float [ %886, %847 ], [ 1.000000e+00, %816 ]
  %891 = phi float [ %887, %847 ], [ 1.000000e+00, %816 ]
  %892 = phi float [ %888, %847 ], [ 1.000000e+00, %816 ]
  %893 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %894 = select i1 %103, float %893, float %890
  %895 = select i1 %103, float %893, float %891
  %896 = select i1 %103, float 1.000000e+00, float %892
  %897 = fmul fast float %894, %802
  %898 = fmul fast float %895, %803
  %899 = fmul fast float %896, %804
  %900 = fmul fast float %50, %818
  %901 = fmul fast float %52, %819
  %902 = fsub fast float 1.000000e+00, %900
  %903 = fsub fast float 1.000000e+00, %901
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %906 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %907 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %908 = fmul fast float %902, %905
  %909 = fmul fast float %902, %906
  %910 = fmul fast float %902, %907
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %914 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %915 = fmul fast float %903, %912
  %916 = fmul fast float %903, %913
  %917 = fmul fast float %903, %914
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %920 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %921 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %922 = fadd fast float %915, %919
  %923 = fadd fast float %922, %908
  %924 = fadd fast float %916, %920
  %925 = fadd fast float %924, %909
  %926 = fadd fast float %917, %921
  %927 = fadd fast float %926, %910
  %928 = fmul fast float %923, %676
  %929 = fmul fast float %925, %676
  %930 = fmul fast float %927, %676
  br label %931

; <label>:931                                     ; preds = %889, %814
  %932 = phi float [ %928, %889 ], [ %80, %814 ]
  %933 = phi float [ %929, %889 ], [ %81, %814 ]
  %934 = phi float [ %930, %889 ], [ %82, %814 ]
  %935 = phi float [ %676, %889 ], [ %38, %814 ]
  %936 = phi float [ %897, %889 ], [ %802, %814 ]
  %937 = phi float [ %898, %889 ], [ %803, %814 ]
  %938 = phi float [ %899, %889 ], [ %804, %814 ]
  %939 = phi float [ %890, %889 ], [ 1.000000e+00, %814 ]
  br i1 %684, label %1817, label %940

; <label>:940                                     ; preds = %931
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %943 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %944 = extractvalue %dx.types.CBufRet.f32 %941, 2
  %945 = extractvalue %dx.types.CBufRet.f32 %941, 3
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %948 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %949 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %950 = extractvalue %dx.types.CBufRet.f32 %946, 3
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 3
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 3
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 3
  %957 = extractvalue %dx.types.CBufRet.f32 %955, 0
  %958 = extractvalue %dx.types.CBufRet.f32 %955, 1
  %959 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %960 = fcmp fast olt float %959, -5.000000e-01
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 3
  %963 = call float @dx.op.dot3.f32(i32 55, float %932, float %933, float %934, float %932, float %933, float %934)  ; Dot3(ax,ay,az,bx,by,bz)
  %964 = call float @dx.op.unary.f32(i32 25, float %963)  ; Rsqrt(value)
  %965 = fmul fast float %964, %963
  %966 = fmul fast float %964, %932
  %967 = fmul fast float %964, %933
  %968 = fmul fast float %964, %934
  %969 = fadd fast float %965, %945
  %970 = call float @dx.op.dot3.f32(i32 55, float %966, float %967, float %968, float %942, float %943, float %944)  ; Dot3(ax,ay,az,bx,by,bz)
  %971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.i32 %971, 1
  %973 = and i32 %972, 1
  %974 = icmp ne i32 %973, 0
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 2
  %977 = fcmp fast ogt float %976, 0.000000e+00
  %978 = and i1 %974, %977
  br i1 %978, label %979, label %1318, !dx.controlflow.hints !69

; <label>:979                                     ; preds = %940
  %980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %981 = extractvalue %dx.types.CBufRet.f32 %980, 3
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 2
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 2
  %986 = fsub fast float %983, %985
  %987 = and i32 %972, 2
  %988 = extractvalue %dx.types.CBufRet.i32 %971, 0
  %989 = call i32 @dx.op.binary.i32(i32 40, i32 %988, i32 3)  ; UMin(a,b)
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 0
  %992 = extractvalue %dx.types.CBufRet.f32 %990, 1
  %993 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %994 = extractvalue %dx.types.CBufRet.f32 %984, 1
  %995 = fsub fast float %991, %993
  %996 = fsub fast float %992, %994
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %999 = fcmp fast ogt float %998, 0.000000e+00
  %1000 = fsub fast float -0.000000e+00, %995
  %1001 = fsub fast float -0.000000e+00, %996
  %1002 = call float @dx.op.dot2.f32(i32 54, float %966, float %967, float %966, float %967)  ; Dot2(ax,ay,bx,by)
  %1003 = call float @dx.op.dot2.f32(i32 54, float %966, float %967, float %1000, float %1001)  ; Dot2(ax,ay,bx,by)
  %1004 = fmul fast float %1003, 2.000000e+00
  %1005 = call float @dx.op.dot2.f32(i32 54, float %1000, float %1001, float %1000, float %1001)  ; Dot2(ax,ay,bx,by)
  %1006 = fmul fast float %998, %998
  %1007 = fsub fast float %1005, %1006
  %1008 = fmul fast float %1004, %1004
  %1009 = fmul fast float %1002, 4.000000e+00
  %1010 = fmul fast float %1009, %1007
  %1011 = fsub fast float %1008, %1010
  %1012 = fcmp fast ogt float %1011, 0.000000e+00
  br i1 %1012, label %1013, label %1028

; <label>:1013                                    ; preds = %979
  %1014 = fcmp fast ogt float %1004, 0.000000e+00
  %1015 = call float @dx.op.unary.f32(i32 24, float %1011)  ; Sqrt(value)
  %1016 = fsub fast float -0.000000e+00, %1015
  %1017 = select i1 %1014, float %1015, float %1016
  %1018 = fadd fast float %1017, %1004
  %1019 = fmul float %1018, -5.000000e-01
  %1020 = fdiv fast float %1019, %1002
  %1021 = call float @dx.op.binary.f32(i32 35, float %1020, float 0.000000e+00)  ; FMax(a,b)
  %1022 = call float @dx.op.binary.f32(i32 36, float %965, float %1021)  ; FMin(a,b)
  %1023 = fdiv fast float %1007, %1019
  %1024 = call float @dx.op.binary.f32(i32 35, float %1023, float 0.000000e+00)  ; FMax(a,b)
  %1025 = call float @dx.op.binary.f32(i32 36, float %965, float %1024)  ; FMin(a,b)
  %1026 = call float @dx.op.binary.f32(i32 36, float %1022, float %1025)  ; FMin(a,b)
  %1027 = call float @dx.op.binary.f32(i32 35, float %1022, float %1025)  ; FMax(a,b)
  br label %1028

; <label>:1028                                    ; preds = %1013, %979
  %1029 = phi float [ %1027, %1013 ], [ -1.000000e+00, %979 ]
  %1030 = phi float [ %1026, %1013 ], [ -1.000000e+00, %979 ]
  %1031 = phi i1 [ true, %1013 ], [ false, %979 ]
  %1032 = and i1 %999, %1031
  br i1 %1032, label %1033, label %1035

; <label>:1033                                    ; preds = %1028
  %1034 = fcmp fast oeq float %1030, %1029
  br i1 %1034, label %1278, label %1036

; <label>:1035                                    ; preds = %1028
  br i1 %999, label %1278, label %1036

; <label>:1036                                    ; preds = %1035, %1033
  %1037 = phi float [ %965, %1035 ], [ %1029, %1033 ]
  %1038 = phi float [ 0.000000e+00, %1035 ], [ %1030, %1033 ]
  %1039 = icmp ne i32 %987, 0
  %1040 = fmul fast float %1037, %968
  %1041 = fadd fast float %1040, %981
  %1042 = fmul fast float %1041, %1037
  %1043 = select i1 %1039, float 0.000000e+00, float %1042
  %1044 = fcmp fast oeq float %968, 0.000000e+00
  %1045 = fdiv fast float %986, %968
  %1046 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1045)  ; FMax(a,b)
  %1047 = select i1 %1044, float %1037, float %1046
  %1048 = call float @dx.op.binary.f32(i32 36, float %1037, float %1047)  ; FMin(a,b)
  %1049 = fcmp fast ogt float %968, 0.000000e+00
  %1050 = fcmp fast olt float %986, 0.000000e+00
  br i1 %1049, label %1051, label %1088

; <label>:1051                                    ; preds = %1036
  %1052 = icmp eq i32 %987, 0
  br i1 %1050, label %1053, label %1077

; <label>:1053                                    ; preds = %1051
  %1054 = select i1 %1052, float %1037, float 0.000000e+00
  %1055 = fsub fast float -0.000000e+00, %1054
  %1056 = call float @dx.op.unary.f32(i32 6, float %1055)  ; FAbs(value)
  %1057 = fmul fast float %1054, %968
  %1058 = fadd fast float %1057, %981
  %1059 = fmul fast float %1056, %1058
  %1060 = fsub fast float %1043, %1059
  %1061 = fsub fast float %1037, %1056
  %1062 = select i1 %1052, float %1061, float 0.000000e+00
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 3
  %1065 = call float @dx.op.binary.f32(i32 36, float %1060, float %1064)  ; FMin(a,b)
  %1066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.CBufRet.f32 %1066, 1
  %1069 = fadd fast float %1068, %1067
  %1070 = call float @dx.op.unary.f32(i32 7, float %1069)  ; Saturate(value)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1066, 2
  %1072 = extractvalue %dx.types.CBufRet.f32 %1066, 3
  %1073 = fadd fast float %1072, %1071
  %1074 = call float @dx.op.unary.f32(i32 7, float %1073)  ; Saturate(value)
  %1075 = fmul fast float %1070, %1065
  %1076 = fmul fast float %1075, %1074
  br label %1278

; <label>:1077                                    ; preds = %1051
  br i1 %1052, label %1078, label %1099

; <label>:1078                                    ; preds = %1077
  %1079 = call float @dx.op.binary.f32(i32 36, float %1048, float %1038)  ; FMin(a,b)
  %1080 = fsub fast float %1048, %1079
  %1081 = fsub fast float %1080, %1037
  %1082 = call float @dx.op.unary.f32(i32 6, float %1081)  ; FAbs(value)
  %1083 = fadd fast float %1080, %1037
  %1084 = fmul fast float %1083, %968
  %1085 = fadd fast float %1084, %981
  %1086 = fmul fast float %1085, %1082
  %1087 = fsub fast float %1043, %1086
  br label %1099

; <label>:1088                                    ; preds = %1036
  br i1 %1050, label %1089, label %1099

; <label>:1089                                    ; preds = %1088
  %1090 = call float @dx.op.binary.f32(i32 35, float %1038, float %1048)  ; FMax(a,b)
  %1091 = icmp eq i32 %987, 0
  %1092 = select i1 %1091, float %1048, float 0.000000e+00
  %1093 = fsub fast float -0.000000e+00, %1092
  %1094 = call float @dx.op.unary.f32(i32 6, float %1093)  ; FAbs(value)
  %1095 = fmul fast float %1092, %968
  %1096 = fadd fast float %1095, %981
  %1097 = fmul fast float %1094, %1096
  %1098 = fsub fast float %1043, %1097
  br label %1099

; <label>:1099                                    ; preds = %1089, %1088, %1078, %1077
  %1100 = phi float [ %1038, %1077 ], [ %1038, %1078 ], [ %1090, %1089 ], [ %1038, %1088 ]
  %1101 = phi float [ 0.000000e+00, %1077 ], [ %1082, %1078 ], [ %1094, %1089 ], [ 0.000000e+00, %1088 ]
  %1102 = phi float [ %1043, %1077 ], [ %1087, %1078 ], [ %1098, %1089 ], [ %1043, %1088 ]
  %1103 = phi float [ %1048, %1077 ], [ %1048, %1078 ], [ %1037, %1089 ], [ %1037, %1088 ]
  %1104 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 0
  store float -1.000000e+00, float* %1104, align 4, !tbaa !70, !noalias !74
  %1105 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 1
  store float -1.000000e+00, float* %1105, align 4, !tbaa !70, !noalias !74
  %1106 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 2
  store float -1.000000e+00, float* %1106, align 4, !tbaa !70, !noalias !74
  %1107 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 0
  store float -1.000000e+00, float* %1107, align 4, !tbaa !70, !noalias !74
  %1108 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 1
  store float -1.000000e+00, float* %1108, align 4, !tbaa !70, !noalias !74
  %1109 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 2
  store float -1.000000e+00, float* %1109, align 4, !tbaa !70, !noalias !74
  %1110 = icmp sgt i32 %989, 0
  br i1 %1110, label %1111, label %1172

; <label>:1111                                    ; preds = %1099
  br label %1112

; <label>:1112                                    ; preds = %1161, %1111
  %1113 = phi i32 [ %1162, %1161 ], [ 0, %1111 ]
  %1114 = phi i32 [ %1163, %1161 ], [ 0, %1111 ]
  %1115 = add nuw i32 %1114, 171
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1115)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.CBufRet.f32 %1116, 1
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.CBufRet.f32 %1119, 1
  %1122 = fsub fast float %1117, %1120
  %1123 = fsub fast float %1118, %1121
  %1124 = extractvalue %dx.types.CBufRet.f32 %1116, 2
  %1125 = fsub fast float -0.000000e+00, %1122
  %1126 = fsub fast float -0.000000e+00, %1123
  %1127 = call float @dx.op.dot2.f32(i32 54, float %966, float %967, float %1125, float %1126)  ; Dot2(ax,ay,bx,by)
  %1128 = fmul fast float %1127, 2.000000e+00
  %1129 = call float @dx.op.dot2.f32(i32 54, float %1125, float %1126, float %1125, float %1126)  ; Dot2(ax,ay,bx,by)
  %1130 = fmul fast float %1124, %1124
  %1131 = fsub fast float %1129, %1130
  %1132 = fmul fast float %1128, %1128
  %1133 = fmul fast float %1009, %1131
  %1134 = fsub fast float %1132, %1133
  %1135 = fcmp fast ogt float %1134, 0.000000e+00
  br i1 %1135, label %1136, label %1151

; <label>:1136                                    ; preds = %1112
  %1137 = fcmp fast ogt float %1128, 0.000000e+00
  %1138 = call float @dx.op.unary.f32(i32 24, float %1134)  ; Sqrt(value)
  %1139 = fsub fast float -0.000000e+00, %1138
  %1140 = select i1 %1137, float %1138, float %1139
  %1141 = fadd fast float %1140, %1128
  %1142 = fmul float %1141, -5.000000e-01
  %1143 = fdiv fast float %1142, %1002
  %1144 = call float @dx.op.binary.f32(i32 35, float %1143, float 0.000000e+00)  ; FMax(a,b)
  %1145 = call float @dx.op.binary.f32(i32 36, float %1037, float %1144)  ; FMin(a,b)
  %1146 = fdiv fast float %1131, %1142
  %1147 = call float @dx.op.binary.f32(i32 35, float %1146, float 0.000000e+00)  ; FMax(a,b)
  %1148 = call float @dx.op.binary.f32(i32 36, float %1037, float %1147)  ; FMin(a,b)
  %1149 = call float @dx.op.binary.f32(i32 36, float %1145, float %1148)  ; FMin(a,b)
  %1150 = call float @dx.op.binary.f32(i32 35, float %1145, float %1148)  ; FMax(a,b)
  br label %1151

; <label>:1151                                    ; preds = %1136, %1112
  %1152 = phi float [ %1150, %1136 ], [ -1.000000e+00, %1112 ]
  %1153 = phi float [ %1149, %1136 ], [ -1.000000e+00, %1112 ]
  %1154 = phi i1 [ true, %1136 ], [ false, %1112 ]
  br i1 %1154, label %1155, label %1161

; <label>:1155                                    ; preds = %1151
  %1156 = call float @dx.op.binary.f32(i32 35, float %1100, float %1153)  ; FMax(a,b)
  %1157 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1114
  store float %1156, float* %1157, align 4, !tbaa !70, !noalias !74
  %1158 = call float @dx.op.binary.f32(i32 35, float %1100, float %1152)  ; FMax(a,b)
  %1159 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %1114
  store float %1158, float* %1159, align 4, !tbaa !70, !noalias !74
  %1160 = add nsw i32 %1113, 1
  br label %1161

; <label>:1161                                    ; preds = %1155, %1151
  %1162 = phi i32 [ %1160, %1155 ], [ %1113, %1151 ]
  %1163 = add nuw nsw i32 %1114, 1
  %1164 = icmp eq i32 %1163, %989
  br i1 %1164, label %1165, label %1112

; <label>:1165                                    ; preds = %1161
  %1166 = load float, float* %1106, align 4, !tbaa !70, !alias.scope !90, !noalias !93
  %1167 = load float, float* %1105, align 4, !tbaa !70, !alias.scope !96, !noalias !97
  %1168 = load float, float* %1104, align 4, !tbaa !70, !alias.scope !98, !noalias !99
  %1169 = load float, float* %1109, align 4, !tbaa !70, !alias.scope !100, !noalias !103
  %1170 = load float, float* %1108, align 4, !tbaa !70, !alias.scope !106, !noalias !107
  %1171 = load float, float* %1107, align 4, !tbaa !70, !alias.scope !108, !noalias !109
  br label %1172

; <label>:1172                                    ; preds = %1165, %1099
  %1173 = phi float [ -1.000000e+00, %1099 ], [ %1171, %1165 ]
  %1174 = phi float [ -1.000000e+00, %1099 ], [ %1170, %1165 ]
  %1175 = phi float [ -1.000000e+00, %1099 ], [ %1169, %1165 ]
  %1176 = phi float [ -1.000000e+00, %1099 ], [ %1168, %1165 ]
  %1177 = phi float [ -1.000000e+00, %1099 ], [ %1167, %1165 ]
  %1178 = phi float [ -1.000000e+00, %1099 ], [ %1166, %1165 ]
  %1179 = phi i32 [ 0, %1099 ], [ %1162, %1165 ]
  %1180 = call float @dx.op.binary.f32(i32 36, float %1177, float %1178)  ; FMin(a,b)
  %1181 = call float @dx.op.binary.f32(i32 36, float %1176, float %1180)  ; FMin(a,b)
  %1182 = call float @dx.op.binary.f32(i32 35, float %1176, float %1177)  ; FMax(a,b)
  %1183 = call float @dx.op.binary.f32(i32 36, float %1182, float %1178)  ; FMin(a,b)
  %1184 = call float @dx.op.binary.f32(i32 36, float %1176, float %1177)  ; FMin(a,b)
  %1185 = call float @dx.op.binary.f32(i32 35, float %1184, float %1183)  ; FMax(a,b)
  %1186 = call float @dx.op.binary.f32(i32 35, float %1177, float %1178)  ; FMax(a,b)
  %1187 = call float @dx.op.binary.f32(i32 35, float %1176, float %1186)  ; FMax(a,b)
  store float %1181, float* %1104, align 4, !tbaa !70, !alias.scope !98, !noalias !99
  store float %1185, float* %1105, align 4, !tbaa !70, !alias.scope !96, !noalias !97
  store float %1187, float* %1106, align 4, !tbaa !70, !alias.scope !90, !noalias !93
  %1188 = call float @dx.op.binary.f32(i32 36, float %1174, float %1175)  ; FMin(a,b)
  %1189 = call float @dx.op.binary.f32(i32 36, float %1173, float %1188)  ; FMin(a,b)
  %1190 = call float @dx.op.binary.f32(i32 35, float %1173, float %1174)  ; FMax(a,b)
  %1191 = call float @dx.op.binary.f32(i32 36, float %1190, float %1175)  ; FMin(a,b)
  %1192 = call float @dx.op.binary.f32(i32 36, float %1173, float %1174)  ; FMin(a,b)
  %1193 = call float @dx.op.binary.f32(i32 35, float %1192, float %1191)  ; FMax(a,b)
  %1194 = call float @dx.op.binary.f32(i32 35, float %1174, float %1175)  ; FMax(a,b)
  %1195 = call float @dx.op.binary.f32(i32 35, float %1173, float %1194)  ; FMax(a,b)
  store float %1189, float* %1107, align 4, !tbaa !70, !alias.scope !108, !noalias !109
  store float %1193, float* %1108, align 4, !tbaa !70, !alias.scope !106, !noalias !107
  store float %1195, float* %1109, align 4, !tbaa !70, !alias.scope !100, !noalias !103
  %1196 = sub nsw i32 3, %1179
  %1197 = icmp sgt i32 %1196, 2
  br i1 %1197, label %1198, label %1216

; <label>:1198                                    ; preds = %1172
  %1199 = icmp eq i32 %987, 0
  %1200 = fsub fast float %1037, %1101
  %1201 = select i1 %1199, float %1200, float %1101
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 3
  %1204 = call float @dx.op.binary.f32(i32 36, float %1102, float %1203)  ; FMin(a,b)
  %1205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.CBufRet.f32 %1205, 1
  %1208 = fadd fast float %1207, %1206
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1205, 2
  %1211 = extractvalue %dx.types.CBufRet.f32 %1205, 3
  %1212 = fadd fast float %1211, %1210
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1214 = fmul fast float %1209, %1204
  %1215 = fmul fast float %1214, %1213
  br label %1278

; <label>:1216                                    ; preds = %1172
  %1217 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1196
  %1218 = load float, float* %1217, align 4, !tbaa !70, !noalias !74
  %1219 = fcmp fast olt float %1218, %1103
  %1220 = icmp sgt i32 %1179, 0
  %1221 = and i1 %1220, %1219
  br i1 %1221, label %1222, label %1259

; <label>:1222                                    ; preds = %1216
  br label %1223

; <label>:1223                                    ; preds = %1252, %1222
  %1224 = phi float [ %1253, %1252 ], [ %1101, %1222 ]
  %1225 = phi float [ %1254, %1252 ], [ %1102, %1222 ]
  %1226 = phi float [ %1234, %1252 ], [ %1218, %1222 ]
  %1227 = phi i32 [ %1231, %1252 ], [ %1196, %1222 ]
  %1228 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %1227
  %1229 = load float, float* %1228, align 4, !tbaa !70, !noalias !74
  %1230 = icmp slt i32 %1227, 2
  %1231 = add nsw i32 %1227, 1
  %1232 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1231
  %1233 = load float, float* %1232, align 4, !tbaa !70, !noalias !74
  %1234 = select i1 %1230, float %1233, float %1037
  %1235 = call float @dx.op.binary.f32(i32 36, float %1234, float %1229)  ; FMin(a,b)
  %1236 = call float @dx.op.binary.f32(i32 36, float %1103, float %1235)  ; FMin(a,b)
  %1237 = icmp eq i32 %987, 0
  %1238 = fadd fast float %1236, %1226
  %1239 = fmul fast float %1238, %968
  %1240 = fadd fast float %1239, %981
  br i1 %1237, label %1246, label %1241

; <label>:1241                                    ; preds = %1223
  %1242 = fsub fast float %1236, %1226
  %1243 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1242)  ; FMax(a,b)
  %1244 = fmul fast float %1243, %1240
  %1245 = fadd fast float %1244, %1225
  br label %1252

; <label>:1246                                    ; preds = %1223
  %1247 = fsub fast float %1226, %1236
  %1248 = call float @dx.op.unary.f32(i32 6, float %1247)  ; FAbs(value)
  %1249 = fadd fast float %1248, %1224
  %1250 = fmul fast float %1248, %1240
  %1251 = fsub fast float %1225, %1250
  br label %1252

; <label>:1252                                    ; preds = %1246, %1241
  %1253 = phi float [ %1243, %1241 ], [ %1249, %1246 ]
  %1254 = phi float [ %1245, %1241 ], [ %1251, %1246 ]
  %1255 = fcmp fast olt float %1234, %1103
  %1256 = icmp slt i32 %1231, 3
  %1257 = and i1 %1256, %1255
  br i1 %1257, label %1223, label %1258

; <label>:1258                                    ; preds = %1252
  br label %1259

; <label>:1259                                    ; preds = %1258, %1216
  %1260 = phi float [ %1101, %1216 ], [ %1253, %1258 ]
  %1261 = phi float [ %1102, %1216 ], [ %1254, %1258 ]
  %1262 = fsub fast float %1037, %1260
  %1263 = select i1 %1039, float %1260, float %1262
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 3
  %1266 = call float @dx.op.binary.f32(i32 36, float %1261, float %1265)  ; FMin(a,b)
  %1267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1268 = extractvalue %dx.types.CBufRet.f32 %1267, 0
  %1269 = extractvalue %dx.types.CBufRet.f32 %1267, 1
  %1270 = fadd fast float %1269, %1268
  %1271 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1267, 2
  %1273 = extractvalue %dx.types.CBufRet.f32 %1267, 3
  %1274 = fadd fast float %1273, %1272
  %1275 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1276 = fmul fast float %1271, %1266
  %1277 = fmul fast float %1276, %1275
  br label %1278

; <label>:1278                                    ; preds = %1259, %1198, %1053, %1035, %1033
  %1279 = phi float [ %1062, %1053 ], [ %1201, %1198 ], [ %1263, %1259 ], [ 0.000000e+00, %1033 ], [ 0.000000e+00, %1035 ]
  %1280 = phi float [ %1076, %1053 ], [ %1215, %1198 ], [ %1277, %1259 ], [ 0.000000e+00, %1033 ], [ 0.000000e+00, %1035 ]
  %1281 = fmul fast float %976, %1280
  %1282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1283 = extractvalue %dx.types.CBufRet.f32 %1282, 2
  %1284 = fsub fast float %983, %1283
  %1285 = fcmp fast olt float %1281, -2.000000e+01
  %1286 = call float @dx.op.unary.f32(i32 21, float %1281)  ; Exp(value)
  %1287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1288 = extractvalue %dx.types.CBufRet.f32 %1287, 2
  %1289 = extractvalue %dx.types.CBufRet.f32 %1287, 3
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 2
  %1292 = fmul fast float %1289, %1284
  %1293 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1294 = fsub fast float 1.000000e+00, %1293
  %1295 = fmul fast float %968, 5.000000e-01
  %1296 = fadd fast float %1295, 5.000000e-01
  %1297 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1298 = fsub fast float 1.000000e+00, %1297
  %1299 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1294)  ; FMax(a,b)
  %1300 = fdiv fast float %1298, %1299
  %1301 = fsub fast float %1284, %934
  %1302 = call float @dx.op.unary.f32(i32 6, float %1301)  ; FAbs(value)
  %1303 = fmul fast float %1302, %1288
  %1304 = call float @dx.op.unary.f32(i32 7, float %1300)  ; Saturate(value)
  %1305 = fsub fast float 1.000000e+00, %1303
  %1306 = fmul fast float %1305, %1304
  %1307 = fadd fast float %1306, %1303
  %1308 = fmul fast float %1291, %1284
  %1309 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1310 = fsub fast float 1.000000e+00, %1307
  %1311 = fmul fast float %1310, %1309
  %1312 = fadd fast float %1311, %1307
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1314 = fadd fast float %1286, -1.000000e+00
  %1315 = select i1 %1285, float -1.000000e+00, float %1314
  %1316 = fmul fast float %1313, %1315
  %1317 = fadd fast float %1316, 1.000000e+00
  br label %1318

; <label>:1318                                    ; preds = %1278, %940
  %1319 = phi float [ %1279, %1278 ], [ 0.000000e+00, %940 ]
  %1320 = phi float [ %1317, %1278 ], [ 1.000000e+00, %940 ]
  %1321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1322 = extractvalue %dx.types.CBufRet.f32 %1321, 1
  %1323 = fsub fast float 1.000000e+00, %1320
  %1324 = fmul fast float %1323, %969
  %1325 = fmul fast float %1324, %1322
  %1326 = fsub fast float %969, %1325
  br i1 %960, label %1327, label %1343, !dx.controlflow.hints !110

; <label>:1327                                    ; preds = %1318
  %1328 = fmul fast float %970, %957
  %1329 = fadd fast float %1328, %958
  %1330 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1331 = fmul fast float %947, %1326
  %1332 = fsub fast float -0.000000e+00, %1331
  %1333 = fmul fast float %948, %1326
  %1334 = fsub fast float -0.000000e+00, %1333
  %1335 = call float @dx.op.unary.f32(i32 21, float %1332)  ; Exp(value)
  %1336 = call float @dx.op.unary.f32(i32 21, float %1334)  ; Exp(value)
  %1337 = call float @dx.op.binary.f32(i32 35, float %962, float %1335)  ; FMax(a,b)
  %1338 = call float @dx.op.binary.f32(i32 35, float %962, float %1336)  ; FMax(a,b)
  %1339 = fsub fast float %1338, %1337
  %1340 = fmul fast float %1339, %1330
  %1341 = fadd fast float %1340, %1337
  %1342 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  br label %1376

; <label>:1343                                    ; preds = %1318
  %1344 = fmul fast float %1326, %956
  %1345 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1346 = fsub fast float 2.000000e+00, %1345
  %1347 = fmul fast float %1345, 9.921875e-01
  %1348 = fmul fast float %1347, %1346
  %1349 = fadd fast float %1348, 3.906250e-03
  %1350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1349, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1351 = extractvalue %dx.types.ResRet.f32 %1350, 0
  %1352 = fsub fast float %1345, %1351
  %1353 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1352)  ; FMax(a,b)
  %1354 = fmul fast float %950, %934
  %1355 = call float @dx.op.unary.f32(i32 6, float %1354)  ; FAbs(value)
  %1356 = fcmp fast ogt float %1355, 0x3EB0C6F7A0000000
  br i1 %1356, label %1357, label %1363, !dx.controlflow.hints !111

; <label>:1357                                    ; preds = %1343
  %1358 = fmul fast float %1354, 0xBFF7154760000000
  %1359 = call float @dx.op.unary.f32(i32 21, float %1358)  ; Exp(value)
  %1360 = fsub fast float 1.000000e+00, %1359
  %1361 = fdiv fast float %1360, %1354
  %1362 = fmul fast float %1361, %952
  br label %1363

; <label>:1363                                    ; preds = %1357, %1343
  %1364 = phi float [ %1362, %1357 ], [ %952, %1343 ]
  %1365 = fadd fast float %1364, %954
  %1366 = fmul fast float %1365, %1353
  %1367 = fmul fast float %947, %1366
  %1368 = fsub fast float -0.000000e+00, %1367
  %1369 = fmul fast float %948, %1366
  %1370 = fsub fast float -0.000000e+00, %1369
  %1371 = fmul fast float %949, %1366
  %1372 = fsub fast float -0.000000e+00, %1371
  %1373 = call float @dx.op.unary.f32(i32 21, float %1368)  ; Exp(value)
  %1374 = call float @dx.op.unary.f32(i32 21, float %1370)  ; Exp(value)
  %1375 = call float @dx.op.unary.f32(i32 21, float %1372)  ; Exp(value)
  br label %1376

; <label>:1376                                    ; preds = %1363, %1327
  %1377 = phi float [ %1342, %1327 ], [ %1373, %1363 ]
  %1378 = phi float [ %1342, %1327 ], [ %1374, %1363 ]
  %1379 = phi float [ %1342, %1327 ], [ %1375, %1363 ]
  br i1 %978, label %1380, label %1476, !dx.controlflow.hints !112

; <label>:1380                                    ; preds = %1376
  %1381 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1377)  ; FMax(a,b)
  %1382 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1378)  ; FMax(a,b)
  %1383 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1379)  ; FMax(a,b)
  %1384 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1320)  ; FMax(a,b)
  %1385 = call float @dx.op.binary.f32(i32 35, float %1319, float %1326)  ; FMax(a,b)
  %1386 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1385)  ; FMax(a,b)
  %1387 = fdiv fast float %1319, %1386
  %1388 = call float @dx.op.unary.f32(i32 7, float %1387)  ; Saturate(value)
  %1389 = fdiv fast float %1326, %1386
  %1390 = call float @dx.op.unary.f32(i32 7, float %1389)  ; Saturate(value)
  %1391 = fcmp fast une float %1384, 1.000000e+00
  br i1 %1391, label %1392, label %1395, !dx.controlflow.hints !113

; <label>:1392                                    ; preds = %1380
  %1393 = call float @dx.op.unary.f32(i32 23, float %1384)  ; Log(value)
  %1394 = fmul fast float %1393, 0x3FE62E4300000000
  br label %1395

; <label>:1395                                    ; preds = %1392, %1380
  %1396 = phi float [ %1394, %1392 ], [ 0.000000e+00, %1380 ]
  %1397 = fcmp fast une float %1381, 1.000000e+00
  br i1 %1397, label %1398, label %1401, !dx.controlflow.hints !114

; <label>:1398                                    ; preds = %1395
  %1399 = call float @dx.op.unary.f32(i32 23, float %1381)  ; Log(value)
  %1400 = fmul fast float %1399, 0x3FE62E4300000000
  br label %1401

; <label>:1401                                    ; preds = %1398, %1395
  %1402 = phi float [ %1400, %1398 ], [ 0.000000e+00, %1395 ]
  %1403 = fcmp fast une float %1382, 1.000000e+00
  br i1 %1403, label %1404, label %1407, !dx.controlflow.hints !114

; <label>:1404                                    ; preds = %1401
  %1405 = call float @dx.op.unary.f32(i32 23, float %1382)  ; Log(value)
  %1406 = fmul fast float %1405, 0x3FE62E4300000000
  br label %1407

; <label>:1407                                    ; preds = %1404, %1401
  %1408 = phi float [ %1406, %1404 ], [ 0.000000e+00, %1401 ]
  %1409 = fcmp fast une float %1383, 1.000000e+00
  br i1 %1409, label %1410, label %1413, !dx.controlflow.hints !114

; <label>:1410                                    ; preds = %1407
  %1411 = call float @dx.op.unary.f32(i32 23, float %1383)  ; Log(value)
  %1412 = fmul fast float %1411, 0x3FE62E4300000000
  br label %1413

; <label>:1413                                    ; preds = %1410, %1407
  %1414 = phi float [ %1412, %1410 ], [ 0.000000e+00, %1407 ]
  %1415 = fmul fast float %1396, %1390
  %1416 = fmul fast float %1402, %1388
  %1417 = fmul fast float %1408, %1388
  %1418 = fmul fast float %1414, %1388
  %1419 = fadd fast float %1416, %1415
  %1420 = fadd fast float %1417, %1415
  %1421 = fadd fast float %1418, %1415
  %1422 = fcmp fast une float %1419, 0.000000e+00
  br i1 %1422, label %1423, label %1426, !dx.controlflow.hints !115

; <label>:1423                                    ; preds = %1413
  %1424 = fmul fast float %1419, 0x3FF7154760000000
  %1425 = call float @dx.op.unary.f32(i32 21, float %1424)  ; Exp(value)
  br label %1426

; <label>:1426                                    ; preds = %1423, %1413
  %1427 = phi float [ %1425, %1423 ], [ 1.000000e+00, %1413 ]
  %1428 = fcmp fast une float %1420, 0.000000e+00
  br i1 %1428, label %1429, label %1432, !dx.controlflow.hints !115

; <label>:1429                                    ; preds = %1426
  %1430 = fmul fast float %1420, 0x3FF7154760000000
  %1431 = call float @dx.op.unary.f32(i32 21, float %1430)  ; Exp(value)
  br label %1432

; <label>:1432                                    ; preds = %1429, %1426
  %1433 = phi float [ %1431, %1429 ], [ 1.000000e+00, %1426 ]
  %1434 = fcmp fast une float %1421, 0.000000e+00
  br i1 %1434, label %1435, label %1438, !dx.controlflow.hints !115

; <label>:1435                                    ; preds = %1432
  %1436 = fmul fast float %1421, 0x3FF7154760000000
  %1437 = call float @dx.op.unary.f32(i32 21, float %1436)  ; Exp(value)
  br label %1438

; <label>:1438                                    ; preds = %1435, %1432
  %1439 = phi float [ %1437, %1435 ], [ 1.000000e+00, %1432 ]
  %1440 = fcmp fast ogt float %1388, %1390
  br i1 %1440, label %1441, label %1448

; <label>:1441                                    ; preds = %1438
  %1442 = fsub fast float 1.000000e+00, %1390
  %1443 = fmul fast float %1396, %1442
  %1444 = fcmp fast une float %1443, 0.000000e+00
  br i1 %1444, label %1445, label %1469, !dx.controlflow.hints !116

; <label>:1445                                    ; preds = %1441
  %1446 = fmul fast float %1443, 0x3FF7154760000000
  %1447 = call float @dx.op.unary.f32(i32 21, float %1446)  ; Exp(value)
  br label %1469

; <label>:1448                                    ; preds = %1438
  %1449 = fsub fast float 1.000000e+00, %1388
  %1450 = fmul fast float %1402, %1449
  %1451 = fmul fast float %1408, %1449
  %1452 = fmul fast float %1414, %1449
  %1453 = fcmp fast une float %1450, 0.000000e+00
  br i1 %1453, label %1454, label %1457, !dx.controlflow.hints !115

; <label>:1454                                    ; preds = %1448
  %1455 = fmul fast float %1450, 0x3FF7154760000000
  %1456 = call float @dx.op.unary.f32(i32 21, float %1455)  ; Exp(value)
  br label %1457

; <label>:1457                                    ; preds = %1454, %1448
  %1458 = phi float [ %1456, %1454 ], [ 1.000000e+00, %1448 ]
  %1459 = fcmp fast une float %1451, 0.000000e+00
  br i1 %1459, label %1460, label %1463, !dx.controlflow.hints !115

; <label>:1460                                    ; preds = %1457
  %1461 = fmul fast float %1451, 0x3FF7154760000000
  %1462 = call float @dx.op.unary.f32(i32 21, float %1461)  ; Exp(value)
  br label %1463

; <label>:1463                                    ; preds = %1460, %1457
  %1464 = phi float [ %1462, %1460 ], [ 1.000000e+00, %1457 ]
  %1465 = fcmp fast une float %1452, 0.000000e+00
  br i1 %1465, label %1466, label %1469, !dx.controlflow.hints !115

; <label>:1466                                    ; preds = %1463
  %1467 = fmul fast float %1452, 0x3FF7154760000000
  %1468 = call float @dx.op.unary.f32(i32 21, float %1467)  ; Exp(value)
  br label %1469

; <label>:1469                                    ; preds = %1466, %1463, %1445, %1441
  %1470 = phi float [ %1468, %1466 ], [ %1447, %1445 ], [ 1.000000e+00, %1441 ], [ 1.000000e+00, %1463 ]
  %1471 = phi float [ %1464, %1466 ], [ %1447, %1445 ], [ 1.000000e+00, %1441 ], [ %1464, %1463 ]
  %1472 = phi float [ %1458, %1466 ], [ %1447, %1445 ], [ 1.000000e+00, %1441 ], [ %1458, %1463 ]
  %1473 = fmul fast float %1472, %1427
  %1474 = fmul fast float %1471, %1433
  %1475 = fmul fast float %1470, %1439
  br label %1476

; <label>:1476                                    ; preds = %1469, %1376
  %1477 = phi float [ %1475, %1469 ], [ %1379, %1376 ]
  %1478 = phi float [ %1474, %1469 ], [ %1378, %1376 ]
  %1479 = phi float [ %1473, %1469 ], [ %1377, %1376 ]
  %1480 = fmul fast float %1479, %939
  %1481 = call float @dx.op.dot3.f32(i32 55, float %1479, float %1478, float %1477, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1482 = select i1 %103, float %1481, float %1479
  %1483 = select i1 %103, float %1481, float %1478
  %1484 = select i1 %103, float 1.000000e+00, float %1477
  %1485 = fmul fast float %1482, %936
  %1486 = fmul fast float %1483, %937
  %1487 = fmul fast float %1484, %938
  %1488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.i32 %1488, 0
  %1490 = icmp eq i32 %1489, 0
  br i1 %1490, label %1817, label %1491, !dx.controlflow.hints !117

; <label>:1491                                    ; preds = %1476
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 2
  %1494 = extractvalue %dx.types.CBufRet.f32 %1492, 3
  %1495 = fmul fast float %1493, %45
  %1496 = fmul fast float %1494, %46
  %1497 = fmul fast float %1495, 2.000000e+00
  %1498 = fmul fast float %1496, 2.000000e+00
  %1499 = fsub fast float 1.000000e+00, %1497
  %1500 = fsub fast float 1.000000e+00, %1498
  %1501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.f32 %1501, 0
  %1503 = extractvalue %dx.types.CBufRet.f32 %1501, 1
  %1504 = extractvalue %dx.types.CBufRet.f32 %1501, 2
  %1505 = fmul fast float %1499, %1502
  %1506 = fmul fast float %1499, %1503
  %1507 = fmul fast float %1499, %1504
  %1508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.f32 %1508, 0
  %1510 = extractvalue %dx.types.CBufRet.f32 %1508, 1
  %1511 = extractvalue %dx.types.CBufRet.f32 %1508, 2
  %1512 = fmul fast float %1500, %1509
  %1513 = fmul fast float %1500, %1510
  %1514 = fmul fast float %1500, %1511
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 0
  %1517 = extractvalue %dx.types.CBufRet.f32 %1515, 1
  %1518 = extractvalue %dx.types.CBufRet.f32 %1515, 2
  %1519 = fadd fast float %1512, %1516
  %1520 = fadd fast float %1519, %1505
  %1521 = fadd fast float %1513, %1517
  %1522 = fadd fast float %1521, %1506
  %1523 = fadd fast float %1514, %1518
  %1524 = fadd fast float %1523, %1507
  %1525 = fmul fast float %1520, %935
  %1526 = fmul fast float %1522, %935
  %1527 = fmul fast float %1524, %935
  %1528 = fmul fast float %1525, %1525
  %1529 = fmul fast float %1526, %1526
  %1530 = fadd fast float %1528, %1529
  %1531 = fmul fast float %1527, %1527
  %1532 = fadd fast float %1530, %1531
  %1533 = call float @dx.op.unary.f32(i32 24, float %1532)  ; Sqrt(value)
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1536 = fsub fast float %1533, %1535
  %1537 = extractvalue %dx.types.CBufRet.f32 %1534, 2
  %1538 = fmul fast float %1536, %1537
  %1539 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1540 = fadd fast float %1539, -5.000000e-01
  %1541 = fmul fast float %1540, 2.000000e+00
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 2
  %1544 = call float @dx.op.binary.f32(i32 36, float %1543, float %1541)  ; FMin(a,b)
  %1545 = fsub fast float -0.000000e+00, %1543
  %1546 = fcmp fast ogt float %1544, %1545
  br i1 %1546, label %1547, label %1817, !dx.controlflow.hints !118

; <label>:1547                                    ; preds = %1491
  %1548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1548, 3
  %1550 = fcmp fast ogt float %1549, 0.000000e+00
  br i1 %1550, label %1551, label %1626, !dx.controlflow.hints !119

; <label>:1551                                    ; preds = %1547
  %1552 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %1553 = extractvalue %dx.types.Dimensions %1552, 0
  %1554 = sitofp i32 %1553 to float
  %1555 = extractvalue %dx.types.Dimensions %1552, 1
  %1556 = sitofp i32 %1555 to float
  %1557 = fmul fast float %1495, %1554
  %1558 = fmul fast float %1496, %1556
  %1559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1560 = extractvalue %dx.types.CBufRet.f32 %1559, 1
  %1561 = fsub fast float -0.000000e+00, %1560
  %1562 = fptoui float %1561 to i32
  %1563 = fptoui float %1557 to i32
  %1564 = fptoui float %1558 to i32
  %1565 = and i32 %1562, 31
  %1566 = lshr i32 %1563, %1565
  %1567 = lshr i32 %1564, %1565
  %1568 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %1562, i32 %1566, i32 %1567, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1569 = extractvalue %dx.types.ResRet.f32 %1568, 0
  %1570 = fcmp fast olt float %1569, -1.000000e+00
  %1571 = fcmp fast ogt float %1569, -1.000000e+00
  %1572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1573 = extractvalue %dx.types.CBufRet.f32 %1572, 1
  %1574 = select i1 %1571, float %1573, float 1.000000e+00
  %1575 = fadd fast float %1569, 1.000000e+00
  %1576 = fmul fast float %1574, %1575
  %1577 = call float @dx.op.unary.f32(i32 6, float %1576)  ; FAbs(value)
  %1578 = extractvalue %dx.types.CBufRet.f32 %1572, 3
  %1579 = fcmp fast oge float %1577, %1578
  %1580 = select i1 %1579, float 0x4197782600000000, float %1577
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 0
  %1583 = extractvalue %dx.types.CBufRet.f32 %1581, 1
  %1584 = extractvalue %dx.types.CBufRet.f32 %1581, 2
  %1585 = select i1 %1570, float %1582, float %1502
  %1586 = select i1 %1570, float %1583, float %1503
  %1587 = select i1 %1570, float %1584, float %1504
  %1588 = fmul fast float %1585, %1499
  %1589 = fmul fast float %1586, %1499
  %1590 = fmul fast float %1587, %1499
  %1591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.f32 %1591, 0
  %1593 = extractvalue %dx.types.CBufRet.f32 %1591, 1
  %1594 = extractvalue %dx.types.CBufRet.f32 %1591, 2
  %1595 = select i1 %1570, float %1592, float %1509
  %1596 = select i1 %1570, float %1593, float %1510
  %1597 = select i1 %1570, float %1594, float %1511
  %1598 = fmul fast float %1595, %1500
  %1599 = fmul fast float %1596, %1500
  %1600 = fmul fast float %1597, %1500
  %1601 = fadd fast float %1598, %1588
  %1602 = fadd fast float %1599, %1589
  %1603 = fadd fast float %1600, %1590
  %1604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1605 = extractvalue %dx.types.CBufRet.f32 %1604, 0
  %1606 = extractvalue %dx.types.CBufRet.f32 %1604, 1
  %1607 = extractvalue %dx.types.CBufRet.f32 %1604, 2
  %1608 = select i1 %1570, float %1605, float %1516
  %1609 = select i1 %1570, float %1606, float %1517
  %1610 = select i1 %1570, float %1607, float %1518
  %1611 = fadd fast float %1601, %1608
  %1612 = fadd fast float %1602, %1609
  %1613 = fadd fast float %1603, %1610
  %1614 = fmul fast float %1611, %1580
  %1615 = fmul fast float %1612, %1580
  %1616 = fmul fast float %1613, %1580
  %1617 = fmul fast float %1614, %1614
  %1618 = fmul fast float %1615, %1615
  %1619 = fadd fast float %1617, %1618
  %1620 = fmul fast float %1616, %1616
  %1621 = fadd fast float %1619, %1620
  %1622 = call float @dx.op.unary.f32(i32 24, float %1621)  ; Sqrt(value)
  %1623 = fsub fast float %1622, %1535
  %1624 = fmul fast float %1623, %1537
  %1625 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  br label %1626

; <label>:1626                                    ; preds = %1551, %1547
  %1627 = phi float [ %1625, %1551 ], [ 1.000000e+00, %1547 ]
  %1628 = fmul fast float %1544, 5.000000e-01
  %1629 = fadd fast float %1628, 5.000000e-01
  %1630 = call float @dx.op.unary.f32(i32 22, float %1629)  ; Frc(value)
  %1631 = call float @dx.op.unary.f32(i32 27, float %1630)  ; Round_ni(value)
  %1632 = call float @dx.op.unary.f32(i32 22, float %1630)  ; Frc(value)
  %1633 = fmul fast float %1632, 2.000000e+00
  %1634 = fadd fast float %1633, -1.000000e+00
  %1635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %16, float %1495, float %1496, float %1631, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1636 = extractvalue %dx.types.ResRet.f32 %1635, 0
  %1637 = extractvalue %dx.types.ResRet.f32 %1635, 1
  %1638 = extractvalue %dx.types.ResRet.f32 %1635, 2
  %1639 = extractvalue %dx.types.ResRet.f32 %1635, 3
  %1640 = fadd fast float %1636, -5.000000e-01
  %1641 = fadd fast float %1638, -5.000000e-01
  %1642 = fmul fast float %1640, 0xBFD5555560000000
  %1643 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1641, float %1642)  ; FMad(a,b,c)
  %1644 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1637, float 0.000000e+00)  ; FMad(a,b,c)
  %1645 = fadd fast float %1644, %1639
  %1646 = fmul fast float %1640, -7.500000e-01
  %1647 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1641, float %1646)  ; FMad(a,b,c)
  %1648 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1637, float 0.000000e+00)  ; FMad(a,b,c)
  %1649 = fadd fast float %1648, %1639
  %1650 = call float @dx.op.binary.f32(i32 35, float %1643, float -1.000000e+00)  ; FMax(a,b)
  %1651 = call float @dx.op.binary.f32(i32 35, float %1645, float -1.000000e+00)  ; FMax(a,b)
  %1652 = call float @dx.op.binary.f32(i32 35, float %1647, float -1.000000e+00)  ; FMax(a,b)
  %1653 = call float @dx.op.binary.f32(i32 35, float %1649, float -1.000000e+00)  ; FMax(a,b)
  %1654 = call float @dx.op.binary.f32(i32 36, float %1650, float 1.000000e+00)  ; FMin(a,b)
  %1655 = call float @dx.op.binary.f32(i32 36, float %1651, float 1.000000e+00)  ; FMin(a,b)
  %1656 = call float @dx.op.binary.f32(i32 36, float %1652, float 1.000000e+00)  ; FMin(a,b)
  %1657 = call float @dx.op.binary.f32(i32 36, float %1653, float 1.000000e+00)  ; FMin(a,b)
  %1658 = fcmp fast olt float %1654, 0x3FEFFF8020000000
  br i1 %1658, label %1659, label %1774, !dx.controlflow.hints !120

; <label>:1659                                    ; preds = %1626
  %1660 = extractvalue %dx.types.CBufRet.f32 %1542, 3
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 0
  %1663 = extractvalue %dx.types.CBufRet.f32 %1661, 1
  %1664 = extractvalue %dx.types.CBufRet.f32 %1661, 2
  %1665 = extractvalue %dx.types.CBufRet.f32 %1661, 3
  %1666 = fsub fast float %1662, %1654
  %1667 = fsub fast float %1663, %1655
  %1668 = fsub fast float %1664, %1656
  %1669 = fsub fast float %1665, %1657
  %1670 = fmul fast float %1666, %1660
  %1671 = fmul fast float %1667, %1660
  %1672 = fmul fast float %1668, %1660
  %1673 = fmul fast float %1669, %1660
  %1674 = fadd fast float %1670, %1654
  %1675 = fadd fast float %1671, %1655
  %1676 = fsub fast float -0.000000e+00, %1675
  %1677 = fadd fast float %1672, %1656
  %1678 = fadd fast float %1673, %1657
  %1679 = fmul fast float %1674, %1674
  %1680 = fsub fast float %1675, %1679
  %1681 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1680)  ; FMax(a,b)
  %1682 = fdiv fast float 1.000000e+00, %1681
  %1683 = fmul fast float %1675, %1674
  %1684 = fsub fast float %1677, %1683
  %1685 = fsub fast float %1634, %1674
  %1686 = fmul fast float %1634, %1634
  %1687 = fsub fast float %1686, %1675
  %1688 = fmul fast float %1685, %1682
  %1689 = fmul fast float %1688, %1684
  %1690 = fsub fast float %1687, %1689
  %1691 = fmul fast float %1675, %1675
  %1692 = fsub fast float %1678, %1691
  %1693 = fmul fast float %1684, %1684
  %1694 = fmul fast float %1693, %1682
  %1695 = fsub fast float %1692, %1694
  %1696 = fdiv fast float %1690, %1695
  %1697 = fmul fast float %1684, %1696
  %1698 = fsub fast float %1685, %1697
  %1699 = fmul fast float %1698, %1682
  %1700 = fmul fast float %1699, %1674
  %1701 = fsub fast float 1.000000e+00, %1700
  %1702 = fmul fast float %1675, %1696
  %1703 = fsub fast float %1701, %1702
  %1704 = fmul fast float %1699, %1699
  %1705 = fmul fast float %1696, 4.000000e+00
  %1706 = fmul fast float %1705, %1703
  %1707 = fsub fast float %1704, %1706
  %1708 = call float @dx.op.unary.f32(i32 24, float %1707)  ; Sqrt(value)
  %1709 = fcmp fast oge float %1699, 0.000000e+00
  %1710 = fsub fast float -0.000000e+00, %1708
  %1711 = select i1 %1709, float %1710, float %1708
  %1712 = fsub fast float %1711, %1699
  %1713 = fdiv fast float %1712, %1696
  %1714 = fdiv fast float %1703, %1712
  %1715 = fmul fast float %1713, 5.000000e-01
  %1716 = fmul fast float %1714, 2.000000e+00
  %1717 = select i1 %1709, float %1715, float %1716
  %1718 = select i1 %1709, float %1716, float %1715
  %1719 = call float @dx.op.binary.f32(i32 35, float %1717, float %1718)  ; FMax(a,b)
  %1720 = call float @dx.op.binary.f32(i32 36, float %1717, float %1718)  ; FMin(a,b)
  %1721 = fcmp fast ogt float %1634, %1720
  br i1 %1721, label %1722, label %1732

; <label>:1722                                    ; preds = %1659
  %1723 = fsub fast float %1634, %1720
  %1724 = fsub fast float %1719, %1720
  %1725 = fmul fast float %1723, %1724
  %1726 = fmul fast float %1719, %1634
  %1727 = fadd fast float %1719, %1634
  %1728 = fmul fast float %1727, %1674
  %1729 = fadd fast float %1726, %1675
  %1730 = fsub fast float %1729, %1728
  %1731 = fdiv fast float %1730, %1725
  br label %1732

; <label>:1732                                    ; preds = %1722, %1659
  %1733 = phi float [ %1731, %1722 ], [ 0.000000e+00, %1659 ]
  %1734 = fcmp fast ogt float %1634, %1719
  %1735 = fsub fast float %1634, %1719
  br i1 %1734, label %1736, label %1746

; <label>:1736                                    ; preds = %1732
  %1737 = fsub fast float %1719, %1720
  %1738 = fmul fast float %1737, %1735
  %1739 = fmul fast float %1720, %1634
  %1740 = fadd fast float %1720, %1634
  %1741 = fmul fast float %1740, %1674
  %1742 = fsub fast float %1676, %1739
  %1743 = fadd fast float %1742, %1741
  %1744 = fdiv fast float %1743, %1738
  %1745 = fadd fast float %1744, %1733
  br label %1746

; <label>:1746                                    ; preds = %1736, %1732
  %1747 = phi float [ %1745, %1736 ], [ %1733, %1732 ]
  %1748 = fsub fast float %1634, %1720
  %1749 = fmul fast float %1748, %1735
  %1750 = fmul fast float %1720, %1719
  %1751 = fadd fast float %1720, %1719
  %1752 = fmul fast float %1751, %1674
  %1753 = fadd fast float %1750, %1675
  %1754 = fsub fast float %1753, %1752
  %1755 = fdiv fast float %1754, %1749
  %1756 = call float @dx.op.unary.f32(i32 7, float %1747)  ; Saturate(value)
  %1757 = fcmp fast oeq float %815, 0.000000e+00
  %1758 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1759 = fcmp fast oeq float %1758, 0.000000e+00
  %1760 = or i1 %1757, %1759
  %1761 = fmul fast float %1758, 2.000000e+00
  %1762 = fadd fast float %1543, %1544
  %1763 = fdiv fast float %1762, %1761
  %1764 = call float @dx.op.unary.f32(i32 7, float %1763)  ; Saturate(value)
  %1765 = fmul fast float %1764, 2.000000e+00
  %1766 = fsub fast float 3.000000e+00, %1765
  %1767 = fmul fast float %1764, %1764
  %1768 = fmul fast float %1767, %1766
  %1769 = select i1 %1760, float 1.000000e+00, float %1768
  %1770 = fmul fast float %1755, %815
  %1771 = fadd fast float %1756, %1770
  %1772 = call float @dx.op.unary.f32(i32 7, float %1771)  ; Saturate(value)
  %1773 = fmul fast float %1769, %1772
  br label %1774

; <label>:1774                                    ; preds = %1746, %1626
  %1775 = phi float [ %1773, %1746 ], [ 0.000000e+00, %1626 ]
  %1776 = fsub fast float 1.000000e+00, %1775
  %1777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %16, float %1495, float %1496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1778 = extractvalue %dx.types.ResRet.f32 %1777, 0
  %1779 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.i32 %1779, 2
  %1781 = icmp eq i32 %1780, 0
  br i1 %1781, label %1787, label %1782

; <label>:1782                                    ; preds = %1774
  %1783 = call float @dx.op.unary.f32(i32 7, float %1775)  ; Saturate(value)
  %1784 = fadd fast float %1778, -1.000000e+00
  %1785 = fmul fast float %1783, %1784
  %1786 = fadd fast float %1785, 1.000000e+00
  br label %1787

; <label>:1787                                    ; preds = %1782, %1774
  %1788 = phi float [ %1786, %1782 ], [ %1776, %1774 ]
  br i1 %1550, label %1789, label %1807

; <label>:1789                                    ; preds = %1787
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 1
  %1792 = fsub fast float %1627, %1791
  %1793 = call float @dx.op.unary.f32(i32 7, float %1792)  ; Saturate(value)
  %1794 = fsub fast float %1627, %1549
  %1795 = call float @dx.op.unary.f32(i32 7, float %1794)  ; Saturate(value)
  %1796 = fsub fast float %1793, %1795
  %1797 = fsub fast float %1629, %1795
  %1798 = fdiv fast float %1797, %1796
  %1799 = call float @dx.op.unary.f32(i32 7, float %1798)  ; Saturate(value)
  %1800 = fmul fast float %1799, 2.000000e+00
  %1801 = fsub fast float 3.000000e+00, %1800
  %1802 = fsub fast float %1778, %1788
  %1803 = fmul fast float %1799, %1799
  %1804 = fmul fast float %1803, %1802
  %1805 = fmul fast float %1804, %1801
  %1806 = fadd fast float %1805, %1788
  br label %1807

; <label>:1807                                    ; preds = %1789, %1787
  %1808 = phi float [ %1806, %1789 ], [ %1788, %1787 ]
  %1809 = call float @dx.op.binary.f32(i32 35, float %1778, float %1808)  ; FMax(a,b)
  %1810 = fmul fast float %1809, %1480
  %1811 = call float @dx.op.dot3.f32(i32 55, float %1809, float %1809, float %1809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1812 = select i1 %103, float %1811, float %1809
  %1813 = select i1 %103, float 1.000000e+00, float %1809
  %1814 = fmul fast float %1812, %1485
  %1815 = fmul fast float %1812, %1486
  %1816 = fmul fast float %1813, %1487
  br label %1817

; <label>:1817                                    ; preds = %1807, %1491, %1476, %931
  %1818 = phi float [ %936, %931 ], [ %1485, %1476 ], [ %1814, %1807 ], [ %1485, %1491 ]
  %1819 = phi float [ %937, %931 ], [ %1486, %1476 ], [ %1815, %1807 ], [ %1486, %1491 ]
  %1820 = phi float [ %938, %931 ], [ %1487, %1476 ], [ %1816, %1807 ], [ %1487, %1491 ]
  %1821 = phi float [ %939, %931 ], [ %1480, %1476 ], [ %1810, %1807 ], [ %1480, %1491 ]
  %1822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1822, 2
  %1824 = extractvalue %dx.types.CBufRet.f32 %1822, 3
  %1825 = fmul fast float %1823, %45
  %1826 = fmul fast float %1824, %46
  %1827 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  %1828 = call float @dx.op.unary.f32(i32 7, float %1826)  ; Saturate(value)
  %1829 = select i1 %684, i32 2, i32 0
  %1830 = or i32 %1829, 1
  %1831 = uitofp i32 %1830 to float
  %1832 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %1827, float %1828, float %1831, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1833 = extractvalue %dx.types.ResRet.f32 %1832, 0
  %1834 = extractvalue %dx.types.ResRet.f32 %1832, 1
  %1835 = extractvalue %dx.types.ResRet.f32 %1832, 2
  %1836 = extractvalue %dx.types.ResRet.f32 %1832, 3
  %1837 = add nuw nsw i32 %1829, 2
  %1838 = uitofp i32 %1837 to float
  %1839 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %1827, float %1828, float %1838, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  %1841 = extractvalue %dx.types.ResRet.f32 %1839, 1
  %1842 = extractvalue %dx.types.ResRet.f32 %1839, 2
  %1843 = extractvalue %dx.types.ResRet.f32 %1839, 3
  %1844 = call float @dx.op.binary.f32(i32 35, float %1834, float %1835)  ; FMax(a,b)
  %1845 = call float @dx.op.binary.f32(i32 35, float %1833, float %1844)  ; FMax(a,b)
  %1846 = call float @dx.op.binary.f32(i32 35, float %1845, float %1836)  ; FMax(a,b)
  %1847 = call float @dx.op.binary.f32(i32 36, float %1841, float %1842)  ; FMin(a,b)
  %1848 = call float @dx.op.binary.f32(i32 36, float %1840, float %1847)  ; FMin(a,b)
  %1849 = call float @dx.op.binary.f32(i32 36, float %1848, float %1843)  ; FMin(a,b)
  %1850 = fmul fast float %1846, 2.550000e+02
  %1851 = fadd fast float %1850, 0x3F70101020000000
  %1852 = fptoui float %1851 to i32
  %1853 = fmul fast float %1849, 2.550000e+02
  %1854 = fadd fast float %1853, 0x3F70101020000000
  %1855 = fptoui float %1854 to i32
  %1856 = icmp ult i32 %1852, %1855
  br i1 %1856, label %1857, label %1900

; <label>:1857                                    ; preds = %1817
  %1858 = fcmp fast ogt float %37, 9.843750e-01
  %1859 = fadd fast float %935, -4.000000e+00
  %1860 = select i1 %1858, float -4.000000e+00, float %1859
  %1861 = call float @dx.op.binary.f32(i32 35, float %1860, float 0.000000e+00)  ; FMax(a,b)
  %1862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = extractvalue %dx.types.CBufRet.f32 %1862, 0
  %1864 = fadd fast float %1863, %1861
  %1865 = extractvalue %dx.types.CBufRet.f32 %1862, 2
  %1866 = fmul fast float %1864, %1865
  %1867 = call float @dx.op.unary.f32(i32 23, float %1866)  ; Log(value)
  %1868 = extractvalue %dx.types.CBufRet.f32 %1862, 3
  %1869 = fmul fast float %1868, %1867
  %1870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.f32 %1870, 2
  %1872 = fmul fast float %1869, %1871
  %1873 = call float @dx.op.unary.f32(i32 7, float %1872)  ; Saturate(value)
  %1874 = uitofp i32 %1852 to float
  %1875 = uitofp i32 %1855 to float
  %1876 = fadd fast float %1874, 5.000000e-01
  %1877 = fadd fast float %1875, 5.000000e-01
  %1878 = fmul fast float %1871, %1876
  %1879 = fmul fast float %1871, %1877
  %1880 = fadd fast float %1878, 0x3F0FFB4800000000
  %1881 = fadd fast float %1879, 0xBF0FFB4800000000
  %1882 = call float @dx.op.binary.f32(i32 35, float %1873, float %1880)  ; FMax(a,b)
  %1883 = call float @dx.op.binary.f32(i32 36, float %1882, float %1881)  ; FMin(a,b)
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 1
  %1886 = extractvalue %dx.types.CBufRet.f32 %1884, 2
  %1887 = extractvalue %dx.types.CBufRet.f32 %1884, 0
  %1888 = select i1 %684, float %1887, float 0.000000e+00
  %1889 = fmul fast float %1885, %1883
  %1890 = fadd fast float %1888, %1889
  %1891 = fadd fast float %1888, %1886
  %1892 = fsub fast float %1885, %1886
  %1893 = fadd fast float %1892, %1888
  %1894 = call float @dx.op.binary.f32(i32 35, float %1890, float %1891)  ; FMax(a,b)
  %1895 = call float @dx.op.binary.f32(i32 36, float %1894, float %1893)  ; FMin(a,b)
  %1896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %1827, float %1828, float %1895, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1897 = extractvalue %dx.types.ResRet.f32 %1896, 0
  %1898 = extractvalue %dx.types.ResRet.f32 %1896, 1
  %1899 = extractvalue %dx.types.ResRet.f32 %1896, 2
  br label %1900

; <label>:1900                                    ; preds = %1857, %1817
  %1901 = phi float [ %1897, %1857 ], [ 1.000000e+00, %1817 ]
  %1902 = phi float [ %1898, %1857 ], [ 1.000000e+00, %1817 ]
  %1903 = phi float [ %1899, %1857 ], [ 1.000000e+00, %1817 ]
  %1904 = fmul fast float %1901, %1821
  %1905 = call float @dx.op.dot3.f32(i32 55, float %1901, float %1902, float %1903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1906 = select i1 %103, float %1905, float %1901
  %1907 = select i1 %103, float %1905, float %1902
  %1908 = select i1 %103, float 1.000000e+00, float %1903
  %1909 = fmul fast float %1906, %1818
  %1910 = fmul fast float %1907, %1819
  %1911 = fmul fast float %1908, %1820
  %1912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1913 = extractvalue %dx.types.CBufRet.i32 %1912, 3
  %1914 = and i32 %1913, 3
  %1915 = icmp ne i32 %1914, 0
  %1916 = and i32 %1913, 4
  %1917 = icmp ne i32 %1916, 0
  %1918 = and i1 %1915, %1917
  %1919 = and i1 %103, %1918
  br i1 %1919, label %1920, label %1926

; <label>:1920                                    ; preds = %1900
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 1
  %1923 = fadd fast float %1904, -1.000000e+00
  %1924 = fmul fast float %1922, %1923
  %1925 = fadd fast float %1924, 1.000000e+00
  br label %1926

; <label>:1926                                    ; preds = %1920, %1900
  %1927 = phi float [ %1925, %1920 ], [ %1904, %1900 ]
  %1928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1929 = extractvalue %dx.types.CBufRet.f32 %1928, 0
  br i1 %103, label %1930, label %1950

; <label>:1930                                    ; preds = %1926
  %1931 = fadd fast float %1909, %1910
  %1932 = fmul fast float %1929, %1931
  %1933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.f32 %1933, 3
  %1935 = extractvalue %dx.types.CBufRet.f32 %704, 1
  %1936 = fsub fast float %707, %1935
  %1937 = extractvalue %dx.types.CBufRet.f32 %704, 2
  %1938 = fmul fast float %1936, %1937
  %1939 = call float @dx.op.unary.f32(i32 7, float %1938)  ; Saturate(value)
  %1940 = fsub fast float %1939, %1934
  %1941 = fmul fast float %1940, %1927
  %1942 = fadd fast float %1941, %1934
  %1943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1944 = extractvalue %dx.types.CBufRet.f32 %1943, 0
  %1945 = fsub fast float %1942, %1944
  %1946 = fmul fast float %1945, 1.000000e+01
  %1947 = call float @dx.op.unary.f32(i32 7, float %1946)  ; Saturate(value)
  %1948 = fmul fast float %1947, %660
  %1949 = fmul fast float %1942, %1948
  br label %1959

; <label>:1950                                    ; preds = %1926
  %1951 = fmul fast float %1929, %1909
  %1952 = fmul fast float %1929, %1910
  %1953 = fmul fast float %1911, %1929
  %1954 = call float @dx.op.binary.f32(i32 35, float %1952, float %1953)  ; FMax(a,b)
  %1955 = call float @dx.op.binary.f32(i32 35, float %1951, float %1954)  ; FMax(a,b)
  %1956 = call float @dx.op.binary.f32(i32 35, float %1955, float 0.000000e+00)  ; FMax(a,b)
  %1957 = fcmp fast ugt float %1956, 0x3F10000000000000
  br i1 %1957, label %1959, label %1958

; <label>:1958                                    ; preds = %1950
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1959

; <label>:1959                                    ; preds = %1958, %1950, %1930
  %1960 = phi float [ %1932, %1930 ], [ %1951, %1958 ], [ %1951, %1950 ]
  %1961 = phi float [ %1949, %1930 ], [ %1952, %1958 ], [ %1952, %1950 ]
  %1962 = phi float [ %1948, %1930 ], [ %1953, %1958 ], [ %1953, %1950 ]
  %1963 = phi float [ %1948, %1930 ], [ 0.000000e+00, %1958 ], [ 0.000000e+00, %1950 ]
  %1964 = fadd fast float %528, 0x3FE3C6EF40000000
  %1965 = call float @dx.op.unary.f32(i32 22, float %1964)  ; Frc(value)
  %1966 = call float @dx.op.unary.f32(i32 23, float %1960)  ; Log(value)
  %1967 = fadd fast float %1966, -7.000000e+00
  %1968 = call float @dx.op.unary.f32(i32 21, float %1967)  ; Exp(value)
  %1969 = fmul fast float %1965, 2.000000e+00
  %1970 = fadd fast float %1969, -1.000000e+00
  %1971 = fmul fast float %1968, %1970
  %1972 = fcmp fast ogt float %1960, 0.000000e+00
  %1973 = select i1 %1972, float %1971, float 0.000000e+00
  %1974 = fadd fast float %1973, %1960
  %1975 = fadd fast float %528, 0x3FF3C6EF40000000
  %1976 = call float @dx.op.unary.f32(i32 22, float %1975)  ; Frc(value)
  %1977 = call float @dx.op.unary.f32(i32 23, float %1961)  ; Log(value)
  %1978 = fadd fast float %1977, -7.000000e+00
  %1979 = call float @dx.op.unary.f32(i32 21, float %1978)  ; Exp(value)
  %1980 = fmul fast float %1976, 2.000000e+00
  %1981 = fadd fast float %1980, -1.000000e+00
  %1982 = fmul fast float %1979, %1981
  %1983 = fcmp fast ogt float %1961, 0.000000e+00
  %1984 = select i1 %1983, float %1982, float 0.000000e+00
  %1985 = fadd fast float %1984, %1961
  %1986 = fadd fast float %528, 0x3FFDAA66E0000000
  %1987 = call float @dx.op.unary.f32(i32 22, float %1986)  ; Frc(value)
  %1988 = call float @dx.op.unary.f32(i32 23, float %1962)  ; Log(value)
  %1989 = fadd fast float %1988, -6.000000e+00
  %1990 = call float @dx.op.unary.f32(i32 21, float %1989)  ; Exp(value)
  %1991 = fmul fast float %1987, 2.000000e+00
  %1992 = fadd fast float %1991, -1.000000e+00
  %1993 = fmul fast float %1990, %1992
  %1994 = fcmp fast ogt float %1962, 0.000000e+00
  %1995 = select i1 %1994, float %1993, float 0.000000e+00
  %1996 = fadd fast float %1995, %1962
  %1997 = select i1 %103, float %1961, float %1985
  %1998 = select i1 %103, float %1962, float %1996
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1999 = call float @dx.op.binary.f32(i32 36, float %1974, float 3.225500e+04)  ; FMin(a,b)
  %2000 = call float @dx.op.binary.f32(i32 36, float %1997, float 3.225500e+04)  ; FMin(a,b)
  %2001 = call float @dx.op.binary.f32(i32 36, float %1998, float 3.225500e+04)  ; FMin(a,b)
  %2002 = call float @dx.op.binary.f32(i32 36, float %1963, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1999)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2000)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2001)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %2002)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!dx.viewIdState = !{!32}
!dx.entryPoints = !{!33}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !24, !27}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 8, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !20}
!20 = !{i32 0, i32 14}
!21 = !{i32 12, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!22 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!23 = !{i32 14, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!24 = !{!25, !26}
!25 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!26 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!27 = !{!28, !29, !30, !31}
!28 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!29 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!30 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!31 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!32 = !{[30 x i32] [i32 28, i32 8, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 1, i32 3, i32 4, i32 0, i32 3, i32 3, i32 7, i32 7, i32 255, i32 0, i32 0, i32 0]}
!33 = !{void ()* @ps_main, !"ps_main", !34, !4, !59}
!34 = !{!35, !55, null}
!35 = !{!36, !39, !41, !43, !45, !48, !50, !52, !54}
!36 = !{i32 0, !"SV_Position", i8 9, i8 3, !37, i8 4, i32 1, i8 4, i32 0, i8 0, !38}
!37 = !{i32 0}
!38 = !{i32 3, i32 15}
!39 = !{i32 1, !"COLOR", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!40 = !{i32 3, i32 8}
!41 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 2, i32 2, i8 0, !42}
!42 = !{i32 3, i32 3}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 3, i8 0, !38}
!44 = !{i32 3}
!45 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 3, i32 4, i8 0, !47}
!46 = !{i32 5}
!47 = !{i32 3, i32 7}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 5, i8 0, !38}
!49 = !{i32 8}
!50 = !{i32 6, !"COLOR", i8 5, i8 0, !44, i8 1, i32 1, i8 3, i32 6, i8 0, !51}
!51 = !{i32 3, i32 1}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !53, i8 1, i32 1, i8 1, i32 6, i8 3, null}
!53 = !{i32 4}
!54 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !37, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56, !57}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !37, i8 0, i32 1, i8 4, i32 0, i8 0, !38}
!57 = !{i32 1, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 1, i8 0, !38}
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
!70 = !{!71, !71, i64 0}
!71 = !{!"float", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !{!75, !77, !79, !80, !82, !83, !84, !86, !87, !88}
!75 = distinct !{!75, !76, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!76 = distinct !{!76, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!77 = distinct !{!77, !78, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!78 = distinct !{!78, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!79 = distinct !{!79, !78, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!80 = distinct !{!80, !81, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!81 = distinct !{!81, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!82 = distinct !{!82, !81, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!83 = distinct !{!83, !81, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!84 = distinct !{!84, !85, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!85 = distinct !{!85, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!86 = distinct !{!86, !85, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!87 = distinct !{!87, !85, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!88 = distinct !{!88, !89, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!89 = distinct !{!89, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"\01?sort@@YAXAIAM00@Z: %c"}
!92 = distinct !{!92, !"\01?sort@@YAXAIAM00@Z"}
!93 = !{!94, !95, !75, !77, !79, !80, !82, !83, !84, !86, !87, !88}
!94 = distinct !{!94, !92, !"\01?sort@@YAXAIAM00@Z: %a"}
!95 = distinct !{!95, !92, !"\01?sort@@YAXAIAM00@Z: %b"}
!96 = !{!95}
!97 = !{!94, !91, !75, !77, !79, !80, !82, !83, !84, !86, !87, !88}
!98 = !{!94}
!99 = !{!95, !91, !75, !77, !79, !80, !82, !83, !84, !86, !87, !88}
!100 = !{!101}
!101 = distinct !{!101, !102, !"\01?sort@@YAXAIAM00@Z: %c"}
!102 = distinct !{!102, !"\01?sort@@YAXAIAM00@Z"}
!103 = !{!104, !105, !75, !77, !79, !80, !82, !83, !84, !86, !87, !88}
!104 = distinct !{!104, !102, !"\01?sort@@YAXAIAM00@Z: %a"}
!105 = distinct !{!105, !102, !"\01?sort@@YAXAIAM00@Z: %b"}
!106 = !{!105}
!107 = !{!104, !101, !75, !77, !79, !80, !82, !83, !84, !86, !87, !88}
!108 = !{!104}
!109 = !{!105, !101, !75, !77, !79, !80, !82, !83, !84, !86, !87, !88}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 2}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}

