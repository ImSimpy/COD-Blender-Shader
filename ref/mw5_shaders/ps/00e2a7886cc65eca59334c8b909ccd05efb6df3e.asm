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
; shader hash: 509f9fdade2a0d1058452a6adae3b8b1
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
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = extractvalue %dx.types.ResRet.i32 %161, 1
  %164 = bitcast i32 %162 to float
  %165 = bitcast i32 %163 to float
  %166 = fmul fast float %164, %32
  %167 = fmul fast float %165, %33
  %168 = call float @dx.op.unary.f32(i32 22, float %166)  ; Frc(value)
  %169 = call float @dx.op.unary.f32(i32 22, float %167)  ; Frc(value)
  %170 = and i32 %122, 16
  %171 = icmp ne i32 %170, 0
  %172 = select i1 %171, float 1.000000e+00, float %34
  %173 = icmp eq i32 %170, 0
  br i1 %173, label %193, label %174, !dx.controlflow.hints !60

; <label>:174                                     ; preds = %158
  %175 = add i32 %119, 64
  %176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fadd fast float %177, 1.000000e+00
  %179 = fmul fast float %178, %34
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
  %203 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %201, i32 %202, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = lshr i32 %204, 18
  %206 = uitofp i32 %205 to float
  %207 = fmul fast float %206, 0x3F4C00EBA0000000
  %208 = call float @dx.op.unary.f32(i32 21, float %207)  ; Exp(value)
  %209 = fadd fast float %208, -1.000000e+00
  %210 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %211 = extractvalue %dx.types.Dimensions %210, 0
  %212 = sitofp i32 %211 to float
  %213 = extractvalue %dx.types.Dimensions %210, 1
  %214 = sitofp i32 %213 to float
  %215 = fcmp fast oge float %199, %212
  %216 = fcmp fast oge float %200, %214
  %217 = or i1 %215, %216
  %218 = select i1 %217, float 0x4197782600000000, float %209
  %219 = fsub fast float %218, %38
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
  br i1 %239, label %478, label %240, !dx.controlflow.hints !61

; <label>:240                                     ; preds = %237
  %241 = add i32 %119, 80
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = extractvalue %dx.types.ResRet.f32 %242, 3
  %247 = add i32 %119, 96
  %248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = extractvalue %dx.types.ResRet.f32 %248, 1
  %251 = extractvalue %dx.types.ResRet.f32 %248, 2
  %252 = add i32 %119, 112
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = extractvalue %dx.types.ResRet.f32 %253, 3
  %258 = add i32 %119, 128
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = extractvalue %dx.types.ResRet.f32 %259, 1
  %262 = extractvalue %dx.types.ResRet.f32 %259, 2
  %263 = extractvalue %dx.types.ResRet.f32 %259, 3
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %275 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %276 = extractvalue %dx.types.Dimensions %275, 0
  %277 = sitofp i32 %276 to float
  %278 = extractvalue %dx.types.Dimensions %275, 1
  %279 = sitofp i32 %278 to float
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %282 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %283 = fmul fast float %281, %44
  %284 = fmul fast float %282, %45
  %285 = fmul fast float %283, %277
  %286 = fmul fast float %284, %279
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 1
  %289 = fsub fast float -0.000000e+00, %288
  %290 = fptoui float %289 to i32
  %291 = fptoui float %285 to i32
  %292 = fptoui float %286 to i32
  %293 = and i32 %290, 31
  %294 = lshr i32 %291, %293
  %295 = lshr i32 %292, %293
  %296 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %290, i32 %294, i32 %295, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = fcmp fast ogt float %297, -1.000000e+00
  %299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
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
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 0
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 1
  %316 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %317 = fmul fast float %311, %314
  %318 = fmul fast float %311, %315
  %319 = fmul fast float %311, %316
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 0
  %322 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %323 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %324 = fmul fast float %312, %321
  %325 = fmul fast float %312, %322
  %326 = fmul fast float %312, %323
  %327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %361 = fsub fast float %257, %263
  %362 = fmul fast float %360, %361
  %363 = fadd fast float %362, %263
  %364 = fmul fast float %254, %21
  %365 = fmul fast float %255, %22
  %366 = fmul fast float %256, %23
  %367 = fsub fast float %364, %260
  %368 = fsub fast float %365, %261
  %369 = fsub fast float %366, %262
  %370 = fmul fast float %360, %367
  %371 = fmul fast float %360, %368
  %372 = fmul fast float %360, %369
  %373 = fadd fast float %370, %260
  %374 = fadd fast float %371, %261
  %375 = fadd fast float %372, %262
  %376 = fmul fast float %243, %243
  %377 = fmul fast float %376, %352
  br label %469

; <label>:378                                     ; preds = %240
  %379 = and i32 %265, 256
  %380 = icmp eq i32 %379, 0
  %381 = fsub fast float %307, %38
  br i1 %380, label %430, label %382

; <label>:382                                     ; preds = %378
  %383 = fadd fast float %249, %38
  %384 = fcmp fast olt float %307, %38
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
  %413 = fsub fast float %257, %263
  %414 = fmul fast float %412, %413
  %415 = fadd fast float %414, %263
  %416 = fmul fast float %254, %21
  %417 = fmul fast float %255, %22
  %418 = fmul fast float %256, %23
  %419 = fsub fast float %416, %260
  %420 = fsub fast float %417, %261
  %421 = fsub fast float %418, %262
  %422 = fmul fast float %412, %419
  %423 = fmul fast float %412, %420
  %424 = fmul fast float %412, %421
  %425 = fadd fast float %422, %260
  %426 = fadd fast float %423, %261
  %427 = fadd fast float %424, %262
  %428 = fmul fast float %387, %243
  %429 = call float @dx.op.unary.f32(i32 6, float %428)  ; FAbs(value)
  br label %469

; <label>:430                                     ; preds = %378
  br i1 %268, label %431, label %442

; <label>:431                                     ; preds = %430
  %432 = select i1 %270, float 5.000000e+01, float 1.000000e+00
  %433 = fmul fast float %432, %243
  %434 = fmul fast float %168, 2.000000e+00
  %435 = fmul fast float %169, 2.000000e+00
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
  %471 = phi float [ %373, %308 ], [ %425, %382 ], [ %21, %431 ], [ %21, %462 ], [ %21, %451 ], [ %21, %457 ], [ %21, %455 ]
  %472 = phi float [ %374, %308 ], [ %426, %382 ], [ %22, %431 ], [ %22, %462 ], [ %22, %451 ], [ %22, %457 ], [ %22, %455 ]
  %473 = phi float [ %375, %308 ], [ %427, %382 ], [ %23, %431 ], [ %23, %462 ], [ %23, %451 ], [ %23, %457 ], [ %23, %455 ]
  %474 = phi float [ %363, %308 ], [ %415, %382 ], [ 1.000000e+00, %431 ], [ 1.000000e+00, %462 ], [ 1.000000e+00, %451 ], [ 1.000000e+00, %457 ], [ 1.000000e+00, %455 ]
  %475 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %476 = fmul fast float %474, %198
  %477 = fmul fast float %476, %475
  br label %478

; <label>:478                                     ; preds = %469, %237
  %479 = phi float [ %477, %469 ], [ %198, %237 ]
  %480 = phi float [ %471, %469 ], [ %21, %237 ]
  %481 = phi float [ %472, %469 ], [ %22, %237 ]
  %482 = phi float [ %473, %469 ], [ %23, %237 ]
  %483 = fmul fast float %480, %24
  %484 = fmul fast float %481, %24
  %485 = fmul fast float %482, %24
  %486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %487 = extractvalue %dx.types.CBufRet.f32 %486, 2
  %488 = fptosi float %38 to i32
  %489 = sitofp i32 %488 to float
  %490 = fadd fast float %487, %489
  %491 = fmul fast float %490, 0x3FE3C6EF40000000
  %492 = frem fast float %44, 2.560000e+02
  %493 = frem fast float %45, 2.560000e+02
  %494 = fptoui float %492 to i32
  %495 = fptoui float %493 to i32
  %496 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %494, i32 %495, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = fadd fast float %497, %491
  %499 = call float @dx.op.unary.f32(i32 22, float %498)  ; Frc(value)
  %500 = and i32 %122, 1
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %558, label %502, !dx.controlflow.hints !64

; <label>:502                                     ; preds = %478
  %503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 2
  %505 = extractvalue %dx.types.ResRet.f32 %503, 3
  %506 = add i32 %119, 16
  %507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = extractvalue %dx.types.ResRet.f32 %507, 1
  %510 = extractvalue %dx.types.ResRet.f32 %507, 2
  %511 = add i32 %119, 32
  %512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.f32 %512, 0
  %514 = extractvalue %dx.types.ResRet.f32 %512, 1
  %515 = extractvalue %dx.types.ResRet.f32 %512, 2
  %516 = and i32 %122, 2
  %517 = icmp eq i32 %516, 0
  %518 = call float @dx.op.dot3.f32(i32 55, float %28, float %29, float %30, float %28, float %29, float %30)  ; Dot3(ax,ay,az,bx,by,bz)
  %519 = call float @dx.op.unary.f32(i32 25, float %518)  ; Rsqrt(value)
  %520 = fmul fast float %519, %28
  %521 = fmul fast float %519, %29
  %522 = fmul fast float %519, %30
  %523 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %524 = call float @dx.op.unary.f32(i32 25, float %523)  ; Rsqrt(value)
  %525 = fmul fast float %524, %79
  %526 = fmul fast float %524, %80
  %527 = fmul fast float %524, %81
  %528 = call float @dx.op.dot3.f32(i32 55, float %525, float %526, float %527, float %520, float %521, float %522)  ; Dot3(ax,ay,az,bx,by,bz)
  %529 = fmul fast float %528, %528
  %530 = fmul fast float %529, %504
  %531 = fadd fast float %530, %505
  %532 = call float @dx.op.unary.f32(i32 7, float %531)  ; Saturate(value)
  br i1 %517, label %533, label %543, !dx.controlflow.hints !65

; <label>:533                                     ; preds = %502
  %534 = extractvalue %dx.types.ResRet.f32 %503, 1
  %535 = extractvalue %dx.types.ResRet.f32 %503, 0
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 3
  %538 = fmul fast float %537, %523
  %539 = fsub fast float %535, %538
  %540 = fmul fast float %539, %534
  %541 = call float @dx.op.unary.f32(i32 7, float %540)  ; Saturate(value)
  %542 = fmul fast float %541, %532
  br label %543

; <label>:543                                     ; preds = %533, %502
  %544 = phi float [ %542, %533 ], [ %532, %502 ]
  %545 = fsub fast float %508, %513
  %546 = fsub fast float %509, %514
  %547 = fsub fast float %510, %515
  %548 = fmul fast float %544, %545
  %549 = fmul fast float %544, %546
  %550 = fmul fast float %544, %547
  %551 = fadd fast float %548, %513
  %552 = fadd fast float %549, %514
  %553 = fadd fast float %550, %515
  %554 = fmul fast float %551, %483
  %555 = fmul fast float %552, %484
  %556 = fmul fast float %553, %485
  %557 = fmul fast float %544, %479
  br label %558

; <label>:558                                     ; preds = %543, %478
  %559 = phi float [ %557, %543 ], [ %479, %478 ]
  %560 = phi float [ %554, %543 ], [ %483, %478 ]
  %561 = phi float [ %555, %543 ], [ %484, %478 ]
  %562 = phi float [ %556, %543 ], [ %485, %478 ]
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = add i32 %564, 0
  %566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %566, %dx.types.Handle %41, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %568 = extractvalue %dx.types.ResRet.f32 %567, 0
  %569 = extractvalue %dx.types.ResRet.f32 %567, 1
  %570 = extractvalue %dx.types.ResRet.f32 %567, 2
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = shl i32 %572, 4
  %574 = and i32 %573, 32752
  %575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %574)  ; LegacyF16ToF32(value)
  %576 = lshr i32 %572, 7
  %577 = and i32 %576, 32752
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = lshr i32 %572, 22
  %580 = shl nuw nsw i32 %579, 5
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = fmul fast float %575, %568
  %583 = fmul fast float %578, %569
  %584 = fmul fast float %581, %570
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 0
  %587 = fmul fast float %582, %586
  %588 = fmul fast float %583, %586
  %589 = fmul fast float %584, %586
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = lshr i32 %591, 22
  %593 = shl nuw nsw i32 %592, 5
  %594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %593)  ; LegacyF16ToF32(value)
  %595 = fmul fast float %594, %587
  %596 = select i1 %102, float %595, float %587
  %597 = fmul fast float %596, %560
  %598 = fmul fast float %588, %561
  %599 = fmul fast float %589, %562
  %600 = call float @dx.op.dot3.f32(i32 55, float %597, float %598, float %599, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %601 = select i1 %102, float 0.000000e+00, float %597
  %602 = select i1 %102, float %600, float %598
  %603 = select i1 %102, float 0.000000e+00, float %599
  %604 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %201, i32 %202, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = lshr i32 %605, 18
  %607 = uitofp i32 %606 to float
  %608 = fmul fast float %607, 0x3F4C00EBA0000000
  %609 = call float @dx.op.unary.f32(i32 21, float %608)  ; Exp(value)
  %610 = fadd fast float %609, -1.000000e+00
  %611 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %612 = extractvalue %dx.types.Dimensions %611, 0
  %613 = sitofp i32 %612 to float
  %614 = extractvalue %dx.types.Dimensions %611, 1
  %615 = sitofp i32 %614 to float
  %616 = fcmp fast oge float %199, %613
  %617 = fcmp fast oge float %200, %615
  %618 = or i1 %616, %617
  %619 = select i1 %618, float 0x4197782600000000, float %610
  %620 = icmp eq i32 %118, 3
  %621 = fcmp fast ogt float %38, %619
  %622 = and i1 %225, %621
  %623 = or i1 %620, %622
  %624 = icmp eq i32 %118, 2
  %625 = fcmp fast ole float %38, %619
  %626 = and i1 %624, %625
  %627 = or i1 %626, %623
  %628 = fmul fast float %31, %25
  %629 = fmul fast float %628, %480
  %630 = fmul fast float %629, %596
  %631 = fmul fast float %31, %26
  %632 = fmul fast float %631, %481
  %633 = fmul fast float %632, %588
  %634 = fmul fast float %31, %27
  %635 = fmul fast float %634, %482
  %636 = fmul fast float %635, %589
  %637 = fadd fast float %601, %630
  %638 = fadd fast float %602, %633
  %639 = fadd fast float %603, %636
  %640 = fmul fast float %637, %559
  %641 = fmul fast float %638, %559
  %642 = fmul fast float %639, %559
  %643 = and i32 %122, 1048576
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %736, label %645, !dx.controlflow.hints !66

; <label>:645                                     ; preds = %558
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 2
  %648 = extractvalue %dx.types.CBufRet.f32 %646, 3
  %649 = fmul fast float %647, %44
  %650 = fmul fast float %648, %45
  %651 = call float @dx.op.unary.f32(i32 7, float %649)  ; Saturate(value)
  %652 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  %653 = select i1 %627, i32 2, i32 0
  %654 = or i32 %653, 1
  %655 = uitofp i32 %654 to float
  %656 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %651, float %652, float %655, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %657 = extractvalue %dx.types.ResRet.f32 %656, 0
  %658 = extractvalue %dx.types.ResRet.f32 %656, 1
  %659 = extractvalue %dx.types.ResRet.f32 %656, 2
  %660 = extractvalue %dx.types.ResRet.f32 %656, 3
  %661 = add nuw nsw i32 %653, 2
  %662 = uitofp i32 %661 to float
  %663 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %651, float %652, float %662, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = extractvalue %dx.types.ResRet.f32 %663, 1
  %666 = extractvalue %dx.types.ResRet.f32 %663, 2
  %667 = extractvalue %dx.types.ResRet.f32 %663, 3
  %668 = call float @dx.op.binary.f32(i32 35, float %658, float %659)  ; FMax(a,b)
  %669 = call float @dx.op.binary.f32(i32 35, float %657, float %668)  ; FMax(a,b)
  %670 = call float @dx.op.binary.f32(i32 35, float %669, float %660)  ; FMax(a,b)
  %671 = call float @dx.op.binary.f32(i32 36, float %665, float %666)  ; FMin(a,b)
  %672 = call float @dx.op.binary.f32(i32 36, float %664, float %671)  ; FMin(a,b)
  %673 = call float @dx.op.binary.f32(i32 36, float %672, float %667)  ; FMin(a,b)
  %674 = fmul fast float %670, 2.550000e+02
  %675 = fadd fast float %674, 0x3F70101020000000
  %676 = fptoui float %675 to i32
  %677 = fmul fast float %673, 2.550000e+02
  %678 = fadd fast float %677, 0x3F70101020000000
  %679 = fptoui float %678 to i32
  %680 = icmp ult i32 %676, %679
  br i1 %680, label %681, label %729

; <label>:681                                     ; preds = %645
  %682 = fcmp fast ogt float %37, 9.843750e-01
  %683 = fadd fast float %38, -4.000000e+00
  %684 = select i1 %682, float -4.000000e+00, float %683
  %685 = call float @dx.op.binary.f32(i32 35, float %684, float 0.000000e+00)  ; FMax(a,b)
  %686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %687 = extractvalue %dx.types.CBufRet.f32 %686, 0
  %688 = fadd fast float %687, %685
  %689 = extractvalue %dx.types.CBufRet.f32 %686, 2
  %690 = fmul fast float %688, %689
  %691 = call float @dx.op.unary.f32(i32 23, float %690)  ; Log(value)
  %692 = extractvalue %dx.types.CBufRet.f32 %686, 3
  %693 = fmul fast float %692, %691
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 2
  %696 = fmul fast float %693, %695
  %697 = call float @dx.op.unary.f32(i32 7, float %696)  ; Saturate(value)
  %698 = uitofp i32 %676 to float
  %699 = uitofp i32 %679 to float
  %700 = fadd fast float %698, 5.000000e-01
  %701 = fadd fast float %699, 5.000000e-01
  %702 = fmul fast float %695, %700
  %703 = fmul fast float %695, %701
  %704 = fadd fast float %702, 0x3F0FFB4800000000
  %705 = fadd fast float %703, 0xBF0FFB4800000000
  %706 = call float @dx.op.binary.f32(i32 35, float %697, float %704)  ; FMax(a,b)
  %707 = call float @dx.op.binary.f32(i32 36, float %706, float %705)  ; FMin(a,b)
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 1
  %710 = extractvalue %dx.types.CBufRet.f32 %708, 2
  %711 = extractvalue %dx.types.CBufRet.f32 %708, 0
  %712 = select i1 %627, float %711, float 0.000000e+00
  %713 = fmul fast float %709, %707
  %714 = fadd fast float %712, %713
  %715 = fadd fast float %712, %710
  %716 = fsub fast float %709, %710
  %717 = fadd fast float %716, %712
  %718 = call float @dx.op.binary.f32(i32 35, float %714, float %715)  ; FMax(a,b)
  %719 = call float @dx.op.binary.f32(i32 36, float %718, float %717)  ; FMin(a,b)
  %720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %15, float %651, float %652, float %719, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %721 = extractvalue %dx.types.ResRet.f32 %720, 0
  %722 = extractvalue %dx.types.ResRet.f32 %720, 1
  %723 = extractvalue %dx.types.ResRet.f32 %720, 2
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 1
  %726 = fmul fast float %725, %721
  %727 = fmul fast float %725, %722
  %728 = fmul fast float %725, %723
  br label %729

; <label>:729                                     ; preds = %681, %645
  %730 = phi float [ %726, %681 ], [ 1.000000e+00, %645 ]
  %731 = phi float [ %727, %681 ], [ 1.000000e+00, %645 ]
  %732 = phi float [ %728, %681 ], [ 1.000000e+00, %645 ]
  %733 = fmul fast float %730, %640
  %734 = fmul fast float %731, %641
  %735 = fmul fast float %732, %642
  br label %736

; <label>:736                                     ; preds = %729, %558
  %737 = phi float [ %733, %729 ], [ %640, %558 ]
  %738 = phi float [ %734, %729 ], [ %641, %558 ]
  %739 = phi float [ %735, %729 ], [ %642, %558 ]
  %740 = and i32 %122, 2097152
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %746, label %742, !dx.controlflow.hints !67

; <label>:742                                     ; preds = %736
  %743 = add i32 %119, 192
  %744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  br label %749

; <label>:746                                     ; preds = %736
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 3
  br label %749

; <label>:749                                     ; preds = %746, %742
  %750 = phi float [ %745, %742 ], [ %748, %746 ]
  br i1 %622, label %751, label %866

; <label>:751                                     ; preds = %749
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 2
  %754 = extractvalue %dx.types.CBufRet.f32 %752, 3
  %755 = fmul fast float %753, %44
  %756 = fmul fast float %754, %45
  %757 = call float @dx.op.unary.f32(i32 7, float %755)  ; Saturate(value)
  %758 = call float @dx.op.unary.f32(i32 7, float %756)  ; Saturate(value)
  %759 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %757, float %758, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %760 = extractvalue %dx.types.ResRet.f32 %759, 0
  %761 = extractvalue %dx.types.ResRet.f32 %759, 1
  %762 = extractvalue %dx.types.ResRet.f32 %759, 2
  %763 = extractvalue %dx.types.ResRet.f32 %759, 3
  %764 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %757, float %758, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %765 = extractvalue %dx.types.ResRet.f32 %764, 0
  %766 = extractvalue %dx.types.ResRet.f32 %764, 1
  %767 = extractvalue %dx.types.ResRet.f32 %764, 2
  %768 = extractvalue %dx.types.ResRet.f32 %764, 3
  %769 = call float @dx.op.binary.f32(i32 35, float %761, float %762)  ; FMax(a,b)
  %770 = call float @dx.op.binary.f32(i32 35, float %760, float %769)  ; FMax(a,b)
  %771 = call float @dx.op.binary.f32(i32 35, float %770, float %763)  ; FMax(a,b)
  %772 = call float @dx.op.binary.f32(i32 36, float %766, float %767)  ; FMin(a,b)
  %773 = call float @dx.op.binary.f32(i32 36, float %765, float %772)  ; FMin(a,b)
  %774 = call float @dx.op.binary.f32(i32 36, float %773, float %768)  ; FMin(a,b)
  %775 = fmul fast float %771, 2.550000e+02
  %776 = fadd fast float %775, 0x3F70101020000000
  %777 = fptoui float %776 to i32
  %778 = fmul fast float %774, 2.550000e+02
  %779 = fadd fast float %778, 0x3F70101020000000
  %780 = fptoui float %779 to i32
  %781 = icmp ult i32 %777, %780
  br i1 %781, label %782, label %824

; <label>:782                                     ; preds = %751
  %783 = fcmp fast ogt float %37, 9.843750e-01
  %784 = fadd fast float %38, -4.000000e+00
  %785 = select i1 %783, float -4.000000e+00, float %784
  %786 = call float @dx.op.binary.f32(i32 35, float %785, float 0.000000e+00)  ; FMax(a,b)
  %787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %788 = extractvalue %dx.types.CBufRet.f32 %787, 0
  %789 = fadd fast float %788, %786
  %790 = extractvalue %dx.types.CBufRet.f32 %787, 2
  %791 = fmul fast float %789, %790
  %792 = call float @dx.op.unary.f32(i32 23, float %791)  ; Log(value)
  %793 = extractvalue %dx.types.CBufRet.f32 %787, 3
  %794 = fmul fast float %793, %792
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 2
  %797 = fmul fast float %794, %796
  %798 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %799 = uitofp i32 %777 to float
  %800 = uitofp i32 %780 to float
  %801 = fadd fast float %799, 5.000000e-01
  %802 = fadd fast float %800, 5.000000e-01
  %803 = fmul fast float %796, %801
  %804 = fmul fast float %796, %802
  %805 = fadd fast float %803, 0x3F0FFB4800000000
  %806 = fadd fast float %804, 0xBF0FFB4800000000
  %807 = call float @dx.op.binary.f32(i32 35, float %798, float %805)  ; FMax(a,b)
  %808 = call float @dx.op.binary.f32(i32 36, float %807, float %806)  ; FMin(a,b)
  %809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %810 = extractvalue %dx.types.CBufRet.f32 %809, 1
  %811 = extractvalue %dx.types.CBufRet.f32 %809, 2
  %812 = extractvalue %dx.types.CBufRet.f32 %809, 0
  %813 = fmul fast float %810, %808
  %814 = fadd fast float %812, %813
  %815 = fadd fast float %812, %811
  %816 = fsub fast float %810, %811
  %817 = fadd fast float %816, %812
  %818 = call float @dx.op.binary.f32(i32 35, float %814, float %815)  ; FMax(a,b)
  %819 = call float @dx.op.binary.f32(i32 36, float %818, float %817)  ; FMin(a,b)
  %820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %757, float %758, float %819, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = extractvalue %dx.types.ResRet.f32 %820, 2
  br label %824

; <label>:824                                     ; preds = %782, %751
  %825 = phi float [ %821, %782 ], [ 1.000000e+00, %751 ]
  %826 = phi float [ %822, %782 ], [ 1.000000e+00, %751 ]
  %827 = phi float [ %823, %782 ], [ 1.000000e+00, %751 ]
  %828 = call float @dx.op.dot3.f32(i32 55, float %825, float %826, float %827, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %829 = select i1 %102, float %828, float %825
  %830 = select i1 %102, float %828, float %826
  %831 = select i1 %102, float 1.000000e+00, float %827
  %832 = fmul fast float %829, %737
  %833 = fmul fast float %830, %738
  %834 = fmul fast float %831, %739
  %835 = fmul fast float %49, %753
  %836 = fmul fast float %51, %754
  %837 = fsub fast float 1.000000e+00, %835
  %838 = fsub fast float 1.000000e+00, %836
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 0
  %841 = extractvalue %dx.types.CBufRet.f32 %839, 1
  %842 = extractvalue %dx.types.CBufRet.f32 %839, 2
  %843 = fmul fast float %837, %840
  %844 = fmul fast float %837, %841
  %845 = fmul fast float %837, %842
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 0
  %848 = extractvalue %dx.types.CBufRet.f32 %846, 1
  %849 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %850 = fmul fast float %838, %847
  %851 = fmul fast float %838, %848
  %852 = fmul fast float %838, %849
  %853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %854 = extractvalue %dx.types.CBufRet.f32 %853, 0
  %855 = extractvalue %dx.types.CBufRet.f32 %853, 1
  %856 = extractvalue %dx.types.CBufRet.f32 %853, 2
  %857 = fadd fast float %850, %854
  %858 = fadd fast float %857, %843
  %859 = fadd fast float %851, %855
  %860 = fadd fast float %859, %844
  %861 = fadd fast float %852, %856
  %862 = fadd fast float %861, %845
  %863 = fmul fast float %858, %619
  %864 = fmul fast float %860, %619
  %865 = fmul fast float %862, %619
  br label %866

; <label>:866                                     ; preds = %824, %749
  %867 = phi float [ %863, %824 ], [ %79, %749 ]
  %868 = phi float [ %864, %824 ], [ %80, %749 ]
  %869 = phi float [ %865, %824 ], [ %81, %749 ]
  %870 = phi float [ %619, %824 ], [ %38, %749 ]
  %871 = phi float [ %832, %824 ], [ %737, %749 ]
  %872 = phi float [ %833, %824 ], [ %738, %749 ]
  %873 = phi float [ %834, %824 ], [ %739, %749 ]
  br i1 %627, label %1749, label %874

; <label>:874                                     ; preds = %866
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 0
  %877 = extractvalue %dx.types.CBufRet.f32 %875, 1
  %878 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %879 = extractvalue %dx.types.CBufRet.f32 %875, 3
  %880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.f32 %880, 0
  %882 = extractvalue %dx.types.CBufRet.f32 %880, 1
  %883 = extractvalue %dx.types.CBufRet.f32 %880, 2
  %884 = extractvalue %dx.types.CBufRet.f32 %880, 3
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 3
  %887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %888 = extractvalue %dx.types.CBufRet.f32 %887, 3
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 3
  %891 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %892 = extractvalue %dx.types.CBufRet.f32 %889, 1
  %893 = extractvalue %dx.types.CBufRet.f32 %889, 2
  %894 = fcmp fast olt float %893, -5.000000e-01
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 3
  %897 = call float @dx.op.dot3.f32(i32 55, float %867, float %868, float %869, float %867, float %868, float %869)  ; Dot3(ax,ay,az,bx,by,bz)
  %898 = call float @dx.op.unary.f32(i32 25, float %897)  ; Rsqrt(value)
  %899 = fmul fast float %898, %897
  %900 = fmul fast float %898, %867
  %901 = fmul fast float %898, %868
  %902 = fmul fast float %898, %869
  %903 = fadd fast float %899, %879
  %904 = call float @dx.op.dot3.f32(i32 55, float %900, float %901, float %902, float %876, float %877, float %878)  ; Dot3(ax,ay,az,bx,by,bz)
  %905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.i32 %905, 1
  %907 = and i32 %906, 1
  %908 = icmp ne i32 %907, 0
  %909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.f32 %909, 2
  %911 = fcmp fast ogt float %910, 0.000000e+00
  %912 = and i1 %908, %911
  br i1 %912, label %913, label %1252, !dx.controlflow.hints !68

; <label>:913                                     ; preds = %874
  %914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %915 = extractvalue %dx.types.CBufRet.f32 %914, 3
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 2
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %920 = fsub fast float %917, %919
  %921 = and i32 %906, 2
  %922 = extractvalue %dx.types.CBufRet.i32 %905, 0
  %923 = call i32 @dx.op.binary.i32(i32 40, i32 %922, i32 3)  ; UMin(a,b)
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 0
  %926 = extractvalue %dx.types.CBufRet.f32 %924, 1
  %927 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %928 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %929 = fsub fast float %925, %927
  %930 = fsub fast float %926, %928
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 0
  %933 = fcmp fast ogt float %932, 0.000000e+00
  %934 = fsub fast float -0.000000e+00, %929
  %935 = fsub fast float -0.000000e+00, %930
  %936 = call float @dx.op.dot2.f32(i32 54, float %900, float %901, float %900, float %901)  ; Dot2(ax,ay,bx,by)
  %937 = call float @dx.op.dot2.f32(i32 54, float %900, float %901, float %934, float %935)  ; Dot2(ax,ay,bx,by)
  %938 = fmul fast float %937, 2.000000e+00
  %939 = call float @dx.op.dot2.f32(i32 54, float %934, float %935, float %934, float %935)  ; Dot2(ax,ay,bx,by)
  %940 = fmul fast float %932, %932
  %941 = fsub fast float %939, %940
  %942 = fmul fast float %938, %938
  %943 = fmul fast float %936, 4.000000e+00
  %944 = fmul fast float %943, %941
  %945 = fsub fast float %942, %944
  %946 = fcmp fast ogt float %945, 0.000000e+00
  br i1 %946, label %947, label %962

; <label>:947                                     ; preds = %913
  %948 = fcmp fast ogt float %938, 0.000000e+00
  %949 = call float @dx.op.unary.f32(i32 24, float %945)  ; Sqrt(value)
  %950 = fsub fast float -0.000000e+00, %949
  %951 = select i1 %948, float %949, float %950
  %952 = fadd fast float %951, %938
  %953 = fmul float %952, -5.000000e-01
  %954 = fdiv fast float %953, %936
  %955 = call float @dx.op.binary.f32(i32 35, float %954, float 0.000000e+00)  ; FMax(a,b)
  %956 = call float @dx.op.binary.f32(i32 36, float %899, float %955)  ; FMin(a,b)
  %957 = fdiv fast float %941, %953
  %958 = call float @dx.op.binary.f32(i32 35, float %957, float 0.000000e+00)  ; FMax(a,b)
  %959 = call float @dx.op.binary.f32(i32 36, float %899, float %958)  ; FMin(a,b)
  %960 = call float @dx.op.binary.f32(i32 36, float %956, float %959)  ; FMin(a,b)
  %961 = call float @dx.op.binary.f32(i32 35, float %956, float %959)  ; FMax(a,b)
  br label %962

; <label>:962                                     ; preds = %947, %913
  %963 = phi float [ %961, %947 ], [ -1.000000e+00, %913 ]
  %964 = phi float [ %960, %947 ], [ -1.000000e+00, %913 ]
  %965 = phi i1 [ true, %947 ], [ false, %913 ]
  %966 = and i1 %933, %965
  br i1 %966, label %967, label %969

; <label>:967                                     ; preds = %962
  %968 = fcmp fast oeq float %964, %963
  br i1 %968, label %1212, label %970

; <label>:969                                     ; preds = %962
  br i1 %933, label %1212, label %970

; <label>:970                                     ; preds = %969, %967
  %971 = phi float [ %899, %969 ], [ %963, %967 ]
  %972 = phi float [ 0.000000e+00, %969 ], [ %964, %967 ]
  %973 = icmp ne i32 %921, 0
  %974 = fmul fast float %971, %902
  %975 = fadd fast float %974, %915
  %976 = fmul fast float %975, %971
  %977 = select i1 %973, float 0.000000e+00, float %976
  %978 = fcmp fast oeq float %902, 0.000000e+00
  %979 = fdiv fast float %920, %902
  %980 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %979)  ; FMax(a,b)
  %981 = select i1 %978, float %971, float %980
  %982 = call float @dx.op.binary.f32(i32 36, float %971, float %981)  ; FMin(a,b)
  %983 = fcmp fast ogt float %902, 0.000000e+00
  %984 = fcmp fast olt float %920, 0.000000e+00
  br i1 %983, label %985, label %1022

; <label>:985                                     ; preds = %970
  %986 = icmp eq i32 %921, 0
  br i1 %984, label %987, label %1011

; <label>:987                                     ; preds = %985
  %988 = select i1 %986, float %971, float 0.000000e+00
  %989 = fsub fast float -0.000000e+00, %988
  %990 = call float @dx.op.unary.f32(i32 6, float %989)  ; FAbs(value)
  %991 = fmul fast float %988, %902
  %992 = fadd fast float %991, %915
  %993 = fmul fast float %990, %992
  %994 = fsub fast float %977, %993
  %995 = fsub fast float %971, %990
  %996 = select i1 %986, float %995, float 0.000000e+00
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 3
  %999 = call float @dx.op.binary.f32(i32 36, float %994, float %998)  ; FMin(a,b)
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1003 = fadd fast float %1002, %1001
  %1004 = call float @dx.op.unary.f32(i32 7, float %1003)  ; Saturate(value)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1006 = extractvalue %dx.types.CBufRet.f32 %1000, 3
  %1007 = fadd fast float %1006, %1005
  %1008 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1009 = fmul fast float %1004, %999
  %1010 = fmul fast float %1009, %1008
  br label %1212

; <label>:1011                                    ; preds = %985
  br i1 %986, label %1012, label %1033

; <label>:1012                                    ; preds = %1011
  %1013 = call float @dx.op.binary.f32(i32 36, float %982, float %972)  ; FMin(a,b)
  %1014 = fsub fast float %982, %1013
  %1015 = fsub fast float %1014, %971
  %1016 = call float @dx.op.unary.f32(i32 6, float %1015)  ; FAbs(value)
  %1017 = fadd fast float %1014, %971
  %1018 = fmul fast float %1017, %902
  %1019 = fadd fast float %1018, %915
  %1020 = fmul fast float %1019, %1016
  %1021 = fsub fast float %977, %1020
  br label %1033

; <label>:1022                                    ; preds = %970
  br i1 %984, label %1023, label %1033

; <label>:1023                                    ; preds = %1022
  %1024 = call float @dx.op.binary.f32(i32 35, float %972, float %982)  ; FMax(a,b)
  %1025 = icmp eq i32 %921, 0
  %1026 = select i1 %1025, float %982, float 0.000000e+00
  %1027 = fsub fast float -0.000000e+00, %1026
  %1028 = call float @dx.op.unary.f32(i32 6, float %1027)  ; FAbs(value)
  %1029 = fmul fast float %1026, %902
  %1030 = fadd fast float %1029, %915
  %1031 = fmul fast float %1028, %1030
  %1032 = fsub fast float %977, %1031
  br label %1033

; <label>:1033                                    ; preds = %1023, %1022, %1012, %1011
  %1034 = phi float [ %972, %1011 ], [ %972, %1012 ], [ %1024, %1023 ], [ %972, %1022 ]
  %1035 = phi float [ 0.000000e+00, %1011 ], [ %1016, %1012 ], [ %1028, %1023 ], [ 0.000000e+00, %1022 ]
  %1036 = phi float [ %977, %1011 ], [ %1021, %1012 ], [ %1032, %1023 ], [ %977, %1022 ]
  %1037 = phi float [ %982, %1011 ], [ %982, %1012 ], [ %971, %1023 ], [ %971, %1022 ]
  %1038 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 0
  store float -1.000000e+00, float* %1038, align 4, !tbaa !69, !noalias !73
  %1039 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 1
  store float -1.000000e+00, float* %1039, align 4, !tbaa !69, !noalias !73
  %1040 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 2
  store float -1.000000e+00, float* %1040, align 4, !tbaa !69, !noalias !73
  %1041 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 0
  store float -1.000000e+00, float* %1041, align 4, !tbaa !69, !noalias !73
  %1042 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 1
  store float -1.000000e+00, float* %1042, align 4, !tbaa !69, !noalias !73
  %1043 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 2
  store float -1.000000e+00, float* %1043, align 4, !tbaa !69, !noalias !73
  %1044 = icmp sgt i32 %923, 0
  br i1 %1044, label %1045, label %1106

; <label>:1045                                    ; preds = %1033
  br label %1046

; <label>:1046                                    ; preds = %1095, %1045
  %1047 = phi i32 [ %1096, %1095 ], [ 0, %1045 ]
  %1048 = phi i32 [ %1097, %1095 ], [ 0, %1045 ]
  %1049 = add nuw i32 %1048, 171
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1049)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.CBufRet.f32 %1050, 1
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.CBufRet.f32 %1053, 1
  %1056 = fsub fast float %1051, %1054
  %1057 = fsub fast float %1052, %1055
  %1058 = extractvalue %dx.types.CBufRet.f32 %1050, 2
  %1059 = fsub fast float -0.000000e+00, %1056
  %1060 = fsub fast float -0.000000e+00, %1057
  %1061 = call float @dx.op.dot2.f32(i32 54, float %900, float %901, float %1059, float %1060)  ; Dot2(ax,ay,bx,by)
  %1062 = fmul fast float %1061, 2.000000e+00
  %1063 = call float @dx.op.dot2.f32(i32 54, float %1059, float %1060, float %1059, float %1060)  ; Dot2(ax,ay,bx,by)
  %1064 = fmul fast float %1058, %1058
  %1065 = fsub fast float %1063, %1064
  %1066 = fmul fast float %1062, %1062
  %1067 = fmul fast float %943, %1065
  %1068 = fsub fast float %1066, %1067
  %1069 = fcmp fast ogt float %1068, 0.000000e+00
  br i1 %1069, label %1070, label %1085

; <label>:1070                                    ; preds = %1046
  %1071 = fcmp fast ogt float %1062, 0.000000e+00
  %1072 = call float @dx.op.unary.f32(i32 24, float %1068)  ; Sqrt(value)
  %1073 = fsub fast float -0.000000e+00, %1072
  %1074 = select i1 %1071, float %1072, float %1073
  %1075 = fadd fast float %1074, %1062
  %1076 = fmul float %1075, -5.000000e-01
  %1077 = fdiv fast float %1076, %936
  %1078 = call float @dx.op.binary.f32(i32 35, float %1077, float 0.000000e+00)  ; FMax(a,b)
  %1079 = call float @dx.op.binary.f32(i32 36, float %971, float %1078)  ; FMin(a,b)
  %1080 = fdiv fast float %1065, %1076
  %1081 = call float @dx.op.binary.f32(i32 35, float %1080, float 0.000000e+00)  ; FMax(a,b)
  %1082 = call float @dx.op.binary.f32(i32 36, float %971, float %1081)  ; FMin(a,b)
  %1083 = call float @dx.op.binary.f32(i32 36, float %1079, float %1082)  ; FMin(a,b)
  %1084 = call float @dx.op.binary.f32(i32 35, float %1079, float %1082)  ; FMax(a,b)
  br label %1085

; <label>:1085                                    ; preds = %1070, %1046
  %1086 = phi float [ %1084, %1070 ], [ -1.000000e+00, %1046 ]
  %1087 = phi float [ %1083, %1070 ], [ -1.000000e+00, %1046 ]
  %1088 = phi i1 [ true, %1070 ], [ false, %1046 ]
  br i1 %1088, label %1089, label %1095

; <label>:1089                                    ; preds = %1085
  %1090 = call float @dx.op.binary.f32(i32 35, float %1034, float %1087)  ; FMax(a,b)
  %1091 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1048
  store float %1090, float* %1091, align 4, !tbaa !69, !noalias !73
  %1092 = call float @dx.op.binary.f32(i32 35, float %1034, float %1086)  ; FMax(a,b)
  %1093 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %1048
  store float %1092, float* %1093, align 4, !tbaa !69, !noalias !73
  %1094 = add nsw i32 %1047, 1
  br label %1095

; <label>:1095                                    ; preds = %1089, %1085
  %1096 = phi i32 [ %1094, %1089 ], [ %1047, %1085 ]
  %1097 = add nuw nsw i32 %1048, 1
  %1098 = icmp eq i32 %1097, %923
  br i1 %1098, label %1099, label %1046

; <label>:1099                                    ; preds = %1095
  %1100 = load float, float* %1040, align 4, !tbaa !69, !alias.scope !89, !noalias !92
  %1101 = load float, float* %1039, align 4, !tbaa !69, !alias.scope !95, !noalias !96
  %1102 = load float, float* %1038, align 4, !tbaa !69, !alias.scope !97, !noalias !98
  %1103 = load float, float* %1043, align 4, !tbaa !69, !alias.scope !99, !noalias !102
  %1104 = load float, float* %1042, align 4, !tbaa !69, !alias.scope !105, !noalias !106
  %1105 = load float, float* %1041, align 4, !tbaa !69, !alias.scope !107, !noalias !108
  br label %1106

; <label>:1106                                    ; preds = %1099, %1033
  %1107 = phi float [ -1.000000e+00, %1033 ], [ %1105, %1099 ]
  %1108 = phi float [ -1.000000e+00, %1033 ], [ %1104, %1099 ]
  %1109 = phi float [ -1.000000e+00, %1033 ], [ %1103, %1099 ]
  %1110 = phi float [ -1.000000e+00, %1033 ], [ %1102, %1099 ]
  %1111 = phi float [ -1.000000e+00, %1033 ], [ %1101, %1099 ]
  %1112 = phi float [ -1.000000e+00, %1033 ], [ %1100, %1099 ]
  %1113 = phi i32 [ 0, %1033 ], [ %1096, %1099 ]
  %1114 = call float @dx.op.binary.f32(i32 36, float %1111, float %1112)  ; FMin(a,b)
  %1115 = call float @dx.op.binary.f32(i32 36, float %1110, float %1114)  ; FMin(a,b)
  %1116 = call float @dx.op.binary.f32(i32 35, float %1110, float %1111)  ; FMax(a,b)
  %1117 = call float @dx.op.binary.f32(i32 36, float %1116, float %1112)  ; FMin(a,b)
  %1118 = call float @dx.op.binary.f32(i32 36, float %1110, float %1111)  ; FMin(a,b)
  %1119 = call float @dx.op.binary.f32(i32 35, float %1118, float %1117)  ; FMax(a,b)
  %1120 = call float @dx.op.binary.f32(i32 35, float %1111, float %1112)  ; FMax(a,b)
  %1121 = call float @dx.op.binary.f32(i32 35, float %1110, float %1120)  ; FMax(a,b)
  store float %1115, float* %1038, align 4, !tbaa !69, !alias.scope !97, !noalias !98
  store float %1119, float* %1039, align 4, !tbaa !69, !alias.scope !95, !noalias !96
  store float %1121, float* %1040, align 4, !tbaa !69, !alias.scope !89, !noalias !92
  %1122 = call float @dx.op.binary.f32(i32 36, float %1108, float %1109)  ; FMin(a,b)
  %1123 = call float @dx.op.binary.f32(i32 36, float %1107, float %1122)  ; FMin(a,b)
  %1124 = call float @dx.op.binary.f32(i32 35, float %1107, float %1108)  ; FMax(a,b)
  %1125 = call float @dx.op.binary.f32(i32 36, float %1124, float %1109)  ; FMin(a,b)
  %1126 = call float @dx.op.binary.f32(i32 36, float %1107, float %1108)  ; FMin(a,b)
  %1127 = call float @dx.op.binary.f32(i32 35, float %1126, float %1125)  ; FMax(a,b)
  %1128 = call float @dx.op.binary.f32(i32 35, float %1108, float %1109)  ; FMax(a,b)
  %1129 = call float @dx.op.binary.f32(i32 35, float %1107, float %1128)  ; FMax(a,b)
  store float %1123, float* %1041, align 4, !tbaa !69, !alias.scope !107, !noalias !108
  store float %1127, float* %1042, align 4, !tbaa !69, !alias.scope !105, !noalias !106
  store float %1129, float* %1043, align 4, !tbaa !69, !alias.scope !99, !noalias !102
  %1130 = sub nsw i32 3, %1113
  %1131 = icmp sgt i32 %1130, 2
  br i1 %1131, label %1132, label %1150

; <label>:1132                                    ; preds = %1106
  %1133 = icmp eq i32 %921, 0
  %1134 = fsub fast float %971, %1035
  %1135 = select i1 %1133, float %1134, float %1035
  %1136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1137 = extractvalue %dx.types.CBufRet.f32 %1136, 3
  %1138 = call float @dx.op.binary.f32(i32 36, float %1036, float %1137)  ; FMin(a,b)
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.CBufRet.f32 %1139, 1
  %1142 = fadd fast float %1141, %1140
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1139, 2
  %1145 = extractvalue %dx.types.CBufRet.f32 %1139, 3
  %1146 = fadd fast float %1145, %1144
  %1147 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  %1148 = fmul fast float %1143, %1138
  %1149 = fmul fast float %1148, %1147
  br label %1212

; <label>:1150                                    ; preds = %1106
  %1151 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1130
  %1152 = load float, float* %1151, align 4, !tbaa !69, !noalias !73
  %1153 = fcmp fast olt float %1152, %1037
  %1154 = icmp sgt i32 %1113, 0
  %1155 = and i1 %1154, %1153
  br i1 %1155, label %1156, label %1193

; <label>:1156                                    ; preds = %1150
  br label %1157

; <label>:1157                                    ; preds = %1186, %1156
  %1158 = phi float [ %1187, %1186 ], [ %1035, %1156 ]
  %1159 = phi float [ %1188, %1186 ], [ %1036, %1156 ]
  %1160 = phi float [ %1168, %1186 ], [ %1152, %1156 ]
  %1161 = phi i32 [ %1165, %1186 ], [ %1130, %1156 ]
  %1162 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %1161
  %1163 = load float, float* %1162, align 4, !tbaa !69, !noalias !73
  %1164 = icmp slt i32 %1161, 2
  %1165 = add nsw i32 %1161, 1
  %1166 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1165
  %1167 = load float, float* %1166, align 4, !tbaa !69, !noalias !73
  %1168 = select i1 %1164, float %1167, float %971
  %1169 = call float @dx.op.binary.f32(i32 36, float %1168, float %1163)  ; FMin(a,b)
  %1170 = call float @dx.op.binary.f32(i32 36, float %1037, float %1169)  ; FMin(a,b)
  %1171 = icmp eq i32 %921, 0
  %1172 = fadd fast float %1170, %1160
  %1173 = fmul fast float %1172, %902
  %1174 = fadd fast float %1173, %915
  br i1 %1171, label %1180, label %1175

; <label>:1175                                    ; preds = %1157
  %1176 = fsub fast float %1170, %1160
  %1177 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1176)  ; FMax(a,b)
  %1178 = fmul fast float %1177, %1174
  %1179 = fadd fast float %1178, %1159
  br label %1186

; <label>:1180                                    ; preds = %1157
  %1181 = fsub fast float %1160, %1170
  %1182 = call float @dx.op.unary.f32(i32 6, float %1181)  ; FAbs(value)
  %1183 = fadd fast float %1182, %1158
  %1184 = fmul fast float %1182, %1174
  %1185 = fsub fast float %1159, %1184
  br label %1186

; <label>:1186                                    ; preds = %1180, %1175
  %1187 = phi float [ %1177, %1175 ], [ %1183, %1180 ]
  %1188 = phi float [ %1179, %1175 ], [ %1185, %1180 ]
  %1189 = fcmp fast olt float %1168, %1037
  %1190 = icmp slt i32 %1165, 3
  %1191 = and i1 %1190, %1189
  br i1 %1191, label %1157, label %1192

; <label>:1192                                    ; preds = %1186
  br label %1193

; <label>:1193                                    ; preds = %1192, %1150
  %1194 = phi float [ %1035, %1150 ], [ %1187, %1192 ]
  %1195 = phi float [ %1036, %1150 ], [ %1188, %1192 ]
  %1196 = fsub fast float %971, %1194
  %1197 = select i1 %973, float %1194, float %1196
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 3
  %1200 = call float @dx.op.binary.f32(i32 36, float %1195, float %1199)  ; FMin(a,b)
  %1201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1202 = extractvalue %dx.types.CBufRet.f32 %1201, 0
  %1203 = extractvalue %dx.types.CBufRet.f32 %1201, 1
  %1204 = fadd fast float %1203, %1202
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = extractvalue %dx.types.CBufRet.f32 %1201, 2
  %1207 = extractvalue %dx.types.CBufRet.f32 %1201, 3
  %1208 = fadd fast float %1207, %1206
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1210 = fmul fast float %1205, %1200
  %1211 = fmul fast float %1210, %1209
  br label %1212

; <label>:1212                                    ; preds = %1193, %1132, %987, %969, %967
  %1213 = phi float [ %996, %987 ], [ %1135, %1132 ], [ %1197, %1193 ], [ 0.000000e+00, %967 ], [ 0.000000e+00, %969 ]
  %1214 = phi float [ %1010, %987 ], [ %1149, %1132 ], [ %1211, %1193 ], [ 0.000000e+00, %967 ], [ 0.000000e+00, %969 ]
  %1215 = fmul fast float %910, %1214
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 2
  %1218 = fsub fast float %917, %1217
  %1219 = fcmp fast olt float %1215, -2.000000e+01
  %1220 = call float @dx.op.unary.f32(i32 21, float %1215)  ; Exp(value)
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 2
  %1223 = extractvalue %dx.types.CBufRet.f32 %1221, 3
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 2
  %1226 = fmul fast float %1223, %1218
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  %1228 = fsub fast float 1.000000e+00, %1227
  %1229 = fmul fast float %902, 5.000000e-01
  %1230 = fadd fast float %1229, 5.000000e-01
  %1231 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  %1232 = fsub fast float 1.000000e+00, %1231
  %1233 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1228)  ; FMax(a,b)
  %1234 = fdiv fast float %1232, %1233
  %1235 = fsub fast float %1218, %869
  %1236 = call float @dx.op.unary.f32(i32 6, float %1235)  ; FAbs(value)
  %1237 = fmul fast float %1236, %1222
  %1238 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1239 = fsub fast float 1.000000e+00, %1237
  %1240 = fmul fast float %1239, %1238
  %1241 = fadd fast float %1240, %1237
  %1242 = fmul fast float %1225, %1218
  %1243 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1244 = fsub fast float 1.000000e+00, %1241
  %1245 = fmul fast float %1244, %1243
  %1246 = fadd fast float %1245, %1241
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1248 = fadd fast float %1220, -1.000000e+00
  %1249 = select i1 %1219, float -1.000000e+00, float %1248
  %1250 = fmul fast float %1247, %1249
  %1251 = fadd fast float %1250, 1.000000e+00
  br label %1252

; <label>:1252                                    ; preds = %1212, %874
  %1253 = phi float [ %1213, %1212 ], [ 0.000000e+00, %874 ]
  %1254 = phi float [ %1251, %1212 ], [ 1.000000e+00, %874 ]
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1257 = fsub fast float 1.000000e+00, %1254
  %1258 = fmul fast float %1257, %903
  %1259 = fmul fast float %1258, %1256
  %1260 = fsub fast float %903, %1259
  br i1 %894, label %1261, label %1277, !dx.controlflow.hints !109

; <label>:1261                                    ; preds = %1252
  %1262 = fmul fast float %904, %891
  %1263 = fadd fast float %1262, %892
  %1264 = call float @dx.op.unary.f32(i32 7, float %1263)  ; Saturate(value)
  %1265 = fmul fast float %881, %1260
  %1266 = fsub fast float -0.000000e+00, %1265
  %1267 = fmul fast float %882, %1260
  %1268 = fsub fast float -0.000000e+00, %1267
  %1269 = call float @dx.op.unary.f32(i32 21, float %1266)  ; Exp(value)
  %1270 = call float @dx.op.unary.f32(i32 21, float %1268)  ; Exp(value)
  %1271 = call float @dx.op.binary.f32(i32 35, float %896, float %1269)  ; FMax(a,b)
  %1272 = call float @dx.op.binary.f32(i32 35, float %896, float %1270)  ; FMax(a,b)
  %1273 = fsub fast float %1272, %1271
  %1274 = fmul fast float %1273, %1264
  %1275 = fadd fast float %1274, %1271
  %1276 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  br label %1310

; <label>:1277                                    ; preds = %1252
  %1278 = fmul fast float %1260, %890
  %1279 = call float @dx.op.unary.f32(i32 7, float %1278)  ; Saturate(value)
  %1280 = fsub fast float 2.000000e+00, %1279
  %1281 = fmul fast float %1279, 9.921875e-01
  %1282 = fmul fast float %1281, %1280
  %1283 = fadd fast float %1282, 3.906250e-03
  %1284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1283, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = fsub fast float %1279, %1285
  %1287 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1286)  ; FMax(a,b)
  %1288 = fmul fast float %884, %869
  %1289 = call float @dx.op.unary.f32(i32 6, float %1288)  ; FAbs(value)
  %1290 = fcmp fast ogt float %1289, 0x3EB0C6F7A0000000
  br i1 %1290, label %1291, label %1297, !dx.controlflow.hints !110

; <label>:1291                                    ; preds = %1277
  %1292 = fmul fast float %1288, 0xBFF7154760000000
  %1293 = call float @dx.op.unary.f32(i32 21, float %1292)  ; Exp(value)
  %1294 = fsub fast float 1.000000e+00, %1293
  %1295 = fdiv fast float %1294, %1288
  %1296 = fmul fast float %1295, %886
  br label %1297

; <label>:1297                                    ; preds = %1291, %1277
  %1298 = phi float [ %1296, %1291 ], [ %886, %1277 ]
  %1299 = fadd fast float %1298, %888
  %1300 = fmul fast float %1299, %1287
  %1301 = fmul fast float %881, %1300
  %1302 = fsub fast float -0.000000e+00, %1301
  %1303 = fmul fast float %882, %1300
  %1304 = fsub fast float -0.000000e+00, %1303
  %1305 = fmul fast float %883, %1300
  %1306 = fsub fast float -0.000000e+00, %1305
  %1307 = call float @dx.op.unary.f32(i32 21, float %1302)  ; Exp(value)
  %1308 = call float @dx.op.unary.f32(i32 21, float %1304)  ; Exp(value)
  %1309 = call float @dx.op.unary.f32(i32 21, float %1306)  ; Exp(value)
  br label %1310

; <label>:1310                                    ; preds = %1297, %1261
  %1311 = phi float [ %1276, %1261 ], [ %1307, %1297 ]
  %1312 = phi float [ %1276, %1261 ], [ %1308, %1297 ]
  %1313 = phi float [ %1276, %1261 ], [ %1309, %1297 ]
  br i1 %912, label %1314, label %1410, !dx.controlflow.hints !111

; <label>:1314                                    ; preds = %1310
  %1315 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1311)  ; FMax(a,b)
  %1316 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1312)  ; FMax(a,b)
  %1317 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1313)  ; FMax(a,b)
  %1318 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1254)  ; FMax(a,b)
  %1319 = call float @dx.op.binary.f32(i32 35, float %1253, float %1260)  ; FMax(a,b)
  %1320 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1319)  ; FMax(a,b)
  %1321 = fdiv fast float %1253, %1320
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1323 = fdiv fast float %1260, %1320
  %1324 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1325 = fcmp fast une float %1318, 1.000000e+00
  br i1 %1325, label %1326, label %1329, !dx.controlflow.hints !112

; <label>:1326                                    ; preds = %1314
  %1327 = call float @dx.op.unary.f32(i32 23, float %1318)  ; Log(value)
  %1328 = fmul fast float %1327, 0x3FE62E4300000000
  br label %1329

; <label>:1329                                    ; preds = %1326, %1314
  %1330 = phi float [ %1328, %1326 ], [ 0.000000e+00, %1314 ]
  %1331 = fcmp fast une float %1315, 1.000000e+00
  br i1 %1331, label %1332, label %1335, !dx.controlflow.hints !113

; <label>:1332                                    ; preds = %1329
  %1333 = call float @dx.op.unary.f32(i32 23, float %1315)  ; Log(value)
  %1334 = fmul fast float %1333, 0x3FE62E4300000000
  br label %1335

; <label>:1335                                    ; preds = %1332, %1329
  %1336 = phi float [ %1334, %1332 ], [ 0.000000e+00, %1329 ]
  %1337 = fcmp fast une float %1316, 1.000000e+00
  br i1 %1337, label %1338, label %1341, !dx.controlflow.hints !113

; <label>:1338                                    ; preds = %1335
  %1339 = call float @dx.op.unary.f32(i32 23, float %1316)  ; Log(value)
  %1340 = fmul fast float %1339, 0x3FE62E4300000000
  br label %1341

; <label>:1341                                    ; preds = %1338, %1335
  %1342 = phi float [ %1340, %1338 ], [ 0.000000e+00, %1335 ]
  %1343 = fcmp fast une float %1317, 1.000000e+00
  br i1 %1343, label %1344, label %1347, !dx.controlflow.hints !113

; <label>:1344                                    ; preds = %1341
  %1345 = call float @dx.op.unary.f32(i32 23, float %1317)  ; Log(value)
  %1346 = fmul fast float %1345, 0x3FE62E4300000000
  br label %1347

; <label>:1347                                    ; preds = %1344, %1341
  %1348 = phi float [ %1346, %1344 ], [ 0.000000e+00, %1341 ]
  %1349 = fmul fast float %1330, %1324
  %1350 = fmul fast float %1336, %1322
  %1351 = fmul fast float %1342, %1322
  %1352 = fmul fast float %1348, %1322
  %1353 = fadd fast float %1350, %1349
  %1354 = fadd fast float %1351, %1349
  %1355 = fadd fast float %1352, %1349
  %1356 = fcmp fast une float %1353, 0.000000e+00
  br i1 %1356, label %1357, label %1360, !dx.controlflow.hints !114

; <label>:1357                                    ; preds = %1347
  %1358 = fmul fast float %1353, 0x3FF7154760000000
  %1359 = call float @dx.op.unary.f32(i32 21, float %1358)  ; Exp(value)
  br label %1360

; <label>:1360                                    ; preds = %1357, %1347
  %1361 = phi float [ %1359, %1357 ], [ 1.000000e+00, %1347 ]
  %1362 = fcmp fast une float %1354, 0.000000e+00
  br i1 %1362, label %1363, label %1366, !dx.controlflow.hints !114

; <label>:1363                                    ; preds = %1360
  %1364 = fmul fast float %1354, 0x3FF7154760000000
  %1365 = call float @dx.op.unary.f32(i32 21, float %1364)  ; Exp(value)
  br label %1366

; <label>:1366                                    ; preds = %1363, %1360
  %1367 = phi float [ %1365, %1363 ], [ 1.000000e+00, %1360 ]
  %1368 = fcmp fast une float %1355, 0.000000e+00
  br i1 %1368, label %1369, label %1372, !dx.controlflow.hints !114

; <label>:1369                                    ; preds = %1366
  %1370 = fmul fast float %1355, 0x3FF7154760000000
  %1371 = call float @dx.op.unary.f32(i32 21, float %1370)  ; Exp(value)
  br label %1372

; <label>:1372                                    ; preds = %1369, %1366
  %1373 = phi float [ %1371, %1369 ], [ 1.000000e+00, %1366 ]
  %1374 = fcmp fast ogt float %1322, %1324
  br i1 %1374, label %1375, label %1382

; <label>:1375                                    ; preds = %1372
  %1376 = fsub fast float 1.000000e+00, %1324
  %1377 = fmul fast float %1330, %1376
  %1378 = fcmp fast une float %1377, 0.000000e+00
  br i1 %1378, label %1379, label %1403, !dx.controlflow.hints !115

; <label>:1379                                    ; preds = %1375
  %1380 = fmul fast float %1377, 0x3FF7154760000000
  %1381 = call float @dx.op.unary.f32(i32 21, float %1380)  ; Exp(value)
  br label %1403

; <label>:1382                                    ; preds = %1372
  %1383 = fsub fast float 1.000000e+00, %1322
  %1384 = fmul fast float %1336, %1383
  %1385 = fmul fast float %1342, %1383
  %1386 = fmul fast float %1348, %1383
  %1387 = fcmp fast une float %1384, 0.000000e+00
  br i1 %1387, label %1388, label %1391, !dx.controlflow.hints !114

; <label>:1388                                    ; preds = %1382
  %1389 = fmul fast float %1384, 0x3FF7154760000000
  %1390 = call float @dx.op.unary.f32(i32 21, float %1389)  ; Exp(value)
  br label %1391

; <label>:1391                                    ; preds = %1388, %1382
  %1392 = phi float [ %1390, %1388 ], [ 1.000000e+00, %1382 ]
  %1393 = fcmp fast une float %1385, 0.000000e+00
  br i1 %1393, label %1394, label %1397, !dx.controlflow.hints !114

; <label>:1394                                    ; preds = %1391
  %1395 = fmul fast float %1385, 0x3FF7154760000000
  %1396 = call float @dx.op.unary.f32(i32 21, float %1395)  ; Exp(value)
  br label %1397

; <label>:1397                                    ; preds = %1394, %1391
  %1398 = phi float [ %1396, %1394 ], [ 1.000000e+00, %1391 ]
  %1399 = fcmp fast une float %1386, 0.000000e+00
  br i1 %1399, label %1400, label %1403, !dx.controlflow.hints !114

; <label>:1400                                    ; preds = %1397
  %1401 = fmul fast float %1386, 0x3FF7154760000000
  %1402 = call float @dx.op.unary.f32(i32 21, float %1401)  ; Exp(value)
  br label %1403

; <label>:1403                                    ; preds = %1400, %1397, %1379, %1375
  %1404 = phi float [ %1402, %1400 ], [ %1381, %1379 ], [ 1.000000e+00, %1375 ], [ 1.000000e+00, %1397 ]
  %1405 = phi float [ %1398, %1400 ], [ %1381, %1379 ], [ 1.000000e+00, %1375 ], [ %1398, %1397 ]
  %1406 = phi float [ %1392, %1400 ], [ %1381, %1379 ], [ 1.000000e+00, %1375 ], [ %1392, %1397 ]
  %1407 = fmul fast float %1406, %1361
  %1408 = fmul fast float %1405, %1367
  %1409 = fmul fast float %1404, %1373
  br label %1410

; <label>:1410                                    ; preds = %1403, %1310
  %1411 = phi float [ %1409, %1403 ], [ %1313, %1310 ]
  %1412 = phi float [ %1408, %1403 ], [ %1312, %1310 ]
  %1413 = phi float [ %1407, %1403 ], [ %1311, %1310 ]
  %1414 = call float @dx.op.dot3.f32(i32 55, float %1413, float %1412, float %1411, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1415 = select i1 %102, float %1414, float %1413
  %1416 = select i1 %102, float %1414, float %1412
  %1417 = select i1 %102, float 1.000000e+00, float %1411
  %1418 = fmul fast float %1415, %871
  %1419 = fmul fast float %1416, %872
  %1420 = fmul fast float %1417, %873
  %1421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1422 = extractvalue %dx.types.CBufRet.i32 %1421, 0
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1749, label %1424, !dx.controlflow.hints !116

; <label>:1424                                    ; preds = %1410
  %1425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1426 = extractvalue %dx.types.CBufRet.f32 %1425, 2
  %1427 = extractvalue %dx.types.CBufRet.f32 %1425, 3
  %1428 = fmul fast float %1426, %44
  %1429 = fmul fast float %1427, %45
  %1430 = fmul fast float %1428, 2.000000e+00
  %1431 = fmul fast float %1429, 2.000000e+00
  %1432 = fsub fast float 1.000000e+00, %1430
  %1433 = fsub fast float 1.000000e+00, %1431
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.CBufRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.CBufRet.f32 %1434, 2
  %1438 = fmul fast float %1432, %1435
  %1439 = fmul fast float %1432, %1436
  %1440 = fmul fast float %1432, %1437
  %1441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1442 = extractvalue %dx.types.CBufRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.CBufRet.f32 %1441, 1
  %1444 = extractvalue %dx.types.CBufRet.f32 %1441, 2
  %1445 = fmul fast float %1433, %1442
  %1446 = fmul fast float %1433, %1443
  %1447 = fmul fast float %1433, %1444
  %1448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.CBufRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.CBufRet.f32 %1448, 2
  %1452 = fadd fast float %1445, %1449
  %1453 = fadd fast float %1452, %1438
  %1454 = fadd fast float %1446, %1450
  %1455 = fadd fast float %1454, %1439
  %1456 = fadd fast float %1447, %1451
  %1457 = fadd fast float %1456, %1440
  %1458 = fmul fast float %1453, %870
  %1459 = fmul fast float %1455, %870
  %1460 = fmul fast float %1457, %870
  %1461 = fmul fast float %1458, %1458
  %1462 = fmul fast float %1459, %1459
  %1463 = fadd fast float %1461, %1462
  %1464 = fmul fast float %1460, %1460
  %1465 = fadd fast float %1463, %1464
  %1466 = call float @dx.op.unary.f32(i32 24, float %1465)  ; Sqrt(value)
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 0
  %1469 = fsub fast float %1466, %1468
  %1470 = extractvalue %dx.types.CBufRet.f32 %1467, 2
  %1471 = fmul fast float %1469, %1470
  %1472 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  %1473 = fadd fast float %1472, -5.000000e-01
  %1474 = fmul fast float %1473, 2.000000e+00
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.f32 %1475, 2
  %1477 = call float @dx.op.binary.f32(i32 36, float %1476, float %1474)  ; FMin(a,b)
  %1478 = fsub fast float -0.000000e+00, %1476
  %1479 = fcmp fast ogt float %1477, %1478
  br i1 %1479, label %1480, label %1749, !dx.controlflow.hints !117

; <label>:1480                                    ; preds = %1424
  %1481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.f32 %1481, 3
  %1483 = fcmp fast ogt float %1482, 0.000000e+00
  br i1 %1483, label %1484, label %1559, !dx.controlflow.hints !118

; <label>:1484                                    ; preds = %1480
  %1485 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %1486 = extractvalue %dx.types.Dimensions %1485, 0
  %1487 = sitofp i32 %1486 to float
  %1488 = extractvalue %dx.types.Dimensions %1485, 1
  %1489 = sitofp i32 %1488 to float
  %1490 = fmul fast float %1428, %1487
  %1491 = fmul fast float %1429, %1489
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 1
  %1494 = fsub fast float -0.000000e+00, %1493
  %1495 = fptoui float %1494 to i32
  %1496 = fptoui float %1490 to i32
  %1497 = fptoui float %1491 to i32
  %1498 = and i32 %1495, 31
  %1499 = lshr i32 %1496, %1498
  %1500 = lshr i32 %1497, %1498
  %1501 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %1495, i32 %1499, i32 %1500, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1502 = extractvalue %dx.types.ResRet.f32 %1501, 0
  %1503 = fcmp fast olt float %1502, -1.000000e+00
  %1504 = fcmp fast ogt float %1502, -1.000000e+00
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 1
  %1507 = select i1 %1504, float %1506, float 1.000000e+00
  %1508 = fadd fast float %1502, 1.000000e+00
  %1509 = fmul fast float %1507, %1508
  %1510 = call float @dx.op.unary.f32(i32 6, float %1509)  ; FAbs(value)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1505, 3
  %1512 = fcmp fast oge float %1510, %1511
  %1513 = select i1 %1512, float 0x4197782600000000, float %1510
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1516 = extractvalue %dx.types.CBufRet.f32 %1514, 1
  %1517 = extractvalue %dx.types.CBufRet.f32 %1514, 2
  %1518 = select i1 %1503, float %1515, float %1435
  %1519 = select i1 %1503, float %1516, float %1436
  %1520 = select i1 %1503, float %1517, float %1437
  %1521 = fmul fast float %1518, %1432
  %1522 = fmul fast float %1519, %1432
  %1523 = fmul fast float %1520, %1432
  %1524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1524, 0
  %1526 = extractvalue %dx.types.CBufRet.f32 %1524, 1
  %1527 = extractvalue %dx.types.CBufRet.f32 %1524, 2
  %1528 = select i1 %1503, float %1525, float %1442
  %1529 = select i1 %1503, float %1526, float %1443
  %1530 = select i1 %1503, float %1527, float %1444
  %1531 = fmul fast float %1528, %1433
  %1532 = fmul fast float %1529, %1433
  %1533 = fmul fast float %1530, %1433
  %1534 = fadd fast float %1531, %1521
  %1535 = fadd fast float %1532, %1522
  %1536 = fadd fast float %1533, %1523
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.CBufRet.f32 %1537, 1
  %1540 = extractvalue %dx.types.CBufRet.f32 %1537, 2
  %1541 = select i1 %1503, float %1538, float %1449
  %1542 = select i1 %1503, float %1539, float %1450
  %1543 = select i1 %1503, float %1540, float %1451
  %1544 = fadd fast float %1534, %1541
  %1545 = fadd fast float %1535, %1542
  %1546 = fadd fast float %1536, %1543
  %1547 = fmul fast float %1544, %1513
  %1548 = fmul fast float %1545, %1513
  %1549 = fmul fast float %1546, %1513
  %1550 = fmul fast float %1547, %1547
  %1551 = fmul fast float %1548, %1548
  %1552 = fadd fast float %1550, %1551
  %1553 = fmul fast float %1549, %1549
  %1554 = fadd fast float %1552, %1553
  %1555 = call float @dx.op.unary.f32(i32 24, float %1554)  ; Sqrt(value)
  %1556 = fsub fast float %1555, %1468
  %1557 = fmul fast float %1556, %1470
  %1558 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  br label %1559

; <label>:1559                                    ; preds = %1484, %1480
  %1560 = phi float [ %1558, %1484 ], [ 1.000000e+00, %1480 ]
  %1561 = fmul fast float %1477, 5.000000e-01
  %1562 = fadd fast float %1561, 5.000000e-01
  %1563 = call float @dx.op.unary.f32(i32 22, float %1562)  ; Frc(value)
  %1564 = call float @dx.op.unary.f32(i32 27, float %1563)  ; Round_ni(value)
  %1565 = call float @dx.op.unary.f32(i32 22, float %1563)  ; Frc(value)
  %1566 = fmul fast float %1565, 2.000000e+00
  %1567 = fadd fast float %1566, -1.000000e+00
  %1568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %16, float %1428, float %1429, float %1564, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1569 = extractvalue %dx.types.ResRet.f32 %1568, 0
  %1570 = extractvalue %dx.types.ResRet.f32 %1568, 1
  %1571 = extractvalue %dx.types.ResRet.f32 %1568, 2
  %1572 = extractvalue %dx.types.ResRet.f32 %1568, 3
  %1573 = fadd fast float %1569, -5.000000e-01
  %1574 = fadd fast float %1571, -5.000000e-01
  %1575 = fmul fast float %1573, 0xBFD5555560000000
  %1576 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1574, float %1575)  ; FMad(a,b,c)
  %1577 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1570, float 0.000000e+00)  ; FMad(a,b,c)
  %1578 = fadd fast float %1577, %1572
  %1579 = fmul fast float %1573, -7.500000e-01
  %1580 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1574, float %1579)  ; FMad(a,b,c)
  %1581 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1570, float 0.000000e+00)  ; FMad(a,b,c)
  %1582 = fadd fast float %1581, %1572
  %1583 = call float @dx.op.binary.f32(i32 35, float %1576, float -1.000000e+00)  ; FMax(a,b)
  %1584 = call float @dx.op.binary.f32(i32 35, float %1578, float -1.000000e+00)  ; FMax(a,b)
  %1585 = call float @dx.op.binary.f32(i32 35, float %1580, float -1.000000e+00)  ; FMax(a,b)
  %1586 = call float @dx.op.binary.f32(i32 35, float %1582, float -1.000000e+00)  ; FMax(a,b)
  %1587 = call float @dx.op.binary.f32(i32 36, float %1583, float 1.000000e+00)  ; FMin(a,b)
  %1588 = call float @dx.op.binary.f32(i32 36, float %1584, float 1.000000e+00)  ; FMin(a,b)
  %1589 = call float @dx.op.binary.f32(i32 36, float %1585, float 1.000000e+00)  ; FMin(a,b)
  %1590 = call float @dx.op.binary.f32(i32 36, float %1586, float 1.000000e+00)  ; FMin(a,b)
  %1591 = fcmp fast olt float %1587, 0x3FEFFF8020000000
  br i1 %1591, label %1592, label %1707, !dx.controlflow.hints !119

; <label>:1592                                    ; preds = %1559
  %1593 = extractvalue %dx.types.CBufRet.f32 %1475, 3
  %1594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1595 = extractvalue %dx.types.CBufRet.f32 %1594, 0
  %1596 = extractvalue %dx.types.CBufRet.f32 %1594, 1
  %1597 = extractvalue %dx.types.CBufRet.f32 %1594, 2
  %1598 = extractvalue %dx.types.CBufRet.f32 %1594, 3
  %1599 = fsub fast float %1595, %1587
  %1600 = fsub fast float %1596, %1588
  %1601 = fsub fast float %1597, %1589
  %1602 = fsub fast float %1598, %1590
  %1603 = fmul fast float %1599, %1593
  %1604 = fmul fast float %1600, %1593
  %1605 = fmul fast float %1601, %1593
  %1606 = fmul fast float %1602, %1593
  %1607 = fadd fast float %1603, %1587
  %1608 = fadd fast float %1604, %1588
  %1609 = fsub fast float -0.000000e+00, %1608
  %1610 = fadd fast float %1605, %1589
  %1611 = fadd fast float %1606, %1590
  %1612 = fmul fast float %1607, %1607
  %1613 = fsub fast float %1608, %1612
  %1614 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1613)  ; FMax(a,b)
  %1615 = fdiv fast float 1.000000e+00, %1614
  %1616 = fmul fast float %1608, %1607
  %1617 = fsub fast float %1610, %1616
  %1618 = fsub fast float %1567, %1607
  %1619 = fmul fast float %1567, %1567
  %1620 = fsub fast float %1619, %1608
  %1621 = fmul fast float %1618, %1615
  %1622 = fmul fast float %1621, %1617
  %1623 = fsub fast float %1620, %1622
  %1624 = fmul fast float %1608, %1608
  %1625 = fsub fast float %1611, %1624
  %1626 = fmul fast float %1617, %1617
  %1627 = fmul fast float %1626, %1615
  %1628 = fsub fast float %1625, %1627
  %1629 = fdiv fast float %1623, %1628
  %1630 = fmul fast float %1617, %1629
  %1631 = fsub fast float %1618, %1630
  %1632 = fmul fast float %1631, %1615
  %1633 = fmul fast float %1632, %1607
  %1634 = fsub fast float 1.000000e+00, %1633
  %1635 = fmul fast float %1608, %1629
  %1636 = fsub fast float %1634, %1635
  %1637 = fmul fast float %1632, %1632
  %1638 = fmul fast float %1629, 4.000000e+00
  %1639 = fmul fast float %1638, %1636
  %1640 = fsub fast float %1637, %1639
  %1641 = call float @dx.op.unary.f32(i32 24, float %1640)  ; Sqrt(value)
  %1642 = fcmp fast oge float %1632, 0.000000e+00
  %1643 = fsub fast float -0.000000e+00, %1641
  %1644 = select i1 %1642, float %1643, float %1641
  %1645 = fsub fast float %1644, %1632
  %1646 = fdiv fast float %1645, %1629
  %1647 = fdiv fast float %1636, %1645
  %1648 = fmul fast float %1646, 5.000000e-01
  %1649 = fmul fast float %1647, 2.000000e+00
  %1650 = select i1 %1642, float %1648, float %1649
  %1651 = select i1 %1642, float %1649, float %1648
  %1652 = call float @dx.op.binary.f32(i32 35, float %1650, float %1651)  ; FMax(a,b)
  %1653 = call float @dx.op.binary.f32(i32 36, float %1650, float %1651)  ; FMin(a,b)
  %1654 = fcmp fast ogt float %1567, %1653
  br i1 %1654, label %1655, label %1665

; <label>:1655                                    ; preds = %1592
  %1656 = fsub fast float %1567, %1653
  %1657 = fsub fast float %1652, %1653
  %1658 = fmul fast float %1656, %1657
  %1659 = fmul fast float %1652, %1567
  %1660 = fadd fast float %1652, %1567
  %1661 = fmul fast float %1660, %1607
  %1662 = fadd fast float %1659, %1608
  %1663 = fsub fast float %1662, %1661
  %1664 = fdiv fast float %1663, %1658
  br label %1665

; <label>:1665                                    ; preds = %1655, %1592
  %1666 = phi float [ %1664, %1655 ], [ 0.000000e+00, %1592 ]
  %1667 = fcmp fast ogt float %1567, %1652
  %1668 = fsub fast float %1567, %1652
  br i1 %1667, label %1669, label %1679

; <label>:1669                                    ; preds = %1665
  %1670 = fsub fast float %1652, %1653
  %1671 = fmul fast float %1670, %1668
  %1672 = fmul fast float %1653, %1567
  %1673 = fadd fast float %1653, %1567
  %1674 = fmul fast float %1673, %1607
  %1675 = fsub fast float %1609, %1672
  %1676 = fadd fast float %1675, %1674
  %1677 = fdiv fast float %1676, %1671
  %1678 = fadd fast float %1677, %1666
  br label %1679

; <label>:1679                                    ; preds = %1669, %1665
  %1680 = phi float [ %1678, %1669 ], [ %1666, %1665 ]
  %1681 = fsub fast float %1567, %1653
  %1682 = fmul fast float %1681, %1668
  %1683 = fmul fast float %1653, %1652
  %1684 = fadd fast float %1653, %1652
  %1685 = fmul fast float %1684, %1607
  %1686 = fadd fast float %1683, %1608
  %1687 = fsub fast float %1686, %1685
  %1688 = fdiv fast float %1687, %1682
  %1689 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1690 = fcmp fast oeq float %750, 0.000000e+00
  %1691 = extractvalue %dx.types.CBufRet.f32 %1475, 0
  %1692 = fcmp fast oeq float %1691, 0.000000e+00
  %1693 = or i1 %1690, %1692
  %1694 = fmul fast float %1691, 2.000000e+00
  %1695 = fadd fast float %1476, %1477
  %1696 = fdiv fast float %1695, %1694
  %1697 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1698 = fmul fast float %1697, 2.000000e+00
  %1699 = fsub fast float 3.000000e+00, %1698
  %1700 = fmul fast float %1697, %1697
  %1701 = fmul fast float %1700, %1699
  %1702 = select i1 %1693, float 1.000000e+00, float %1701
  %1703 = fmul fast float %1688, %750
  %1704 = fadd fast float %1689, %1703
  %1705 = call float @dx.op.unary.f32(i32 7, float %1704)  ; Saturate(value)
  %1706 = fmul fast float %1702, %1705
  br label %1707

; <label>:1707                                    ; preds = %1679, %1559
  %1708 = phi float [ %1706, %1679 ], [ 0.000000e+00, %1559 ]
  %1709 = fsub fast float 1.000000e+00, %1708
  %1710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %16, float %1428, float %1429, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1711 = extractvalue %dx.types.ResRet.f32 %1710, 0
  %1712 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1713 = extractvalue %dx.types.CBufRet.i32 %1712, 2
  %1714 = icmp eq i32 %1713, 0
  br i1 %1714, label %1720, label %1715

; <label>:1715                                    ; preds = %1707
  %1716 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1717 = fadd fast float %1711, -1.000000e+00
  %1718 = fmul fast float %1716, %1717
  %1719 = fadd fast float %1718, 1.000000e+00
  br label %1720

; <label>:1720                                    ; preds = %1715, %1707
  %1721 = phi float [ %1719, %1715 ], [ %1709, %1707 ]
  br i1 %1483, label %1722, label %1740

; <label>:1722                                    ; preds = %1720
  %1723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1724 = extractvalue %dx.types.CBufRet.f32 %1723, 1
  %1725 = fsub fast float %1560, %1724
  %1726 = call float @dx.op.unary.f32(i32 7, float %1725)  ; Saturate(value)
  %1727 = fsub fast float %1560, %1482
  %1728 = call float @dx.op.unary.f32(i32 7, float %1727)  ; Saturate(value)
  %1729 = fsub fast float %1726, %1728
  %1730 = fsub fast float %1562, %1728
  %1731 = fdiv fast float %1730, %1729
  %1732 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1733 = fmul fast float %1732, 2.000000e+00
  %1734 = fsub fast float 3.000000e+00, %1733
  %1735 = fsub fast float %1711, %1721
  %1736 = fmul fast float %1732, %1732
  %1737 = fmul fast float %1736, %1735
  %1738 = fmul fast float %1737, %1734
  %1739 = fadd fast float %1738, %1721
  br label %1740

; <label>:1740                                    ; preds = %1722, %1720
  %1741 = phi float [ %1739, %1722 ], [ %1721, %1720 ]
  %1742 = call float @dx.op.binary.f32(i32 35, float %1711, float %1741)  ; FMax(a,b)
  %1743 = call float @dx.op.dot3.f32(i32 55, float %1742, float %1742, float %1742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1744 = select i1 %102, float %1743, float %1742
  %1745 = select i1 %102, float 1.000000e+00, float %1742
  %1746 = fmul fast float %1744, %1418
  %1747 = fmul fast float %1744, %1419
  %1748 = fmul fast float %1745, %1420
  br label %1749

; <label>:1749                                    ; preds = %1740, %1424, %1410, %866
  %1750 = phi float [ %871, %866 ], [ %1418, %1410 ], [ %1746, %1740 ], [ %1418, %1424 ]
  %1751 = phi float [ %872, %866 ], [ %1419, %1410 ], [ %1747, %1740 ], [ %1419, %1424 ]
  %1752 = phi float [ %873, %866 ], [ %1420, %1410 ], [ %1748, %1740 ], [ %1420, %1424 ]
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 2
  %1755 = extractvalue %dx.types.CBufRet.f32 %1753, 3
  %1756 = fmul fast float %1754, %44
  %1757 = fmul fast float %1755, %45
  %1758 = call float @dx.op.unary.f32(i32 7, float %1756)  ; Saturate(value)
  %1759 = call float @dx.op.unary.f32(i32 7, float %1757)  ; Saturate(value)
  %1760 = select i1 %627, i32 2, i32 0
  %1761 = or i32 %1760, 1
  %1762 = uitofp i32 %1761 to float
  %1763 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %1758, float %1759, float %1762, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1764 = extractvalue %dx.types.ResRet.f32 %1763, 0
  %1765 = extractvalue %dx.types.ResRet.f32 %1763, 1
  %1766 = extractvalue %dx.types.ResRet.f32 %1763, 2
  %1767 = extractvalue %dx.types.ResRet.f32 %1763, 3
  %1768 = add nuw nsw i32 %1760, 2
  %1769 = uitofp i32 %1768 to float
  %1770 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %1758, float %1759, float %1769, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1771 = extractvalue %dx.types.ResRet.f32 %1770, 0
  %1772 = extractvalue %dx.types.ResRet.f32 %1770, 1
  %1773 = extractvalue %dx.types.ResRet.f32 %1770, 2
  %1774 = extractvalue %dx.types.ResRet.f32 %1770, 3
  %1775 = call float @dx.op.binary.f32(i32 35, float %1765, float %1766)  ; FMax(a,b)
  %1776 = call float @dx.op.binary.f32(i32 35, float %1764, float %1775)  ; FMax(a,b)
  %1777 = call float @dx.op.binary.f32(i32 35, float %1776, float %1767)  ; FMax(a,b)
  %1778 = call float @dx.op.binary.f32(i32 36, float %1772, float %1773)  ; FMin(a,b)
  %1779 = call float @dx.op.binary.f32(i32 36, float %1771, float %1778)  ; FMin(a,b)
  %1780 = call float @dx.op.binary.f32(i32 36, float %1779, float %1774)  ; FMin(a,b)
  %1781 = fmul fast float %1777, 2.550000e+02
  %1782 = fadd fast float %1781, 0x3F70101020000000
  %1783 = fptoui float %1782 to i32
  %1784 = fmul fast float %1780, 2.550000e+02
  %1785 = fadd fast float %1784, 0x3F70101020000000
  %1786 = fptoui float %1785 to i32
  %1787 = icmp ult i32 %1783, %1786
  br i1 %1787, label %1788, label %1831

; <label>:1788                                    ; preds = %1749
  %1789 = fcmp fast ogt float %37, 9.843750e-01
  %1790 = fadd fast float %870, -4.000000e+00
  %1791 = select i1 %1789, float -4.000000e+00, float %1790
  %1792 = call float @dx.op.binary.f32(i32 35, float %1791, float 0.000000e+00)  ; FMax(a,b)
  %1793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1794 = extractvalue %dx.types.CBufRet.f32 %1793, 0
  %1795 = fadd fast float %1794, %1792
  %1796 = extractvalue %dx.types.CBufRet.f32 %1793, 2
  %1797 = fmul fast float %1795, %1796
  %1798 = call float @dx.op.unary.f32(i32 23, float %1797)  ; Log(value)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1793, 3
  %1800 = fmul fast float %1799, %1798
  %1801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1802 = extractvalue %dx.types.CBufRet.f32 %1801, 2
  %1803 = fmul fast float %1800, %1802
  %1804 = call float @dx.op.unary.f32(i32 7, float %1803)  ; Saturate(value)
  %1805 = uitofp i32 %1783 to float
  %1806 = uitofp i32 %1786 to float
  %1807 = fadd fast float %1805, 5.000000e-01
  %1808 = fadd fast float %1806, 5.000000e-01
  %1809 = fmul fast float %1802, %1807
  %1810 = fmul fast float %1802, %1808
  %1811 = fadd fast float %1809, 0x3F0FFB4800000000
  %1812 = fadd fast float %1810, 0xBF0FFB4800000000
  %1813 = call float @dx.op.binary.f32(i32 35, float %1804, float %1811)  ; FMax(a,b)
  %1814 = call float @dx.op.binary.f32(i32 36, float %1813, float %1812)  ; FMin(a,b)
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 1
  %1817 = extractvalue %dx.types.CBufRet.f32 %1815, 2
  %1818 = extractvalue %dx.types.CBufRet.f32 %1815, 0
  %1819 = select i1 %627, float %1818, float 0.000000e+00
  %1820 = fmul fast float %1816, %1814
  %1821 = fadd fast float %1819, %1820
  %1822 = fadd fast float %1819, %1817
  %1823 = fsub fast float %1816, %1817
  %1824 = fadd fast float %1823, %1819
  %1825 = call float @dx.op.binary.f32(i32 35, float %1821, float %1822)  ; FMax(a,b)
  %1826 = call float @dx.op.binary.f32(i32 36, float %1825, float %1824)  ; FMin(a,b)
  %1827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %1758, float %1759, float %1826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1828 = extractvalue %dx.types.ResRet.f32 %1827, 0
  %1829 = extractvalue %dx.types.ResRet.f32 %1827, 1
  %1830 = extractvalue %dx.types.ResRet.f32 %1827, 2
  br label %1831

; <label>:1831                                    ; preds = %1788, %1749
  %1832 = phi float [ %1828, %1788 ], [ 1.000000e+00, %1749 ]
  %1833 = phi float [ %1829, %1788 ], [ 1.000000e+00, %1749 ]
  %1834 = phi float [ %1830, %1788 ], [ 1.000000e+00, %1749 ]
  %1835 = call float @dx.op.dot3.f32(i32 55, float %1832, float %1833, float %1834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1836 = select i1 %102, float %1835, float %1832
  %1837 = select i1 %102, float %1835, float %1833
  %1838 = fmul fast float %1836, %1750
  %1839 = fmul fast float %1837, %1751
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 0
  br i1 %102, label %1842, label %1845

; <label>:1842                                    ; preds = %1831
  %1843 = fadd fast float %1838, %1839
  %1844 = fmul fast float %1841, %1843
  br label %1855

; <label>:1845                                    ; preds = %1831
  %1846 = fmul fast float %1834, %1752
  %1847 = fmul fast float %1841, %1838
  %1848 = fmul fast float %1841, %1839
  %1849 = fmul fast float %1846, %1841
  %1850 = call float @dx.op.binary.f32(i32 35, float %1848, float %1849)  ; FMax(a,b)
  %1851 = call float @dx.op.binary.f32(i32 35, float %1847, float %1850)  ; FMax(a,b)
  %1852 = call float @dx.op.binary.f32(i32 35, float %1851, float 0.000000e+00)  ; FMax(a,b)
  %1853 = fcmp fast ugt float %1852, 0x3F10000000000000
  br i1 %1853, label %1855, label %1854

; <label>:1854                                    ; preds = %1845
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1855

; <label>:1855                                    ; preds = %1854, %1845, %1842
  %1856 = phi float [ %1844, %1842 ], [ %1847, %1854 ], [ %1847, %1845 ]
  %1857 = phi float [ 0.000000e+00, %1842 ], [ %1848, %1854 ], [ %1848, %1845 ]
  %1858 = phi float [ 0.000000e+00, %1842 ], [ %1849, %1854 ], [ %1849, %1845 ]
  %1859 = fadd fast float %499, 0x3FE3C6EF40000000
  %1860 = call float @dx.op.unary.f32(i32 22, float %1859)  ; Frc(value)
  %1861 = call float @dx.op.unary.f32(i32 23, float %1856)  ; Log(value)
  %1862 = fadd fast float %1861, -7.000000e+00
  %1863 = call float @dx.op.unary.f32(i32 21, float %1862)  ; Exp(value)
  %1864 = fmul fast float %1860, 2.000000e+00
  %1865 = fadd fast float %1864, -1.000000e+00
  %1866 = fmul fast float %1863, %1865
  %1867 = fcmp fast ogt float %1856, 0.000000e+00
  %1868 = select i1 %1867, float %1866, float 0.000000e+00
  %1869 = fadd fast float %1868, %1856
  %1870 = fadd fast float %499, 0x3FF3C6EF40000000
  %1871 = call float @dx.op.unary.f32(i32 22, float %1870)  ; Frc(value)
  %1872 = call float @dx.op.unary.f32(i32 23, float %1857)  ; Log(value)
  %1873 = fadd fast float %1872, -7.000000e+00
  %1874 = call float @dx.op.unary.f32(i32 21, float %1873)  ; Exp(value)
  %1875 = fmul fast float %1871, 2.000000e+00
  %1876 = fadd fast float %1875, -1.000000e+00
  %1877 = fmul fast float %1874, %1876
  %1878 = fcmp fast ogt float %1857, 0.000000e+00
  %1879 = select i1 %1878, float %1877, float 0.000000e+00
  %1880 = fadd fast float %1879, %1857
  %1881 = fadd fast float %499, 0x3FFDAA66E0000000
  %1882 = call float @dx.op.unary.f32(i32 22, float %1881)  ; Frc(value)
  %1883 = call float @dx.op.unary.f32(i32 23, float %1858)  ; Log(value)
  %1884 = fadd fast float %1883, -6.000000e+00
  %1885 = call float @dx.op.unary.f32(i32 21, float %1884)  ; Exp(value)
  %1886 = fmul fast float %1882, 2.000000e+00
  %1887 = fadd fast float %1886, -1.000000e+00
  %1888 = fmul fast float %1885, %1887
  %1889 = fcmp fast ogt float %1858, 0.000000e+00
  %1890 = select i1 %1889, float %1888, float 0.000000e+00
  %1891 = fadd fast float %1890, %1858
  %1892 = select i1 %102, float %1857, float %1880
  %1893 = select i1 %102, float %1858, float %1891
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1894 = call float @dx.op.binary.f32(i32 36, float %1869, float 3.225500e+04)  ; FMin(a,b)
  %1895 = call float @dx.op.binary.f32(i32 36, float %1892, float 3.225500e+04)  ; FMin(a,b)
  %1896 = call float @dx.op.binary.f32(i32 36, float %1893, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1894)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1895)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1896)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!32 = !{[30 x i32] [i32 28, i32 8, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 1, i32 3, i32 4, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0]}
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

