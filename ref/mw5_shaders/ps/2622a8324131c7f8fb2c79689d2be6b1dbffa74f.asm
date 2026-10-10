;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xyzw        2     NONE   float   xyzw
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 4   xyzw        4     NONE   float   xy  
; TEXCOORD                 5   xyz         5     NONE   float   xyz 
; TEXCOORD                 8   xyzw        6     NONE   float   xyzw
; COLOR                    3   xyz         7     NONE    uint   x   
; COLOR                    4      w        7     NONE    uint       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 358e17df22a322eee319b02f3c237163
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
; TEXCOORD                 4                 linear       
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
; Number of inputs: 32, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 20, 21, 24, 25, 26, 27, 28 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 21, 24, 25, 26, 27, 28 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 22, 26, 27, 28 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
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
  %20 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = alloca [3 x float], align 4
  %44 = alloca [3 x float], align 4
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %48 = extractvalue %dx.types.CBufRet.f32 %47, 0
  %49 = fmul fast float %48, %39
  %50 = fmul fast float %48, %40
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 2
  %53 = extractvalue %dx.types.CBufRet.f32 %51, 3
  %54 = fmul fast float %49, 2.000000e+00
  %55 = fmul fast float %54, %52
  %56 = fmul fast float %50, 2.000000e+00
  %57 = fmul fast float %56, %53
  %58 = fsub fast float 1.000000e+00, %55
  %59 = fsub fast float 1.000000e+00, %57
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = fmul fast float %58, %61
  %65 = fmul fast float %58, %62
  %66 = fmul fast float %58, %63
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fmul fast float %59, %68
  %72 = fmul fast float %59, %69
  %73 = fmul fast float %59, %70
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = extractvalue %dx.types.CBufRet.f32 %74, 1
  %77 = extractvalue %dx.types.CBufRet.f32 %74, 2
  %78 = fadd fast float %71, %75
  %79 = fadd fast float %78, %64
  %80 = fadd fast float %72, %76
  %81 = fadd fast float %80, %65
  %82 = fadd fast float %73, %77
  %83 = fadd fast float %82, %66
  %84 = fmul fast float %79, %42
  %85 = fmul fast float %81, %42
  %86 = fmul fast float %83, %42
  %87 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %88 = extractvalue %dx.types.Dimensions %87, 0
  %89 = sitofp i32 %88 to float
  %90 = extractvalue %dx.types.Dimensions %87, 1
  %91 = sitofp i32 %90 to float
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 3
  %95 = fmul fast float %93, %49
  %96 = fmul fast float %94, %50
  %97 = fmul fast float %95, %89
  %98 = fmul fast float %96, %91
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %101 = fsub fast float -0.000000e+00, %100
  %102 = fptoui float %101 to i32
  %103 = fptoui float %97 to i32
  %104 = fptoui float %98 to i32
  %105 = and i32 %102, 31
  %106 = lshr i32 %103, %105
  %107 = lshr i32 %104, %105
  %108 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %102, i32 %106, i32 %107, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = fcmp fast olt float %109, -1.000000e+00
  %111 = fcmp fast ogt float %109, -1.000000e+00
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %114 = select i1 %111, float %113, float 1.000000e+00
  %115 = fadd fast float %109, 1.000000e+00
  %116 = fmul fast float %114, %115
  %117 = call float @dx.op.unary.f32(i32 6, float %116)  ; FAbs(value)
  %118 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %119 = fcmp fast oge float %117, %118
  %120 = select i1 %119, float 0x4197782600000000, float %117
  %121 = fcmp fast ogt float %42, %120
  br i1 %121, label %122, label %123

; <label>:122                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %123

; <label>:123                                     ; preds = %122, %0
  br i1 %110, label %124, label %125

; <label>:124                                     ; preds = %123
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %125

; <label>:125                                     ; preds = %124, %123
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.i32 %127, 3
  %129 = and i32 %128, 3
  %130 = icmp ne i32 %129, 0
  %131 = and i32 %128, 4
  %132 = icmp ne i32 %131, 0
  %133 = and i1 %130, %132
  br i1 %133, label %134, label %145

; <label>:134                                     ; preds = %125
  %135 = extractvalue %dx.types.CBufRet.f32 %126, 3
  %136 = fmul fast float %135, %50
  %137 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %138 = fmul fast float %137, %49
  %139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %16, float %138, float %136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = fsub fast float 1.000000e+00, %140
  %142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.f32 %142, 0
  %144 = fcmp fast olt float %141, %143
  br label %148

; <label>:145                                     ; preds = %125
  %146 = icmp eq i32 %131, 0
  %147 = and i1 %130, %146
  br label %148

; <label>:148                                     ; preds = %145, %134
  %149 = phi i1 [ %144, %134 ], [ %147, %145 ]
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %153 = fmul fast float %151, %49
  %154 = fmul fast float %152, %50
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = and i32 %156, 114688
  %158 = icmp ne i32 %157, 0
  %159 = select i1 %158, float %153, float 0.000000e+00
  %160 = select i1 %158, float %154, float 0.000000e+00
  %161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %17, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = fmul fast float %162, 2.550000e+02
  %164 = fptoui float %163 to i32
  %165 = select i1 %158, i32 %164, i32 0
  %166 = mul i32 %20, 208
  %167 = add i32 %166, 188
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = and i32 %128, 114688
  %171 = and i32 %128, 8
  %172 = icmp ne i32 %171, 0
  %173 = or i1 %149, %172
  %174 = select i1 %173, i32 %170, i32 16384
  %175 = and i32 %174, %169
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

; <label>:177                                     ; preds = %148
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %178

; <label>:178                                     ; preds = %177, %148
  %179 = and i32 %169, 512
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %205, label %181

; <label>:181                                     ; preds = %178
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %185 = fmul fast float %183, %49
  %186 = fmul fast float %184, %50
  %187 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %188 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %189 = fdiv fast float %187, %188
  %190 = fcmp fast ogt float %189, 0x3FFC71C720000000
  br i1 %190, label %191, label %197

; <label>:191                                     ; preds = %181
  %192 = fdiv fast float 0x3FFC71C720000000, %189
  %193 = fmul fast float %192, %186
  %194 = fsub fast float 1.000000e+00, %192
  %195 = fmul fast float %194, 5.000000e-01
  %196 = fadd fast float %195, %193
  br label %205

; <label>:197                                     ; preds = %181
  %198 = fcmp fast olt float %189, 0x3FFC71C720000000
  br i1 %198, label %199, label %205

; <label>:199                                     ; preds = %197
  %200 = fmul fast float %185, 5.625000e-01
  %201 = fmul fast float %200, %189
  %202 = fmul fast float %189, 2.812500e-01
  %203 = fsub fast float 5.000000e-01, %202
  %204 = fadd fast float %203, %201
  br label %205

; <label>:205                                     ; preds = %199, %197, %191, %178
  %206 = phi float [ %34, %178 ], [ %185, %191 ], [ %204, %199 ], [ %185, %197 ]
  %207 = phi float [ %35, %178 ], [ %196, %191 ], [ %186, %199 ], [ %186, %197 ]
  %208 = and i32 %169, 16
  %209 = icmp ne i32 %208, 0
  %210 = select i1 %209, float 1.000000e+00, float %38
  %211 = icmp eq i32 %208, 0
  br i1 %211, label %231, label %212, !dx.controlflow.hints !59

; <label>:212                                     ; preds = %205
  %213 = add i32 %166, 64
  %214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = fadd fast float %215, 1.000000e+00
  %217 = fmul fast float %216, %38
  %218 = fsub fast float %217, %215
  %219 = fsub fast float %216, %218
  %220 = call float @dx.op.unary.f32(i32 7, float %219)  ; Saturate(value)
  %221 = fsub fast float 1.000000e+00, %217
  %222 = call float @dx.op.unary.f32(i32 7, float %221)  ; Saturate(value)
  %223 = fsub fast float %220, %222
  %224 = fsub fast float %210, %222
  %225 = fdiv fast float %224, %223
  %226 = call float @dx.op.unary.f32(i32 7, float %225)  ; Saturate(value)
  %227 = fmul fast float %226, 2.000000e+00
  %228 = fsub fast float 3.000000e+00, %227
  %229 = fmul fast float %226, %226
  %230 = fmul fast float %229, %228
  br label %231

; <label>:231                                     ; preds = %212, %205
  %232 = phi float [ %230, %212 ], [ %210, %205 ]
  %233 = and i32 %169, 1024
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %293, label %235, !dx.controlflow.hints !60

; <label>:235                                     ; preds = %231
  %236 = add i32 %166, 48
  %237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = extractvalue %dx.types.ResRet.f32 %237, 1
  %240 = fadd fast float %36, -5.000000e-01
  %241 = fmul fast float %240, 2.000000e+00
  %242 = fmul fast float %28, %241
  %243 = fmul fast float %29, %241
  %244 = fmul fast float %242, %239
  %245 = fmul fast float %243, %239
  %246 = call float @dx.op.dot2.f32(i32 54, float %28, float %29, float %28, float %29)  ; Dot2(ax,ay,bx,by)
  %247 = call float @dx.op.unary.f32(i32 25, float %246)  ; Rsqrt(value)
  %248 = fmul fast float %244, %247
  %249 = fmul fast float %245, %247
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %252 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %253 = fsub fast float %84, %244
  %254 = fadd fast float %253, %251
  %255 = fadd fast float %254, %248
  %256 = fsub fast float %85, %245
  %257 = fadd fast float %256, %252
  %258 = fadd fast float %257, %249
  %259 = fmul fast float %255, %238
  %260 = fmul fast float %258, %238
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = extractvalue %dx.types.ResRet.i32 %261, 1
  %264 = extractvalue %dx.types.ResRet.i32 %261, 2
  %265 = bitcast i32 %262 to float
  %266 = bitcast i32 %263 to float
  %267 = bitcast i32 %264 to float
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 3
  %270 = fmul fast float %267, %269
  %271 = call float @dx.op.unary.f32(i32 12, float %270)  ; Cos(value)
  %272 = call float @dx.op.unary.f32(i32 13, float %270)  ; Sin(value)
  %273 = fadd fast float %260, -5.000000e-01
  %274 = fadd fast float %259, -5.000000e-01
  %275 = fmul fast float %273, %271
  %276 = fmul fast float %272, %274
  %277 = fmul fast float %272, %273
  %278 = fmul fast float %274, %271
  %279 = fmul fast float %269, %265
  %280 = fmul fast float %269, %266
  %281 = fsub fast float 5.000000e-01, %276
  %282 = fadd fast float %281, %275
  %283 = fadd fast float %282, %279
  %284 = fadd fast float %278, 5.000000e-01
  %285 = fadd fast float %284, %277
  %286 = fadd fast float %285, %280
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = add i32 %288, 0
  %290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %289, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %291 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %290, %dx.types.Handle %46, float %283, float %286, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  br label %300

; <label>:293                                     ; preds = %231
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = add i32 %295, 0
  %297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %296, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %298 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %297, %dx.types.Handle %46, float %36, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  br label %300

; <label>:300                                     ; preds = %293, %235
  %301 = phi float [ %292, %235 ], [ %299, %293 ]
  %302 = fmul fast float %301, %232
  %303 = fcmp fast ogt float %302, 0.000000e+00
  br i1 %303, label %305, label %304

; <label>:304                                     ; preds = %300
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %305

; <label>:305                                     ; preds = %304, %300
  %306 = call float @dx.op.unary.f32(i32 7, float %302)  ; Saturate(value)
  %307 = fmul fast float %49, 5.000000e-01
  %308 = fmul fast float %50, 5.000000e-01
  %309 = fptosi float %307 to i32
  %310 = fptosi float %308 to i32
  %311 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %309, i32 %310, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = lshr i32 %312, 18
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F4C00EBA0000000
  %316 = call float @dx.op.unary.f32(i32 21, float %315)  ; Exp(value)
  %317 = fadd fast float %316, -1.000000e+00
  %318 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %319 = extractvalue %dx.types.Dimensions %318, 0
  %320 = sitofp i32 %319 to float
  %321 = extractvalue %dx.types.Dimensions %318, 1
  %322 = sitofp i32 %321 to float
  %323 = fcmp fast oge float %307, %320
  %324 = fcmp fast oge float %308, %322
  %325 = or i1 %323, %324
  %326 = select i1 %325, float 0x4197782600000000, float %317
  %327 = fsub fast float %326, %42
  %328 = fcmp fast ogt float %327, 0.000000e+00
  %329 = and i32 %165, -2
  %330 = icmp eq i32 %329, 2
  %331 = and i1 %330, %328
  %332 = xor i1 %328, true
  %333 = icmp eq i32 %165, 1
  %334 = and i1 %333, %332
  %335 = or i1 %331, %334
  %336 = and i32 %169, 262144
  %337 = icmp ne i32 %336, 0
  %338 = and i1 %337, %335
  %339 = xor i1 %335, true
  %340 = and i32 %169, 131072
  %341 = icmp ne i32 %340, 0
  %342 = and i1 %341, %339
  %343 = or i1 %338, %342
  br i1 %343, label %344, label %345

; <label>:344                                     ; preds = %305
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %345

; <label>:345                                     ; preds = %344, %305
  %346 = and i32 %169, 32
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %586, label %348, !dx.controlflow.hints !61

; <label>:348                                     ; preds = %345
  %349 = add i32 %166, 80
  %350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  %352 = extractvalue %dx.types.ResRet.f32 %350, 1
  %353 = extractvalue %dx.types.ResRet.f32 %350, 2
  %354 = extractvalue %dx.types.ResRet.f32 %350, 3
  %355 = add i32 %166, 96
  %356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.f32 %356, 0
  %358 = extractvalue %dx.types.ResRet.f32 %356, 1
  %359 = extractvalue %dx.types.ResRet.f32 %356, 2
  %360 = add i32 %166, 112
  %361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = extractvalue %dx.types.ResRet.f32 %361, 3
  %366 = add i32 %166, 128
  %367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = extractvalue %dx.types.ResRet.f32 %367, 1
  %370 = extractvalue %dx.types.ResRet.f32 %367, 2
  %371 = extractvalue %dx.types.ResRet.f32 %367, 3
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 4096
  %375 = icmp ne i32 %374, 0
  %376 = fcmp fast une float %359, 0.000000e+00
  %377 = and i32 %373, 64
  %378 = icmp ne i32 %377, 0
  %379 = and i32 %373, 128
  %380 = icmp eq i32 %379, 0
  %381 = and i32 %373, 2048
  %382 = icmp eq i32 %381, 0
  %383 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %384 = extractvalue %dx.types.Dimensions %383, 0
  %385 = sitofp i32 %384 to float
  %386 = extractvalue %dx.types.Dimensions %383, 1
  %387 = sitofp i32 %386 to float
  %388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.f32 %388, 2
  %390 = extractvalue %dx.types.CBufRet.f32 %388, 3
  %391 = fmul fast float %389, %49
  %392 = fmul fast float %390, %50
  %393 = fmul fast float %391, %385
  %394 = fmul fast float %392, %387
  %395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.f32 %395, 1
  %397 = fsub fast float -0.000000e+00, %396
  %398 = fptoui float %397 to i32
  %399 = fptoui float %393 to i32
  %400 = fptoui float %394 to i32
  %401 = and i32 %398, 31
  %402 = lshr i32 %399, %401
  %403 = lshr i32 %400, %401
  %404 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %398, i32 %402, i32 %403, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 0
  %406 = fcmp fast ogt float %405, -1.000000e+00
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 1
  %409 = select i1 %406, float %408, float 1.000000e+00
  %410 = fadd fast float %405, 1.000000e+00
  %411 = fmul fast float %409, %410
  %412 = call float @dx.op.unary.f32(i32 6, float %411)  ; FAbs(value)
  %413 = extractvalue %dx.types.CBufRet.f32 %407, 3
  %414 = fcmp fast oge float %412, %413
  %415 = select i1 %414, float 0x4197782600000000, float %412
  br i1 %382, label %486, label %416, !dx.controlflow.hints !62

; <label>:416                                     ; preds = %348
  %417 = fmul fast float %54, %389
  %418 = fmul fast float %56, %390
  %419 = fsub fast float 1.000000e+00, %417
  %420 = fsub fast float 1.000000e+00, %418
  %421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.f32 %421, 0
  %423 = extractvalue %dx.types.CBufRet.f32 %421, 1
  %424 = extractvalue %dx.types.CBufRet.f32 %421, 2
  %425 = fmul fast float %419, %422
  %426 = fmul fast float %419, %423
  %427 = fmul fast float %419, %424
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 0
  %430 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %431 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %432 = fmul fast float %420, %429
  %433 = fmul fast float %420, %430
  %434 = fmul fast float %420, %431
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %435, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %435, 2
  %439 = fadd fast float %432, %436
  %440 = fadd fast float %439, %425
  %441 = fadd fast float %433, %437
  %442 = fadd fast float %441, %426
  %443 = fadd fast float %434, %438
  %444 = fadd fast float %443, %427
  %445 = fmul fast float %440, %415
  %446 = fmul fast float %442, %415
  %447 = fmul fast float %444, %415
  %448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %449 = extractvalue %dx.types.CBufRet.f32 %448, 0
  %450 = extractvalue %dx.types.CBufRet.f32 %448, 1
  %451 = extractvalue %dx.types.CBufRet.f32 %448, 2
  %452 = fadd fast float %445, %449
  %453 = fadd fast float %446, %450
  %454 = fadd fast float %447, %451
  %455 = call float @dx.op.dot3.f32(i32 55, float %452, float %453, float %454, float %452, float %453, float %454)  ; Dot3(ax,ay,az,bx,by,bz)
  %456 = fsub fast float 1.000000e+00, %455
  %457 = fcmp fast olt float %456, %358
  %458 = fcmp fast ogt float %456, %357
  %459 = or i1 %457, %458
  %460 = select i1 %459, float 0.000000e+00, float %456
  %461 = fsub fast float %357, %358
  %462 = fsub fast float %460, %358
  %463 = fdiv fast float %462, %461
  %464 = call float @dx.op.unary.f32(i32 7, float %463)  ; Saturate(value)
  %465 = fmul fast float %464, 2.000000e+00
  %466 = fsub fast float 3.000000e+00, %465
  %467 = fmul fast float %464, %464
  %468 = fmul fast float %467, %466
  %469 = fsub fast float %365, %371
  %470 = fmul fast float %468, %469
  %471 = fadd fast float %470, %371
  %472 = fmul fast float %362, %21
  %473 = fmul fast float %363, %22
  %474 = fmul fast float %364, %23
  %475 = fsub fast float %472, %368
  %476 = fsub fast float %473, %369
  %477 = fsub fast float %474, %370
  %478 = fmul fast float %468, %475
  %479 = fmul fast float %468, %476
  %480 = fmul fast float %468, %477
  %481 = fadd fast float %478, %368
  %482 = fadd fast float %479, %369
  %483 = fadd fast float %480, %370
  %484 = fmul fast float %351, %351
  %485 = fmul fast float %484, %460
  br label %577

; <label>:486                                     ; preds = %348
  %487 = and i32 %373, 256
  %488 = icmp eq i32 %487, 0
  %489 = fsub fast float %415, %42
  br i1 %488, label %538, label %490

; <label>:490                                     ; preds = %486
  %491 = fadd fast float %357, %42
  %492 = fcmp fast olt float %415, %42
  %493 = fcmp fast ogt float %415, %491
  %494 = or i1 %492, %493
  %495 = select i1 %494, float 0.000000e+00, float %489
  %496 = call float @dx.op.unary.f32(i32 83, float %415)  ; DerivCoarseX(value)
  %497 = call float @dx.op.unary.f32(i32 84, float %415)  ; DerivCoarseY(value)
  %498 = fmul fast float %496, %496
  %499 = fmul fast float %497, %497
  %500 = fadd fast float %499, %498
  %501 = call float @dx.op.unary.f32(i32 24, float %500)  ; Sqrt(value)
  %502 = extractvalue %dx.types.CBufRet.f32 %395, 2
  %503 = fmul fast float %502, %501
  %504 = call float @dx.op.unary.f32(i32 7, float %503)  ; Saturate(value)
  %505 = fmul fast float %504, %358
  %506 = fdiv fast float %489, %505
  %507 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  %508 = fmul fast float %507, 2.000000e+00
  %509 = fsub fast float 3.000000e+00, %508
  %510 = fmul fast float %507, %507
  %511 = fmul fast float %510, %509
  %512 = fsub fast float %415, %491
  %513 = fadd fast float %512, %505
  %514 = fdiv fast float %513, %505
  %515 = call float @dx.op.unary.f32(i32 7, float %514)  ; Saturate(value)
  %516 = fmul fast float %515, 2.000000e+00
  %517 = fsub fast float 3.000000e+00, %516
  %518 = fmul fast float %515, %515
  %519 = fmul fast float %518, %517
  %520 = fsub fast float %511, %519
  %521 = fsub fast float %365, %371
  %522 = fmul fast float %520, %521
  %523 = fadd fast float %522, %371
  %524 = fmul fast float %362, %21
  %525 = fmul fast float %363, %22
  %526 = fmul fast float %364, %23
  %527 = fsub fast float %524, %368
  %528 = fsub fast float %525, %369
  %529 = fsub fast float %526, %370
  %530 = fmul fast float %520, %527
  %531 = fmul fast float %520, %528
  %532 = fmul fast float %520, %529
  %533 = fadd fast float %530, %368
  %534 = fadd fast float %531, %369
  %535 = fadd fast float %532, %370
  %536 = fmul fast float %495, %351
  %537 = call float @dx.op.unary.f32(i32 6, float %536)  ; FAbs(value)
  br label %577

; <label>:538                                     ; preds = %486
  br i1 %376, label %539, label %550

; <label>:539                                     ; preds = %538
  %540 = select i1 %378, float 5.000000e+01, float 1.000000e+00
  %541 = fmul fast float %540, %351
  %542 = fmul fast float %34, 2.000000e+00
  %543 = fmul fast float %35, 2.000000e+00
  %544 = fadd fast float %542, -1.000000e+00
  %545 = fadd fast float %543, -1.000000e+00
  %546 = call float @dx.op.dot2.f32(i32 54, float %544, float %545, float %544, float %545)  ; Dot2(ax,ay,bx,by)
  %547 = fmul fast float %546, %359
  %548 = fsub fast float %489, %547
  %549 = fmul fast float %541, %548
  br label %577

; <label>:550                                     ; preds = %538
  br i1 %380, label %570, label %551

; <label>:551                                     ; preds = %550
  %552 = select i1 %378, float 0x3F947AE140000000, float 1.000000e+00
  %553 = fdiv fast float 1.000000e+00, %552
  %554 = fmul fast float %552, %352
  %555 = fmul fast float %552, %353
  %556 = fmul fast float %553, %354
  %557 = call float @dx.op.unary.f32(i32 6, float %489)  ; FAbs(value)
  %558 = fcmp fast olt float %557, %554
  br i1 %558, label %559, label %563, !dx.controlflow.hints !63

; <label>:559                                     ; preds = %551
  %560 = fmul fast float %553, %351
  %561 = fmul fast float %560, %557
  %562 = call float @dx.op.unary.f32(i32 6, float %561)  ; FAbs(value)
  br label %577

; <label>:563                                     ; preds = %551
  %564 = fcmp fast ogt float %557, %555
  br i1 %564, label %565, label %577

; <label>:565                                     ; preds = %563
  %566 = fsub fast float %557, %555
  %567 = fmul fast float %556, %566
  %568 = call float @dx.op.unary.f32(i32 6, float %567)  ; FAbs(value)
  %569 = fsub fast float 1.000000e+00, %568
  br label %577

; <label>:570                                     ; preds = %550
  %571 = select i1 %378, float 5.000000e+01, float 1.000000e+00
  %572 = fmul fast float %571, %351
  %573 = call float @dx.op.unary.f32(i32 6, float %327)  ; FAbs(value)
  %574 = select i1 %375, float %573, float 0x47EFFFFFE0000000
  %575 = call float @dx.op.binary.f32(i32 36, float %489, float %574)  ; FMin(a,b)
  %576 = fmul fast float %572, %575
  br label %577

; <label>:577                                     ; preds = %570, %565, %563, %559, %539, %490, %416
  %578 = phi float [ %485, %416 ], [ %537, %490 ], [ %549, %539 ], [ %576, %570 ], [ %562, %559 ], [ %569, %565 ], [ %557, %563 ]
  %579 = phi float [ %481, %416 ], [ %533, %490 ], [ %21, %539 ], [ %21, %570 ], [ %21, %559 ], [ %21, %565 ], [ %21, %563 ]
  %580 = phi float [ %482, %416 ], [ %534, %490 ], [ %22, %539 ], [ %22, %570 ], [ %22, %559 ], [ %22, %565 ], [ %22, %563 ]
  %581 = phi float [ %483, %416 ], [ %535, %490 ], [ %23, %539 ], [ %23, %570 ], [ %23, %559 ], [ %23, %565 ], [ %23, %563 ]
  %582 = phi float [ %471, %416 ], [ %523, %490 ], [ 1.000000e+00, %539 ], [ 1.000000e+00, %570 ], [ 1.000000e+00, %559 ], [ 1.000000e+00, %565 ], [ 1.000000e+00, %563 ]
  %583 = call float @dx.op.unary.f32(i32 7, float %578)  ; Saturate(value)
  %584 = fmul fast float %582, %306
  %585 = fmul fast float %584, %583
  br label %586

; <label>:586                                     ; preds = %577, %345
  %587 = phi float [ %585, %577 ], [ %306, %345 ]
  %588 = phi float [ %579, %577 ], [ %21, %345 ]
  %589 = phi float [ %580, %577 ], [ %22, %345 ]
  %590 = phi float [ %581, %577 ], [ %23, %345 ]
  %591 = fmul fast float %588, %24
  %592 = fmul fast float %589, %24
  %593 = fmul fast float %590, %24
  %594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %595 = extractvalue %dx.types.CBufRet.f32 %594, 2
  %596 = fptosi float %42 to i32
  %597 = sitofp i32 %596 to float
  %598 = fadd fast float %595, %597
  %599 = fmul fast float %598, 0x3FE3C6EF40000000
  %600 = frem fast float %49, 2.560000e+02
  %601 = frem fast float %50, 2.560000e+02
  %602 = fptoui float %600 to i32
  %603 = fptoui float %601 to i32
  %604 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %602, i32 %603, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = fadd fast float %605, %599
  %607 = call float @dx.op.unary.f32(i32 22, float %606)  ; Frc(value)
  %608 = and i32 %169, 1
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %666, label %610, !dx.controlflow.hints !64

; <label>:610                                     ; preds = %586
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 2
  %613 = extractvalue %dx.types.ResRet.f32 %611, 3
  %614 = add i32 %166, 16
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = add i32 %166, 32
  %620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.f32 %620, 0
  %622 = extractvalue %dx.types.ResRet.f32 %620, 1
  %623 = extractvalue %dx.types.ResRet.f32 %620, 2
  %624 = and i32 %169, 2
  %625 = icmp eq i32 %624, 0
  %626 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = call float @dx.op.unary.f32(i32 25, float %626)  ; Rsqrt(value)
  %628 = fmul fast float %627, %30
  %629 = fmul fast float %627, %31
  %630 = fmul fast float %627, %32
  %631 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %632 = call float @dx.op.unary.f32(i32 25, float %631)  ; Rsqrt(value)
  %633 = fmul fast float %632, %84
  %634 = fmul fast float %632, %85
  %635 = fmul fast float %632, %86
  %636 = call float @dx.op.dot3.f32(i32 55, float %633, float %634, float %635, float %628, float %629, float %630)  ; Dot3(ax,ay,az,bx,by,bz)
  %637 = fmul fast float %636, %636
  %638 = fmul fast float %637, %612
  %639 = fadd fast float %638, %613
  %640 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  br i1 %625, label %641, label %651, !dx.controlflow.hints !65

; <label>:641                                     ; preds = %610
  %642 = extractvalue %dx.types.ResRet.f32 %611, 1
  %643 = extractvalue %dx.types.ResRet.f32 %611, 0
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 3
  %646 = fmul fast float %645, %631
  %647 = fsub fast float %643, %646
  %648 = fmul fast float %647, %642
  %649 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %650 = fmul fast float %649, %640
  br label %651

; <label>:651                                     ; preds = %641, %610
  %652 = phi float [ %650, %641 ], [ %640, %610 ]
  %653 = fsub fast float %616, %621
  %654 = fsub fast float %617, %622
  %655 = fsub fast float %618, %623
  %656 = fmul fast float %652, %653
  %657 = fmul fast float %652, %654
  %658 = fmul fast float %652, %655
  %659 = fadd fast float %656, %621
  %660 = fadd fast float %657, %622
  %661 = fadd fast float %658, %623
  %662 = fmul fast float %659, %591
  %663 = fmul fast float %660, %592
  %664 = fmul fast float %661, %593
  %665 = fmul fast float %652, %587
  br label %666

; <label>:666                                     ; preds = %651, %586
  %667 = phi float [ %665, %651 ], [ %587, %586 ]
  %668 = phi float [ %662, %651 ], [ %591, %586 ]
  %669 = phi float [ %663, %651 ], [ %592, %586 ]
  %670 = phi float [ %664, %651 ], [ %593, %586 ]
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = add i32 %672, 0
  %674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %674, %dx.types.Handle %45, float %206, float %207, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %676 = extractvalue %dx.types.ResRet.f32 %675, 0
  %677 = extractvalue %dx.types.ResRet.f32 %675, 1
  %678 = extractvalue %dx.types.ResRet.f32 %675, 2
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = shl i32 %680, 4
  %682 = and i32 %681, 32752
  %683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %682)  ; LegacyF16ToF32(value)
  %684 = lshr i32 %680, 7
  %685 = and i32 %684, 32752
  %686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %685)  ; LegacyF16ToF32(value)
  %687 = lshr i32 %680, 22
  %688 = shl nuw nsw i32 %687, 5
  %689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %688)  ; LegacyF16ToF32(value)
  %690 = fmul fast float %683, %676
  %691 = fmul fast float %686, %677
  %692 = fmul fast float %689, %678
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %695 = fmul fast float %690, %694
  %696 = fmul fast float %691, %694
  %697 = fmul fast float %692, %694
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = lshr i32 %699, 22
  %701 = shl nuw nsw i32 %700, 5
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = fmul fast float %702, %695
  %704 = select i1 %149, float %703, float %695
  %705 = fmul fast float %704, %668
  %706 = fmul fast float %696, %669
  %707 = fmul fast float %697, %670
  %708 = call float @dx.op.dot3.f32(i32 55, float %705, float %706, float %707, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %709 = select i1 %149, float 0.000000e+00, float %705
  %710 = select i1 %149, float %708, float %706
  %711 = select i1 %149, float 0.000000e+00, float %707
  %712 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %309, i32 %310, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = lshr i32 %713, 18
  %715 = uitofp i32 %714 to float
  %716 = fmul fast float %715, 0x3F4C00EBA0000000
  %717 = call float @dx.op.unary.f32(i32 21, float %716)  ; Exp(value)
  %718 = fadd fast float %717, -1.000000e+00
  %719 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %720 = extractvalue %dx.types.Dimensions %719, 0
  %721 = sitofp i32 %720 to float
  %722 = extractvalue %dx.types.Dimensions %719, 1
  %723 = sitofp i32 %722 to float
  %724 = fcmp fast oge float %307, %721
  %725 = fcmp fast oge float %308, %723
  %726 = or i1 %724, %725
  %727 = select i1 %726, float 0x4197782600000000, float %718
  %728 = icmp eq i32 %165, 3
  %729 = fcmp fast ogt float %42, %727
  %730 = and i1 %333, %729
  %731 = or i1 %728, %730
  %732 = icmp eq i32 %165, 2
  %733 = fcmp fast ole float %42, %727
  %734 = and i1 %732, %733
  %735 = or i1 %734, %731
  %736 = fmul fast float %33, %25
  %737 = fmul fast float %736, %588
  %738 = fmul fast float %737, %704
  %739 = fmul fast float %33, %26
  %740 = fmul fast float %739, %589
  %741 = fmul fast float %740, %696
  %742 = fmul fast float %33, %27
  %743 = fmul fast float %742, %590
  %744 = fmul fast float %743, %697
  %745 = fadd fast float %709, %738
  %746 = fadd fast float %710, %741
  %747 = fadd fast float %711, %744
  %748 = fmul fast float %745, %667
  %749 = fmul fast float %746, %667
  %750 = fmul fast float %747, %667
  %751 = and i32 %169, 1048576
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %844, label %753, !dx.controlflow.hints !66

; <label>:753                                     ; preds = %666
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 3
  %757 = fmul fast float %755, %49
  %758 = fmul fast float %756, %50
  %759 = call float @dx.op.unary.f32(i32 7, float %757)  ; Saturate(value)
  %760 = call float @dx.op.unary.f32(i32 7, float %758)  ; Saturate(value)
  %761 = select i1 %735, i32 2, i32 0
  %762 = or i32 %761, 1
  %763 = uitofp i32 %762 to float
  %764 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %759, float %760, float %763, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %765 = extractvalue %dx.types.ResRet.f32 %764, 0
  %766 = extractvalue %dx.types.ResRet.f32 %764, 1
  %767 = extractvalue %dx.types.ResRet.f32 %764, 2
  %768 = extractvalue %dx.types.ResRet.f32 %764, 3
  %769 = add nuw nsw i32 %761, 2
  %770 = uitofp i32 %769 to float
  %771 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %759, float %760, float %770, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = call float @dx.op.binary.f32(i32 35, float %766, float %767)  ; FMax(a,b)
  %777 = call float @dx.op.binary.f32(i32 35, float %765, float %776)  ; FMax(a,b)
  %778 = call float @dx.op.binary.f32(i32 35, float %777, float %768)  ; FMax(a,b)
  %779 = call float @dx.op.binary.f32(i32 36, float %773, float %774)  ; FMin(a,b)
  %780 = call float @dx.op.binary.f32(i32 36, float %772, float %779)  ; FMin(a,b)
  %781 = call float @dx.op.binary.f32(i32 36, float %780, float %775)  ; FMin(a,b)
  %782 = fmul fast float %778, 2.550000e+02
  %783 = fadd fast float %782, 0x3F70101020000000
  %784 = fptoui float %783 to i32
  %785 = fmul fast float %781, 2.550000e+02
  %786 = fadd fast float %785, 0x3F70101020000000
  %787 = fptoui float %786 to i32
  %788 = icmp ult i32 %784, %787
  br i1 %788, label %789, label %837

; <label>:789                                     ; preds = %753
  %790 = fcmp fast ogt float %41, 9.843750e-01
  %791 = fadd fast float %42, -4.000000e+00
  %792 = select i1 %790, float -4.000000e+00, float %791
  %793 = call float @dx.op.binary.f32(i32 35, float %792, float 0.000000e+00)  ; FMax(a,b)
  %794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %795 = extractvalue %dx.types.CBufRet.f32 %794, 0
  %796 = fadd fast float %795, %793
  %797 = extractvalue %dx.types.CBufRet.f32 %794, 2
  %798 = fmul fast float %796, %797
  %799 = call float @dx.op.unary.f32(i32 23, float %798)  ; Log(value)
  %800 = extractvalue %dx.types.CBufRet.f32 %794, 3
  %801 = fmul fast float %800, %799
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 2
  %804 = fmul fast float %801, %803
  %805 = call float @dx.op.unary.f32(i32 7, float %804)  ; Saturate(value)
  %806 = uitofp i32 %784 to float
  %807 = uitofp i32 %787 to float
  %808 = fadd fast float %806, 5.000000e-01
  %809 = fadd fast float %807, 5.000000e-01
  %810 = fmul fast float %803, %808
  %811 = fmul fast float %803, %809
  %812 = fadd fast float %810, 0x3F0FFB4800000000
  %813 = fadd fast float %811, 0xBF0FFB4800000000
  %814 = call float @dx.op.binary.f32(i32 35, float %805, float %812)  ; FMax(a,b)
  %815 = call float @dx.op.binary.f32(i32 36, float %814, float %813)  ; FMin(a,b)
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 1
  %818 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %819 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %820 = select i1 %735, float %819, float 0.000000e+00
  %821 = fmul fast float %817, %815
  %822 = fadd fast float %820, %821
  %823 = fadd fast float %820, %818
  %824 = fsub fast float %817, %818
  %825 = fadd fast float %824, %820
  %826 = call float @dx.op.binary.f32(i32 35, float %822, float %823)  ; FMax(a,b)
  %827 = call float @dx.op.binary.f32(i32 36, float %826, float %825)  ; FMin(a,b)
  %828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %15, float %759, float %760, float %827, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  %830 = extractvalue %dx.types.ResRet.f32 %828, 1
  %831 = extractvalue %dx.types.ResRet.f32 %828, 2
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %834 = fmul fast float %833, %829
  %835 = fmul fast float %833, %830
  %836 = fmul fast float %833, %831
  br label %837

; <label>:837                                     ; preds = %789, %753
  %838 = phi float [ %834, %789 ], [ 1.000000e+00, %753 ]
  %839 = phi float [ %835, %789 ], [ 1.000000e+00, %753 ]
  %840 = phi float [ %836, %789 ], [ 1.000000e+00, %753 ]
  %841 = fmul fast float %838, %748
  %842 = fmul fast float %839, %749
  %843 = fmul fast float %840, %750
  br label %844

; <label>:844                                     ; preds = %837, %666
  %845 = phi float [ %841, %837 ], [ %748, %666 ]
  %846 = phi float [ %842, %837 ], [ %749, %666 ]
  %847 = phi float [ %843, %837 ], [ %750, %666 ]
  %848 = and i32 %169, 2097152
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %854, label %850, !dx.controlflow.hints !67

; <label>:850                                     ; preds = %844
  %851 = add i32 %166, 192
  %852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  br label %857

; <label>:854                                     ; preds = %844
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 3
  br label %857

; <label>:857                                     ; preds = %854, %850
  %858 = phi float [ %853, %850 ], [ %856, %854 ]
  br i1 %730, label %859, label %974

; <label>:859                                     ; preds = %857
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %862 = extractvalue %dx.types.CBufRet.f32 %860, 3
  %863 = fmul fast float %861, %49
  %864 = fmul fast float %862, %50
  %865 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  %866 = call float @dx.op.unary.f32(i32 7, float %864)  ; Saturate(value)
  %867 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %865, float %866, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 0
  %869 = extractvalue %dx.types.ResRet.f32 %867, 1
  %870 = extractvalue %dx.types.ResRet.f32 %867, 2
  %871 = extractvalue %dx.types.ResRet.f32 %867, 3
  %872 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %865, float %866, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %873 = extractvalue %dx.types.ResRet.f32 %872, 0
  %874 = extractvalue %dx.types.ResRet.f32 %872, 1
  %875 = extractvalue %dx.types.ResRet.f32 %872, 2
  %876 = extractvalue %dx.types.ResRet.f32 %872, 3
  %877 = call float @dx.op.binary.f32(i32 35, float %869, float %870)  ; FMax(a,b)
  %878 = call float @dx.op.binary.f32(i32 35, float %868, float %877)  ; FMax(a,b)
  %879 = call float @dx.op.binary.f32(i32 35, float %878, float %871)  ; FMax(a,b)
  %880 = call float @dx.op.binary.f32(i32 36, float %874, float %875)  ; FMin(a,b)
  %881 = call float @dx.op.binary.f32(i32 36, float %873, float %880)  ; FMin(a,b)
  %882 = call float @dx.op.binary.f32(i32 36, float %881, float %876)  ; FMin(a,b)
  %883 = fmul fast float %879, 2.550000e+02
  %884 = fadd fast float %883, 0x3F70101020000000
  %885 = fptoui float %884 to i32
  %886 = fmul fast float %882, 2.550000e+02
  %887 = fadd fast float %886, 0x3F70101020000000
  %888 = fptoui float %887 to i32
  %889 = icmp ult i32 %885, %888
  br i1 %889, label %890, label %932

; <label>:890                                     ; preds = %859
  %891 = fcmp fast ogt float %41, 9.843750e-01
  %892 = fadd fast float %42, -4.000000e+00
  %893 = select i1 %891, float -4.000000e+00, float %892
  %894 = call float @dx.op.binary.f32(i32 35, float %893, float 0.000000e+00)  ; FMax(a,b)
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = fadd fast float %896, %894
  %898 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %899 = fmul fast float %897, %898
  %900 = call float @dx.op.unary.f32(i32 23, float %899)  ; Log(value)
  %901 = extractvalue %dx.types.CBufRet.f32 %895, 3
  %902 = fmul fast float %901, %900
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 2
  %905 = fmul fast float %902, %904
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = uitofp i32 %885 to float
  %908 = uitofp i32 %888 to float
  %909 = fadd fast float %907, 5.000000e-01
  %910 = fadd fast float %908, 5.000000e-01
  %911 = fmul fast float %904, %909
  %912 = fmul fast float %904, %910
  %913 = fadd fast float %911, 0x3F0FFB4800000000
  %914 = fadd fast float %912, 0xBF0FFB4800000000
  %915 = call float @dx.op.binary.f32(i32 35, float %906, float %913)  ; FMax(a,b)
  %916 = call float @dx.op.binary.f32(i32 36, float %915, float %914)  ; FMin(a,b)
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %919 = extractvalue %dx.types.CBufRet.f32 %917, 2
  %920 = extractvalue %dx.types.CBufRet.f32 %917, 0
  %921 = fmul fast float %918, %916
  %922 = fadd fast float %920, %921
  %923 = fadd fast float %920, %919
  %924 = fsub fast float %918, %919
  %925 = fadd fast float %924, %920
  %926 = call float @dx.op.binary.f32(i32 35, float %922, float %923)  ; FMax(a,b)
  %927 = call float @dx.op.binary.f32(i32 36, float %926, float %925)  ; FMin(a,b)
  %928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %865, float %866, float %927, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = extractvalue %dx.types.ResRet.f32 %928, 1
  %931 = extractvalue %dx.types.ResRet.f32 %928, 2
  br label %932

; <label>:932                                     ; preds = %890, %859
  %933 = phi float [ %929, %890 ], [ 1.000000e+00, %859 ]
  %934 = phi float [ %930, %890 ], [ 1.000000e+00, %859 ]
  %935 = phi float [ %931, %890 ], [ 1.000000e+00, %859 ]
  %936 = call float @dx.op.dot3.f32(i32 55, float %933, float %934, float %935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %937 = select i1 %149, float %936, float %933
  %938 = select i1 %149, float %936, float %934
  %939 = select i1 %149, float 1.000000e+00, float %935
  %940 = fmul fast float %937, %845
  %941 = fmul fast float %938, %846
  %942 = fmul fast float %939, %847
  %943 = fmul fast float %54, %861
  %944 = fmul fast float %56, %862
  %945 = fsub fast float 1.000000e+00, %943
  %946 = fsub fast float 1.000000e+00, %944
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = extractvalue %dx.types.CBufRet.f32 %947, 1
  %950 = extractvalue %dx.types.CBufRet.f32 %947, 2
  %951 = fmul fast float %945, %948
  %952 = fmul fast float %945, %949
  %953 = fmul fast float %945, %950
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 0
  %956 = extractvalue %dx.types.CBufRet.f32 %954, 1
  %957 = extractvalue %dx.types.CBufRet.f32 %954, 2
  %958 = fmul fast float %946, %955
  %959 = fmul fast float %946, %956
  %960 = fmul fast float %946, %957
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %963 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %964 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %965 = fadd fast float %958, %962
  %966 = fadd fast float %965, %951
  %967 = fadd fast float %959, %963
  %968 = fadd fast float %967, %952
  %969 = fadd fast float %960, %964
  %970 = fadd fast float %969, %953
  %971 = fmul fast float %966, %727
  %972 = fmul fast float %968, %727
  %973 = fmul fast float %970, %727
  br label %974

; <label>:974                                     ; preds = %932, %857
  %975 = phi float [ %971, %932 ], [ %84, %857 ]
  %976 = phi float [ %972, %932 ], [ %85, %857 ]
  %977 = phi float [ %973, %932 ], [ %86, %857 ]
  %978 = phi float [ %727, %932 ], [ %42, %857 ]
  %979 = phi float [ %940, %932 ], [ %845, %857 ]
  %980 = phi float [ %941, %932 ], [ %846, %857 ]
  %981 = phi float [ %942, %932 ], [ %847, %857 ]
  br i1 %735, label %1857, label %982

; <label>:982                                     ; preds = %974
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %985 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %986 = extractvalue %dx.types.CBufRet.f32 %983, 2
  %987 = extractvalue %dx.types.CBufRet.f32 %983, 3
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %990 = extractvalue %dx.types.CBufRet.f32 %988, 1
  %991 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %992 = extractvalue %dx.types.CBufRet.f32 %988, 3
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 3
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 3
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 3
  %999 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %1000 = extractvalue %dx.types.CBufRet.f32 %997, 1
  %1001 = extractvalue %dx.types.CBufRet.f32 %997, 2
  %1002 = fcmp fast olt float %1001, -5.000000e-01
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 3
  %1005 = call float @dx.op.dot3.f32(i32 55, float %975, float %976, float %977, float %975, float %976, float %977)  ; Dot3(ax,ay,az,bx,by,bz)
  %1006 = call float @dx.op.unary.f32(i32 25, float %1005)  ; Rsqrt(value)
  %1007 = fmul fast float %1006, %1005
  %1008 = fmul fast float %1006, %975
  %1009 = fmul fast float %1006, %976
  %1010 = fmul fast float %1006, %977
  %1011 = fadd fast float %1007, %987
  %1012 = call float @dx.op.dot3.f32(i32 55, float %1008, float %1009, float %1010, float %984, float %985, float %986)  ; Dot3(ax,ay,az,bx,by,bz)
  %1013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1014 = extractvalue %dx.types.CBufRet.i32 %1013, 1
  %1015 = and i32 %1014, 1
  %1016 = icmp ne i32 %1015, 0
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 2
  %1019 = fcmp fast ogt float %1018, 0.000000e+00
  %1020 = and i1 %1016, %1019
  br i1 %1020, label %1021, label %1360, !dx.controlflow.hints !68

; <label>:1021                                    ; preds = %982
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 3
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 2
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 2
  %1028 = fsub fast float %1025, %1027
  %1029 = and i32 %1014, 2
  %1030 = extractvalue %dx.types.CBufRet.i32 %1013, 0
  %1031 = call i32 @dx.op.binary.i32(i32 40, i32 %1030, i32 3)  ; UMin(a,b)
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.CBufRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.CBufRet.f32 %1026, 0
  %1036 = extractvalue %dx.types.CBufRet.f32 %1026, 1
  %1037 = fsub fast float %1033, %1035
  %1038 = fsub fast float %1034, %1036
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 0
  %1041 = fcmp fast ogt float %1040, 0.000000e+00
  %1042 = fsub fast float -0.000000e+00, %1037
  %1043 = fsub fast float -0.000000e+00, %1038
  %1044 = call float @dx.op.dot2.f32(i32 54, float %1008, float %1009, float %1008, float %1009)  ; Dot2(ax,ay,bx,by)
  %1045 = call float @dx.op.dot2.f32(i32 54, float %1008, float %1009, float %1042, float %1043)  ; Dot2(ax,ay,bx,by)
  %1046 = fmul fast float %1045, 2.000000e+00
  %1047 = call float @dx.op.dot2.f32(i32 54, float %1042, float %1043, float %1042, float %1043)  ; Dot2(ax,ay,bx,by)
  %1048 = fmul fast float %1040, %1040
  %1049 = fsub fast float %1047, %1048
  %1050 = fmul fast float %1046, %1046
  %1051 = fmul fast float %1044, 4.000000e+00
  %1052 = fmul fast float %1051, %1049
  %1053 = fsub fast float %1050, %1052
  %1054 = fcmp fast ogt float %1053, 0.000000e+00
  br i1 %1054, label %1055, label %1070

; <label>:1055                                    ; preds = %1021
  %1056 = fcmp fast ogt float %1046, 0.000000e+00
  %1057 = call float @dx.op.unary.f32(i32 24, float %1053)  ; Sqrt(value)
  %1058 = fsub fast float -0.000000e+00, %1057
  %1059 = select i1 %1056, float %1057, float %1058
  %1060 = fadd fast float %1059, %1046
  %1061 = fmul float %1060, -5.000000e-01
  %1062 = fdiv fast float %1061, %1044
  %1063 = call float @dx.op.binary.f32(i32 35, float %1062, float 0.000000e+00)  ; FMax(a,b)
  %1064 = call float @dx.op.binary.f32(i32 36, float %1007, float %1063)  ; FMin(a,b)
  %1065 = fdiv fast float %1049, %1061
  %1066 = call float @dx.op.binary.f32(i32 35, float %1065, float 0.000000e+00)  ; FMax(a,b)
  %1067 = call float @dx.op.binary.f32(i32 36, float %1007, float %1066)  ; FMin(a,b)
  %1068 = call float @dx.op.binary.f32(i32 36, float %1064, float %1067)  ; FMin(a,b)
  %1069 = call float @dx.op.binary.f32(i32 35, float %1064, float %1067)  ; FMax(a,b)
  br label %1070

; <label>:1070                                    ; preds = %1055, %1021
  %1071 = phi float [ %1069, %1055 ], [ -1.000000e+00, %1021 ]
  %1072 = phi float [ %1068, %1055 ], [ -1.000000e+00, %1021 ]
  %1073 = phi i1 [ true, %1055 ], [ false, %1021 ]
  %1074 = and i1 %1041, %1073
  br i1 %1074, label %1075, label %1077

; <label>:1075                                    ; preds = %1070
  %1076 = fcmp fast oeq float %1072, %1071
  br i1 %1076, label %1320, label %1078

; <label>:1077                                    ; preds = %1070
  br i1 %1041, label %1320, label %1078

; <label>:1078                                    ; preds = %1077, %1075
  %1079 = phi float [ %1007, %1077 ], [ %1071, %1075 ]
  %1080 = phi float [ 0.000000e+00, %1077 ], [ %1072, %1075 ]
  %1081 = icmp ne i32 %1029, 0
  %1082 = fmul fast float %1079, %1010
  %1083 = fadd fast float %1082, %1023
  %1084 = fmul fast float %1083, %1079
  %1085 = select i1 %1081, float 0.000000e+00, float %1084
  %1086 = fcmp fast oeq float %1010, 0.000000e+00
  %1087 = fdiv fast float %1028, %1010
  %1088 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1087)  ; FMax(a,b)
  %1089 = select i1 %1086, float %1079, float %1088
  %1090 = call float @dx.op.binary.f32(i32 36, float %1079, float %1089)  ; FMin(a,b)
  %1091 = fcmp fast ogt float %1010, 0.000000e+00
  %1092 = fcmp fast olt float %1028, 0.000000e+00
  br i1 %1091, label %1093, label %1130

; <label>:1093                                    ; preds = %1078
  %1094 = icmp eq i32 %1029, 0
  br i1 %1092, label %1095, label %1119

; <label>:1095                                    ; preds = %1093
  %1096 = select i1 %1094, float %1079, float 0.000000e+00
  %1097 = fsub fast float -0.000000e+00, %1096
  %1098 = call float @dx.op.unary.f32(i32 6, float %1097)  ; FAbs(value)
  %1099 = fmul fast float %1096, %1010
  %1100 = fadd fast float %1099, %1023
  %1101 = fmul fast float %1098, %1100
  %1102 = fsub fast float %1085, %1101
  %1103 = fsub fast float %1079, %1098
  %1104 = select i1 %1094, float %1103, float 0.000000e+00
  %1105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.f32 %1105, 3
  %1107 = call float @dx.op.binary.f32(i32 36, float %1102, float %1106)  ; FMin(a,b)
  %1108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.CBufRet.f32 %1108, 1
  %1111 = fadd fast float %1110, %1109
  %1112 = call float @dx.op.unary.f32(i32 7, float %1111)  ; Saturate(value)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1108, 2
  %1114 = extractvalue %dx.types.CBufRet.f32 %1108, 3
  %1115 = fadd fast float %1114, %1113
  %1116 = call float @dx.op.unary.f32(i32 7, float %1115)  ; Saturate(value)
  %1117 = fmul fast float %1112, %1107
  %1118 = fmul fast float %1117, %1116
  br label %1320

; <label>:1119                                    ; preds = %1093
  br i1 %1094, label %1120, label %1141

; <label>:1120                                    ; preds = %1119
  %1121 = call float @dx.op.binary.f32(i32 36, float %1090, float %1080)  ; FMin(a,b)
  %1122 = fsub fast float %1090, %1121
  %1123 = fsub fast float %1122, %1079
  %1124 = call float @dx.op.unary.f32(i32 6, float %1123)  ; FAbs(value)
  %1125 = fadd fast float %1122, %1079
  %1126 = fmul fast float %1125, %1010
  %1127 = fadd fast float %1126, %1023
  %1128 = fmul fast float %1127, %1124
  %1129 = fsub fast float %1085, %1128
  br label %1141

; <label>:1130                                    ; preds = %1078
  br i1 %1092, label %1131, label %1141

; <label>:1131                                    ; preds = %1130
  %1132 = call float @dx.op.binary.f32(i32 35, float %1080, float %1090)  ; FMax(a,b)
  %1133 = icmp eq i32 %1029, 0
  %1134 = select i1 %1133, float %1090, float 0.000000e+00
  %1135 = fsub fast float -0.000000e+00, %1134
  %1136 = call float @dx.op.unary.f32(i32 6, float %1135)  ; FAbs(value)
  %1137 = fmul fast float %1134, %1010
  %1138 = fadd fast float %1137, %1023
  %1139 = fmul fast float %1136, %1138
  %1140 = fsub fast float %1085, %1139
  br label %1141

; <label>:1141                                    ; preds = %1131, %1130, %1120, %1119
  %1142 = phi float [ %1080, %1119 ], [ %1080, %1120 ], [ %1132, %1131 ], [ %1080, %1130 ]
  %1143 = phi float [ 0.000000e+00, %1119 ], [ %1124, %1120 ], [ %1136, %1131 ], [ 0.000000e+00, %1130 ]
  %1144 = phi float [ %1085, %1119 ], [ %1129, %1120 ], [ %1140, %1131 ], [ %1085, %1130 ]
  %1145 = phi float [ %1090, %1119 ], [ %1090, %1120 ], [ %1079, %1131 ], [ %1079, %1130 ]
  %1146 = getelementptr inbounds [3 x float], [3 x float]* %43, i32 0, i32 0
  store float -1.000000e+00, float* %1146, align 4, !tbaa !69, !noalias !73
  %1147 = getelementptr inbounds [3 x float], [3 x float]* %43, i32 0, i32 1
  store float -1.000000e+00, float* %1147, align 4, !tbaa !69, !noalias !73
  %1148 = getelementptr inbounds [3 x float], [3 x float]* %43, i32 0, i32 2
  store float -1.000000e+00, float* %1148, align 4, !tbaa !69, !noalias !73
  %1149 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 0
  store float -1.000000e+00, float* %1149, align 4, !tbaa !69, !noalias !73
  %1150 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 1
  store float -1.000000e+00, float* %1150, align 4, !tbaa !69, !noalias !73
  %1151 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 2
  store float -1.000000e+00, float* %1151, align 4, !tbaa !69, !noalias !73
  %1152 = icmp sgt i32 %1031, 0
  br i1 %1152, label %1153, label %1214

; <label>:1153                                    ; preds = %1141
  br label %1154

; <label>:1154                                    ; preds = %1203, %1153
  %1155 = phi i32 [ %1204, %1203 ], [ 0, %1153 ]
  %1156 = phi i32 [ %1205, %1203 ], [ 0, %1153 ]
  %1157 = add nuw i32 %1156, 171
  %1158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1157)  ; CBufferLoadLegacy(handle,regIndex)
  %1159 = extractvalue %dx.types.CBufRet.f32 %1158, 0
  %1160 = extractvalue %dx.types.CBufRet.f32 %1158, 1
  %1161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1162 = extractvalue %dx.types.CBufRet.f32 %1161, 0
  %1163 = extractvalue %dx.types.CBufRet.f32 %1161, 1
  %1164 = fsub fast float %1159, %1162
  %1165 = fsub fast float %1160, %1163
  %1166 = extractvalue %dx.types.CBufRet.f32 %1158, 2
  %1167 = fsub fast float -0.000000e+00, %1164
  %1168 = fsub fast float -0.000000e+00, %1165
  %1169 = call float @dx.op.dot2.f32(i32 54, float %1008, float %1009, float %1167, float %1168)  ; Dot2(ax,ay,bx,by)
  %1170 = fmul fast float %1169, 2.000000e+00
  %1171 = call float @dx.op.dot2.f32(i32 54, float %1167, float %1168, float %1167, float %1168)  ; Dot2(ax,ay,bx,by)
  %1172 = fmul fast float %1166, %1166
  %1173 = fsub fast float %1171, %1172
  %1174 = fmul fast float %1170, %1170
  %1175 = fmul fast float %1051, %1173
  %1176 = fsub fast float %1174, %1175
  %1177 = fcmp fast ogt float %1176, 0.000000e+00
  br i1 %1177, label %1178, label %1193

; <label>:1178                                    ; preds = %1154
  %1179 = fcmp fast ogt float %1170, 0.000000e+00
  %1180 = call float @dx.op.unary.f32(i32 24, float %1176)  ; Sqrt(value)
  %1181 = fsub fast float -0.000000e+00, %1180
  %1182 = select i1 %1179, float %1180, float %1181
  %1183 = fadd fast float %1182, %1170
  %1184 = fmul float %1183, -5.000000e-01
  %1185 = fdiv fast float %1184, %1044
  %1186 = call float @dx.op.binary.f32(i32 35, float %1185, float 0.000000e+00)  ; FMax(a,b)
  %1187 = call float @dx.op.binary.f32(i32 36, float %1079, float %1186)  ; FMin(a,b)
  %1188 = fdiv fast float %1173, %1184
  %1189 = call float @dx.op.binary.f32(i32 35, float %1188, float 0.000000e+00)  ; FMax(a,b)
  %1190 = call float @dx.op.binary.f32(i32 36, float %1079, float %1189)  ; FMin(a,b)
  %1191 = call float @dx.op.binary.f32(i32 36, float %1187, float %1190)  ; FMin(a,b)
  %1192 = call float @dx.op.binary.f32(i32 35, float %1187, float %1190)  ; FMax(a,b)
  br label %1193

; <label>:1193                                    ; preds = %1178, %1154
  %1194 = phi float [ %1192, %1178 ], [ -1.000000e+00, %1154 ]
  %1195 = phi float [ %1191, %1178 ], [ -1.000000e+00, %1154 ]
  %1196 = phi i1 [ true, %1178 ], [ false, %1154 ]
  br i1 %1196, label %1197, label %1203

; <label>:1197                                    ; preds = %1193
  %1198 = call float @dx.op.binary.f32(i32 35, float %1142, float %1195)  ; FMax(a,b)
  %1199 = getelementptr inbounds [3 x float], [3 x float]* %43, i32 0, i32 %1156
  store float %1198, float* %1199, align 4, !tbaa !69, !noalias !73
  %1200 = call float @dx.op.binary.f32(i32 35, float %1142, float %1194)  ; FMax(a,b)
  %1201 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 %1156
  store float %1200, float* %1201, align 4, !tbaa !69, !noalias !73
  %1202 = add nsw i32 %1155, 1
  br label %1203

; <label>:1203                                    ; preds = %1197, %1193
  %1204 = phi i32 [ %1202, %1197 ], [ %1155, %1193 ]
  %1205 = add nuw nsw i32 %1156, 1
  %1206 = icmp eq i32 %1205, %1031
  br i1 %1206, label %1207, label %1154

; <label>:1207                                    ; preds = %1203
  %1208 = load float, float* %1148, align 4, !tbaa !69, !alias.scope !89, !noalias !92
  %1209 = load float, float* %1147, align 4, !tbaa !69, !alias.scope !95, !noalias !96
  %1210 = load float, float* %1146, align 4, !tbaa !69, !alias.scope !97, !noalias !98
  %1211 = load float, float* %1151, align 4, !tbaa !69, !alias.scope !99, !noalias !102
  %1212 = load float, float* %1150, align 4, !tbaa !69, !alias.scope !105, !noalias !106
  %1213 = load float, float* %1149, align 4, !tbaa !69, !alias.scope !107, !noalias !108
  br label %1214

; <label>:1214                                    ; preds = %1207, %1141
  %1215 = phi float [ -1.000000e+00, %1141 ], [ %1213, %1207 ]
  %1216 = phi float [ -1.000000e+00, %1141 ], [ %1212, %1207 ]
  %1217 = phi float [ -1.000000e+00, %1141 ], [ %1211, %1207 ]
  %1218 = phi float [ -1.000000e+00, %1141 ], [ %1210, %1207 ]
  %1219 = phi float [ -1.000000e+00, %1141 ], [ %1209, %1207 ]
  %1220 = phi float [ -1.000000e+00, %1141 ], [ %1208, %1207 ]
  %1221 = phi i32 [ 0, %1141 ], [ %1204, %1207 ]
  %1222 = call float @dx.op.binary.f32(i32 36, float %1219, float %1220)  ; FMin(a,b)
  %1223 = call float @dx.op.binary.f32(i32 36, float %1218, float %1222)  ; FMin(a,b)
  %1224 = call float @dx.op.binary.f32(i32 35, float %1218, float %1219)  ; FMax(a,b)
  %1225 = call float @dx.op.binary.f32(i32 36, float %1224, float %1220)  ; FMin(a,b)
  %1226 = call float @dx.op.binary.f32(i32 36, float %1218, float %1219)  ; FMin(a,b)
  %1227 = call float @dx.op.binary.f32(i32 35, float %1226, float %1225)  ; FMax(a,b)
  %1228 = call float @dx.op.binary.f32(i32 35, float %1219, float %1220)  ; FMax(a,b)
  %1229 = call float @dx.op.binary.f32(i32 35, float %1218, float %1228)  ; FMax(a,b)
  store float %1223, float* %1146, align 4, !tbaa !69, !alias.scope !97, !noalias !98
  store float %1227, float* %1147, align 4, !tbaa !69, !alias.scope !95, !noalias !96
  store float %1229, float* %1148, align 4, !tbaa !69, !alias.scope !89, !noalias !92
  %1230 = call float @dx.op.binary.f32(i32 36, float %1216, float %1217)  ; FMin(a,b)
  %1231 = call float @dx.op.binary.f32(i32 36, float %1215, float %1230)  ; FMin(a,b)
  %1232 = call float @dx.op.binary.f32(i32 35, float %1215, float %1216)  ; FMax(a,b)
  %1233 = call float @dx.op.binary.f32(i32 36, float %1232, float %1217)  ; FMin(a,b)
  %1234 = call float @dx.op.binary.f32(i32 36, float %1215, float %1216)  ; FMin(a,b)
  %1235 = call float @dx.op.binary.f32(i32 35, float %1234, float %1233)  ; FMax(a,b)
  %1236 = call float @dx.op.binary.f32(i32 35, float %1216, float %1217)  ; FMax(a,b)
  %1237 = call float @dx.op.binary.f32(i32 35, float %1215, float %1236)  ; FMax(a,b)
  store float %1231, float* %1149, align 4, !tbaa !69, !alias.scope !107, !noalias !108
  store float %1235, float* %1150, align 4, !tbaa !69, !alias.scope !105, !noalias !106
  store float %1237, float* %1151, align 4, !tbaa !69, !alias.scope !99, !noalias !102
  %1238 = sub nsw i32 3, %1221
  %1239 = icmp sgt i32 %1238, 2
  br i1 %1239, label %1240, label %1258

; <label>:1240                                    ; preds = %1214
  %1241 = icmp eq i32 %1029, 0
  %1242 = fsub fast float %1079, %1143
  %1243 = select i1 %1241, float %1242, float %1143
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 3
  %1246 = call float @dx.op.binary.f32(i32 36, float %1144, float %1245)  ; FMin(a,b)
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.CBufRet.f32 %1247, 1
  %1250 = fadd fast float %1249, %1248
  %1251 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1247, 2
  %1253 = extractvalue %dx.types.CBufRet.f32 %1247, 3
  %1254 = fadd fast float %1253, %1252
  %1255 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1256 = fmul fast float %1251, %1246
  %1257 = fmul fast float %1256, %1255
  br label %1320

; <label>:1258                                    ; preds = %1214
  %1259 = getelementptr inbounds [3 x float], [3 x float]* %43, i32 0, i32 %1238
  %1260 = load float, float* %1259, align 4, !tbaa !69, !noalias !73
  %1261 = fcmp fast olt float %1260, %1145
  %1262 = icmp sgt i32 %1221, 0
  %1263 = and i1 %1262, %1261
  br i1 %1263, label %1264, label %1301

; <label>:1264                                    ; preds = %1258
  br label %1265

; <label>:1265                                    ; preds = %1294, %1264
  %1266 = phi float [ %1295, %1294 ], [ %1143, %1264 ]
  %1267 = phi float [ %1296, %1294 ], [ %1144, %1264 ]
  %1268 = phi float [ %1276, %1294 ], [ %1260, %1264 ]
  %1269 = phi i32 [ %1273, %1294 ], [ %1238, %1264 ]
  %1270 = getelementptr inbounds [3 x float], [3 x float]* %44, i32 0, i32 %1269
  %1271 = load float, float* %1270, align 4, !tbaa !69, !noalias !73
  %1272 = icmp slt i32 %1269, 2
  %1273 = add nsw i32 %1269, 1
  %1274 = getelementptr inbounds [3 x float], [3 x float]* %43, i32 0, i32 %1273
  %1275 = load float, float* %1274, align 4, !tbaa !69, !noalias !73
  %1276 = select i1 %1272, float %1275, float %1079
  %1277 = call float @dx.op.binary.f32(i32 36, float %1276, float %1271)  ; FMin(a,b)
  %1278 = call float @dx.op.binary.f32(i32 36, float %1145, float %1277)  ; FMin(a,b)
  %1279 = icmp eq i32 %1029, 0
  %1280 = fadd fast float %1278, %1268
  %1281 = fmul fast float %1280, %1010
  %1282 = fadd fast float %1281, %1023
  br i1 %1279, label %1288, label %1283

; <label>:1283                                    ; preds = %1265
  %1284 = fsub fast float %1278, %1268
  %1285 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1284)  ; FMax(a,b)
  %1286 = fmul fast float %1285, %1282
  %1287 = fadd fast float %1286, %1267
  br label %1294

; <label>:1288                                    ; preds = %1265
  %1289 = fsub fast float %1268, %1278
  %1290 = call float @dx.op.unary.f32(i32 6, float %1289)  ; FAbs(value)
  %1291 = fadd fast float %1290, %1266
  %1292 = fmul fast float %1290, %1282
  %1293 = fsub fast float %1267, %1292
  br label %1294

; <label>:1294                                    ; preds = %1288, %1283
  %1295 = phi float [ %1285, %1283 ], [ %1291, %1288 ]
  %1296 = phi float [ %1287, %1283 ], [ %1293, %1288 ]
  %1297 = fcmp fast olt float %1276, %1145
  %1298 = icmp slt i32 %1273, 3
  %1299 = and i1 %1298, %1297
  br i1 %1299, label %1265, label %1300

; <label>:1300                                    ; preds = %1294
  br label %1301

; <label>:1301                                    ; preds = %1300, %1258
  %1302 = phi float [ %1143, %1258 ], [ %1295, %1300 ]
  %1303 = phi float [ %1144, %1258 ], [ %1296, %1300 ]
  %1304 = fsub fast float %1079, %1302
  %1305 = select i1 %1081, float %1302, float %1304
  %1306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1307 = extractvalue %dx.types.CBufRet.f32 %1306, 3
  %1308 = call float @dx.op.binary.f32(i32 36, float %1303, float %1307)  ; FMin(a,b)
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.CBufRet.f32 %1309, 1
  %1312 = fadd fast float %1311, %1310
  %1313 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1309, 2
  %1315 = extractvalue %dx.types.CBufRet.f32 %1309, 3
  %1316 = fadd fast float %1315, %1314
  %1317 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1318 = fmul fast float %1313, %1308
  %1319 = fmul fast float %1318, %1317
  br label %1320

; <label>:1320                                    ; preds = %1301, %1240, %1095, %1077, %1075
  %1321 = phi float [ %1104, %1095 ], [ %1243, %1240 ], [ %1305, %1301 ], [ 0.000000e+00, %1075 ], [ 0.000000e+00, %1077 ]
  %1322 = phi float [ %1118, %1095 ], [ %1257, %1240 ], [ %1319, %1301 ], [ 0.000000e+00, %1075 ], [ 0.000000e+00, %1077 ]
  %1323 = fmul fast float %1018, %1322
  %1324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1324, 2
  %1326 = fsub fast float %1025, %1325
  %1327 = fcmp fast olt float %1323, -2.000000e+01
  %1328 = call float @dx.op.unary.f32(i32 21, float %1323)  ; Exp(value)
  %1329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1330 = extractvalue %dx.types.CBufRet.f32 %1329, 2
  %1331 = extractvalue %dx.types.CBufRet.f32 %1329, 3
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 2
  %1334 = fmul fast float %1331, %1326
  %1335 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1336 = fsub fast float 1.000000e+00, %1335
  %1337 = fmul fast float %1010, 5.000000e-01
  %1338 = fadd fast float %1337, 5.000000e-01
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = fsub fast float 1.000000e+00, %1339
  %1341 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1336)  ; FMax(a,b)
  %1342 = fdiv fast float %1340, %1341
  %1343 = fsub fast float %1326, %977
  %1344 = call float @dx.op.unary.f32(i32 6, float %1343)  ; FAbs(value)
  %1345 = fmul fast float %1344, %1330
  %1346 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1347 = fsub fast float 1.000000e+00, %1345
  %1348 = fmul fast float %1347, %1346
  %1349 = fadd fast float %1348, %1345
  %1350 = fmul fast float %1333, %1326
  %1351 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  %1352 = fsub fast float 1.000000e+00, %1349
  %1353 = fmul fast float %1352, %1351
  %1354 = fadd fast float %1353, %1349
  %1355 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1356 = fadd fast float %1328, -1.000000e+00
  %1357 = select i1 %1327, float -1.000000e+00, float %1356
  %1358 = fmul fast float %1355, %1357
  %1359 = fadd fast float %1358, 1.000000e+00
  br label %1360

; <label>:1360                                    ; preds = %1320, %982
  %1361 = phi float [ %1321, %1320 ], [ 0.000000e+00, %982 ]
  %1362 = phi float [ %1359, %1320 ], [ 1.000000e+00, %982 ]
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 1
  %1365 = fsub fast float 1.000000e+00, %1362
  %1366 = fmul fast float %1365, %1011
  %1367 = fmul fast float %1366, %1364
  %1368 = fsub fast float %1011, %1367
  br i1 %1002, label %1369, label %1385, !dx.controlflow.hints !109

; <label>:1369                                    ; preds = %1360
  %1370 = fmul fast float %1012, %999
  %1371 = fadd fast float %1370, %1000
  %1372 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1373 = fmul fast float %989, %1368
  %1374 = fsub fast float -0.000000e+00, %1373
  %1375 = fmul fast float %990, %1368
  %1376 = fsub fast float -0.000000e+00, %1375
  %1377 = call float @dx.op.unary.f32(i32 21, float %1374)  ; Exp(value)
  %1378 = call float @dx.op.unary.f32(i32 21, float %1376)  ; Exp(value)
  %1379 = call float @dx.op.binary.f32(i32 35, float %1004, float %1377)  ; FMax(a,b)
  %1380 = call float @dx.op.binary.f32(i32 35, float %1004, float %1378)  ; FMax(a,b)
  %1381 = fsub fast float %1380, %1379
  %1382 = fmul fast float %1381, %1372
  %1383 = fadd fast float %1382, %1379
  %1384 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  br label %1418

; <label>:1385                                    ; preds = %1360
  %1386 = fmul fast float %1368, %998
  %1387 = call float @dx.op.unary.f32(i32 7, float %1386)  ; Saturate(value)
  %1388 = fsub fast float 2.000000e+00, %1387
  %1389 = fmul fast float %1387, 9.921875e-01
  %1390 = fmul fast float %1389, %1388
  %1391 = fadd fast float %1390, 3.906250e-03
  %1392 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1391, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = fsub fast float %1387, %1393
  %1395 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1394)  ; FMax(a,b)
  %1396 = fmul fast float %992, %977
  %1397 = call float @dx.op.unary.f32(i32 6, float %1396)  ; FAbs(value)
  %1398 = fcmp fast ogt float %1397, 0x3EB0C6F7A0000000
  br i1 %1398, label %1399, label %1405, !dx.controlflow.hints !110

; <label>:1399                                    ; preds = %1385
  %1400 = fmul fast float %1396, 0xBFF7154760000000
  %1401 = call float @dx.op.unary.f32(i32 21, float %1400)  ; Exp(value)
  %1402 = fsub fast float 1.000000e+00, %1401
  %1403 = fdiv fast float %1402, %1396
  %1404 = fmul fast float %1403, %994
  br label %1405

; <label>:1405                                    ; preds = %1399, %1385
  %1406 = phi float [ %1404, %1399 ], [ %994, %1385 ]
  %1407 = fadd fast float %1406, %996
  %1408 = fmul fast float %1407, %1395
  %1409 = fmul fast float %989, %1408
  %1410 = fsub fast float -0.000000e+00, %1409
  %1411 = fmul fast float %990, %1408
  %1412 = fsub fast float -0.000000e+00, %1411
  %1413 = fmul fast float %991, %1408
  %1414 = fsub fast float -0.000000e+00, %1413
  %1415 = call float @dx.op.unary.f32(i32 21, float %1410)  ; Exp(value)
  %1416 = call float @dx.op.unary.f32(i32 21, float %1412)  ; Exp(value)
  %1417 = call float @dx.op.unary.f32(i32 21, float %1414)  ; Exp(value)
  br label %1418

; <label>:1418                                    ; preds = %1405, %1369
  %1419 = phi float [ %1384, %1369 ], [ %1415, %1405 ]
  %1420 = phi float [ %1384, %1369 ], [ %1416, %1405 ]
  %1421 = phi float [ %1384, %1369 ], [ %1417, %1405 ]
  br i1 %1020, label %1422, label %1518, !dx.controlflow.hints !111

; <label>:1422                                    ; preds = %1418
  %1423 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1419)  ; FMax(a,b)
  %1424 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1420)  ; FMax(a,b)
  %1425 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1421)  ; FMax(a,b)
  %1426 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1362)  ; FMax(a,b)
  %1427 = call float @dx.op.binary.f32(i32 35, float %1361, float %1368)  ; FMax(a,b)
  %1428 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1427)  ; FMax(a,b)
  %1429 = fdiv fast float %1361, %1428
  %1430 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  %1431 = fdiv fast float %1368, %1428
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1433 = fcmp fast une float %1426, 1.000000e+00
  br i1 %1433, label %1434, label %1437, !dx.controlflow.hints !112

; <label>:1434                                    ; preds = %1422
  %1435 = call float @dx.op.unary.f32(i32 23, float %1426)  ; Log(value)
  %1436 = fmul fast float %1435, 0x3FE62E4300000000
  br label %1437

; <label>:1437                                    ; preds = %1434, %1422
  %1438 = phi float [ %1436, %1434 ], [ 0.000000e+00, %1422 ]
  %1439 = fcmp fast une float %1423, 1.000000e+00
  br i1 %1439, label %1440, label %1443, !dx.controlflow.hints !113

; <label>:1440                                    ; preds = %1437
  %1441 = call float @dx.op.unary.f32(i32 23, float %1423)  ; Log(value)
  %1442 = fmul fast float %1441, 0x3FE62E4300000000
  br label %1443

; <label>:1443                                    ; preds = %1440, %1437
  %1444 = phi float [ %1442, %1440 ], [ 0.000000e+00, %1437 ]
  %1445 = fcmp fast une float %1424, 1.000000e+00
  br i1 %1445, label %1446, label %1449, !dx.controlflow.hints !113

; <label>:1446                                    ; preds = %1443
  %1447 = call float @dx.op.unary.f32(i32 23, float %1424)  ; Log(value)
  %1448 = fmul fast float %1447, 0x3FE62E4300000000
  br label %1449

; <label>:1449                                    ; preds = %1446, %1443
  %1450 = phi float [ %1448, %1446 ], [ 0.000000e+00, %1443 ]
  %1451 = fcmp fast une float %1425, 1.000000e+00
  br i1 %1451, label %1452, label %1455, !dx.controlflow.hints !113

; <label>:1452                                    ; preds = %1449
  %1453 = call float @dx.op.unary.f32(i32 23, float %1425)  ; Log(value)
  %1454 = fmul fast float %1453, 0x3FE62E4300000000
  br label %1455

; <label>:1455                                    ; preds = %1452, %1449
  %1456 = phi float [ %1454, %1452 ], [ 0.000000e+00, %1449 ]
  %1457 = fmul fast float %1438, %1432
  %1458 = fmul fast float %1444, %1430
  %1459 = fmul fast float %1450, %1430
  %1460 = fmul fast float %1456, %1430
  %1461 = fadd fast float %1458, %1457
  %1462 = fadd fast float %1459, %1457
  %1463 = fadd fast float %1460, %1457
  %1464 = fcmp fast une float %1461, 0.000000e+00
  br i1 %1464, label %1465, label %1468, !dx.controlflow.hints !114

; <label>:1465                                    ; preds = %1455
  %1466 = fmul fast float %1461, 0x3FF7154760000000
  %1467 = call float @dx.op.unary.f32(i32 21, float %1466)  ; Exp(value)
  br label %1468

; <label>:1468                                    ; preds = %1465, %1455
  %1469 = phi float [ %1467, %1465 ], [ 1.000000e+00, %1455 ]
  %1470 = fcmp fast une float %1462, 0.000000e+00
  br i1 %1470, label %1471, label %1474, !dx.controlflow.hints !114

; <label>:1471                                    ; preds = %1468
  %1472 = fmul fast float %1462, 0x3FF7154760000000
  %1473 = call float @dx.op.unary.f32(i32 21, float %1472)  ; Exp(value)
  br label %1474

; <label>:1474                                    ; preds = %1471, %1468
  %1475 = phi float [ %1473, %1471 ], [ 1.000000e+00, %1468 ]
  %1476 = fcmp fast une float %1463, 0.000000e+00
  br i1 %1476, label %1477, label %1480, !dx.controlflow.hints !114

; <label>:1477                                    ; preds = %1474
  %1478 = fmul fast float %1463, 0x3FF7154760000000
  %1479 = call float @dx.op.unary.f32(i32 21, float %1478)  ; Exp(value)
  br label %1480

; <label>:1480                                    ; preds = %1477, %1474
  %1481 = phi float [ %1479, %1477 ], [ 1.000000e+00, %1474 ]
  %1482 = fcmp fast ogt float %1430, %1432
  br i1 %1482, label %1483, label %1490

; <label>:1483                                    ; preds = %1480
  %1484 = fsub fast float 1.000000e+00, %1432
  %1485 = fmul fast float %1438, %1484
  %1486 = fcmp fast une float %1485, 0.000000e+00
  br i1 %1486, label %1487, label %1511, !dx.controlflow.hints !115

; <label>:1487                                    ; preds = %1483
  %1488 = fmul fast float %1485, 0x3FF7154760000000
  %1489 = call float @dx.op.unary.f32(i32 21, float %1488)  ; Exp(value)
  br label %1511

; <label>:1490                                    ; preds = %1480
  %1491 = fsub fast float 1.000000e+00, %1430
  %1492 = fmul fast float %1444, %1491
  %1493 = fmul fast float %1450, %1491
  %1494 = fmul fast float %1456, %1491
  %1495 = fcmp fast une float %1492, 0.000000e+00
  br i1 %1495, label %1496, label %1499, !dx.controlflow.hints !114

; <label>:1496                                    ; preds = %1490
  %1497 = fmul fast float %1492, 0x3FF7154760000000
  %1498 = call float @dx.op.unary.f32(i32 21, float %1497)  ; Exp(value)
  br label %1499

; <label>:1499                                    ; preds = %1496, %1490
  %1500 = phi float [ %1498, %1496 ], [ 1.000000e+00, %1490 ]
  %1501 = fcmp fast une float %1493, 0.000000e+00
  br i1 %1501, label %1502, label %1505, !dx.controlflow.hints !114

; <label>:1502                                    ; preds = %1499
  %1503 = fmul fast float %1493, 0x3FF7154760000000
  %1504 = call float @dx.op.unary.f32(i32 21, float %1503)  ; Exp(value)
  br label %1505

; <label>:1505                                    ; preds = %1502, %1499
  %1506 = phi float [ %1504, %1502 ], [ 1.000000e+00, %1499 ]
  %1507 = fcmp fast une float %1494, 0.000000e+00
  br i1 %1507, label %1508, label %1511, !dx.controlflow.hints !114

; <label>:1508                                    ; preds = %1505
  %1509 = fmul fast float %1494, 0x3FF7154760000000
  %1510 = call float @dx.op.unary.f32(i32 21, float %1509)  ; Exp(value)
  br label %1511

; <label>:1511                                    ; preds = %1508, %1505, %1487, %1483
  %1512 = phi float [ %1510, %1508 ], [ %1489, %1487 ], [ 1.000000e+00, %1483 ], [ 1.000000e+00, %1505 ]
  %1513 = phi float [ %1506, %1508 ], [ %1489, %1487 ], [ 1.000000e+00, %1483 ], [ %1506, %1505 ]
  %1514 = phi float [ %1500, %1508 ], [ %1489, %1487 ], [ 1.000000e+00, %1483 ], [ %1500, %1505 ]
  %1515 = fmul fast float %1514, %1469
  %1516 = fmul fast float %1513, %1475
  %1517 = fmul fast float %1512, %1481
  br label %1518

; <label>:1518                                    ; preds = %1511, %1418
  %1519 = phi float [ %1517, %1511 ], [ %1421, %1418 ]
  %1520 = phi float [ %1516, %1511 ], [ %1420, %1418 ]
  %1521 = phi float [ %1515, %1511 ], [ %1419, %1418 ]
  %1522 = call float @dx.op.dot3.f32(i32 55, float %1521, float %1520, float %1519, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1523 = select i1 %149, float %1522, float %1521
  %1524 = select i1 %149, float %1522, float %1520
  %1525 = select i1 %149, float 1.000000e+00, float %1519
  %1526 = fmul fast float %1523, %979
  %1527 = fmul fast float %1524, %980
  %1528 = fmul fast float %1525, %981
  %1529 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1530 = extractvalue %dx.types.CBufRet.i32 %1529, 0
  %1531 = icmp eq i32 %1530, 0
  br i1 %1531, label %1857, label %1532, !dx.controlflow.hints !116

; <label>:1532                                    ; preds = %1518
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 2
  %1535 = extractvalue %dx.types.CBufRet.f32 %1533, 3
  %1536 = fmul fast float %1534, %49
  %1537 = fmul fast float %1535, %50
  %1538 = fmul fast float %1536, 2.000000e+00
  %1539 = fmul fast float %1537, 2.000000e+00
  %1540 = fsub fast float 1.000000e+00, %1538
  %1541 = fsub fast float 1.000000e+00, %1539
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1544 = extractvalue %dx.types.CBufRet.f32 %1542, 1
  %1545 = extractvalue %dx.types.CBufRet.f32 %1542, 2
  %1546 = fmul fast float %1540, %1543
  %1547 = fmul fast float %1540, %1544
  %1548 = fmul fast float %1540, %1545
  %1549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1550 = extractvalue %dx.types.CBufRet.f32 %1549, 0
  %1551 = extractvalue %dx.types.CBufRet.f32 %1549, 1
  %1552 = extractvalue %dx.types.CBufRet.f32 %1549, 2
  %1553 = fmul fast float %1541, %1550
  %1554 = fmul fast float %1541, %1551
  %1555 = fmul fast float %1541, %1552
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.CBufRet.f32 %1556, 1
  %1559 = extractvalue %dx.types.CBufRet.f32 %1556, 2
  %1560 = fadd fast float %1553, %1557
  %1561 = fadd fast float %1560, %1546
  %1562 = fadd fast float %1554, %1558
  %1563 = fadd fast float %1562, %1547
  %1564 = fadd fast float %1555, %1559
  %1565 = fadd fast float %1564, %1548
  %1566 = fmul fast float %1561, %978
  %1567 = fmul fast float %1563, %978
  %1568 = fmul fast float %1565, %978
  %1569 = fmul fast float %1566, %1566
  %1570 = fmul fast float %1567, %1567
  %1571 = fadd fast float %1569, %1570
  %1572 = fmul fast float %1568, %1568
  %1573 = fadd fast float %1571, %1572
  %1574 = call float @dx.op.unary.f32(i32 24, float %1573)  ; Sqrt(value)
  %1575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1576 = extractvalue %dx.types.CBufRet.f32 %1575, 0
  %1577 = fsub fast float %1574, %1576
  %1578 = extractvalue %dx.types.CBufRet.f32 %1575, 2
  %1579 = fmul fast float %1577, %1578
  %1580 = call float @dx.op.unary.f32(i32 7, float %1579)  ; Saturate(value)
  %1581 = fadd fast float %1580, -5.000000e-01
  %1582 = fmul fast float %1581, 2.000000e+00
  %1583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1584 = extractvalue %dx.types.CBufRet.f32 %1583, 2
  %1585 = call float @dx.op.binary.f32(i32 36, float %1584, float %1582)  ; FMin(a,b)
  %1586 = fsub fast float -0.000000e+00, %1584
  %1587 = fcmp fast ogt float %1585, %1586
  br i1 %1587, label %1588, label %1857, !dx.controlflow.hints !117

; <label>:1588                                    ; preds = %1532
  %1589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.f32 %1589, 3
  %1591 = fcmp fast ogt float %1590, 0.000000e+00
  br i1 %1591, label %1592, label %1667, !dx.controlflow.hints !118

; <label>:1592                                    ; preds = %1588
  %1593 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %1594 = extractvalue %dx.types.Dimensions %1593, 0
  %1595 = sitofp i32 %1594 to float
  %1596 = extractvalue %dx.types.Dimensions %1593, 1
  %1597 = sitofp i32 %1596 to float
  %1598 = fmul fast float %1536, %1595
  %1599 = fmul fast float %1537, %1597
  %1600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1601 = extractvalue %dx.types.CBufRet.f32 %1600, 1
  %1602 = fsub fast float -0.000000e+00, %1601
  %1603 = fptoui float %1602 to i32
  %1604 = fptoui float %1598 to i32
  %1605 = fptoui float %1599 to i32
  %1606 = and i32 %1603, 31
  %1607 = lshr i32 %1604, %1606
  %1608 = lshr i32 %1605, %1606
  %1609 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %1603, i32 %1607, i32 %1608, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1610 = extractvalue %dx.types.ResRet.f32 %1609, 0
  %1611 = fcmp fast olt float %1610, -1.000000e+00
  %1612 = fcmp fast ogt float %1610, -1.000000e+00
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 1
  %1615 = select i1 %1612, float %1614, float 1.000000e+00
  %1616 = fadd fast float %1610, 1.000000e+00
  %1617 = fmul fast float %1615, %1616
  %1618 = call float @dx.op.unary.f32(i32 6, float %1617)  ; FAbs(value)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1613, 3
  %1620 = fcmp fast oge float %1618, %1619
  %1621 = select i1 %1620, float 0x4197782600000000, float %1618
  %1622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1623 = extractvalue %dx.types.CBufRet.f32 %1622, 0
  %1624 = extractvalue %dx.types.CBufRet.f32 %1622, 1
  %1625 = extractvalue %dx.types.CBufRet.f32 %1622, 2
  %1626 = select i1 %1611, float %1623, float %1543
  %1627 = select i1 %1611, float %1624, float %1544
  %1628 = select i1 %1611, float %1625, float %1545
  %1629 = fmul fast float %1626, %1540
  %1630 = fmul fast float %1627, %1540
  %1631 = fmul fast float %1628, %1540
  %1632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1632, 0
  %1634 = extractvalue %dx.types.CBufRet.f32 %1632, 1
  %1635 = extractvalue %dx.types.CBufRet.f32 %1632, 2
  %1636 = select i1 %1611, float %1633, float %1550
  %1637 = select i1 %1611, float %1634, float %1551
  %1638 = select i1 %1611, float %1635, float %1552
  %1639 = fmul fast float %1636, %1541
  %1640 = fmul fast float %1637, %1541
  %1641 = fmul fast float %1638, %1541
  %1642 = fadd fast float %1639, %1629
  %1643 = fadd fast float %1640, %1630
  %1644 = fadd fast float %1641, %1631
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1649 = select i1 %1611, float %1646, float %1557
  %1650 = select i1 %1611, float %1647, float %1558
  %1651 = select i1 %1611, float %1648, float %1559
  %1652 = fadd fast float %1642, %1649
  %1653 = fadd fast float %1643, %1650
  %1654 = fadd fast float %1644, %1651
  %1655 = fmul fast float %1652, %1621
  %1656 = fmul fast float %1653, %1621
  %1657 = fmul fast float %1654, %1621
  %1658 = fmul fast float %1655, %1655
  %1659 = fmul fast float %1656, %1656
  %1660 = fadd fast float %1658, %1659
  %1661 = fmul fast float %1657, %1657
  %1662 = fadd fast float %1660, %1661
  %1663 = call float @dx.op.unary.f32(i32 24, float %1662)  ; Sqrt(value)
  %1664 = fsub fast float %1663, %1576
  %1665 = fmul fast float %1664, %1578
  %1666 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  br label %1667

; <label>:1667                                    ; preds = %1592, %1588
  %1668 = phi float [ %1666, %1592 ], [ 1.000000e+00, %1588 ]
  %1669 = fmul fast float %1585, 5.000000e-01
  %1670 = fadd fast float %1669, 5.000000e-01
  %1671 = call float @dx.op.unary.f32(i32 22, float %1670)  ; Frc(value)
  %1672 = call float @dx.op.unary.f32(i32 27, float %1671)  ; Round_ni(value)
  %1673 = call float @dx.op.unary.f32(i32 22, float %1671)  ; Frc(value)
  %1674 = fmul fast float %1673, 2.000000e+00
  %1675 = fadd fast float %1674, -1.000000e+00
  %1676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %16, float %1536, float %1537, float %1672, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1677 = extractvalue %dx.types.ResRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.ResRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.ResRet.f32 %1676, 2
  %1680 = extractvalue %dx.types.ResRet.f32 %1676, 3
  %1681 = fadd fast float %1677, -5.000000e-01
  %1682 = fadd fast float %1679, -5.000000e-01
  %1683 = fmul fast float %1681, 0xBFD5555560000000
  %1684 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1682, float %1683)  ; FMad(a,b,c)
  %1685 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1678, float 0.000000e+00)  ; FMad(a,b,c)
  %1686 = fadd fast float %1685, %1680
  %1687 = fmul fast float %1681, -7.500000e-01
  %1688 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1682, float %1687)  ; FMad(a,b,c)
  %1689 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1678, float 0.000000e+00)  ; FMad(a,b,c)
  %1690 = fadd fast float %1689, %1680
  %1691 = call float @dx.op.binary.f32(i32 35, float %1684, float -1.000000e+00)  ; FMax(a,b)
  %1692 = call float @dx.op.binary.f32(i32 35, float %1686, float -1.000000e+00)  ; FMax(a,b)
  %1693 = call float @dx.op.binary.f32(i32 35, float %1688, float -1.000000e+00)  ; FMax(a,b)
  %1694 = call float @dx.op.binary.f32(i32 35, float %1690, float -1.000000e+00)  ; FMax(a,b)
  %1695 = call float @dx.op.binary.f32(i32 36, float %1691, float 1.000000e+00)  ; FMin(a,b)
  %1696 = call float @dx.op.binary.f32(i32 36, float %1692, float 1.000000e+00)  ; FMin(a,b)
  %1697 = call float @dx.op.binary.f32(i32 36, float %1693, float 1.000000e+00)  ; FMin(a,b)
  %1698 = call float @dx.op.binary.f32(i32 36, float %1694, float 1.000000e+00)  ; FMin(a,b)
  %1699 = fcmp fast olt float %1695, 0x3FEFFF8020000000
  br i1 %1699, label %1700, label %1815, !dx.controlflow.hints !119

; <label>:1700                                    ; preds = %1667
  %1701 = extractvalue %dx.types.CBufRet.f32 %1583, 3
  %1702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.f32 %1702, 0
  %1704 = extractvalue %dx.types.CBufRet.f32 %1702, 1
  %1705 = extractvalue %dx.types.CBufRet.f32 %1702, 2
  %1706 = extractvalue %dx.types.CBufRet.f32 %1702, 3
  %1707 = fsub fast float %1703, %1695
  %1708 = fsub fast float %1704, %1696
  %1709 = fsub fast float %1705, %1697
  %1710 = fsub fast float %1706, %1698
  %1711 = fmul fast float %1707, %1701
  %1712 = fmul fast float %1708, %1701
  %1713 = fmul fast float %1709, %1701
  %1714 = fmul fast float %1710, %1701
  %1715 = fadd fast float %1711, %1695
  %1716 = fadd fast float %1712, %1696
  %1717 = fsub fast float -0.000000e+00, %1716
  %1718 = fadd fast float %1713, %1697
  %1719 = fadd fast float %1714, %1698
  %1720 = fmul fast float %1715, %1715
  %1721 = fsub fast float %1716, %1720
  %1722 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1721)  ; FMax(a,b)
  %1723 = fdiv fast float 1.000000e+00, %1722
  %1724 = fmul fast float %1716, %1715
  %1725 = fsub fast float %1718, %1724
  %1726 = fsub fast float %1675, %1715
  %1727 = fmul fast float %1675, %1675
  %1728 = fsub fast float %1727, %1716
  %1729 = fmul fast float %1726, %1723
  %1730 = fmul fast float %1729, %1725
  %1731 = fsub fast float %1728, %1730
  %1732 = fmul fast float %1716, %1716
  %1733 = fsub fast float %1719, %1732
  %1734 = fmul fast float %1725, %1725
  %1735 = fmul fast float %1734, %1723
  %1736 = fsub fast float %1733, %1735
  %1737 = fdiv fast float %1731, %1736
  %1738 = fmul fast float %1725, %1737
  %1739 = fsub fast float %1726, %1738
  %1740 = fmul fast float %1739, %1723
  %1741 = fmul fast float %1740, %1715
  %1742 = fsub fast float 1.000000e+00, %1741
  %1743 = fmul fast float %1716, %1737
  %1744 = fsub fast float %1742, %1743
  %1745 = fmul fast float %1740, %1740
  %1746 = fmul fast float %1737, 4.000000e+00
  %1747 = fmul fast float %1746, %1744
  %1748 = fsub fast float %1745, %1747
  %1749 = call float @dx.op.unary.f32(i32 24, float %1748)  ; Sqrt(value)
  %1750 = fcmp fast oge float %1740, 0.000000e+00
  %1751 = fsub fast float -0.000000e+00, %1749
  %1752 = select i1 %1750, float %1751, float %1749
  %1753 = fsub fast float %1752, %1740
  %1754 = fdiv fast float %1753, %1737
  %1755 = fdiv fast float %1744, %1753
  %1756 = fmul fast float %1754, 5.000000e-01
  %1757 = fmul fast float %1755, 2.000000e+00
  %1758 = select i1 %1750, float %1756, float %1757
  %1759 = select i1 %1750, float %1757, float %1756
  %1760 = call float @dx.op.binary.f32(i32 35, float %1758, float %1759)  ; FMax(a,b)
  %1761 = call float @dx.op.binary.f32(i32 36, float %1758, float %1759)  ; FMin(a,b)
  %1762 = fcmp fast ogt float %1675, %1761
  br i1 %1762, label %1763, label %1773

; <label>:1763                                    ; preds = %1700
  %1764 = fsub fast float %1675, %1761
  %1765 = fsub fast float %1760, %1761
  %1766 = fmul fast float %1764, %1765
  %1767 = fmul fast float %1760, %1675
  %1768 = fadd fast float %1760, %1675
  %1769 = fmul fast float %1768, %1715
  %1770 = fadd fast float %1767, %1716
  %1771 = fsub fast float %1770, %1769
  %1772 = fdiv fast float %1771, %1766
  br label %1773

; <label>:1773                                    ; preds = %1763, %1700
  %1774 = phi float [ %1772, %1763 ], [ 0.000000e+00, %1700 ]
  %1775 = fcmp fast ogt float %1675, %1760
  %1776 = fsub fast float %1675, %1760
  br i1 %1775, label %1777, label %1787

; <label>:1777                                    ; preds = %1773
  %1778 = fsub fast float %1760, %1761
  %1779 = fmul fast float %1778, %1776
  %1780 = fmul fast float %1761, %1675
  %1781 = fadd fast float %1761, %1675
  %1782 = fmul fast float %1781, %1715
  %1783 = fsub fast float %1717, %1780
  %1784 = fadd fast float %1783, %1782
  %1785 = fdiv fast float %1784, %1779
  %1786 = fadd fast float %1785, %1774
  br label %1787

; <label>:1787                                    ; preds = %1777, %1773
  %1788 = phi float [ %1786, %1777 ], [ %1774, %1773 ]
  %1789 = fsub fast float %1675, %1761
  %1790 = fmul fast float %1789, %1776
  %1791 = fmul fast float %1761, %1760
  %1792 = fadd fast float %1761, %1760
  %1793 = fmul fast float %1792, %1715
  %1794 = fadd fast float %1791, %1716
  %1795 = fsub fast float %1794, %1793
  %1796 = fdiv fast float %1795, %1790
  %1797 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1798 = fcmp fast oeq float %858, 0.000000e+00
  %1799 = extractvalue %dx.types.CBufRet.f32 %1583, 0
  %1800 = fcmp fast oeq float %1799, 0.000000e+00
  %1801 = or i1 %1798, %1800
  %1802 = fmul fast float %1799, 2.000000e+00
  %1803 = fadd fast float %1584, %1585
  %1804 = fdiv fast float %1803, %1802
  %1805 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  %1806 = fmul fast float %1805, 2.000000e+00
  %1807 = fsub fast float 3.000000e+00, %1806
  %1808 = fmul fast float %1805, %1805
  %1809 = fmul fast float %1808, %1807
  %1810 = select i1 %1801, float 1.000000e+00, float %1809
  %1811 = fmul fast float %1796, %858
  %1812 = fadd fast float %1797, %1811
  %1813 = call float @dx.op.unary.f32(i32 7, float %1812)  ; Saturate(value)
  %1814 = fmul fast float %1810, %1813
  br label %1815

; <label>:1815                                    ; preds = %1787, %1667
  %1816 = phi float [ %1814, %1787 ], [ 0.000000e+00, %1667 ]
  %1817 = fsub fast float 1.000000e+00, %1816
  %1818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %16, float %1536, float %1537, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1819 = extractvalue %dx.types.ResRet.f32 %1818, 0
  %1820 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1821 = extractvalue %dx.types.CBufRet.i32 %1820, 2
  %1822 = icmp eq i32 %1821, 0
  br i1 %1822, label %1828, label %1823

; <label>:1823                                    ; preds = %1815
  %1824 = call float @dx.op.unary.f32(i32 7, float %1816)  ; Saturate(value)
  %1825 = fadd fast float %1819, -1.000000e+00
  %1826 = fmul fast float %1824, %1825
  %1827 = fadd fast float %1826, 1.000000e+00
  br label %1828

; <label>:1828                                    ; preds = %1823, %1815
  %1829 = phi float [ %1827, %1823 ], [ %1817, %1815 ]
  br i1 %1591, label %1830, label %1848

; <label>:1830                                    ; preds = %1828
  %1831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1832 = extractvalue %dx.types.CBufRet.f32 %1831, 1
  %1833 = fsub fast float %1668, %1832
  %1834 = call float @dx.op.unary.f32(i32 7, float %1833)  ; Saturate(value)
  %1835 = fsub fast float %1668, %1590
  %1836 = call float @dx.op.unary.f32(i32 7, float %1835)  ; Saturate(value)
  %1837 = fsub fast float %1834, %1836
  %1838 = fsub fast float %1670, %1836
  %1839 = fdiv fast float %1838, %1837
  %1840 = call float @dx.op.unary.f32(i32 7, float %1839)  ; Saturate(value)
  %1841 = fmul fast float %1840, 2.000000e+00
  %1842 = fsub fast float 3.000000e+00, %1841
  %1843 = fsub fast float %1819, %1829
  %1844 = fmul fast float %1840, %1840
  %1845 = fmul fast float %1844, %1843
  %1846 = fmul fast float %1845, %1842
  %1847 = fadd fast float %1846, %1829
  br label %1848

; <label>:1848                                    ; preds = %1830, %1828
  %1849 = phi float [ %1847, %1830 ], [ %1829, %1828 ]
  %1850 = call float @dx.op.binary.f32(i32 35, float %1819, float %1849)  ; FMax(a,b)
  %1851 = call float @dx.op.dot3.f32(i32 55, float %1850, float %1850, float %1850, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1852 = select i1 %149, float %1851, float %1850
  %1853 = select i1 %149, float 1.000000e+00, float %1850
  %1854 = fmul fast float %1852, %1526
  %1855 = fmul fast float %1852, %1527
  %1856 = fmul fast float %1853, %1528
  br label %1857

; <label>:1857                                    ; preds = %1848, %1532, %1518, %974
  %1858 = phi float [ %979, %974 ], [ %1526, %1518 ], [ %1854, %1848 ], [ %1526, %1532 ]
  %1859 = phi float [ %980, %974 ], [ %1527, %1518 ], [ %1855, %1848 ], [ %1527, %1532 ]
  %1860 = phi float [ %981, %974 ], [ %1528, %1518 ], [ %1856, %1848 ], [ %1528, %1532 ]
  %1861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.f32 %1861, 2
  %1863 = extractvalue %dx.types.CBufRet.f32 %1861, 3
  %1864 = fmul fast float %1862, %49
  %1865 = fmul fast float %1863, %50
  %1866 = call float @dx.op.unary.f32(i32 7, float %1864)  ; Saturate(value)
  %1867 = call float @dx.op.unary.f32(i32 7, float %1865)  ; Saturate(value)
  %1868 = select i1 %735, i32 2, i32 0
  %1869 = or i32 %1868, 1
  %1870 = uitofp i32 %1869 to float
  %1871 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %1866, float %1867, float %1870, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.ResRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.ResRet.f32 %1871, 2
  %1875 = extractvalue %dx.types.ResRet.f32 %1871, 3
  %1876 = add nuw nsw i32 %1868, 2
  %1877 = uitofp i32 %1876 to float
  %1878 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %1866, float %1867, float %1877, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1879 = extractvalue %dx.types.ResRet.f32 %1878, 0
  %1880 = extractvalue %dx.types.ResRet.f32 %1878, 1
  %1881 = extractvalue %dx.types.ResRet.f32 %1878, 2
  %1882 = extractvalue %dx.types.ResRet.f32 %1878, 3
  %1883 = call float @dx.op.binary.f32(i32 35, float %1873, float %1874)  ; FMax(a,b)
  %1884 = call float @dx.op.binary.f32(i32 35, float %1872, float %1883)  ; FMax(a,b)
  %1885 = call float @dx.op.binary.f32(i32 35, float %1884, float %1875)  ; FMax(a,b)
  %1886 = call float @dx.op.binary.f32(i32 36, float %1880, float %1881)  ; FMin(a,b)
  %1887 = call float @dx.op.binary.f32(i32 36, float %1879, float %1886)  ; FMin(a,b)
  %1888 = call float @dx.op.binary.f32(i32 36, float %1887, float %1882)  ; FMin(a,b)
  %1889 = fmul fast float %1885, 2.550000e+02
  %1890 = fadd fast float %1889, 0x3F70101020000000
  %1891 = fptoui float %1890 to i32
  %1892 = fmul fast float %1888, 2.550000e+02
  %1893 = fadd fast float %1892, 0x3F70101020000000
  %1894 = fptoui float %1893 to i32
  %1895 = icmp ult i32 %1891, %1894
  br i1 %1895, label %1896, label %1939

; <label>:1896                                    ; preds = %1857
  %1897 = fcmp fast ogt float %41, 9.843750e-01
  %1898 = fadd fast float %978, -4.000000e+00
  %1899 = select i1 %1897, float -4.000000e+00, float %1898
  %1900 = call float @dx.op.binary.f32(i32 35, float %1899, float 0.000000e+00)  ; FMax(a,b)
  %1901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1902 = extractvalue %dx.types.CBufRet.f32 %1901, 0
  %1903 = fadd fast float %1902, %1900
  %1904 = extractvalue %dx.types.CBufRet.f32 %1901, 2
  %1905 = fmul fast float %1903, %1904
  %1906 = call float @dx.op.unary.f32(i32 23, float %1905)  ; Log(value)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1901, 3
  %1908 = fmul fast float %1907, %1906
  %1909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1910 = extractvalue %dx.types.CBufRet.f32 %1909, 2
  %1911 = fmul fast float %1908, %1910
  %1912 = call float @dx.op.unary.f32(i32 7, float %1911)  ; Saturate(value)
  %1913 = uitofp i32 %1891 to float
  %1914 = uitofp i32 %1894 to float
  %1915 = fadd fast float %1913, 5.000000e-01
  %1916 = fadd fast float %1914, 5.000000e-01
  %1917 = fmul fast float %1910, %1915
  %1918 = fmul fast float %1910, %1916
  %1919 = fadd fast float %1917, 0x3F0FFB4800000000
  %1920 = fadd fast float %1918, 0xBF0FFB4800000000
  %1921 = call float @dx.op.binary.f32(i32 35, float %1912, float %1919)  ; FMax(a,b)
  %1922 = call float @dx.op.binary.f32(i32 36, float %1921, float %1920)  ; FMin(a,b)
  %1923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1924 = extractvalue %dx.types.CBufRet.f32 %1923, 1
  %1925 = extractvalue %dx.types.CBufRet.f32 %1923, 2
  %1926 = extractvalue %dx.types.CBufRet.f32 %1923, 0
  %1927 = select i1 %735, float %1926, float 0.000000e+00
  %1928 = fmul fast float %1924, %1922
  %1929 = fadd fast float %1927, %1928
  %1930 = fadd fast float %1927, %1925
  %1931 = fsub fast float %1924, %1925
  %1932 = fadd fast float %1931, %1927
  %1933 = call float @dx.op.binary.f32(i32 35, float %1929, float %1930)  ; FMax(a,b)
  %1934 = call float @dx.op.binary.f32(i32 36, float %1933, float %1932)  ; FMin(a,b)
  %1935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %1866, float %1867, float %1934, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1936 = extractvalue %dx.types.ResRet.f32 %1935, 0
  %1937 = extractvalue %dx.types.ResRet.f32 %1935, 1
  %1938 = extractvalue %dx.types.ResRet.f32 %1935, 2
  br label %1939

; <label>:1939                                    ; preds = %1896, %1857
  %1940 = phi float [ %1936, %1896 ], [ 1.000000e+00, %1857 ]
  %1941 = phi float [ %1937, %1896 ], [ 1.000000e+00, %1857 ]
  %1942 = phi float [ %1938, %1896 ], [ 1.000000e+00, %1857 ]
  %1943 = call float @dx.op.dot3.f32(i32 55, float %1940, float %1941, float %1942, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1944 = select i1 %149, float %1943, float %1940
  %1945 = select i1 %149, float %1943, float %1941
  %1946 = fmul fast float %1944, %1858
  %1947 = fmul fast float %1945, %1859
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 0
  br i1 %149, label %1950, label %1953

; <label>:1950                                    ; preds = %1939
  %1951 = fadd fast float %1946, %1947
  %1952 = fmul fast float %1949, %1951
  br label %1963

; <label>:1953                                    ; preds = %1939
  %1954 = fmul fast float %1942, %1860
  %1955 = fmul fast float %1949, %1946
  %1956 = fmul fast float %1949, %1947
  %1957 = fmul fast float %1954, %1949
  %1958 = call float @dx.op.binary.f32(i32 35, float %1956, float %1957)  ; FMax(a,b)
  %1959 = call float @dx.op.binary.f32(i32 35, float %1955, float %1958)  ; FMax(a,b)
  %1960 = call float @dx.op.binary.f32(i32 35, float %1959, float 0.000000e+00)  ; FMax(a,b)
  %1961 = fcmp fast ugt float %1960, 0x3F10000000000000
  br i1 %1961, label %1963, label %1962

; <label>:1962                                    ; preds = %1953
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1963

; <label>:1963                                    ; preds = %1962, %1953, %1950
  %1964 = phi float [ %1952, %1950 ], [ %1955, %1962 ], [ %1955, %1953 ]
  %1965 = phi float [ 0.000000e+00, %1950 ], [ %1956, %1962 ], [ %1956, %1953 ]
  %1966 = phi float [ 0.000000e+00, %1950 ], [ %1957, %1962 ], [ %1957, %1953 ]
  %1967 = fadd fast float %607, 0x3FE3C6EF40000000
  %1968 = call float @dx.op.unary.f32(i32 22, float %1967)  ; Frc(value)
  %1969 = call float @dx.op.unary.f32(i32 23, float %1964)  ; Log(value)
  %1970 = fadd fast float %1969, -7.000000e+00
  %1971 = call float @dx.op.unary.f32(i32 21, float %1970)  ; Exp(value)
  %1972 = fmul fast float %1968, 2.000000e+00
  %1973 = fadd fast float %1972, -1.000000e+00
  %1974 = fmul fast float %1971, %1973
  %1975 = fcmp fast ogt float %1964, 0.000000e+00
  %1976 = select i1 %1975, float %1974, float 0.000000e+00
  %1977 = fadd fast float %1976, %1964
  %1978 = fadd fast float %607, 0x3FF3C6EF40000000
  %1979 = call float @dx.op.unary.f32(i32 22, float %1978)  ; Frc(value)
  %1980 = call float @dx.op.unary.f32(i32 23, float %1965)  ; Log(value)
  %1981 = fadd fast float %1980, -7.000000e+00
  %1982 = call float @dx.op.unary.f32(i32 21, float %1981)  ; Exp(value)
  %1983 = fmul fast float %1979, 2.000000e+00
  %1984 = fadd fast float %1983, -1.000000e+00
  %1985 = fmul fast float %1982, %1984
  %1986 = fcmp fast ogt float %1965, 0.000000e+00
  %1987 = select i1 %1986, float %1985, float 0.000000e+00
  %1988 = fadd fast float %1987, %1965
  %1989 = fadd fast float %607, 0x3FFDAA66E0000000
  %1990 = call float @dx.op.unary.f32(i32 22, float %1989)  ; Frc(value)
  %1991 = call float @dx.op.unary.f32(i32 23, float %1966)  ; Log(value)
  %1992 = fadd fast float %1991, -6.000000e+00
  %1993 = call float @dx.op.unary.f32(i32 21, float %1992)  ; Exp(value)
  %1994 = fmul fast float %1990, 2.000000e+00
  %1995 = fadd fast float %1994, -1.000000e+00
  %1996 = fmul fast float %1993, %1995
  %1997 = fcmp fast ogt float %1966, 0.000000e+00
  %1998 = select i1 %1997, float %1996, float 0.000000e+00
  %1999 = fadd fast float %1998, %1966
  %2000 = select i1 %149, float %1965, float %1988
  %2001 = select i1 %149, float %1966, float %1999
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2002 = call float @dx.op.binary.f32(i32 36, float %1977, float 3.225500e+04)  ; FMin(a,b)
  %2003 = call float @dx.op.binary.f32(i32 36, float %2000, float 3.225500e+04)  ; FMin(a,b)
  %2004 = call float @dx.op.binary.f32(i32 36, float %2001, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2002)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2003)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2004)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!32 = !{[34 x i32] [i32 32, i32 4, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 1, i32 3, i32 4, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0]}
!33 = !{void ()* @ps_main, !"ps_main", !34, !4, !58}
!34 = !{!35, !56, null}
!35 = !{!36, !39, !41, !42, !44, !47, !50, !52, !54, !55}
!36 = !{i32 0, !"SV_Position", i8 9, i8 3, !37, i8 4, i32 1, i8 4, i32 0, i8 0, !38}
!37 = !{i32 0}
!38 = !{i32 3, i32 15}
!39 = !{i32 1, !"COLOR", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 1, i8 0, !40}
!40 = !{i32 3, i32 8}
!41 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !37, i8 2, i32 1, i8 4, i32 2, i8 0, !38}
!42 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !43, i8 2, i32 1, i8 4, i32 3, i8 0, !38}
!43 = !{i32 3}
!44 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 4, i8 0, !46}
!45 = !{i32 4}
!46 = !{i32 3, i32 3}
!47 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !48, i8 2, i32 1, i8 3, i32 5, i8 0, !49}
!48 = !{i32 5}
!49 = !{i32 3, i32 7}
!50 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 6, i8 0, !38}
!51 = !{i32 8}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !43, i8 1, i32 1, i8 3, i32 7, i8 0, !53}
!53 = !{i32 3, i32 1}
!54 = !{i32 8, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 1, i32 7, i8 3, null}
!55 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !37, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!56 = !{!57}
!57 = !{i32 0, !"SV_Target", i8 9, i8 16, !37, i8 0, i32 1, i8 4, i32 0, i8 0, !38}
!58 = !{i32 0, i64 24}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
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

