;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float    y w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 5   xyz         4     NONE   float   xyz 
; TEXCOORD                 8   xyzw        5     NONE   float   x  w
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
; shader hash: 9b12adc1e075e6d942a3a97ef8feeff3
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
;   output 0 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 15, 17, 20, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 5, 7, 8, 9, 12, 13, 14, 15, 18, 20, 23, 24 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 24 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 24 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 24 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 24 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 20, 24 }
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
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = alloca [3 x float], align 4
  %39 = alloca [3 x float], align 4
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 0
  %43 = fmul fast float %42, %34
  %44 = fmul fast float %42, %35
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 2
  %47 = extractvalue %dx.types.CBufRet.f32 %45, 3
  %48 = fmul fast float %43, 2.000000e+00
  %49 = fmul fast float %48, %46
  %50 = fmul fast float %44, 2.000000e+00
  %51 = fmul fast float %50, %47
  %52 = fsub fast float 1.000000e+00, %49
  %53 = fsub fast float 1.000000e+00, %51
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %57 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %58 = fmul fast float %52, %55
  %59 = fmul fast float %52, %56
  %60 = fmul fast float %52, %57
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = extractvalue %dx.types.CBufRet.f32 %61, 1
  %64 = extractvalue %dx.types.CBufRet.f32 %61, 2
  %65 = fmul fast float %53, %62
  %66 = fmul fast float %53, %63
  %67 = fmul fast float %53, %64
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fadd fast float %65, %69
  %73 = fadd fast float %72, %58
  %74 = fadd fast float %66, %70
  %75 = fadd fast float %74, %59
  %76 = fadd fast float %67, %71
  %77 = fadd fast float %76, %60
  %78 = fmul fast float %73, %37
  %79 = fmul fast float %75, %37
  %80 = fmul fast float %77, %37
  %81 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.i32 %81, 3
  %83 = and i32 %82, 3
  %84 = icmp ne i32 %83, 0
  %85 = and i32 %82, 4
  %86 = icmp ne i32 %85, 0
  %87 = and i1 %84, %86
  br i1 %87, label %88, label %97

; <label>:88                                      ; preds = %0
  %89 = fmul fast float %47, %44
  %90 = fmul fast float %46, %43
  %91 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %90, float %89, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  %93 = fsub fast float 1.000000e+00, %92
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = fcmp fast olt float %93, %95
  br label %100

; <label>:97                                      ; preds = %0
  %98 = icmp eq i32 %85, 0
  %99 = and i1 %84, %98
  br label %100

; <label>:100                                     ; preds = %97, %88
  %101 = phi i1 [ %96, %88 ], [ %99, %97 ]
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %105 = fmul fast float %103, %43
  %106 = fmul fast float %104, %44
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  %109 = and i32 %108, 114688
  %110 = icmp ne i32 %109, 0
  %111 = select i1 %110, float %105, float 0.000000e+00
  %112 = select i1 %110, float %106, float 0.000000e+00
  %113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %111, float %112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %114 = extractvalue %dx.types.ResRet.f32 %113, 0
  %115 = fmul fast float %114, 2.550000e+02
  %116 = fptoui float %115 to i32
  %117 = select i1 %110, i32 %116, i32 0
  %118 = mul i32 %20, 208
  %119 = add i32 %118, 188
  %120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.i32 %120, 0
  %122 = and i32 %82, 114688
  %123 = and i32 %82, 8
  %124 = icmp ne i32 %123, 0
  %125 = or i1 %101, %124
  %126 = select i1 %125, i32 %122, i32 16384
  %127 = and i32 %126, %121
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

; <label>:129                                     ; preds = %100
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %130

; <label>:130                                     ; preds = %129, %100
  %131 = and i32 %121, 512
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %157, label %133

; <label>:133                                     ; preds = %130
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %135, %43
  %138 = fmul fast float %136, %44
  %139 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %141 = fdiv fast float %139, %140
  %142 = fcmp fast ogt float %141, 0x3FFC71C720000000
  br i1 %142, label %143, label %149

; <label>:143                                     ; preds = %133
  %144 = fdiv fast float 0x3FFC71C720000000, %141
  %145 = fmul fast float %144, %138
  %146 = fsub fast float 1.000000e+00, %144
  %147 = fmul fast float %146, 5.000000e-01
  %148 = fadd fast float %147, %145
  br label %157

; <label>:149                                     ; preds = %133
  %150 = fcmp fast olt float %141, 0x3FFC71C720000000
  br i1 %150, label %151, label %157

; <label>:151                                     ; preds = %149
  %152 = fmul fast float %137, 5.625000e-01
  %153 = fmul fast float %152, %141
  %154 = fmul fast float %141, 2.812500e-01
  %155 = fsub fast float 5.000000e-01, %154
  %156 = fadd fast float %155, %153
  br label %157

; <label>:157                                     ; preds = %151, %149, %143, %130
  %158 = phi float [ %30, %130 ], [ %137, %143 ], [ %156, %151 ], [ %137, %149 ]
  %159 = phi float [ %31, %130 ], [ %148, %143 ], [ %138, %151 ], [ %138, %149 ]
  %160 = and i32 %121, 16
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %168, label %162, !dx.controlflow.hints !61

; <label>:162                                     ; preds = %157
  %163 = fsub fast float %33, %32
  %164 = fsub fast float 1.000000e+00, %32
  %165 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %164)  ; FMax(a,b)
  %166 = fdiv fast float %163, %165
  %167 = call float @dx.op.unary.f32(i32 7, float %166)  ; Saturate(value)
  br label %168

; <label>:168                                     ; preds = %162, %157
  %169 = phi float [ %167, %162 ], [ %33, %157 ]
  %170 = fcmp fast ogt float %169, 0.000000e+00
  br i1 %170, label %172, label %171

; <label>:171                                     ; preds = %168
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %172

; <label>:172                                     ; preds = %171, %168
  %173 = call float @dx.op.unary.f32(i32 7, float %169)  ; Saturate(value)
  %174 = fmul fast float %43, 5.000000e-01
  %175 = fmul fast float %44, 5.000000e-01
  %176 = fptosi float %174 to i32
  %177 = fptosi float %175 to i32
  %178 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %176, i32 %177, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = lshr i32 %179, 18
  %181 = uitofp i32 %180 to float
  %182 = fmul fast float %181, 0x3F4C00EBA0000000
  %183 = call float @dx.op.unary.f32(i32 21, float %182)  ; Exp(value)
  %184 = fadd fast float %183, -1.000000e+00
  %185 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %186 = extractvalue %dx.types.Dimensions %185, 0
  %187 = sitofp i32 %186 to float
  %188 = extractvalue %dx.types.Dimensions %185, 1
  %189 = sitofp i32 %188 to float
  %190 = fcmp fast oge float %174, %187
  %191 = fcmp fast oge float %175, %189
  %192 = or i1 %190, %191
  %193 = select i1 %192, float 0x4197782600000000, float %184
  %194 = fsub fast float %193, %37
  %195 = fcmp fast ogt float %194, 0.000000e+00
  %196 = and i32 %117, -2
  %197 = icmp eq i32 %196, 2
  %198 = and i1 %197, %195
  %199 = xor i1 %195, true
  %200 = icmp eq i32 %117, 1
  %201 = and i1 %200, %199
  %202 = or i1 %198, %201
  %203 = and i32 %121, 262144
  %204 = icmp ne i32 %203, 0
  %205 = and i1 %204, %202
  %206 = xor i1 %202, true
  %207 = and i32 %121, 131072
  %208 = icmp ne i32 %207, 0
  %209 = and i1 %208, %206
  %210 = or i1 %205, %209
  br i1 %210, label %211, label %212

; <label>:211                                     ; preds = %172
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %212

; <label>:212                                     ; preds = %211, %172
  %213 = and i32 %121, 32
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %421, label %215, !dx.controlflow.hints !62

; <label>:215                                     ; preds = %212
  %216 = add i32 %118, 80
  %217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 0
  %219 = extractvalue %dx.types.ResRet.f32 %217, 1
  %220 = extractvalue %dx.types.ResRet.f32 %217, 2
  %221 = extractvalue %dx.types.ResRet.f32 %217, 3
  %222 = add i32 %118, 96
  %223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = extractvalue %dx.types.ResRet.f32 %223, 1
  %226 = extractvalue %dx.types.ResRet.f32 %223, 2
  %227 = add i32 %118, 112
  %228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.f32 %228, 3
  %230 = add i32 %118, 128
  %231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 3
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 4096
  %236 = icmp ne i32 %235, 0
  %237 = fcmp fast une float %226, 0.000000e+00
  %238 = and i32 %234, 64
  %239 = icmp ne i32 %238, 0
  %240 = and i32 %234, 128
  %241 = icmp eq i32 %240, 0
  %242 = and i32 %234, 2048
  %243 = icmp eq i32 %242, 0
  %244 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %245 = extractvalue %dx.types.Dimensions %244, 0
  %246 = sitofp i32 %245 to float
  %247 = extractvalue %dx.types.Dimensions %244, 1
  %248 = sitofp i32 %247 to float
  %249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.f32 %249, 2
  %251 = extractvalue %dx.types.CBufRet.f32 %249, 3
  %252 = fmul fast float %250, %43
  %253 = fmul fast float %251, %44
  %254 = fmul fast float %252, %246
  %255 = fmul fast float %253, %248
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %258 = fsub fast float -0.000000e+00, %257
  %259 = fptoui float %258 to i32
  %260 = fptoui float %254 to i32
  %261 = fptoui float %255 to i32
  %262 = and i32 %259, 31
  %263 = lshr i32 %260, %262
  %264 = lshr i32 %261, %262
  %265 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %259, i32 %263, i32 %264, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = fcmp fast ogt float %266, -1.000000e+00
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 1
  %270 = select i1 %267, float %269, float 1.000000e+00
  %271 = fadd fast float %266, 1.000000e+00
  %272 = fmul fast float %270, %271
  %273 = call float @dx.op.unary.f32(i32 6, float %272)  ; FAbs(value)
  %274 = extractvalue %dx.types.CBufRet.f32 %268, 3
  %275 = fcmp fast oge float %273, %274
  %276 = select i1 %275, float 0x4197782600000000, float %273
  br i1 %243, label %335, label %277, !dx.controlflow.hints !63

; <label>:277                                     ; preds = %215
  %278 = fmul fast float %48, %250
  %279 = fmul fast float %50, %251
  %280 = fsub fast float 1.000000e+00, %278
  %281 = fsub fast float 1.000000e+00, %279
  %282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %283 = extractvalue %dx.types.CBufRet.f32 %282, 0
  %284 = extractvalue %dx.types.CBufRet.f32 %282, 1
  %285 = extractvalue %dx.types.CBufRet.f32 %282, 2
  %286 = fmul fast float %280, %283
  %287 = fmul fast float %280, %284
  %288 = fmul fast float %280, %285
  %289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %290 = extractvalue %dx.types.CBufRet.f32 %289, 0
  %291 = extractvalue %dx.types.CBufRet.f32 %289, 1
  %292 = extractvalue %dx.types.CBufRet.f32 %289, 2
  %293 = fmul fast float %281, %290
  %294 = fmul fast float %281, %291
  %295 = fmul fast float %281, %292
  %296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %297 = extractvalue %dx.types.CBufRet.f32 %296, 0
  %298 = extractvalue %dx.types.CBufRet.f32 %296, 1
  %299 = extractvalue %dx.types.CBufRet.f32 %296, 2
  %300 = fadd fast float %293, %297
  %301 = fadd fast float %300, %286
  %302 = fadd fast float %294, %298
  %303 = fadd fast float %302, %287
  %304 = fadd fast float %295, %299
  %305 = fadd fast float %304, %288
  %306 = fmul fast float %301, %276
  %307 = fmul fast float %303, %276
  %308 = fmul fast float %305, %276
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %312 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %313 = fadd fast float %306, %310
  %314 = fadd fast float %307, %311
  %315 = fadd fast float %308, %312
  %316 = call float @dx.op.dot3.f32(i32 55, float %313, float %314, float %315, float %313, float %314, float %315)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = fsub fast float 1.000000e+00, %316
  %318 = fcmp fast olt float %317, %225
  %319 = fcmp fast ogt float %317, %224
  %320 = or i1 %318, %319
  %321 = select i1 %320, float 0.000000e+00, float %317
  %322 = fsub fast float %224, %225
  %323 = fsub fast float %321, %225
  %324 = fdiv fast float %323, %322
  %325 = call float @dx.op.unary.f32(i32 7, float %324)  ; Saturate(value)
  %326 = fmul fast float %325, 2.000000e+00
  %327 = fsub fast float 3.000000e+00, %326
  %328 = fsub fast float %229, %232
  %329 = fmul fast float %325, %325
  %330 = fmul fast float %329, %328
  %331 = fmul fast float %330, %327
  %332 = fadd fast float %331, %232
  %333 = fmul fast float %218, %218
  %334 = fmul fast float %333, %321
  br label %414

; <label>:335                                     ; preds = %215
  %336 = and i32 %234, 256
  %337 = icmp eq i32 %336, 0
  %338 = fsub fast float %276, %37
  br i1 %337, label %375, label %339

; <label>:339                                     ; preds = %335
  %340 = fadd fast float %224, %37
  %341 = fcmp fast olt float %276, %37
  %342 = fcmp fast ogt float %276, %340
  %343 = or i1 %341, %342
  %344 = select i1 %343, float 0.000000e+00, float %338
  %345 = call float @dx.op.unary.f32(i32 83, float %276)  ; DerivCoarseX(value)
  %346 = call float @dx.op.unary.f32(i32 84, float %276)  ; DerivCoarseY(value)
  %347 = fmul fast float %345, %345
  %348 = fmul fast float %346, %346
  %349 = fadd fast float %348, %347
  %350 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %351 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %352 = fmul fast float %351, %350
  %353 = call float @dx.op.unary.f32(i32 7, float %352)  ; Saturate(value)
  %354 = fmul fast float %353, %225
  %355 = fdiv fast float %338, %354
  %356 = call float @dx.op.unary.f32(i32 7, float %355)  ; Saturate(value)
  %357 = fmul fast float %356, 2.000000e+00
  %358 = fsub fast float 3.000000e+00, %357
  %359 = fmul fast float %356, %356
  %360 = fmul fast float %359, %358
  %361 = fsub fast float %276, %340
  %362 = fadd fast float %361, %354
  %363 = fdiv fast float %362, %354
  %364 = call float @dx.op.unary.f32(i32 7, float %363)  ; Saturate(value)
  %365 = fmul fast float %364, 2.000000e+00
  %366 = fsub fast float 3.000000e+00, %365
  %367 = fmul fast float %364, %364
  %368 = fmul fast float %367, %366
  %369 = fsub fast float %360, %368
  %370 = fsub fast float %229, %232
  %371 = fmul fast float %369, %370
  %372 = fadd fast float %371, %232
  %373 = fmul fast float %344, %218
  %374 = call float @dx.op.unary.f32(i32 6, float %373)  ; FAbs(value)
  br label %414

; <label>:375                                     ; preds = %335
  br i1 %237, label %376, label %387

; <label>:376                                     ; preds = %375
  %377 = select i1 %239, float 5.000000e+01, float 1.000000e+00
  %378 = fmul fast float %377, %218
  %379 = fmul fast float %30, 2.000000e+00
  %380 = fmul fast float %31, 2.000000e+00
  %381 = fadd fast float %379, -1.000000e+00
  %382 = fadd fast float %380, -1.000000e+00
  %383 = call float @dx.op.dot2.f32(i32 54, float %381, float %382, float %381, float %382)  ; Dot2(ax,ay,bx,by)
  %384 = fmul fast float %383, %226
  %385 = fsub fast float %338, %384
  %386 = fmul fast float %378, %385
  br label %414

; <label>:387                                     ; preds = %375
  br i1 %241, label %407, label %388

; <label>:388                                     ; preds = %387
  %389 = select i1 %239, float 0x3F947AE140000000, float 1.000000e+00
  %390 = fdiv fast float 1.000000e+00, %389
  %391 = fmul fast float %389, %219
  %392 = fmul fast float %389, %220
  %393 = fmul fast float %390, %221
  %394 = call float @dx.op.unary.f32(i32 6, float %338)  ; FAbs(value)
  %395 = fcmp fast olt float %394, %391
  br i1 %395, label %396, label %400, !dx.controlflow.hints !64

; <label>:396                                     ; preds = %388
  %397 = fmul fast float %390, %218
  %398 = fmul fast float %397, %394
  %399 = call float @dx.op.unary.f32(i32 6, float %398)  ; FAbs(value)
  br label %414

; <label>:400                                     ; preds = %388
  %401 = fcmp fast ogt float %394, %392
  br i1 %401, label %402, label %414

; <label>:402                                     ; preds = %400
  %403 = fsub fast float %394, %392
  %404 = fmul fast float %393, %403
  %405 = call float @dx.op.unary.f32(i32 6, float %404)  ; FAbs(value)
  %406 = fsub fast float 1.000000e+00, %405
  br label %414

; <label>:407                                     ; preds = %387
  %408 = select i1 %239, float 5.000000e+01, float 1.000000e+00
  %409 = fmul fast float %408, %218
  %410 = call float @dx.op.unary.f32(i32 6, float %194)  ; FAbs(value)
  %411 = select i1 %236, float %410, float 0x47EFFFFFE0000000
  %412 = call float @dx.op.binary.f32(i32 36, float %338, float %411)  ; FMin(a,b)
  %413 = fmul fast float %409, %412
  br label %414

; <label>:414                                     ; preds = %407, %402, %400, %396, %376, %339, %277
  %415 = phi float [ %334, %277 ], [ %374, %339 ], [ %386, %376 ], [ %413, %407 ], [ %399, %396 ], [ %406, %402 ], [ %394, %400 ]
  %416 = phi float [ %332, %277 ], [ %372, %339 ], [ 1.000000e+00, %376 ], [ 1.000000e+00, %407 ], [ 1.000000e+00, %396 ], [ 1.000000e+00, %402 ], [ 1.000000e+00, %400 ]
  %417 = call float @dx.op.unary.f32(i32 7, float %415)  ; Saturate(value)
  %418 = fmul fast float %417, %33
  %419 = fmul fast float %416, %173
  %420 = fmul fast float %419, %417
  br label %421

; <label>:421                                     ; preds = %414, %212
  %422 = phi float [ %420, %414 ], [ %173, %212 ]
  %423 = phi float [ %418, %414 ], [ %33, %212 ]
  %424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.f32 %424, 2
  %426 = fptosi float %37 to i32
  %427 = sitofp i32 %426 to float
  %428 = fadd fast float %425, %427
  %429 = fmul fast float %428, 0x3FE3C6EF40000000
  %430 = frem fast float %43, 2.560000e+02
  %431 = frem fast float %44, 2.560000e+02
  %432 = fptoui float %430 to i32
  %433 = fptoui float %431 to i32
  %434 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %432, i32 %433, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %435 = extractvalue %dx.types.ResRet.f32 %434, 0
  %436 = fadd fast float %435, %429
  %437 = call float @dx.op.unary.f32(i32 22, float %436)  ; Frc(value)
  %438 = and i32 %121, 1
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %497, label %440, !dx.controlflow.hints !65

; <label>:440                                     ; preds = %421
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 2
  %443 = extractvalue %dx.types.ResRet.f32 %441, 3
  %444 = add i32 %118, 16
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 0
  %447 = extractvalue %dx.types.ResRet.f32 %445, 1
  %448 = extractvalue %dx.types.ResRet.f32 %445, 2
  %449 = add i32 %118, 32
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = extractvalue %dx.types.ResRet.f32 %450, 2
  %454 = and i32 %121, 2
  %455 = icmp eq i32 %454, 0
  %456 = call float @dx.op.dot3.f32(i32 55, float %26, float %27, float %28, float %26, float %27, float %28)  ; Dot3(ax,ay,az,bx,by,bz)
  %457 = call float @dx.op.unary.f32(i32 25, float %456)  ; Rsqrt(value)
  %458 = fmul fast float %457, %26
  %459 = fmul fast float %457, %27
  %460 = fmul fast float %457, %28
  %461 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %462 = call float @dx.op.unary.f32(i32 25, float %461)  ; Rsqrt(value)
  %463 = fmul fast float %462, %78
  %464 = fmul fast float %462, %79
  %465 = fmul fast float %462, %80
  %466 = call float @dx.op.dot3.f32(i32 55, float %463, float %464, float %465, float %458, float %459, float %460)  ; Dot3(ax,ay,az,bx,by,bz)
  %467 = fmul fast float %466, %466
  %468 = fmul fast float %467, %442
  %469 = fadd fast float %468, %443
  %470 = call float @dx.op.unary.f32(i32 7, float %469)  ; Saturate(value)
  br i1 %455, label %471, label %481, !dx.controlflow.hints !66

; <label>:471                                     ; preds = %440
  %472 = extractvalue %dx.types.ResRet.f32 %441, 1
  %473 = extractvalue %dx.types.ResRet.f32 %441, 0
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %476 = fmul fast float %475, %461
  %477 = fsub fast float %473, %476
  %478 = fmul fast float %477, %472
  %479 = call float @dx.op.unary.f32(i32 7, float %478)  ; Saturate(value)
  %480 = fmul fast float %479, %470
  br label %481

; <label>:481                                     ; preds = %471, %440
  %482 = phi float [ %480, %471 ], [ %470, %440 ]
  %483 = fsub fast float %446, %451
  %484 = fsub fast float %447, %452
  %485 = fsub fast float %448, %453
  %486 = fmul fast float %482, %483
  %487 = fmul fast float %482, %484
  %488 = fmul fast float %482, %485
  %489 = fadd fast float %486, %451
  %490 = fadd fast float %487, %452
  %491 = fadd fast float %488, %453
  %492 = fmul fast float %489, %22
  %493 = fmul fast float %490, %22
  %494 = fmul fast float %491, %22
  %495 = fmul fast float %482, %422
  %496 = fmul fast float %482, %423
  br label %497

; <label>:497                                     ; preds = %481, %421
  %498 = phi float [ %495, %481 ], [ %422, %421 ]
  %499 = phi float [ %496, %481 ], [ %423, %421 ]
  %500 = phi float [ %492, %481 ], [ %22, %421 ]
  %501 = phi float [ %493, %481 ], [ %22, %421 ]
  %502 = phi float [ %494, %481 ], [ %22, %421 ]
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = add i32 %504, 0
  %506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %505, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %506, %dx.types.Handle %40, float %158, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = add i32 %510, 0
  %512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %513 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %512, %dx.types.Handle %15, float %508, float %21, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = extractvalue %dx.types.ResRet.f32 %513, 1
  %516 = extractvalue %dx.types.ResRet.f32 %513, 2
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = shl i32 %518, 4
  %520 = and i32 %519, 32752
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = lshr i32 %518, 7
  %523 = and i32 %522, 32752
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = lshr i32 %518, 22
  %526 = shl nuw nsw i32 %525, 5
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = fmul fast float %521, %514
  %529 = fmul fast float %524, %515
  %530 = fmul fast float %527, %516
  %531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %532 = extractvalue %dx.types.CBufRet.f32 %531, 0
  %533 = fmul fast float %528, %532
  %534 = fmul fast float %529, %532
  %535 = fmul fast float %530, %532
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = lshr i32 %537, 22
  %539 = shl nuw nsw i32 %538, 5
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = fmul fast float %540, %533
  %542 = select i1 %101, float %541, float %533
  %543 = fmul fast float %542, %500
  %544 = fmul fast float %534, %501
  %545 = fmul fast float %535, %502
  %546 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %547 = select i1 %101, float 0.000000e+00, float %543
  %548 = select i1 %101, float %546, float %544
  %549 = select i1 %101, float 0.000000e+00, float %545
  %550 = call float @dx.op.dot3.f32(i32 55, float %514, float %515, float %516, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = and i32 %552, 255
  %554 = uitofp i32 %553 to float
  %555 = lshr i32 %552, 8
  %556 = and i32 %555, 255
  %557 = uitofp i32 %556 to float
  %558 = fmul fast float %557, %550
  %559 = fadd fast float %558, %554
  %560 = fmul fast float %559, 0x3F70101020000000
  %561 = call float @dx.op.unary.f32(i32 7, float %560)  ; Saturate(value)
  %562 = and i32 %121, 8192
  %563 = icmp eq i32 %562, 0
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 0
  br i1 %563, label %572, label %566, !dx.controlflow.hints !67

; <label>:566                                     ; preds = %497
  %567 = add i32 %118, 176
  %568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = fcmp fast oge float %569, 0.000000e+00
  %571 = select i1 %570, float %569, float %565
  br label %578

; <label>:572                                     ; preds = %497
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = bitcast i32 %574 to float
  %576 = fcmp fast oge float %575, 0.000000e+00
  %577 = select i1 %576, float %575, float %565
  br label %578

; <label>:578                                     ; preds = %572, %566
  %579 = phi float [ %571, %566 ], [ %577, %572 ]
  %580 = fmul fast float %550, %499
  %581 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %176, i32 %177, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = lshr i32 %582, 18
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F4C00EBA0000000
  %586 = call float @dx.op.unary.f32(i32 21, float %585)  ; Exp(value)
  %587 = fadd fast float %586, -1.000000e+00
  %588 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %589 = extractvalue %dx.types.Dimensions %588, 0
  %590 = sitofp i32 %589 to float
  %591 = extractvalue %dx.types.Dimensions %588, 1
  %592 = sitofp i32 %591 to float
  %593 = fcmp fast oge float %174, %590
  %594 = fcmp fast oge float %175, %592
  %595 = or i1 %593, %594
  %596 = select i1 %595, float 0x4197782600000000, float %587
  %597 = icmp eq i32 %117, 3
  %598 = fcmp fast ogt float %37, %596
  %599 = and i1 %200, %598
  %600 = or i1 %597, %599
  %601 = icmp eq i32 %117, 2
  %602 = fcmp fast ole float %37, %596
  %603 = and i1 %601, %602
  %604 = or i1 %603, %600
  %605 = fmul fast float %29, %23
  %606 = fmul fast float %605, %542
  %607 = fmul fast float %29, %24
  %608 = fmul fast float %607, %534
  %609 = fmul fast float %29, %25
  %610 = fmul fast float %609, %535
  %611 = fadd fast float %547, %606
  %612 = fadd fast float %548, %608
  %613 = fadd fast float %549, %610
  %614 = fmul fast float %611, %498
  %615 = fmul fast float %612, %498
  %616 = fmul fast float %613, %498
  %617 = fmul fast float %579, %561
  %618 = fsub fast float 1.000000e+00, %561
  %619 = fsub fast float %618, %580
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %622 = extractvalue %dx.types.CBufRet.f32 %621, 3
  %623 = fmul fast float %622, %620
  %624 = fadd fast float %623, %617
  %625 = and i32 %121, 1048576
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %718, label %627, !dx.controlflow.hints !68

; <label>:627                                     ; preds = %578
  %628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %629 = extractvalue %dx.types.CBufRet.f32 %628, 2
  %630 = extractvalue %dx.types.CBufRet.f32 %628, 3
  %631 = fmul fast float %629, %43
  %632 = fmul fast float %630, %44
  %633 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %634 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %635 = select i1 %604, i32 2, i32 0
  %636 = or i32 %635, 1
  %637 = uitofp i32 %636 to float
  %638 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %633, float %634, float %637, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = extractvalue %dx.types.ResRet.f32 %638, 1
  %641 = extractvalue %dx.types.ResRet.f32 %638, 2
  %642 = extractvalue %dx.types.ResRet.f32 %638, 3
  %643 = add nuw nsw i32 %635, 2
  %644 = uitofp i32 %643 to float
  %645 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %633, float %634, float %644, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %646 = extractvalue %dx.types.ResRet.f32 %645, 0
  %647 = extractvalue %dx.types.ResRet.f32 %645, 1
  %648 = extractvalue %dx.types.ResRet.f32 %645, 2
  %649 = extractvalue %dx.types.ResRet.f32 %645, 3
  %650 = call float @dx.op.binary.f32(i32 35, float %640, float %641)  ; FMax(a,b)
  %651 = call float @dx.op.binary.f32(i32 35, float %639, float %650)  ; FMax(a,b)
  %652 = call float @dx.op.binary.f32(i32 35, float %651, float %642)  ; FMax(a,b)
  %653 = call float @dx.op.binary.f32(i32 36, float %647, float %648)  ; FMin(a,b)
  %654 = call float @dx.op.binary.f32(i32 36, float %646, float %653)  ; FMin(a,b)
  %655 = call float @dx.op.binary.f32(i32 36, float %654, float %649)  ; FMin(a,b)
  %656 = fmul fast float %652, 2.550000e+02
  %657 = fadd fast float %656, 0x3F70101020000000
  %658 = fptoui float %657 to i32
  %659 = fmul fast float %655, 2.550000e+02
  %660 = fadd fast float %659, 0x3F70101020000000
  %661 = fptoui float %660 to i32
  %662 = icmp ult i32 %658, %661
  br i1 %662, label %663, label %711

; <label>:663                                     ; preds = %627
  %664 = fcmp fast ogt float %36, 9.843750e-01
  %665 = fadd fast float %37, -4.000000e+00
  %666 = select i1 %664, float -4.000000e+00, float %665
  %667 = call float @dx.op.binary.f32(i32 35, float %666, float 0.000000e+00)  ; FMax(a,b)
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 0
  %670 = fadd fast float %669, %667
  %671 = extractvalue %dx.types.CBufRet.f32 %668, 2
  %672 = fmul fast float %670, %671
  %673 = call float @dx.op.unary.f32(i32 23, float %672)  ; Log(value)
  %674 = extractvalue %dx.types.CBufRet.f32 %668, 3
  %675 = fmul fast float %674, %673
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 2
  %678 = fmul fast float %675, %677
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %680 = uitofp i32 %658 to float
  %681 = uitofp i32 %661 to float
  %682 = fadd fast float %680, 5.000000e-01
  %683 = fadd fast float %681, 5.000000e-01
  %684 = fmul fast float %677, %682
  %685 = fmul fast float %677, %683
  %686 = fadd fast float %684, 0x3F0FFB4800000000
  %687 = fadd fast float %685, 0xBF0FFB4800000000
  %688 = call float @dx.op.binary.f32(i32 35, float %679, float %686)  ; FMax(a,b)
  %689 = call float @dx.op.binary.f32(i32 36, float %688, float %687)  ; FMin(a,b)
  %690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %691 = extractvalue %dx.types.CBufRet.f32 %690, 1
  %692 = extractvalue %dx.types.CBufRet.f32 %690, 2
  %693 = extractvalue %dx.types.CBufRet.f32 %690, 0
  %694 = select i1 %604, float %693, float 0.000000e+00
  %695 = fmul fast float %691, %689
  %696 = fadd fast float %694, %695
  %697 = fadd fast float %694, %692
  %698 = fsub fast float %691, %692
  %699 = fadd fast float %698, %694
  %700 = call float @dx.op.binary.f32(i32 35, float %696, float %697)  ; FMax(a,b)
  %701 = call float @dx.op.binary.f32(i32 36, float %700, float %699)  ; FMin(a,b)
  %702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %15, float %633, float %634, float %701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %703 = extractvalue %dx.types.ResRet.f32 %702, 0
  %704 = extractvalue %dx.types.ResRet.f32 %702, 1
  %705 = extractvalue %dx.types.ResRet.f32 %702, 2
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 1
  %708 = fmul fast float %707, %703
  %709 = fmul fast float %707, %704
  %710 = fmul fast float %707, %705
  br label %711

; <label>:711                                     ; preds = %663, %627
  %712 = phi float [ %708, %663 ], [ 1.000000e+00, %627 ]
  %713 = phi float [ %709, %663 ], [ 1.000000e+00, %627 ]
  %714 = phi float [ %710, %663 ], [ 1.000000e+00, %627 ]
  %715 = fmul fast float %712, %614
  %716 = fmul fast float %713, %615
  %717 = fmul fast float %714, %616
  br label %718

; <label>:718                                     ; preds = %711, %578
  %719 = phi float [ %715, %711 ], [ %614, %578 ]
  %720 = phi float [ %716, %711 ], [ %615, %578 ]
  %721 = phi float [ %717, %711 ], [ %616, %578 ]
  %722 = and i32 %121, 2097152
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %728, label %724, !dx.controlflow.hints !69

; <label>:724                                     ; preds = %718
  %725 = add i32 %118, 192
  %726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.f32 %726, 0
  br label %731

; <label>:728                                     ; preds = %718
  %729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.f32 %729, 3
  br label %731

; <label>:731                                     ; preds = %728, %724
  %732 = phi float [ %727, %724 ], [ %730, %728 ]
  br i1 %599, label %733, label %848

; <label>:733                                     ; preds = %731
  %734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %735 = extractvalue %dx.types.CBufRet.f32 %734, 2
  %736 = extractvalue %dx.types.CBufRet.f32 %734, 3
  %737 = fmul fast float %735, %43
  %738 = fmul fast float %736, %44
  %739 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %740 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  %741 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %739, float %740, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = extractvalue %dx.types.ResRet.f32 %741, 1
  %744 = extractvalue %dx.types.ResRet.f32 %741, 2
  %745 = extractvalue %dx.types.ResRet.f32 %741, 3
  %746 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %739, float %740, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %747 = extractvalue %dx.types.ResRet.f32 %746, 0
  %748 = extractvalue %dx.types.ResRet.f32 %746, 1
  %749 = extractvalue %dx.types.ResRet.f32 %746, 2
  %750 = extractvalue %dx.types.ResRet.f32 %746, 3
  %751 = call float @dx.op.binary.f32(i32 35, float %743, float %744)  ; FMax(a,b)
  %752 = call float @dx.op.binary.f32(i32 35, float %742, float %751)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 35, float %752, float %745)  ; FMax(a,b)
  %754 = call float @dx.op.binary.f32(i32 36, float %748, float %749)  ; FMin(a,b)
  %755 = call float @dx.op.binary.f32(i32 36, float %747, float %754)  ; FMin(a,b)
  %756 = call float @dx.op.binary.f32(i32 36, float %755, float %750)  ; FMin(a,b)
  %757 = fmul fast float %753, 2.550000e+02
  %758 = fadd fast float %757, 0x3F70101020000000
  %759 = fptoui float %758 to i32
  %760 = fmul fast float %756, 2.550000e+02
  %761 = fadd fast float %760, 0x3F70101020000000
  %762 = fptoui float %761 to i32
  %763 = icmp ult i32 %759, %762
  br i1 %763, label %764, label %806

; <label>:764                                     ; preds = %733
  %765 = fcmp fast ogt float %36, 9.843750e-01
  %766 = fadd fast float %37, -4.000000e+00
  %767 = select i1 %765, float -4.000000e+00, float %766
  %768 = call float @dx.op.binary.f32(i32 35, float %767, float 0.000000e+00)  ; FMax(a,b)
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 0
  %771 = fadd fast float %770, %768
  %772 = extractvalue %dx.types.CBufRet.f32 %769, 2
  %773 = fmul fast float %771, %772
  %774 = call float @dx.op.unary.f32(i32 23, float %773)  ; Log(value)
  %775 = extractvalue %dx.types.CBufRet.f32 %769, 3
  %776 = fmul fast float %775, %774
  %777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %778 = extractvalue %dx.types.CBufRet.f32 %777, 2
  %779 = fmul fast float %776, %778
  %780 = call float @dx.op.unary.f32(i32 7, float %779)  ; Saturate(value)
  %781 = uitofp i32 %759 to float
  %782 = uitofp i32 %762 to float
  %783 = fadd fast float %781, 5.000000e-01
  %784 = fadd fast float %782, 5.000000e-01
  %785 = fmul fast float %778, %783
  %786 = fmul fast float %778, %784
  %787 = fadd fast float %785, 0x3F0FFB4800000000
  %788 = fadd fast float %786, 0xBF0FFB4800000000
  %789 = call float @dx.op.binary.f32(i32 35, float %780, float %787)  ; FMax(a,b)
  %790 = call float @dx.op.binary.f32(i32 36, float %789, float %788)  ; FMin(a,b)
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 1
  %793 = extractvalue %dx.types.CBufRet.f32 %791, 2
  %794 = extractvalue %dx.types.CBufRet.f32 %791, 0
  %795 = fmul fast float %792, %790
  %796 = fadd fast float %794, %795
  %797 = fadd fast float %794, %793
  %798 = fsub fast float %792, %793
  %799 = fadd fast float %798, %794
  %800 = call float @dx.op.binary.f32(i32 35, float %796, float %797)  ; FMax(a,b)
  %801 = call float @dx.op.binary.f32(i32 36, float %800, float %799)  ; FMin(a,b)
  %802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %739, float %740, float %801, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %803 = extractvalue %dx.types.ResRet.f32 %802, 0
  %804 = extractvalue %dx.types.ResRet.f32 %802, 1
  %805 = extractvalue %dx.types.ResRet.f32 %802, 2
  br label %806

; <label>:806                                     ; preds = %764, %733
  %807 = phi float [ %803, %764 ], [ 1.000000e+00, %733 ]
  %808 = phi float [ %804, %764 ], [ 1.000000e+00, %733 ]
  %809 = phi float [ %805, %764 ], [ 1.000000e+00, %733 ]
  %810 = call float @dx.op.dot3.f32(i32 55, float %807, float %808, float %809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %811 = select i1 %101, float %810, float %807
  %812 = select i1 %101, float %810, float %808
  %813 = select i1 %101, float 1.000000e+00, float %809
  %814 = fmul fast float %811, %719
  %815 = fmul fast float %812, %720
  %816 = fmul fast float %813, %721
  %817 = fmul fast float %48, %735
  %818 = fmul fast float %50, %736
  %819 = fsub fast float 1.000000e+00, %817
  %820 = fsub fast float 1.000000e+00, %818
  %821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %822 = extractvalue %dx.types.CBufRet.f32 %821, 0
  %823 = extractvalue %dx.types.CBufRet.f32 %821, 1
  %824 = extractvalue %dx.types.CBufRet.f32 %821, 2
  %825 = fmul fast float %819, %822
  %826 = fmul fast float %819, %823
  %827 = fmul fast float %819, %824
  %828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %829 = extractvalue %dx.types.CBufRet.f32 %828, 0
  %830 = extractvalue %dx.types.CBufRet.f32 %828, 1
  %831 = extractvalue %dx.types.CBufRet.f32 %828, 2
  %832 = fmul fast float %820, %829
  %833 = fmul fast float %820, %830
  %834 = fmul fast float %820, %831
  %835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %836 = extractvalue %dx.types.CBufRet.f32 %835, 0
  %837 = extractvalue %dx.types.CBufRet.f32 %835, 1
  %838 = extractvalue %dx.types.CBufRet.f32 %835, 2
  %839 = fadd fast float %832, %836
  %840 = fadd fast float %839, %825
  %841 = fadd fast float %833, %837
  %842 = fadd fast float %841, %826
  %843 = fadd fast float %834, %838
  %844 = fadd fast float %843, %827
  %845 = fmul fast float %840, %596
  %846 = fmul fast float %842, %596
  %847 = fmul fast float %844, %596
  br label %848

; <label>:848                                     ; preds = %806, %731
  %849 = phi float [ %845, %806 ], [ %78, %731 ]
  %850 = phi float [ %846, %806 ], [ %79, %731 ]
  %851 = phi float [ %847, %806 ], [ %80, %731 ]
  %852 = phi float [ %596, %806 ], [ %37, %731 ]
  %853 = phi float [ %814, %806 ], [ %719, %731 ]
  %854 = phi float [ %815, %806 ], [ %720, %731 ]
  %855 = phi float [ %816, %806 ], [ %721, %731 ]
  %856 = phi float [ %807, %806 ], [ 1.000000e+00, %731 ]
  br i1 %604, label %1734, label %857

; <label>:857                                     ; preds = %848
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %860 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %861 = extractvalue %dx.types.CBufRet.f32 %858, 2
  %862 = extractvalue %dx.types.CBufRet.f32 %858, 3
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 0
  %865 = extractvalue %dx.types.CBufRet.f32 %863, 1
  %866 = extractvalue %dx.types.CBufRet.f32 %863, 2
  %867 = extractvalue %dx.types.CBufRet.f32 %863, 3
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 3
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 3
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 3
  %874 = extractvalue %dx.types.CBufRet.f32 %872, 0
  %875 = extractvalue %dx.types.CBufRet.f32 %872, 1
  %876 = extractvalue %dx.types.CBufRet.f32 %872, 2
  %877 = fcmp fast olt float %876, -5.000000e-01
  %878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.f32 %878, 3
  %880 = call float @dx.op.dot3.f32(i32 55, float %849, float %850, float %851, float %849, float %850, float %851)  ; Dot3(ax,ay,az,bx,by,bz)
  %881 = call float @dx.op.unary.f32(i32 25, float %880)  ; Rsqrt(value)
  %882 = fmul fast float %881, %880
  %883 = fmul fast float %881, %849
  %884 = fmul fast float %881, %850
  %885 = fmul fast float %881, %851
  %886 = fadd fast float %882, %862
  %887 = call float @dx.op.dot3.f32(i32 55, float %883, float %884, float %885, float %859, float %860, float %861)  ; Dot3(ax,ay,az,bx,by,bz)
  %888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %889 = extractvalue %dx.types.CBufRet.i32 %888, 1
  %890 = and i32 %889, 1
  %891 = icmp ne i32 %890, 0
  %892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %893 = extractvalue %dx.types.CBufRet.f32 %892, 2
  %894 = fcmp fast ogt float %893, 0.000000e+00
  %895 = and i1 %891, %894
  br i1 %895, label %896, label %1235, !dx.controlflow.hints !70

; <label>:896                                     ; preds = %857
  %897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %898 = extractvalue %dx.types.CBufRet.f32 %897, 3
  %899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %900 = extractvalue %dx.types.CBufRet.f32 %899, 2
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 2
  %903 = fsub fast float %900, %902
  %904 = and i32 %889, 2
  %905 = extractvalue %dx.types.CBufRet.i32 %888, 0
  %906 = call i32 @dx.op.binary.i32(i32 40, i32 %905, i32 3)  ; UMin(a,b)
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = extractvalue %dx.types.CBufRet.f32 %907, 1
  %910 = extractvalue %dx.types.CBufRet.f32 %901, 0
  %911 = extractvalue %dx.types.CBufRet.f32 %901, 1
  %912 = fsub fast float %908, %910
  %913 = fsub fast float %909, %911
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 0
  %916 = fcmp fast ogt float %915, 0.000000e+00
  %917 = fsub fast float -0.000000e+00, %912
  %918 = fsub fast float -0.000000e+00, %913
  %919 = call float @dx.op.dot2.f32(i32 54, float %883, float %884, float %883, float %884)  ; Dot2(ax,ay,bx,by)
  %920 = call float @dx.op.dot2.f32(i32 54, float %883, float %884, float %917, float %918)  ; Dot2(ax,ay,bx,by)
  %921 = fmul fast float %920, 2.000000e+00
  %922 = call float @dx.op.dot2.f32(i32 54, float %917, float %918, float %917, float %918)  ; Dot2(ax,ay,bx,by)
  %923 = fmul fast float %915, %915
  %924 = fsub fast float %922, %923
  %925 = fmul fast float %921, %921
  %926 = fmul fast float %919, 4.000000e+00
  %927 = fmul fast float %926, %924
  %928 = fsub fast float %925, %927
  %929 = fcmp fast ogt float %928, 0.000000e+00
  br i1 %929, label %930, label %945

; <label>:930                                     ; preds = %896
  %931 = fcmp fast ogt float %921, 0.000000e+00
  %932 = call float @dx.op.unary.f32(i32 24, float %928)  ; Sqrt(value)
  %933 = fsub fast float -0.000000e+00, %932
  %934 = select i1 %931, float %932, float %933
  %935 = fadd fast float %934, %921
  %936 = fmul float %935, -5.000000e-01
  %937 = fdiv fast float %936, %919
  %938 = call float @dx.op.binary.f32(i32 35, float %937, float 0.000000e+00)  ; FMax(a,b)
  %939 = call float @dx.op.binary.f32(i32 36, float %882, float %938)  ; FMin(a,b)
  %940 = fdiv fast float %924, %936
  %941 = call float @dx.op.binary.f32(i32 35, float %940, float 0.000000e+00)  ; FMax(a,b)
  %942 = call float @dx.op.binary.f32(i32 36, float %882, float %941)  ; FMin(a,b)
  %943 = call float @dx.op.binary.f32(i32 36, float %939, float %942)  ; FMin(a,b)
  %944 = call float @dx.op.binary.f32(i32 35, float %939, float %942)  ; FMax(a,b)
  br label %945

; <label>:945                                     ; preds = %930, %896
  %946 = phi float [ %944, %930 ], [ -1.000000e+00, %896 ]
  %947 = phi float [ %943, %930 ], [ -1.000000e+00, %896 ]
  %948 = phi i1 [ true, %930 ], [ false, %896 ]
  %949 = and i1 %916, %948
  br i1 %949, label %950, label %952

; <label>:950                                     ; preds = %945
  %951 = fcmp fast oeq float %947, %946
  br i1 %951, label %1195, label %953

; <label>:952                                     ; preds = %945
  br i1 %916, label %1195, label %953

; <label>:953                                     ; preds = %952, %950
  %954 = phi float [ %882, %952 ], [ %946, %950 ]
  %955 = phi float [ 0.000000e+00, %952 ], [ %947, %950 ]
  %956 = icmp ne i32 %904, 0
  %957 = fmul fast float %954, %885
  %958 = fadd fast float %957, %898
  %959 = fmul fast float %958, %954
  %960 = select i1 %956, float 0.000000e+00, float %959
  %961 = fcmp fast oeq float %885, 0.000000e+00
  %962 = fdiv fast float %903, %885
  %963 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %962)  ; FMax(a,b)
  %964 = select i1 %961, float %954, float %963
  %965 = call float @dx.op.binary.f32(i32 36, float %954, float %964)  ; FMin(a,b)
  %966 = fcmp fast ogt float %885, 0.000000e+00
  %967 = fcmp fast olt float %903, 0.000000e+00
  br i1 %966, label %968, label %1005

; <label>:968                                     ; preds = %953
  %969 = icmp eq i32 %904, 0
  br i1 %967, label %970, label %994

; <label>:970                                     ; preds = %968
  %971 = select i1 %969, float %954, float 0.000000e+00
  %972 = fsub fast float -0.000000e+00, %971
  %973 = call float @dx.op.unary.f32(i32 6, float %972)  ; FAbs(value)
  %974 = fmul fast float %971, %885
  %975 = fadd fast float %974, %898
  %976 = fmul fast float %973, %975
  %977 = fsub fast float %960, %976
  %978 = fsub fast float %954, %973
  %979 = select i1 %969, float %978, float 0.000000e+00
  %980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %981 = extractvalue %dx.types.CBufRet.f32 %980, 3
  %982 = call float @dx.op.binary.f32(i32 36, float %977, float %981)  ; FMin(a,b)
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %985 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %986 = fadd fast float %985, %984
  %987 = call float @dx.op.unary.f32(i32 7, float %986)  ; Saturate(value)
  %988 = extractvalue %dx.types.CBufRet.f32 %983, 2
  %989 = extractvalue %dx.types.CBufRet.f32 %983, 3
  %990 = fadd fast float %989, %988
  %991 = call float @dx.op.unary.f32(i32 7, float %990)  ; Saturate(value)
  %992 = fmul fast float %987, %982
  %993 = fmul fast float %992, %991
  br label %1195

; <label>:994                                     ; preds = %968
  br i1 %969, label %995, label %1016

; <label>:995                                     ; preds = %994
  %996 = call float @dx.op.binary.f32(i32 36, float %965, float %955)  ; FMin(a,b)
  %997 = fsub fast float %965, %996
  %998 = fsub fast float %997, %954
  %999 = call float @dx.op.unary.f32(i32 6, float %998)  ; FAbs(value)
  %1000 = fadd fast float %997, %954
  %1001 = fmul fast float %1000, %885
  %1002 = fadd fast float %1001, %898
  %1003 = fmul fast float %1002, %999
  %1004 = fsub fast float %960, %1003
  br label %1016

; <label>:1005                                    ; preds = %953
  br i1 %967, label %1006, label %1016

; <label>:1006                                    ; preds = %1005
  %1007 = call float @dx.op.binary.f32(i32 35, float %955, float %965)  ; FMax(a,b)
  %1008 = icmp eq i32 %904, 0
  %1009 = select i1 %1008, float %965, float 0.000000e+00
  %1010 = fsub fast float -0.000000e+00, %1009
  %1011 = call float @dx.op.unary.f32(i32 6, float %1010)  ; FAbs(value)
  %1012 = fmul fast float %1009, %885
  %1013 = fadd fast float %1012, %898
  %1014 = fmul fast float %1011, %1013
  %1015 = fsub fast float %960, %1014
  br label %1016

; <label>:1016                                    ; preds = %1006, %1005, %995, %994
  %1017 = phi float [ %955, %994 ], [ %955, %995 ], [ %1007, %1006 ], [ %955, %1005 ]
  %1018 = phi float [ 0.000000e+00, %994 ], [ %999, %995 ], [ %1011, %1006 ], [ 0.000000e+00, %1005 ]
  %1019 = phi float [ %960, %994 ], [ %1004, %995 ], [ %1015, %1006 ], [ %960, %1005 ]
  %1020 = phi float [ %965, %994 ], [ %965, %995 ], [ %954, %1006 ], [ %954, %1005 ]
  %1021 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 0
  store float -1.000000e+00, float* %1021, align 4, !tbaa !71, !noalias !75
  %1022 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 1
  store float -1.000000e+00, float* %1022, align 4, !tbaa !71, !noalias !75
  %1023 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 2
  store float -1.000000e+00, float* %1023, align 4, !tbaa !71, !noalias !75
  %1024 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 0
  store float -1.000000e+00, float* %1024, align 4, !tbaa !71, !noalias !75
  %1025 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 1
  store float -1.000000e+00, float* %1025, align 4, !tbaa !71, !noalias !75
  %1026 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 2
  store float -1.000000e+00, float* %1026, align 4, !tbaa !71, !noalias !75
  %1027 = icmp sgt i32 %906, 0
  br i1 %1027, label %1028, label %1089

; <label>:1028                                    ; preds = %1016
  br label %1029

; <label>:1029                                    ; preds = %1078, %1028
  %1030 = phi i32 [ %1079, %1078 ], [ 0, %1028 ]
  %1031 = phi i32 [ %1080, %1078 ], [ 0, %1028 ]
  %1032 = add nuw i32 %1031, 171
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1032)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.CBufRet.f32 %1033, 1
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1039 = fsub fast float %1034, %1037
  %1040 = fsub fast float %1035, %1038
  %1041 = extractvalue %dx.types.CBufRet.f32 %1033, 2
  %1042 = fsub fast float -0.000000e+00, %1039
  %1043 = fsub fast float -0.000000e+00, %1040
  %1044 = call float @dx.op.dot2.f32(i32 54, float %883, float %884, float %1042, float %1043)  ; Dot2(ax,ay,bx,by)
  %1045 = fmul fast float %1044, 2.000000e+00
  %1046 = call float @dx.op.dot2.f32(i32 54, float %1042, float %1043, float %1042, float %1043)  ; Dot2(ax,ay,bx,by)
  %1047 = fmul fast float %1041, %1041
  %1048 = fsub fast float %1046, %1047
  %1049 = fmul fast float %1045, %1045
  %1050 = fmul fast float %926, %1048
  %1051 = fsub fast float %1049, %1050
  %1052 = fcmp fast ogt float %1051, 0.000000e+00
  br i1 %1052, label %1053, label %1068

; <label>:1053                                    ; preds = %1029
  %1054 = fcmp fast ogt float %1045, 0.000000e+00
  %1055 = call float @dx.op.unary.f32(i32 24, float %1051)  ; Sqrt(value)
  %1056 = fsub fast float -0.000000e+00, %1055
  %1057 = select i1 %1054, float %1055, float %1056
  %1058 = fadd fast float %1057, %1045
  %1059 = fmul float %1058, -5.000000e-01
  %1060 = fdiv fast float %1059, %919
  %1061 = call float @dx.op.binary.f32(i32 35, float %1060, float 0.000000e+00)  ; FMax(a,b)
  %1062 = call float @dx.op.binary.f32(i32 36, float %954, float %1061)  ; FMin(a,b)
  %1063 = fdiv fast float %1048, %1059
  %1064 = call float @dx.op.binary.f32(i32 35, float %1063, float 0.000000e+00)  ; FMax(a,b)
  %1065 = call float @dx.op.binary.f32(i32 36, float %954, float %1064)  ; FMin(a,b)
  %1066 = call float @dx.op.binary.f32(i32 36, float %1062, float %1065)  ; FMin(a,b)
  %1067 = call float @dx.op.binary.f32(i32 35, float %1062, float %1065)  ; FMax(a,b)
  br label %1068

; <label>:1068                                    ; preds = %1053, %1029
  %1069 = phi float [ %1067, %1053 ], [ -1.000000e+00, %1029 ]
  %1070 = phi float [ %1066, %1053 ], [ -1.000000e+00, %1029 ]
  %1071 = phi i1 [ true, %1053 ], [ false, %1029 ]
  br i1 %1071, label %1072, label %1078

; <label>:1072                                    ; preds = %1068
  %1073 = call float @dx.op.binary.f32(i32 35, float %1017, float %1070)  ; FMax(a,b)
  %1074 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %1031
  store float %1073, float* %1074, align 4, !tbaa !71, !noalias !75
  %1075 = call float @dx.op.binary.f32(i32 35, float %1017, float %1069)  ; FMax(a,b)
  %1076 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1031
  store float %1075, float* %1076, align 4, !tbaa !71, !noalias !75
  %1077 = add nsw i32 %1030, 1
  br label %1078

; <label>:1078                                    ; preds = %1072, %1068
  %1079 = phi i32 [ %1077, %1072 ], [ %1030, %1068 ]
  %1080 = add nuw nsw i32 %1031, 1
  %1081 = icmp eq i32 %1080, %906
  br i1 %1081, label %1082, label %1029

; <label>:1082                                    ; preds = %1078
  %1083 = load float, float* %1023, align 4, !tbaa !71, !alias.scope !91, !noalias !94
  %1084 = load float, float* %1022, align 4, !tbaa !71, !alias.scope !97, !noalias !98
  %1085 = load float, float* %1021, align 4, !tbaa !71, !alias.scope !99, !noalias !100
  %1086 = load float, float* %1026, align 4, !tbaa !71, !alias.scope !101, !noalias !104
  %1087 = load float, float* %1025, align 4, !tbaa !71, !alias.scope !107, !noalias !108
  %1088 = load float, float* %1024, align 4, !tbaa !71, !alias.scope !109, !noalias !110
  br label %1089

; <label>:1089                                    ; preds = %1082, %1016
  %1090 = phi float [ -1.000000e+00, %1016 ], [ %1088, %1082 ]
  %1091 = phi float [ -1.000000e+00, %1016 ], [ %1087, %1082 ]
  %1092 = phi float [ -1.000000e+00, %1016 ], [ %1086, %1082 ]
  %1093 = phi float [ -1.000000e+00, %1016 ], [ %1085, %1082 ]
  %1094 = phi float [ -1.000000e+00, %1016 ], [ %1084, %1082 ]
  %1095 = phi float [ -1.000000e+00, %1016 ], [ %1083, %1082 ]
  %1096 = phi i32 [ 0, %1016 ], [ %1079, %1082 ]
  %1097 = call float @dx.op.binary.f32(i32 36, float %1094, float %1095)  ; FMin(a,b)
  %1098 = call float @dx.op.binary.f32(i32 36, float %1093, float %1097)  ; FMin(a,b)
  %1099 = call float @dx.op.binary.f32(i32 35, float %1093, float %1094)  ; FMax(a,b)
  %1100 = call float @dx.op.binary.f32(i32 36, float %1099, float %1095)  ; FMin(a,b)
  %1101 = call float @dx.op.binary.f32(i32 36, float %1093, float %1094)  ; FMin(a,b)
  %1102 = call float @dx.op.binary.f32(i32 35, float %1101, float %1100)  ; FMax(a,b)
  %1103 = call float @dx.op.binary.f32(i32 35, float %1094, float %1095)  ; FMax(a,b)
  %1104 = call float @dx.op.binary.f32(i32 35, float %1093, float %1103)  ; FMax(a,b)
  store float %1098, float* %1021, align 4, !tbaa !71, !alias.scope !99, !noalias !100
  store float %1102, float* %1022, align 4, !tbaa !71, !alias.scope !97, !noalias !98
  store float %1104, float* %1023, align 4, !tbaa !71, !alias.scope !91, !noalias !94
  %1105 = call float @dx.op.binary.f32(i32 36, float %1091, float %1092)  ; FMin(a,b)
  %1106 = call float @dx.op.binary.f32(i32 36, float %1090, float %1105)  ; FMin(a,b)
  %1107 = call float @dx.op.binary.f32(i32 35, float %1090, float %1091)  ; FMax(a,b)
  %1108 = call float @dx.op.binary.f32(i32 36, float %1107, float %1092)  ; FMin(a,b)
  %1109 = call float @dx.op.binary.f32(i32 36, float %1090, float %1091)  ; FMin(a,b)
  %1110 = call float @dx.op.binary.f32(i32 35, float %1109, float %1108)  ; FMax(a,b)
  %1111 = call float @dx.op.binary.f32(i32 35, float %1091, float %1092)  ; FMax(a,b)
  %1112 = call float @dx.op.binary.f32(i32 35, float %1090, float %1111)  ; FMax(a,b)
  store float %1106, float* %1024, align 4, !tbaa !71, !alias.scope !109, !noalias !110
  store float %1110, float* %1025, align 4, !tbaa !71, !alias.scope !107, !noalias !108
  store float %1112, float* %1026, align 4, !tbaa !71, !alias.scope !101, !noalias !104
  %1113 = sub nsw i32 3, %1096
  %1114 = icmp sgt i32 %1113, 2
  br i1 %1114, label %1115, label %1133

; <label>:1115                                    ; preds = %1089
  %1116 = icmp eq i32 %904, 0
  %1117 = fsub fast float %954, %1018
  %1118 = select i1 %1116, float %1117, float %1018
  %1119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1120 = extractvalue %dx.types.CBufRet.f32 %1119, 3
  %1121 = call float @dx.op.binary.f32(i32 36, float %1019, float %1120)  ; FMin(a,b)
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.CBufRet.f32 %1122, 1
  %1125 = fadd fast float %1124, %1123
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1127 = extractvalue %dx.types.CBufRet.f32 %1122, 2
  %1128 = extractvalue %dx.types.CBufRet.f32 %1122, 3
  %1129 = fadd fast float %1128, %1127
  %1130 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  %1131 = fmul fast float %1126, %1121
  %1132 = fmul fast float %1131, %1130
  br label %1195

; <label>:1133                                    ; preds = %1089
  %1134 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %1113
  %1135 = load float, float* %1134, align 4, !tbaa !71, !noalias !75
  %1136 = fcmp fast olt float %1135, %1020
  %1137 = icmp sgt i32 %1096, 0
  %1138 = and i1 %1137, %1136
  br i1 %1138, label %1139, label %1176

; <label>:1139                                    ; preds = %1133
  br label %1140

; <label>:1140                                    ; preds = %1169, %1139
  %1141 = phi float [ %1170, %1169 ], [ %1018, %1139 ]
  %1142 = phi float [ %1171, %1169 ], [ %1019, %1139 ]
  %1143 = phi float [ %1151, %1169 ], [ %1135, %1139 ]
  %1144 = phi i32 [ %1148, %1169 ], [ %1113, %1139 ]
  %1145 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1144
  %1146 = load float, float* %1145, align 4, !tbaa !71, !noalias !75
  %1147 = icmp slt i32 %1144, 2
  %1148 = add nsw i32 %1144, 1
  %1149 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %1148
  %1150 = load float, float* %1149, align 4, !tbaa !71, !noalias !75
  %1151 = select i1 %1147, float %1150, float %954
  %1152 = call float @dx.op.binary.f32(i32 36, float %1151, float %1146)  ; FMin(a,b)
  %1153 = call float @dx.op.binary.f32(i32 36, float %1020, float %1152)  ; FMin(a,b)
  %1154 = icmp eq i32 %904, 0
  %1155 = fadd fast float %1153, %1143
  %1156 = fmul fast float %1155, %885
  %1157 = fadd fast float %1156, %898
  br i1 %1154, label %1163, label %1158

; <label>:1158                                    ; preds = %1140
  %1159 = fsub fast float %1153, %1143
  %1160 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1159)  ; FMax(a,b)
  %1161 = fmul fast float %1160, %1157
  %1162 = fadd fast float %1161, %1142
  br label %1169

; <label>:1163                                    ; preds = %1140
  %1164 = fsub fast float %1143, %1153
  %1165 = call float @dx.op.unary.f32(i32 6, float %1164)  ; FAbs(value)
  %1166 = fadd fast float %1165, %1141
  %1167 = fmul fast float %1165, %1157
  %1168 = fsub fast float %1142, %1167
  br label %1169

; <label>:1169                                    ; preds = %1163, %1158
  %1170 = phi float [ %1160, %1158 ], [ %1166, %1163 ]
  %1171 = phi float [ %1162, %1158 ], [ %1168, %1163 ]
  %1172 = fcmp fast olt float %1151, %1020
  %1173 = icmp slt i32 %1148, 3
  %1174 = and i1 %1173, %1172
  br i1 %1174, label %1140, label %1175

; <label>:1175                                    ; preds = %1169
  br label %1176

; <label>:1176                                    ; preds = %1175, %1133
  %1177 = phi float [ %1018, %1133 ], [ %1170, %1175 ]
  %1178 = phi float [ %1019, %1133 ], [ %1171, %1175 ]
  %1179 = fsub fast float %954, %1177
  %1180 = select i1 %956, float %1177, float %1179
  %1181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1181, 3
  %1183 = call float @dx.op.binary.f32(i32 36, float %1178, float %1182)  ; FMin(a,b)
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.CBufRet.f32 %1184, 1
  %1187 = fadd fast float %1186, %1185
  %1188 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1189 = extractvalue %dx.types.CBufRet.f32 %1184, 2
  %1190 = extractvalue %dx.types.CBufRet.f32 %1184, 3
  %1191 = fadd fast float %1190, %1189
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1193 = fmul fast float %1188, %1183
  %1194 = fmul fast float %1193, %1192
  br label %1195

; <label>:1195                                    ; preds = %1176, %1115, %970, %952, %950
  %1196 = phi float [ %979, %970 ], [ %1118, %1115 ], [ %1180, %1176 ], [ 0.000000e+00, %950 ], [ 0.000000e+00, %952 ]
  %1197 = phi float [ %993, %970 ], [ %1132, %1115 ], [ %1194, %1176 ], [ 0.000000e+00, %950 ], [ 0.000000e+00, %952 ]
  %1198 = fmul fast float %893, %1197
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 2
  %1201 = fsub fast float %900, %1200
  %1202 = fcmp fast olt float %1198, -2.000000e+01
  %1203 = call float @dx.op.unary.f32(i32 21, float %1198)  ; Exp(value)
  %1204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1205 = extractvalue %dx.types.CBufRet.f32 %1204, 2
  %1206 = extractvalue %dx.types.CBufRet.f32 %1204, 3
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 2
  %1209 = fmul fast float %1206, %1201
  %1210 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  %1211 = fsub fast float 1.000000e+00, %1210
  %1212 = fmul fast float %885, 5.000000e-01
  %1213 = fadd fast float %1212, 5.000000e-01
  %1214 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  %1215 = fsub fast float 1.000000e+00, %1214
  %1216 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1211)  ; FMax(a,b)
  %1217 = fdiv fast float %1215, %1216
  %1218 = fsub fast float %1201, %851
  %1219 = call float @dx.op.unary.f32(i32 6, float %1218)  ; FAbs(value)
  %1220 = fmul fast float %1219, %1205
  %1221 = call float @dx.op.unary.f32(i32 7, float %1217)  ; Saturate(value)
  %1222 = fsub fast float 1.000000e+00, %1220
  %1223 = fmul fast float %1222, %1221
  %1224 = fadd fast float %1223, %1220
  %1225 = fmul fast float %1208, %1201
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  %1227 = fsub fast float 1.000000e+00, %1224
  %1228 = fmul fast float %1227, %1226
  %1229 = fadd fast float %1228, %1224
  %1230 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  %1231 = fadd fast float %1203, -1.000000e+00
  %1232 = select i1 %1202, float -1.000000e+00, float %1231
  %1233 = fmul fast float %1230, %1232
  %1234 = fadd fast float %1233, 1.000000e+00
  br label %1235

; <label>:1235                                    ; preds = %1195, %857
  %1236 = phi float [ %1196, %1195 ], [ 0.000000e+00, %857 ]
  %1237 = phi float [ %1234, %1195 ], [ 1.000000e+00, %857 ]
  %1238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1239 = extractvalue %dx.types.CBufRet.f32 %1238, 1
  %1240 = fsub fast float 1.000000e+00, %1237
  %1241 = fmul fast float %1240, %886
  %1242 = fmul fast float %1241, %1239
  %1243 = fsub fast float %886, %1242
  br i1 %877, label %1244, label %1260, !dx.controlflow.hints !111

; <label>:1244                                    ; preds = %1235
  %1245 = fmul fast float %887, %874
  %1246 = fadd fast float %1245, %875
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1248 = fmul fast float %864, %1243
  %1249 = fsub fast float -0.000000e+00, %1248
  %1250 = fmul fast float %865, %1243
  %1251 = fsub fast float -0.000000e+00, %1250
  %1252 = call float @dx.op.unary.f32(i32 21, float %1249)  ; Exp(value)
  %1253 = call float @dx.op.unary.f32(i32 21, float %1251)  ; Exp(value)
  %1254 = call float @dx.op.binary.f32(i32 35, float %879, float %1252)  ; FMax(a,b)
  %1255 = call float @dx.op.binary.f32(i32 35, float %879, float %1253)  ; FMax(a,b)
  %1256 = fsub fast float %1255, %1254
  %1257 = fmul fast float %1256, %1247
  %1258 = fadd fast float %1257, %1254
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  br label %1293

; <label>:1260                                    ; preds = %1235
  %1261 = fmul fast float %1243, %873
  %1262 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  %1263 = fsub fast float 2.000000e+00, %1262
  %1264 = fmul fast float %1262, 9.921875e-01
  %1265 = fmul fast float %1264, %1263
  %1266 = fadd fast float %1265, 3.906250e-03
  %1267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1266, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = fsub fast float %1262, %1268
  %1270 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1269)  ; FMax(a,b)
  %1271 = fmul fast float %867, %851
  %1272 = call float @dx.op.unary.f32(i32 6, float %1271)  ; FAbs(value)
  %1273 = fcmp fast ogt float %1272, 0x3EB0C6F7A0000000
  br i1 %1273, label %1274, label %1280, !dx.controlflow.hints !112

; <label>:1274                                    ; preds = %1260
  %1275 = fmul fast float %1271, 0xBFF7154760000000
  %1276 = call float @dx.op.unary.f32(i32 21, float %1275)  ; Exp(value)
  %1277 = fsub fast float 1.000000e+00, %1276
  %1278 = fdiv fast float %1277, %1271
  %1279 = fmul fast float %1278, %869
  br label %1280

; <label>:1280                                    ; preds = %1274, %1260
  %1281 = phi float [ %1279, %1274 ], [ %869, %1260 ]
  %1282 = fadd fast float %1281, %871
  %1283 = fmul fast float %1282, %1270
  %1284 = fmul fast float %864, %1283
  %1285 = fsub fast float -0.000000e+00, %1284
  %1286 = fmul fast float %865, %1283
  %1287 = fsub fast float -0.000000e+00, %1286
  %1288 = fmul fast float %866, %1283
  %1289 = fsub fast float -0.000000e+00, %1288
  %1290 = call float @dx.op.unary.f32(i32 21, float %1285)  ; Exp(value)
  %1291 = call float @dx.op.unary.f32(i32 21, float %1287)  ; Exp(value)
  %1292 = call float @dx.op.unary.f32(i32 21, float %1289)  ; Exp(value)
  br label %1293

; <label>:1293                                    ; preds = %1280, %1244
  %1294 = phi float [ %1259, %1244 ], [ %1290, %1280 ]
  %1295 = phi float [ %1259, %1244 ], [ %1291, %1280 ]
  %1296 = phi float [ %1259, %1244 ], [ %1292, %1280 ]
  br i1 %895, label %1297, label %1393, !dx.controlflow.hints !113

; <label>:1297                                    ; preds = %1293
  %1298 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1294)  ; FMax(a,b)
  %1299 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1295)  ; FMax(a,b)
  %1300 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1296)  ; FMax(a,b)
  %1301 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1237)  ; FMax(a,b)
  %1302 = call float @dx.op.binary.f32(i32 35, float %1236, float %1243)  ; FMax(a,b)
  %1303 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1302)  ; FMax(a,b)
  %1304 = fdiv fast float %1236, %1303
  %1305 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1306 = fdiv fast float %1243, %1303
  %1307 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1308 = fcmp fast une float %1301, 1.000000e+00
  br i1 %1308, label %1309, label %1312, !dx.controlflow.hints !114

; <label>:1309                                    ; preds = %1297
  %1310 = call float @dx.op.unary.f32(i32 23, float %1301)  ; Log(value)
  %1311 = fmul fast float %1310, 0x3FE62E4300000000
  br label %1312

; <label>:1312                                    ; preds = %1309, %1297
  %1313 = phi float [ %1311, %1309 ], [ 0.000000e+00, %1297 ]
  %1314 = fcmp fast une float %1298, 1.000000e+00
  br i1 %1314, label %1315, label %1318, !dx.controlflow.hints !115

; <label>:1315                                    ; preds = %1312
  %1316 = call float @dx.op.unary.f32(i32 23, float %1298)  ; Log(value)
  %1317 = fmul fast float %1316, 0x3FE62E4300000000
  br label %1318

; <label>:1318                                    ; preds = %1315, %1312
  %1319 = phi float [ %1317, %1315 ], [ 0.000000e+00, %1312 ]
  %1320 = fcmp fast une float %1299, 1.000000e+00
  br i1 %1320, label %1321, label %1324, !dx.controlflow.hints !115

; <label>:1321                                    ; preds = %1318
  %1322 = call float @dx.op.unary.f32(i32 23, float %1299)  ; Log(value)
  %1323 = fmul fast float %1322, 0x3FE62E4300000000
  br label %1324

; <label>:1324                                    ; preds = %1321, %1318
  %1325 = phi float [ %1323, %1321 ], [ 0.000000e+00, %1318 ]
  %1326 = fcmp fast une float %1300, 1.000000e+00
  br i1 %1326, label %1327, label %1330, !dx.controlflow.hints !115

; <label>:1327                                    ; preds = %1324
  %1328 = call float @dx.op.unary.f32(i32 23, float %1300)  ; Log(value)
  %1329 = fmul fast float %1328, 0x3FE62E4300000000
  br label %1330

; <label>:1330                                    ; preds = %1327, %1324
  %1331 = phi float [ %1329, %1327 ], [ 0.000000e+00, %1324 ]
  %1332 = fmul fast float %1313, %1307
  %1333 = fmul fast float %1319, %1305
  %1334 = fmul fast float %1325, %1305
  %1335 = fmul fast float %1331, %1305
  %1336 = fadd fast float %1333, %1332
  %1337 = fadd fast float %1334, %1332
  %1338 = fadd fast float %1335, %1332
  %1339 = fcmp fast une float %1336, 0.000000e+00
  br i1 %1339, label %1340, label %1343, !dx.controlflow.hints !116

; <label>:1340                                    ; preds = %1330
  %1341 = fmul fast float %1336, 0x3FF7154760000000
  %1342 = call float @dx.op.unary.f32(i32 21, float %1341)  ; Exp(value)
  br label %1343

; <label>:1343                                    ; preds = %1340, %1330
  %1344 = phi float [ %1342, %1340 ], [ 1.000000e+00, %1330 ]
  %1345 = fcmp fast une float %1337, 0.000000e+00
  br i1 %1345, label %1346, label %1349, !dx.controlflow.hints !116

; <label>:1346                                    ; preds = %1343
  %1347 = fmul fast float %1337, 0x3FF7154760000000
  %1348 = call float @dx.op.unary.f32(i32 21, float %1347)  ; Exp(value)
  br label %1349

; <label>:1349                                    ; preds = %1346, %1343
  %1350 = phi float [ %1348, %1346 ], [ 1.000000e+00, %1343 ]
  %1351 = fcmp fast une float %1338, 0.000000e+00
  br i1 %1351, label %1352, label %1355, !dx.controlflow.hints !116

; <label>:1352                                    ; preds = %1349
  %1353 = fmul fast float %1338, 0x3FF7154760000000
  %1354 = call float @dx.op.unary.f32(i32 21, float %1353)  ; Exp(value)
  br label %1355

; <label>:1355                                    ; preds = %1352, %1349
  %1356 = phi float [ %1354, %1352 ], [ 1.000000e+00, %1349 ]
  %1357 = fcmp fast ogt float %1305, %1307
  br i1 %1357, label %1358, label %1365

; <label>:1358                                    ; preds = %1355
  %1359 = fsub fast float 1.000000e+00, %1307
  %1360 = fmul fast float %1313, %1359
  %1361 = fcmp fast une float %1360, 0.000000e+00
  br i1 %1361, label %1362, label %1386, !dx.controlflow.hints !117

; <label>:1362                                    ; preds = %1358
  %1363 = fmul fast float %1360, 0x3FF7154760000000
  %1364 = call float @dx.op.unary.f32(i32 21, float %1363)  ; Exp(value)
  br label %1386

; <label>:1365                                    ; preds = %1355
  %1366 = fsub fast float 1.000000e+00, %1305
  %1367 = fmul fast float %1319, %1366
  %1368 = fmul fast float %1325, %1366
  %1369 = fmul fast float %1331, %1366
  %1370 = fcmp fast une float %1367, 0.000000e+00
  br i1 %1370, label %1371, label %1374, !dx.controlflow.hints !116

; <label>:1371                                    ; preds = %1365
  %1372 = fmul fast float %1367, 0x3FF7154760000000
  %1373 = call float @dx.op.unary.f32(i32 21, float %1372)  ; Exp(value)
  br label %1374

; <label>:1374                                    ; preds = %1371, %1365
  %1375 = phi float [ %1373, %1371 ], [ 1.000000e+00, %1365 ]
  %1376 = fcmp fast une float %1368, 0.000000e+00
  br i1 %1376, label %1377, label %1380, !dx.controlflow.hints !116

; <label>:1377                                    ; preds = %1374
  %1378 = fmul fast float %1368, 0x3FF7154760000000
  %1379 = call float @dx.op.unary.f32(i32 21, float %1378)  ; Exp(value)
  br label %1380

; <label>:1380                                    ; preds = %1377, %1374
  %1381 = phi float [ %1379, %1377 ], [ 1.000000e+00, %1374 ]
  %1382 = fcmp fast une float %1369, 0.000000e+00
  br i1 %1382, label %1383, label %1386, !dx.controlflow.hints !116

; <label>:1383                                    ; preds = %1380
  %1384 = fmul fast float %1369, 0x3FF7154760000000
  %1385 = call float @dx.op.unary.f32(i32 21, float %1384)  ; Exp(value)
  br label %1386

; <label>:1386                                    ; preds = %1383, %1380, %1362, %1358
  %1387 = phi float [ %1385, %1383 ], [ %1364, %1362 ], [ 1.000000e+00, %1358 ], [ 1.000000e+00, %1380 ]
  %1388 = phi float [ %1381, %1383 ], [ %1364, %1362 ], [ 1.000000e+00, %1358 ], [ %1381, %1380 ]
  %1389 = phi float [ %1375, %1383 ], [ %1364, %1362 ], [ 1.000000e+00, %1358 ], [ %1375, %1380 ]
  %1390 = fmul fast float %1389, %1344
  %1391 = fmul fast float %1388, %1350
  %1392 = fmul fast float %1387, %1356
  br label %1393

; <label>:1393                                    ; preds = %1386, %1293
  %1394 = phi float [ %1392, %1386 ], [ %1296, %1293 ]
  %1395 = phi float [ %1391, %1386 ], [ %1295, %1293 ]
  %1396 = phi float [ %1390, %1386 ], [ %1294, %1293 ]
  %1397 = fmul fast float %1396, %856
  %1398 = call float @dx.op.dot3.f32(i32 55, float %1396, float %1395, float %1394, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1399 = select i1 %101, float %1398, float %1396
  %1400 = select i1 %101, float %1398, float %1395
  %1401 = select i1 %101, float 1.000000e+00, float %1394
  %1402 = fmul fast float %1399, %853
  %1403 = fmul fast float %1400, %854
  %1404 = fmul fast float %1401, %855
  %1405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1406 = extractvalue %dx.types.CBufRet.i32 %1405, 0
  %1407 = icmp eq i32 %1406, 0
  br i1 %1407, label %1734, label %1408, !dx.controlflow.hints !118

; <label>:1408                                    ; preds = %1393
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 2
  %1411 = extractvalue %dx.types.CBufRet.f32 %1409, 3
  %1412 = fmul fast float %1410, %43
  %1413 = fmul fast float %1411, %44
  %1414 = fmul fast float %1412, 2.000000e+00
  %1415 = fmul fast float %1413, 2.000000e+00
  %1416 = fsub fast float 1.000000e+00, %1414
  %1417 = fsub fast float 1.000000e+00, %1415
  %1418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.CBufRet.f32 %1418, 1
  %1421 = extractvalue %dx.types.CBufRet.f32 %1418, 2
  %1422 = fmul fast float %1416, %1419
  %1423 = fmul fast float %1416, %1420
  %1424 = fmul fast float %1416, %1421
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.CBufRet.f32 %1425, 1
  %1428 = extractvalue %dx.types.CBufRet.f32 %1425, 2
  %1429 = fmul fast float %1417, %1426
  %1430 = fmul fast float %1417, %1427
  %1431 = fmul fast float %1417, %1428
  %1432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1433 = extractvalue %dx.types.CBufRet.f32 %1432, 0
  %1434 = extractvalue %dx.types.CBufRet.f32 %1432, 1
  %1435 = extractvalue %dx.types.CBufRet.f32 %1432, 2
  %1436 = fadd fast float %1429, %1433
  %1437 = fadd fast float %1436, %1422
  %1438 = fadd fast float %1430, %1434
  %1439 = fadd fast float %1438, %1423
  %1440 = fadd fast float %1431, %1435
  %1441 = fadd fast float %1440, %1424
  %1442 = fmul fast float %1437, %852
  %1443 = fmul fast float %1439, %852
  %1444 = fmul fast float %1441, %852
  %1445 = fmul fast float %1442, %1442
  %1446 = fmul fast float %1443, %1443
  %1447 = fadd fast float %1445, %1446
  %1448 = fmul fast float %1444, %1444
  %1449 = fadd fast float %1447, %1448
  %1450 = call float @dx.op.unary.f32(i32 24, float %1449)  ; Sqrt(value)
  %1451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1452 = extractvalue %dx.types.CBufRet.f32 %1451, 0
  %1453 = fsub fast float %1450, %1452
  %1454 = extractvalue %dx.types.CBufRet.f32 %1451, 2
  %1455 = fmul fast float %1453, %1454
  %1456 = call float @dx.op.unary.f32(i32 7, float %1455)  ; Saturate(value)
  %1457 = fadd fast float %1456, -5.000000e-01
  %1458 = fmul fast float %1457, 2.000000e+00
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 2
  %1461 = call float @dx.op.binary.f32(i32 36, float %1460, float %1458)  ; FMin(a,b)
  %1462 = fsub fast float -0.000000e+00, %1460
  %1463 = fcmp fast ogt float %1461, %1462
  br i1 %1463, label %1464, label %1734, !dx.controlflow.hints !119

; <label>:1464                                    ; preds = %1408
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 3
  %1467 = fcmp fast ogt float %1466, 0.000000e+00
  br i1 %1467, label %1468, label %1543, !dx.controlflow.hints !120

; <label>:1468                                    ; preds = %1464
  %1469 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %1470 = extractvalue %dx.types.Dimensions %1469, 0
  %1471 = sitofp i32 %1470 to float
  %1472 = extractvalue %dx.types.Dimensions %1469, 1
  %1473 = sitofp i32 %1472 to float
  %1474 = fmul fast float %1412, %1471
  %1475 = fmul fast float %1413, %1473
  %1476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1477 = extractvalue %dx.types.CBufRet.f32 %1476, 1
  %1478 = fsub fast float -0.000000e+00, %1477
  %1479 = fptoui float %1478 to i32
  %1480 = fptoui float %1474 to i32
  %1481 = fptoui float %1475 to i32
  %1482 = and i32 %1479, 31
  %1483 = lshr i32 %1480, %1482
  %1484 = lshr i32 %1481, %1482
  %1485 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %1479, i32 %1483, i32 %1484, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1486 = extractvalue %dx.types.ResRet.f32 %1485, 0
  %1487 = fcmp fast olt float %1486, -1.000000e+00
  %1488 = fcmp fast ogt float %1486, -1.000000e+00
  %1489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.f32 %1489, 1
  %1491 = select i1 %1488, float %1490, float 1.000000e+00
  %1492 = fadd fast float %1486, 1.000000e+00
  %1493 = fmul fast float %1491, %1492
  %1494 = call float @dx.op.unary.f32(i32 6, float %1493)  ; FAbs(value)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1489, 3
  %1496 = fcmp fast oge float %1494, %1495
  %1497 = select i1 %1496, float 0x4197782600000000, float %1494
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 0
  %1500 = extractvalue %dx.types.CBufRet.f32 %1498, 1
  %1501 = extractvalue %dx.types.CBufRet.f32 %1498, 2
  %1502 = select i1 %1487, float %1499, float %1419
  %1503 = select i1 %1487, float %1500, float %1420
  %1504 = select i1 %1487, float %1501, float %1421
  %1505 = fmul fast float %1502, %1416
  %1506 = fmul fast float %1503, %1416
  %1507 = fmul fast float %1504, %1416
  %1508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1509 = extractvalue %dx.types.CBufRet.f32 %1508, 0
  %1510 = extractvalue %dx.types.CBufRet.f32 %1508, 1
  %1511 = extractvalue %dx.types.CBufRet.f32 %1508, 2
  %1512 = select i1 %1487, float %1509, float %1426
  %1513 = select i1 %1487, float %1510, float %1427
  %1514 = select i1 %1487, float %1511, float %1428
  %1515 = fmul fast float %1512, %1417
  %1516 = fmul fast float %1513, %1417
  %1517 = fmul fast float %1514, %1417
  %1518 = fadd fast float %1515, %1505
  %1519 = fadd fast float %1516, %1506
  %1520 = fadd fast float %1517, %1507
  %1521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.f32 %1521, 0
  %1523 = extractvalue %dx.types.CBufRet.f32 %1521, 1
  %1524 = extractvalue %dx.types.CBufRet.f32 %1521, 2
  %1525 = select i1 %1487, float %1522, float %1433
  %1526 = select i1 %1487, float %1523, float %1434
  %1527 = select i1 %1487, float %1524, float %1435
  %1528 = fadd fast float %1518, %1525
  %1529 = fadd fast float %1519, %1526
  %1530 = fadd fast float %1520, %1527
  %1531 = fmul fast float %1528, %1497
  %1532 = fmul fast float %1529, %1497
  %1533 = fmul fast float %1530, %1497
  %1534 = fmul fast float %1531, %1531
  %1535 = fmul fast float %1532, %1532
  %1536 = fadd fast float %1534, %1535
  %1537 = fmul fast float %1533, %1533
  %1538 = fadd fast float %1536, %1537
  %1539 = call float @dx.op.unary.f32(i32 24, float %1538)  ; Sqrt(value)
  %1540 = fsub fast float %1539, %1452
  %1541 = fmul fast float %1540, %1454
  %1542 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  br label %1543

; <label>:1543                                    ; preds = %1468, %1464
  %1544 = phi float [ %1542, %1468 ], [ 1.000000e+00, %1464 ]
  %1545 = fmul fast float %1461, 5.000000e-01
  %1546 = fadd fast float %1545, 5.000000e-01
  %1547 = call float @dx.op.unary.f32(i32 22, float %1546)  ; Frc(value)
  %1548 = call float @dx.op.unary.f32(i32 27, float %1547)  ; Round_ni(value)
  %1549 = call float @dx.op.unary.f32(i32 22, float %1547)  ; Frc(value)
  %1550 = fmul fast float %1549, 2.000000e+00
  %1551 = fadd fast float %1550, -1.000000e+00
  %1552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %16, float %1412, float %1413, float %1548, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1553 = extractvalue %dx.types.ResRet.f32 %1552, 0
  %1554 = extractvalue %dx.types.ResRet.f32 %1552, 1
  %1555 = extractvalue %dx.types.ResRet.f32 %1552, 2
  %1556 = extractvalue %dx.types.ResRet.f32 %1552, 3
  %1557 = fadd fast float %1553, -5.000000e-01
  %1558 = fadd fast float %1555, -5.000000e-01
  %1559 = fmul fast float %1557, 0xBFD5555560000000
  %1560 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1558, float %1559)  ; FMad(a,b,c)
  %1561 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1554, float 0.000000e+00)  ; FMad(a,b,c)
  %1562 = fadd fast float %1561, %1556
  %1563 = fmul fast float %1557, -7.500000e-01
  %1564 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1558, float %1563)  ; FMad(a,b,c)
  %1565 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1554, float 0.000000e+00)  ; FMad(a,b,c)
  %1566 = fadd fast float %1565, %1556
  %1567 = call float @dx.op.binary.f32(i32 35, float %1560, float -1.000000e+00)  ; FMax(a,b)
  %1568 = call float @dx.op.binary.f32(i32 35, float %1562, float -1.000000e+00)  ; FMax(a,b)
  %1569 = call float @dx.op.binary.f32(i32 35, float %1564, float -1.000000e+00)  ; FMax(a,b)
  %1570 = call float @dx.op.binary.f32(i32 35, float %1566, float -1.000000e+00)  ; FMax(a,b)
  %1571 = call float @dx.op.binary.f32(i32 36, float %1567, float 1.000000e+00)  ; FMin(a,b)
  %1572 = call float @dx.op.binary.f32(i32 36, float %1568, float 1.000000e+00)  ; FMin(a,b)
  %1573 = call float @dx.op.binary.f32(i32 36, float %1569, float 1.000000e+00)  ; FMin(a,b)
  %1574 = call float @dx.op.binary.f32(i32 36, float %1570, float 1.000000e+00)  ; FMin(a,b)
  %1575 = fcmp fast olt float %1571, 0x3FEFFF8020000000
  br i1 %1575, label %1576, label %1691, !dx.controlflow.hints !121

; <label>:1576                                    ; preds = %1543
  %1577 = extractvalue %dx.types.CBufRet.f32 %1459, 3
  %1578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.f32 %1578, 0
  %1580 = extractvalue %dx.types.CBufRet.f32 %1578, 1
  %1581 = extractvalue %dx.types.CBufRet.f32 %1578, 2
  %1582 = extractvalue %dx.types.CBufRet.f32 %1578, 3
  %1583 = fsub fast float %1579, %1571
  %1584 = fsub fast float %1580, %1572
  %1585 = fsub fast float %1581, %1573
  %1586 = fsub fast float %1582, %1574
  %1587 = fmul fast float %1583, %1577
  %1588 = fmul fast float %1584, %1577
  %1589 = fmul fast float %1585, %1577
  %1590 = fmul fast float %1586, %1577
  %1591 = fadd fast float %1587, %1571
  %1592 = fadd fast float %1588, %1572
  %1593 = fsub fast float -0.000000e+00, %1592
  %1594 = fadd fast float %1589, %1573
  %1595 = fadd fast float %1590, %1574
  %1596 = fmul fast float %1591, %1591
  %1597 = fsub fast float %1592, %1596
  %1598 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1597)  ; FMax(a,b)
  %1599 = fdiv fast float 1.000000e+00, %1598
  %1600 = fmul fast float %1592, %1591
  %1601 = fsub fast float %1594, %1600
  %1602 = fsub fast float %1551, %1591
  %1603 = fmul fast float %1551, %1551
  %1604 = fsub fast float %1603, %1592
  %1605 = fmul fast float %1602, %1599
  %1606 = fmul fast float %1605, %1601
  %1607 = fsub fast float %1604, %1606
  %1608 = fmul fast float %1592, %1592
  %1609 = fsub fast float %1595, %1608
  %1610 = fmul fast float %1601, %1601
  %1611 = fmul fast float %1610, %1599
  %1612 = fsub fast float %1609, %1611
  %1613 = fdiv fast float %1607, %1612
  %1614 = fmul fast float %1601, %1613
  %1615 = fsub fast float %1602, %1614
  %1616 = fmul fast float %1615, %1599
  %1617 = fmul fast float %1616, %1591
  %1618 = fsub fast float 1.000000e+00, %1617
  %1619 = fmul fast float %1592, %1613
  %1620 = fsub fast float %1618, %1619
  %1621 = fmul fast float %1616, %1616
  %1622 = fmul fast float %1613, 4.000000e+00
  %1623 = fmul fast float %1622, %1620
  %1624 = fsub fast float %1621, %1623
  %1625 = call float @dx.op.unary.f32(i32 24, float %1624)  ; Sqrt(value)
  %1626 = fcmp fast oge float %1616, 0.000000e+00
  %1627 = fsub fast float -0.000000e+00, %1625
  %1628 = select i1 %1626, float %1627, float %1625
  %1629 = fsub fast float %1628, %1616
  %1630 = fdiv fast float %1629, %1613
  %1631 = fdiv fast float %1620, %1629
  %1632 = fmul fast float %1630, 5.000000e-01
  %1633 = fmul fast float %1631, 2.000000e+00
  %1634 = select i1 %1626, float %1632, float %1633
  %1635 = select i1 %1626, float %1633, float %1632
  %1636 = call float @dx.op.binary.f32(i32 35, float %1634, float %1635)  ; FMax(a,b)
  %1637 = call float @dx.op.binary.f32(i32 36, float %1634, float %1635)  ; FMin(a,b)
  %1638 = fcmp fast ogt float %1551, %1637
  br i1 %1638, label %1639, label %1649

; <label>:1639                                    ; preds = %1576
  %1640 = fsub fast float %1551, %1637
  %1641 = fsub fast float %1636, %1637
  %1642 = fmul fast float %1640, %1641
  %1643 = fmul fast float %1636, %1551
  %1644 = fadd fast float %1636, %1551
  %1645 = fmul fast float %1644, %1591
  %1646 = fadd fast float %1643, %1592
  %1647 = fsub fast float %1646, %1645
  %1648 = fdiv fast float %1647, %1642
  br label %1649

; <label>:1649                                    ; preds = %1639, %1576
  %1650 = phi float [ %1648, %1639 ], [ 0.000000e+00, %1576 ]
  %1651 = fcmp fast ogt float %1551, %1636
  %1652 = fsub fast float %1551, %1636
  br i1 %1651, label %1653, label %1663

; <label>:1653                                    ; preds = %1649
  %1654 = fsub fast float %1636, %1637
  %1655 = fmul fast float %1654, %1652
  %1656 = fmul fast float %1637, %1551
  %1657 = fadd fast float %1637, %1551
  %1658 = fmul fast float %1657, %1591
  %1659 = fsub fast float %1593, %1656
  %1660 = fadd fast float %1659, %1658
  %1661 = fdiv fast float %1660, %1655
  %1662 = fadd fast float %1661, %1650
  br label %1663

; <label>:1663                                    ; preds = %1653, %1649
  %1664 = phi float [ %1662, %1653 ], [ %1650, %1649 ]
  %1665 = fsub fast float %1551, %1637
  %1666 = fmul fast float %1665, %1652
  %1667 = fmul fast float %1637, %1636
  %1668 = fadd fast float %1637, %1636
  %1669 = fmul fast float %1668, %1591
  %1670 = fadd fast float %1667, %1592
  %1671 = fsub fast float %1670, %1669
  %1672 = fdiv fast float %1671, %1666
  %1673 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1674 = fcmp fast oeq float %732, 0.000000e+00
  %1675 = extractvalue %dx.types.CBufRet.f32 %1459, 0
  %1676 = fcmp fast oeq float %1675, 0.000000e+00
  %1677 = or i1 %1674, %1676
  %1678 = fmul fast float %1675, 2.000000e+00
  %1679 = fadd fast float %1460, %1461
  %1680 = fdiv fast float %1679, %1678
  %1681 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1682 = fmul fast float %1681, 2.000000e+00
  %1683 = fsub fast float 3.000000e+00, %1682
  %1684 = fmul fast float %1681, %1681
  %1685 = fmul fast float %1684, %1683
  %1686 = select i1 %1677, float 1.000000e+00, float %1685
  %1687 = fmul fast float %1672, %732
  %1688 = fadd fast float %1673, %1687
  %1689 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1690 = fmul fast float %1686, %1689
  br label %1691

; <label>:1691                                    ; preds = %1663, %1543
  %1692 = phi float [ %1690, %1663 ], [ 0.000000e+00, %1543 ]
  %1693 = fsub fast float 1.000000e+00, %1692
  %1694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %16, float %1412, float %1413, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1695 = extractvalue %dx.types.ResRet.f32 %1694, 0
  %1696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.i32 %1696, 2
  %1698 = icmp eq i32 %1697, 0
  br i1 %1698, label %1704, label %1699

; <label>:1699                                    ; preds = %1691
  %1700 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1701 = fadd fast float %1695, -1.000000e+00
  %1702 = fmul fast float %1700, %1701
  %1703 = fadd fast float %1702, 1.000000e+00
  br label %1704

; <label>:1704                                    ; preds = %1699, %1691
  %1705 = phi float [ %1703, %1699 ], [ %1693, %1691 ]
  br i1 %1467, label %1706, label %1724

; <label>:1706                                    ; preds = %1704
  %1707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1708 = extractvalue %dx.types.CBufRet.f32 %1707, 1
  %1709 = fsub fast float %1544, %1708
  %1710 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1711 = fsub fast float %1544, %1466
  %1712 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1713 = fsub fast float %1710, %1712
  %1714 = fsub fast float %1546, %1712
  %1715 = fdiv fast float %1714, %1713
  %1716 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  %1717 = fmul fast float %1716, 2.000000e+00
  %1718 = fsub fast float 3.000000e+00, %1717
  %1719 = fsub fast float %1695, %1705
  %1720 = fmul fast float %1716, %1716
  %1721 = fmul fast float %1720, %1719
  %1722 = fmul fast float %1721, %1718
  %1723 = fadd fast float %1722, %1705
  br label %1724

; <label>:1724                                    ; preds = %1706, %1704
  %1725 = phi float [ %1723, %1706 ], [ %1705, %1704 ]
  %1726 = call float @dx.op.binary.f32(i32 35, float %1695, float %1725)  ; FMax(a,b)
  %1727 = fmul fast float %1726, %1397
  %1728 = call float @dx.op.dot3.f32(i32 55, float %1726, float %1726, float %1726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1729 = select i1 %101, float %1728, float %1726
  %1730 = select i1 %101, float 1.000000e+00, float %1726
  %1731 = fmul fast float %1729, %1402
  %1732 = fmul fast float %1729, %1403
  %1733 = fmul fast float %1730, %1404
  br label %1734

; <label>:1734                                    ; preds = %1724, %1408, %1393, %848
  %1735 = phi float [ %853, %848 ], [ %1402, %1393 ], [ %1731, %1724 ], [ %1402, %1408 ]
  %1736 = phi float [ %854, %848 ], [ %1403, %1393 ], [ %1732, %1724 ], [ %1403, %1408 ]
  %1737 = phi float [ %855, %848 ], [ %1404, %1393 ], [ %1733, %1724 ], [ %1404, %1408 ]
  %1738 = phi float [ %856, %848 ], [ %1397, %1393 ], [ %1727, %1724 ], [ %1397, %1408 ]
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 2
  %1741 = extractvalue %dx.types.CBufRet.f32 %1739, 3
  %1742 = fmul fast float %1740, %43
  %1743 = fmul fast float %1741, %44
  %1744 = call float @dx.op.unary.f32(i32 7, float %1742)  ; Saturate(value)
  %1745 = call float @dx.op.unary.f32(i32 7, float %1743)  ; Saturate(value)
  %1746 = select i1 %604, i32 2, i32 0
  %1747 = or i32 %1746, 1
  %1748 = uitofp i32 %1747 to float
  %1749 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %1744, float %1745, float %1748, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1750 = extractvalue %dx.types.ResRet.f32 %1749, 0
  %1751 = extractvalue %dx.types.ResRet.f32 %1749, 1
  %1752 = extractvalue %dx.types.ResRet.f32 %1749, 2
  %1753 = extractvalue %dx.types.ResRet.f32 %1749, 3
  %1754 = add nuw nsw i32 %1746, 2
  %1755 = uitofp i32 %1754 to float
  %1756 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %1744, float %1745, float %1755, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1757 = extractvalue %dx.types.ResRet.f32 %1756, 0
  %1758 = extractvalue %dx.types.ResRet.f32 %1756, 1
  %1759 = extractvalue %dx.types.ResRet.f32 %1756, 2
  %1760 = extractvalue %dx.types.ResRet.f32 %1756, 3
  %1761 = call float @dx.op.binary.f32(i32 35, float %1751, float %1752)  ; FMax(a,b)
  %1762 = call float @dx.op.binary.f32(i32 35, float %1750, float %1761)  ; FMax(a,b)
  %1763 = call float @dx.op.binary.f32(i32 35, float %1762, float %1753)  ; FMax(a,b)
  %1764 = call float @dx.op.binary.f32(i32 36, float %1758, float %1759)  ; FMin(a,b)
  %1765 = call float @dx.op.binary.f32(i32 36, float %1757, float %1764)  ; FMin(a,b)
  %1766 = call float @dx.op.binary.f32(i32 36, float %1765, float %1760)  ; FMin(a,b)
  %1767 = fmul fast float %1763, 2.550000e+02
  %1768 = fadd fast float %1767, 0x3F70101020000000
  %1769 = fptoui float %1768 to i32
  %1770 = fmul fast float %1766, 2.550000e+02
  %1771 = fadd fast float %1770, 0x3F70101020000000
  %1772 = fptoui float %1771 to i32
  %1773 = icmp ult i32 %1769, %1772
  br i1 %1773, label %1774, label %1817

; <label>:1774                                    ; preds = %1734
  %1775 = fcmp fast ogt float %36, 9.843750e-01
  %1776 = fadd fast float %852, -4.000000e+00
  %1777 = select i1 %1775, float -4.000000e+00, float %1776
  %1778 = call float @dx.op.binary.f32(i32 35, float %1777, float 0.000000e+00)  ; FMax(a,b)
  %1779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.f32 %1779, 0
  %1781 = fadd fast float %1780, %1778
  %1782 = extractvalue %dx.types.CBufRet.f32 %1779, 2
  %1783 = fmul fast float %1781, %1782
  %1784 = call float @dx.op.unary.f32(i32 23, float %1783)  ; Log(value)
  %1785 = extractvalue %dx.types.CBufRet.f32 %1779, 3
  %1786 = fmul fast float %1785, %1784
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %1789 = fmul fast float %1786, %1788
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1791 = uitofp i32 %1769 to float
  %1792 = uitofp i32 %1772 to float
  %1793 = fadd fast float %1791, 5.000000e-01
  %1794 = fadd fast float %1792, 5.000000e-01
  %1795 = fmul fast float %1788, %1793
  %1796 = fmul fast float %1788, %1794
  %1797 = fadd fast float %1795, 0x3F0FFB4800000000
  %1798 = fadd fast float %1796, 0xBF0FFB4800000000
  %1799 = call float @dx.op.binary.f32(i32 35, float %1790, float %1797)  ; FMax(a,b)
  %1800 = call float @dx.op.binary.f32(i32 36, float %1799, float %1798)  ; FMin(a,b)
  %1801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1802 = extractvalue %dx.types.CBufRet.f32 %1801, 1
  %1803 = extractvalue %dx.types.CBufRet.f32 %1801, 2
  %1804 = extractvalue %dx.types.CBufRet.f32 %1801, 0
  %1805 = select i1 %604, float %1804, float 0.000000e+00
  %1806 = fmul fast float %1802, %1800
  %1807 = fadd fast float %1805, %1806
  %1808 = fadd fast float %1805, %1803
  %1809 = fsub fast float %1802, %1803
  %1810 = fadd fast float %1809, %1805
  %1811 = call float @dx.op.binary.f32(i32 35, float %1807, float %1808)  ; FMax(a,b)
  %1812 = call float @dx.op.binary.f32(i32 36, float %1811, float %1810)  ; FMin(a,b)
  %1813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %1744, float %1745, float %1812, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1814 = extractvalue %dx.types.ResRet.f32 %1813, 0
  %1815 = extractvalue %dx.types.ResRet.f32 %1813, 1
  %1816 = extractvalue %dx.types.ResRet.f32 %1813, 2
  br label %1817

; <label>:1817                                    ; preds = %1774, %1734
  %1818 = phi float [ %1814, %1774 ], [ 1.000000e+00, %1734 ]
  %1819 = phi float [ %1815, %1774 ], [ 1.000000e+00, %1734 ]
  %1820 = phi float [ %1816, %1774 ], [ 1.000000e+00, %1734 ]
  %1821 = fmul fast float %1818, %1738
  %1822 = call float @dx.op.dot3.f32(i32 55, float %1818, float %1819, float %1820, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1823 = select i1 %101, float %1822, float %1818
  %1824 = select i1 %101, float %1822, float %1819
  %1825 = select i1 %101, float 1.000000e+00, float %1820
  %1826 = fmul fast float %1823, %1735
  %1827 = fmul fast float %1824, %1736
  %1828 = fmul fast float %1825, %1737
  %1829 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.i32 %1829, 3
  %1831 = and i32 %1830, 3
  %1832 = icmp ne i32 %1831, 0
  %1833 = and i32 %1830, 4
  %1834 = icmp ne i32 %1833, 0
  %1835 = and i1 %1832, %1834
  %1836 = and i1 %101, %1835
  br i1 %1836, label %1837, label %1843

; <label>:1837                                    ; preds = %1817
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 1
  %1840 = fadd fast float %1821, -1.000000e+00
  %1841 = fmul fast float %1839, %1840
  %1842 = fadd fast float %1841, 1.000000e+00
  br label %1843

; <label>:1843                                    ; preds = %1837, %1817
  %1844 = phi float [ %1842, %1837 ], [ %1821, %1817 ]
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 0
  br i1 %101, label %1847, label %1867

; <label>:1847                                    ; preds = %1843
  %1848 = fadd fast float %1826, %1827
  %1849 = fmul fast float %1846, %1848
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 3
  %1852 = extractvalue %dx.types.CBufRet.f32 %621, 1
  %1853 = fsub fast float %624, %1852
  %1854 = extractvalue %dx.types.CBufRet.f32 %621, 2
  %1855 = fmul fast float %1853, %1854
  %1856 = call float @dx.op.unary.f32(i32 7, float %1855)  ; Saturate(value)
  %1857 = fsub fast float %1856, %1851
  %1858 = fmul fast float %1857, %1844
  %1859 = fadd fast float %1858, %1851
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = fsub fast float %1859, %1861
  %1863 = fmul fast float %1862, 1.000000e+01
  %1864 = call float @dx.op.unary.f32(i32 7, float %1863)  ; Saturate(value)
  %1865 = fmul fast float %1864, %580
  %1866 = fmul fast float %1859, %1865
  br label %1876

; <label>:1867                                    ; preds = %1843
  %1868 = fmul fast float %1846, %1826
  %1869 = fmul fast float %1846, %1827
  %1870 = fmul fast float %1828, %1846
  %1871 = call float @dx.op.binary.f32(i32 35, float %1869, float %1870)  ; FMax(a,b)
  %1872 = call float @dx.op.binary.f32(i32 35, float %1868, float %1871)  ; FMax(a,b)
  %1873 = call float @dx.op.binary.f32(i32 35, float %1872, float 0.000000e+00)  ; FMax(a,b)
  %1874 = fcmp fast ugt float %1873, 0x3F10000000000000
  br i1 %1874, label %1876, label %1875

; <label>:1875                                    ; preds = %1867
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1876

; <label>:1876                                    ; preds = %1875, %1867, %1847
  %1877 = phi float [ %1849, %1847 ], [ %1868, %1875 ], [ %1868, %1867 ]
  %1878 = phi float [ %1866, %1847 ], [ %1869, %1875 ], [ %1869, %1867 ]
  %1879 = phi float [ %1865, %1847 ], [ %1870, %1875 ], [ %1870, %1867 ]
  %1880 = phi float [ %1865, %1847 ], [ 0.000000e+00, %1875 ], [ 0.000000e+00, %1867 ]
  %1881 = fadd fast float %437, 0x3FE3C6EF40000000
  %1882 = call float @dx.op.unary.f32(i32 22, float %1881)  ; Frc(value)
  %1883 = call float @dx.op.unary.f32(i32 23, float %1877)  ; Log(value)
  %1884 = fadd fast float %1883, -7.000000e+00
  %1885 = call float @dx.op.unary.f32(i32 21, float %1884)  ; Exp(value)
  %1886 = fmul fast float %1882, 2.000000e+00
  %1887 = fadd fast float %1886, -1.000000e+00
  %1888 = fmul fast float %1885, %1887
  %1889 = fcmp fast ogt float %1877, 0.000000e+00
  %1890 = select i1 %1889, float %1888, float 0.000000e+00
  %1891 = fadd fast float %1890, %1877
  %1892 = fadd fast float %437, 0x3FF3C6EF40000000
  %1893 = call float @dx.op.unary.f32(i32 22, float %1892)  ; Frc(value)
  %1894 = call float @dx.op.unary.f32(i32 23, float %1878)  ; Log(value)
  %1895 = fadd fast float %1894, -7.000000e+00
  %1896 = call float @dx.op.unary.f32(i32 21, float %1895)  ; Exp(value)
  %1897 = fmul fast float %1893, 2.000000e+00
  %1898 = fadd fast float %1897, -1.000000e+00
  %1899 = fmul fast float %1896, %1898
  %1900 = fcmp fast ogt float %1878, 0.000000e+00
  %1901 = select i1 %1900, float %1899, float 0.000000e+00
  %1902 = fadd fast float %1901, %1878
  %1903 = fadd fast float %437, 0x3FFDAA66E0000000
  %1904 = call float @dx.op.unary.f32(i32 22, float %1903)  ; Frc(value)
  %1905 = call float @dx.op.unary.f32(i32 23, float %1879)  ; Log(value)
  %1906 = fadd fast float %1905, -6.000000e+00
  %1907 = call float @dx.op.unary.f32(i32 21, float %1906)  ; Exp(value)
  %1908 = fmul fast float %1904, 2.000000e+00
  %1909 = fadd fast float %1908, -1.000000e+00
  %1910 = fmul fast float %1907, %1909
  %1911 = fcmp fast ogt float %1879, 0.000000e+00
  %1912 = select i1 %1911, float %1910, float 0.000000e+00
  %1913 = fadd fast float %1912, %1879
  %1914 = select i1 %101, float %1878, float %1902
  %1915 = select i1 %101, float %1879, float %1913
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1916 = call float @dx.op.binary.f32(i32 36, float %1891, float 3.225500e+04)  ; FMin(a,b)
  %1917 = call float @dx.op.binary.f32(i32 36, float %1914, float 3.225500e+04)  ; FMin(a,b)
  %1918 = call float @dx.op.binary.f32(i32 36, float %1915, float 3.225500e+04)  ; FMin(a,b)
  %1919 = call float @dx.op.binary.f32(i32 36, float %1880, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1916)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1917)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1918)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1919)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1880)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1880)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1880)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1880)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!32 = !{[30 x i32] [i32 28, i32 8, i32 255, i32 255, i32 255, i32 255, i32 0, i32 7, i32 0, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 7, i32 1, i32 3, i32 4, i32 0, i32 255, i32 0, i32 0, i32 7, i32 255, i32 0, i32 0, i32 0]}
!33 = !{void ()* @ps_main, !"ps_main", !34, !4, !60}
!34 = !{!35, !56, null}
!35 = !{!36, !39, !41, !43, !45, !48, !51, !53, !55}
!36 = !{i32 0, !"SV_Position", i8 9, i8 3, !37, i8 4, i32 1, i8 4, i32 0, i8 0, !38}
!37 = !{i32 0}
!38 = !{i32 3, i32 15}
!39 = !{i32 1, !"COLOR", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!40 = !{i32 3, i32 10}
!41 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 2, i32 2, i8 0, !42}
!42 = !{i32 3, i32 3}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 3, i8 0, !38}
!44 = !{i32 3}
!45 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !46, i8 2, i32 1, i8 3, i32 4, i8 0, !47}
!46 = !{i32 5}
!47 = !{i32 3, i32 7}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 5, i8 0, !50}
!49 = !{i32 8}
!50 = !{i32 3, i32 9}
!51 = !{i32 6, !"COLOR", i8 5, i8 0, !44, i8 1, i32 1, i8 3, i32 6, i8 0, !52}
!52 = !{i32 3, i32 1}
!53 = !{i32 7, !"COLOR", i8 5, i8 0, !54, i8 1, i32 1, i8 1, i32 6, i8 3, null}
!54 = !{i32 4}
!55 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !37, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!56 = !{!57, !58}
!57 = !{i32 0, !"SV_Target", i8 9, i8 16, !37, i8 0, i32 1, i8 4, i32 0, i8 0, !38}
!58 = !{i32 1, !"SV_Target", i8 9, i8 16, !59, i8 0, i32 1, i8 4, i32 1, i8 0, !38}
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
!71 = !{!72, !72, i64 0}
!72 = !{!"float", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C/C++ TBAA"}
!75 = !{!76, !78, !80, !81, !83, !84, !85, !87, !88, !89}
!76 = distinct !{!76, !77, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!77 = distinct !{!77, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!78 = distinct !{!78, !79, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!79 = distinct !{!79, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!80 = distinct !{!80, !79, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!81 = distinct !{!81, !82, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!82 = distinct !{!82, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!83 = distinct !{!83, !82, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!84 = distinct !{!84, !82, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!85 = distinct !{!85, !86, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!86 = distinct !{!86, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!87 = distinct !{!87, !86, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!88 = distinct !{!88, !86, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!89 = distinct !{!89, !90, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!90 = distinct !{!90, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"\01?sort@@YAXAIAM00@Z: %c"}
!93 = distinct !{!93, !"\01?sort@@YAXAIAM00@Z"}
!94 = !{!95, !96, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89}
!95 = distinct !{!95, !93, !"\01?sort@@YAXAIAM00@Z: %a"}
!96 = distinct !{!96, !93, !"\01?sort@@YAXAIAM00@Z: %b"}
!97 = !{!96}
!98 = !{!95, !92, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89}
!99 = !{!95}
!100 = !{!96, !92, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89}
!101 = !{!102}
!102 = distinct !{!102, !103, !"\01?sort@@YAXAIAM00@Z: %c"}
!103 = distinct !{!103, !"\01?sort@@YAXAIAM00@Z"}
!104 = !{!105, !106, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89}
!105 = distinct !{!105, !103, !"\01?sort@@YAXAIAM00@Z: %a"}
!106 = distinct !{!106, !103, !"\01?sort@@YAXAIAM00@Z: %b"}
!107 = !{!106}
!108 = !{!105, !102, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89}
!109 = !{!105}
!110 = !{!106, !102, !76, !78, !80, !81, !83, !84, !85, !87, !88, !89}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 2}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}

