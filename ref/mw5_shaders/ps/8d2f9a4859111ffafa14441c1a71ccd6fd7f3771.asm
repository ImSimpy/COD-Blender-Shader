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
; shader hash: c8ef99fbdbd8b087c0a0e3862c96e0a3
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
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = fmul fast float %43, %35
  %45 = fmul fast float %43, %36
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %49 = fmul fast float %44, 2.000000e+00
  %50 = fmul fast float %49, %47
  %51 = fmul fast float %45, 2.000000e+00
  %52 = fmul fast float %51, %48
  %53 = fsub fast float 1.000000e+00, %50
  %54 = fsub fast float 1.000000e+00, %52
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = fmul fast float %53, %56
  %60 = fmul fast float %53, %57
  %61 = fmul fast float %53, %58
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fmul fast float %54, %63
  %67 = fmul fast float %54, %64
  %68 = fmul fast float %54, %65
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = fadd fast float %66, %70
  %74 = fadd fast float %73, %59
  %75 = fadd fast float %67, %71
  %76 = fadd fast float %75, %60
  %77 = fadd fast float %68, %72
  %78 = fadd fast float %77, %61
  %79 = fmul fast float %74, %38
  %80 = fmul fast float %76, %38
  %81 = fmul fast float %78, %38
  %82 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.i32 %82, 3
  %84 = and i32 %83, 3
  %85 = icmp ne i32 %84, 0
  %86 = and i32 %83, 4
  %87 = icmp ne i32 %86, 0
  %88 = and i1 %85, %87
  br i1 %88, label %89, label %98

; <label>:89                                      ; preds = %0
  %90 = fmul fast float %48, %45
  %91 = fmul fast float %47, %44
  %92 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %91, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = fsub fast float 1.000000e+00, %93
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = fcmp fast olt float %94, %96
  br label %101

; <label>:98                                      ; preds = %0
  %99 = icmp eq i32 %86, 0
  %100 = and i1 %85, %99
  br label %101

; <label>:101                                     ; preds = %98, %89
  %102 = phi i1 [ %97, %89 ], [ %100, %98 ]
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 3
  %106 = fmul fast float %104, %44
  %107 = fmul fast float %105, %45
  %108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.i32 %108, 0
  %110 = and i32 %109, 114688
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %111, float %106, float 0.000000e+00
  %113 = select i1 %111, float %107, float 0.000000e+00
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %112, float %113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fmul fast float %115, 2.550000e+02
  %117 = fptoui float %116 to i32
  %118 = select i1 %111, i32 %117, i32 0
  %119 = mul i32 %20, 208
  %120 = add i32 %119, 188
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = and i32 %83, 114688
  %124 = and i32 %83, 8
  %125 = icmp ne i32 %124, 0
  %126 = or i1 %102, %125
  %127 = select i1 %126, i32 %123, i32 16384
  %128 = and i32 %127, %122
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

; <label>:130                                     ; preds = %101
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %131

; <label>:131                                     ; preds = %130, %101
  %132 = and i32 %122, 512
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %158, label %134

; <label>:134                                     ; preds = %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 3
  %138 = fmul fast float %136, %44
  %139 = fmul fast float %137, %45
  %140 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %142 = fdiv fast float %140, %141
  %143 = fcmp fast ogt float %142, 0x3FFC71C720000000
  br i1 %143, label %144, label %150

; <label>:144                                     ; preds = %134
  %145 = fdiv fast float 0x3FFC71C720000000, %142
  %146 = fmul fast float %145, %139
  %147 = fsub fast float 1.000000e+00, %145
  %148 = fmul fast float %147, 5.000000e-01
  %149 = fadd fast float %148, %146
  br label %158

; <label>:150                                     ; preds = %134
  %151 = fcmp fast olt float %142, 0x3FFC71C720000000
  br i1 %151, label %152, label %158

; <label>:152                                     ; preds = %150
  %153 = fmul fast float %138, 5.625000e-01
  %154 = fmul fast float %153, %142
  %155 = fmul fast float %142, 2.812500e-01
  %156 = fsub fast float 5.000000e-01, %155
  %157 = fadd fast float %156, %154
  br label %158

; <label>:158                                     ; preds = %152, %150, %144, %131
  %159 = phi float [ %32, %131 ], [ %138, %144 ], [ %157, %152 ], [ %138, %150 ]
  %160 = phi float [ %33, %131 ], [ %149, %144 ], [ %139, %152 ], [ %139, %150 ]
  %161 = and i32 %122, 16
  %162 = icmp ne i32 %161, 0
  %163 = select i1 %162, float 1.000000e+00, float %34
  %164 = icmp eq i32 %161, 0
  br i1 %164, label %184, label %165, !dx.controlflow.hints !60

; <label>:165                                     ; preds = %158
  %166 = add i32 %119, 64
  %167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = fadd fast float %168, 1.000000e+00
  %170 = fmul fast float %169, %34
  %171 = fsub fast float %170, %168
  %172 = fsub fast float %169, %171
  %173 = call float @dx.op.unary.f32(i32 7, float %172)  ; Saturate(value)
  %174 = fsub fast float 1.000000e+00, %170
  %175 = call float @dx.op.unary.f32(i32 7, float %174)  ; Saturate(value)
  %176 = fsub fast float %173, %175
  %177 = fsub fast float %163, %175
  %178 = fdiv fast float %177, %176
  %179 = call float @dx.op.unary.f32(i32 7, float %178)  ; Saturate(value)
  %180 = fmul fast float %179, 2.000000e+00
  %181 = fsub fast float 3.000000e+00, %180
  %182 = fmul fast float %179, %179
  %183 = fmul fast float %182, %181
  br label %184

; <label>:184                                     ; preds = %165, %158
  %185 = phi float [ %183, %165 ], [ %163, %158 ]
  %186 = fcmp fast ogt float %185, 0.000000e+00
  br i1 %186, label %188, label %187

; <label>:187                                     ; preds = %184
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %188

; <label>:188                                     ; preds = %187, %184
  %189 = call float @dx.op.unary.f32(i32 7, float %185)  ; Saturate(value)
  %190 = fmul fast float %44, 5.000000e-01
  %191 = fmul fast float %45, 5.000000e-01
  %192 = fptosi float %190 to i32
  %193 = fptosi float %191 to i32
  %194 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %192, i32 %193, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = lshr i32 %195, 18
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F4C00EBA0000000
  %199 = call float @dx.op.unary.f32(i32 21, float %198)  ; Exp(value)
  %200 = fadd fast float %199, -1.000000e+00
  %201 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %202 = extractvalue %dx.types.Dimensions %201, 0
  %203 = sitofp i32 %202 to float
  %204 = extractvalue %dx.types.Dimensions %201, 1
  %205 = sitofp i32 %204 to float
  %206 = fcmp fast oge float %190, %203
  %207 = fcmp fast oge float %191, %205
  %208 = or i1 %206, %207
  %209 = select i1 %208, float 0x4197782600000000, float %200
  %210 = fsub fast float %209, %38
  %211 = fcmp fast ogt float %210, 0.000000e+00
  %212 = and i32 %118, -2
  %213 = icmp eq i32 %212, 2
  %214 = and i1 %213, %211
  %215 = xor i1 %211, true
  %216 = icmp eq i32 %118, 1
  %217 = and i1 %216, %215
  %218 = or i1 %214, %217
  %219 = and i32 %122, 262144
  %220 = icmp ne i32 %219, 0
  %221 = and i1 %220, %218
  %222 = xor i1 %218, true
  %223 = and i32 %122, 131072
  %224 = icmp ne i32 %223, 0
  %225 = and i1 %224, %222
  %226 = or i1 %221, %225
  br i1 %226, label %227, label %228

; <label>:227                                     ; preds = %188
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %228

; <label>:228                                     ; preds = %227, %188
  %229 = and i32 %122, 32
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %470, label %231, !dx.controlflow.hints !61

; <label>:231                                     ; preds = %228
  %232 = add i32 %119, 80
  %233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.f32 %233, 0
  %235 = extractvalue %dx.types.ResRet.f32 %233, 1
  %236 = extractvalue %dx.types.ResRet.f32 %233, 2
  %237 = extractvalue %dx.types.ResRet.f32 %233, 3
  %238 = add i32 %119, 96
  %239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = extractvalue %dx.types.ResRet.f32 %239, 1
  %242 = extractvalue %dx.types.ResRet.f32 %239, 2
  %243 = add i32 %119, 112
  %244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = extractvalue %dx.types.ResRet.f32 %244, 1
  %247 = extractvalue %dx.types.ResRet.f32 %244, 2
  %248 = extractvalue %dx.types.ResRet.f32 %244, 3
  %249 = add i32 %119, 128
  %250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = extractvalue %dx.types.ResRet.f32 %250, 1
  %253 = extractvalue %dx.types.ResRet.f32 %250, 2
  %254 = extractvalue %dx.types.ResRet.f32 %250, 3
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 4096
  %258 = icmp ne i32 %257, 0
  %259 = fcmp fast une float %242, 0.000000e+00
  %260 = and i32 %256, 64
  %261 = icmp ne i32 %260, 0
  %262 = and i32 %256, 128
  %263 = icmp eq i32 %262, 0
  %264 = and i32 %256, 2048
  %265 = icmp eq i32 %264, 0
  %266 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %267 = extractvalue %dx.types.Dimensions %266, 0
  %268 = sitofp i32 %267 to float
  %269 = extractvalue %dx.types.Dimensions %266, 1
  %270 = sitofp i32 %269 to float
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %273 = extractvalue %dx.types.CBufRet.f32 %271, 3
  %274 = fmul fast float %272, %44
  %275 = fmul fast float %273, %45
  %276 = fmul fast float %274, %268
  %277 = fmul fast float %275, %270
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 1
  %280 = fsub fast float -0.000000e+00, %279
  %281 = fptoui float %280 to i32
  %282 = fptoui float %276 to i32
  %283 = fptoui float %277 to i32
  %284 = and i32 %281, 31
  %285 = lshr i32 %282, %284
  %286 = lshr i32 %283, %284
  %287 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %281, i32 %285, i32 %286, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = fcmp fast ogt float %288, -1.000000e+00
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 1
  %292 = select i1 %289, float %291, float 1.000000e+00
  %293 = fadd fast float %288, 1.000000e+00
  %294 = fmul fast float %292, %293
  %295 = call float @dx.op.unary.f32(i32 6, float %294)  ; FAbs(value)
  %296 = extractvalue %dx.types.CBufRet.f32 %290, 3
  %297 = fcmp fast oge float %295, %296
  %298 = select i1 %297, float 0x4197782600000000, float %295
  br i1 %265, label %369, label %299, !dx.controlflow.hints !62

; <label>:299                                     ; preds = %231
  %300 = fmul fast float %49, %272
  %301 = fmul fast float %51, %273
  %302 = fsub fast float 1.000000e+00, %300
  %303 = fsub fast float 1.000000e+00, %301
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %306 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %307 = extractvalue %dx.types.CBufRet.f32 %304, 2
  %308 = fmul fast float %302, %305
  %309 = fmul fast float %302, %306
  %310 = fmul fast float %302, %307
  %311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %312 = extractvalue %dx.types.CBufRet.f32 %311, 0
  %313 = extractvalue %dx.types.CBufRet.f32 %311, 1
  %314 = extractvalue %dx.types.CBufRet.f32 %311, 2
  %315 = fmul fast float %303, %312
  %316 = fmul fast float %303, %313
  %317 = fmul fast float %303, %314
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %322 = fadd fast float %315, %319
  %323 = fadd fast float %322, %308
  %324 = fadd fast float %316, %320
  %325 = fadd fast float %324, %309
  %326 = fadd fast float %317, %321
  %327 = fadd fast float %326, %310
  %328 = fmul fast float %323, %298
  %329 = fmul fast float %325, %298
  %330 = fmul fast float %327, %298
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 0
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 1
  %334 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %335 = fadd fast float %328, %332
  %336 = fadd fast float %329, %333
  %337 = fadd fast float %330, %334
  %338 = call float @dx.op.dot3.f32(i32 55, float %335, float %336, float %337, float %335, float %336, float %337)  ; Dot3(ax,ay,az,bx,by,bz)
  %339 = fsub fast float 1.000000e+00, %338
  %340 = fcmp fast olt float %339, %241
  %341 = fcmp fast ogt float %339, %240
  %342 = or i1 %340, %341
  %343 = select i1 %342, float 0.000000e+00, float %339
  %344 = fsub fast float %240, %241
  %345 = fsub fast float %343, %241
  %346 = fdiv fast float %345, %344
  %347 = call float @dx.op.unary.f32(i32 7, float %346)  ; Saturate(value)
  %348 = fmul fast float %347, 2.000000e+00
  %349 = fsub fast float 3.000000e+00, %348
  %350 = fmul fast float %347, %347
  %351 = fmul fast float %350, %349
  %352 = fsub fast float %248, %254
  %353 = fmul fast float %351, %352
  %354 = fadd fast float %353, %254
  %355 = fmul fast float %245, %21
  %356 = fmul fast float %246, %22
  %357 = fmul fast float %247, %23
  %358 = fsub fast float %355, %251
  %359 = fsub fast float %356, %252
  %360 = fsub fast float %357, %253
  %361 = fmul fast float %351, %358
  %362 = fmul fast float %351, %359
  %363 = fmul fast float %351, %360
  %364 = fadd fast float %361, %251
  %365 = fadd fast float %362, %252
  %366 = fadd fast float %363, %253
  %367 = fmul fast float %234, %234
  %368 = fmul fast float %367, %343
  br label %460

; <label>:369                                     ; preds = %231
  %370 = and i32 %256, 256
  %371 = icmp eq i32 %370, 0
  %372 = fsub fast float %298, %38
  br i1 %371, label %421, label %373

; <label>:373                                     ; preds = %369
  %374 = fadd fast float %240, %38
  %375 = fcmp fast olt float %298, %38
  %376 = fcmp fast ogt float %298, %374
  %377 = or i1 %375, %376
  %378 = select i1 %377, float 0.000000e+00, float %372
  %379 = call float @dx.op.unary.f32(i32 83, float %298)  ; DerivCoarseX(value)
  %380 = call float @dx.op.unary.f32(i32 84, float %298)  ; DerivCoarseY(value)
  %381 = fmul fast float %379, %379
  %382 = fmul fast float %380, %380
  %383 = fadd fast float %382, %381
  %384 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %385 = extractvalue %dx.types.CBufRet.f32 %278, 2
  %386 = fmul fast float %385, %384
  %387 = call float @dx.op.unary.f32(i32 7, float %386)  ; Saturate(value)
  %388 = fmul fast float %387, %241
  %389 = fdiv fast float %372, %388
  %390 = call float @dx.op.unary.f32(i32 7, float %389)  ; Saturate(value)
  %391 = fmul fast float %390, 2.000000e+00
  %392 = fsub fast float 3.000000e+00, %391
  %393 = fmul fast float %390, %390
  %394 = fmul fast float %393, %392
  %395 = fsub fast float %298, %374
  %396 = fadd fast float %395, %388
  %397 = fdiv fast float %396, %388
  %398 = call float @dx.op.unary.f32(i32 7, float %397)  ; Saturate(value)
  %399 = fmul fast float %398, 2.000000e+00
  %400 = fsub fast float 3.000000e+00, %399
  %401 = fmul fast float %398, %398
  %402 = fmul fast float %401, %400
  %403 = fsub fast float %394, %402
  %404 = fsub fast float %248, %254
  %405 = fmul fast float %403, %404
  %406 = fadd fast float %405, %254
  %407 = fmul fast float %245, %21
  %408 = fmul fast float %246, %22
  %409 = fmul fast float %247, %23
  %410 = fsub fast float %407, %251
  %411 = fsub fast float %408, %252
  %412 = fsub fast float %409, %253
  %413 = fmul fast float %403, %410
  %414 = fmul fast float %403, %411
  %415 = fmul fast float %403, %412
  %416 = fadd fast float %413, %251
  %417 = fadd fast float %414, %252
  %418 = fadd fast float %415, %253
  %419 = fmul fast float %378, %234
  %420 = call float @dx.op.unary.f32(i32 6, float %419)  ; FAbs(value)
  br label %460

; <label>:421                                     ; preds = %369
  br i1 %259, label %422, label %433

; <label>:422                                     ; preds = %421
  %423 = select i1 %261, float 5.000000e+01, float 1.000000e+00
  %424 = fmul fast float %423, %234
  %425 = fmul fast float %32, 2.000000e+00
  %426 = fmul fast float %33, 2.000000e+00
  %427 = fadd fast float %425, -1.000000e+00
  %428 = fadd fast float %426, -1.000000e+00
  %429 = call float @dx.op.dot2.f32(i32 54, float %427, float %428, float %427, float %428)  ; Dot2(ax,ay,bx,by)
  %430 = fmul fast float %429, %242
  %431 = fsub fast float %372, %430
  %432 = fmul fast float %424, %431
  br label %460

; <label>:433                                     ; preds = %421
  br i1 %263, label %453, label %434

; <label>:434                                     ; preds = %433
  %435 = select i1 %261, float 0x3F947AE140000000, float 1.000000e+00
  %436 = fdiv fast float 1.000000e+00, %435
  %437 = fmul fast float %435, %235
  %438 = fmul fast float %435, %236
  %439 = fmul fast float %436, %237
  %440 = call float @dx.op.unary.f32(i32 6, float %372)  ; FAbs(value)
  %441 = fcmp fast olt float %440, %437
  br i1 %441, label %442, label %446, !dx.controlflow.hints !63

; <label>:442                                     ; preds = %434
  %443 = fmul fast float %436, %234
  %444 = fmul fast float %443, %440
  %445 = call float @dx.op.unary.f32(i32 6, float %444)  ; FAbs(value)
  br label %460

; <label>:446                                     ; preds = %434
  %447 = fcmp fast ogt float %440, %438
  br i1 %447, label %448, label %460

; <label>:448                                     ; preds = %446
  %449 = fsub fast float %440, %438
  %450 = fmul fast float %439, %449
  %451 = call float @dx.op.unary.f32(i32 6, float %450)  ; FAbs(value)
  %452 = fsub fast float 1.000000e+00, %451
  br label %460

; <label>:453                                     ; preds = %433
  %454 = select i1 %261, float 5.000000e+01, float 1.000000e+00
  %455 = fmul fast float %454, %234
  %456 = call float @dx.op.unary.f32(i32 6, float %210)  ; FAbs(value)
  %457 = select i1 %258, float %456, float 0x47EFFFFFE0000000
  %458 = call float @dx.op.binary.f32(i32 36, float %372, float %457)  ; FMin(a,b)
  %459 = fmul fast float %455, %458
  br label %460

; <label>:460                                     ; preds = %453, %448, %446, %442, %422, %373, %299
  %461 = phi float [ %368, %299 ], [ %420, %373 ], [ %432, %422 ], [ %459, %453 ], [ %445, %442 ], [ %452, %448 ], [ %440, %446 ]
  %462 = phi float [ %364, %299 ], [ %416, %373 ], [ %21, %422 ], [ %21, %453 ], [ %21, %442 ], [ %21, %448 ], [ %21, %446 ]
  %463 = phi float [ %365, %299 ], [ %417, %373 ], [ %22, %422 ], [ %22, %453 ], [ %22, %442 ], [ %22, %448 ], [ %22, %446 ]
  %464 = phi float [ %366, %299 ], [ %418, %373 ], [ %23, %422 ], [ %23, %453 ], [ %23, %442 ], [ %23, %448 ], [ %23, %446 ]
  %465 = phi float [ %354, %299 ], [ %406, %373 ], [ 1.000000e+00, %422 ], [ 1.000000e+00, %453 ], [ 1.000000e+00, %442 ], [ 1.000000e+00, %448 ], [ 1.000000e+00, %446 ]
  %466 = call float @dx.op.unary.f32(i32 7, float %461)  ; Saturate(value)
  %467 = fmul fast float %466, %34
  %468 = fmul fast float %465, %189
  %469 = fmul fast float %468, %466
  br label %470

; <label>:470                                     ; preds = %460, %228
  %471 = phi float [ %469, %460 ], [ %189, %228 ]
  %472 = phi float [ %467, %460 ], [ %34, %228 ]
  %473 = phi float [ %462, %460 ], [ %21, %228 ]
  %474 = phi float [ %463, %460 ], [ %22, %228 ]
  %475 = phi float [ %464, %460 ], [ %23, %228 ]
  %476 = fmul fast float %473, %24
  %477 = fmul fast float %474, %24
  %478 = fmul fast float %475, %24
  %479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.f32 %479, 2
  %481 = fptosi float %38 to i32
  %482 = sitofp i32 %481 to float
  %483 = fadd fast float %480, %482
  %484 = fmul fast float %483, 0x3FE3C6EF40000000
  %485 = frem fast float %44, 2.560000e+02
  %486 = frem fast float %45, 2.560000e+02
  %487 = fptoui float %485 to i32
  %488 = fptoui float %486 to i32
  %489 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %487, i32 %488, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = fadd fast float %490, %484
  %492 = call float @dx.op.unary.f32(i32 22, float %491)  ; Frc(value)
  %493 = and i32 %122, 1
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %552, label %495, !dx.controlflow.hints !64

; <label>:495                                     ; preds = %470
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 2
  %498 = extractvalue %dx.types.ResRet.f32 %496, 3
  %499 = add i32 %119, 16
  %500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  %502 = extractvalue %dx.types.ResRet.f32 %500, 1
  %503 = extractvalue %dx.types.ResRet.f32 %500, 2
  %504 = add i32 %119, 32
  %505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = extractvalue %dx.types.ResRet.f32 %505, 1
  %508 = extractvalue %dx.types.ResRet.f32 %505, 2
  %509 = and i32 %122, 2
  %510 = icmp eq i32 %509, 0
  %511 = call float @dx.op.dot3.f32(i32 55, float %28, float %29, float %30, float %28, float %29, float %30)  ; Dot3(ax,ay,az,bx,by,bz)
  %512 = call float @dx.op.unary.f32(i32 25, float %511)  ; Rsqrt(value)
  %513 = fmul fast float %512, %28
  %514 = fmul fast float %512, %29
  %515 = fmul fast float %512, %30
  %516 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %517 = call float @dx.op.unary.f32(i32 25, float %516)  ; Rsqrt(value)
  %518 = fmul fast float %517, %79
  %519 = fmul fast float %517, %80
  %520 = fmul fast float %517, %81
  %521 = call float @dx.op.dot3.f32(i32 55, float %518, float %519, float %520, float %513, float %514, float %515)  ; Dot3(ax,ay,az,bx,by,bz)
  %522 = fmul fast float %521, %521
  %523 = fmul fast float %522, %497
  %524 = fadd fast float %523, %498
  %525 = call float @dx.op.unary.f32(i32 7, float %524)  ; Saturate(value)
  br i1 %510, label %526, label %536, !dx.controlflow.hints !65

; <label>:526                                     ; preds = %495
  %527 = extractvalue %dx.types.ResRet.f32 %496, 1
  %528 = extractvalue %dx.types.ResRet.f32 %496, 0
  %529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %530 = extractvalue %dx.types.CBufRet.f32 %529, 3
  %531 = fmul fast float %530, %516
  %532 = fsub fast float %528, %531
  %533 = fmul fast float %532, %527
  %534 = call float @dx.op.unary.f32(i32 7, float %533)  ; Saturate(value)
  %535 = fmul fast float %534, %525
  br label %536

; <label>:536                                     ; preds = %526, %495
  %537 = phi float [ %535, %526 ], [ %525, %495 ]
  %538 = fsub fast float %501, %506
  %539 = fsub fast float %502, %507
  %540 = fsub fast float %503, %508
  %541 = fmul fast float %537, %538
  %542 = fmul fast float %537, %539
  %543 = fmul fast float %537, %540
  %544 = fadd fast float %541, %506
  %545 = fadd fast float %542, %507
  %546 = fadd fast float %543, %508
  %547 = fmul fast float %544, %476
  %548 = fmul fast float %545, %477
  %549 = fmul fast float %546, %478
  %550 = fmul fast float %537, %471
  %551 = fmul fast float %537, %472
  br label %552

; <label>:552                                     ; preds = %536, %470
  %553 = phi float [ %550, %536 ], [ %471, %470 ]
  %554 = phi float [ %551, %536 ], [ %472, %470 ]
  %555 = phi float [ %547, %536 ], [ %476, %470 ]
  %556 = phi float [ %548, %536 ], [ %477, %470 ]
  %557 = phi float [ %549, %536 ], [ %478, %470 ]
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = add i32 %559, 0
  %561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %560, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %562 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %561, %dx.types.Handle %41, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = extractvalue %dx.types.ResRet.f32 %562, 1
  %565 = extractvalue %dx.types.ResRet.f32 %562, 2
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = shl i32 %567, 4
  %569 = and i32 %568, 32752
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = lshr i32 %567, 7
  %572 = and i32 %571, 32752
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = lshr i32 %567, 22
  %575 = shl nuw nsw i32 %574, 5
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = fmul fast float %570, %563
  %578 = fmul fast float %573, %564
  %579 = fmul fast float %576, %565
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = lshr i32 %581, 22
  %583 = shl nuw nsw i32 %582, 5
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = fmul fast float %584, %577
  %586 = select i1 %102, float %585, float %577
  %587 = fmul fast float %586, %555
  %588 = fmul fast float %578, %556
  %589 = fmul fast float %579, %557
  %590 = call float @dx.op.dot3.f32(i32 55, float %587, float %588, float %589, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %591 = select i1 %102, float 0.000000e+00, float %587
  %592 = select i1 %102, float %590, float %588
  %593 = select i1 %102, float 0.000000e+00, float %589
  %594 = call float @dx.op.dot3.f32(i32 55, float %563, float %564, float %565, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = and i32 %596, 255
  %598 = uitofp i32 %597 to float
  %599 = lshr i32 %596, 8
  %600 = and i32 %599, 255
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %601, %594
  %603 = fadd fast float %602, %598
  %604 = fmul fast float %603, 0x3F70101020000000
  %605 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  %606 = and i32 %122, 8192
  %607 = icmp eq i32 %606, 0
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 0
  br i1 %607, label %616, label %610, !dx.controlflow.hints !66

; <label>:610                                     ; preds = %552
  %611 = add i32 %119, 176
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = fcmp fast oge float %613, 0.000000e+00
  %615 = select i1 %614, float %613, float %609
  br label %622

; <label>:616                                     ; preds = %552
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = bitcast i32 %618 to float
  %620 = fcmp fast oge float %619, 0.000000e+00
  %621 = select i1 %620, float %619, float %609
  br label %622

; <label>:622                                     ; preds = %616, %610
  %623 = phi float [ %615, %610 ], [ %621, %616 ]
  %624 = fmul fast float %594, %554
  %625 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %192, i32 %193, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = lshr i32 %626, 18
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %628, 0x3F4C00EBA0000000
  %630 = call float @dx.op.unary.f32(i32 21, float %629)  ; Exp(value)
  %631 = fadd fast float %630, -1.000000e+00
  %632 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %633 = extractvalue %dx.types.Dimensions %632, 0
  %634 = sitofp i32 %633 to float
  %635 = extractvalue %dx.types.Dimensions %632, 1
  %636 = sitofp i32 %635 to float
  %637 = fcmp fast oge float %190, %634
  %638 = fcmp fast oge float %191, %636
  %639 = or i1 %637, %638
  %640 = select i1 %639, float 0x4197782600000000, float %631
  %641 = icmp eq i32 %118, 3
  %642 = fcmp fast ogt float %38, %640
  %643 = and i1 %216, %642
  %644 = or i1 %641, %643
  %645 = icmp eq i32 %118, 2
  %646 = fcmp fast ole float %38, %640
  %647 = and i1 %645, %646
  %648 = or i1 %647, %644
  %649 = fmul fast float %31, %25
  %650 = fmul fast float %649, %473
  %651 = fmul fast float %650, %586
  %652 = fmul fast float %31, %26
  %653 = fmul fast float %652, %474
  %654 = fmul fast float %653, %578
  %655 = fmul fast float %31, %27
  %656 = fmul fast float %655, %475
  %657 = fmul fast float %656, %579
  %658 = fadd fast float %591, %651
  %659 = fadd fast float %592, %654
  %660 = fadd fast float %593, %657
  %661 = fmul fast float %658, %553
  %662 = fmul fast float %659, %553
  %663 = fmul fast float %660, %553
  %664 = fmul fast float %623, %605
  %665 = fsub fast float 1.000000e+00, %605
  %666 = fsub fast float %665, %624
  %667 = call float @dx.op.unary.f32(i32 7, float %666)  ; Saturate(value)
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 3
  %670 = fmul fast float %669, %667
  %671 = fadd fast float %670, %664
  %672 = and i32 %122, 1048576
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %765, label %674, !dx.controlflow.hints !67

; <label>:674                                     ; preds = %622
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 2
  %677 = extractvalue %dx.types.CBufRet.f32 %675, 3
  %678 = fmul fast float %676, %44
  %679 = fmul fast float %677, %45
  %680 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %681 = call float @dx.op.unary.f32(i32 7, float %679)  ; Saturate(value)
  %682 = select i1 %648, i32 2, i32 0
  %683 = or i32 %682, 1
  %684 = uitofp i32 %683 to float
  %685 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %680, float %681, float %684, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  %687 = extractvalue %dx.types.ResRet.f32 %685, 1
  %688 = extractvalue %dx.types.ResRet.f32 %685, 2
  %689 = extractvalue %dx.types.ResRet.f32 %685, 3
  %690 = add nuw nsw i32 %682, 2
  %691 = uitofp i32 %690 to float
  %692 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %680, float %681, float %691, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = extractvalue %dx.types.ResRet.f32 %692, 1
  %695 = extractvalue %dx.types.ResRet.f32 %692, 2
  %696 = extractvalue %dx.types.ResRet.f32 %692, 3
  %697 = call float @dx.op.binary.f32(i32 35, float %687, float %688)  ; FMax(a,b)
  %698 = call float @dx.op.binary.f32(i32 35, float %686, float %697)  ; FMax(a,b)
  %699 = call float @dx.op.binary.f32(i32 35, float %698, float %689)  ; FMax(a,b)
  %700 = call float @dx.op.binary.f32(i32 36, float %694, float %695)  ; FMin(a,b)
  %701 = call float @dx.op.binary.f32(i32 36, float %693, float %700)  ; FMin(a,b)
  %702 = call float @dx.op.binary.f32(i32 36, float %701, float %696)  ; FMin(a,b)
  %703 = fmul fast float %699, 2.550000e+02
  %704 = fadd fast float %703, 0x3F70101020000000
  %705 = fptoui float %704 to i32
  %706 = fmul fast float %702, 2.550000e+02
  %707 = fadd fast float %706, 0x3F70101020000000
  %708 = fptoui float %707 to i32
  %709 = icmp ult i32 %705, %708
  br i1 %709, label %710, label %758

; <label>:710                                     ; preds = %674
  %711 = fcmp fast ogt float %37, 9.843750e-01
  %712 = fadd fast float %38, -4.000000e+00
  %713 = select i1 %711, float -4.000000e+00, float %712
  %714 = call float @dx.op.binary.f32(i32 35, float %713, float 0.000000e+00)  ; FMax(a,b)
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 0
  %717 = fadd fast float %716, %714
  %718 = extractvalue %dx.types.CBufRet.f32 %715, 2
  %719 = fmul fast float %717, %718
  %720 = call float @dx.op.unary.f32(i32 23, float %719)  ; Log(value)
  %721 = extractvalue %dx.types.CBufRet.f32 %715, 3
  %722 = fmul fast float %721, %720
  %723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.f32 %723, 2
  %725 = fmul fast float %722, %724
  %726 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  %727 = uitofp i32 %705 to float
  %728 = uitofp i32 %708 to float
  %729 = fadd fast float %727, 5.000000e-01
  %730 = fadd fast float %728, 5.000000e-01
  %731 = fmul fast float %724, %729
  %732 = fmul fast float %724, %730
  %733 = fadd fast float %731, 0x3F0FFB4800000000
  %734 = fadd fast float %732, 0xBF0FFB4800000000
  %735 = call float @dx.op.binary.f32(i32 35, float %726, float %733)  ; FMax(a,b)
  %736 = call float @dx.op.binary.f32(i32 36, float %735, float %734)  ; FMin(a,b)
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 1
  %739 = extractvalue %dx.types.CBufRet.f32 %737, 2
  %740 = extractvalue %dx.types.CBufRet.f32 %737, 0
  %741 = select i1 %648, float %740, float 0.000000e+00
  %742 = fmul fast float %738, %736
  %743 = fadd fast float %741, %742
  %744 = fadd fast float %741, %739
  %745 = fsub fast float %738, %739
  %746 = fadd fast float %745, %741
  %747 = call float @dx.op.binary.f32(i32 35, float %743, float %744)  ; FMax(a,b)
  %748 = call float @dx.op.binary.f32(i32 36, float %747, float %746)  ; FMin(a,b)
  %749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %15, float %680, float %681, float %748, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = extractvalue %dx.types.ResRet.f32 %749, 1
  %752 = extractvalue %dx.types.ResRet.f32 %749, 2
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 1
  %755 = fmul fast float %754, %750
  %756 = fmul fast float %754, %751
  %757 = fmul fast float %754, %752
  br label %758

; <label>:758                                     ; preds = %710, %674
  %759 = phi float [ %755, %710 ], [ 1.000000e+00, %674 ]
  %760 = phi float [ %756, %710 ], [ 1.000000e+00, %674 ]
  %761 = phi float [ %757, %710 ], [ 1.000000e+00, %674 ]
  %762 = fmul fast float %759, %661
  %763 = fmul fast float %760, %662
  %764 = fmul fast float %761, %663
  br label %765

; <label>:765                                     ; preds = %758, %622
  %766 = phi float [ %762, %758 ], [ %661, %622 ]
  %767 = phi float [ %763, %758 ], [ %662, %622 ]
  %768 = phi float [ %764, %758 ], [ %663, %622 ]
  %769 = and i32 %122, 2097152
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %775, label %771, !dx.controlflow.hints !68

; <label>:771                                     ; preds = %765
  %772 = add i32 %119, 192
  %773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 0
  br label %778

; <label>:775                                     ; preds = %765
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 3
  br label %778

; <label>:778                                     ; preds = %775, %771
  %779 = phi float [ %774, %771 ], [ %777, %775 ]
  br i1 %643, label %780, label %895

; <label>:780                                     ; preds = %778
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 2
  %783 = extractvalue %dx.types.CBufRet.f32 %781, 3
  %784 = fmul fast float %782, %44
  %785 = fmul fast float %783, %45
  %786 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  %787 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  %788 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %786, float %787, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %789 = extractvalue %dx.types.ResRet.f32 %788, 0
  %790 = extractvalue %dx.types.ResRet.f32 %788, 1
  %791 = extractvalue %dx.types.ResRet.f32 %788, 2
  %792 = extractvalue %dx.types.ResRet.f32 %788, 3
  %793 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %786, float %787, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %794 = extractvalue %dx.types.ResRet.f32 %793, 0
  %795 = extractvalue %dx.types.ResRet.f32 %793, 1
  %796 = extractvalue %dx.types.ResRet.f32 %793, 2
  %797 = extractvalue %dx.types.ResRet.f32 %793, 3
  %798 = call float @dx.op.binary.f32(i32 35, float %790, float %791)  ; FMax(a,b)
  %799 = call float @dx.op.binary.f32(i32 35, float %789, float %798)  ; FMax(a,b)
  %800 = call float @dx.op.binary.f32(i32 35, float %799, float %792)  ; FMax(a,b)
  %801 = call float @dx.op.binary.f32(i32 36, float %795, float %796)  ; FMin(a,b)
  %802 = call float @dx.op.binary.f32(i32 36, float %794, float %801)  ; FMin(a,b)
  %803 = call float @dx.op.binary.f32(i32 36, float %802, float %797)  ; FMin(a,b)
  %804 = fmul fast float %800, 2.550000e+02
  %805 = fadd fast float %804, 0x3F70101020000000
  %806 = fptoui float %805 to i32
  %807 = fmul fast float %803, 2.550000e+02
  %808 = fadd fast float %807, 0x3F70101020000000
  %809 = fptoui float %808 to i32
  %810 = icmp ult i32 %806, %809
  br i1 %810, label %811, label %853

; <label>:811                                     ; preds = %780
  %812 = fcmp fast ogt float %37, 9.843750e-01
  %813 = fadd fast float %38, -4.000000e+00
  %814 = select i1 %812, float -4.000000e+00, float %813
  %815 = call float @dx.op.binary.f32(i32 35, float %814, float 0.000000e+00)  ; FMax(a,b)
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %818 = fadd fast float %817, %815
  %819 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %820 = fmul fast float %818, %819
  %821 = call float @dx.op.unary.f32(i32 23, float %820)  ; Log(value)
  %822 = extractvalue %dx.types.CBufRet.f32 %816, 3
  %823 = fmul fast float %822, %821
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 2
  %826 = fmul fast float %823, %825
  %827 = call float @dx.op.unary.f32(i32 7, float %826)  ; Saturate(value)
  %828 = uitofp i32 %806 to float
  %829 = uitofp i32 %809 to float
  %830 = fadd fast float %828, 5.000000e-01
  %831 = fadd fast float %829, 5.000000e-01
  %832 = fmul fast float %825, %830
  %833 = fmul fast float %825, %831
  %834 = fadd fast float %832, 0x3F0FFB4800000000
  %835 = fadd fast float %833, 0xBF0FFB4800000000
  %836 = call float @dx.op.binary.f32(i32 35, float %827, float %834)  ; FMax(a,b)
  %837 = call float @dx.op.binary.f32(i32 36, float %836, float %835)  ; FMin(a,b)
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 1
  %840 = extractvalue %dx.types.CBufRet.f32 %838, 2
  %841 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %842 = fmul fast float %839, %837
  %843 = fadd fast float %841, %842
  %844 = fadd fast float %841, %840
  %845 = fsub fast float %839, %840
  %846 = fadd fast float %845, %841
  %847 = call float @dx.op.binary.f32(i32 35, float %843, float %844)  ; FMax(a,b)
  %848 = call float @dx.op.binary.f32(i32 36, float %847, float %846)  ; FMin(a,b)
  %849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %786, float %787, float %848, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = extractvalue %dx.types.ResRet.f32 %849, 1
  %852 = extractvalue %dx.types.ResRet.f32 %849, 2
  br label %853

; <label>:853                                     ; preds = %811, %780
  %854 = phi float [ %850, %811 ], [ 1.000000e+00, %780 ]
  %855 = phi float [ %851, %811 ], [ 1.000000e+00, %780 ]
  %856 = phi float [ %852, %811 ], [ 1.000000e+00, %780 ]
  %857 = call float @dx.op.dot3.f32(i32 55, float %854, float %855, float %856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %858 = select i1 %102, float %857, float %854
  %859 = select i1 %102, float %857, float %855
  %860 = select i1 %102, float 1.000000e+00, float %856
  %861 = fmul fast float %858, %766
  %862 = fmul fast float %859, %767
  %863 = fmul fast float %860, %768
  %864 = fmul fast float %49, %782
  %865 = fmul fast float %51, %783
  %866 = fsub fast float 1.000000e+00, %864
  %867 = fsub fast float 1.000000e+00, %865
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %871 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %872 = fmul fast float %866, %869
  %873 = fmul fast float %866, %870
  %874 = fmul fast float %866, %871
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 0
  %877 = extractvalue %dx.types.CBufRet.f32 %875, 1
  %878 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %879 = fmul fast float %867, %876
  %880 = fmul fast float %867, %877
  %881 = fmul fast float %867, %878
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 0
  %884 = extractvalue %dx.types.CBufRet.f32 %882, 1
  %885 = extractvalue %dx.types.CBufRet.f32 %882, 2
  %886 = fadd fast float %879, %883
  %887 = fadd fast float %886, %872
  %888 = fadd fast float %880, %884
  %889 = fadd fast float %888, %873
  %890 = fadd fast float %881, %885
  %891 = fadd fast float %890, %874
  %892 = fmul fast float %887, %640
  %893 = fmul fast float %889, %640
  %894 = fmul fast float %891, %640
  br label %895

; <label>:895                                     ; preds = %853, %778
  %896 = phi float [ %892, %853 ], [ %79, %778 ]
  %897 = phi float [ %893, %853 ], [ %80, %778 ]
  %898 = phi float [ %894, %853 ], [ %81, %778 ]
  %899 = phi float [ %640, %853 ], [ %38, %778 ]
  %900 = phi float [ %861, %853 ], [ %766, %778 ]
  %901 = phi float [ %862, %853 ], [ %767, %778 ]
  %902 = phi float [ %863, %853 ], [ %768, %778 ]
  %903 = phi float [ %854, %853 ], [ 1.000000e+00, %778 ]
  br i1 %648, label %1781, label %904

; <label>:904                                     ; preds = %895
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 0
  %907 = extractvalue %dx.types.CBufRet.f32 %905, 1
  %908 = extractvalue %dx.types.CBufRet.f32 %905, 2
  %909 = extractvalue %dx.types.CBufRet.f32 %905, 3
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 0
  %912 = extractvalue %dx.types.CBufRet.f32 %910, 1
  %913 = extractvalue %dx.types.CBufRet.f32 %910, 2
  %914 = extractvalue %dx.types.CBufRet.f32 %910, 3
  %915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %916 = extractvalue %dx.types.CBufRet.f32 %915, 3
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 3
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 3
  %921 = extractvalue %dx.types.CBufRet.f32 %919, 0
  %922 = extractvalue %dx.types.CBufRet.f32 %919, 1
  %923 = extractvalue %dx.types.CBufRet.f32 %919, 2
  %924 = fcmp fast olt float %923, -5.000000e-01
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 3
  %927 = call float @dx.op.dot3.f32(i32 55, float %896, float %897, float %898, float %896, float %897, float %898)  ; Dot3(ax,ay,az,bx,by,bz)
  %928 = call float @dx.op.unary.f32(i32 25, float %927)  ; Rsqrt(value)
  %929 = fmul fast float %928, %927
  %930 = fmul fast float %928, %896
  %931 = fmul fast float %928, %897
  %932 = fmul fast float %928, %898
  %933 = fadd fast float %929, %909
  %934 = call float @dx.op.dot3.f32(i32 55, float %930, float %931, float %932, float %906, float %907, float %908)  ; Dot3(ax,ay,az,bx,by,bz)
  %935 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.i32 %935, 1
  %937 = and i32 %936, 1
  %938 = icmp ne i32 %937, 0
  %939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %940 = extractvalue %dx.types.CBufRet.f32 %939, 2
  %941 = fcmp fast ogt float %940, 0.000000e+00
  %942 = and i1 %938, %941
  br i1 %942, label %943, label %1282, !dx.controlflow.hints !69

; <label>:943                                     ; preds = %904
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 3
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 2
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 2
  %950 = fsub fast float %947, %949
  %951 = and i32 %936, 2
  %952 = extractvalue %dx.types.CBufRet.i32 %935, 0
  %953 = call i32 @dx.op.binary.i32(i32 40, i32 %952, i32 3)  ; UMin(a,b)
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 0
  %956 = extractvalue %dx.types.CBufRet.f32 %954, 1
  %957 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %958 = extractvalue %dx.types.CBufRet.f32 %948, 1
  %959 = fsub fast float %955, %957
  %960 = fsub fast float %956, %958
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %963 = fcmp fast ogt float %962, 0.000000e+00
  %964 = fsub fast float -0.000000e+00, %959
  %965 = fsub fast float -0.000000e+00, %960
  %966 = call float @dx.op.dot2.f32(i32 54, float %930, float %931, float %930, float %931)  ; Dot2(ax,ay,bx,by)
  %967 = call float @dx.op.dot2.f32(i32 54, float %930, float %931, float %964, float %965)  ; Dot2(ax,ay,bx,by)
  %968 = fmul fast float %967, 2.000000e+00
  %969 = call float @dx.op.dot2.f32(i32 54, float %964, float %965, float %964, float %965)  ; Dot2(ax,ay,bx,by)
  %970 = fmul fast float %962, %962
  %971 = fsub fast float %969, %970
  %972 = fmul fast float %968, %968
  %973 = fmul fast float %966, 4.000000e+00
  %974 = fmul fast float %973, %971
  %975 = fsub fast float %972, %974
  %976 = fcmp fast ogt float %975, 0.000000e+00
  br i1 %976, label %977, label %992

; <label>:977                                     ; preds = %943
  %978 = fcmp fast ogt float %968, 0.000000e+00
  %979 = call float @dx.op.unary.f32(i32 24, float %975)  ; Sqrt(value)
  %980 = fsub fast float -0.000000e+00, %979
  %981 = select i1 %978, float %979, float %980
  %982 = fadd fast float %981, %968
  %983 = fmul float %982, -5.000000e-01
  %984 = fdiv fast float %983, %966
  %985 = call float @dx.op.binary.f32(i32 35, float %984, float 0.000000e+00)  ; FMax(a,b)
  %986 = call float @dx.op.binary.f32(i32 36, float %929, float %985)  ; FMin(a,b)
  %987 = fdiv fast float %971, %983
  %988 = call float @dx.op.binary.f32(i32 35, float %987, float 0.000000e+00)  ; FMax(a,b)
  %989 = call float @dx.op.binary.f32(i32 36, float %929, float %988)  ; FMin(a,b)
  %990 = call float @dx.op.binary.f32(i32 36, float %986, float %989)  ; FMin(a,b)
  %991 = call float @dx.op.binary.f32(i32 35, float %986, float %989)  ; FMax(a,b)
  br label %992

; <label>:992                                     ; preds = %977, %943
  %993 = phi float [ %991, %977 ], [ -1.000000e+00, %943 ]
  %994 = phi float [ %990, %977 ], [ -1.000000e+00, %943 ]
  %995 = phi i1 [ true, %977 ], [ false, %943 ]
  %996 = and i1 %963, %995
  br i1 %996, label %997, label %999

; <label>:997                                     ; preds = %992
  %998 = fcmp fast oeq float %994, %993
  br i1 %998, label %1242, label %1000

; <label>:999                                     ; preds = %992
  br i1 %963, label %1242, label %1000

; <label>:1000                                    ; preds = %999, %997
  %1001 = phi float [ %929, %999 ], [ %993, %997 ]
  %1002 = phi float [ 0.000000e+00, %999 ], [ %994, %997 ]
  %1003 = icmp ne i32 %951, 0
  %1004 = fmul fast float %1001, %932
  %1005 = fadd fast float %1004, %945
  %1006 = fmul fast float %1005, %1001
  %1007 = select i1 %1003, float 0.000000e+00, float %1006
  %1008 = fcmp fast oeq float %932, 0.000000e+00
  %1009 = fdiv fast float %950, %932
  %1010 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1009)  ; FMax(a,b)
  %1011 = select i1 %1008, float %1001, float %1010
  %1012 = call float @dx.op.binary.f32(i32 36, float %1001, float %1011)  ; FMin(a,b)
  %1013 = fcmp fast ogt float %932, 0.000000e+00
  %1014 = fcmp fast olt float %950, 0.000000e+00
  br i1 %1013, label %1015, label %1052

; <label>:1015                                    ; preds = %1000
  %1016 = icmp eq i32 %951, 0
  br i1 %1014, label %1017, label %1041

; <label>:1017                                    ; preds = %1015
  %1018 = select i1 %1016, float %1001, float 0.000000e+00
  %1019 = fsub fast float -0.000000e+00, %1018
  %1020 = call float @dx.op.unary.f32(i32 6, float %1019)  ; FAbs(value)
  %1021 = fmul fast float %1018, %932
  %1022 = fadd fast float %1021, %945
  %1023 = fmul fast float %1020, %1022
  %1024 = fsub fast float %1007, %1023
  %1025 = fsub fast float %1001, %1020
  %1026 = select i1 %1016, float %1025, float 0.000000e+00
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 3
  %1029 = call float @dx.op.binary.f32(i32 36, float %1024, float %1028)  ; FMin(a,b)
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1033 = fadd fast float %1032, %1031
  %1034 = call float @dx.op.unary.f32(i32 7, float %1033)  ; Saturate(value)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1030, 2
  %1036 = extractvalue %dx.types.CBufRet.f32 %1030, 3
  %1037 = fadd fast float %1036, %1035
  %1038 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1039 = fmul fast float %1034, %1029
  %1040 = fmul fast float %1039, %1038
  br label %1242

; <label>:1041                                    ; preds = %1015
  br i1 %1016, label %1042, label %1063

; <label>:1042                                    ; preds = %1041
  %1043 = call float @dx.op.binary.f32(i32 36, float %1012, float %1002)  ; FMin(a,b)
  %1044 = fsub fast float %1012, %1043
  %1045 = fsub fast float %1044, %1001
  %1046 = call float @dx.op.unary.f32(i32 6, float %1045)  ; FAbs(value)
  %1047 = fadd fast float %1044, %1001
  %1048 = fmul fast float %1047, %932
  %1049 = fadd fast float %1048, %945
  %1050 = fmul fast float %1049, %1046
  %1051 = fsub fast float %1007, %1050
  br label %1063

; <label>:1052                                    ; preds = %1000
  br i1 %1014, label %1053, label %1063

; <label>:1053                                    ; preds = %1052
  %1054 = call float @dx.op.binary.f32(i32 35, float %1002, float %1012)  ; FMax(a,b)
  %1055 = icmp eq i32 %951, 0
  %1056 = select i1 %1055, float %1012, float 0.000000e+00
  %1057 = fsub fast float -0.000000e+00, %1056
  %1058 = call float @dx.op.unary.f32(i32 6, float %1057)  ; FAbs(value)
  %1059 = fmul fast float %1056, %932
  %1060 = fadd fast float %1059, %945
  %1061 = fmul fast float %1058, %1060
  %1062 = fsub fast float %1007, %1061
  br label %1063

; <label>:1063                                    ; preds = %1053, %1052, %1042, %1041
  %1064 = phi float [ %1002, %1041 ], [ %1002, %1042 ], [ %1054, %1053 ], [ %1002, %1052 ]
  %1065 = phi float [ 0.000000e+00, %1041 ], [ %1046, %1042 ], [ %1058, %1053 ], [ 0.000000e+00, %1052 ]
  %1066 = phi float [ %1007, %1041 ], [ %1051, %1042 ], [ %1062, %1053 ], [ %1007, %1052 ]
  %1067 = phi float [ %1012, %1041 ], [ %1012, %1042 ], [ %1001, %1053 ], [ %1001, %1052 ]
  %1068 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 0
  store float -1.000000e+00, float* %1068, align 4, !tbaa !70, !noalias !74
  %1069 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 1
  store float -1.000000e+00, float* %1069, align 4, !tbaa !70, !noalias !74
  %1070 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 2
  store float -1.000000e+00, float* %1070, align 4, !tbaa !70, !noalias !74
  %1071 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 0
  store float -1.000000e+00, float* %1071, align 4, !tbaa !70, !noalias !74
  %1072 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 1
  store float -1.000000e+00, float* %1072, align 4, !tbaa !70, !noalias !74
  %1073 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 2
  store float -1.000000e+00, float* %1073, align 4, !tbaa !70, !noalias !74
  %1074 = icmp sgt i32 %953, 0
  br i1 %1074, label %1075, label %1136

; <label>:1075                                    ; preds = %1063
  br label %1076

; <label>:1076                                    ; preds = %1125, %1075
  %1077 = phi i32 [ %1126, %1125 ], [ 0, %1075 ]
  %1078 = phi i32 [ %1127, %1125 ], [ 0, %1075 ]
  %1079 = add nuw i32 %1078, 171
  %1080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1079)  ; CBufferLoadLegacy(handle,regIndex)
  %1081 = extractvalue %dx.types.CBufRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.CBufRet.f32 %1080, 1
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.CBufRet.f32 %1083, 1
  %1086 = fsub fast float %1081, %1084
  %1087 = fsub fast float %1082, %1085
  %1088 = extractvalue %dx.types.CBufRet.f32 %1080, 2
  %1089 = fsub fast float -0.000000e+00, %1086
  %1090 = fsub fast float -0.000000e+00, %1087
  %1091 = call float @dx.op.dot2.f32(i32 54, float %930, float %931, float %1089, float %1090)  ; Dot2(ax,ay,bx,by)
  %1092 = fmul fast float %1091, 2.000000e+00
  %1093 = call float @dx.op.dot2.f32(i32 54, float %1089, float %1090, float %1089, float %1090)  ; Dot2(ax,ay,bx,by)
  %1094 = fmul fast float %1088, %1088
  %1095 = fsub fast float %1093, %1094
  %1096 = fmul fast float %1092, %1092
  %1097 = fmul fast float %973, %1095
  %1098 = fsub fast float %1096, %1097
  %1099 = fcmp fast ogt float %1098, 0.000000e+00
  br i1 %1099, label %1100, label %1115

; <label>:1100                                    ; preds = %1076
  %1101 = fcmp fast ogt float %1092, 0.000000e+00
  %1102 = call float @dx.op.unary.f32(i32 24, float %1098)  ; Sqrt(value)
  %1103 = fsub fast float -0.000000e+00, %1102
  %1104 = select i1 %1101, float %1102, float %1103
  %1105 = fadd fast float %1104, %1092
  %1106 = fmul float %1105, -5.000000e-01
  %1107 = fdiv fast float %1106, %966
  %1108 = call float @dx.op.binary.f32(i32 35, float %1107, float 0.000000e+00)  ; FMax(a,b)
  %1109 = call float @dx.op.binary.f32(i32 36, float %1001, float %1108)  ; FMin(a,b)
  %1110 = fdiv fast float %1095, %1106
  %1111 = call float @dx.op.binary.f32(i32 35, float %1110, float 0.000000e+00)  ; FMax(a,b)
  %1112 = call float @dx.op.binary.f32(i32 36, float %1001, float %1111)  ; FMin(a,b)
  %1113 = call float @dx.op.binary.f32(i32 36, float %1109, float %1112)  ; FMin(a,b)
  %1114 = call float @dx.op.binary.f32(i32 35, float %1109, float %1112)  ; FMax(a,b)
  br label %1115

; <label>:1115                                    ; preds = %1100, %1076
  %1116 = phi float [ %1114, %1100 ], [ -1.000000e+00, %1076 ]
  %1117 = phi float [ %1113, %1100 ], [ -1.000000e+00, %1076 ]
  %1118 = phi i1 [ true, %1100 ], [ false, %1076 ]
  br i1 %1118, label %1119, label %1125

; <label>:1119                                    ; preds = %1115
  %1120 = call float @dx.op.binary.f32(i32 35, float %1064, float %1117)  ; FMax(a,b)
  %1121 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1078
  store float %1120, float* %1121, align 4, !tbaa !70, !noalias !74
  %1122 = call float @dx.op.binary.f32(i32 35, float %1064, float %1116)  ; FMax(a,b)
  %1123 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %1078
  store float %1122, float* %1123, align 4, !tbaa !70, !noalias !74
  %1124 = add nsw i32 %1077, 1
  br label %1125

; <label>:1125                                    ; preds = %1119, %1115
  %1126 = phi i32 [ %1124, %1119 ], [ %1077, %1115 ]
  %1127 = add nuw nsw i32 %1078, 1
  %1128 = icmp eq i32 %1127, %953
  br i1 %1128, label %1129, label %1076

; <label>:1129                                    ; preds = %1125
  %1130 = load float, float* %1070, align 4, !tbaa !70, !alias.scope !90, !noalias !93
  %1131 = load float, float* %1069, align 4, !tbaa !70, !alias.scope !96, !noalias !97
  %1132 = load float, float* %1068, align 4, !tbaa !70, !alias.scope !98, !noalias !99
  %1133 = load float, float* %1073, align 4, !tbaa !70, !alias.scope !100, !noalias !103
  %1134 = load float, float* %1072, align 4, !tbaa !70, !alias.scope !106, !noalias !107
  %1135 = load float, float* %1071, align 4, !tbaa !70, !alias.scope !108, !noalias !109
  br label %1136

; <label>:1136                                    ; preds = %1129, %1063
  %1137 = phi float [ -1.000000e+00, %1063 ], [ %1135, %1129 ]
  %1138 = phi float [ -1.000000e+00, %1063 ], [ %1134, %1129 ]
  %1139 = phi float [ -1.000000e+00, %1063 ], [ %1133, %1129 ]
  %1140 = phi float [ -1.000000e+00, %1063 ], [ %1132, %1129 ]
  %1141 = phi float [ -1.000000e+00, %1063 ], [ %1131, %1129 ]
  %1142 = phi float [ -1.000000e+00, %1063 ], [ %1130, %1129 ]
  %1143 = phi i32 [ 0, %1063 ], [ %1126, %1129 ]
  %1144 = call float @dx.op.binary.f32(i32 36, float %1141, float %1142)  ; FMin(a,b)
  %1145 = call float @dx.op.binary.f32(i32 36, float %1140, float %1144)  ; FMin(a,b)
  %1146 = call float @dx.op.binary.f32(i32 35, float %1140, float %1141)  ; FMax(a,b)
  %1147 = call float @dx.op.binary.f32(i32 36, float %1146, float %1142)  ; FMin(a,b)
  %1148 = call float @dx.op.binary.f32(i32 36, float %1140, float %1141)  ; FMin(a,b)
  %1149 = call float @dx.op.binary.f32(i32 35, float %1148, float %1147)  ; FMax(a,b)
  %1150 = call float @dx.op.binary.f32(i32 35, float %1141, float %1142)  ; FMax(a,b)
  %1151 = call float @dx.op.binary.f32(i32 35, float %1140, float %1150)  ; FMax(a,b)
  store float %1145, float* %1068, align 4, !tbaa !70, !alias.scope !98, !noalias !99
  store float %1149, float* %1069, align 4, !tbaa !70, !alias.scope !96, !noalias !97
  store float %1151, float* %1070, align 4, !tbaa !70, !alias.scope !90, !noalias !93
  %1152 = call float @dx.op.binary.f32(i32 36, float %1138, float %1139)  ; FMin(a,b)
  %1153 = call float @dx.op.binary.f32(i32 36, float %1137, float %1152)  ; FMin(a,b)
  %1154 = call float @dx.op.binary.f32(i32 35, float %1137, float %1138)  ; FMax(a,b)
  %1155 = call float @dx.op.binary.f32(i32 36, float %1154, float %1139)  ; FMin(a,b)
  %1156 = call float @dx.op.binary.f32(i32 36, float %1137, float %1138)  ; FMin(a,b)
  %1157 = call float @dx.op.binary.f32(i32 35, float %1156, float %1155)  ; FMax(a,b)
  %1158 = call float @dx.op.binary.f32(i32 35, float %1138, float %1139)  ; FMax(a,b)
  %1159 = call float @dx.op.binary.f32(i32 35, float %1137, float %1158)  ; FMax(a,b)
  store float %1153, float* %1071, align 4, !tbaa !70, !alias.scope !108, !noalias !109
  store float %1157, float* %1072, align 4, !tbaa !70, !alias.scope !106, !noalias !107
  store float %1159, float* %1073, align 4, !tbaa !70, !alias.scope !100, !noalias !103
  %1160 = sub nsw i32 3, %1143
  %1161 = icmp sgt i32 %1160, 2
  br i1 %1161, label %1162, label %1180

; <label>:1162                                    ; preds = %1136
  %1163 = icmp eq i32 %951, 0
  %1164 = fsub fast float %1001, %1065
  %1165 = select i1 %1163, float %1164, float %1065
  %1166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1167 = extractvalue %dx.types.CBufRet.f32 %1166, 3
  %1168 = call float @dx.op.binary.f32(i32 36, float %1066, float %1167)  ; FMin(a,b)
  %1169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.CBufRet.f32 %1169, 1
  %1172 = fadd fast float %1171, %1170
  %1173 = call float @dx.op.unary.f32(i32 7, float %1172)  ; Saturate(value)
  %1174 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1175 = extractvalue %dx.types.CBufRet.f32 %1169, 3
  %1176 = fadd fast float %1175, %1174
  %1177 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1178 = fmul fast float %1173, %1168
  %1179 = fmul fast float %1178, %1177
  br label %1242

; <label>:1180                                    ; preds = %1136
  %1181 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1160
  %1182 = load float, float* %1181, align 4, !tbaa !70, !noalias !74
  %1183 = fcmp fast olt float %1182, %1067
  %1184 = icmp sgt i32 %1143, 0
  %1185 = and i1 %1184, %1183
  br i1 %1185, label %1186, label %1223

; <label>:1186                                    ; preds = %1180
  br label %1187

; <label>:1187                                    ; preds = %1216, %1186
  %1188 = phi float [ %1217, %1216 ], [ %1065, %1186 ]
  %1189 = phi float [ %1218, %1216 ], [ %1066, %1186 ]
  %1190 = phi float [ %1198, %1216 ], [ %1182, %1186 ]
  %1191 = phi i32 [ %1195, %1216 ], [ %1160, %1186 ]
  %1192 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %1191
  %1193 = load float, float* %1192, align 4, !tbaa !70, !noalias !74
  %1194 = icmp slt i32 %1191, 2
  %1195 = add nsw i32 %1191, 1
  %1196 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1195
  %1197 = load float, float* %1196, align 4, !tbaa !70, !noalias !74
  %1198 = select i1 %1194, float %1197, float %1001
  %1199 = call float @dx.op.binary.f32(i32 36, float %1198, float %1193)  ; FMin(a,b)
  %1200 = call float @dx.op.binary.f32(i32 36, float %1067, float %1199)  ; FMin(a,b)
  %1201 = icmp eq i32 %951, 0
  %1202 = fadd fast float %1200, %1190
  %1203 = fmul fast float %1202, %932
  %1204 = fadd fast float %1203, %945
  br i1 %1201, label %1210, label %1205

; <label>:1205                                    ; preds = %1187
  %1206 = fsub fast float %1200, %1190
  %1207 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1206)  ; FMax(a,b)
  %1208 = fmul fast float %1207, %1204
  %1209 = fadd fast float %1208, %1189
  br label %1216

; <label>:1210                                    ; preds = %1187
  %1211 = fsub fast float %1190, %1200
  %1212 = call float @dx.op.unary.f32(i32 6, float %1211)  ; FAbs(value)
  %1213 = fadd fast float %1212, %1188
  %1214 = fmul fast float %1212, %1204
  %1215 = fsub fast float %1189, %1214
  br label %1216

; <label>:1216                                    ; preds = %1210, %1205
  %1217 = phi float [ %1207, %1205 ], [ %1213, %1210 ]
  %1218 = phi float [ %1209, %1205 ], [ %1215, %1210 ]
  %1219 = fcmp fast olt float %1198, %1067
  %1220 = icmp slt i32 %1195, 3
  %1221 = and i1 %1220, %1219
  br i1 %1221, label %1187, label %1222

; <label>:1222                                    ; preds = %1216
  br label %1223

; <label>:1223                                    ; preds = %1222, %1180
  %1224 = phi float [ %1065, %1180 ], [ %1217, %1222 ]
  %1225 = phi float [ %1066, %1180 ], [ %1218, %1222 ]
  %1226 = fsub fast float %1001, %1224
  %1227 = select i1 %1003, float %1224, float %1226
  %1228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1229 = extractvalue %dx.types.CBufRet.f32 %1228, 3
  %1230 = call float @dx.op.binary.f32(i32 36, float %1225, float %1229)  ; FMin(a,b)
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1233 = extractvalue %dx.types.CBufRet.f32 %1231, 1
  %1234 = fadd fast float %1233, %1232
  %1235 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1231, 2
  %1237 = extractvalue %dx.types.CBufRet.f32 %1231, 3
  %1238 = fadd fast float %1237, %1236
  %1239 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1240 = fmul fast float %1235, %1230
  %1241 = fmul fast float %1240, %1239
  br label %1242

; <label>:1242                                    ; preds = %1223, %1162, %1017, %999, %997
  %1243 = phi float [ %1026, %1017 ], [ %1165, %1162 ], [ %1227, %1223 ], [ 0.000000e+00, %997 ], [ 0.000000e+00, %999 ]
  %1244 = phi float [ %1040, %1017 ], [ %1179, %1162 ], [ %1241, %1223 ], [ 0.000000e+00, %997 ], [ 0.000000e+00, %999 ]
  %1245 = fmul fast float %940, %1244
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 2
  %1248 = fsub fast float %947, %1247
  %1249 = fcmp fast olt float %1245, -2.000000e+01
  %1250 = call float @dx.op.unary.f32(i32 21, float %1245)  ; Exp(value)
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1253 = extractvalue %dx.types.CBufRet.f32 %1251, 3
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 2
  %1256 = fmul fast float %1253, %1248
  %1257 = call float @dx.op.unary.f32(i32 7, float %1256)  ; Saturate(value)
  %1258 = fsub fast float 1.000000e+00, %1257
  %1259 = fmul fast float %932, 5.000000e-01
  %1260 = fadd fast float %1259, 5.000000e-01
  %1261 = call float @dx.op.unary.f32(i32 7, float %1260)  ; Saturate(value)
  %1262 = fsub fast float 1.000000e+00, %1261
  %1263 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1258)  ; FMax(a,b)
  %1264 = fdiv fast float %1262, %1263
  %1265 = fsub fast float %1248, %898
  %1266 = call float @dx.op.unary.f32(i32 6, float %1265)  ; FAbs(value)
  %1267 = fmul fast float %1266, %1252
  %1268 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1269 = fsub fast float 1.000000e+00, %1267
  %1270 = fmul fast float %1269, %1268
  %1271 = fadd fast float %1270, %1267
  %1272 = fmul fast float %1255, %1248
  %1273 = call float @dx.op.unary.f32(i32 7, float %1272)  ; Saturate(value)
  %1274 = fsub fast float 1.000000e+00, %1271
  %1275 = fmul fast float %1274, %1273
  %1276 = fadd fast float %1275, %1271
  %1277 = call float @dx.op.unary.f32(i32 7, float %1276)  ; Saturate(value)
  %1278 = fadd fast float %1250, -1.000000e+00
  %1279 = select i1 %1249, float -1.000000e+00, float %1278
  %1280 = fmul fast float %1277, %1279
  %1281 = fadd fast float %1280, 1.000000e+00
  br label %1282

; <label>:1282                                    ; preds = %1242, %904
  %1283 = phi float [ %1243, %1242 ], [ 0.000000e+00, %904 ]
  %1284 = phi float [ %1281, %1242 ], [ 1.000000e+00, %904 ]
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 1
  %1287 = fsub fast float 1.000000e+00, %1284
  %1288 = fmul fast float %1287, %933
  %1289 = fmul fast float %1288, %1286
  %1290 = fsub fast float %933, %1289
  br i1 %924, label %1291, label %1307, !dx.controlflow.hints !110

; <label>:1291                                    ; preds = %1282
  %1292 = fmul fast float %934, %921
  %1293 = fadd fast float %1292, %922
  %1294 = call float @dx.op.unary.f32(i32 7, float %1293)  ; Saturate(value)
  %1295 = fmul fast float %911, %1290
  %1296 = fsub fast float -0.000000e+00, %1295
  %1297 = fmul fast float %912, %1290
  %1298 = fsub fast float -0.000000e+00, %1297
  %1299 = call float @dx.op.unary.f32(i32 21, float %1296)  ; Exp(value)
  %1300 = call float @dx.op.unary.f32(i32 21, float %1298)  ; Exp(value)
  %1301 = call float @dx.op.binary.f32(i32 35, float %926, float %1299)  ; FMax(a,b)
  %1302 = call float @dx.op.binary.f32(i32 35, float %926, float %1300)  ; FMax(a,b)
  %1303 = fsub fast float %1302, %1301
  %1304 = fmul fast float %1303, %1294
  %1305 = fadd fast float %1304, %1301
  %1306 = call float @dx.op.unary.f32(i32 7, float %1305)  ; Saturate(value)
  br label %1340

; <label>:1307                                    ; preds = %1282
  %1308 = fmul fast float %1290, %920
  %1309 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1310 = fsub fast float 2.000000e+00, %1309
  %1311 = fmul fast float %1309, 9.921875e-01
  %1312 = fmul fast float %1311, %1310
  %1313 = fadd fast float %1312, 3.906250e-03
  %1314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1313, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  %1316 = fsub fast float %1309, %1315
  %1317 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1316)  ; FMax(a,b)
  %1318 = fmul fast float %914, %898
  %1319 = call float @dx.op.unary.f32(i32 6, float %1318)  ; FAbs(value)
  %1320 = fcmp fast ogt float %1319, 0x3EB0C6F7A0000000
  br i1 %1320, label %1321, label %1327, !dx.controlflow.hints !111

; <label>:1321                                    ; preds = %1307
  %1322 = fmul fast float %1318, 0xBFF7154760000000
  %1323 = call float @dx.op.unary.f32(i32 21, float %1322)  ; Exp(value)
  %1324 = fsub fast float 1.000000e+00, %1323
  %1325 = fdiv fast float %1324, %1318
  %1326 = fmul fast float %1325, %916
  br label %1327

; <label>:1327                                    ; preds = %1321, %1307
  %1328 = phi float [ %1326, %1321 ], [ %916, %1307 ]
  %1329 = fadd fast float %1328, %918
  %1330 = fmul fast float %1329, %1317
  %1331 = fmul fast float %911, %1330
  %1332 = fsub fast float -0.000000e+00, %1331
  %1333 = fmul fast float %912, %1330
  %1334 = fsub fast float -0.000000e+00, %1333
  %1335 = fmul fast float %913, %1330
  %1336 = fsub fast float -0.000000e+00, %1335
  %1337 = call float @dx.op.unary.f32(i32 21, float %1332)  ; Exp(value)
  %1338 = call float @dx.op.unary.f32(i32 21, float %1334)  ; Exp(value)
  %1339 = call float @dx.op.unary.f32(i32 21, float %1336)  ; Exp(value)
  br label %1340

; <label>:1340                                    ; preds = %1327, %1291
  %1341 = phi float [ %1306, %1291 ], [ %1337, %1327 ]
  %1342 = phi float [ %1306, %1291 ], [ %1338, %1327 ]
  %1343 = phi float [ %1306, %1291 ], [ %1339, %1327 ]
  br i1 %942, label %1344, label %1440, !dx.controlflow.hints !112

; <label>:1344                                    ; preds = %1340
  %1345 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1341)  ; FMax(a,b)
  %1346 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1342)  ; FMax(a,b)
  %1347 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1343)  ; FMax(a,b)
  %1348 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1284)  ; FMax(a,b)
  %1349 = call float @dx.op.binary.f32(i32 35, float %1283, float %1290)  ; FMax(a,b)
  %1350 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1349)  ; FMax(a,b)
  %1351 = fdiv fast float %1283, %1350
  %1352 = call float @dx.op.unary.f32(i32 7, float %1351)  ; Saturate(value)
  %1353 = fdiv fast float %1290, %1350
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1355 = fcmp fast une float %1348, 1.000000e+00
  br i1 %1355, label %1356, label %1359, !dx.controlflow.hints !113

; <label>:1356                                    ; preds = %1344
  %1357 = call float @dx.op.unary.f32(i32 23, float %1348)  ; Log(value)
  %1358 = fmul fast float %1357, 0x3FE62E4300000000
  br label %1359

; <label>:1359                                    ; preds = %1356, %1344
  %1360 = phi float [ %1358, %1356 ], [ 0.000000e+00, %1344 ]
  %1361 = fcmp fast une float %1345, 1.000000e+00
  br i1 %1361, label %1362, label %1365, !dx.controlflow.hints !114

; <label>:1362                                    ; preds = %1359
  %1363 = call float @dx.op.unary.f32(i32 23, float %1345)  ; Log(value)
  %1364 = fmul fast float %1363, 0x3FE62E4300000000
  br label %1365

; <label>:1365                                    ; preds = %1362, %1359
  %1366 = phi float [ %1364, %1362 ], [ 0.000000e+00, %1359 ]
  %1367 = fcmp fast une float %1346, 1.000000e+00
  br i1 %1367, label %1368, label %1371, !dx.controlflow.hints !114

; <label>:1368                                    ; preds = %1365
  %1369 = call float @dx.op.unary.f32(i32 23, float %1346)  ; Log(value)
  %1370 = fmul fast float %1369, 0x3FE62E4300000000
  br label %1371

; <label>:1371                                    ; preds = %1368, %1365
  %1372 = phi float [ %1370, %1368 ], [ 0.000000e+00, %1365 ]
  %1373 = fcmp fast une float %1347, 1.000000e+00
  br i1 %1373, label %1374, label %1377, !dx.controlflow.hints !114

; <label>:1374                                    ; preds = %1371
  %1375 = call float @dx.op.unary.f32(i32 23, float %1347)  ; Log(value)
  %1376 = fmul fast float %1375, 0x3FE62E4300000000
  br label %1377

; <label>:1377                                    ; preds = %1374, %1371
  %1378 = phi float [ %1376, %1374 ], [ 0.000000e+00, %1371 ]
  %1379 = fmul fast float %1360, %1354
  %1380 = fmul fast float %1366, %1352
  %1381 = fmul fast float %1372, %1352
  %1382 = fmul fast float %1378, %1352
  %1383 = fadd fast float %1380, %1379
  %1384 = fadd fast float %1381, %1379
  %1385 = fadd fast float %1382, %1379
  %1386 = fcmp fast une float %1383, 0.000000e+00
  br i1 %1386, label %1387, label %1390, !dx.controlflow.hints !115

; <label>:1387                                    ; preds = %1377
  %1388 = fmul fast float %1383, 0x3FF7154760000000
  %1389 = call float @dx.op.unary.f32(i32 21, float %1388)  ; Exp(value)
  br label %1390

; <label>:1390                                    ; preds = %1387, %1377
  %1391 = phi float [ %1389, %1387 ], [ 1.000000e+00, %1377 ]
  %1392 = fcmp fast une float %1384, 0.000000e+00
  br i1 %1392, label %1393, label %1396, !dx.controlflow.hints !115

; <label>:1393                                    ; preds = %1390
  %1394 = fmul fast float %1384, 0x3FF7154760000000
  %1395 = call float @dx.op.unary.f32(i32 21, float %1394)  ; Exp(value)
  br label %1396

; <label>:1396                                    ; preds = %1393, %1390
  %1397 = phi float [ %1395, %1393 ], [ 1.000000e+00, %1390 ]
  %1398 = fcmp fast une float %1385, 0.000000e+00
  br i1 %1398, label %1399, label %1402, !dx.controlflow.hints !115

; <label>:1399                                    ; preds = %1396
  %1400 = fmul fast float %1385, 0x3FF7154760000000
  %1401 = call float @dx.op.unary.f32(i32 21, float %1400)  ; Exp(value)
  br label %1402

; <label>:1402                                    ; preds = %1399, %1396
  %1403 = phi float [ %1401, %1399 ], [ 1.000000e+00, %1396 ]
  %1404 = fcmp fast ogt float %1352, %1354
  br i1 %1404, label %1405, label %1412

; <label>:1405                                    ; preds = %1402
  %1406 = fsub fast float 1.000000e+00, %1354
  %1407 = fmul fast float %1360, %1406
  %1408 = fcmp fast une float %1407, 0.000000e+00
  br i1 %1408, label %1409, label %1433, !dx.controlflow.hints !116

; <label>:1409                                    ; preds = %1405
  %1410 = fmul fast float %1407, 0x3FF7154760000000
  %1411 = call float @dx.op.unary.f32(i32 21, float %1410)  ; Exp(value)
  br label %1433

; <label>:1412                                    ; preds = %1402
  %1413 = fsub fast float 1.000000e+00, %1352
  %1414 = fmul fast float %1366, %1413
  %1415 = fmul fast float %1372, %1413
  %1416 = fmul fast float %1378, %1413
  %1417 = fcmp fast une float %1414, 0.000000e+00
  br i1 %1417, label %1418, label %1421, !dx.controlflow.hints !115

; <label>:1418                                    ; preds = %1412
  %1419 = fmul fast float %1414, 0x3FF7154760000000
  %1420 = call float @dx.op.unary.f32(i32 21, float %1419)  ; Exp(value)
  br label %1421

; <label>:1421                                    ; preds = %1418, %1412
  %1422 = phi float [ %1420, %1418 ], [ 1.000000e+00, %1412 ]
  %1423 = fcmp fast une float %1415, 0.000000e+00
  br i1 %1423, label %1424, label %1427, !dx.controlflow.hints !115

; <label>:1424                                    ; preds = %1421
  %1425 = fmul fast float %1415, 0x3FF7154760000000
  %1426 = call float @dx.op.unary.f32(i32 21, float %1425)  ; Exp(value)
  br label %1427

; <label>:1427                                    ; preds = %1424, %1421
  %1428 = phi float [ %1426, %1424 ], [ 1.000000e+00, %1421 ]
  %1429 = fcmp fast une float %1416, 0.000000e+00
  br i1 %1429, label %1430, label %1433, !dx.controlflow.hints !115

; <label>:1430                                    ; preds = %1427
  %1431 = fmul fast float %1416, 0x3FF7154760000000
  %1432 = call float @dx.op.unary.f32(i32 21, float %1431)  ; Exp(value)
  br label %1433

; <label>:1433                                    ; preds = %1430, %1427, %1409, %1405
  %1434 = phi float [ %1432, %1430 ], [ %1411, %1409 ], [ 1.000000e+00, %1405 ], [ 1.000000e+00, %1427 ]
  %1435 = phi float [ %1428, %1430 ], [ %1411, %1409 ], [ 1.000000e+00, %1405 ], [ %1428, %1427 ]
  %1436 = phi float [ %1422, %1430 ], [ %1411, %1409 ], [ 1.000000e+00, %1405 ], [ %1422, %1427 ]
  %1437 = fmul fast float %1436, %1391
  %1438 = fmul fast float %1435, %1397
  %1439 = fmul fast float %1434, %1403
  br label %1440

; <label>:1440                                    ; preds = %1433, %1340
  %1441 = phi float [ %1439, %1433 ], [ %1343, %1340 ]
  %1442 = phi float [ %1438, %1433 ], [ %1342, %1340 ]
  %1443 = phi float [ %1437, %1433 ], [ %1341, %1340 ]
  %1444 = fmul fast float %1443, %903
  %1445 = call float @dx.op.dot3.f32(i32 55, float %1443, float %1442, float %1441, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1446 = select i1 %102, float %1445, float %1443
  %1447 = select i1 %102, float %1445, float %1442
  %1448 = select i1 %102, float 1.000000e+00, float %1441
  %1449 = fmul fast float %1446, %900
  %1450 = fmul fast float %1447, %901
  %1451 = fmul fast float %1448, %902
  %1452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1453 = extractvalue %dx.types.CBufRet.i32 %1452, 0
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1781, label %1455, !dx.controlflow.hints !117

; <label>:1455                                    ; preds = %1440
  %1456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.f32 %1456, 2
  %1458 = extractvalue %dx.types.CBufRet.f32 %1456, 3
  %1459 = fmul fast float %1457, %44
  %1460 = fmul fast float %1458, %45
  %1461 = fmul fast float %1459, 2.000000e+00
  %1462 = fmul fast float %1460, 2.000000e+00
  %1463 = fsub fast float 1.000000e+00, %1461
  %1464 = fsub fast float 1.000000e+00, %1462
  %1465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1466 = extractvalue %dx.types.CBufRet.f32 %1465, 0
  %1467 = extractvalue %dx.types.CBufRet.f32 %1465, 1
  %1468 = extractvalue %dx.types.CBufRet.f32 %1465, 2
  %1469 = fmul fast float %1463, %1466
  %1470 = fmul fast float %1463, %1467
  %1471 = fmul fast float %1463, %1468
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.CBufRet.f32 %1472, 1
  %1475 = extractvalue %dx.types.CBufRet.f32 %1472, 2
  %1476 = fmul fast float %1464, %1473
  %1477 = fmul fast float %1464, %1474
  %1478 = fmul fast float %1464, %1475
  %1479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1480 = extractvalue %dx.types.CBufRet.f32 %1479, 0
  %1481 = extractvalue %dx.types.CBufRet.f32 %1479, 1
  %1482 = extractvalue %dx.types.CBufRet.f32 %1479, 2
  %1483 = fadd fast float %1476, %1480
  %1484 = fadd fast float %1483, %1469
  %1485 = fadd fast float %1477, %1481
  %1486 = fadd fast float %1485, %1470
  %1487 = fadd fast float %1478, %1482
  %1488 = fadd fast float %1487, %1471
  %1489 = fmul fast float %1484, %899
  %1490 = fmul fast float %1486, %899
  %1491 = fmul fast float %1488, %899
  %1492 = fmul fast float %1489, %1489
  %1493 = fmul fast float %1490, %1490
  %1494 = fadd fast float %1492, %1493
  %1495 = fmul fast float %1491, %1491
  %1496 = fadd fast float %1494, %1495
  %1497 = call float @dx.op.unary.f32(i32 24, float %1496)  ; Sqrt(value)
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 0
  %1500 = fsub fast float %1497, %1499
  %1501 = extractvalue %dx.types.CBufRet.f32 %1498, 2
  %1502 = fmul fast float %1500, %1501
  %1503 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  %1504 = fadd fast float %1503, -5.000000e-01
  %1505 = fmul fast float %1504, 2.000000e+00
  %1506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1507 = extractvalue %dx.types.CBufRet.f32 %1506, 2
  %1508 = call float @dx.op.binary.f32(i32 36, float %1507, float %1505)  ; FMin(a,b)
  %1509 = fsub fast float -0.000000e+00, %1507
  %1510 = fcmp fast ogt float %1508, %1509
  br i1 %1510, label %1511, label %1781, !dx.controlflow.hints !118

; <label>:1511                                    ; preds = %1455
  %1512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.f32 %1512, 3
  %1514 = fcmp fast ogt float %1513, 0.000000e+00
  br i1 %1514, label %1515, label %1590, !dx.controlflow.hints !119

; <label>:1515                                    ; preds = %1511
  %1516 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %1517 = extractvalue %dx.types.Dimensions %1516, 0
  %1518 = sitofp i32 %1517 to float
  %1519 = extractvalue %dx.types.Dimensions %1516, 1
  %1520 = sitofp i32 %1519 to float
  %1521 = fmul fast float %1459, %1518
  %1522 = fmul fast float %1460, %1520
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 1
  %1525 = fsub fast float -0.000000e+00, %1524
  %1526 = fptoui float %1525 to i32
  %1527 = fptoui float %1521 to i32
  %1528 = fptoui float %1522 to i32
  %1529 = and i32 %1526, 31
  %1530 = lshr i32 %1527, %1529
  %1531 = lshr i32 %1528, %1529
  %1532 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %1526, i32 %1530, i32 %1531, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1533 = extractvalue %dx.types.ResRet.f32 %1532, 0
  %1534 = fcmp fast olt float %1533, -1.000000e+00
  %1535 = fcmp fast ogt float %1533, -1.000000e+00
  %1536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1537 = extractvalue %dx.types.CBufRet.f32 %1536, 1
  %1538 = select i1 %1535, float %1537, float 1.000000e+00
  %1539 = fadd fast float %1533, 1.000000e+00
  %1540 = fmul fast float %1538, %1539
  %1541 = call float @dx.op.unary.f32(i32 6, float %1540)  ; FAbs(value)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1536, 3
  %1543 = fcmp fast oge float %1541, %1542
  %1544 = select i1 %1543, float 0x4197782600000000, float %1541
  %1545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1546 = extractvalue %dx.types.CBufRet.f32 %1545, 0
  %1547 = extractvalue %dx.types.CBufRet.f32 %1545, 1
  %1548 = extractvalue %dx.types.CBufRet.f32 %1545, 2
  %1549 = select i1 %1534, float %1546, float %1466
  %1550 = select i1 %1534, float %1547, float %1467
  %1551 = select i1 %1534, float %1548, float %1468
  %1552 = fmul fast float %1549, %1463
  %1553 = fmul fast float %1550, %1463
  %1554 = fmul fast float %1551, %1463
  %1555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1556 = extractvalue %dx.types.CBufRet.f32 %1555, 0
  %1557 = extractvalue %dx.types.CBufRet.f32 %1555, 1
  %1558 = extractvalue %dx.types.CBufRet.f32 %1555, 2
  %1559 = select i1 %1534, float %1556, float %1473
  %1560 = select i1 %1534, float %1557, float %1474
  %1561 = select i1 %1534, float %1558, float %1475
  %1562 = fmul fast float %1559, %1464
  %1563 = fmul fast float %1560, %1464
  %1564 = fmul fast float %1561, %1464
  %1565 = fadd fast float %1562, %1552
  %1566 = fadd fast float %1563, %1553
  %1567 = fadd fast float %1564, %1554
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 0
  %1570 = extractvalue %dx.types.CBufRet.f32 %1568, 1
  %1571 = extractvalue %dx.types.CBufRet.f32 %1568, 2
  %1572 = select i1 %1534, float %1569, float %1480
  %1573 = select i1 %1534, float %1570, float %1481
  %1574 = select i1 %1534, float %1571, float %1482
  %1575 = fadd fast float %1565, %1572
  %1576 = fadd fast float %1566, %1573
  %1577 = fadd fast float %1567, %1574
  %1578 = fmul fast float %1575, %1544
  %1579 = fmul fast float %1576, %1544
  %1580 = fmul fast float %1577, %1544
  %1581 = fmul fast float %1578, %1578
  %1582 = fmul fast float %1579, %1579
  %1583 = fadd fast float %1581, %1582
  %1584 = fmul fast float %1580, %1580
  %1585 = fadd fast float %1583, %1584
  %1586 = call float @dx.op.unary.f32(i32 24, float %1585)  ; Sqrt(value)
  %1587 = fsub fast float %1586, %1499
  %1588 = fmul fast float %1587, %1501
  %1589 = call float @dx.op.unary.f32(i32 7, float %1588)  ; Saturate(value)
  br label %1590

; <label>:1590                                    ; preds = %1515, %1511
  %1591 = phi float [ %1589, %1515 ], [ 1.000000e+00, %1511 ]
  %1592 = fmul fast float %1508, 5.000000e-01
  %1593 = fadd fast float %1592, 5.000000e-01
  %1594 = call float @dx.op.unary.f32(i32 22, float %1593)  ; Frc(value)
  %1595 = call float @dx.op.unary.f32(i32 27, float %1594)  ; Round_ni(value)
  %1596 = call float @dx.op.unary.f32(i32 22, float %1594)  ; Frc(value)
  %1597 = fmul fast float %1596, 2.000000e+00
  %1598 = fadd fast float %1597, -1.000000e+00
  %1599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %16, float %1459, float %1460, float %1595, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1600 = extractvalue %dx.types.ResRet.f32 %1599, 0
  %1601 = extractvalue %dx.types.ResRet.f32 %1599, 1
  %1602 = extractvalue %dx.types.ResRet.f32 %1599, 2
  %1603 = extractvalue %dx.types.ResRet.f32 %1599, 3
  %1604 = fadd fast float %1600, -5.000000e-01
  %1605 = fadd fast float %1602, -5.000000e-01
  %1606 = fmul fast float %1604, 0xBFD5555560000000
  %1607 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1605, float %1606)  ; FMad(a,b,c)
  %1608 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1601, float 0.000000e+00)  ; FMad(a,b,c)
  %1609 = fadd fast float %1608, %1603
  %1610 = fmul fast float %1604, -7.500000e-01
  %1611 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1605, float %1610)  ; FMad(a,b,c)
  %1612 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1601, float 0.000000e+00)  ; FMad(a,b,c)
  %1613 = fadd fast float %1612, %1603
  %1614 = call float @dx.op.binary.f32(i32 35, float %1607, float -1.000000e+00)  ; FMax(a,b)
  %1615 = call float @dx.op.binary.f32(i32 35, float %1609, float -1.000000e+00)  ; FMax(a,b)
  %1616 = call float @dx.op.binary.f32(i32 35, float %1611, float -1.000000e+00)  ; FMax(a,b)
  %1617 = call float @dx.op.binary.f32(i32 35, float %1613, float -1.000000e+00)  ; FMax(a,b)
  %1618 = call float @dx.op.binary.f32(i32 36, float %1614, float 1.000000e+00)  ; FMin(a,b)
  %1619 = call float @dx.op.binary.f32(i32 36, float %1615, float 1.000000e+00)  ; FMin(a,b)
  %1620 = call float @dx.op.binary.f32(i32 36, float %1616, float 1.000000e+00)  ; FMin(a,b)
  %1621 = call float @dx.op.binary.f32(i32 36, float %1617, float 1.000000e+00)  ; FMin(a,b)
  %1622 = fcmp fast olt float %1618, 0x3FEFFF8020000000
  br i1 %1622, label %1623, label %1738, !dx.controlflow.hints !120

; <label>:1623                                    ; preds = %1590
  %1624 = extractvalue %dx.types.CBufRet.f32 %1506, 3
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 0
  %1627 = extractvalue %dx.types.CBufRet.f32 %1625, 1
  %1628 = extractvalue %dx.types.CBufRet.f32 %1625, 2
  %1629 = extractvalue %dx.types.CBufRet.f32 %1625, 3
  %1630 = fsub fast float %1626, %1618
  %1631 = fsub fast float %1627, %1619
  %1632 = fsub fast float %1628, %1620
  %1633 = fsub fast float %1629, %1621
  %1634 = fmul fast float %1630, %1624
  %1635 = fmul fast float %1631, %1624
  %1636 = fmul fast float %1632, %1624
  %1637 = fmul fast float %1633, %1624
  %1638 = fadd fast float %1634, %1618
  %1639 = fadd fast float %1635, %1619
  %1640 = fsub fast float -0.000000e+00, %1639
  %1641 = fadd fast float %1636, %1620
  %1642 = fadd fast float %1637, %1621
  %1643 = fmul fast float %1638, %1638
  %1644 = fsub fast float %1639, %1643
  %1645 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1644)  ; FMax(a,b)
  %1646 = fdiv fast float 1.000000e+00, %1645
  %1647 = fmul fast float %1639, %1638
  %1648 = fsub fast float %1641, %1647
  %1649 = fsub fast float %1598, %1638
  %1650 = fmul fast float %1598, %1598
  %1651 = fsub fast float %1650, %1639
  %1652 = fmul fast float %1649, %1646
  %1653 = fmul fast float %1652, %1648
  %1654 = fsub fast float %1651, %1653
  %1655 = fmul fast float %1639, %1639
  %1656 = fsub fast float %1642, %1655
  %1657 = fmul fast float %1648, %1648
  %1658 = fmul fast float %1657, %1646
  %1659 = fsub fast float %1656, %1658
  %1660 = fdiv fast float %1654, %1659
  %1661 = fmul fast float %1648, %1660
  %1662 = fsub fast float %1649, %1661
  %1663 = fmul fast float %1662, %1646
  %1664 = fmul fast float %1663, %1638
  %1665 = fsub fast float 1.000000e+00, %1664
  %1666 = fmul fast float %1639, %1660
  %1667 = fsub fast float %1665, %1666
  %1668 = fmul fast float %1663, %1663
  %1669 = fmul fast float %1660, 4.000000e+00
  %1670 = fmul fast float %1669, %1667
  %1671 = fsub fast float %1668, %1670
  %1672 = call float @dx.op.unary.f32(i32 24, float %1671)  ; Sqrt(value)
  %1673 = fcmp fast oge float %1663, 0.000000e+00
  %1674 = fsub fast float -0.000000e+00, %1672
  %1675 = select i1 %1673, float %1674, float %1672
  %1676 = fsub fast float %1675, %1663
  %1677 = fdiv fast float %1676, %1660
  %1678 = fdiv fast float %1667, %1676
  %1679 = fmul fast float %1677, 5.000000e-01
  %1680 = fmul fast float %1678, 2.000000e+00
  %1681 = select i1 %1673, float %1679, float %1680
  %1682 = select i1 %1673, float %1680, float %1679
  %1683 = call float @dx.op.binary.f32(i32 35, float %1681, float %1682)  ; FMax(a,b)
  %1684 = call float @dx.op.binary.f32(i32 36, float %1681, float %1682)  ; FMin(a,b)
  %1685 = fcmp fast ogt float %1598, %1684
  br i1 %1685, label %1686, label %1696

; <label>:1686                                    ; preds = %1623
  %1687 = fsub fast float %1598, %1684
  %1688 = fsub fast float %1683, %1684
  %1689 = fmul fast float %1687, %1688
  %1690 = fmul fast float %1683, %1598
  %1691 = fadd fast float %1683, %1598
  %1692 = fmul fast float %1691, %1638
  %1693 = fadd fast float %1690, %1639
  %1694 = fsub fast float %1693, %1692
  %1695 = fdiv fast float %1694, %1689
  br label %1696

; <label>:1696                                    ; preds = %1686, %1623
  %1697 = phi float [ %1695, %1686 ], [ 0.000000e+00, %1623 ]
  %1698 = fcmp fast ogt float %1598, %1683
  %1699 = fsub fast float %1598, %1683
  br i1 %1698, label %1700, label %1710

; <label>:1700                                    ; preds = %1696
  %1701 = fsub fast float %1683, %1684
  %1702 = fmul fast float %1701, %1699
  %1703 = fmul fast float %1684, %1598
  %1704 = fadd fast float %1684, %1598
  %1705 = fmul fast float %1704, %1638
  %1706 = fsub fast float %1640, %1703
  %1707 = fadd fast float %1706, %1705
  %1708 = fdiv fast float %1707, %1702
  %1709 = fadd fast float %1708, %1697
  br label %1710

; <label>:1710                                    ; preds = %1700, %1696
  %1711 = phi float [ %1709, %1700 ], [ %1697, %1696 ]
  %1712 = fsub fast float %1598, %1684
  %1713 = fmul fast float %1712, %1699
  %1714 = fmul fast float %1684, %1683
  %1715 = fadd fast float %1684, %1683
  %1716 = fmul fast float %1715, %1638
  %1717 = fadd fast float %1714, %1639
  %1718 = fsub fast float %1717, %1716
  %1719 = fdiv fast float %1718, %1713
  %1720 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1721 = fcmp fast oeq float %779, 0.000000e+00
  %1722 = extractvalue %dx.types.CBufRet.f32 %1506, 0
  %1723 = fcmp fast oeq float %1722, 0.000000e+00
  %1724 = or i1 %1721, %1723
  %1725 = fmul fast float %1722, 2.000000e+00
  %1726 = fadd fast float %1507, %1508
  %1727 = fdiv fast float %1726, %1725
  %1728 = call float @dx.op.unary.f32(i32 7, float %1727)  ; Saturate(value)
  %1729 = fmul fast float %1728, 2.000000e+00
  %1730 = fsub fast float 3.000000e+00, %1729
  %1731 = fmul fast float %1728, %1728
  %1732 = fmul fast float %1731, %1730
  %1733 = select i1 %1724, float 1.000000e+00, float %1732
  %1734 = fmul fast float %1719, %779
  %1735 = fadd fast float %1720, %1734
  %1736 = call float @dx.op.unary.f32(i32 7, float %1735)  ; Saturate(value)
  %1737 = fmul fast float %1733, %1736
  br label %1738

; <label>:1738                                    ; preds = %1710, %1590
  %1739 = phi float [ %1737, %1710 ], [ 0.000000e+00, %1590 ]
  %1740 = fsub fast float 1.000000e+00, %1739
  %1741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %16, float %1459, float %1460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1742 = extractvalue %dx.types.ResRet.f32 %1741, 0
  %1743 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1744 = extractvalue %dx.types.CBufRet.i32 %1743, 2
  %1745 = icmp eq i32 %1744, 0
  br i1 %1745, label %1751, label %1746

; <label>:1746                                    ; preds = %1738
  %1747 = call float @dx.op.unary.f32(i32 7, float %1739)  ; Saturate(value)
  %1748 = fadd fast float %1742, -1.000000e+00
  %1749 = fmul fast float %1747, %1748
  %1750 = fadd fast float %1749, 1.000000e+00
  br label %1751

; <label>:1751                                    ; preds = %1746, %1738
  %1752 = phi float [ %1750, %1746 ], [ %1740, %1738 ]
  br i1 %1514, label %1753, label %1771

; <label>:1753                                    ; preds = %1751
  %1754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1755 = extractvalue %dx.types.CBufRet.f32 %1754, 1
  %1756 = fsub fast float %1591, %1755
  %1757 = call float @dx.op.unary.f32(i32 7, float %1756)  ; Saturate(value)
  %1758 = fsub fast float %1591, %1513
  %1759 = call float @dx.op.unary.f32(i32 7, float %1758)  ; Saturate(value)
  %1760 = fsub fast float %1757, %1759
  %1761 = fsub fast float %1593, %1759
  %1762 = fdiv fast float %1761, %1760
  %1763 = call float @dx.op.unary.f32(i32 7, float %1762)  ; Saturate(value)
  %1764 = fmul fast float %1763, 2.000000e+00
  %1765 = fsub fast float 3.000000e+00, %1764
  %1766 = fsub fast float %1742, %1752
  %1767 = fmul fast float %1763, %1763
  %1768 = fmul fast float %1767, %1766
  %1769 = fmul fast float %1768, %1765
  %1770 = fadd fast float %1769, %1752
  br label %1771

; <label>:1771                                    ; preds = %1753, %1751
  %1772 = phi float [ %1770, %1753 ], [ %1752, %1751 ]
  %1773 = call float @dx.op.binary.f32(i32 35, float %1742, float %1772)  ; FMax(a,b)
  %1774 = fmul fast float %1773, %1444
  %1775 = call float @dx.op.dot3.f32(i32 55, float %1773, float %1773, float %1773, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1776 = select i1 %102, float %1775, float %1773
  %1777 = select i1 %102, float 1.000000e+00, float %1773
  %1778 = fmul fast float %1776, %1449
  %1779 = fmul fast float %1776, %1450
  %1780 = fmul fast float %1777, %1451
  br label %1781

; <label>:1781                                    ; preds = %1771, %1455, %1440, %895
  %1782 = phi float [ %900, %895 ], [ %1449, %1440 ], [ %1778, %1771 ], [ %1449, %1455 ]
  %1783 = phi float [ %901, %895 ], [ %1450, %1440 ], [ %1779, %1771 ], [ %1450, %1455 ]
  %1784 = phi float [ %902, %895 ], [ %1451, %1440 ], [ %1780, %1771 ], [ %1451, %1455 ]
  %1785 = phi float [ %903, %895 ], [ %1444, %1440 ], [ %1774, %1771 ], [ %1444, %1455 ]
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 2
  %1788 = extractvalue %dx.types.CBufRet.f32 %1786, 3
  %1789 = fmul fast float %1787, %44
  %1790 = fmul fast float %1788, %45
  %1791 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1792 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  %1793 = select i1 %648, i32 2, i32 0
  %1794 = or i32 %1793, 1
  %1795 = uitofp i32 %1794 to float
  %1796 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %1791, float %1792, float %1795, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = extractvalue %dx.types.ResRet.f32 %1796, 1
  %1799 = extractvalue %dx.types.ResRet.f32 %1796, 2
  %1800 = extractvalue %dx.types.ResRet.f32 %1796, 3
  %1801 = add nuw nsw i32 %1793, 2
  %1802 = uitofp i32 %1801 to float
  %1803 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %1791, float %1792, float %1802, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1804 = extractvalue %dx.types.ResRet.f32 %1803, 0
  %1805 = extractvalue %dx.types.ResRet.f32 %1803, 1
  %1806 = extractvalue %dx.types.ResRet.f32 %1803, 2
  %1807 = extractvalue %dx.types.ResRet.f32 %1803, 3
  %1808 = call float @dx.op.binary.f32(i32 35, float %1798, float %1799)  ; FMax(a,b)
  %1809 = call float @dx.op.binary.f32(i32 35, float %1797, float %1808)  ; FMax(a,b)
  %1810 = call float @dx.op.binary.f32(i32 35, float %1809, float %1800)  ; FMax(a,b)
  %1811 = call float @dx.op.binary.f32(i32 36, float %1805, float %1806)  ; FMin(a,b)
  %1812 = call float @dx.op.binary.f32(i32 36, float %1804, float %1811)  ; FMin(a,b)
  %1813 = call float @dx.op.binary.f32(i32 36, float %1812, float %1807)  ; FMin(a,b)
  %1814 = fmul fast float %1810, 2.550000e+02
  %1815 = fadd fast float %1814, 0x3F70101020000000
  %1816 = fptoui float %1815 to i32
  %1817 = fmul fast float %1813, 2.550000e+02
  %1818 = fadd fast float %1817, 0x3F70101020000000
  %1819 = fptoui float %1818 to i32
  %1820 = icmp ult i32 %1816, %1819
  br i1 %1820, label %1821, label %1864

; <label>:1821                                    ; preds = %1781
  %1822 = fcmp fast ogt float %37, 9.843750e-01
  %1823 = fadd fast float %899, -4.000000e+00
  %1824 = select i1 %1822, float -4.000000e+00, float %1823
  %1825 = call float @dx.op.binary.f32(i32 35, float %1824, float 0.000000e+00)  ; FMax(a,b)
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 0
  %1828 = fadd fast float %1827, %1825
  %1829 = extractvalue %dx.types.CBufRet.f32 %1826, 2
  %1830 = fmul fast float %1828, %1829
  %1831 = call float @dx.op.unary.f32(i32 23, float %1830)  ; Log(value)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1826, 3
  %1833 = fmul fast float %1832, %1831
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 2
  %1836 = fmul fast float %1833, %1835
  %1837 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  %1838 = uitofp i32 %1816 to float
  %1839 = uitofp i32 %1819 to float
  %1840 = fadd fast float %1838, 5.000000e-01
  %1841 = fadd fast float %1839, 5.000000e-01
  %1842 = fmul fast float %1835, %1840
  %1843 = fmul fast float %1835, %1841
  %1844 = fadd fast float %1842, 0x3F0FFB4800000000
  %1845 = fadd fast float %1843, 0xBF0FFB4800000000
  %1846 = call float @dx.op.binary.f32(i32 35, float %1837, float %1844)  ; FMax(a,b)
  %1847 = call float @dx.op.binary.f32(i32 36, float %1846, float %1845)  ; FMin(a,b)
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 1
  %1850 = extractvalue %dx.types.CBufRet.f32 %1848, 2
  %1851 = extractvalue %dx.types.CBufRet.f32 %1848, 0
  %1852 = select i1 %648, float %1851, float 0.000000e+00
  %1853 = fmul fast float %1849, %1847
  %1854 = fadd fast float %1852, %1853
  %1855 = fadd fast float %1852, %1850
  %1856 = fsub fast float %1849, %1850
  %1857 = fadd fast float %1856, %1852
  %1858 = call float @dx.op.binary.f32(i32 35, float %1854, float %1855)  ; FMax(a,b)
  %1859 = call float @dx.op.binary.f32(i32 36, float %1858, float %1857)  ; FMin(a,b)
  %1860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %1791, float %1792, float %1859, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1861 = extractvalue %dx.types.ResRet.f32 %1860, 0
  %1862 = extractvalue %dx.types.ResRet.f32 %1860, 1
  %1863 = extractvalue %dx.types.ResRet.f32 %1860, 2
  br label %1864

; <label>:1864                                    ; preds = %1821, %1781
  %1865 = phi float [ %1861, %1821 ], [ 1.000000e+00, %1781 ]
  %1866 = phi float [ %1862, %1821 ], [ 1.000000e+00, %1781 ]
  %1867 = phi float [ %1863, %1821 ], [ 1.000000e+00, %1781 ]
  %1868 = fmul fast float %1865, %1785
  %1869 = call float @dx.op.dot3.f32(i32 55, float %1865, float %1866, float %1867, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1870 = select i1 %102, float %1869, float %1865
  %1871 = select i1 %102, float %1869, float %1866
  %1872 = select i1 %102, float 1.000000e+00, float %1867
  %1873 = fmul fast float %1870, %1782
  %1874 = fmul fast float %1871, %1783
  %1875 = fmul fast float %1872, %1784
  %1876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.i32 %1876, 3
  %1878 = and i32 %1877, 3
  %1879 = icmp ne i32 %1878, 0
  %1880 = and i32 %1877, 4
  %1881 = icmp ne i32 %1880, 0
  %1882 = and i1 %1879, %1881
  %1883 = and i1 %102, %1882
  br i1 %1883, label %1884, label %1890

; <label>:1884                                    ; preds = %1864
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 1
  %1887 = fadd fast float %1868, -1.000000e+00
  %1888 = fmul fast float %1886, %1887
  %1889 = fadd fast float %1888, 1.000000e+00
  br label %1890

; <label>:1890                                    ; preds = %1884, %1864
  %1891 = phi float [ %1889, %1884 ], [ %1868, %1864 ]
  %1892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1893 = extractvalue %dx.types.CBufRet.f32 %1892, 0
  br i1 %102, label %1894, label %1914

; <label>:1894                                    ; preds = %1890
  %1895 = fadd fast float %1873, %1874
  %1896 = fmul fast float %1893, %1895
  %1897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1898 = extractvalue %dx.types.CBufRet.f32 %1897, 3
  %1899 = extractvalue %dx.types.CBufRet.f32 %668, 1
  %1900 = fsub fast float %671, %1899
  %1901 = extractvalue %dx.types.CBufRet.f32 %668, 2
  %1902 = fmul fast float %1900, %1901
  %1903 = call float @dx.op.unary.f32(i32 7, float %1902)  ; Saturate(value)
  %1904 = fsub fast float %1903, %1898
  %1905 = fmul fast float %1904, %1891
  %1906 = fadd fast float %1905, %1898
  %1907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1908 = extractvalue %dx.types.CBufRet.f32 %1907, 0
  %1909 = fsub fast float %1906, %1908
  %1910 = fmul fast float %1909, 1.000000e+01
  %1911 = call float @dx.op.unary.f32(i32 7, float %1910)  ; Saturate(value)
  %1912 = fmul fast float %1911, %624
  %1913 = fmul fast float %1906, %1912
  br label %1923

; <label>:1914                                    ; preds = %1890
  %1915 = fmul fast float %1893, %1873
  %1916 = fmul fast float %1893, %1874
  %1917 = fmul fast float %1875, %1893
  %1918 = call float @dx.op.binary.f32(i32 35, float %1916, float %1917)  ; FMax(a,b)
  %1919 = call float @dx.op.binary.f32(i32 35, float %1915, float %1918)  ; FMax(a,b)
  %1920 = call float @dx.op.binary.f32(i32 35, float %1919, float 0.000000e+00)  ; FMax(a,b)
  %1921 = fcmp fast ugt float %1920, 0x3F10000000000000
  br i1 %1921, label %1923, label %1922

; <label>:1922                                    ; preds = %1914
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1923

; <label>:1923                                    ; preds = %1922, %1914, %1894
  %1924 = phi float [ %1896, %1894 ], [ %1915, %1922 ], [ %1915, %1914 ]
  %1925 = phi float [ %1913, %1894 ], [ %1916, %1922 ], [ %1916, %1914 ]
  %1926 = phi float [ %1912, %1894 ], [ %1917, %1922 ], [ %1917, %1914 ]
  %1927 = phi float [ %1912, %1894 ], [ 0.000000e+00, %1922 ], [ 0.000000e+00, %1914 ]
  %1928 = fadd fast float %492, 0x3FE3C6EF40000000
  %1929 = call float @dx.op.unary.f32(i32 22, float %1928)  ; Frc(value)
  %1930 = call float @dx.op.unary.f32(i32 23, float %1924)  ; Log(value)
  %1931 = fadd fast float %1930, -7.000000e+00
  %1932 = call float @dx.op.unary.f32(i32 21, float %1931)  ; Exp(value)
  %1933 = fmul fast float %1929, 2.000000e+00
  %1934 = fadd fast float %1933, -1.000000e+00
  %1935 = fmul fast float %1932, %1934
  %1936 = fcmp fast ogt float %1924, 0.000000e+00
  %1937 = select i1 %1936, float %1935, float 0.000000e+00
  %1938 = fadd fast float %1937, %1924
  %1939 = fadd fast float %492, 0x3FF3C6EF40000000
  %1940 = call float @dx.op.unary.f32(i32 22, float %1939)  ; Frc(value)
  %1941 = call float @dx.op.unary.f32(i32 23, float %1925)  ; Log(value)
  %1942 = fadd fast float %1941, -7.000000e+00
  %1943 = call float @dx.op.unary.f32(i32 21, float %1942)  ; Exp(value)
  %1944 = fmul fast float %1940, 2.000000e+00
  %1945 = fadd fast float %1944, -1.000000e+00
  %1946 = fmul fast float %1943, %1945
  %1947 = fcmp fast ogt float %1925, 0.000000e+00
  %1948 = select i1 %1947, float %1946, float 0.000000e+00
  %1949 = fadd fast float %1948, %1925
  %1950 = fadd fast float %492, 0x3FFDAA66E0000000
  %1951 = call float @dx.op.unary.f32(i32 22, float %1950)  ; Frc(value)
  %1952 = call float @dx.op.unary.f32(i32 23, float %1926)  ; Log(value)
  %1953 = fadd fast float %1952, -6.000000e+00
  %1954 = call float @dx.op.unary.f32(i32 21, float %1953)  ; Exp(value)
  %1955 = fmul fast float %1951, 2.000000e+00
  %1956 = fadd fast float %1955, -1.000000e+00
  %1957 = fmul fast float %1954, %1956
  %1958 = fcmp fast ogt float %1926, 0.000000e+00
  %1959 = select i1 %1958, float %1957, float 0.000000e+00
  %1960 = fadd fast float %1959, %1926
  %1961 = select i1 %102, float %1925, float %1949
  %1962 = select i1 %102, float %1926, float %1960
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1963 = call float @dx.op.binary.f32(i32 36, float %1938, float 3.225500e+04)  ; FMin(a,b)
  %1964 = call float @dx.op.binary.f32(i32 36, float %1961, float 3.225500e+04)  ; FMin(a,b)
  %1965 = call float @dx.op.binary.f32(i32 36, float %1962, float 3.225500e+04)  ; FMin(a,b)
  %1966 = call float @dx.op.binary.f32(i32 36, float %1927, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1964)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1965)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %1966)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %1927)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %1927)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %1927)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %1927)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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

