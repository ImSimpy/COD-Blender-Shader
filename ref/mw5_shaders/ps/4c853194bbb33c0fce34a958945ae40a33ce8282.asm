;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyz 
; TEXCOORD                 5   xyz         4     NONE   float   xyz 
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
; shader hash: 7b69d355e9db31db5a943128a21b754e
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
;                                   texture     f32          3d      T9     t44,space2     1
;                                   texture     f32          3d     T10     t45,space2     1
;                                   texture     f32     2darray     T11     t47,space2     1
;                                   textureunorm_f32     2darray     T12     t85,space2     1
;                                   texture     f32          2d     T13     t83,space2     1
;                                   texture     f32          2d     T14     t86,space2     1
;                                   texture    byte         r/o     T15             t2     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 17, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 18, 24 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 24 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %38 = alloca [3 x float], align 4
  %39 = alloca [3 x float], align 4
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = fmul fast float %43, %34
  %45 = fmul fast float %43, %35
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 2
  %48 = extractvalue %dx.types.CBufRet.f32 %46, 3
  %49 = fmul fast float %44, 2.000000e+00
  %50 = fmul fast float %49, %47
  %51 = fmul fast float %45, 2.000000e+00
  %52 = fmul fast float %51, %48
  %53 = fsub fast float 1.000000e+00, %50
  %54 = fsub fast float 1.000000e+00, %52
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = fmul fast float %53, %56
  %60 = fmul fast float %53, %57
  %61 = fmul fast float %53, %58
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fmul fast float %54, %63
  %67 = fmul fast float %54, %64
  %68 = fmul fast float %54, %65
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = fadd fast float %66, %70
  %74 = fadd fast float %73, %59
  %75 = fadd fast float %67, %71
  %76 = fadd fast float %75, %60
  %77 = fadd fast float %68, %72
  %78 = fadd fast float %77, %61
  %79 = fmul fast float %74, %37
  %80 = fmul fast float %76, %37
  %81 = fmul fast float %78, %37
  %82 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %92 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %91, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = fsub fast float 1.000000e+00, %93
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = fcmp fast olt float %94, %96
  br label %101

; <label>:98                                      ; preds = %0
  %99 = icmp eq i32 %86, 0
  %100 = and i1 %85, %99
  br label %101

; <label>:101                                     ; preds = %98, %89
  %102 = phi i1 [ %97, %89 ], [ %100, %98 ]
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 3
  %106 = fmul fast float %104, %44
  %107 = fmul fast float %105, %45
  %108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.i32 %108, 0
  %110 = and i32 %109, 114688
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %111, float %106, float 0.000000e+00
  %113 = select i1 %111, float %107, float 0.000000e+00
  %114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %112, float %113, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fmul fast float %115, 2.550000e+02
  %117 = fptoui float %116 to i32
  %118 = select i1 %111, i32 %117, i32 0
  %119 = mul i32 %21, 208
  %120 = add i32 %119, 188
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %159 = phi float [ %28, %131 ], [ %138, %144 ], [ %157, %152 ], [ %138, %150 ]
  %160 = phi float [ %29, %131 ], [ %149, %144 ], [ %139, %152 ], [ %139, %150 ]
  %161 = and i32 %122, 16
  %162 = icmp ne i32 %161, 0
  %163 = select i1 %162, float 1.000000e+00, float %33
  %164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %165 = extractvalue %dx.types.ResRet.i32 %164, 0
  %166 = add i32 %165, 0
  %167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 239)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %170 = call %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32 61, %dx.types.Handle %167, %dx.types.Handle %41, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float %169, float undef)  ; SampleBias(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,bias,clamp)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = fmul fast float %171, %163
  %173 = icmp eq i32 %161, 0
  br i1 %173, label %193, label %174, !dx.controlflow.hints !60

; <label>:174                                     ; preds = %158
  %175 = add i32 %119, 64
  %176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fadd fast float %177, 1.000000e+00
  %179 = fmul fast float %178, %33
  %180 = fsub fast float %179, %177
  %181 = fsub fast float %178, %180
  %182 = call float @dx.op.unary.f32(i32 7, float %181)  ; Saturate(value)
  %183 = fsub fast float 1.000000e+00, %179
  %184 = call float @dx.op.unary.f32(i32 7, float %183)  ; Saturate(value)
  %185 = fsub fast float %182, %184
  %186 = fsub fast float %172, %184
  %187 = fdiv fast float %186, %185
  %188 = call float @dx.op.unary.f32(i32 7, float %187)  ; Saturate(value)
  %189 = fmul fast float %188, 2.000000e+00
  %190 = fsub fast float 3.000000e+00, %189
  %191 = fmul fast float %188, %188
  %192 = fmul fast float %191, %190
  br label %193

; <label>:193                                     ; preds = %174, %158
  %194 = phi float [ %192, %174 ], [ %172, %158 ]
  %195 = fcmp fast ogt float %194, 0.000000e+00
  br i1 %195, label %197, label %196

; <label>:196                                     ; preds = %193
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %197

; <label>:197                                     ; preds = %196, %193
  %198 = call float @dx.op.unary.f32(i32 7, float %194)  ; Saturate(value)
  %199 = fmul fast float %44, 5.000000e-01
  %200 = fmul fast float %45, 5.000000e-01
  %201 = fptosi float %199 to i32
  %202 = fptosi float %200 to i32
  %203 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %201, i32 %202, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = lshr i32 %204, 18
  %206 = uitofp i32 %205 to float
  %207 = fmul fast float %206, 0x3F4C00EBA0000000
  %208 = call float @dx.op.unary.f32(i32 21, float %207)  ; Exp(value)
  %209 = fadd fast float %208, -1.000000e+00
  %210 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %211 = extractvalue %dx.types.Dimensions %210, 0
  %212 = sitofp i32 %211 to float
  %213 = extractvalue %dx.types.Dimensions %210, 1
  %214 = sitofp i32 %213 to float
  %215 = fcmp fast oge float %199, %212
  %216 = fcmp fast oge float %200, %214
  %217 = or i1 %215, %216
  %218 = select i1 %217, float 0x4197782600000000, float %209
  %219 = fsub fast float %218, %37
  %220 = fcmp fast ogt float %219, 0.000000e+00
  %221 = and i32 %118, -2
  %222 = icmp eq i32 %221, 2
  %223 = and i1 %222, %220
  %224 = xor i1 %220, true
  %225 = icmp eq i32 %118, 1
  %226 = and i1 %225, %224
  %227 = or i1 %223, %226
  %228 = and i32 %122, 262144
  %229 = icmp ne i32 %228, 0
  %230 = and i1 %229, %227
  %231 = xor i1 %227, true
  %232 = and i32 %122, 131072
  %233 = icmp ne i32 %232, 0
  %234 = and i1 %233, %231
  %235 = or i1 %230, %234
  br i1 %235, label %236, label %237

; <label>:236                                     ; preds = %197
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %237

; <label>:237                                     ; preds = %236, %197
  %238 = and i32 %122, 32
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %479, label %240, !dx.controlflow.hints !61

; <label>:240                                     ; preds = %237
  %241 = add i32 %119, 80
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = extractvalue %dx.types.ResRet.f32 %242, 3
  %247 = add i32 %119, 96
  %248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = extractvalue %dx.types.ResRet.f32 %248, 1
  %251 = extractvalue %dx.types.ResRet.f32 %248, 2
  %252 = add i32 %119, 112
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = extractvalue %dx.types.ResRet.f32 %253, 3
  %258 = add i32 %119, 128
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = extractvalue %dx.types.ResRet.f32 %259, 1
  %262 = extractvalue %dx.types.ResRet.f32 %259, 2
  %263 = extractvalue %dx.types.ResRet.f32 %259, 3
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 4096
  %267 = icmp ne i32 %266, 0
  %268 = fcmp fast une float %251, 0.000000e+00
  %269 = and i32 %265, 64
  %270 = icmp ne i32 %269, 0
  %271 = and i32 %265, 128
  %272 = icmp eq i32 %271, 0
  %273 = and i32 %265, 2048
  %274 = icmp eq i32 %273, 0
  %275 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %276 = extractvalue %dx.types.Dimensions %275, 0
  %277 = sitofp i32 %276 to float
  %278 = extractvalue %dx.types.Dimensions %275, 1
  %279 = sitofp i32 %278 to float
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %282 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %283 = fmul fast float %281, %44
  %284 = fmul fast float %282, %45
  %285 = fmul fast float %283, %277
  %286 = fmul fast float %284, %279
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 1
  %289 = fsub fast float -0.000000e+00, %288
  %290 = fptoui float %289 to i32
  %291 = fptoui float %285 to i32
  %292 = fptoui float %286 to i32
  %293 = and i32 %290, 31
  %294 = lshr i32 %291, %293
  %295 = lshr i32 %292, %293
  %296 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %290, i32 %294, i32 %295, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = fcmp fast ogt float %297, -1.000000e+00
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.f32 %299, 1
  %301 = select i1 %298, float %300, float 1.000000e+00
  %302 = fadd fast float %297, 1.000000e+00
  %303 = fmul fast float %301, %302
  %304 = call float @dx.op.unary.f32(i32 6, float %303)  ; FAbs(value)
  %305 = extractvalue %dx.types.CBufRet.f32 %299, 3
  %306 = fcmp fast oge float %304, %305
  %307 = select i1 %306, float 0x4197782600000000, float %304
  br i1 %274, label %378, label %308, !dx.controlflow.hints !62

; <label>:308                                     ; preds = %240
  %309 = fmul fast float %49, %281
  %310 = fmul fast float %51, %282
  %311 = fsub fast float 1.000000e+00, %309
  %312 = fsub fast float 1.000000e+00, %310
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %316 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %317 = fmul fast float %311, %314
  %318 = fmul fast float %311, %315
  %319 = fmul fast float %311, %316
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %324 = fmul fast float %312, %321
  %325 = fmul fast float %312, %322
  %326 = fmul fast float %312, %323
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.f32 %327, 0
  %329 = extractvalue %dx.types.CBufRet.f32 %327, 1
  %330 = extractvalue %dx.types.CBufRet.f32 %327, 2
  %331 = fadd fast float %324, %328
  %332 = fadd fast float %331, %317
  %333 = fadd fast float %325, %329
  %334 = fadd fast float %333, %318
  %335 = fadd fast float %326, %330
  %336 = fadd fast float %335, %319
  %337 = fmul fast float %332, %307
  %338 = fmul fast float %334, %307
  %339 = fmul fast float %336, %307
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 0
  %342 = extractvalue %dx.types.CBufRet.f32 %340, 1
  %343 = extractvalue %dx.types.CBufRet.f32 %340, 2
  %344 = fadd fast float %337, %341
  %345 = fadd fast float %338, %342
  %346 = fadd fast float %339, %343
  %347 = call float @dx.op.dot3.f32(i32 55, float %344, float %345, float %346, float %344, float %345, float %346)  ; Dot3(ax,ay,az,bx,by,bz)
  %348 = fsub fast float 1.000000e+00, %347
  %349 = fcmp fast olt float %348, %250
  %350 = fcmp fast ogt float %348, %249
  %351 = or i1 %349, %350
  %352 = select i1 %351, float 0.000000e+00, float %348
  %353 = fsub fast float %249, %250
  %354 = fsub fast float %352, %250
  %355 = fdiv fast float %354, %353
  %356 = call float @dx.op.unary.f32(i32 7, float %355)  ; Saturate(value)
  %357 = fmul fast float %356, 2.000000e+00
  %358 = fsub fast float 3.000000e+00, %357
  %359 = fmul fast float %356, %356
  %360 = fmul fast float %359, %358
  %361 = fmul fast float %254, %30
  %362 = fmul fast float %255, %31
  %363 = fmul fast float %256, %32
  %364 = fsub fast float %361, %260
  %365 = fsub fast float %362, %261
  %366 = fsub fast float %363, %262
  %367 = fsub fast float %257, %263
  %368 = fmul fast float %360, %364
  %369 = fmul fast float %360, %365
  %370 = fmul fast float %360, %366
  %371 = fmul fast float %360, %367
  %372 = fadd fast float %368, %260
  %373 = fadd fast float %369, %261
  %374 = fadd fast float %370, %262
  %375 = fadd fast float %371, %263
  %376 = fmul fast float %243, %243
  %377 = fmul fast float %376, %352
  br label %469

; <label>:378                                     ; preds = %240
  %379 = and i32 %265, 256
  %380 = icmp eq i32 %379, 0
  %381 = fsub fast float %307, %37
  br i1 %380, label %430, label %382

; <label>:382                                     ; preds = %378
  %383 = fadd fast float %249, %37
  %384 = fcmp fast olt float %307, %37
  %385 = fcmp fast ogt float %307, %383
  %386 = or i1 %384, %385
  %387 = select i1 %386, float 0.000000e+00, float %381
  %388 = call float @dx.op.unary.f32(i32 83, float %307)  ; DerivCoarseX(value)
  %389 = call float @dx.op.unary.f32(i32 84, float %307)  ; DerivCoarseY(value)
  %390 = fmul fast float %388, %388
  %391 = fmul fast float %389, %389
  %392 = fadd fast float %391, %390
  %393 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %394 = extractvalue %dx.types.CBufRet.f32 %287, 2
  %395 = fmul fast float %394, %393
  %396 = call float @dx.op.unary.f32(i32 7, float %395)  ; Saturate(value)
  %397 = fmul fast float %396, %250
  %398 = fdiv fast float %381, %397
  %399 = call float @dx.op.unary.f32(i32 7, float %398)  ; Saturate(value)
  %400 = fmul fast float %399, 2.000000e+00
  %401 = fsub fast float 3.000000e+00, %400
  %402 = fmul fast float %399, %399
  %403 = fmul fast float %402, %401
  %404 = fsub fast float %307, %383
  %405 = fadd fast float %404, %397
  %406 = fdiv fast float %405, %397
  %407 = call float @dx.op.unary.f32(i32 7, float %406)  ; Saturate(value)
  %408 = fmul fast float %407, 2.000000e+00
  %409 = fsub fast float 3.000000e+00, %408
  %410 = fmul fast float %407, %407
  %411 = fmul fast float %410, %409
  %412 = fsub fast float %403, %411
  %413 = fmul fast float %254, %30
  %414 = fmul fast float %255, %31
  %415 = fmul fast float %256, %32
  %416 = fsub fast float %413, %260
  %417 = fsub fast float %414, %261
  %418 = fsub fast float %415, %262
  %419 = fsub fast float %257, %263
  %420 = fmul fast float %412, %416
  %421 = fmul fast float %412, %417
  %422 = fmul fast float %412, %418
  %423 = fmul fast float %412, %419
  %424 = fadd fast float %420, %260
  %425 = fadd fast float %421, %261
  %426 = fadd fast float %422, %262
  %427 = fadd fast float %423, %263
  %428 = fmul fast float %387, %243
  %429 = call float @dx.op.unary.f32(i32 6, float %428)  ; FAbs(value)
  br label %469

; <label>:430                                     ; preds = %378
  br i1 %268, label %431, label %442

; <label>:431                                     ; preds = %430
  %432 = select i1 %270, float 5.000000e+01, float 1.000000e+00
  %433 = fmul fast float %432, %243
  %434 = fmul fast float %28, 2.000000e+00
  %435 = fmul fast float %29, 2.000000e+00
  %436 = fadd fast float %434, -1.000000e+00
  %437 = fadd fast float %435, -1.000000e+00
  %438 = call float @dx.op.dot2.f32(i32 54, float %436, float %437, float %436, float %437)  ; Dot2(ax,ay,bx,by)
  %439 = fmul fast float %438, %251
  %440 = fsub fast float %381, %439
  %441 = fmul fast float %433, %440
  br label %469

; <label>:442                                     ; preds = %430
  br i1 %272, label %462, label %443

; <label>:443                                     ; preds = %442
  %444 = select i1 %270, float 0x3F947AE140000000, float 1.000000e+00
  %445 = fdiv fast float 1.000000e+00, %444
  %446 = fmul fast float %444, %244
  %447 = fmul fast float %444, %245
  %448 = fmul fast float %445, %246
  %449 = call float @dx.op.unary.f32(i32 6, float %381)  ; FAbs(value)
  %450 = fcmp fast olt float %449, %446
  br i1 %450, label %451, label %455, !dx.controlflow.hints !63

; <label>:451                                     ; preds = %443
  %452 = fmul fast float %445, %243
  %453 = fmul fast float %452, %449
  %454 = call float @dx.op.unary.f32(i32 6, float %453)  ; FAbs(value)
  br label %469

; <label>:455                                     ; preds = %443
  %456 = fcmp fast ogt float %449, %447
  br i1 %456, label %457, label %469

; <label>:457                                     ; preds = %455
  %458 = fsub fast float %449, %447
  %459 = fmul fast float %448, %458
  %460 = call float @dx.op.unary.f32(i32 6, float %459)  ; FAbs(value)
  %461 = fsub fast float 1.000000e+00, %460
  br label %469

; <label>:462                                     ; preds = %442
  %463 = select i1 %270, float 5.000000e+01, float 1.000000e+00
  %464 = fmul fast float %463, %243
  %465 = call float @dx.op.unary.f32(i32 6, float %219)  ; FAbs(value)
  %466 = select i1 %267, float %465, float 0x47EFFFFFE0000000
  %467 = call float @dx.op.binary.f32(i32 36, float %381, float %466)  ; FMin(a,b)
  %468 = fmul fast float %464, %467
  br label %469

; <label>:469                                     ; preds = %462, %457, %455, %451, %431, %382, %308
  %470 = phi float [ %377, %308 ], [ %429, %382 ], [ %441, %431 ], [ %468, %462 ], [ %454, %451 ], [ %461, %457 ], [ %449, %455 ]
  %471 = phi float [ %372, %308 ], [ %424, %382 ], [ %30, %431 ], [ %30, %462 ], [ %30, %451 ], [ %30, %457 ], [ %30, %455 ]
  %472 = phi float [ %373, %308 ], [ %425, %382 ], [ %31, %431 ], [ %31, %462 ], [ %31, %451 ], [ %31, %457 ], [ %31, %455 ]
  %473 = phi float [ %374, %308 ], [ %426, %382 ], [ %32, %431 ], [ %32, %462 ], [ %32, %451 ], [ %32, %457 ], [ %32, %455 ]
  %474 = phi float [ %375, %308 ], [ %427, %382 ], [ 1.000000e+00, %431 ], [ 1.000000e+00, %462 ], [ 1.000000e+00, %451 ], [ 1.000000e+00, %457 ], [ 1.000000e+00, %455 ]
  %475 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %476 = fmul fast float %475, %33
  %477 = fmul fast float %474, %198
  %478 = fmul fast float %477, %475
  br label %479

; <label>:479                                     ; preds = %469, %237
  %480 = phi float [ %471, %469 ], [ %30, %237 ]
  %481 = phi float [ %472, %469 ], [ %31, %237 ]
  %482 = phi float [ %473, %469 ], [ %32, %237 ]
  %483 = phi float [ %478, %469 ], [ %198, %237 ]
  %484 = phi float [ %476, %469 ], [ %33, %237 ]
  %485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %486 = extractvalue %dx.types.CBufRet.f32 %485, 2
  %487 = fptosi float %37 to i32
  %488 = sitofp i32 %487 to float
  %489 = fadd fast float %486, %488
  %490 = fmul fast float %489, 0x3FE3C6EF40000000
  %491 = frem fast float %44, 2.560000e+02
  %492 = frem fast float %45, 2.560000e+02
  %493 = fptoui float %491 to i32
  %494 = fptoui float %492 to i32
  %495 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %493, i32 %494, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = fadd fast float %496, %490
  %498 = call float @dx.op.unary.f32(i32 22, float %497)  ; Frc(value)
  %499 = and i32 %122, 1
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %558, label %501, !dx.controlflow.hints !64

; <label>:501                                     ; preds = %479
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 2
  %504 = extractvalue %dx.types.ResRet.f32 %502, 3
  %505 = add i32 %119, 16
  %506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = extractvalue %dx.types.ResRet.f32 %506, 2
  %510 = add i32 %119, 32
  %511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = extractvalue %dx.types.ResRet.f32 %511, 1
  %514 = extractvalue %dx.types.ResRet.f32 %511, 2
  %515 = and i32 %122, 2
  %516 = icmp eq i32 %515, 0
  %517 = call float @dx.op.dot3.f32(i32 55, float %25, float %26, float %27, float %25, float %26, float %27)  ; Dot3(ax,ay,az,bx,by,bz)
  %518 = call float @dx.op.unary.f32(i32 25, float %517)  ; Rsqrt(value)
  %519 = fmul fast float %518, %25
  %520 = fmul fast float %518, %26
  %521 = fmul fast float %518, %27
  %522 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %523 = call float @dx.op.unary.f32(i32 25, float %522)  ; Rsqrt(value)
  %524 = fmul fast float %523, %79
  %525 = fmul fast float %523, %80
  %526 = fmul fast float %523, %81
  %527 = call float @dx.op.dot3.f32(i32 55, float %524, float %525, float %526, float %519, float %520, float %521)  ; Dot3(ax,ay,az,bx,by,bz)
  %528 = fmul fast float %527, %527
  %529 = fmul fast float %528, %503
  %530 = fadd fast float %529, %504
  %531 = call float @dx.op.unary.f32(i32 7, float %530)  ; Saturate(value)
  br i1 %516, label %532, label %542, !dx.controlflow.hints !65

; <label>:532                                     ; preds = %501
  %533 = extractvalue %dx.types.ResRet.f32 %502, 1
  %534 = extractvalue %dx.types.ResRet.f32 %502, 0
  %535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %536 = extractvalue %dx.types.CBufRet.f32 %535, 3
  %537 = fmul fast float %536, %522
  %538 = fsub fast float %534, %537
  %539 = fmul fast float %538, %533
  %540 = call float @dx.op.unary.f32(i32 7, float %539)  ; Saturate(value)
  %541 = fmul fast float %540, %531
  br label %542

; <label>:542                                     ; preds = %532, %501
  %543 = phi float [ %541, %532 ], [ %531, %501 ]
  %544 = fsub fast float %507, %512
  %545 = fsub fast float %508, %513
  %546 = fsub fast float %509, %514
  %547 = fmul fast float %543, %544
  %548 = fmul fast float %543, %545
  %549 = fmul fast float %543, %546
  %550 = fadd fast float %547, %512
  %551 = fadd fast float %548, %513
  %552 = fadd fast float %549, %514
  %553 = fmul fast float %550, %480
  %554 = fmul fast float %551, %481
  %555 = fmul fast float %552, %482
  %556 = fmul fast float %543, %483
  %557 = fmul fast float %543, %484
  br label %558

; <label>:558                                     ; preds = %542, %479
  %559 = phi float [ %553, %542 ], [ %480, %479 ]
  %560 = phi float [ %554, %542 ], [ %481, %479 ]
  %561 = phi float [ %555, %542 ], [ %482, %479 ]
  %562 = phi float [ %556, %542 ], [ %483, %479 ]
  %563 = phi float [ %557, %542 ], [ %484, %479 ]
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = add i32 %565, 0
  %567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %567, %dx.types.Handle %40, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = extractvalue %dx.types.ResRet.f32 %570, 1
  %573 = extractvalue %dx.types.ResRet.f32 %570, 2
  %574 = extractvalue %dx.types.ResRet.f32 %570, 3
  %575 = and i32 %569, 255
  %576 = uitofp i32 %575 to float
  %577 = lshr i32 %569, 8
  %578 = and i32 %577, 255
  %579 = uitofp i32 %578 to float
  %580 = fmul fast float %574, %576
  %581 = fadd fast float %580, %579
  %582 = fmul fast float %581, 0x3F70101000000000
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = and i32 %584, 255
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %586, 0x3F70101020000000
  %588 = lshr i32 %584, 8
  %589 = and i32 %588, 255
  %590 = uitofp i32 %589 to float
  %591 = fmul fast float %590, 0x3F70101020000000
  %592 = lshr i32 %584, 16
  %593 = and i32 %592, 255
  %594 = uitofp i32 %593 to float
  %595 = fmul fast float %594, 0x3F70101020000000
  %596 = fadd fast float %582, 0xBFB99999A0000000
  %597 = call float @dx.op.unary.f32(i32 7, float %596)  ; Saturate(value)
  %598 = fmul fast float %597, 0x3FF1C71C80000000
  %599 = fsub fast float 1.000000e+00, %598
  %600 = call float @dx.op.unary.f32(i32 7, float %599)  ; Saturate(value)
  %601 = fmul fast float %571, %559
  %602 = fmul fast float %601, %600
  %603 = fmul fast float %587, %587
  %604 = fmul fast float %603, %602
  %605 = fmul fast float %572, %560
  %606 = fmul fast float %605, %600
  %607 = fmul fast float %591, %591
  %608 = fmul fast float %607, %606
  %609 = fmul fast float %573, %561
  %610 = fmul fast float %609, %600
  %611 = fmul fast float %595, %595
  %612 = fmul fast float %611, %610
  %613 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  %614 = call float @dx.op.unary.f32(i32 7, float %608)  ; Saturate(value)
  %615 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %616 = call float @dx.op.dot3.f32(i32 55, float %613, float %614, float %615, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %628 = and i32 %122, 8192
  %629 = icmp eq i32 %628, 0
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 0
  br i1 %629, label %638, label %632, !dx.controlflow.hints !66

; <label>:632                                     ; preds = %558
  %633 = add i32 %119, 176
  %634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  %636 = fcmp fast oge float %635, 0.000000e+00
  %637 = select i1 %636, float %635, float %631
  br label %644

; <label>:638                                     ; preds = %558
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = bitcast i32 %640 to float
  %642 = fcmp fast oge float %641, 0.000000e+00
  %643 = select i1 %642, float %641, float %631
  br label %644

; <label>:644                                     ; preds = %638, %632
  %645 = phi float [ %637, %632 ], [ %643, %638 ]
  %646 = fmul fast float %563, %562
  %647 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %201, i32 %202, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = lshr i32 %648, 18
  %650 = uitofp i32 %649 to float
  %651 = fmul fast float %650, 0x3F4C00EBA0000000
  %652 = call float @dx.op.unary.f32(i32 21, float %651)  ; Exp(value)
  %653 = fadd fast float %652, -1.000000e+00
  %654 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %655 = extractvalue %dx.types.Dimensions %654, 0
  %656 = sitofp i32 %655 to float
  %657 = extractvalue %dx.types.Dimensions %654, 1
  %658 = sitofp i32 %657 to float
  %659 = fcmp fast oge float %199, %656
  %660 = fcmp fast oge float %200, %658
  %661 = or i1 %659, %660
  %662 = select i1 %661, float 0x4197782600000000, float %653
  %663 = fmul fast float %562, %22
  %664 = fmul fast float %562, %23
  %665 = fmul fast float %562, %24
  %666 = fsub fast float 1.000000e+00, %562
  %667 = call float @dx.op.dot3.f32(i32 55, float %666, float %666, float %666, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %668 = fsub fast float 1.000000e+00, %667
  %669 = fmul fast float %645, %627
  %670 = fsub fast float 1.000000e+00, %646
  %671 = fsub fast float %670, %627
  %672 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %674 = extractvalue %dx.types.CBufRet.f32 %673, 3
  %675 = fmul fast float %674, %672
  %676 = fadd fast float %675, %669
  %677 = and i32 %122, 2097152
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %683, label %679, !dx.controlflow.hints !67

; <label>:679                                     ; preds = %644
  %680 = add i32 %119, 192
  %681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %680, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 0
  br label %686

; <label>:683                                     ; preds = %644
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 3
  br label %686

; <label>:686                                     ; preds = %683, %679
  %687 = phi float [ %682, %679 ], [ %685, %683 ]
  %688 = fmul fast float %663, %613
  %689 = fmul fast float %664, %614
  %690 = fmul fast float %665, %615
  %691 = icmp eq i32 %118, 3
  %692 = fcmp fast ogt float %37, %662
  %693 = and i1 %225, %692
  %694 = or i1 %691, %693
  %695 = icmp eq i32 %118, 2
  %696 = fcmp fast ole float %37, %662
  %697 = and i1 %695, %696
  %698 = or i1 %697, %694
  br i1 %693, label %699, label %836

; <label>:699                                     ; preds = %686
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 2
  %702 = extractvalue %dx.types.CBufRet.f32 %700, 3
  %703 = fmul fast float %701, %44
  %704 = fmul fast float %702, %45
  %705 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  %706 = call float @dx.op.unary.f32(i32 7, float %704)  ; Saturate(value)
  %707 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %705, float %706, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = extractvalue %dx.types.ResRet.f32 %707, 1
  %710 = extractvalue %dx.types.ResRet.f32 %707, 2
  %711 = extractvalue %dx.types.ResRet.f32 %707, 3
  %712 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %705, float %706, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %713 = extractvalue %dx.types.ResRet.f32 %712, 0
  %714 = extractvalue %dx.types.ResRet.f32 %712, 1
  %715 = extractvalue %dx.types.ResRet.f32 %712, 2
  %716 = extractvalue %dx.types.ResRet.f32 %712, 3
  %717 = call float @dx.op.binary.f32(i32 35, float %709, float %710)  ; FMax(a,b)
  %718 = call float @dx.op.binary.f32(i32 35, float %708, float %717)  ; FMax(a,b)
  %719 = call float @dx.op.binary.f32(i32 35, float %718, float %711)  ; FMax(a,b)
  %720 = call float @dx.op.binary.f32(i32 36, float %714, float %715)  ; FMin(a,b)
  %721 = call float @dx.op.binary.f32(i32 36, float %713, float %720)  ; FMin(a,b)
  %722 = call float @dx.op.binary.f32(i32 36, float %721, float %716)  ; FMin(a,b)
  %723 = fmul fast float %719, 2.550000e+02
  %724 = fadd fast float %723, 0x3F70101020000000
  %725 = fptoui float %724 to i32
  %726 = fmul fast float %722, 2.550000e+02
  %727 = fadd fast float %726, 0x3F70101020000000
  %728 = fptoui float %727 to i32
  %729 = icmp ult i32 %725, %728
  br i1 %729, label %730, label %781

; <label>:730                                     ; preds = %699
  %731 = fcmp fast ogt float %36, 9.843750e-01
  %732 = fadd fast float %37, -4.000000e+00
  %733 = select i1 %731, float -4.000000e+00, float %732
  %734 = call float @dx.op.binary.f32(i32 35, float %733, float 0.000000e+00)  ; FMax(a,b)
  %735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %736 = extractvalue %dx.types.CBufRet.f32 %735, 0
  %737 = fadd fast float %736, %734
  %738 = extractvalue %dx.types.CBufRet.f32 %735, 2
  %739 = fmul fast float %737, %738
  %740 = call float @dx.op.unary.f32(i32 23, float %739)  ; Log(value)
  %741 = extractvalue %dx.types.CBufRet.f32 %735, 3
  %742 = fmul fast float %741, %740
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 2
  %745 = fmul fast float %742, %744
  %746 = call float @dx.op.unary.f32(i32 7, float %745)  ; Saturate(value)
  %747 = uitofp i32 %725 to float
  %748 = uitofp i32 %728 to float
  %749 = fadd fast float %747, 5.000000e-01
  %750 = fadd fast float %748, 5.000000e-01
  %751 = fmul fast float %744, %749
  %752 = fmul fast float %744, %750
  %753 = fadd fast float %751, 0x3F0FFB4800000000
  %754 = fadd fast float %752, 0xBF0FFB4800000000
  %755 = call float @dx.op.binary.f32(i32 35, float %746, float %753)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 36, float %755, float %754)  ; FMin(a,b)
  %757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %758 = extractvalue %dx.types.CBufRet.f32 %757, 1
  %759 = extractvalue %dx.types.CBufRet.f32 %757, 2
  %760 = extractvalue %dx.types.CBufRet.f32 %757, 0
  %761 = fmul fast float %758, %756
  %762 = fadd fast float %760, %761
  %763 = fadd fast float %760, %759
  %764 = fsub fast float %758, %759
  %765 = fadd fast float %764, %760
  %766 = call float @dx.op.binary.f32(i32 35, float %762, float %763)  ; FMax(a,b)
  %767 = call float @dx.op.binary.f32(i32 36, float %766, float %765)  ; FMin(a,b)
  %768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %705, float %706, float %767, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = extractvalue %dx.types.ResRet.f32 %768, 1
  %771 = extractvalue %dx.types.ResRet.f32 %768, 2
  %772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %705, float %706, float %767, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %773 = extractvalue %dx.types.ResRet.f32 %772, 0
  %774 = extractvalue %dx.types.ResRet.f32 %772, 1
  %775 = extractvalue %dx.types.ResRet.f32 %772, 2
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 1
  %778 = fmul fast float %777, %773
  %779 = fmul fast float %777, %774
  %780 = fmul fast float %777, %775
  br label %781

; <label>:781                                     ; preds = %730, %699
  %782 = phi float [ %769, %730 ], [ 1.000000e+00, %699 ]
  %783 = phi float [ %770, %730 ], [ 1.000000e+00, %699 ]
  %784 = phi float [ %771, %730 ], [ 1.000000e+00, %699 ]
  %785 = phi float [ %778, %730 ], [ 0.000000e+00, %699 ]
  %786 = phi float [ %779, %730 ], [ 0.000000e+00, %699 ]
  %787 = phi float [ %780, %730 ], [ 0.000000e+00, %699 ]
  %788 = fmul fast float %785, %668
  %789 = fmul fast float %786, %668
  %790 = fmul fast float %787, %668
  %791 = call float @dx.op.dot3.f32(i32 55, float %782, float %783, float %784, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %792 = call float @dx.op.dot3.f32(i32 55, float %788, float %789, float %790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %793 = select i1 %102, float %791, float %782
  %794 = select i1 %102, float %791, float %783
  %795 = select i1 %102, float 1.000000e+00, float %784
  %796 = select i1 %102, float %792, float %788
  %797 = select i1 %102, float 0.000000e+00, float %789
  %798 = select i1 %102, float 0.000000e+00, float %790
  %799 = fmul fast float %793, %688
  %800 = fmul fast float %794, %689
  %801 = fmul fast float %795, %690
  %802 = fadd fast float %799, %796
  %803 = fadd fast float %800, %797
  %804 = fadd fast float %798, %801
  %805 = fmul fast float %49, %701
  %806 = fmul fast float %51, %702
  %807 = fsub fast float 1.000000e+00, %805
  %808 = fsub fast float 1.000000e+00, %806
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 0
  %811 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %812 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %813 = fmul fast float %807, %810
  %814 = fmul fast float %807, %811
  %815 = fmul fast float %807, %812
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %818 = extractvalue %dx.types.CBufRet.f32 %816, 1
  %819 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %820 = fmul fast float %808, %817
  %821 = fmul fast float %808, %818
  %822 = fmul fast float %808, %819
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 0
  %825 = extractvalue %dx.types.CBufRet.f32 %823, 1
  %826 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %827 = fadd fast float %820, %824
  %828 = fadd fast float %827, %813
  %829 = fadd fast float %821, %825
  %830 = fadd fast float %829, %814
  %831 = fadd fast float %822, %826
  %832 = fadd fast float %831, %815
  %833 = fmul fast float %828, %662
  %834 = fmul fast float %830, %662
  %835 = fmul fast float %832, %662
  br label %836

; <label>:836                                     ; preds = %781, %686
  %837 = phi float [ %833, %781 ], [ %79, %686 ]
  %838 = phi float [ %834, %781 ], [ %80, %686 ]
  %839 = phi float [ %835, %781 ], [ %81, %686 ]
  %840 = phi float [ %662, %781 ], [ %37, %686 ]
  %841 = phi float [ %802, %781 ], [ %688, %686 ]
  %842 = phi float [ %803, %781 ], [ %689, %686 ]
  %843 = phi float [ %804, %781 ], [ %690, %686 ]
  %844 = phi float [ %782, %781 ], [ 1.000000e+00, %686 ]
  br i1 %698, label %1994, label %845

; <label>:845                                     ; preds = %836
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %848 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %849 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %850 = extractvalue %dx.types.CBufRet.f32 %846, 3
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %853 = extractvalue %dx.types.CBufRet.f32 %851, 1
  %854 = extractvalue %dx.types.CBufRet.f32 %851, 2
  %855 = extractvalue %dx.types.CBufRet.f32 %851, 3
  %856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %857 = extractvalue %dx.types.CBufRet.f32 %856, 0
  %858 = extractvalue %dx.types.CBufRet.f32 %856, 1
  %859 = extractvalue %dx.types.CBufRet.f32 %856, 2
  %860 = extractvalue %dx.types.CBufRet.f32 %856, 3
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 0
  %863 = extractvalue %dx.types.CBufRet.f32 %861, 1
  %864 = extractvalue %dx.types.CBufRet.f32 %861, 2
  %865 = extractvalue %dx.types.CBufRet.f32 %861, 3
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 3
  %868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.f32 %868, 3
  %870 = extractvalue %dx.types.CBufRet.f32 %868, 0
  %871 = extractvalue %dx.types.CBufRet.f32 %868, 1
  %872 = extractvalue %dx.types.CBufRet.f32 %868, 2
  %873 = fcmp fast olt float %872, -5.000000e-01
  %874 = call float @dx.op.dot3.f32(i32 55, float %837, float %838, float %839, float %837, float %838, float %839)  ; Dot3(ax,ay,az,bx,by,bz)
  %875 = call float @dx.op.unary.f32(i32 25, float %874)  ; Rsqrt(value)
  %876 = fmul fast float %875, %874
  %877 = fmul fast float %875, %837
  %878 = fmul fast float %875, %838
  %879 = fmul fast float %875, %839
  %880 = fadd fast float %876, %850
  %881 = call float @dx.op.dot3.f32(i32 55, float %877, float %878, float %879, float %847, float %848, float %849)  ; Dot3(ax,ay,az,bx,by,bz)
  %882 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.i32 %882, 1
  %884 = and i32 %883, 1
  %885 = icmp ne i32 %884, 0
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 2
  %888 = fcmp fast ogt float %887, 0.000000e+00
  %889 = and i1 %885, %888
  br i1 %889, label %890, label %1296, !dx.controlflow.hints !68

; <label>:890                                     ; preds = %845
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 3
  %893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %894 = extractvalue %dx.types.CBufRet.f32 %893, 2
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %897 = fsub fast float %894, %896
  %898 = and i32 %883, 2
  %899 = extractvalue %dx.types.CBufRet.i32 %882, 0
  %900 = call i32 @dx.op.binary.i32(i32 40, i32 %899, i32 3)  ; UMin(a,b)
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 0
  %903 = extractvalue %dx.types.CBufRet.f32 %901, 1
  %904 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %905 = extractvalue %dx.types.CBufRet.f32 %895, 1
  %906 = fsub fast float %902, %904
  %907 = fsub fast float %903, %905
  %908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.f32 %908, 0
  %910 = fcmp fast ogt float %909, 0.000000e+00
  %911 = fsub fast float -0.000000e+00, %906
  %912 = fsub fast float -0.000000e+00, %907
  %913 = call float @dx.op.dot2.f32(i32 54, float %877, float %878, float %877, float %878)  ; Dot2(ax,ay,bx,by)
  %914 = call float @dx.op.dot2.f32(i32 54, float %877, float %878, float %911, float %912)  ; Dot2(ax,ay,bx,by)
  %915 = fmul fast float %914, 2.000000e+00
  %916 = call float @dx.op.dot2.f32(i32 54, float %911, float %912, float %911, float %912)  ; Dot2(ax,ay,bx,by)
  %917 = fmul fast float %909, %909
  %918 = fsub fast float %916, %917
  %919 = fmul fast float %915, %915
  %920 = fmul fast float %913, 4.000000e+00
  %921 = fmul fast float %920, %918
  %922 = fsub fast float %919, %921
  %923 = fcmp fast ogt float %922, 0.000000e+00
  br i1 %923, label %924, label %939

; <label>:924                                     ; preds = %890
  %925 = fcmp fast ogt float %915, 0.000000e+00
  %926 = call float @dx.op.unary.f32(i32 24, float %922)  ; Sqrt(value)
  %927 = fsub fast float -0.000000e+00, %926
  %928 = select i1 %925, float %926, float %927
  %929 = fadd fast float %928, %915
  %930 = fmul float %929, -5.000000e-01
  %931 = fdiv fast float %930, %913
  %932 = call float @dx.op.binary.f32(i32 35, float %931, float 0.000000e+00)  ; FMax(a,b)
  %933 = call float @dx.op.binary.f32(i32 36, float %876, float %932)  ; FMin(a,b)
  %934 = fdiv fast float %918, %930
  %935 = call float @dx.op.binary.f32(i32 35, float %934, float 0.000000e+00)  ; FMax(a,b)
  %936 = call float @dx.op.binary.f32(i32 36, float %876, float %935)  ; FMin(a,b)
  %937 = call float @dx.op.binary.f32(i32 36, float %933, float %936)  ; FMin(a,b)
  %938 = call float @dx.op.binary.f32(i32 35, float %933, float %936)  ; FMax(a,b)
  br label %939

; <label>:939                                     ; preds = %924, %890
  %940 = phi float [ %938, %924 ], [ -1.000000e+00, %890 ]
  %941 = phi float [ %937, %924 ], [ -1.000000e+00, %890 ]
  %942 = phi i1 [ true, %924 ], [ false, %890 ]
  %943 = and i1 %910, %942
  br i1 %943, label %944, label %946

; <label>:944                                     ; preds = %939
  %945 = fcmp fast oeq float %941, %940
  br i1 %945, label %1249, label %947

; <label>:946                                     ; preds = %939
  br i1 %910, label %1249, label %947

; <label>:947                                     ; preds = %946, %944
  %948 = phi float [ %876, %946 ], [ %940, %944 ]
  %949 = phi float [ 0.000000e+00, %946 ], [ %941, %944 ]
  %950 = icmp ne i32 %898, 0
  %951 = fmul fast float %948, %879
  %952 = fadd fast float %951, %892
  %953 = fmul fast float %952, %948
  %954 = select i1 %950, float 0.000000e+00, float %953
  %955 = fcmp fast oeq float %879, 0.000000e+00
  %956 = fdiv fast float %897, %879
  %957 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %956)  ; FMax(a,b)
  %958 = select i1 %955, float %948, float %957
  %959 = call float @dx.op.binary.f32(i32 36, float %948, float %958)  ; FMin(a,b)
  %960 = fcmp fast ogt float %879, 0.000000e+00
  %961 = fcmp fast olt float %897, 0.000000e+00
  br i1 %960, label %962, label %1019

; <label>:962                                     ; preds = %947
  %963 = icmp eq i32 %898, 0
  br i1 %961, label %964, label %1008

; <label>:964                                     ; preds = %962
  %965 = select i1 %963, float %948, float 0.000000e+00
  %966 = fsub fast float -0.000000e+00, %965
  %967 = call float @dx.op.unary.f32(i32 6, float %966)  ; FAbs(value)
  %968 = fmul fast float %965, %879
  %969 = fadd fast float %968, %892
  %970 = fmul fast float %967, %969
  %971 = fsub fast float %954, %970
  %972 = fsub fast float %948, %967
  %973 = select i1 %963, float %972, float 0.000000e+00
  %974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %975 = extractvalue %dx.types.CBufRet.f32 %974, 0
  %976 = extractvalue %dx.types.CBufRet.f32 %974, 1
  %977 = extractvalue %dx.types.CBufRet.f32 %974, 2
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 0
  %980 = extractvalue %dx.types.CBufRet.f32 %978, 1
  %981 = extractvalue %dx.types.CBufRet.f32 %978, 2
  %982 = extractvalue %dx.types.CBufRet.f32 %978, 3
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 3
  %985 = call float @dx.op.binary.f32(i32 36, float %971, float %984)  ; FMin(a,b)
  %986 = fmul fast float %982, %973
  %987 = call float @dx.op.unary.f32(i32 7, float %986)  ; Saturate(value)
  %988 = fsub fast float %979, %975
  %989 = fsub fast float %980, %976
  %990 = fsub fast float %981, %977
  %991 = fmul fast float %987, %988
  %992 = fmul fast float %987, %989
  %993 = fmul fast float %987, %990
  %994 = fadd fast float %991, %975
  %995 = fadd fast float %992, %976
  %996 = fadd fast float %993, %977
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %999 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %1000 = fadd fast float %999, %998
  %1001 = call float @dx.op.unary.f32(i32 7, float %1000)  ; Saturate(value)
  %1002 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %1003 = extractvalue %dx.types.CBufRet.f32 %997, 3
  %1004 = fadd fast float %1003, %1002
  %1005 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1006 = fmul fast float %1001, %985
  %1007 = fmul fast float %1006, %1005
  br label %1249

; <label>:1008                                    ; preds = %962
  br i1 %963, label %1009, label %1030

; <label>:1009                                    ; preds = %1008
  %1010 = call float @dx.op.binary.f32(i32 36, float %959, float %949)  ; FMin(a,b)
  %1011 = fsub fast float %959, %1010
  %1012 = fsub fast float %1011, %948
  %1013 = call float @dx.op.unary.f32(i32 6, float %1012)  ; FAbs(value)
  %1014 = fadd fast float %1011, %948
  %1015 = fmul fast float %1014, %879
  %1016 = fadd fast float %1015, %892
  %1017 = fmul fast float %1016, %1013
  %1018 = fsub fast float %954, %1017
  br label %1030

; <label>:1019                                    ; preds = %947
  br i1 %961, label %1020, label %1030

; <label>:1020                                    ; preds = %1019
  %1021 = call float @dx.op.binary.f32(i32 35, float %949, float %959)  ; FMax(a,b)
  %1022 = icmp eq i32 %898, 0
  %1023 = select i1 %1022, float %959, float 0.000000e+00
  %1024 = fsub fast float -0.000000e+00, %1023
  %1025 = call float @dx.op.unary.f32(i32 6, float %1024)  ; FAbs(value)
  %1026 = fmul fast float %1023, %879
  %1027 = fadd fast float %1026, %892
  %1028 = fmul fast float %1025, %1027
  %1029 = fsub fast float %954, %1028
  br label %1030

; <label>:1030                                    ; preds = %1020, %1019, %1009, %1008
  %1031 = phi float [ %949, %1008 ], [ %949, %1009 ], [ %1021, %1020 ], [ %949, %1019 ]
  %1032 = phi float [ 0.000000e+00, %1008 ], [ %1013, %1009 ], [ %1025, %1020 ], [ 0.000000e+00, %1019 ]
  %1033 = phi float [ %954, %1008 ], [ %1018, %1009 ], [ %1029, %1020 ], [ %954, %1019 ]
  %1034 = phi float [ %959, %1008 ], [ %959, %1009 ], [ %948, %1020 ], [ %948, %1019 ]
  %1035 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 0
  store float -1.000000e+00, float* %1035, align 4, !tbaa !69, !noalias !73
  %1036 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 1
  store float -1.000000e+00, float* %1036, align 4, !tbaa !69, !noalias !73
  %1037 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 2
  store float -1.000000e+00, float* %1037, align 4, !tbaa !69, !noalias !73
  %1038 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 0
  store float -1.000000e+00, float* %1038, align 4, !tbaa !69, !noalias !73
  %1039 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 1
  store float -1.000000e+00, float* %1039, align 4, !tbaa !69, !noalias !73
  %1040 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 2
  store float -1.000000e+00, float* %1040, align 4, !tbaa !69, !noalias !73
  %1041 = icmp sgt i32 %900, 0
  br i1 %1041, label %1042, label %1103

; <label>:1042                                    ; preds = %1030
  br label %1043

; <label>:1043                                    ; preds = %1092, %1042
  %1044 = phi i32 [ %1093, %1092 ], [ 0, %1042 ]
  %1045 = phi i32 [ %1094, %1092 ], [ 0, %1042 ]
  %1046 = add nuw i32 %1045, 171
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1046)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.CBufRet.f32 %1047, 1
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.CBufRet.f32 %1050, 1
  %1053 = fsub fast float %1048, %1051
  %1054 = fsub fast float %1049, %1052
  %1055 = extractvalue %dx.types.CBufRet.f32 %1047, 2
  %1056 = fsub fast float -0.000000e+00, %1053
  %1057 = fsub fast float -0.000000e+00, %1054
  %1058 = call float @dx.op.dot2.f32(i32 54, float %877, float %878, float %1056, float %1057)  ; Dot2(ax,ay,bx,by)
  %1059 = fmul fast float %1058, 2.000000e+00
  %1060 = call float @dx.op.dot2.f32(i32 54, float %1056, float %1057, float %1056, float %1057)  ; Dot2(ax,ay,bx,by)
  %1061 = fmul fast float %1055, %1055
  %1062 = fsub fast float %1060, %1061
  %1063 = fmul fast float %1059, %1059
  %1064 = fmul fast float %920, %1062
  %1065 = fsub fast float %1063, %1064
  %1066 = fcmp fast ogt float %1065, 0.000000e+00
  br i1 %1066, label %1067, label %1082

; <label>:1067                                    ; preds = %1043
  %1068 = fcmp fast ogt float %1059, 0.000000e+00
  %1069 = call float @dx.op.unary.f32(i32 24, float %1065)  ; Sqrt(value)
  %1070 = fsub fast float -0.000000e+00, %1069
  %1071 = select i1 %1068, float %1069, float %1070
  %1072 = fadd fast float %1071, %1059
  %1073 = fmul float %1072, -5.000000e-01
  %1074 = fdiv fast float %1073, %913
  %1075 = call float @dx.op.binary.f32(i32 35, float %1074, float 0.000000e+00)  ; FMax(a,b)
  %1076 = call float @dx.op.binary.f32(i32 36, float %948, float %1075)  ; FMin(a,b)
  %1077 = fdiv fast float %1062, %1073
  %1078 = call float @dx.op.binary.f32(i32 35, float %1077, float 0.000000e+00)  ; FMax(a,b)
  %1079 = call float @dx.op.binary.f32(i32 36, float %948, float %1078)  ; FMin(a,b)
  %1080 = call float @dx.op.binary.f32(i32 36, float %1076, float %1079)  ; FMin(a,b)
  %1081 = call float @dx.op.binary.f32(i32 35, float %1076, float %1079)  ; FMax(a,b)
  br label %1082

; <label>:1082                                    ; preds = %1067, %1043
  %1083 = phi float [ %1081, %1067 ], [ -1.000000e+00, %1043 ]
  %1084 = phi float [ %1080, %1067 ], [ -1.000000e+00, %1043 ]
  %1085 = phi i1 [ true, %1067 ], [ false, %1043 ]
  br i1 %1085, label %1086, label %1092

; <label>:1086                                    ; preds = %1082
  %1087 = call float @dx.op.binary.f32(i32 35, float %1031, float %1084)  ; FMax(a,b)
  %1088 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %1045
  store float %1087, float* %1088, align 4, !tbaa !69, !noalias !73
  %1089 = call float @dx.op.binary.f32(i32 35, float %1031, float %1083)  ; FMax(a,b)
  %1090 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1045
  store float %1089, float* %1090, align 4, !tbaa !69, !noalias !73
  %1091 = add nsw i32 %1044, 1
  br label %1092

; <label>:1092                                    ; preds = %1086, %1082
  %1093 = phi i32 [ %1091, %1086 ], [ %1044, %1082 ]
  %1094 = add nuw nsw i32 %1045, 1
  %1095 = icmp eq i32 %1094, %900
  br i1 %1095, label %1096, label %1043

; <label>:1096                                    ; preds = %1092
  %1097 = load float, float* %1037, align 4, !tbaa !69, !alias.scope !89, !noalias !92
  %1098 = load float, float* %1036, align 4, !tbaa !69, !alias.scope !95, !noalias !96
  %1099 = load float, float* %1035, align 4, !tbaa !69, !alias.scope !97, !noalias !98
  %1100 = load float, float* %1040, align 4, !tbaa !69, !alias.scope !99, !noalias !102
  %1101 = load float, float* %1039, align 4, !tbaa !69, !alias.scope !105, !noalias !106
  %1102 = load float, float* %1038, align 4, !tbaa !69, !alias.scope !107, !noalias !108
  br label %1103

; <label>:1103                                    ; preds = %1096, %1030
  %1104 = phi float [ -1.000000e+00, %1030 ], [ %1102, %1096 ]
  %1105 = phi float [ -1.000000e+00, %1030 ], [ %1101, %1096 ]
  %1106 = phi float [ -1.000000e+00, %1030 ], [ %1100, %1096 ]
  %1107 = phi float [ -1.000000e+00, %1030 ], [ %1099, %1096 ]
  %1108 = phi float [ -1.000000e+00, %1030 ], [ %1098, %1096 ]
  %1109 = phi float [ -1.000000e+00, %1030 ], [ %1097, %1096 ]
  %1110 = phi i32 [ 0, %1030 ], [ %1093, %1096 ]
  %1111 = call float @dx.op.binary.f32(i32 36, float %1108, float %1109)  ; FMin(a,b)
  %1112 = call float @dx.op.binary.f32(i32 36, float %1107, float %1111)  ; FMin(a,b)
  %1113 = call float @dx.op.binary.f32(i32 35, float %1107, float %1108)  ; FMax(a,b)
  %1114 = call float @dx.op.binary.f32(i32 36, float %1113, float %1109)  ; FMin(a,b)
  %1115 = call float @dx.op.binary.f32(i32 36, float %1107, float %1108)  ; FMin(a,b)
  %1116 = call float @dx.op.binary.f32(i32 35, float %1115, float %1114)  ; FMax(a,b)
  %1117 = call float @dx.op.binary.f32(i32 35, float %1108, float %1109)  ; FMax(a,b)
  %1118 = call float @dx.op.binary.f32(i32 35, float %1107, float %1117)  ; FMax(a,b)
  store float %1112, float* %1035, align 4, !tbaa !69, !alias.scope !97, !noalias !98
  store float %1116, float* %1036, align 4, !tbaa !69, !alias.scope !95, !noalias !96
  store float %1118, float* %1037, align 4, !tbaa !69, !alias.scope !89, !noalias !92
  %1119 = call float @dx.op.binary.f32(i32 36, float %1105, float %1106)  ; FMin(a,b)
  %1120 = call float @dx.op.binary.f32(i32 36, float %1104, float %1119)  ; FMin(a,b)
  %1121 = call float @dx.op.binary.f32(i32 35, float %1104, float %1105)  ; FMax(a,b)
  %1122 = call float @dx.op.binary.f32(i32 36, float %1121, float %1106)  ; FMin(a,b)
  %1123 = call float @dx.op.binary.f32(i32 36, float %1104, float %1105)  ; FMin(a,b)
  %1124 = call float @dx.op.binary.f32(i32 35, float %1123, float %1122)  ; FMax(a,b)
  %1125 = call float @dx.op.binary.f32(i32 35, float %1105, float %1106)  ; FMax(a,b)
  %1126 = call float @dx.op.binary.f32(i32 35, float %1104, float %1125)  ; FMax(a,b)
  store float %1120, float* %1038, align 4, !tbaa !69, !alias.scope !107, !noalias !108
  store float %1124, float* %1039, align 4, !tbaa !69, !alias.scope !105, !noalias !106
  store float %1126, float* %1040, align 4, !tbaa !69, !alias.scope !99, !noalias !102
  %1127 = sub nsw i32 3, %1110
  %1128 = icmp sgt i32 %1127, 2
  br i1 %1128, label %1129, label %1167

; <label>:1129                                    ; preds = %1103
  %1130 = icmp eq i32 %898, 0
  %1131 = fsub fast float %948, %1032
  %1132 = select i1 %1130, float %1131, float %1032
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.CBufRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.CBufRet.f32 %1133, 2
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 0
  %1139 = extractvalue %dx.types.CBufRet.f32 %1137, 1
  %1140 = extractvalue %dx.types.CBufRet.f32 %1137, 2
  %1141 = extractvalue %dx.types.CBufRet.f32 %1137, 3
  %1142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1143 = extractvalue %dx.types.CBufRet.f32 %1142, 3
  %1144 = call float @dx.op.binary.f32(i32 36, float %1033, float %1143)  ; FMin(a,b)
  %1145 = fmul fast float %1141, %1132
  %1146 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1147 = fsub fast float %1138, %1134
  %1148 = fsub fast float %1139, %1135
  %1149 = fsub fast float %1140, %1136
  %1150 = fmul fast float %1146, %1147
  %1151 = fmul fast float %1146, %1148
  %1152 = fmul fast float %1146, %1149
  %1153 = fadd fast float %1150, %1134
  %1154 = fadd fast float %1151, %1135
  %1155 = fadd fast float %1152, %1136
  %1156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1157 = extractvalue %dx.types.CBufRet.f32 %1156, 0
  %1158 = extractvalue %dx.types.CBufRet.f32 %1156, 1
  %1159 = fadd fast float %1158, %1157
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1156, 2
  %1162 = extractvalue %dx.types.CBufRet.f32 %1156, 3
  %1163 = fadd fast float %1162, %1161
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1165 = fmul fast float %1160, %1144
  %1166 = fmul fast float %1165, %1164
  br label %1249

; <label>:1167                                    ; preds = %1103
  %1168 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %1127
  %1169 = load float, float* %1168, align 4, !tbaa !69, !noalias !73
  %1170 = fcmp fast olt float %1169, %1034
  %1171 = icmp sgt i32 %1110, 0
  %1172 = and i1 %1171, %1170
  br i1 %1172, label %1173, label %1210

; <label>:1173                                    ; preds = %1167
  br label %1174

; <label>:1174                                    ; preds = %1203, %1173
  %1175 = phi float [ %1204, %1203 ], [ %1032, %1173 ]
  %1176 = phi float [ %1205, %1203 ], [ %1033, %1173 ]
  %1177 = phi float [ %1185, %1203 ], [ %1169, %1173 ]
  %1178 = phi i32 [ %1182, %1203 ], [ %1127, %1173 ]
  %1179 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1178
  %1180 = load float, float* %1179, align 4, !tbaa !69, !noalias !73
  %1181 = icmp slt i32 %1178, 2
  %1182 = add nsw i32 %1178, 1
  %1183 = getelementptr inbounds [3 x float], [3 x float]* %38, i32 0, i32 %1182
  %1184 = load float, float* %1183, align 4, !tbaa !69, !noalias !73
  %1185 = select i1 %1181, float %1184, float %948
  %1186 = call float @dx.op.binary.f32(i32 36, float %1185, float %1180)  ; FMin(a,b)
  %1187 = call float @dx.op.binary.f32(i32 36, float %1034, float %1186)  ; FMin(a,b)
  %1188 = icmp eq i32 %898, 0
  %1189 = fadd fast float %1187, %1177
  %1190 = fmul fast float %1189, %879
  %1191 = fadd fast float %1190, %892
  br i1 %1188, label %1197, label %1192

; <label>:1192                                    ; preds = %1174
  %1193 = fsub fast float %1187, %1177
  %1194 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1193)  ; FMax(a,b)
  %1195 = fmul fast float %1194, %1191
  %1196 = fadd fast float %1195, %1176
  br label %1203

; <label>:1197                                    ; preds = %1174
  %1198 = fsub fast float %1177, %1187
  %1199 = call float @dx.op.unary.f32(i32 6, float %1198)  ; FAbs(value)
  %1200 = fadd fast float %1199, %1175
  %1201 = fmul fast float %1199, %1191
  %1202 = fsub fast float %1176, %1201
  br label %1203

; <label>:1203                                    ; preds = %1197, %1192
  %1204 = phi float [ %1194, %1192 ], [ %1200, %1197 ]
  %1205 = phi float [ %1196, %1192 ], [ %1202, %1197 ]
  %1206 = fcmp fast olt float %1185, %1034
  %1207 = icmp slt i32 %1182, 3
  %1208 = and i1 %1207, %1206
  br i1 %1208, label %1174, label %1209

; <label>:1209                                    ; preds = %1203
  br label %1210

; <label>:1210                                    ; preds = %1209, %1167
  %1211 = phi float [ %1032, %1167 ], [ %1204, %1209 ]
  %1212 = phi float [ %1033, %1167 ], [ %1205, %1209 ]
  %1213 = fsub fast float %948, %1211
  %1214 = select i1 %950, float %1211, float %1213
  %1215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.CBufRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.CBufRet.f32 %1215, 2
  %1219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1220 = extractvalue %dx.types.CBufRet.f32 %1219, 0
  %1221 = extractvalue %dx.types.CBufRet.f32 %1219, 1
  %1222 = extractvalue %dx.types.CBufRet.f32 %1219, 2
  %1223 = extractvalue %dx.types.CBufRet.f32 %1219, 3
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 3
  %1226 = call float @dx.op.binary.f32(i32 36, float %1212, float %1225)  ; FMin(a,b)
  %1227 = fmul fast float %1223, %1214
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  %1229 = fsub fast float %1220, %1216
  %1230 = fsub fast float %1221, %1217
  %1231 = fsub fast float %1222, %1218
  %1232 = fmul fast float %1228, %1229
  %1233 = fmul fast float %1228, %1230
  %1234 = fmul fast float %1228, %1231
  %1235 = fadd fast float %1232, %1216
  %1236 = fadd fast float %1233, %1217
  %1237 = fadd fast float %1234, %1218
  %1238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1239 = extractvalue %dx.types.CBufRet.f32 %1238, 0
  %1240 = extractvalue %dx.types.CBufRet.f32 %1238, 1
  %1241 = fadd fast float %1240, %1239
  %1242 = call float @dx.op.unary.f32(i32 7, float %1241)  ; Saturate(value)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1238, 2
  %1244 = extractvalue %dx.types.CBufRet.f32 %1238, 3
  %1245 = fadd fast float %1244, %1243
  %1246 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1247 = fmul fast float %1242, %1226
  %1248 = fmul fast float %1247, %1246
  br label %1249

; <label>:1249                                    ; preds = %1210, %1129, %964, %946, %944
  %1250 = phi float [ %973, %964 ], [ %1132, %1129 ], [ %1214, %1210 ], [ 0.000000e+00, %944 ], [ 0.000000e+00, %946 ]
  %1251 = phi float [ %1007, %964 ], [ %1166, %1129 ], [ %1248, %1210 ], [ 0.000000e+00, %944 ], [ 0.000000e+00, %946 ]
  %1252 = phi float [ %994, %964 ], [ %1153, %1129 ], [ %1235, %1210 ], [ 0.000000e+00, %944 ], [ 0.000000e+00, %946 ]
  %1253 = phi float [ %995, %964 ], [ %1154, %1129 ], [ %1236, %1210 ], [ 0.000000e+00, %944 ], [ 0.000000e+00, %946 ]
  %1254 = phi float [ %996, %964 ], [ %1155, %1129 ], [ %1237, %1210 ], [ 0.000000e+00, %944 ], [ 0.000000e+00, %946 ]
  %1255 = fmul fast float %887, %1251
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 2
  %1258 = fsub fast float %894, %1257
  %1259 = fcmp fast olt float %1255, -2.000000e+01
  %1260 = call float @dx.op.unary.f32(i32 21, float %1255)  ; Exp(value)
  %1261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1262 = extractvalue %dx.types.CBufRet.f32 %1261, 2
  %1263 = extractvalue %dx.types.CBufRet.f32 %1261, 3
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 2
  %1266 = fmul fast float %1263, %1258
  %1267 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1268 = fsub fast float 1.000000e+00, %1267
  %1269 = fmul fast float %879, 5.000000e-01
  %1270 = fadd fast float %1269, 5.000000e-01
  %1271 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1272 = fsub fast float 1.000000e+00, %1271
  %1273 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1268)  ; FMax(a,b)
  %1274 = fdiv fast float %1272, %1273
  %1275 = fsub fast float %1258, %839
  %1276 = call float @dx.op.unary.f32(i32 6, float %1275)  ; FAbs(value)
  %1277 = fmul fast float %1276, %1262
  %1278 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1279 = fsub fast float 1.000000e+00, %1277
  %1280 = fmul fast float %1279, %1278
  %1281 = fadd fast float %1280, %1277
  %1282 = fmul fast float %1265, %1258
  %1283 = call float @dx.op.unary.f32(i32 7, float %1282)  ; Saturate(value)
  %1284 = fsub fast float 1.000000e+00, %1281
  %1285 = fmul fast float %1284, %1283
  %1286 = fadd fast float %1285, %1281
  %1287 = call float @dx.op.unary.f32(i32 7, float %1286)  ; Saturate(value)
  %1288 = fadd fast float %1260, -1.000000e+00
  %1289 = select i1 %1259, float -1.000000e+00, float %1288
  %1290 = fmul fast float %1287, %1289
  %1291 = fadd fast float %1290, 1.000000e+00
  %1292 = fsub fast float -0.000000e+00, %1290
  %1293 = fmul fast float %1252, %1292
  %1294 = fmul fast float %1253, %1292
  %1295 = fmul fast float %1254, %1292
  br label %1296

; <label>:1296                                    ; preds = %1249, %845
  %1297 = phi float [ %1250, %1249 ], [ 0.000000e+00, %845 ]
  %1298 = phi float [ %1291, %1249 ], [ 1.000000e+00, %845 ]
  %1299 = phi float [ %1293, %1249 ], [ 0.000000e+00, %845 ]
  %1300 = phi float [ %1294, %1249 ], [ 0.000000e+00, %845 ]
  %1301 = phi float [ %1295, %1249 ], [ 0.000000e+00, %845 ]
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 1
  %1304 = fsub fast float 1.000000e+00, %1298
  %1305 = fmul fast float %1304, %880
  %1306 = fmul fast float %1305, %1303
  %1307 = fsub fast float %880, %1306
  br i1 %873, label %1308, label %1337, !dx.controlflow.hints !109

; <label>:1308                                    ; preds = %1296
  %1309 = fmul fast float %881, %870
  %1310 = fadd fast float %1309, %871
  %1311 = call float @dx.op.unary.f32(i32 7, float %1310)  ; Saturate(value)
  %1312 = fmul fast float %852, %1307
  %1313 = fsub fast float -0.000000e+00, %1312
  %1314 = fmul fast float %853, %1307
  %1315 = fsub fast float -0.000000e+00, %1314
  %1316 = call float @dx.op.unary.f32(i32 21, float %1313)  ; Exp(value)
  %1317 = call float @dx.op.unary.f32(i32 21, float %1315)  ; Exp(value)
  %1318 = call float @dx.op.binary.f32(i32 35, float %860, float %1316)  ; FMax(a,b)
  %1319 = call float @dx.op.binary.f32(i32 35, float %860, float %1317)  ; FMax(a,b)
  %1320 = fsub fast float %1319, %1318
  %1321 = fmul fast float %1320, %1311
  %1322 = fadd fast float %1321, %1318
  %1323 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1324 = fsub fast float %857, %862
  %1325 = fsub fast float %858, %863
  %1326 = fsub fast float %859, %864
  %1327 = fmul fast float %1311, %1324
  %1328 = fmul fast float %1311, %1325
  %1329 = fmul fast float %1311, %1326
  %1330 = fadd fast float %1327, %862
  %1331 = fadd fast float %1328, %863
  %1332 = fadd fast float %1329, %864
  %1333 = fsub fast float 1.000000e+00, %1323
  %1334 = fmul fast float %1333, %1330
  %1335 = fmul fast float %1333, %1331
  %1336 = fmul fast float %1333, %1332
  br label %1396

; <label>:1337                                    ; preds = %1296
  %1338 = fmul fast float %1307, %869
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = fsub fast float 2.000000e+00, %1339
  %1341 = fmul fast float %1339, 9.921875e-01
  %1342 = fmul fast float %1341, %1340
  %1343 = fadd fast float %1342, 3.906250e-03
  %1344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1343, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = fsub fast float %1339, %1345
  %1347 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1346)  ; FMax(a,b)
  %1348 = fmul fast float %855, %839
  %1349 = call float @dx.op.unary.f32(i32 6, float %1348)  ; FAbs(value)
  %1350 = fcmp fast ogt float %1349, 0x3EB0C6F7A0000000
  br i1 %1350, label %1351, label %1357, !dx.controlflow.hints !110

; <label>:1351                                    ; preds = %1337
  %1352 = fmul fast float %1348, 0xBFF7154760000000
  %1353 = call float @dx.op.unary.f32(i32 21, float %1352)  ; Exp(value)
  %1354 = fsub fast float 1.000000e+00, %1353
  %1355 = fdiv fast float %1354, %1348
  %1356 = fmul fast float %1355, %865
  br label %1357

; <label>:1357                                    ; preds = %1351, %1337
  %1358 = phi float [ %1356, %1351 ], [ %865, %1337 ]
  %1359 = fadd fast float %1358, %867
  %1360 = fmul fast float %1359, %1347
  %1361 = fmul fast float %852, %1360
  %1362 = fsub fast float -0.000000e+00, %1361
  %1363 = fmul fast float %853, %1360
  %1364 = fsub fast float -0.000000e+00, %1363
  %1365 = fmul fast float %854, %1360
  %1366 = fsub fast float -0.000000e+00, %1365
  %1367 = call float @dx.op.unary.f32(i32 21, float %1362)  ; Exp(value)
  %1368 = call float @dx.op.unary.f32(i32 21, float %1364)  ; Exp(value)
  %1369 = call float @dx.op.unary.f32(i32 21, float %1366)  ; Exp(value)
  %1370 = fmul fast float %881, %881
  %1371 = fadd fast float %1370, 1.000000e+00
  %1372 = fmul fast float %1371, 0x3FAE8EC8A0000000
  %1373 = fmul fast float %1372, %862
  %1374 = fmul fast float %1372, %863
  %1375 = fmul fast float %1372, %864
  %1376 = fmul fast float %881, %860
  %1377 = fsub fast float 1.000000e+00, %1376
  %1378 = fmul fast float %860, %860
  %1379 = fsub fast float 1.000000e+00, %1378
  %1380 = fmul fast float %1379, 0x3FB45F3060000000
  %1381 = fmul fast float %1377, %1377
  %1382 = fdiv fast float 1.000000e+00, %1381
  %1383 = fmul fast float %1380, %1382
  %1384 = fmul fast float %1383, %857
  %1385 = fmul fast float %1383, %858
  %1386 = fmul fast float %1383, %859
  %1387 = fadd fast float %1384, %1373
  %1388 = fadd fast float %1385, %1374
  %1389 = fadd fast float %1386, %1375
  %1390 = fsub fast float 1.000000e+00, %1367
  %1391 = fsub fast float 1.000000e+00, %1368
  %1392 = fsub fast float 1.000000e+00, %1369
  %1393 = fmul fast float %1387, %1390
  %1394 = fmul fast float %1388, %1391
  %1395 = fmul fast float %1389, %1392
  br label %1396

; <label>:1396                                    ; preds = %1357, %1308
  %1397 = phi float [ %1334, %1308 ], [ %1393, %1357 ]
  %1398 = phi float [ %1335, %1308 ], [ %1394, %1357 ]
  %1399 = phi float [ %1336, %1308 ], [ %1395, %1357 ]
  %1400 = phi float [ %1323, %1308 ], [ %1367, %1357 ]
  %1401 = phi float [ %1323, %1308 ], [ %1368, %1357 ]
  %1402 = phi float [ %1323, %1308 ], [ %1369, %1357 ]
  br i1 %889, label %1403, label %1601, !dx.controlflow.hints !111

; <label>:1403                                    ; preds = %1396
  %1404 = extractvalue %dx.types.CBufRet.f32 %1302, 0
  %1405 = fmul fast float %1404, %1304
  %1406 = fsub fast float %1299, %1397
  %1407 = fsub fast float %1300, %1398
  %1408 = fsub fast float %1301, %1399
  %1409 = fmul fast float %1405, %1406
  %1410 = fmul fast float %1405, %1407
  %1411 = fmul fast float %1405, %1408
  %1412 = fadd fast float %1409, %1397
  %1413 = fadd fast float %1410, %1398
  %1414 = fadd fast float %1411, %1399
  %1415 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1400)  ; FMax(a,b)
  %1416 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1401)  ; FMax(a,b)
  %1417 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1402)  ; FMax(a,b)
  %1418 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1298)  ; FMax(a,b)
  %1419 = call float @dx.op.binary.f32(i32 35, float %1297, float %1307)  ; FMax(a,b)
  %1420 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1419)  ; FMax(a,b)
  %1421 = fdiv fast float %1297, %1420
  %1422 = call float @dx.op.unary.f32(i32 7, float %1421)  ; Saturate(value)
  %1423 = fdiv fast float %1307, %1420
  %1424 = call float @dx.op.unary.f32(i32 7, float %1423)  ; Saturate(value)
  %1425 = fcmp fast une float %1418, 1.000000e+00
  br i1 %1425, label %1426, label %1439, !dx.controlflow.hints !112

; <label>:1426                                    ; preds = %1403
  %1427 = call float @dx.op.unary.f32(i32 23, float %1418)  ; Log(value)
  %1428 = fmul fast float %1427, 0x3FE62E4300000000
  %1429 = fmul fast float %1299, %1428
  %1430 = fsub fast float -0.000000e+00, %1429
  %1431 = fmul fast float %1300, %1428
  %1432 = fsub fast float -0.000000e+00, %1431
  %1433 = fmul fast float %1301, %1428
  %1434 = fsub fast float -0.000000e+00, %1433
  %1435 = fsub fast float 1.000000e+00, %1418
  %1436 = fdiv fast float %1430, %1435
  %1437 = fdiv fast float %1432, %1435
  %1438 = fdiv fast float %1434, %1435
  br label %1439

; <label>:1439                                    ; preds = %1426, %1403
  %1440 = phi float [ %1436, %1426 ], [ %1299, %1403 ]
  %1441 = phi float [ %1437, %1426 ], [ %1300, %1403 ]
  %1442 = phi float [ %1438, %1426 ], [ %1301, %1403 ]
  %1443 = phi float [ %1428, %1426 ], [ 0.000000e+00, %1403 ]
  %1444 = fcmp fast une float %1415, 1.000000e+00
  br i1 %1444, label %1445, label %1452, !dx.controlflow.hints !113

; <label>:1445                                    ; preds = %1439
  %1446 = call float @dx.op.unary.f32(i32 23, float %1415)  ; Log(value)
  %1447 = fmul fast float %1446, 0x3FE62E4300000000
  %1448 = fmul fast float %1412, %1447
  %1449 = fsub fast float -0.000000e+00, %1448
  %1450 = fsub fast float 1.000000e+00, %1415
  %1451 = fdiv fast float %1449, %1450
  br label %1452

; <label>:1452                                    ; preds = %1445, %1439
  %1453 = phi float [ %1451, %1445 ], [ %1412, %1439 ]
  %1454 = phi float [ %1447, %1445 ], [ 0.000000e+00, %1439 ]
  %1455 = fcmp fast une float %1416, 1.000000e+00
  br i1 %1455, label %1456, label %1463, !dx.controlflow.hints !113

; <label>:1456                                    ; preds = %1452
  %1457 = call float @dx.op.unary.f32(i32 23, float %1416)  ; Log(value)
  %1458 = fmul fast float %1457, 0x3FE62E4300000000
  %1459 = fmul fast float %1413, %1458
  %1460 = fsub fast float -0.000000e+00, %1459
  %1461 = fsub fast float 1.000000e+00, %1416
  %1462 = fdiv fast float %1460, %1461
  br label %1463

; <label>:1463                                    ; preds = %1456, %1452
  %1464 = phi float [ %1462, %1456 ], [ %1413, %1452 ]
  %1465 = phi float [ %1458, %1456 ], [ 0.000000e+00, %1452 ]
  %1466 = fcmp fast une float %1417, 1.000000e+00
  br i1 %1466, label %1467, label %1474, !dx.controlflow.hints !113

; <label>:1467                                    ; preds = %1463
  %1468 = call float @dx.op.unary.f32(i32 23, float %1417)  ; Log(value)
  %1469 = fmul fast float %1468, 0x3FE62E4300000000
  %1470 = fmul fast float %1414, %1469
  %1471 = fsub fast float -0.000000e+00, %1470
  %1472 = fsub fast float 1.000000e+00, %1417
  %1473 = fdiv fast float %1471, %1472
  br label %1474

; <label>:1474                                    ; preds = %1467, %1463
  %1475 = phi float [ %1473, %1467 ], [ %1414, %1463 ]
  %1476 = phi float [ %1469, %1467 ], [ 0.000000e+00, %1463 ]
  %1477 = fmul fast float %1440, %1424
  %1478 = fmul fast float %1441, %1424
  %1479 = fmul fast float %1442, %1424
  %1480 = fmul fast float %1443, %1424
  %1481 = fmul fast float %1453, %1422
  %1482 = fmul fast float %1464, %1422
  %1483 = fmul fast float %1475, %1422
  %1484 = fmul fast float %1454, %1422
  %1485 = fmul fast float %1465, %1422
  %1486 = fmul fast float %1476, %1422
  %1487 = fadd fast float %1481, %1477
  %1488 = fadd fast float %1482, %1478
  %1489 = fadd fast float %1483, %1479
  %1490 = fadd fast float %1484, %1480
  %1491 = fadd fast float %1485, %1480
  %1492 = fadd fast float %1486, %1480
  %1493 = fcmp fast une float %1490, 0.000000e+00
  br i1 %1493, label %1494, label %1501, !dx.controlflow.hints !114

; <label>:1494                                    ; preds = %1474
  %1495 = fmul fast float %1490, 0x3FF7154760000000
  %1496 = call float @dx.op.unary.f32(i32 21, float %1495)  ; Exp(value)
  %1497 = fsub fast float 1.000000e+00, %1496
  %1498 = fmul fast float %1487, %1497
  %1499 = fsub fast float -0.000000e+00, %1498
  %1500 = fdiv fast float %1499, %1490
  br label %1501

; <label>:1501                                    ; preds = %1494, %1474
  %1502 = phi float [ %1496, %1494 ], [ 1.000000e+00, %1474 ]
  %1503 = phi float [ %1500, %1494 ], [ %1487, %1474 ]
  %1504 = fcmp fast une float %1491, 0.000000e+00
  br i1 %1504, label %1505, label %1512, !dx.controlflow.hints !114

; <label>:1505                                    ; preds = %1501
  %1506 = fmul fast float %1491, 0x3FF7154760000000
  %1507 = call float @dx.op.unary.f32(i32 21, float %1506)  ; Exp(value)
  %1508 = fsub fast float 1.000000e+00, %1507
  %1509 = fmul fast float %1488, %1508
  %1510 = fsub fast float -0.000000e+00, %1509
  %1511 = fdiv fast float %1510, %1491
  br label %1512

; <label>:1512                                    ; preds = %1505, %1501
  %1513 = phi float [ %1507, %1505 ], [ 1.000000e+00, %1501 ]
  %1514 = phi float [ %1511, %1505 ], [ %1488, %1501 ]
  %1515 = fcmp fast une float %1492, 0.000000e+00
  br i1 %1515, label %1516, label %1523, !dx.controlflow.hints !114

; <label>:1516                                    ; preds = %1512
  %1517 = fmul fast float %1492, 0x3FF7154760000000
  %1518 = call float @dx.op.unary.f32(i32 21, float %1517)  ; Exp(value)
  %1519 = fsub fast float 1.000000e+00, %1518
  %1520 = fmul fast float %1489, %1519
  %1521 = fsub fast float -0.000000e+00, %1520
  %1522 = fdiv fast float %1521, %1492
  br label %1523

; <label>:1523                                    ; preds = %1516, %1512
  %1524 = phi float [ %1518, %1516 ], [ 1.000000e+00, %1512 ]
  %1525 = phi float [ %1522, %1516 ], [ %1489, %1512 ]
  %1526 = fcmp fast ogt float %1422, %1424
  br i1 %1526, label %1527, label %1547

; <label>:1527                                    ; preds = %1523
  %1528 = fsub fast float 1.000000e+00, %1424
  %1529 = fmul fast float %1440, %1528
  %1530 = fmul fast float %1441, %1528
  %1531 = fmul fast float %1442, %1528
  %1532 = fmul fast float %1443, %1528
  %1533 = fcmp fast une float %1532, 0.000000e+00
  br i1 %1533, label %1534, label %1585, !dx.controlflow.hints !115

; <label>:1534                                    ; preds = %1527
  %1535 = fmul fast float %1532, 0x3FF7154760000000
  %1536 = call float @dx.op.unary.f32(i32 21, float %1535)  ; Exp(value)
  %1537 = fsub fast float 1.000000e+00, %1536
  %1538 = fmul fast float %1529, %1537
  %1539 = fsub fast float -0.000000e+00, %1538
  %1540 = fmul fast float %1530, %1537
  %1541 = fsub fast float -0.000000e+00, %1540
  %1542 = fmul fast float %1531, %1537
  %1543 = fsub fast float -0.000000e+00, %1542
  %1544 = fdiv fast float %1539, %1532
  %1545 = fdiv fast float %1541, %1532
  %1546 = fdiv fast float %1543, %1532
  br label %1585

; <label>:1547                                    ; preds = %1523
  %1548 = fsub fast float 1.000000e+00, %1422
  %1549 = fmul fast float %1453, %1548
  %1550 = fmul fast float %1464, %1548
  %1551 = fmul fast float %1475, %1548
  %1552 = fmul fast float %1454, %1548
  %1553 = fmul fast float %1465, %1548
  %1554 = fmul fast float %1476, %1548
  %1555 = fcmp fast une float %1552, 0.000000e+00
  br i1 %1555, label %1556, label %1563, !dx.controlflow.hints !114

; <label>:1556                                    ; preds = %1547
  %1557 = fmul fast float %1552, 0x3FF7154760000000
  %1558 = call float @dx.op.unary.f32(i32 21, float %1557)  ; Exp(value)
  %1559 = fsub fast float 1.000000e+00, %1558
  %1560 = fmul fast float %1549, %1559
  %1561 = fsub fast float -0.000000e+00, %1560
  %1562 = fdiv fast float %1561, %1552
  br label %1563

; <label>:1563                                    ; preds = %1556, %1547
  %1564 = phi float [ %1562, %1556 ], [ %1549, %1547 ]
  %1565 = phi float [ %1558, %1556 ], [ 1.000000e+00, %1547 ]
  %1566 = fcmp fast une float %1553, 0.000000e+00
  br i1 %1566, label %1567, label %1574, !dx.controlflow.hints !114

; <label>:1567                                    ; preds = %1563
  %1568 = fmul fast float %1553, 0x3FF7154760000000
  %1569 = call float @dx.op.unary.f32(i32 21, float %1568)  ; Exp(value)
  %1570 = fsub fast float 1.000000e+00, %1569
  %1571 = fmul fast float %1550, %1570
  %1572 = fsub fast float -0.000000e+00, %1571
  %1573 = fdiv fast float %1572, %1553
  br label %1574

; <label>:1574                                    ; preds = %1567, %1563
  %1575 = phi float [ %1573, %1567 ], [ %1550, %1563 ]
  %1576 = phi float [ %1569, %1567 ], [ 1.000000e+00, %1563 ]
  %1577 = fcmp fast une float %1554, 0.000000e+00
  br i1 %1577, label %1578, label %1585, !dx.controlflow.hints !114

; <label>:1578                                    ; preds = %1574
  %1579 = fmul fast float %1554, 0x3FF7154760000000
  %1580 = call float @dx.op.unary.f32(i32 21, float %1579)  ; Exp(value)
  %1581 = fsub fast float 1.000000e+00, %1580
  %1582 = fmul fast float %1551, %1581
  %1583 = fsub fast float -0.000000e+00, %1582
  %1584 = fdiv fast float %1583, %1554
  br label %1585

; <label>:1585                                    ; preds = %1578, %1574, %1534, %1527
  %1586 = phi float [ %1584, %1578 ], [ %1546, %1534 ], [ %1531, %1527 ], [ %1551, %1574 ]
  %1587 = phi float [ %1575, %1578 ], [ %1545, %1534 ], [ %1530, %1527 ], [ %1575, %1574 ]
  %1588 = phi float [ %1564, %1578 ], [ %1544, %1534 ], [ %1529, %1527 ], [ %1564, %1574 ]
  %1589 = phi float [ %1580, %1578 ], [ %1536, %1534 ], [ 1.000000e+00, %1527 ], [ 1.000000e+00, %1574 ]
  %1590 = phi float [ %1576, %1578 ], [ %1536, %1534 ], [ 1.000000e+00, %1527 ], [ %1576, %1574 ]
  %1591 = phi float [ %1565, %1578 ], [ %1536, %1534 ], [ 1.000000e+00, %1527 ], [ %1565, %1574 ]
  %1592 = fmul fast float %1591, %1503
  %1593 = fmul fast float %1590, %1514
  %1594 = fmul fast float %1589, %1525
  %1595 = fadd fast float %1592, %1588
  %1596 = fadd fast float %1593, %1587
  %1597 = fadd fast float %1594, %1586
  %1598 = fmul fast float %1591, %1502
  %1599 = fmul fast float %1590, %1513
  %1600 = fmul fast float %1589, %1524
  br label %1601

; <label>:1601                                    ; preds = %1585, %1396
  %1602 = phi float [ %1600, %1585 ], [ %1402, %1396 ]
  %1603 = phi float [ %1599, %1585 ], [ %1401, %1396 ]
  %1604 = phi float [ %1598, %1585 ], [ %1400, %1396 ]
  %1605 = phi float [ %1597, %1585 ], [ %1399, %1396 ]
  %1606 = phi float [ %1596, %1585 ], [ %1398, %1396 ]
  %1607 = phi float [ %1595, %1585 ], [ %1397, %1396 ]
  %1608 = fmul fast float %1607, %668
  %1609 = fmul fast float %1606, %668
  %1610 = fmul fast float %1605, %668
  %1611 = fmul fast float %1604, %844
  %1612 = call float @dx.op.dot3.f32(i32 55, float %1604, float %1603, float %1602, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1613 = call float @dx.op.dot3.f32(i32 55, float %1608, float %1609, float %1610, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1614 = select i1 %102, float %1612, float %1604
  %1615 = select i1 %102, float %1612, float %1603
  %1616 = select i1 %102, float 1.000000e+00, float %1602
  %1617 = select i1 %102, float %1613, float %1608
  %1618 = select i1 %102, float 0.000000e+00, float %1609
  %1619 = select i1 %102, float 0.000000e+00, float %1610
  %1620 = fmul fast float %1614, %841
  %1621 = fmul fast float %1615, %842
  %1622 = fmul fast float %1616, %843
  %1623 = fadd fast float %1620, %1617
  %1624 = fadd fast float %1621, %1618
  %1625 = fadd fast float %1619, %1622
  %1626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1627 = extractvalue %dx.types.CBufRet.i32 %1626, 0
  %1628 = icmp eq i32 %1627, 0
  br i1 %1628, label %1994, label %1629, !dx.controlflow.hints !116

; <label>:1629                                    ; preds = %1601
  %1630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1631 = extractvalue %dx.types.CBufRet.f32 %1630, 2
  %1632 = extractvalue %dx.types.CBufRet.f32 %1630, 3
  %1633 = fmul fast float %1631, %44
  %1634 = fmul fast float %1632, %45
  %1635 = fmul fast float %1633, 2.000000e+00
  %1636 = fmul fast float %1634, 2.000000e+00
  %1637 = fsub fast float 1.000000e+00, %1635
  %1638 = fsub fast float 1.000000e+00, %1636
  %1639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1640 = extractvalue %dx.types.CBufRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.CBufRet.f32 %1639, 1
  %1642 = extractvalue %dx.types.CBufRet.f32 %1639, 2
  %1643 = fmul fast float %1637, %1640
  %1644 = fmul fast float %1637, %1641
  %1645 = fmul fast float %1637, %1642
  %1646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1647 = extractvalue %dx.types.CBufRet.f32 %1646, 0
  %1648 = extractvalue %dx.types.CBufRet.f32 %1646, 1
  %1649 = extractvalue %dx.types.CBufRet.f32 %1646, 2
  %1650 = fmul fast float %1638, %1647
  %1651 = fmul fast float %1638, %1648
  %1652 = fmul fast float %1638, %1649
  %1653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1654 = extractvalue %dx.types.CBufRet.f32 %1653, 0
  %1655 = extractvalue %dx.types.CBufRet.f32 %1653, 1
  %1656 = extractvalue %dx.types.CBufRet.f32 %1653, 2
  %1657 = fadd fast float %1650, %1654
  %1658 = fadd fast float %1657, %1643
  %1659 = fadd fast float %1651, %1655
  %1660 = fadd fast float %1659, %1644
  %1661 = fadd fast float %1652, %1656
  %1662 = fadd fast float %1661, %1645
  %1663 = fmul fast float %1658, %840
  %1664 = fmul fast float %1660, %840
  %1665 = fmul fast float %1662, %840
  %1666 = fmul fast float %1663, %1663
  %1667 = fmul fast float %1664, %1664
  %1668 = fadd fast float %1666, %1667
  %1669 = fmul fast float %1665, %1665
  %1670 = fadd fast float %1668, %1669
  %1671 = call float @dx.op.unary.f32(i32 24, float %1670)  ; Sqrt(value)
  %1672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1673 = extractvalue %dx.types.CBufRet.f32 %1672, 0
  %1674 = fsub fast float %1671, %1673
  %1675 = extractvalue %dx.types.CBufRet.f32 %1672, 2
  %1676 = fmul fast float %1674, %1675
  %1677 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1678 = fadd fast float %1677, -5.000000e-01
  %1679 = fmul fast float %1678, 2.000000e+00
  %1680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1681 = extractvalue %dx.types.CBufRet.f32 %1680, 2
  %1682 = call float @dx.op.binary.f32(i32 36, float %1681, float %1679)  ; FMin(a,b)
  %1683 = fsub fast float -0.000000e+00, %1681
  %1684 = fcmp fast ogt float %1682, %1683
  br i1 %1684, label %1685, label %1994, !dx.controlflow.hints !117

; <label>:1685                                    ; preds = %1629
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 3
  %1688 = fcmp fast ogt float %1687, 0.000000e+00
  br i1 %1688, label %1689, label %1764, !dx.controlflow.hints !118

; <label>:1689                                    ; preds = %1685
  %1690 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %1691 = extractvalue %dx.types.Dimensions %1690, 0
  %1692 = sitofp i32 %1691 to float
  %1693 = extractvalue %dx.types.Dimensions %1690, 1
  %1694 = sitofp i32 %1693 to float
  %1695 = fmul fast float %1633, %1692
  %1696 = fmul fast float %1634, %1694
  %1697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1698 = extractvalue %dx.types.CBufRet.f32 %1697, 1
  %1699 = fsub fast float -0.000000e+00, %1698
  %1700 = fptoui float %1699 to i32
  %1701 = fptoui float %1695 to i32
  %1702 = fptoui float %1696 to i32
  %1703 = and i32 %1700, 31
  %1704 = lshr i32 %1701, %1703
  %1705 = lshr i32 %1702, %1703
  %1706 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1700, i32 %1704, i32 %1705, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1707 = extractvalue %dx.types.ResRet.f32 %1706, 0
  %1708 = fcmp fast olt float %1707, -1.000000e+00
  %1709 = fcmp fast ogt float %1707, -1.000000e+00
  %1710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.f32 %1710, 1
  %1712 = select i1 %1709, float %1711, float 1.000000e+00
  %1713 = fadd fast float %1707, 1.000000e+00
  %1714 = fmul fast float %1712, %1713
  %1715 = call float @dx.op.unary.f32(i32 6, float %1714)  ; FAbs(value)
  %1716 = extractvalue %dx.types.CBufRet.f32 %1710, 3
  %1717 = fcmp fast oge float %1715, %1716
  %1718 = select i1 %1717, float 0x4197782600000000, float %1715
  %1719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1720 = extractvalue %dx.types.CBufRet.f32 %1719, 0
  %1721 = extractvalue %dx.types.CBufRet.f32 %1719, 1
  %1722 = extractvalue %dx.types.CBufRet.f32 %1719, 2
  %1723 = select i1 %1708, float %1720, float %1640
  %1724 = select i1 %1708, float %1721, float %1641
  %1725 = select i1 %1708, float %1722, float %1642
  %1726 = fmul fast float %1723, %1637
  %1727 = fmul fast float %1724, %1637
  %1728 = fmul fast float %1725, %1637
  %1729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.f32 %1729, 0
  %1731 = extractvalue %dx.types.CBufRet.f32 %1729, 1
  %1732 = extractvalue %dx.types.CBufRet.f32 %1729, 2
  %1733 = select i1 %1708, float %1730, float %1647
  %1734 = select i1 %1708, float %1731, float %1648
  %1735 = select i1 %1708, float %1732, float %1649
  %1736 = fmul fast float %1733, %1638
  %1737 = fmul fast float %1734, %1638
  %1738 = fmul fast float %1735, %1638
  %1739 = fadd fast float %1736, %1726
  %1740 = fadd fast float %1737, %1727
  %1741 = fadd fast float %1738, %1728
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.CBufRet.f32 %1742, 1
  %1745 = extractvalue %dx.types.CBufRet.f32 %1742, 2
  %1746 = select i1 %1708, float %1743, float %1654
  %1747 = select i1 %1708, float %1744, float %1655
  %1748 = select i1 %1708, float %1745, float %1656
  %1749 = fadd fast float %1739, %1746
  %1750 = fadd fast float %1740, %1747
  %1751 = fadd fast float %1741, %1748
  %1752 = fmul fast float %1749, %1718
  %1753 = fmul fast float %1750, %1718
  %1754 = fmul fast float %1751, %1718
  %1755 = fmul fast float %1752, %1752
  %1756 = fmul fast float %1753, %1753
  %1757 = fadd fast float %1755, %1756
  %1758 = fmul fast float %1754, %1754
  %1759 = fadd fast float %1757, %1758
  %1760 = call float @dx.op.unary.f32(i32 24, float %1759)  ; Sqrt(value)
  %1761 = fsub fast float %1760, %1673
  %1762 = fmul fast float %1761, %1675
  %1763 = call float @dx.op.unary.f32(i32 7, float %1762)  ; Saturate(value)
  br label %1764

; <label>:1764                                    ; preds = %1689, %1685
  %1765 = phi float [ %1763, %1689 ], [ 1.000000e+00, %1685 ]
  %1766 = fmul fast float %1682, 5.000000e-01
  %1767 = fadd fast float %1766, 5.000000e-01
  %1768 = call float @dx.op.unary.f32(i32 22, float %1767)  ; Frc(value)
  %1769 = call float @dx.op.unary.f32(i32 27, float %1768)  ; Round_ni(value)
  %1770 = call float @dx.op.unary.f32(i32 22, float %1768)  ; Frc(value)
  %1771 = fmul fast float %1770, 2.000000e+00
  %1772 = fadd fast float %1771, -1.000000e+00
  %1773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1633, float %1634, float %1769, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1774 = extractvalue %dx.types.ResRet.f32 %1773, 0
  %1775 = extractvalue %dx.types.ResRet.f32 %1773, 1
  %1776 = extractvalue %dx.types.ResRet.f32 %1773, 2
  %1777 = extractvalue %dx.types.ResRet.f32 %1773, 3
  %1778 = fadd fast float %1774, -5.000000e-01
  %1779 = fadd fast float %1776, -5.000000e-01
  %1780 = fmul fast float %1778, 0xBFD5555560000000
  %1781 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1779, float %1780)  ; FMad(a,b,c)
  %1782 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1775, float 0.000000e+00)  ; FMad(a,b,c)
  %1783 = fadd fast float %1782, %1777
  %1784 = fmul fast float %1778, -7.500000e-01
  %1785 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1779, float %1784)  ; FMad(a,b,c)
  %1786 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1775, float 0.000000e+00)  ; FMad(a,b,c)
  %1787 = fadd fast float %1786, %1777
  %1788 = call float @dx.op.binary.f32(i32 35, float %1781, float -1.000000e+00)  ; FMax(a,b)
  %1789 = call float @dx.op.binary.f32(i32 35, float %1783, float -1.000000e+00)  ; FMax(a,b)
  %1790 = call float @dx.op.binary.f32(i32 35, float %1785, float -1.000000e+00)  ; FMax(a,b)
  %1791 = call float @dx.op.binary.f32(i32 35, float %1787, float -1.000000e+00)  ; FMax(a,b)
  %1792 = call float @dx.op.binary.f32(i32 36, float %1788, float 1.000000e+00)  ; FMin(a,b)
  %1793 = call float @dx.op.binary.f32(i32 36, float %1789, float 1.000000e+00)  ; FMin(a,b)
  %1794 = call float @dx.op.binary.f32(i32 36, float %1790, float 1.000000e+00)  ; FMin(a,b)
  %1795 = call float @dx.op.binary.f32(i32 36, float %1791, float 1.000000e+00)  ; FMin(a,b)
  %1796 = fcmp fast olt float %1792, 0x3FEFFF8020000000
  br i1 %1796, label %1797, label %1912, !dx.controlflow.hints !119

; <label>:1797                                    ; preds = %1764
  %1798 = extractvalue %dx.types.CBufRet.f32 %1680, 3
  %1799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.f32 %1799, 0
  %1801 = extractvalue %dx.types.CBufRet.f32 %1799, 1
  %1802 = extractvalue %dx.types.CBufRet.f32 %1799, 2
  %1803 = extractvalue %dx.types.CBufRet.f32 %1799, 3
  %1804 = fsub fast float %1800, %1792
  %1805 = fsub fast float %1801, %1793
  %1806 = fsub fast float %1802, %1794
  %1807 = fsub fast float %1803, %1795
  %1808 = fmul fast float %1804, %1798
  %1809 = fmul fast float %1805, %1798
  %1810 = fmul fast float %1806, %1798
  %1811 = fmul fast float %1807, %1798
  %1812 = fadd fast float %1808, %1792
  %1813 = fadd fast float %1809, %1793
  %1814 = fsub fast float -0.000000e+00, %1813
  %1815 = fadd fast float %1810, %1794
  %1816 = fadd fast float %1811, %1795
  %1817 = fmul fast float %1812, %1812
  %1818 = fsub fast float %1813, %1817
  %1819 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1818)  ; FMax(a,b)
  %1820 = fdiv fast float 1.000000e+00, %1819
  %1821 = fmul fast float %1813, %1812
  %1822 = fsub fast float %1815, %1821
  %1823 = fsub fast float %1772, %1812
  %1824 = fmul fast float %1772, %1772
  %1825 = fsub fast float %1824, %1813
  %1826 = fmul fast float %1823, %1820
  %1827 = fmul fast float %1826, %1822
  %1828 = fsub fast float %1825, %1827
  %1829 = fmul fast float %1813, %1813
  %1830 = fsub fast float %1816, %1829
  %1831 = fmul fast float %1822, %1822
  %1832 = fmul fast float %1831, %1820
  %1833 = fsub fast float %1830, %1832
  %1834 = fdiv fast float %1828, %1833
  %1835 = fmul fast float %1822, %1834
  %1836 = fsub fast float %1823, %1835
  %1837 = fmul fast float %1836, %1820
  %1838 = fmul fast float %1837, %1812
  %1839 = fsub fast float 1.000000e+00, %1838
  %1840 = fmul fast float %1813, %1834
  %1841 = fsub fast float %1839, %1840
  %1842 = fmul fast float %1837, %1837
  %1843 = fmul fast float %1834, 4.000000e+00
  %1844 = fmul fast float %1843, %1841
  %1845 = fsub fast float %1842, %1844
  %1846 = call float @dx.op.unary.f32(i32 24, float %1845)  ; Sqrt(value)
  %1847 = fcmp fast oge float %1837, 0.000000e+00
  %1848 = fsub fast float -0.000000e+00, %1846
  %1849 = select i1 %1847, float %1848, float %1846
  %1850 = fsub fast float %1849, %1837
  %1851 = fdiv fast float %1850, %1834
  %1852 = fdiv fast float %1841, %1850
  %1853 = fmul fast float %1851, 5.000000e-01
  %1854 = fmul fast float %1852, 2.000000e+00
  %1855 = select i1 %1847, float %1853, float %1854
  %1856 = select i1 %1847, float %1854, float %1853
  %1857 = call float @dx.op.binary.f32(i32 35, float %1855, float %1856)  ; FMax(a,b)
  %1858 = call float @dx.op.binary.f32(i32 36, float %1855, float %1856)  ; FMin(a,b)
  %1859 = fcmp fast ogt float %1772, %1858
  br i1 %1859, label %1860, label %1870

; <label>:1860                                    ; preds = %1797
  %1861 = fsub fast float %1772, %1858
  %1862 = fsub fast float %1857, %1858
  %1863 = fmul fast float %1861, %1862
  %1864 = fmul fast float %1857, %1772
  %1865 = fadd fast float %1857, %1772
  %1866 = fmul fast float %1865, %1812
  %1867 = fadd fast float %1864, %1813
  %1868 = fsub fast float %1867, %1866
  %1869 = fdiv fast float %1868, %1863
  br label %1870

; <label>:1870                                    ; preds = %1860, %1797
  %1871 = phi float [ %1869, %1860 ], [ 0.000000e+00, %1797 ]
  %1872 = fcmp fast ogt float %1772, %1857
  %1873 = fsub fast float %1772, %1857
  br i1 %1872, label %1874, label %1884

; <label>:1874                                    ; preds = %1870
  %1875 = fsub fast float %1857, %1858
  %1876 = fmul fast float %1875, %1873
  %1877 = fmul fast float %1858, %1772
  %1878 = fadd fast float %1858, %1772
  %1879 = fmul fast float %1878, %1812
  %1880 = fsub fast float %1814, %1877
  %1881 = fadd fast float %1880, %1879
  %1882 = fdiv fast float %1881, %1876
  %1883 = fadd fast float %1882, %1871
  br label %1884

; <label>:1884                                    ; preds = %1874, %1870
  %1885 = phi float [ %1883, %1874 ], [ %1871, %1870 ]
  %1886 = fsub fast float %1772, %1858
  %1887 = fmul fast float %1886, %1873
  %1888 = fmul fast float %1858, %1857
  %1889 = fadd fast float %1858, %1857
  %1890 = fmul fast float %1889, %1812
  %1891 = fadd fast float %1888, %1813
  %1892 = fsub fast float %1891, %1890
  %1893 = fdiv fast float %1892, %1887
  %1894 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1895 = fcmp fast oeq float %687, 0.000000e+00
  %1896 = extractvalue %dx.types.CBufRet.f32 %1680, 0
  %1897 = fcmp fast oeq float %1896, 0.000000e+00
  %1898 = or i1 %1895, %1897
  %1899 = fmul fast float %1896, 2.000000e+00
  %1900 = fadd fast float %1681, %1682
  %1901 = fdiv fast float %1900, %1899
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  %1903 = fmul fast float %1902, 2.000000e+00
  %1904 = fsub fast float 3.000000e+00, %1903
  %1905 = fmul fast float %1902, %1902
  %1906 = fmul fast float %1905, %1904
  %1907 = select i1 %1898, float 1.000000e+00, float %1906
  %1908 = fmul fast float %1893, %687
  %1909 = fadd fast float %1894, %1908
  %1910 = call float @dx.op.unary.f32(i32 7, float %1909)  ; Saturate(value)
  %1911 = fmul fast float %1907, %1910
  br label %1912

; <label>:1912                                    ; preds = %1884, %1764
  %1913 = phi float [ %1911, %1884 ], [ 0.000000e+00, %1764 ]
  %1914 = fsub fast float 1.000000e+00, %1913
  %1915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %1633, float %1634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1916 = extractvalue %dx.types.ResRet.f32 %1915, 0
  %1917 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1918 = extractvalue %dx.types.CBufRet.i32 %1917, 2
  %1919 = icmp eq i32 %1918, 0
  br i1 %1919, label %1925, label %1920

; <label>:1920                                    ; preds = %1912
  %1921 = call float @dx.op.unary.f32(i32 7, float %1913)  ; Saturate(value)
  %1922 = fadd fast float %1916, -1.000000e+00
  %1923 = fmul fast float %1921, %1922
  %1924 = fadd fast float %1923, 1.000000e+00
  br label %1925

; <label>:1925                                    ; preds = %1920, %1912
  %1926 = phi float [ %1924, %1920 ], [ %1914, %1912 ]
  br i1 %1688, label %1927, label %1945

; <label>:1927                                    ; preds = %1925
  %1928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1929 = extractvalue %dx.types.CBufRet.f32 %1928, 1
  %1930 = fsub fast float %1765, %1929
  %1931 = call float @dx.op.unary.f32(i32 7, float %1930)  ; Saturate(value)
  %1932 = fsub fast float %1765, %1687
  %1933 = call float @dx.op.unary.f32(i32 7, float %1932)  ; Saturate(value)
  %1934 = fsub fast float %1931, %1933
  %1935 = fsub fast float %1767, %1933
  %1936 = fdiv fast float %1935, %1934
  %1937 = call float @dx.op.unary.f32(i32 7, float %1936)  ; Saturate(value)
  %1938 = fmul fast float %1937, 2.000000e+00
  %1939 = fsub fast float 3.000000e+00, %1938
  %1940 = fsub fast float %1916, %1926
  %1941 = fmul fast float %1937, %1937
  %1942 = fmul fast float %1941, %1940
  %1943 = fmul fast float %1942, %1939
  %1944 = fadd fast float %1943, %1926
  br label %1945

; <label>:1945                                    ; preds = %1927, %1925
  %1946 = phi float [ %1944, %1927 ], [ %1926, %1925 ]
  %1947 = call float @dx.op.binary.f32(i32 35, float %1916, float %1946)  ; FMax(a,b)
  %1948 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.i32 %1948, 2
  %1950 = and i32 %1949, 1
  %1951 = icmp eq i32 %1950, 0
  %1952 = fcmp fast une float %1947, 1.000000e+00
  %1953 = and i1 %1952, %1951
  br i1 %1953, label %1954, label %1973

; <label>:1954                                    ; preds = %1945
  %1955 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %17, float %1633, float %1634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1956 = extractvalue %dx.types.ResRet.f32 %1955, 0
  %1957 = extractvalue %dx.types.ResRet.f32 %1955, 1
  %1958 = extractvalue %dx.types.ResRet.f32 %1955, 2
  %1959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1960 = extractvalue %dx.types.CBufRet.f32 %1959, 1
  %1961 = fmul fast float %1960, %1956
  %1962 = fmul fast float %1960, %1957
  %1963 = fmul fast float %1960, %1958
  %1964 = fcmp fast ogt float %1916, 0x3FEFFF2E40000000
  %1965 = fsub fast float 1.000000e+00, %1947
  %1966 = fsub fast float 1.000000e+00, %1916
  %1967 = fdiv fast float %1965, %1966
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = select i1 %1964, float 0.000000e+00, float %1968
  %1970 = fmul fast float %1961, %1969
  %1971 = fmul fast float %1962, %1969
  %1972 = fmul fast float %1963, %1969
  br label %1973

; <label>:1973                                    ; preds = %1954, %1945
  %1974 = phi float [ 0.000000e+00, %1945 ], [ %1970, %1954 ]
  %1975 = phi float [ 0.000000e+00, %1945 ], [ %1971, %1954 ]
  %1976 = phi float [ 0.000000e+00, %1945 ], [ %1972, %1954 ]
  %1977 = fmul fast float %1974, %668
  %1978 = fmul fast float %1975, %668
  %1979 = fmul fast float %1976, %668
  %1980 = fmul fast float %1947, %1611
  %1981 = call float @dx.op.dot3.f32(i32 55, float %1947, float %1947, float %1947, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1982 = call float @dx.op.dot3.f32(i32 55, float %1977, float %1978, float %1979, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1983 = select i1 %102, float %1981, float %1947
  %1984 = select i1 %102, float 1.000000e+00, float %1947
  %1985 = select i1 %102, float %1982, float %1977
  %1986 = select i1 %102, float 0.000000e+00, float %1978
  %1987 = select i1 %102, float 0.000000e+00, float %1979
  %1988 = fmul fast float %1983, %1623
  %1989 = fmul fast float %1983, %1624
  %1990 = fmul fast float %1984, %1625
  %1991 = fadd fast float %1988, %1985
  %1992 = fadd fast float %1989, %1986
  %1993 = fadd fast float %1987, %1990
  br label %1994

; <label>:1994                                    ; preds = %1973, %1629, %1601, %836
  %1995 = phi float [ %841, %836 ], [ %1623, %1601 ], [ %1991, %1973 ], [ %1623, %1629 ]
  %1996 = phi float [ %842, %836 ], [ %1624, %1601 ], [ %1992, %1973 ], [ %1624, %1629 ]
  %1997 = phi float [ %843, %836 ], [ %1625, %1601 ], [ %1993, %1973 ], [ %1625, %1629 ]
  %1998 = phi float [ %844, %836 ], [ %1611, %1601 ], [ %1980, %1973 ], [ %1611, %1629 ]
  %1999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1999, 2
  %2001 = extractvalue %dx.types.CBufRet.f32 %1999, 3
  %2002 = fmul fast float %2000, %44
  %2003 = fmul fast float %2001, %45
  %2004 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2005 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2006 = select i1 %698, i32 2, i32 0
  %2007 = or i32 %2006, 1
  %2008 = uitofp i32 %2007 to float
  %2009 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %2004, float %2005, float %2008, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2010 = extractvalue %dx.types.ResRet.f32 %2009, 0
  %2011 = extractvalue %dx.types.ResRet.f32 %2009, 1
  %2012 = extractvalue %dx.types.ResRet.f32 %2009, 2
  %2013 = extractvalue %dx.types.ResRet.f32 %2009, 3
  %2014 = add nuw nsw i32 %2006, 2
  %2015 = uitofp i32 %2014 to float
  %2016 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %2004, float %2005, float %2015, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2017 = extractvalue %dx.types.ResRet.f32 %2016, 0
  %2018 = extractvalue %dx.types.ResRet.f32 %2016, 1
  %2019 = extractvalue %dx.types.ResRet.f32 %2016, 2
  %2020 = extractvalue %dx.types.ResRet.f32 %2016, 3
  %2021 = call float @dx.op.binary.f32(i32 35, float %2011, float %2012)  ; FMax(a,b)
  %2022 = call float @dx.op.binary.f32(i32 35, float %2010, float %2021)  ; FMax(a,b)
  %2023 = call float @dx.op.binary.f32(i32 35, float %2022, float %2013)  ; FMax(a,b)
  %2024 = call float @dx.op.binary.f32(i32 36, float %2018, float %2019)  ; FMin(a,b)
  %2025 = call float @dx.op.binary.f32(i32 36, float %2017, float %2024)  ; FMin(a,b)
  %2026 = call float @dx.op.binary.f32(i32 36, float %2025, float %2020)  ; FMin(a,b)
  %2027 = fmul fast float %2023, 2.550000e+02
  %2028 = fadd fast float %2027, 0x3F70101020000000
  %2029 = fptoui float %2028 to i32
  %2030 = fmul fast float %2026, 2.550000e+02
  %2031 = fadd fast float %2030, 0x3F70101020000000
  %2032 = fptoui float %2031 to i32
  %2033 = icmp ult i32 %2029, %2032
  br i1 %2033, label %2034, label %2086

; <label>:2034                                    ; preds = %1994
  %2035 = fcmp fast ogt float %36, 9.843750e-01
  %2036 = fadd fast float %840, -4.000000e+00
  %2037 = select i1 %2035, float -4.000000e+00, float %2036
  %2038 = call float @dx.op.binary.f32(i32 35, float %2037, float 0.000000e+00)  ; FMax(a,b)
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 0
  %2041 = fadd fast float %2040, %2038
  %2042 = extractvalue %dx.types.CBufRet.f32 %2039, 2
  %2043 = fmul fast float %2041, %2042
  %2044 = call float @dx.op.unary.f32(i32 23, float %2043)  ; Log(value)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2039, 3
  %2046 = fmul fast float %2045, %2044
  %2047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2048 = extractvalue %dx.types.CBufRet.f32 %2047, 2
  %2049 = fmul fast float %2046, %2048
  %2050 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  %2051 = uitofp i32 %2029 to float
  %2052 = uitofp i32 %2032 to float
  %2053 = fadd fast float %2051, 5.000000e-01
  %2054 = fadd fast float %2052, 5.000000e-01
  %2055 = fmul fast float %2048, %2053
  %2056 = fmul fast float %2048, %2054
  %2057 = fadd fast float %2055, 0x3F0FFB4800000000
  %2058 = fadd fast float %2056, 0xBF0FFB4800000000
  %2059 = call float @dx.op.binary.f32(i32 35, float %2050, float %2057)  ; FMax(a,b)
  %2060 = call float @dx.op.binary.f32(i32 36, float %2059, float %2058)  ; FMin(a,b)
  %2061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2062 = extractvalue %dx.types.CBufRet.f32 %2061, 1
  %2063 = extractvalue %dx.types.CBufRet.f32 %2061, 2
  %2064 = extractvalue %dx.types.CBufRet.f32 %2061, 0
  %2065 = select i1 %698, float %2064, float 0.000000e+00
  %2066 = fmul fast float %2062, %2060
  %2067 = fadd fast float %2065, %2066
  %2068 = fadd fast float %2065, %2063
  %2069 = fsub fast float %2062, %2063
  %2070 = fadd fast float %2069, %2065
  %2071 = call float @dx.op.binary.f32(i32 35, float %2067, float %2068)  ; FMax(a,b)
  %2072 = call float @dx.op.binary.f32(i32 36, float %2071, float %2070)  ; FMin(a,b)
  %2073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %2004, float %2005, float %2072, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2074 = extractvalue %dx.types.ResRet.f32 %2073, 0
  %2075 = extractvalue %dx.types.ResRet.f32 %2073, 1
  %2076 = extractvalue %dx.types.ResRet.f32 %2073, 2
  %2077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %2004, float %2005, float %2072, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2078 = extractvalue %dx.types.ResRet.f32 %2077, 0
  %2079 = extractvalue %dx.types.ResRet.f32 %2077, 1
  %2080 = extractvalue %dx.types.ResRet.f32 %2077, 2
  %2081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2082 = extractvalue %dx.types.CBufRet.f32 %2081, 1
  %2083 = fmul fast float %2082, %2078
  %2084 = fmul fast float %2082, %2079
  %2085 = fmul fast float %2082, %2080
  br label %2086

; <label>:2086                                    ; preds = %2034, %1994
  %2087 = phi float [ %2074, %2034 ], [ 1.000000e+00, %1994 ]
  %2088 = phi float [ %2075, %2034 ], [ 1.000000e+00, %1994 ]
  %2089 = phi float [ %2076, %2034 ], [ 1.000000e+00, %1994 ]
  %2090 = phi float [ %2083, %2034 ], [ 0.000000e+00, %1994 ]
  %2091 = phi float [ %2084, %2034 ], [ 0.000000e+00, %1994 ]
  %2092 = phi float [ %2085, %2034 ], [ 0.000000e+00, %1994 ]
  %2093 = fmul fast float %2090, %668
  %2094 = fmul fast float %2091, %668
  %2095 = fmul fast float %2092, %668
  %2096 = fmul fast float %2087, %1998
  %2097 = call float @dx.op.dot3.f32(i32 55, float %2087, float %2088, float %2089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2098 = call float @dx.op.dot3.f32(i32 55, float %2093, float %2094, float %2095, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2099 = select i1 %102, float %2097, float %2087
  %2100 = select i1 %102, float %2097, float %2088
  %2101 = select i1 %102, float 1.000000e+00, float %2089
  %2102 = select i1 %102, float %2098, float %2093
  %2103 = select i1 %102, float 0.000000e+00, float %2094
  %2104 = select i1 %102, float 0.000000e+00, float %2095
  %2105 = fmul fast float %2099, %1995
  %2106 = fmul fast float %2100, %1996
  %2107 = fmul fast float %2101, %1997
  %2108 = fadd fast float %2105, %2102
  %2109 = fadd fast float %2106, %2103
  %2110 = fadd fast float %2104, %2107
  %2111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.i32 %2111, 3
  %2113 = and i32 %2112, 3
  %2114 = icmp ne i32 %2113, 0
  %2115 = and i32 %2112, 4
  %2116 = icmp ne i32 %2115, 0
  %2117 = and i1 %2114, %2116
  %2118 = and i1 %102, %2117
  br i1 %2118, label %2119, label %2125

; <label>:2119                                    ; preds = %2086
  %2120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2121 = extractvalue %dx.types.CBufRet.f32 %2120, 1
  %2122 = fadd fast float %2096, -1.000000e+00
  %2123 = fmul fast float %2121, %2122
  %2124 = fadd fast float %2123, 1.000000e+00
  br label %2125

; <label>:2125                                    ; preds = %2119, %2086
  %2126 = phi float [ %2124, %2119 ], [ %2096, %2086 ]
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 0
  br i1 %102, label %2129, label %2151

; <label>:2129                                    ; preds = %2125
  %2130 = fadd fast float %2108, %2109
  %2131 = fmul fast float %2128, %2130
  %2132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2133 = extractvalue %dx.types.CBufRet.f32 %2132, 3
  %2134 = extractvalue %dx.types.CBufRet.f32 %673, 1
  %2135 = fsub fast float %676, %2134
  %2136 = extractvalue %dx.types.CBufRet.f32 %673, 2
  %2137 = fmul fast float %2135, %2136
  %2138 = call float @dx.op.unary.f32(i32 7, float %2137)  ; Saturate(value)
  %2139 = fsub fast float %2138, %2133
  %2140 = fmul fast float %2139, %2126
  %2141 = fadd fast float %2140, %2133
  %2142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2143 = extractvalue %dx.types.CBufRet.f32 %2142, 0
  %2144 = fsub fast float %2141, %2143
  %2145 = fmul fast float %2144, 1.000000e+01
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2147 = fsub fast float %646, %668
  %2148 = fmul fast float %2146, %2147
  %2149 = fadd fast float %2148, %668
  %2150 = fmul fast float %2149, %2141
  br label %2160

; <label>:2151                                    ; preds = %2125
  %2152 = fmul fast float %2128, %2108
  %2153 = fmul fast float %2128, %2109
  %2154 = fmul fast float %2128, %2110
  %2155 = call float @dx.op.binary.f32(i32 35, float %2153, float %2154)  ; FMax(a,b)
  %2156 = call float @dx.op.binary.f32(i32 35, float %2152, float %2155)  ; FMax(a,b)
  %2157 = call float @dx.op.binary.f32(i32 35, float %2156, float %668)  ; FMax(a,b)
  %2158 = fcmp fast ugt float %2157, 0x3F10000000000000
  br i1 %2158, label %2160, label %2159

; <label>:2159                                    ; preds = %2151
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2160

; <label>:2160                                    ; preds = %2159, %2151, %2129
  %2161 = phi float [ %2131, %2129 ], [ %2152, %2159 ], [ %2152, %2151 ]
  %2162 = phi float [ %2150, %2129 ], [ %2153, %2159 ], [ %2153, %2151 ]
  %2163 = phi float [ %2149, %2129 ], [ %2154, %2159 ], [ %2154, %2151 ]
  %2164 = phi float [ %2149, %2129 ], [ %668, %2159 ], [ %668, %2151 ]
  %2165 = fadd fast float %498, 0x3FE3C6EF40000000
  %2166 = call float @dx.op.unary.f32(i32 22, float %2165)  ; Frc(value)
  %2167 = call float @dx.op.unary.f32(i32 23, float %2161)  ; Log(value)
  %2168 = fadd fast float %2167, -7.000000e+00
  %2169 = call float @dx.op.unary.f32(i32 21, float %2168)  ; Exp(value)
  %2170 = fmul fast float %2166, 2.000000e+00
  %2171 = fadd fast float %2170, -1.000000e+00
  %2172 = fmul fast float %2169, %2171
  %2173 = fcmp fast ogt float %2161, 0.000000e+00
  %2174 = select i1 %2173, float %2172, float 0.000000e+00
  %2175 = fadd fast float %2174, %2161
  %2176 = fadd fast float %498, 0x3FF3C6EF40000000
  %2177 = call float @dx.op.unary.f32(i32 22, float %2176)  ; Frc(value)
  %2178 = call float @dx.op.unary.f32(i32 23, float %2162)  ; Log(value)
  %2179 = fadd fast float %2178, -7.000000e+00
  %2180 = call float @dx.op.unary.f32(i32 21, float %2179)  ; Exp(value)
  %2181 = fmul fast float %2177, 2.000000e+00
  %2182 = fadd fast float %2181, -1.000000e+00
  %2183 = fmul fast float %2180, %2182
  %2184 = fcmp fast ogt float %2162, 0.000000e+00
  %2185 = select i1 %2184, float %2183, float 0.000000e+00
  %2186 = fadd fast float %2185, %2162
  %2187 = fadd fast float %498, 0x3FFDAA66E0000000
  %2188 = call float @dx.op.unary.f32(i32 22, float %2187)  ; Frc(value)
  %2189 = call float @dx.op.unary.f32(i32 23, float %2163)  ; Log(value)
  %2190 = fadd fast float %2189, -6.000000e+00
  %2191 = call float @dx.op.unary.f32(i32 21, float %2190)  ; Exp(value)
  %2192 = fmul fast float %2188, 2.000000e+00
  %2193 = fadd fast float %2192, -1.000000e+00
  %2194 = fmul fast float %2191, %2193
  %2195 = fcmp fast ogt float %2163, 0.000000e+00
  %2196 = select i1 %2195, float %2194, float 0.000000e+00
  %2197 = fadd fast float %2196, %2163
  %2198 = select i1 %102, float %2162, float %2186
  %2199 = select i1 %102, float %2163, float %2197
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2200 = call float @dx.op.binary.f32(i32 36, float %2175, float 3.225500e+04)  ; FMin(a,b)
  %2201 = call float @dx.op.binary.f32(i32 36, float %2198, float 3.225500e+04)  ; FMin(a,b)
  %2202 = call float @dx.op.binary.f32(i32 36, float %2199, float 3.225500e+04)  ; FMin(a,b)
  %2203 = call float @dx.op.binary.f32(i32 36, float %2164, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2200)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2201)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2202)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %2203)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2164)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2164)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2164)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2164)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleBias.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float) #2

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
!dx.viewIdState = !{!33}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24}
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
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !21}
!21 = !{i32 0, i32 14}
!22 = !{i32 13, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!23 = !{i32 14, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!24 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[30 x i32] [i32 28, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 1, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !59}
!35 = !{!36, !55, null}
!36 = !{!37, !40, !41, !43, !46, !48, !50, !52, !54}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !39}
!41 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !42}
!42 = !{i32 3, i32 3}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 2, i32 1, i8 4, i32 3, i8 0, !45}
!44 = !{i32 3}
!45 = !{i32 3, i32 7}
!46 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 3, i32 4, i8 0, !45}
!47 = !{i32 5}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 5, i8 0, null}
!49 = !{i32 8}
!50 = !{i32 6, !"COLOR", i8 5, i8 0, !44, i8 1, i32 1, i8 3, i32 6, i8 0, !51}
!51 = !{i32 3, i32 1}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !53, i8 1, i32 1, i8 1, i32 6, i8 3, null}
!53 = !{i32 4}
!54 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56, !57}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!57 = !{i32 1, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
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
!69 = !{!70, !70, i64 0}
!70 = !{!"float", !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !{!74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!74 = distinct !{!74, !75, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!75 = distinct !{!75, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!76 = distinct !{!76, !77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!77 = distinct !{!77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!78 = distinct !{!78, !77, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!79 = distinct !{!79, !80, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!80 = distinct !{!80, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!81 = distinct !{!81, !80, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!82 = distinct !{!82, !80, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!83 = distinct !{!83, !84, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!84 = distinct !{!84, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!85 = distinct !{!85, !84, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!86 = distinct !{!86, !84, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!87 = distinct !{!87, !88, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!88 = distinct !{!88, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"\01?sort@@YAXAIAM00@Z: %c"}
!91 = distinct !{!91, !"\01?sort@@YAXAIAM00@Z"}
!92 = !{!93, !94, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!93 = distinct !{!93, !91, !"\01?sort@@YAXAIAM00@Z: %a"}
!94 = distinct !{!94, !91, !"\01?sort@@YAXAIAM00@Z: %b"}
!95 = !{!94}
!96 = !{!93, !90, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!97 = !{!93}
!98 = !{!94, !90, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!99 = !{!100}
!100 = distinct !{!100, !101, !"\01?sort@@YAXAIAM00@Z: %c"}
!101 = distinct !{!101, !"\01?sort@@YAXAIAM00@Z"}
!102 = !{!103, !104, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!103 = distinct !{!103, !101, !"\01?sort@@YAXAIAM00@Z: %a"}
!104 = distinct !{!104, !101, !"\01?sort@@YAXAIAM00@Z: %b"}
!105 = !{!104}
!106 = !{!103, !100, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!107 = !{!103}
!108 = !{!104, !100, !74, !76, !78, !79, !81, !82, !83, !85, !86, !87}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 2}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}

