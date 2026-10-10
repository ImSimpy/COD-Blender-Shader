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
; shader hash: 0fb226a0d06d1c929cddf03f42fbf861
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
  br i1 %230, label %469, label %231, !dx.controlflow.hints !61

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
  %467 = fmul fast float %465, %189
  %468 = fmul fast float %467, %466
  br label %469

; <label>:469                                     ; preds = %460, %228
  %470 = phi float [ %468, %460 ], [ %189, %228 ]
  %471 = phi float [ %462, %460 ], [ %21, %228 ]
  %472 = phi float [ %463, %460 ], [ %22, %228 ]
  %473 = phi float [ %464, %460 ], [ %23, %228 ]
  %474 = fmul fast float %471, %24
  %475 = fmul fast float %472, %24
  %476 = fmul fast float %473, %24
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 2
  %479 = fptosi float %38 to i32
  %480 = sitofp i32 %479 to float
  %481 = fadd fast float %478, %480
  %482 = fmul fast float %481, 0x3FE3C6EF40000000
  %483 = frem fast float %44, 2.560000e+02
  %484 = frem fast float %45, 2.560000e+02
  %485 = fptoui float %483 to i32
  %486 = fptoui float %484 to i32
  %487 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %14, i32 0, i32 %485, i32 %486, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = fadd fast float %488, %482
  %490 = call float @dx.op.unary.f32(i32 22, float %489)  ; Frc(value)
  %491 = and i32 %122, 1
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %549, label %493, !dx.controlflow.hints !64

; <label>:493                                     ; preds = %469
  %494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 2
  %496 = extractvalue %dx.types.ResRet.f32 %494, 3
  %497 = add i32 %119, 16
  %498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.f32 %498, 0
  %500 = extractvalue %dx.types.ResRet.f32 %498, 1
  %501 = extractvalue %dx.types.ResRet.f32 %498, 2
  %502 = add i32 %119, 32
  %503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = extractvalue %dx.types.ResRet.f32 %503, 1
  %506 = extractvalue %dx.types.ResRet.f32 %503, 2
  %507 = and i32 %122, 2
  %508 = icmp eq i32 %507, 0
  %509 = call float @dx.op.dot3.f32(i32 55, float %28, float %29, float %30, float %28, float %29, float %30)  ; Dot3(ax,ay,az,bx,by,bz)
  %510 = call float @dx.op.unary.f32(i32 25, float %509)  ; Rsqrt(value)
  %511 = fmul fast float %510, %28
  %512 = fmul fast float %510, %29
  %513 = fmul fast float %510, %30
  %514 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %515 = call float @dx.op.unary.f32(i32 25, float %514)  ; Rsqrt(value)
  %516 = fmul fast float %515, %79
  %517 = fmul fast float %515, %80
  %518 = fmul fast float %515, %81
  %519 = call float @dx.op.dot3.f32(i32 55, float %516, float %517, float %518, float %511, float %512, float %513)  ; Dot3(ax,ay,az,bx,by,bz)
  %520 = fmul fast float %519, %519
  %521 = fmul fast float %520, %495
  %522 = fadd fast float %521, %496
  %523 = call float @dx.op.unary.f32(i32 7, float %522)  ; Saturate(value)
  br i1 %508, label %524, label %534, !dx.controlflow.hints !65

; <label>:524                                     ; preds = %493
  %525 = extractvalue %dx.types.ResRet.f32 %494, 1
  %526 = extractvalue %dx.types.ResRet.f32 %494, 0
  %527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %528 = extractvalue %dx.types.CBufRet.f32 %527, 3
  %529 = fmul fast float %528, %514
  %530 = fsub fast float %526, %529
  %531 = fmul fast float %530, %525
  %532 = call float @dx.op.unary.f32(i32 7, float %531)  ; Saturate(value)
  %533 = fmul fast float %532, %523
  br label %534

; <label>:534                                     ; preds = %524, %493
  %535 = phi float [ %533, %524 ], [ %523, %493 ]
  %536 = fsub fast float %499, %504
  %537 = fsub fast float %500, %505
  %538 = fsub fast float %501, %506
  %539 = fmul fast float %535, %536
  %540 = fmul fast float %535, %537
  %541 = fmul fast float %535, %538
  %542 = fadd fast float %539, %504
  %543 = fadd fast float %540, %505
  %544 = fadd fast float %541, %506
  %545 = fmul fast float %542, %474
  %546 = fmul fast float %543, %475
  %547 = fmul fast float %544, %476
  %548 = fmul fast float %535, %470
  br label %549

; <label>:549                                     ; preds = %534, %469
  %550 = phi float [ %548, %534 ], [ %470, %469 ]
  %551 = phi float [ %545, %534 ], [ %474, %469 ]
  %552 = phi float [ %546, %534 ], [ %475, %469 ]
  %553 = phi float [ %547, %534 ], [ %476, %469 ]
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = add i32 %555, 0
  %557 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %556, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %558 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %557, %dx.types.Handle %41, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %559 = extractvalue %dx.types.ResRet.f32 %558, 0
  %560 = extractvalue %dx.types.ResRet.f32 %558, 1
  %561 = extractvalue %dx.types.ResRet.f32 %558, 2
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = shl i32 %563, 4
  %565 = and i32 %564, 32752
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = lshr i32 %563, 7
  %568 = and i32 %567, 32752
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = lshr i32 %563, 22
  %571 = shl nuw nsw i32 %570, 5
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = fmul fast float %566, %559
  %574 = fmul fast float %569, %560
  %575 = fmul fast float %572, %561
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = lshr i32 %577, 22
  %579 = shl nuw nsw i32 %578, 5
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = fmul fast float %580, %573
  %582 = select i1 %102, float %581, float %573
  %583 = fmul fast float %582, %551
  %584 = fmul fast float %574, %552
  %585 = fmul fast float %575, %553
  %586 = call float @dx.op.dot3.f32(i32 55, float %583, float %584, float %585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %587 = select i1 %102, float 0.000000e+00, float %583
  %588 = select i1 %102, float %586, float %584
  %589 = select i1 %102, float 0.000000e+00, float %585
  %590 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %192, i32 %193, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = lshr i32 %591, 18
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %593, 0x3F4C00EBA0000000
  %595 = call float @dx.op.unary.f32(i32 21, float %594)  ; Exp(value)
  %596 = fadd fast float %595, -1.000000e+00
  %597 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %598 = extractvalue %dx.types.Dimensions %597, 0
  %599 = sitofp i32 %598 to float
  %600 = extractvalue %dx.types.Dimensions %597, 1
  %601 = sitofp i32 %600 to float
  %602 = fcmp fast oge float %190, %599
  %603 = fcmp fast oge float %191, %601
  %604 = or i1 %602, %603
  %605 = select i1 %604, float 0x4197782600000000, float %596
  %606 = icmp eq i32 %118, 3
  %607 = fcmp fast ogt float %38, %605
  %608 = and i1 %216, %607
  %609 = or i1 %606, %608
  %610 = icmp eq i32 %118, 2
  %611 = fcmp fast ole float %38, %605
  %612 = and i1 %610, %611
  %613 = or i1 %612, %609
  %614 = fmul fast float %31, %25
  %615 = fmul fast float %614, %471
  %616 = fmul fast float %615, %582
  %617 = fmul fast float %31, %26
  %618 = fmul fast float %617, %472
  %619 = fmul fast float %618, %574
  %620 = fmul fast float %31, %27
  %621 = fmul fast float %620, %473
  %622 = fmul fast float %621, %575
  %623 = fadd fast float %587, %616
  %624 = fadd fast float %588, %619
  %625 = fadd fast float %589, %622
  %626 = fmul fast float %623, %550
  %627 = fmul fast float %624, %550
  %628 = fmul fast float %625, %550
  %629 = and i32 %122, 1048576
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %722, label %631, !dx.controlflow.hints !66

; <label>:631                                     ; preds = %549
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 2
  %634 = extractvalue %dx.types.CBufRet.f32 %632, 3
  %635 = fmul fast float %633, %44
  %636 = fmul fast float %634, %45
  %637 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %638 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %639 = select i1 %613, i32 2, i32 0
  %640 = or i32 %639, 1
  %641 = uitofp i32 %640 to float
  %642 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %637, float %638, float %641, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = extractvalue %dx.types.ResRet.f32 %642, 3
  %647 = add nuw nsw i32 %639, 2
  %648 = uitofp i32 %647 to float
  %649 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %637, float %638, float %648, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = extractvalue %dx.types.ResRet.f32 %649, 1
  %652 = extractvalue %dx.types.ResRet.f32 %649, 2
  %653 = extractvalue %dx.types.ResRet.f32 %649, 3
  %654 = call float @dx.op.binary.f32(i32 35, float %644, float %645)  ; FMax(a,b)
  %655 = call float @dx.op.binary.f32(i32 35, float %643, float %654)  ; FMax(a,b)
  %656 = call float @dx.op.binary.f32(i32 35, float %655, float %646)  ; FMax(a,b)
  %657 = call float @dx.op.binary.f32(i32 36, float %651, float %652)  ; FMin(a,b)
  %658 = call float @dx.op.binary.f32(i32 36, float %650, float %657)  ; FMin(a,b)
  %659 = call float @dx.op.binary.f32(i32 36, float %658, float %653)  ; FMin(a,b)
  %660 = fmul fast float %656, 2.550000e+02
  %661 = fadd fast float %660, 0x3F70101020000000
  %662 = fptoui float %661 to i32
  %663 = fmul fast float %659, 2.550000e+02
  %664 = fadd fast float %663, 0x3F70101020000000
  %665 = fptoui float %664 to i32
  %666 = icmp ult i32 %662, %665
  br i1 %666, label %667, label %715

; <label>:667                                     ; preds = %631
  %668 = fcmp fast ogt float %37, 9.843750e-01
  %669 = fadd fast float %38, -4.000000e+00
  %670 = select i1 %668, float -4.000000e+00, float %669
  %671 = call float @dx.op.binary.f32(i32 35, float %670, float 0.000000e+00)  ; FMax(a,b)
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 0
  %674 = fadd fast float %673, %671
  %675 = extractvalue %dx.types.CBufRet.f32 %672, 2
  %676 = fmul fast float %674, %675
  %677 = call float @dx.op.unary.f32(i32 23, float %676)  ; Log(value)
  %678 = extractvalue %dx.types.CBufRet.f32 %672, 3
  %679 = fmul fast float %678, %677
  %680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %681 = extractvalue %dx.types.CBufRet.f32 %680, 2
  %682 = fmul fast float %679, %681
  %683 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  %684 = uitofp i32 %662 to float
  %685 = uitofp i32 %665 to float
  %686 = fadd fast float %684, 5.000000e-01
  %687 = fadd fast float %685, 5.000000e-01
  %688 = fmul fast float %681, %686
  %689 = fmul fast float %681, %687
  %690 = fadd fast float %688, 0x3F0FFB4800000000
  %691 = fadd fast float %689, 0xBF0FFB4800000000
  %692 = call float @dx.op.binary.f32(i32 35, float %683, float %690)  ; FMax(a,b)
  %693 = call float @dx.op.binary.f32(i32 36, float %692, float %691)  ; FMin(a,b)
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 1
  %696 = extractvalue %dx.types.CBufRet.f32 %694, 2
  %697 = extractvalue %dx.types.CBufRet.f32 %694, 0
  %698 = select i1 %613, float %697, float 0.000000e+00
  %699 = fmul fast float %695, %693
  %700 = fadd fast float %698, %699
  %701 = fadd fast float %698, %696
  %702 = fsub fast float %695, %696
  %703 = fadd fast float %702, %698
  %704 = call float @dx.op.binary.f32(i32 35, float %700, float %701)  ; FMax(a,b)
  %705 = call float @dx.op.binary.f32(i32 36, float %704, float %703)  ; FMin(a,b)
  %706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %15, float %637, float %638, float %705, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = extractvalue %dx.types.ResRet.f32 %706, 1
  %709 = extractvalue %dx.types.ResRet.f32 %706, 2
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 1
  %712 = fmul fast float %711, %707
  %713 = fmul fast float %711, %708
  %714 = fmul fast float %711, %709
  br label %715

; <label>:715                                     ; preds = %667, %631
  %716 = phi float [ %712, %667 ], [ 1.000000e+00, %631 ]
  %717 = phi float [ %713, %667 ], [ 1.000000e+00, %631 ]
  %718 = phi float [ %714, %667 ], [ 1.000000e+00, %631 ]
  %719 = fmul fast float %716, %626
  %720 = fmul fast float %717, %627
  %721 = fmul fast float %718, %628
  br label %722

; <label>:722                                     ; preds = %715, %549
  %723 = phi float [ %719, %715 ], [ %626, %549 ]
  %724 = phi float [ %720, %715 ], [ %627, %549 ]
  %725 = phi float [ %721, %715 ], [ %628, %549 ]
  %726 = and i32 %122, 2097152
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %732, label %728, !dx.controlflow.hints !67

; <label>:728                                     ; preds = %722
  %729 = add i32 %119, 192
  %730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  br label %735

; <label>:732                                     ; preds = %722
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 3
  br label %735

; <label>:735                                     ; preds = %732, %728
  %736 = phi float [ %731, %728 ], [ %734, %732 ]
  br i1 %608, label %737, label %852

; <label>:737                                     ; preds = %735
  %738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.f32 %738, 2
  %740 = extractvalue %dx.types.CBufRet.f32 %738, 3
  %741 = fmul fast float %739, %44
  %742 = fmul fast float %740, %45
  %743 = call float @dx.op.unary.f32(i32 7, float %741)  ; Saturate(value)
  %744 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  %745 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %743, float %744, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = extractvalue %dx.types.ResRet.f32 %745, 1
  %748 = extractvalue %dx.types.ResRet.f32 %745, 2
  %749 = extractvalue %dx.types.ResRet.f32 %745, 3
  %750 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %16, float %743, float %744, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = extractvalue %dx.types.ResRet.f32 %750, 1
  %753 = extractvalue %dx.types.ResRet.f32 %750, 2
  %754 = extractvalue %dx.types.ResRet.f32 %750, 3
  %755 = call float @dx.op.binary.f32(i32 35, float %747, float %748)  ; FMax(a,b)
  %756 = call float @dx.op.binary.f32(i32 35, float %746, float %755)  ; FMax(a,b)
  %757 = call float @dx.op.binary.f32(i32 35, float %756, float %749)  ; FMax(a,b)
  %758 = call float @dx.op.binary.f32(i32 36, float %752, float %753)  ; FMin(a,b)
  %759 = call float @dx.op.binary.f32(i32 36, float %751, float %758)  ; FMin(a,b)
  %760 = call float @dx.op.binary.f32(i32 36, float %759, float %754)  ; FMin(a,b)
  %761 = fmul fast float %757, 2.550000e+02
  %762 = fadd fast float %761, 0x3F70101020000000
  %763 = fptoui float %762 to i32
  %764 = fmul fast float %760, 2.550000e+02
  %765 = fadd fast float %764, 0x3F70101020000000
  %766 = fptoui float %765 to i32
  %767 = icmp ult i32 %763, %766
  br i1 %767, label %768, label %810

; <label>:768                                     ; preds = %737
  %769 = fcmp fast ogt float %37, 9.843750e-01
  %770 = fadd fast float %38, -4.000000e+00
  %771 = select i1 %769, float -4.000000e+00, float %770
  %772 = call float @dx.op.binary.f32(i32 35, float %771, float 0.000000e+00)  ; FMax(a,b)
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 0
  %775 = fadd fast float %774, %772
  %776 = extractvalue %dx.types.CBufRet.f32 %773, 2
  %777 = fmul fast float %775, %776
  %778 = call float @dx.op.unary.f32(i32 23, float %777)  ; Log(value)
  %779 = extractvalue %dx.types.CBufRet.f32 %773, 3
  %780 = fmul fast float %779, %778
  %781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %782 = extractvalue %dx.types.CBufRet.f32 %781, 2
  %783 = fmul fast float %780, %782
  %784 = call float @dx.op.unary.f32(i32 7, float %783)  ; Saturate(value)
  %785 = uitofp i32 %763 to float
  %786 = uitofp i32 %766 to float
  %787 = fadd fast float %785, 5.000000e-01
  %788 = fadd fast float %786, 5.000000e-01
  %789 = fmul fast float %782, %787
  %790 = fmul fast float %782, %788
  %791 = fadd fast float %789, 0x3F0FFB4800000000
  %792 = fadd fast float %790, 0xBF0FFB4800000000
  %793 = call float @dx.op.binary.f32(i32 35, float %784, float %791)  ; FMax(a,b)
  %794 = call float @dx.op.binary.f32(i32 36, float %793, float %792)  ; FMin(a,b)
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 1
  %797 = extractvalue %dx.types.CBufRet.f32 %795, 2
  %798 = extractvalue %dx.types.CBufRet.f32 %795, 0
  %799 = fmul fast float %796, %794
  %800 = fadd fast float %798, %799
  %801 = fadd fast float %798, %797
  %802 = fsub fast float %796, %797
  %803 = fadd fast float %802, %798
  %804 = call float @dx.op.binary.f32(i32 35, float %800, float %801)  ; FMax(a,b)
  %805 = call float @dx.op.binary.f32(i32 36, float %804, float %803)  ; FMin(a,b)
  %806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %15, float %743, float %744, float %805, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %807 = extractvalue %dx.types.ResRet.f32 %806, 0
  %808 = extractvalue %dx.types.ResRet.f32 %806, 1
  %809 = extractvalue %dx.types.ResRet.f32 %806, 2
  br label %810

; <label>:810                                     ; preds = %768, %737
  %811 = phi float [ %807, %768 ], [ 1.000000e+00, %737 ]
  %812 = phi float [ %808, %768 ], [ 1.000000e+00, %737 ]
  %813 = phi float [ %809, %768 ], [ 1.000000e+00, %737 ]
  %814 = call float @dx.op.dot3.f32(i32 55, float %811, float %812, float %813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %815 = select i1 %102, float %814, float %811
  %816 = select i1 %102, float %814, float %812
  %817 = select i1 %102, float 1.000000e+00, float %813
  %818 = fmul fast float %815, %723
  %819 = fmul fast float %816, %724
  %820 = fmul fast float %817, %725
  %821 = fmul fast float %49, %739
  %822 = fmul fast float %51, %740
  %823 = fsub fast float 1.000000e+00, %821
  %824 = fsub fast float 1.000000e+00, %822
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 0
  %827 = extractvalue %dx.types.CBufRet.f32 %825, 1
  %828 = extractvalue %dx.types.CBufRet.f32 %825, 2
  %829 = fmul fast float %823, %826
  %830 = fmul fast float %823, %827
  %831 = fmul fast float %823, %828
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 0
  %834 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %835 = extractvalue %dx.types.CBufRet.f32 %832, 2
  %836 = fmul fast float %824, %833
  %837 = fmul fast float %824, %834
  %838 = fmul fast float %824, %835
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 0
  %841 = extractvalue %dx.types.CBufRet.f32 %839, 1
  %842 = extractvalue %dx.types.CBufRet.f32 %839, 2
  %843 = fadd fast float %836, %840
  %844 = fadd fast float %843, %829
  %845 = fadd fast float %837, %841
  %846 = fadd fast float %845, %830
  %847 = fadd fast float %838, %842
  %848 = fadd fast float %847, %831
  %849 = fmul fast float %844, %605
  %850 = fmul fast float %846, %605
  %851 = fmul fast float %848, %605
  br label %852

; <label>:852                                     ; preds = %810, %735
  %853 = phi float [ %849, %810 ], [ %79, %735 ]
  %854 = phi float [ %850, %810 ], [ %80, %735 ]
  %855 = phi float [ %851, %810 ], [ %81, %735 ]
  %856 = phi float [ %605, %810 ], [ %38, %735 ]
  %857 = phi float [ %818, %810 ], [ %723, %735 ]
  %858 = phi float [ %819, %810 ], [ %724, %735 ]
  %859 = phi float [ %820, %810 ], [ %725, %735 ]
  br i1 %613, label %1735, label %860

; <label>:860                                     ; preds = %852
  %861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %862 = extractvalue %dx.types.CBufRet.f32 %861, 0
  %863 = extractvalue %dx.types.CBufRet.f32 %861, 1
  %864 = extractvalue %dx.types.CBufRet.f32 %861, 2
  %865 = extractvalue %dx.types.CBufRet.f32 %861, 3
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 0
  %868 = extractvalue %dx.types.CBufRet.f32 %866, 1
  %869 = extractvalue %dx.types.CBufRet.f32 %866, 2
  %870 = extractvalue %dx.types.CBufRet.f32 %866, 3
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 3
  %873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.f32 %873, 3
  %875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.f32 %875, 3
  %877 = extractvalue %dx.types.CBufRet.f32 %875, 0
  %878 = extractvalue %dx.types.CBufRet.f32 %875, 1
  %879 = extractvalue %dx.types.CBufRet.f32 %875, 2
  %880 = fcmp fast olt float %879, -5.000000e-01
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 3
  %883 = call float @dx.op.dot3.f32(i32 55, float %853, float %854, float %855, float %853, float %854, float %855)  ; Dot3(ax,ay,az,bx,by,bz)
  %884 = call float @dx.op.unary.f32(i32 25, float %883)  ; Rsqrt(value)
  %885 = fmul fast float %884, %883
  %886 = fmul fast float %884, %853
  %887 = fmul fast float %884, %854
  %888 = fmul fast float %884, %855
  %889 = fadd fast float %885, %865
  %890 = call float @dx.op.dot3.f32(i32 55, float %886, float %887, float %888, float %862, float %863, float %864)  ; Dot3(ax,ay,az,bx,by,bz)
  %891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.i32 %891, 1
  %893 = and i32 %892, 1
  %894 = icmp ne i32 %893, 0
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 2
  %897 = fcmp fast ogt float %896, 0.000000e+00
  %898 = and i1 %894, %897
  br i1 %898, label %899, label %1238, !dx.controlflow.hints !68

; <label>:899                                     ; preds = %860
  %900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %901 = extractvalue %dx.types.CBufRet.f32 %900, 3
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 2
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %906 = fsub fast float %903, %905
  %907 = and i32 %892, 2
  %908 = extractvalue %dx.types.CBufRet.i32 %891, 0
  %909 = call i32 @dx.op.binary.i32(i32 40, i32 %908, i32 3)  ; UMin(a,b)
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 0
  %912 = extractvalue %dx.types.CBufRet.f32 %910, 1
  %913 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %914 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %915 = fsub fast float %911, %913
  %916 = fsub fast float %912, %914
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 0
  %919 = fcmp fast ogt float %918, 0.000000e+00
  %920 = fsub fast float -0.000000e+00, %915
  %921 = fsub fast float -0.000000e+00, %916
  %922 = call float @dx.op.dot2.f32(i32 54, float %886, float %887, float %886, float %887)  ; Dot2(ax,ay,bx,by)
  %923 = call float @dx.op.dot2.f32(i32 54, float %886, float %887, float %920, float %921)  ; Dot2(ax,ay,bx,by)
  %924 = fmul fast float %923, 2.000000e+00
  %925 = call float @dx.op.dot2.f32(i32 54, float %920, float %921, float %920, float %921)  ; Dot2(ax,ay,bx,by)
  %926 = fmul fast float %918, %918
  %927 = fsub fast float %925, %926
  %928 = fmul fast float %924, %924
  %929 = fmul fast float %922, 4.000000e+00
  %930 = fmul fast float %929, %927
  %931 = fsub fast float %928, %930
  %932 = fcmp fast ogt float %931, 0.000000e+00
  br i1 %932, label %933, label %948

; <label>:933                                     ; preds = %899
  %934 = fcmp fast ogt float %924, 0.000000e+00
  %935 = call float @dx.op.unary.f32(i32 24, float %931)  ; Sqrt(value)
  %936 = fsub fast float -0.000000e+00, %935
  %937 = select i1 %934, float %935, float %936
  %938 = fadd fast float %937, %924
  %939 = fmul float %938, -5.000000e-01
  %940 = fdiv fast float %939, %922
  %941 = call float @dx.op.binary.f32(i32 35, float %940, float 0.000000e+00)  ; FMax(a,b)
  %942 = call float @dx.op.binary.f32(i32 36, float %885, float %941)  ; FMin(a,b)
  %943 = fdiv fast float %927, %939
  %944 = call float @dx.op.binary.f32(i32 35, float %943, float 0.000000e+00)  ; FMax(a,b)
  %945 = call float @dx.op.binary.f32(i32 36, float %885, float %944)  ; FMin(a,b)
  %946 = call float @dx.op.binary.f32(i32 36, float %942, float %945)  ; FMin(a,b)
  %947 = call float @dx.op.binary.f32(i32 35, float %942, float %945)  ; FMax(a,b)
  br label %948

; <label>:948                                     ; preds = %933, %899
  %949 = phi float [ %947, %933 ], [ -1.000000e+00, %899 ]
  %950 = phi float [ %946, %933 ], [ -1.000000e+00, %899 ]
  %951 = phi i1 [ true, %933 ], [ false, %899 ]
  %952 = and i1 %919, %951
  br i1 %952, label %953, label %955

; <label>:953                                     ; preds = %948
  %954 = fcmp fast oeq float %950, %949
  br i1 %954, label %1198, label %956

; <label>:955                                     ; preds = %948
  br i1 %919, label %1198, label %956

; <label>:956                                     ; preds = %955, %953
  %957 = phi float [ %885, %955 ], [ %949, %953 ]
  %958 = phi float [ 0.000000e+00, %955 ], [ %950, %953 ]
  %959 = icmp ne i32 %907, 0
  %960 = fmul fast float %957, %888
  %961 = fadd fast float %960, %901
  %962 = fmul fast float %961, %957
  %963 = select i1 %959, float 0.000000e+00, float %962
  %964 = fcmp fast oeq float %888, 0.000000e+00
  %965 = fdiv fast float %906, %888
  %966 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %965)  ; FMax(a,b)
  %967 = select i1 %964, float %957, float %966
  %968 = call float @dx.op.binary.f32(i32 36, float %957, float %967)  ; FMin(a,b)
  %969 = fcmp fast ogt float %888, 0.000000e+00
  %970 = fcmp fast olt float %906, 0.000000e+00
  br i1 %969, label %971, label %1008

; <label>:971                                     ; preds = %956
  %972 = icmp eq i32 %907, 0
  br i1 %970, label %973, label %997

; <label>:973                                     ; preds = %971
  %974 = select i1 %972, float %957, float 0.000000e+00
  %975 = fsub fast float -0.000000e+00, %974
  %976 = call float @dx.op.unary.f32(i32 6, float %975)  ; FAbs(value)
  %977 = fmul fast float %974, %888
  %978 = fadd fast float %977, %901
  %979 = fmul fast float %976, %978
  %980 = fsub fast float %963, %979
  %981 = fsub fast float %957, %976
  %982 = select i1 %972, float %981, float 0.000000e+00
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 3
  %985 = call float @dx.op.binary.f32(i32 36, float %980, float %984)  ; FMin(a,b)
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %988 = extractvalue %dx.types.CBufRet.f32 %986, 1
  %989 = fadd fast float %988, %987
  %990 = call float @dx.op.unary.f32(i32 7, float %989)  ; Saturate(value)
  %991 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %992 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %993 = fadd fast float %992, %991
  %994 = call float @dx.op.unary.f32(i32 7, float %993)  ; Saturate(value)
  %995 = fmul fast float %990, %985
  %996 = fmul fast float %995, %994
  br label %1198

; <label>:997                                     ; preds = %971
  br i1 %972, label %998, label %1019

; <label>:998                                     ; preds = %997
  %999 = call float @dx.op.binary.f32(i32 36, float %968, float %958)  ; FMin(a,b)
  %1000 = fsub fast float %968, %999
  %1001 = fsub fast float %1000, %957
  %1002 = call float @dx.op.unary.f32(i32 6, float %1001)  ; FAbs(value)
  %1003 = fadd fast float %1000, %957
  %1004 = fmul fast float %1003, %888
  %1005 = fadd fast float %1004, %901
  %1006 = fmul fast float %1005, %1002
  %1007 = fsub fast float %963, %1006
  br label %1019

; <label>:1008                                    ; preds = %956
  br i1 %970, label %1009, label %1019

; <label>:1009                                    ; preds = %1008
  %1010 = call float @dx.op.binary.f32(i32 35, float %958, float %968)  ; FMax(a,b)
  %1011 = icmp eq i32 %907, 0
  %1012 = select i1 %1011, float %968, float 0.000000e+00
  %1013 = fsub fast float -0.000000e+00, %1012
  %1014 = call float @dx.op.unary.f32(i32 6, float %1013)  ; FAbs(value)
  %1015 = fmul fast float %1012, %888
  %1016 = fadd fast float %1015, %901
  %1017 = fmul fast float %1014, %1016
  %1018 = fsub fast float %963, %1017
  br label %1019

; <label>:1019                                    ; preds = %1009, %1008, %998, %997
  %1020 = phi float [ %958, %997 ], [ %958, %998 ], [ %1010, %1009 ], [ %958, %1008 ]
  %1021 = phi float [ 0.000000e+00, %997 ], [ %1002, %998 ], [ %1014, %1009 ], [ 0.000000e+00, %1008 ]
  %1022 = phi float [ %963, %997 ], [ %1007, %998 ], [ %1018, %1009 ], [ %963, %1008 ]
  %1023 = phi float [ %968, %997 ], [ %968, %998 ], [ %957, %1009 ], [ %957, %1008 ]
  %1024 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 0
  store float -1.000000e+00, float* %1024, align 4, !tbaa !69, !noalias !73
  %1025 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 1
  store float -1.000000e+00, float* %1025, align 4, !tbaa !69, !noalias !73
  %1026 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 2
  store float -1.000000e+00, float* %1026, align 4, !tbaa !69, !noalias !73
  %1027 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 0
  store float -1.000000e+00, float* %1027, align 4, !tbaa !69, !noalias !73
  %1028 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 1
  store float -1.000000e+00, float* %1028, align 4, !tbaa !69, !noalias !73
  %1029 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 2
  store float -1.000000e+00, float* %1029, align 4, !tbaa !69, !noalias !73
  %1030 = icmp sgt i32 %909, 0
  br i1 %1030, label %1031, label %1092

; <label>:1031                                    ; preds = %1019
  br label %1032

; <label>:1032                                    ; preds = %1081, %1031
  %1033 = phi i32 [ %1082, %1081 ], [ 0, %1031 ]
  %1034 = phi i32 [ %1083, %1081 ], [ 0, %1031 ]
  %1035 = add nuw i32 %1034, 171
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 %1035)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.CBufRet.f32 %1039, 1
  %1042 = fsub fast float %1037, %1040
  %1043 = fsub fast float %1038, %1041
  %1044 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1045 = fsub fast float -0.000000e+00, %1042
  %1046 = fsub fast float -0.000000e+00, %1043
  %1047 = call float @dx.op.dot2.f32(i32 54, float %886, float %887, float %1045, float %1046)  ; Dot2(ax,ay,bx,by)
  %1048 = fmul fast float %1047, 2.000000e+00
  %1049 = call float @dx.op.dot2.f32(i32 54, float %1045, float %1046, float %1045, float %1046)  ; Dot2(ax,ay,bx,by)
  %1050 = fmul fast float %1044, %1044
  %1051 = fsub fast float %1049, %1050
  %1052 = fmul fast float %1048, %1048
  %1053 = fmul fast float %929, %1051
  %1054 = fsub fast float %1052, %1053
  %1055 = fcmp fast ogt float %1054, 0.000000e+00
  br i1 %1055, label %1056, label %1071

; <label>:1056                                    ; preds = %1032
  %1057 = fcmp fast ogt float %1048, 0.000000e+00
  %1058 = call float @dx.op.unary.f32(i32 24, float %1054)  ; Sqrt(value)
  %1059 = fsub fast float -0.000000e+00, %1058
  %1060 = select i1 %1057, float %1058, float %1059
  %1061 = fadd fast float %1060, %1048
  %1062 = fmul float %1061, -5.000000e-01
  %1063 = fdiv fast float %1062, %922
  %1064 = call float @dx.op.binary.f32(i32 35, float %1063, float 0.000000e+00)  ; FMax(a,b)
  %1065 = call float @dx.op.binary.f32(i32 36, float %957, float %1064)  ; FMin(a,b)
  %1066 = fdiv fast float %1051, %1062
  %1067 = call float @dx.op.binary.f32(i32 35, float %1066, float 0.000000e+00)  ; FMax(a,b)
  %1068 = call float @dx.op.binary.f32(i32 36, float %957, float %1067)  ; FMin(a,b)
  %1069 = call float @dx.op.binary.f32(i32 36, float %1065, float %1068)  ; FMin(a,b)
  %1070 = call float @dx.op.binary.f32(i32 35, float %1065, float %1068)  ; FMax(a,b)
  br label %1071

; <label>:1071                                    ; preds = %1056, %1032
  %1072 = phi float [ %1070, %1056 ], [ -1.000000e+00, %1032 ]
  %1073 = phi float [ %1069, %1056 ], [ -1.000000e+00, %1032 ]
  %1074 = phi i1 [ true, %1056 ], [ false, %1032 ]
  br i1 %1074, label %1075, label %1081

; <label>:1075                                    ; preds = %1071
  %1076 = call float @dx.op.binary.f32(i32 35, float %1020, float %1073)  ; FMax(a,b)
  %1077 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1034
  store float %1076, float* %1077, align 4, !tbaa !69, !noalias !73
  %1078 = call float @dx.op.binary.f32(i32 35, float %1020, float %1072)  ; FMax(a,b)
  %1079 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %1034
  store float %1078, float* %1079, align 4, !tbaa !69, !noalias !73
  %1080 = add nsw i32 %1033, 1
  br label %1081

; <label>:1081                                    ; preds = %1075, %1071
  %1082 = phi i32 [ %1080, %1075 ], [ %1033, %1071 ]
  %1083 = add nuw nsw i32 %1034, 1
  %1084 = icmp eq i32 %1083, %909
  br i1 %1084, label %1085, label %1032

; <label>:1085                                    ; preds = %1081
  %1086 = load float, float* %1026, align 4, !tbaa !69, !alias.scope !89, !noalias !92
  %1087 = load float, float* %1025, align 4, !tbaa !69, !alias.scope !95, !noalias !96
  %1088 = load float, float* %1024, align 4, !tbaa !69, !alias.scope !97, !noalias !98
  %1089 = load float, float* %1029, align 4, !tbaa !69, !alias.scope !99, !noalias !102
  %1090 = load float, float* %1028, align 4, !tbaa !69, !alias.scope !105, !noalias !106
  %1091 = load float, float* %1027, align 4, !tbaa !69, !alias.scope !107, !noalias !108
  br label %1092

; <label>:1092                                    ; preds = %1085, %1019
  %1093 = phi float [ -1.000000e+00, %1019 ], [ %1091, %1085 ]
  %1094 = phi float [ -1.000000e+00, %1019 ], [ %1090, %1085 ]
  %1095 = phi float [ -1.000000e+00, %1019 ], [ %1089, %1085 ]
  %1096 = phi float [ -1.000000e+00, %1019 ], [ %1088, %1085 ]
  %1097 = phi float [ -1.000000e+00, %1019 ], [ %1087, %1085 ]
  %1098 = phi float [ -1.000000e+00, %1019 ], [ %1086, %1085 ]
  %1099 = phi i32 [ 0, %1019 ], [ %1082, %1085 ]
  %1100 = call float @dx.op.binary.f32(i32 36, float %1097, float %1098)  ; FMin(a,b)
  %1101 = call float @dx.op.binary.f32(i32 36, float %1096, float %1100)  ; FMin(a,b)
  %1102 = call float @dx.op.binary.f32(i32 35, float %1096, float %1097)  ; FMax(a,b)
  %1103 = call float @dx.op.binary.f32(i32 36, float %1102, float %1098)  ; FMin(a,b)
  %1104 = call float @dx.op.binary.f32(i32 36, float %1096, float %1097)  ; FMin(a,b)
  %1105 = call float @dx.op.binary.f32(i32 35, float %1104, float %1103)  ; FMax(a,b)
  %1106 = call float @dx.op.binary.f32(i32 35, float %1097, float %1098)  ; FMax(a,b)
  %1107 = call float @dx.op.binary.f32(i32 35, float %1096, float %1106)  ; FMax(a,b)
  store float %1101, float* %1024, align 4, !tbaa !69, !alias.scope !97, !noalias !98
  store float %1105, float* %1025, align 4, !tbaa !69, !alias.scope !95, !noalias !96
  store float %1107, float* %1026, align 4, !tbaa !69, !alias.scope !89, !noalias !92
  %1108 = call float @dx.op.binary.f32(i32 36, float %1094, float %1095)  ; FMin(a,b)
  %1109 = call float @dx.op.binary.f32(i32 36, float %1093, float %1108)  ; FMin(a,b)
  %1110 = call float @dx.op.binary.f32(i32 35, float %1093, float %1094)  ; FMax(a,b)
  %1111 = call float @dx.op.binary.f32(i32 36, float %1110, float %1095)  ; FMin(a,b)
  %1112 = call float @dx.op.binary.f32(i32 36, float %1093, float %1094)  ; FMin(a,b)
  %1113 = call float @dx.op.binary.f32(i32 35, float %1112, float %1111)  ; FMax(a,b)
  %1114 = call float @dx.op.binary.f32(i32 35, float %1094, float %1095)  ; FMax(a,b)
  %1115 = call float @dx.op.binary.f32(i32 35, float %1093, float %1114)  ; FMax(a,b)
  store float %1109, float* %1027, align 4, !tbaa !69, !alias.scope !107, !noalias !108
  store float %1113, float* %1028, align 4, !tbaa !69, !alias.scope !105, !noalias !106
  store float %1115, float* %1029, align 4, !tbaa !69, !alias.scope !99, !noalias !102
  %1116 = sub nsw i32 3, %1099
  %1117 = icmp sgt i32 %1116, 2
  br i1 %1117, label %1118, label %1136

; <label>:1118                                    ; preds = %1092
  %1119 = icmp eq i32 %907, 0
  %1120 = fsub fast float %957, %1021
  %1121 = select i1 %1119, float %1120, float %1021
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 3
  %1124 = call float @dx.op.binary.f32(i32 36, float %1022, float %1123)  ; FMin(a,b)
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1128 = fadd fast float %1127, %1126
  %1129 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  %1130 = extractvalue %dx.types.CBufRet.f32 %1125, 2
  %1131 = extractvalue %dx.types.CBufRet.f32 %1125, 3
  %1132 = fadd fast float %1131, %1130
  %1133 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1134 = fmul fast float %1129, %1124
  %1135 = fmul fast float %1134, %1133
  br label %1198

; <label>:1136                                    ; preds = %1092
  %1137 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1116
  %1138 = load float, float* %1137, align 4, !tbaa !69, !noalias !73
  %1139 = fcmp fast olt float %1138, %1023
  %1140 = icmp sgt i32 %1099, 0
  %1141 = and i1 %1140, %1139
  br i1 %1141, label %1142, label %1179

; <label>:1142                                    ; preds = %1136
  br label %1143

; <label>:1143                                    ; preds = %1172, %1142
  %1144 = phi float [ %1173, %1172 ], [ %1021, %1142 ]
  %1145 = phi float [ %1174, %1172 ], [ %1022, %1142 ]
  %1146 = phi float [ %1154, %1172 ], [ %1138, %1142 ]
  %1147 = phi i32 [ %1151, %1172 ], [ %1116, %1142 ]
  %1148 = getelementptr inbounds [3 x float], [3 x float]* %40, i32 0, i32 %1147
  %1149 = load float, float* %1148, align 4, !tbaa !69, !noalias !73
  %1150 = icmp slt i32 %1147, 2
  %1151 = add nsw i32 %1147, 1
  %1152 = getelementptr inbounds [3 x float], [3 x float]* %39, i32 0, i32 %1151
  %1153 = load float, float* %1152, align 4, !tbaa !69, !noalias !73
  %1154 = select i1 %1150, float %1153, float %957
  %1155 = call float @dx.op.binary.f32(i32 36, float %1154, float %1149)  ; FMin(a,b)
  %1156 = call float @dx.op.binary.f32(i32 36, float %1023, float %1155)  ; FMin(a,b)
  %1157 = icmp eq i32 %907, 0
  %1158 = fadd fast float %1156, %1146
  %1159 = fmul fast float %1158, %888
  %1160 = fadd fast float %1159, %901
  br i1 %1157, label %1166, label %1161

; <label>:1161                                    ; preds = %1143
  %1162 = fsub fast float %1156, %1146
  %1163 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1162)  ; FMax(a,b)
  %1164 = fmul fast float %1163, %1160
  %1165 = fadd fast float %1164, %1145
  br label %1172

; <label>:1166                                    ; preds = %1143
  %1167 = fsub fast float %1146, %1156
  %1168 = call float @dx.op.unary.f32(i32 6, float %1167)  ; FAbs(value)
  %1169 = fadd fast float %1168, %1144
  %1170 = fmul fast float %1168, %1160
  %1171 = fsub fast float %1145, %1170
  br label %1172

; <label>:1172                                    ; preds = %1166, %1161
  %1173 = phi float [ %1163, %1161 ], [ %1169, %1166 ]
  %1174 = phi float [ %1165, %1161 ], [ %1171, %1166 ]
  %1175 = fcmp fast olt float %1154, %1023
  %1176 = icmp slt i32 %1151, 3
  %1177 = and i1 %1176, %1175
  br i1 %1177, label %1143, label %1178

; <label>:1178                                    ; preds = %1172
  br label %1179

; <label>:1179                                    ; preds = %1178, %1136
  %1180 = phi float [ %1021, %1136 ], [ %1173, %1178 ]
  %1181 = phi float [ %1022, %1136 ], [ %1174, %1178 ]
  %1182 = fsub fast float %957, %1180
  %1183 = select i1 %959, float %1180, float %1182
  %1184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1185 = extractvalue %dx.types.CBufRet.f32 %1184, 3
  %1186 = call float @dx.op.binary.f32(i32 36, float %1181, float %1185)  ; FMin(a,b)
  %1187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1188 = extractvalue %dx.types.CBufRet.f32 %1187, 0
  %1189 = extractvalue %dx.types.CBufRet.f32 %1187, 1
  %1190 = fadd fast float %1189, %1188
  %1191 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1187, 2
  %1193 = extractvalue %dx.types.CBufRet.f32 %1187, 3
  %1194 = fadd fast float %1193, %1192
  %1195 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1196 = fmul fast float %1191, %1186
  %1197 = fmul fast float %1196, %1195
  br label %1198

; <label>:1198                                    ; preds = %1179, %1118, %973, %955, %953
  %1199 = phi float [ %982, %973 ], [ %1121, %1118 ], [ %1183, %1179 ], [ 0.000000e+00, %953 ], [ 0.000000e+00, %955 ]
  %1200 = phi float [ %996, %973 ], [ %1135, %1118 ], [ %1197, %1179 ], [ 0.000000e+00, %953 ], [ 0.000000e+00, %955 ]
  %1201 = fmul fast float %896, %1200
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1204 = fsub fast float %903, %1203
  %1205 = fcmp fast olt float %1201, -2.000000e+01
  %1206 = call float @dx.op.unary.f32(i32 21, float %1201)  ; Exp(value)
  %1207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1208 = extractvalue %dx.types.CBufRet.f32 %1207, 2
  %1209 = extractvalue %dx.types.CBufRet.f32 %1207, 3
  %1210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1211 = extractvalue %dx.types.CBufRet.f32 %1210, 2
  %1212 = fmul fast float %1209, %1204
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  %1214 = fsub fast float 1.000000e+00, %1213
  %1215 = fmul fast float %888, 5.000000e-01
  %1216 = fadd fast float %1215, 5.000000e-01
  %1217 = call float @dx.op.unary.f32(i32 7, float %1216)  ; Saturate(value)
  %1218 = fsub fast float 1.000000e+00, %1217
  %1219 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1214)  ; FMax(a,b)
  %1220 = fdiv fast float %1218, %1219
  %1221 = fsub fast float %1204, %855
  %1222 = call float @dx.op.unary.f32(i32 6, float %1221)  ; FAbs(value)
  %1223 = fmul fast float %1222, %1208
  %1224 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1225 = fsub fast float 1.000000e+00, %1223
  %1226 = fmul fast float %1225, %1224
  %1227 = fadd fast float %1226, %1223
  %1228 = fmul fast float %1211, %1204
  %1229 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1230 = fsub fast float 1.000000e+00, %1227
  %1231 = fmul fast float %1230, %1229
  %1232 = fadd fast float %1231, %1227
  %1233 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1234 = fadd fast float %1206, -1.000000e+00
  %1235 = select i1 %1205, float -1.000000e+00, float %1234
  %1236 = fmul fast float %1233, %1235
  %1237 = fadd fast float %1236, 1.000000e+00
  br label %1238

; <label>:1238                                    ; preds = %1198, %860
  %1239 = phi float [ %1199, %1198 ], [ 0.000000e+00, %860 ]
  %1240 = phi float [ %1237, %1198 ], [ 1.000000e+00, %860 ]
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 1
  %1243 = fsub fast float 1.000000e+00, %1240
  %1244 = fmul fast float %1243, %889
  %1245 = fmul fast float %1244, %1242
  %1246 = fsub fast float %889, %1245
  br i1 %880, label %1247, label %1263, !dx.controlflow.hints !109

; <label>:1247                                    ; preds = %1238
  %1248 = fmul fast float %890, %877
  %1249 = fadd fast float %1248, %878
  %1250 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1251 = fmul fast float %867, %1246
  %1252 = fsub fast float -0.000000e+00, %1251
  %1253 = fmul fast float %868, %1246
  %1254 = fsub fast float -0.000000e+00, %1253
  %1255 = call float @dx.op.unary.f32(i32 21, float %1252)  ; Exp(value)
  %1256 = call float @dx.op.unary.f32(i32 21, float %1254)  ; Exp(value)
  %1257 = call float @dx.op.binary.f32(i32 35, float %882, float %1255)  ; FMax(a,b)
  %1258 = call float @dx.op.binary.f32(i32 35, float %882, float %1256)  ; FMax(a,b)
  %1259 = fsub fast float %1258, %1257
  %1260 = fmul fast float %1259, %1250
  %1261 = fadd fast float %1260, %1257
  %1262 = call float @dx.op.unary.f32(i32 7, float %1261)  ; Saturate(value)
  br label %1296

; <label>:1263                                    ; preds = %1238
  %1264 = fmul fast float %1246, %876
  %1265 = call float @dx.op.unary.f32(i32 7, float %1264)  ; Saturate(value)
  %1266 = fsub fast float 2.000000e+00, %1265
  %1267 = fmul fast float %1265, 9.921875e-01
  %1268 = fmul fast float %1267, %1266
  %1269 = fadd fast float %1268, 3.906250e-03
  %1270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1269, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  %1272 = fsub fast float %1265, %1271
  %1273 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1272)  ; FMax(a,b)
  %1274 = fmul fast float %870, %855
  %1275 = call float @dx.op.unary.f32(i32 6, float %1274)  ; FAbs(value)
  %1276 = fcmp fast ogt float %1275, 0x3EB0C6F7A0000000
  br i1 %1276, label %1277, label %1283, !dx.controlflow.hints !110

; <label>:1277                                    ; preds = %1263
  %1278 = fmul fast float %1274, 0xBFF7154760000000
  %1279 = call float @dx.op.unary.f32(i32 21, float %1278)  ; Exp(value)
  %1280 = fsub fast float 1.000000e+00, %1279
  %1281 = fdiv fast float %1280, %1274
  %1282 = fmul fast float %1281, %872
  br label %1283

; <label>:1283                                    ; preds = %1277, %1263
  %1284 = phi float [ %1282, %1277 ], [ %872, %1263 ]
  %1285 = fadd fast float %1284, %874
  %1286 = fmul fast float %1285, %1273
  %1287 = fmul fast float %867, %1286
  %1288 = fsub fast float -0.000000e+00, %1287
  %1289 = fmul fast float %868, %1286
  %1290 = fsub fast float -0.000000e+00, %1289
  %1291 = fmul fast float %869, %1286
  %1292 = fsub fast float -0.000000e+00, %1291
  %1293 = call float @dx.op.unary.f32(i32 21, float %1288)  ; Exp(value)
  %1294 = call float @dx.op.unary.f32(i32 21, float %1290)  ; Exp(value)
  %1295 = call float @dx.op.unary.f32(i32 21, float %1292)  ; Exp(value)
  br label %1296

; <label>:1296                                    ; preds = %1283, %1247
  %1297 = phi float [ %1262, %1247 ], [ %1293, %1283 ]
  %1298 = phi float [ %1262, %1247 ], [ %1294, %1283 ]
  %1299 = phi float [ %1262, %1247 ], [ %1295, %1283 ]
  br i1 %898, label %1300, label %1396, !dx.controlflow.hints !111

; <label>:1300                                    ; preds = %1296
  %1301 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1297)  ; FMax(a,b)
  %1302 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1298)  ; FMax(a,b)
  %1303 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1299)  ; FMax(a,b)
  %1304 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1240)  ; FMax(a,b)
  %1305 = call float @dx.op.binary.f32(i32 35, float %1239, float %1246)  ; FMax(a,b)
  %1306 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1305)  ; FMax(a,b)
  %1307 = fdiv fast float %1239, %1306
  %1308 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1309 = fdiv fast float %1246, %1306
  %1310 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  %1311 = fcmp fast une float %1304, 1.000000e+00
  br i1 %1311, label %1312, label %1315, !dx.controlflow.hints !112

; <label>:1312                                    ; preds = %1300
  %1313 = call float @dx.op.unary.f32(i32 23, float %1304)  ; Log(value)
  %1314 = fmul fast float %1313, 0x3FE62E4300000000
  br label %1315

; <label>:1315                                    ; preds = %1312, %1300
  %1316 = phi float [ %1314, %1312 ], [ 0.000000e+00, %1300 ]
  %1317 = fcmp fast une float %1301, 1.000000e+00
  br i1 %1317, label %1318, label %1321, !dx.controlflow.hints !113

; <label>:1318                                    ; preds = %1315
  %1319 = call float @dx.op.unary.f32(i32 23, float %1301)  ; Log(value)
  %1320 = fmul fast float %1319, 0x3FE62E4300000000
  br label %1321

; <label>:1321                                    ; preds = %1318, %1315
  %1322 = phi float [ %1320, %1318 ], [ 0.000000e+00, %1315 ]
  %1323 = fcmp fast une float %1302, 1.000000e+00
  br i1 %1323, label %1324, label %1327, !dx.controlflow.hints !113

; <label>:1324                                    ; preds = %1321
  %1325 = call float @dx.op.unary.f32(i32 23, float %1302)  ; Log(value)
  %1326 = fmul fast float %1325, 0x3FE62E4300000000
  br label %1327

; <label>:1327                                    ; preds = %1324, %1321
  %1328 = phi float [ %1326, %1324 ], [ 0.000000e+00, %1321 ]
  %1329 = fcmp fast une float %1303, 1.000000e+00
  br i1 %1329, label %1330, label %1333, !dx.controlflow.hints !113

; <label>:1330                                    ; preds = %1327
  %1331 = call float @dx.op.unary.f32(i32 23, float %1303)  ; Log(value)
  %1332 = fmul fast float %1331, 0x3FE62E4300000000
  br label %1333

; <label>:1333                                    ; preds = %1330, %1327
  %1334 = phi float [ %1332, %1330 ], [ 0.000000e+00, %1327 ]
  %1335 = fmul fast float %1316, %1310
  %1336 = fmul fast float %1322, %1308
  %1337 = fmul fast float %1328, %1308
  %1338 = fmul fast float %1334, %1308
  %1339 = fadd fast float %1336, %1335
  %1340 = fadd fast float %1337, %1335
  %1341 = fadd fast float %1338, %1335
  %1342 = fcmp fast une float %1339, 0.000000e+00
  br i1 %1342, label %1343, label %1346, !dx.controlflow.hints !114

; <label>:1343                                    ; preds = %1333
  %1344 = fmul fast float %1339, 0x3FF7154760000000
  %1345 = call float @dx.op.unary.f32(i32 21, float %1344)  ; Exp(value)
  br label %1346

; <label>:1346                                    ; preds = %1343, %1333
  %1347 = phi float [ %1345, %1343 ], [ 1.000000e+00, %1333 ]
  %1348 = fcmp fast une float %1340, 0.000000e+00
  br i1 %1348, label %1349, label %1352, !dx.controlflow.hints !114

; <label>:1349                                    ; preds = %1346
  %1350 = fmul fast float %1340, 0x3FF7154760000000
  %1351 = call float @dx.op.unary.f32(i32 21, float %1350)  ; Exp(value)
  br label %1352

; <label>:1352                                    ; preds = %1349, %1346
  %1353 = phi float [ %1351, %1349 ], [ 1.000000e+00, %1346 ]
  %1354 = fcmp fast une float %1341, 0.000000e+00
  br i1 %1354, label %1355, label %1358, !dx.controlflow.hints !114

; <label>:1355                                    ; preds = %1352
  %1356 = fmul fast float %1341, 0x3FF7154760000000
  %1357 = call float @dx.op.unary.f32(i32 21, float %1356)  ; Exp(value)
  br label %1358

; <label>:1358                                    ; preds = %1355, %1352
  %1359 = phi float [ %1357, %1355 ], [ 1.000000e+00, %1352 ]
  %1360 = fcmp fast ogt float %1308, %1310
  br i1 %1360, label %1361, label %1368

; <label>:1361                                    ; preds = %1358
  %1362 = fsub fast float 1.000000e+00, %1310
  %1363 = fmul fast float %1316, %1362
  %1364 = fcmp fast une float %1363, 0.000000e+00
  br i1 %1364, label %1365, label %1389, !dx.controlflow.hints !115

; <label>:1365                                    ; preds = %1361
  %1366 = fmul fast float %1363, 0x3FF7154760000000
  %1367 = call float @dx.op.unary.f32(i32 21, float %1366)  ; Exp(value)
  br label %1389

; <label>:1368                                    ; preds = %1358
  %1369 = fsub fast float 1.000000e+00, %1308
  %1370 = fmul fast float %1322, %1369
  %1371 = fmul fast float %1328, %1369
  %1372 = fmul fast float %1334, %1369
  %1373 = fcmp fast une float %1370, 0.000000e+00
  br i1 %1373, label %1374, label %1377, !dx.controlflow.hints !114

; <label>:1374                                    ; preds = %1368
  %1375 = fmul fast float %1370, 0x3FF7154760000000
  %1376 = call float @dx.op.unary.f32(i32 21, float %1375)  ; Exp(value)
  br label %1377

; <label>:1377                                    ; preds = %1374, %1368
  %1378 = phi float [ %1376, %1374 ], [ 1.000000e+00, %1368 ]
  %1379 = fcmp fast une float %1371, 0.000000e+00
  br i1 %1379, label %1380, label %1383, !dx.controlflow.hints !114

; <label>:1380                                    ; preds = %1377
  %1381 = fmul fast float %1371, 0x3FF7154760000000
  %1382 = call float @dx.op.unary.f32(i32 21, float %1381)  ; Exp(value)
  br label %1383

; <label>:1383                                    ; preds = %1380, %1377
  %1384 = phi float [ %1382, %1380 ], [ 1.000000e+00, %1377 ]
  %1385 = fcmp fast une float %1372, 0.000000e+00
  br i1 %1385, label %1386, label %1389, !dx.controlflow.hints !114

; <label>:1386                                    ; preds = %1383
  %1387 = fmul fast float %1372, 0x3FF7154760000000
  %1388 = call float @dx.op.unary.f32(i32 21, float %1387)  ; Exp(value)
  br label %1389

; <label>:1389                                    ; preds = %1386, %1383, %1365, %1361
  %1390 = phi float [ %1388, %1386 ], [ %1367, %1365 ], [ 1.000000e+00, %1361 ], [ 1.000000e+00, %1383 ]
  %1391 = phi float [ %1384, %1386 ], [ %1367, %1365 ], [ 1.000000e+00, %1361 ], [ %1384, %1383 ]
  %1392 = phi float [ %1378, %1386 ], [ %1367, %1365 ], [ 1.000000e+00, %1361 ], [ %1378, %1383 ]
  %1393 = fmul fast float %1392, %1347
  %1394 = fmul fast float %1391, %1353
  %1395 = fmul fast float %1390, %1359
  br label %1396

; <label>:1396                                    ; preds = %1389, %1296
  %1397 = phi float [ %1395, %1389 ], [ %1299, %1296 ]
  %1398 = phi float [ %1394, %1389 ], [ %1298, %1296 ]
  %1399 = phi float [ %1393, %1389 ], [ %1297, %1296 ]
  %1400 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1398, float %1397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1401 = select i1 %102, float %1400, float %1399
  %1402 = select i1 %102, float %1400, float %1398
  %1403 = select i1 %102, float 1.000000e+00, float %1397
  %1404 = fmul fast float %1401, %857
  %1405 = fmul fast float %1402, %858
  %1406 = fmul fast float %1403, %859
  %1407 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1408 = extractvalue %dx.types.CBufRet.i32 %1407, 0
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %1735, label %1410, !dx.controlflow.hints !116

; <label>:1410                                    ; preds = %1396
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 2
  %1413 = extractvalue %dx.types.CBufRet.f32 %1411, 3
  %1414 = fmul fast float %1412, %44
  %1415 = fmul fast float %1413, %45
  %1416 = fmul fast float %1414, 2.000000e+00
  %1417 = fmul fast float %1415, 2.000000e+00
  %1418 = fsub fast float 1.000000e+00, %1416
  %1419 = fsub fast float 1.000000e+00, %1417
  %1420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.CBufRet.f32 %1420, 1
  %1423 = extractvalue %dx.types.CBufRet.f32 %1420, 2
  %1424 = fmul fast float %1418, %1421
  %1425 = fmul fast float %1418, %1422
  %1426 = fmul fast float %1418, %1423
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.CBufRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.CBufRet.f32 %1427, 2
  %1431 = fmul fast float %1419, %1428
  %1432 = fmul fast float %1419, %1429
  %1433 = fmul fast float %1419, %1430
  %1434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1435 = extractvalue %dx.types.CBufRet.f32 %1434, 0
  %1436 = extractvalue %dx.types.CBufRet.f32 %1434, 1
  %1437 = extractvalue %dx.types.CBufRet.f32 %1434, 2
  %1438 = fadd fast float %1431, %1435
  %1439 = fadd fast float %1438, %1424
  %1440 = fadd fast float %1432, %1436
  %1441 = fadd fast float %1440, %1425
  %1442 = fadd fast float %1433, %1437
  %1443 = fadd fast float %1442, %1426
  %1444 = fmul fast float %1439, %856
  %1445 = fmul fast float %1441, %856
  %1446 = fmul fast float %1443, %856
  %1447 = fmul fast float %1444, %1444
  %1448 = fmul fast float %1445, %1445
  %1449 = fadd fast float %1447, %1448
  %1450 = fmul fast float %1446, %1446
  %1451 = fadd fast float %1449, %1450
  %1452 = call float @dx.op.unary.f32(i32 24, float %1451)  ; Sqrt(value)
  %1453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1454 = extractvalue %dx.types.CBufRet.f32 %1453, 0
  %1455 = fsub fast float %1452, %1454
  %1456 = extractvalue %dx.types.CBufRet.f32 %1453, 2
  %1457 = fmul fast float %1455, %1456
  %1458 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  %1459 = fadd fast float %1458, -5.000000e-01
  %1460 = fmul fast float %1459, 2.000000e+00
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 2
  %1463 = call float @dx.op.binary.f32(i32 36, float %1462, float %1460)  ; FMin(a,b)
  %1464 = fsub fast float -0.000000e+00, %1462
  %1465 = fcmp fast ogt float %1463, %1464
  br i1 %1465, label %1466, label %1735, !dx.controlflow.hints !117

; <label>:1466                                    ; preds = %1410
  %1467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1468 = extractvalue %dx.types.CBufRet.f32 %1467, 3
  %1469 = fcmp fast ogt float %1468, 0.000000e+00
  br i1 %1469, label %1470, label %1545, !dx.controlflow.hints !118

; <label>:1470                                    ; preds = %1466
  %1471 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %1472 = extractvalue %dx.types.Dimensions %1471, 0
  %1473 = sitofp i32 %1472 to float
  %1474 = extractvalue %dx.types.Dimensions %1471, 1
  %1475 = sitofp i32 %1474 to float
  %1476 = fmul fast float %1414, %1473
  %1477 = fmul fast float %1415, %1475
  %1478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1479 = extractvalue %dx.types.CBufRet.f32 %1478, 1
  %1480 = fsub fast float -0.000000e+00, %1479
  %1481 = fptoui float %1480 to i32
  %1482 = fptoui float %1476 to i32
  %1483 = fptoui float %1477 to i32
  %1484 = and i32 %1481, 31
  %1485 = lshr i32 %1482, %1484
  %1486 = lshr i32 %1483, %1484
  %1487 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %1481, i32 %1485, i32 %1486, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1488 = extractvalue %dx.types.ResRet.f32 %1487, 0
  %1489 = fcmp fast olt float %1488, -1.000000e+00
  %1490 = fcmp fast ogt float %1488, -1.000000e+00
  %1491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1492 = extractvalue %dx.types.CBufRet.f32 %1491, 1
  %1493 = select i1 %1490, float %1492, float 1.000000e+00
  %1494 = fadd fast float %1488, 1.000000e+00
  %1495 = fmul fast float %1493, %1494
  %1496 = call float @dx.op.unary.f32(i32 6, float %1495)  ; FAbs(value)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1491, 3
  %1498 = fcmp fast oge float %1496, %1497
  %1499 = select i1 %1498, float 0x4197782600000000, float %1496
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 0
  %1502 = extractvalue %dx.types.CBufRet.f32 %1500, 1
  %1503 = extractvalue %dx.types.CBufRet.f32 %1500, 2
  %1504 = select i1 %1489, float %1501, float %1421
  %1505 = select i1 %1489, float %1502, float %1422
  %1506 = select i1 %1489, float %1503, float %1423
  %1507 = fmul fast float %1504, %1418
  %1508 = fmul fast float %1505, %1418
  %1509 = fmul fast float %1506, %1418
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 0
  %1512 = extractvalue %dx.types.CBufRet.f32 %1510, 1
  %1513 = extractvalue %dx.types.CBufRet.f32 %1510, 2
  %1514 = select i1 %1489, float %1511, float %1428
  %1515 = select i1 %1489, float %1512, float %1429
  %1516 = select i1 %1489, float %1513, float %1430
  %1517 = fmul fast float %1514, %1419
  %1518 = fmul fast float %1515, %1419
  %1519 = fmul fast float %1516, %1419
  %1520 = fadd fast float %1517, %1507
  %1521 = fadd fast float %1518, %1508
  %1522 = fadd fast float %1519, %1509
  %1523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1524 = extractvalue %dx.types.CBufRet.f32 %1523, 0
  %1525 = extractvalue %dx.types.CBufRet.f32 %1523, 1
  %1526 = extractvalue %dx.types.CBufRet.f32 %1523, 2
  %1527 = select i1 %1489, float %1524, float %1435
  %1528 = select i1 %1489, float %1525, float %1436
  %1529 = select i1 %1489, float %1526, float %1437
  %1530 = fadd fast float %1520, %1527
  %1531 = fadd fast float %1521, %1528
  %1532 = fadd fast float %1522, %1529
  %1533 = fmul fast float %1530, %1499
  %1534 = fmul fast float %1531, %1499
  %1535 = fmul fast float %1532, %1499
  %1536 = fmul fast float %1533, %1533
  %1537 = fmul fast float %1534, %1534
  %1538 = fadd fast float %1536, %1537
  %1539 = fmul fast float %1535, %1535
  %1540 = fadd fast float %1538, %1539
  %1541 = call float @dx.op.unary.f32(i32 24, float %1540)  ; Sqrt(value)
  %1542 = fsub fast float %1541, %1454
  %1543 = fmul fast float %1542, %1456
  %1544 = call float @dx.op.unary.f32(i32 7, float %1543)  ; Saturate(value)
  br label %1545

; <label>:1545                                    ; preds = %1470, %1466
  %1546 = phi float [ %1544, %1470 ], [ 1.000000e+00, %1466 ]
  %1547 = fmul fast float %1463, 5.000000e-01
  %1548 = fadd fast float %1547, 5.000000e-01
  %1549 = call float @dx.op.unary.f32(i32 22, float %1548)  ; Frc(value)
  %1550 = call float @dx.op.unary.f32(i32 27, float %1549)  ; Round_ni(value)
  %1551 = call float @dx.op.unary.f32(i32 22, float %1549)  ; Frc(value)
  %1552 = fmul fast float %1551, 2.000000e+00
  %1553 = fadd fast float %1552, -1.000000e+00
  %1554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %16, float %1414, float %1415, float %1550, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1555 = extractvalue %dx.types.ResRet.f32 %1554, 0
  %1556 = extractvalue %dx.types.ResRet.f32 %1554, 1
  %1557 = extractvalue %dx.types.ResRet.f32 %1554, 2
  %1558 = extractvalue %dx.types.ResRet.f32 %1554, 3
  %1559 = fadd fast float %1555, -5.000000e-01
  %1560 = fadd fast float %1557, -5.000000e-01
  %1561 = fmul fast float %1559, 0xBFD5555560000000
  %1562 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1560, float %1561)  ; FMad(a,b,c)
  %1563 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1556, float 0.000000e+00)  ; FMad(a,b,c)
  %1564 = fadd fast float %1563, %1558
  %1565 = fmul fast float %1559, -7.500000e-01
  %1566 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1560, float %1565)  ; FMad(a,b,c)
  %1567 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1556, float 0.000000e+00)  ; FMad(a,b,c)
  %1568 = fadd fast float %1567, %1558
  %1569 = call float @dx.op.binary.f32(i32 35, float %1562, float -1.000000e+00)  ; FMax(a,b)
  %1570 = call float @dx.op.binary.f32(i32 35, float %1564, float -1.000000e+00)  ; FMax(a,b)
  %1571 = call float @dx.op.binary.f32(i32 35, float %1566, float -1.000000e+00)  ; FMax(a,b)
  %1572 = call float @dx.op.binary.f32(i32 35, float %1568, float -1.000000e+00)  ; FMax(a,b)
  %1573 = call float @dx.op.binary.f32(i32 36, float %1569, float 1.000000e+00)  ; FMin(a,b)
  %1574 = call float @dx.op.binary.f32(i32 36, float %1570, float 1.000000e+00)  ; FMin(a,b)
  %1575 = call float @dx.op.binary.f32(i32 36, float %1571, float 1.000000e+00)  ; FMin(a,b)
  %1576 = call float @dx.op.binary.f32(i32 36, float %1572, float 1.000000e+00)  ; FMin(a,b)
  %1577 = fcmp fast olt float %1573, 0x3FEFFF8020000000
  br i1 %1577, label %1578, label %1693, !dx.controlflow.hints !119

; <label>:1578                                    ; preds = %1545
  %1579 = extractvalue %dx.types.CBufRet.f32 %1461, 3
  %1580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1581 = extractvalue %dx.types.CBufRet.f32 %1580, 0
  %1582 = extractvalue %dx.types.CBufRet.f32 %1580, 1
  %1583 = extractvalue %dx.types.CBufRet.f32 %1580, 2
  %1584 = extractvalue %dx.types.CBufRet.f32 %1580, 3
  %1585 = fsub fast float %1581, %1573
  %1586 = fsub fast float %1582, %1574
  %1587 = fsub fast float %1583, %1575
  %1588 = fsub fast float %1584, %1576
  %1589 = fmul fast float %1585, %1579
  %1590 = fmul fast float %1586, %1579
  %1591 = fmul fast float %1587, %1579
  %1592 = fmul fast float %1588, %1579
  %1593 = fadd fast float %1589, %1573
  %1594 = fadd fast float %1590, %1574
  %1595 = fsub fast float -0.000000e+00, %1594
  %1596 = fadd fast float %1591, %1575
  %1597 = fadd fast float %1592, %1576
  %1598 = fmul fast float %1593, %1593
  %1599 = fsub fast float %1594, %1598
  %1600 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1599)  ; FMax(a,b)
  %1601 = fdiv fast float 1.000000e+00, %1600
  %1602 = fmul fast float %1594, %1593
  %1603 = fsub fast float %1596, %1602
  %1604 = fsub fast float %1553, %1593
  %1605 = fmul fast float %1553, %1553
  %1606 = fsub fast float %1605, %1594
  %1607 = fmul fast float %1604, %1601
  %1608 = fmul fast float %1607, %1603
  %1609 = fsub fast float %1606, %1608
  %1610 = fmul fast float %1594, %1594
  %1611 = fsub fast float %1597, %1610
  %1612 = fmul fast float %1603, %1603
  %1613 = fmul fast float %1612, %1601
  %1614 = fsub fast float %1611, %1613
  %1615 = fdiv fast float %1609, %1614
  %1616 = fmul fast float %1603, %1615
  %1617 = fsub fast float %1604, %1616
  %1618 = fmul fast float %1617, %1601
  %1619 = fmul fast float %1618, %1593
  %1620 = fsub fast float 1.000000e+00, %1619
  %1621 = fmul fast float %1594, %1615
  %1622 = fsub fast float %1620, %1621
  %1623 = fmul fast float %1618, %1618
  %1624 = fmul fast float %1615, 4.000000e+00
  %1625 = fmul fast float %1624, %1622
  %1626 = fsub fast float %1623, %1625
  %1627 = call float @dx.op.unary.f32(i32 24, float %1626)  ; Sqrt(value)
  %1628 = fcmp fast oge float %1618, 0.000000e+00
  %1629 = fsub fast float -0.000000e+00, %1627
  %1630 = select i1 %1628, float %1629, float %1627
  %1631 = fsub fast float %1630, %1618
  %1632 = fdiv fast float %1631, %1615
  %1633 = fdiv fast float %1622, %1631
  %1634 = fmul fast float %1632, 5.000000e-01
  %1635 = fmul fast float %1633, 2.000000e+00
  %1636 = select i1 %1628, float %1634, float %1635
  %1637 = select i1 %1628, float %1635, float %1634
  %1638 = call float @dx.op.binary.f32(i32 35, float %1636, float %1637)  ; FMax(a,b)
  %1639 = call float @dx.op.binary.f32(i32 36, float %1636, float %1637)  ; FMin(a,b)
  %1640 = fcmp fast ogt float %1553, %1639
  br i1 %1640, label %1641, label %1651

; <label>:1641                                    ; preds = %1578
  %1642 = fsub fast float %1553, %1639
  %1643 = fsub fast float %1638, %1639
  %1644 = fmul fast float %1642, %1643
  %1645 = fmul fast float %1638, %1553
  %1646 = fadd fast float %1638, %1553
  %1647 = fmul fast float %1646, %1593
  %1648 = fadd fast float %1645, %1594
  %1649 = fsub fast float %1648, %1647
  %1650 = fdiv fast float %1649, %1644
  br label %1651

; <label>:1651                                    ; preds = %1641, %1578
  %1652 = phi float [ %1650, %1641 ], [ 0.000000e+00, %1578 ]
  %1653 = fcmp fast ogt float %1553, %1638
  %1654 = fsub fast float %1553, %1638
  br i1 %1653, label %1655, label %1665

; <label>:1655                                    ; preds = %1651
  %1656 = fsub fast float %1638, %1639
  %1657 = fmul fast float %1656, %1654
  %1658 = fmul fast float %1639, %1553
  %1659 = fadd fast float %1639, %1553
  %1660 = fmul fast float %1659, %1593
  %1661 = fsub fast float %1595, %1658
  %1662 = fadd fast float %1661, %1660
  %1663 = fdiv fast float %1662, %1657
  %1664 = fadd fast float %1663, %1652
  br label %1665

; <label>:1665                                    ; preds = %1655, %1651
  %1666 = phi float [ %1664, %1655 ], [ %1652, %1651 ]
  %1667 = fsub fast float %1553, %1639
  %1668 = fmul fast float %1667, %1654
  %1669 = fmul fast float %1639, %1638
  %1670 = fadd fast float %1639, %1638
  %1671 = fmul fast float %1670, %1593
  %1672 = fadd fast float %1669, %1594
  %1673 = fsub fast float %1672, %1671
  %1674 = fdiv fast float %1673, %1668
  %1675 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  %1676 = fcmp fast oeq float %736, 0.000000e+00
  %1677 = extractvalue %dx.types.CBufRet.f32 %1461, 0
  %1678 = fcmp fast oeq float %1677, 0.000000e+00
  %1679 = or i1 %1676, %1678
  %1680 = fmul fast float %1677, 2.000000e+00
  %1681 = fadd fast float %1462, %1463
  %1682 = fdiv fast float %1681, %1680
  %1683 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1684 = fmul fast float %1683, 2.000000e+00
  %1685 = fsub fast float 3.000000e+00, %1684
  %1686 = fmul fast float %1683, %1683
  %1687 = fmul fast float %1686, %1685
  %1688 = select i1 %1679, float 1.000000e+00, float %1687
  %1689 = fmul fast float %1674, %736
  %1690 = fadd fast float %1675, %1689
  %1691 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1692 = fmul fast float %1688, %1691
  br label %1693

; <label>:1693                                    ; preds = %1665, %1545
  %1694 = phi float [ %1692, %1665 ], [ 0.000000e+00, %1545 ]
  %1695 = fsub fast float 1.000000e+00, %1694
  %1696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %16, float %1414, float %1415, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1697 = extractvalue %dx.types.ResRet.f32 %1696, 0
  %1698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %19, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1699 = extractvalue %dx.types.CBufRet.i32 %1698, 2
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1706, label %1701

; <label>:1701                                    ; preds = %1693
  %1702 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1703 = fadd fast float %1697, -1.000000e+00
  %1704 = fmul fast float %1702, %1703
  %1705 = fadd fast float %1704, 1.000000e+00
  br label %1706

; <label>:1706                                    ; preds = %1701, %1693
  %1707 = phi float [ %1705, %1701 ], [ %1695, %1693 ]
  br i1 %1469, label %1708, label %1726

; <label>:1708                                    ; preds = %1706
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 1
  %1711 = fsub fast float %1546, %1710
  %1712 = call float @dx.op.unary.f32(i32 7, float %1711)  ; Saturate(value)
  %1713 = fsub fast float %1546, %1468
  %1714 = call float @dx.op.unary.f32(i32 7, float %1713)  ; Saturate(value)
  %1715 = fsub fast float %1712, %1714
  %1716 = fsub fast float %1548, %1714
  %1717 = fdiv fast float %1716, %1715
  %1718 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1719 = fmul fast float %1718, 2.000000e+00
  %1720 = fsub fast float 3.000000e+00, %1719
  %1721 = fsub fast float %1697, %1707
  %1722 = fmul fast float %1718, %1718
  %1723 = fmul fast float %1722, %1721
  %1724 = fmul fast float %1723, %1720
  %1725 = fadd fast float %1724, %1707
  br label %1726

; <label>:1726                                    ; preds = %1708, %1706
  %1727 = phi float [ %1725, %1708 ], [ %1707, %1706 ]
  %1728 = call float @dx.op.binary.f32(i32 35, float %1697, float %1727)  ; FMax(a,b)
  %1729 = call float @dx.op.dot3.f32(i32 55, float %1728, float %1728, float %1728, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1730 = select i1 %102, float %1729, float %1728
  %1731 = select i1 %102, float 1.000000e+00, float %1728
  %1732 = fmul fast float %1730, %1404
  %1733 = fmul fast float %1730, %1405
  %1734 = fmul fast float %1731, %1406
  br label %1735

; <label>:1735                                    ; preds = %1726, %1410, %1396, %852
  %1736 = phi float [ %857, %852 ], [ %1404, %1396 ], [ %1732, %1726 ], [ %1404, %1410 ]
  %1737 = phi float [ %858, %852 ], [ %1405, %1396 ], [ %1733, %1726 ], [ %1405, %1410 ]
  %1738 = phi float [ %859, %852 ], [ %1406, %1396 ], [ %1734, %1726 ], [ %1406, %1410 ]
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %18, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 2
  %1741 = extractvalue %dx.types.CBufRet.f32 %1739, 3
  %1742 = fmul fast float %1740, %44
  %1743 = fmul fast float %1741, %45
  %1744 = call float @dx.op.unary.f32(i32 7, float %1742)  ; Saturate(value)
  %1745 = call float @dx.op.unary.f32(i32 7, float %1743)  ; Saturate(value)
  %1746 = select i1 %613, i32 2, i32 0
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

; <label>:1774                                    ; preds = %1735
  %1775 = fcmp fast ogt float %37, 9.843750e-01
  %1776 = fadd fast float %856, -4.000000e+00
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
  %1805 = select i1 %613, float %1804, float 0.000000e+00
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

; <label>:1817                                    ; preds = %1774, %1735
  %1818 = phi float [ %1814, %1774 ], [ 1.000000e+00, %1735 ]
  %1819 = phi float [ %1815, %1774 ], [ 1.000000e+00, %1735 ]
  %1820 = phi float [ %1816, %1774 ], [ 1.000000e+00, %1735 ]
  %1821 = call float @dx.op.dot3.f32(i32 55, float %1818, float %1819, float %1820, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1822 = select i1 %102, float %1821, float %1818
  %1823 = select i1 %102, float %1821, float %1819
  %1824 = fmul fast float %1822, %1736
  %1825 = fmul fast float %1823, %1737
  %1826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1827 = extractvalue %dx.types.CBufRet.f32 %1826, 0
  br i1 %102, label %1828, label %1831

; <label>:1828                                    ; preds = %1817
  %1829 = fadd fast float %1824, %1825
  %1830 = fmul fast float %1827, %1829
  br label %1841

; <label>:1831                                    ; preds = %1817
  %1832 = fmul fast float %1820, %1738
  %1833 = fmul fast float %1827, %1824
  %1834 = fmul fast float %1827, %1825
  %1835 = fmul fast float %1832, %1827
  %1836 = call float @dx.op.binary.f32(i32 35, float %1834, float %1835)  ; FMax(a,b)
  %1837 = call float @dx.op.binary.f32(i32 35, float %1833, float %1836)  ; FMax(a,b)
  %1838 = call float @dx.op.binary.f32(i32 35, float %1837, float 0.000000e+00)  ; FMax(a,b)
  %1839 = fcmp fast ugt float %1838, 0x3F10000000000000
  br i1 %1839, label %1841, label %1840

; <label>:1840                                    ; preds = %1831
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1841

; <label>:1841                                    ; preds = %1840, %1831, %1828
  %1842 = phi float [ %1830, %1828 ], [ %1833, %1840 ], [ %1833, %1831 ]
  %1843 = phi float [ 0.000000e+00, %1828 ], [ %1834, %1840 ], [ %1834, %1831 ]
  %1844 = phi float [ 0.000000e+00, %1828 ], [ %1835, %1840 ], [ %1835, %1831 ]
  %1845 = fadd fast float %490, 0x3FE3C6EF40000000
  %1846 = call float @dx.op.unary.f32(i32 22, float %1845)  ; Frc(value)
  %1847 = call float @dx.op.unary.f32(i32 23, float %1842)  ; Log(value)
  %1848 = fadd fast float %1847, -7.000000e+00
  %1849 = call float @dx.op.unary.f32(i32 21, float %1848)  ; Exp(value)
  %1850 = fmul fast float %1846, 2.000000e+00
  %1851 = fadd fast float %1850, -1.000000e+00
  %1852 = fmul fast float %1849, %1851
  %1853 = fcmp fast ogt float %1842, 0.000000e+00
  %1854 = select i1 %1853, float %1852, float 0.000000e+00
  %1855 = fadd fast float %1854, %1842
  %1856 = fadd fast float %490, 0x3FF3C6EF40000000
  %1857 = call float @dx.op.unary.f32(i32 22, float %1856)  ; Frc(value)
  %1858 = call float @dx.op.unary.f32(i32 23, float %1843)  ; Log(value)
  %1859 = fadd fast float %1858, -7.000000e+00
  %1860 = call float @dx.op.unary.f32(i32 21, float %1859)  ; Exp(value)
  %1861 = fmul fast float %1857, 2.000000e+00
  %1862 = fadd fast float %1861, -1.000000e+00
  %1863 = fmul fast float %1860, %1862
  %1864 = fcmp fast ogt float %1843, 0.000000e+00
  %1865 = select i1 %1864, float %1863, float 0.000000e+00
  %1866 = fadd fast float %1865, %1843
  %1867 = fadd fast float %490, 0x3FFDAA66E0000000
  %1868 = call float @dx.op.unary.f32(i32 22, float %1867)  ; Frc(value)
  %1869 = call float @dx.op.unary.f32(i32 23, float %1844)  ; Log(value)
  %1870 = fadd fast float %1869, -6.000000e+00
  %1871 = call float @dx.op.unary.f32(i32 21, float %1870)  ; Exp(value)
  %1872 = fmul fast float %1868, 2.000000e+00
  %1873 = fadd fast float %1872, -1.000000e+00
  %1874 = fmul fast float %1871, %1873
  %1875 = fcmp fast ogt float %1844, 0.000000e+00
  %1876 = select i1 %1875, float %1874, float 0.000000e+00
  %1877 = fadd fast float %1876, %1844
  %1878 = select i1 %102, float %1843, float %1866
  %1879 = select i1 %102, float %1844, float %1877
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1880 = call float @dx.op.binary.f32(i32 36, float %1855, float 3.225500e+04)  ; FMin(a,b)
  %1881 = call float @dx.op.binary.f32(i32 36, float %1878, float 3.225500e+04)  ; FMin(a,b)
  %1882 = call float @dx.op.binary.f32(i32 36, float %1879, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1880)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1881)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1882)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

