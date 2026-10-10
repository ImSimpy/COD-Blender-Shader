;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float   xyzw
; TEXCOORD                 5   xy          4     NONE   float   xy  
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
;
; shader hash: 2fdbbe2b087c0e74648385ee9f0d11c8
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
;                                   texture     f32          2d      T3     t77,space2     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t1     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture     f32          3d      T9     t45,space2     1
;                                   texture     f32     2darray     T10     t47,space2     1
;                                   textureunorm_f32     2darray     T11     t85,space2     1
;                                   texture     f32          2d     T12     t83,space2     1
;                                   texture     f32     2darray     T13             t2     1
;                                   texture    byte         r/o     T14             t3     1
;                                   texture     f32          3d     T15     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = fmul fast float %41, %35
  %43 = fmul fast float %41, %36
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 2
  %46 = extractvalue %dx.types.CBufRet.f32 %44, 3
  %47 = fmul fast float %42, 2.000000e+00
  %48 = fmul fast float %47, %45
  %49 = fmul fast float %43, 2.000000e+00
  %50 = fmul fast float %49, %46
  %51 = fsub fast float 1.000000e+00, %48
  %52 = fsub fast float 1.000000e+00, %50
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 0
  %55 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %56 = extractvalue %dx.types.CBufRet.f32 %53, 2
  %57 = fmul fast float %51, %54
  %58 = fmul fast float %51, %55
  %59 = fmul fast float %51, %56
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 1
  %63 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %64 = fmul fast float %52, %61
  %65 = fmul fast float %52, %62
  %66 = fmul fast float %52, %63
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 0
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %71 = fadd fast float %64, %68
  %72 = fadd fast float %71, %57
  %73 = fadd fast float %65, %69
  %74 = fadd fast float %73, %58
  %75 = fadd fast float %66, %70
  %76 = fadd fast float %75, %59
  %77 = fmul fast float %72, %38
  %78 = fmul fast float %74, %38
  %79 = fmul fast float %76, %38
  %80 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %81 = extractvalue %dx.types.Dimensions %80, 0
  %82 = sitofp i32 %81 to float
  %83 = extractvalue %dx.types.Dimensions %80, 1
  %84 = sitofp i32 %83 to float
  %85 = fmul fast float %45, %42
  %86 = fmul fast float %46, %43
  %87 = fmul fast float %85, %82
  %88 = fmul fast float %86, %84
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %91 = fsub fast float -0.000000e+00, %90
  %92 = fptoui float %91 to i32
  %93 = fptoui float %87 to i32
  %94 = fptoui float %88 to i32
  %95 = and i32 %92, 31
  %96 = lshr i32 %93, %95
  %97 = lshr i32 %94, %95
  %98 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %92, i32 %96, i32 %97, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = fcmp fast olt float %99, -1.000000e+00
  %101 = fcmp fast ogt float %99, -1.000000e+00
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %104 = select i1 %101, float %103, float 1.000000e+00
  %105 = fadd fast float %99, 1.000000e+00
  %106 = fmul fast float %104, %105
  %107 = call float @dx.op.unary.f32(i32 6, float %106)  ; FAbs(value)
  %108 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %109 = fcmp fast oge float %107, %108
  %110 = select i1 %109, float 0x4197782600000000, float %107
  %111 = fcmp fast ogt float %38, %110
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %113

; <label>:113                                     ; preds = %112, %0
  br i1 %100, label %114, label %115

; <label>:114                                     ; preds = %113
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %115

; <label>:115                                     ; preds = %114, %113
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.i32 %117, 3
  %119 = and i32 %118, 3
  %120 = icmp ne i32 %119, 0
  %121 = and i32 %118, 4
  %122 = icmp ne i32 %121, 0
  %123 = and i1 %120, %122
  br i1 %123, label %124, label %135

; <label>:124                                     ; preds = %115
  %125 = extractvalue %dx.types.CBufRet.f32 %116, 3
  %126 = fmul fast float %125, %43
  %127 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %128 = fmul fast float %127, %42
  %129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %128, float %126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = fsub fast float 1.000000e+00, %130
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = fcmp fast olt float %131, %133
  br label %138

; <label>:135                                     ; preds = %115
  %136 = icmp eq i32 %121, 0
  %137 = and i1 %120, %136
  br label %138

; <label>:138                                     ; preds = %135, %124
  %139 = phi i1 [ %134, %124 ], [ %137, %135 ]
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %143 = fmul fast float %141, %42
  %144 = fmul fast float %142, %43
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = and i32 %146, 114688
  %148 = icmp ne i32 %147, 0
  %149 = select i1 %148, float %143, float 0.000000e+00
  %150 = select i1 %148, float %144, float 0.000000e+00
  %151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %149, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fmul fast float %152, 2.550000e+02
  %154 = fptoui float %153 to i32
  %155 = select i1 %148, i32 %154, i32 0
  %156 = mul i32 %21, 208
  %157 = add i32 %156, 188
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = and i32 %118, 114688
  %161 = and i32 %118, 8
  %162 = icmp ne i32 %161, 0
  %163 = or i1 %139, %162
  %164 = select i1 %163, i32 %160, i32 16384
  %165 = and i32 %164, %159
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

; <label>:167                                     ; preds = %138
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %168

; <label>:168                                     ; preds = %167, %138
  %169 = and i32 %159, 512
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %195, label %171

; <label>:171                                     ; preds = %168
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %175 = fmul fast float %173, %42
  %176 = fmul fast float %174, %43
  %177 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %179 = fdiv fast float %177, %178
  %180 = fcmp fast ogt float %179, 0x3FFC71C720000000
  br i1 %180, label %181, label %187

; <label>:181                                     ; preds = %171
  %182 = fdiv fast float 0x3FFC71C720000000, %179
  %183 = fmul fast float %182, %176
  %184 = fsub fast float 1.000000e+00, %182
  %185 = fmul fast float %184, 5.000000e-01
  %186 = fadd fast float %185, %183
  br label %195

; <label>:187                                     ; preds = %171
  %188 = fcmp fast olt float %179, 0x3FFC71C720000000
  br i1 %188, label %189, label %195

; <label>:189                                     ; preds = %187
  %190 = fmul fast float %175, 5.625000e-01
  %191 = fmul fast float %190, %179
  %192 = fmul fast float %179, 2.812500e-01
  %193 = fsub fast float 5.000000e-01, %192
  %194 = fadd fast float %193, %191
  br label %195

; <label>:195                                     ; preds = %189, %187, %181, %168
  %196 = phi float [ %32, %168 ], [ %175, %181 ], [ %194, %189 ], [ %175, %187 ]
  %197 = phi float [ %33, %168 ], [ %186, %181 ], [ %176, %189 ], [ %176, %187 ]
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = extractvalue %dx.types.ResRet.i32 %198, 1
  %201 = bitcast i32 %199 to float
  %202 = bitcast i32 %200 to float
  %203 = fmul fast float %201, %32
  %204 = fmul fast float %202, %33
  %205 = call float @dx.op.unary.f32(i32 22, float %203)  ; Frc(value)
  %206 = call float @dx.op.unary.f32(i32 22, float %204)  ; Frc(value)
  %207 = and i32 %159, 16
  %208 = icmp ne i32 %207, 0
  %209 = select i1 %208, float 1.000000e+00, float %34
  %210 = icmp eq i32 %207, 0
  br i1 %210, label %230, label %211, !dx.controlflow.hints !58

; <label>:211                                     ; preds = %195
  %212 = add i32 %156, 64
  %213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.f32 %213, 0
  %215 = fadd fast float %214, 1.000000e+00
  %216 = fmul fast float %215, %34
  %217 = fsub fast float %216, %214
  %218 = fsub fast float %215, %217
  %219 = call float @dx.op.unary.f32(i32 7, float %218)  ; Saturate(value)
  %220 = fsub fast float 1.000000e+00, %216
  %221 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %222 = fsub fast float %219, %221
  %223 = fsub fast float %209, %221
  %224 = fdiv fast float %223, %222
  %225 = call float @dx.op.unary.f32(i32 7, float %224)  ; Saturate(value)
  %226 = fmul fast float %225, 2.000000e+00
  %227 = fsub fast float 3.000000e+00, %226
  %228 = fmul fast float %225, %225
  %229 = fmul fast float %228, %227
  br label %230

; <label>:230                                     ; preds = %211, %195
  %231 = phi float [ %229, %211 ], [ %209, %195 ]
  %232 = fcmp fast ogt float %231, 0.000000e+00
  br i1 %232, label %234, label %233

; <label>:233                                     ; preds = %230
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %234

; <label>:234                                     ; preds = %233, %230
  %235 = call float @dx.op.unary.f32(i32 7, float %231)  ; Saturate(value)
  %236 = fmul fast float %42, 5.000000e-01
  %237 = fmul fast float %43, 5.000000e-01
  %238 = fptosi float %236 to i32
  %239 = fptosi float %237 to i32
  %240 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %238, i32 %239, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = lshr i32 %241, 18
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F4C00EBA0000000
  %245 = call float @dx.op.unary.f32(i32 21, float %244)  ; Exp(value)
  %246 = fadd fast float %245, -1.000000e+00
  %247 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %248 = extractvalue %dx.types.Dimensions %247, 0
  %249 = sitofp i32 %248 to float
  %250 = extractvalue %dx.types.Dimensions %247, 1
  %251 = sitofp i32 %250 to float
  %252 = fcmp fast oge float %236, %249
  %253 = fcmp fast oge float %237, %251
  %254 = or i1 %252, %253
  %255 = select i1 %254, float 0x4197782600000000, float %246
  %256 = fsub fast float %255, %38
  %257 = fcmp fast ogt float %256, 0.000000e+00
  %258 = and i32 %155, -2
  %259 = icmp eq i32 %258, 2
  %260 = and i1 %259, %257
  %261 = xor i1 %257, true
  %262 = icmp eq i32 %155, 1
  %263 = and i1 %262, %261
  %264 = or i1 %260, %263
  %265 = and i32 %159, 262144
  %266 = icmp ne i32 %265, 0
  %267 = and i1 %266, %264
  %268 = xor i1 %264, true
  %269 = and i32 %159, 131072
  %270 = icmp ne i32 %269, 0
  %271 = and i1 %270, %268
  %272 = or i1 %267, %271
  br i1 %272, label %273, label %274

; <label>:273                                     ; preds = %234
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %274

; <label>:274                                     ; preds = %273, %234
  %275 = and i32 %159, 32
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %515, label %277, !dx.controlflow.hints !59

; <label>:277                                     ; preds = %274
  %278 = add i32 %156, 80
  %279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = extractvalue %dx.types.ResRet.f32 %279, 1
  %282 = extractvalue %dx.types.ResRet.f32 %279, 2
  %283 = extractvalue %dx.types.ResRet.f32 %279, 3
  %284 = add i32 %156, 96
  %285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = extractvalue %dx.types.ResRet.f32 %285, 1
  %288 = extractvalue %dx.types.ResRet.f32 %285, 2
  %289 = add i32 %156, 112
  %290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.f32 %290, 0
  %292 = extractvalue %dx.types.ResRet.f32 %290, 1
  %293 = extractvalue %dx.types.ResRet.f32 %290, 2
  %294 = extractvalue %dx.types.ResRet.f32 %290, 3
  %295 = add i32 %156, 128
  %296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.f32 %296, 0
  %298 = extractvalue %dx.types.ResRet.f32 %296, 1
  %299 = extractvalue %dx.types.ResRet.f32 %296, 2
  %300 = extractvalue %dx.types.ResRet.f32 %296, 3
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 4096
  %304 = icmp ne i32 %303, 0
  %305 = fcmp fast une float %288, 0.000000e+00
  %306 = and i32 %302, 64
  %307 = icmp ne i32 %306, 0
  %308 = and i32 %302, 128
  %309 = icmp eq i32 %308, 0
  %310 = and i32 %302, 2048
  %311 = icmp eq i32 %310, 0
  %312 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %313 = extractvalue %dx.types.Dimensions %312, 0
  %314 = sitofp i32 %313 to float
  %315 = extractvalue %dx.types.Dimensions %312, 1
  %316 = sitofp i32 %315 to float
  %317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %318 = extractvalue %dx.types.CBufRet.f32 %317, 2
  %319 = extractvalue %dx.types.CBufRet.f32 %317, 3
  %320 = fmul fast float %318, %42
  %321 = fmul fast float %319, %43
  %322 = fmul fast float %320, %314
  %323 = fmul fast float %321, %316
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 1
  %326 = fsub fast float -0.000000e+00, %325
  %327 = fptoui float %326 to i32
  %328 = fptoui float %322 to i32
  %329 = fptoui float %323 to i32
  %330 = and i32 %327, 31
  %331 = lshr i32 %328, %330
  %332 = lshr i32 %329, %330
  %333 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %327, i32 %331, i32 %332, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = fcmp fast ogt float %334, -1.000000e+00
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 1
  %338 = select i1 %335, float %337, float 1.000000e+00
  %339 = fadd fast float %334, 1.000000e+00
  %340 = fmul fast float %338, %339
  %341 = call float @dx.op.unary.f32(i32 6, float %340)  ; FAbs(value)
  %342 = extractvalue %dx.types.CBufRet.f32 %336, 3
  %343 = fcmp fast oge float %341, %342
  %344 = select i1 %343, float 0x4197782600000000, float %341
  br i1 %311, label %415, label %345, !dx.controlflow.hints !60

; <label>:345                                     ; preds = %277
  %346 = fmul fast float %47, %318
  %347 = fmul fast float %49, %319
  %348 = fsub fast float 1.000000e+00, %346
  %349 = fsub fast float 1.000000e+00, %347
  %350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.f32 %350, 0
  %352 = extractvalue %dx.types.CBufRet.f32 %350, 1
  %353 = extractvalue %dx.types.CBufRet.f32 %350, 2
  %354 = fmul fast float %348, %351
  %355 = fmul fast float %348, %352
  %356 = fmul fast float %348, %353
  %357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %358 = extractvalue %dx.types.CBufRet.f32 %357, 0
  %359 = extractvalue %dx.types.CBufRet.f32 %357, 1
  %360 = extractvalue %dx.types.CBufRet.f32 %357, 2
  %361 = fmul fast float %349, %358
  %362 = fmul fast float %349, %359
  %363 = fmul fast float %349, %360
  %364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %365 = extractvalue %dx.types.CBufRet.f32 %364, 0
  %366 = extractvalue %dx.types.CBufRet.f32 %364, 1
  %367 = extractvalue %dx.types.CBufRet.f32 %364, 2
  %368 = fadd fast float %361, %365
  %369 = fadd fast float %368, %354
  %370 = fadd fast float %362, %366
  %371 = fadd fast float %370, %355
  %372 = fadd fast float %363, %367
  %373 = fadd fast float %372, %356
  %374 = fmul fast float %369, %344
  %375 = fmul fast float %371, %344
  %376 = fmul fast float %373, %344
  %377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.f32 %377, 0
  %379 = extractvalue %dx.types.CBufRet.f32 %377, 1
  %380 = extractvalue %dx.types.CBufRet.f32 %377, 2
  %381 = fadd fast float %374, %378
  %382 = fadd fast float %375, %379
  %383 = fadd fast float %376, %380
  %384 = call float @dx.op.dot3.f32(i32 55, float %381, float %382, float %383, float %381, float %382, float %383)  ; Dot3(ax,ay,az,bx,by,bz)
  %385 = fsub fast float 1.000000e+00, %384
  %386 = fcmp fast olt float %385, %287
  %387 = fcmp fast ogt float %385, %286
  %388 = or i1 %386, %387
  %389 = select i1 %388, float 0.000000e+00, float %385
  %390 = fsub fast float %286, %287
  %391 = fsub fast float %389, %287
  %392 = fdiv fast float %391, %390
  %393 = call float @dx.op.unary.f32(i32 7, float %392)  ; Saturate(value)
  %394 = fmul fast float %393, 2.000000e+00
  %395 = fsub fast float 3.000000e+00, %394
  %396 = fmul fast float %393, %393
  %397 = fmul fast float %396, %395
  %398 = fsub fast float %294, %300
  %399 = fmul fast float %397, %398
  %400 = fadd fast float %399, %300
  %401 = fmul fast float %291, %22
  %402 = fmul fast float %292, %23
  %403 = fmul fast float %293, %24
  %404 = fsub fast float %401, %297
  %405 = fsub fast float %402, %298
  %406 = fsub fast float %403, %299
  %407 = fmul fast float %397, %404
  %408 = fmul fast float %397, %405
  %409 = fmul fast float %397, %406
  %410 = fadd fast float %407, %297
  %411 = fadd fast float %408, %298
  %412 = fadd fast float %409, %299
  %413 = fmul fast float %280, %280
  %414 = fmul fast float %413, %389
  br label %506

; <label>:415                                     ; preds = %277
  %416 = and i32 %302, 256
  %417 = icmp eq i32 %416, 0
  %418 = fsub fast float %344, %38
  br i1 %417, label %467, label %419

; <label>:419                                     ; preds = %415
  %420 = fadd fast float %286, %38
  %421 = fcmp fast olt float %344, %38
  %422 = fcmp fast ogt float %344, %420
  %423 = or i1 %421, %422
  %424 = select i1 %423, float 0.000000e+00, float %418
  %425 = call float @dx.op.unary.f32(i32 83, float %344)  ; DerivCoarseX(value)
  %426 = call float @dx.op.unary.f32(i32 84, float %344)  ; DerivCoarseY(value)
  %427 = fmul fast float %425, %425
  %428 = fmul fast float %426, %426
  %429 = fadd fast float %428, %427
  %430 = call float @dx.op.unary.f32(i32 24, float %429)  ; Sqrt(value)
  %431 = extractvalue %dx.types.CBufRet.f32 %324, 2
  %432 = fmul fast float %431, %430
  %433 = call float @dx.op.unary.f32(i32 7, float %432)  ; Saturate(value)
  %434 = fmul fast float %433, %287
  %435 = fdiv fast float %418, %434
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = fmul fast float %436, 2.000000e+00
  %438 = fsub fast float 3.000000e+00, %437
  %439 = fmul fast float %436, %436
  %440 = fmul fast float %439, %438
  %441 = fsub fast float %344, %420
  %442 = fadd fast float %441, %434
  %443 = fdiv fast float %442, %434
  %444 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %445 = fmul fast float %444, 2.000000e+00
  %446 = fsub fast float 3.000000e+00, %445
  %447 = fmul fast float %444, %444
  %448 = fmul fast float %447, %446
  %449 = fsub fast float %440, %448
  %450 = fsub fast float %294, %300
  %451 = fmul fast float %449, %450
  %452 = fadd fast float %451, %300
  %453 = fmul fast float %291, %22
  %454 = fmul fast float %292, %23
  %455 = fmul fast float %293, %24
  %456 = fsub fast float %453, %297
  %457 = fsub fast float %454, %298
  %458 = fsub fast float %455, %299
  %459 = fmul fast float %449, %456
  %460 = fmul fast float %449, %457
  %461 = fmul fast float %449, %458
  %462 = fadd fast float %459, %297
  %463 = fadd fast float %460, %298
  %464 = fadd fast float %461, %299
  %465 = fmul fast float %424, %280
  %466 = call float @dx.op.unary.f32(i32 6, float %465)  ; FAbs(value)
  br label %506

; <label>:467                                     ; preds = %415
  br i1 %305, label %468, label %479

; <label>:468                                     ; preds = %467
  %469 = select i1 %307, float 5.000000e+01, float 1.000000e+00
  %470 = fmul fast float %469, %280
  %471 = fmul fast float %205, 2.000000e+00
  %472 = fmul fast float %206, 2.000000e+00
  %473 = fadd fast float %471, -1.000000e+00
  %474 = fadd fast float %472, -1.000000e+00
  %475 = call float @dx.op.dot2.f32(i32 54, float %473, float %474, float %473, float %474)  ; Dot2(ax,ay,bx,by)
  %476 = fmul fast float %475, %288
  %477 = fsub fast float %418, %476
  %478 = fmul fast float %470, %477
  br label %506

; <label>:479                                     ; preds = %467
  br i1 %309, label %499, label %480

; <label>:480                                     ; preds = %479
  %481 = select i1 %307, float 0x3F947AE140000000, float 1.000000e+00
  %482 = fdiv fast float 1.000000e+00, %481
  %483 = fmul fast float %481, %281
  %484 = fmul fast float %481, %282
  %485 = fmul fast float %482, %283
  %486 = call float @dx.op.unary.f32(i32 6, float %418)  ; FAbs(value)
  %487 = fcmp fast olt float %486, %483
  br i1 %487, label %488, label %492, !dx.controlflow.hints !61

; <label>:488                                     ; preds = %480
  %489 = fmul fast float %482, %280
  %490 = fmul fast float %489, %486
  %491 = call float @dx.op.unary.f32(i32 6, float %490)  ; FAbs(value)
  br label %506

; <label>:492                                     ; preds = %480
  %493 = fcmp fast ogt float %486, %484
  br i1 %493, label %494, label %506

; <label>:494                                     ; preds = %492
  %495 = fsub fast float %486, %484
  %496 = fmul fast float %485, %495
  %497 = call float @dx.op.unary.f32(i32 6, float %496)  ; FAbs(value)
  %498 = fsub fast float 1.000000e+00, %497
  br label %506

; <label>:499                                     ; preds = %479
  %500 = select i1 %307, float 5.000000e+01, float 1.000000e+00
  %501 = fmul fast float %500, %280
  %502 = call float @dx.op.unary.f32(i32 6, float %256)  ; FAbs(value)
  %503 = select i1 %304, float %502, float 0x47EFFFFFE0000000
  %504 = call float @dx.op.binary.f32(i32 36, float %418, float %503)  ; FMin(a,b)
  %505 = fmul fast float %501, %504
  br label %506

; <label>:506                                     ; preds = %499, %494, %492, %488, %468, %419, %345
  %507 = phi float [ %414, %345 ], [ %466, %419 ], [ %478, %468 ], [ %505, %499 ], [ %491, %488 ], [ %498, %494 ], [ %486, %492 ]
  %508 = phi float [ %410, %345 ], [ %462, %419 ], [ %22, %468 ], [ %22, %499 ], [ %22, %488 ], [ %22, %494 ], [ %22, %492 ]
  %509 = phi float [ %411, %345 ], [ %463, %419 ], [ %23, %468 ], [ %23, %499 ], [ %23, %488 ], [ %23, %494 ], [ %23, %492 ]
  %510 = phi float [ %412, %345 ], [ %464, %419 ], [ %24, %468 ], [ %24, %499 ], [ %24, %488 ], [ %24, %494 ], [ %24, %492 ]
  %511 = phi float [ %400, %345 ], [ %452, %419 ], [ 1.000000e+00, %468 ], [ 1.000000e+00, %499 ], [ 1.000000e+00, %488 ], [ 1.000000e+00, %494 ], [ 1.000000e+00, %492 ]
  %512 = call float @dx.op.unary.f32(i32 7, float %507)  ; Saturate(value)
  %513 = fmul fast float %511, %235
  %514 = fmul fast float %513, %512
  br label %515

; <label>:515                                     ; preds = %506, %274
  %516 = phi float [ %514, %506 ], [ %235, %274 ]
  %517 = phi float [ %508, %506 ], [ %22, %274 ]
  %518 = phi float [ %509, %506 ], [ %23, %274 ]
  %519 = phi float [ %510, %506 ], [ %24, %274 ]
  %520 = fmul fast float %517, %25
  %521 = fmul fast float %518, %25
  %522 = fmul fast float %519, %25
  %523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.f32 %523, 2
  %525 = fptosi float %38 to i32
  %526 = sitofp i32 %525 to float
  %527 = fadd fast float %524, %526
  %528 = fmul fast float %527, 0x3FE3C6EF40000000
  %529 = frem fast float %42, 2.560000e+02
  %530 = frem fast float %43, 2.560000e+02
  %531 = fptoui float %529 to i32
  %532 = fptoui float %530 to i32
  %533 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %531, i32 %532, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = fadd fast float %534, %528
  %536 = call float @dx.op.unary.f32(i32 22, float %535)  ; Frc(value)
  %537 = and i32 %159, 1
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %595, label %539, !dx.controlflow.hints !62

; <label>:539                                     ; preds = %515
  %540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %156, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 2
  %542 = extractvalue %dx.types.ResRet.f32 %540, 3
  %543 = add i32 %156, 16
  %544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = extractvalue %dx.types.ResRet.f32 %544, 2
  %548 = add i32 %156, 32
  %549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = extractvalue %dx.types.ResRet.f32 %549, 1
  %552 = extractvalue %dx.types.ResRet.f32 %549, 2
  %553 = and i32 %159, 2
  %554 = icmp eq i32 %553, 0
  %555 = call float @dx.op.dot3.f32(i32 55, float %28, float %29, float %30, float %28, float %29, float %30)  ; Dot3(ax,ay,az,bx,by,bz)
  %556 = call float @dx.op.unary.f32(i32 25, float %555)  ; Rsqrt(value)
  %557 = fmul fast float %556, %28
  %558 = fmul fast float %556, %29
  %559 = fmul fast float %556, %30
  %560 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %561 = call float @dx.op.unary.f32(i32 25, float %560)  ; Rsqrt(value)
  %562 = fmul fast float %561, %77
  %563 = fmul fast float %561, %78
  %564 = fmul fast float %561, %79
  %565 = call float @dx.op.dot3.f32(i32 55, float %562, float %563, float %564, float %557, float %558, float %559)  ; Dot3(ax,ay,az,bx,by,bz)
  %566 = fmul fast float %565, %565
  %567 = fmul fast float %566, %541
  %568 = fadd fast float %567, %542
  %569 = call float @dx.op.unary.f32(i32 7, float %568)  ; Saturate(value)
  br i1 %554, label %570, label %580, !dx.controlflow.hints !63

; <label>:570                                     ; preds = %539
  %571 = extractvalue %dx.types.ResRet.f32 %540, 1
  %572 = extractvalue %dx.types.ResRet.f32 %540, 0
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 3
  %575 = fmul fast float %574, %560
  %576 = fsub fast float %572, %575
  %577 = fmul fast float %576, %571
  %578 = call float @dx.op.unary.f32(i32 7, float %577)  ; Saturate(value)
  %579 = fmul fast float %578, %569
  br label %580

; <label>:580                                     ; preds = %570, %539
  %581 = phi float [ %579, %570 ], [ %569, %539 ]
  %582 = fsub fast float %545, %550
  %583 = fsub fast float %546, %551
  %584 = fsub fast float %547, %552
  %585 = fmul fast float %581, %582
  %586 = fmul fast float %581, %583
  %587 = fmul fast float %581, %584
  %588 = fadd fast float %585, %550
  %589 = fadd fast float %586, %551
  %590 = fadd fast float %587, %552
  %591 = fmul fast float %588, %520
  %592 = fmul fast float %589, %521
  %593 = fmul fast float %590, %522
  %594 = fmul fast float %581, %516
  br label %595

; <label>:595                                     ; preds = %580, %515
  %596 = phi float [ %594, %580 ], [ %516, %515 ]
  %597 = phi float [ %591, %580 ], [ %520, %515 ]
  %598 = phi float [ %592, %580 ], [ %521, %515 ]
  %599 = phi float [ %593, %580 ], [ %522, %515 ]
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = add i32 %601, 0
  %603 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %602, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %604 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %603, %dx.types.Handle %39, float %196, float %197, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = shl i32 %609, 4
  %611 = and i32 %610, 32752
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = lshr i32 %609, 7
  %614 = and i32 %613, 32752
  %615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %614)  ; LegacyF16ToF32(value)
  %616 = lshr i32 %609, 22
  %617 = shl nuw nsw i32 %616, 5
  %618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %617)  ; LegacyF16ToF32(value)
  %619 = fmul fast float %612, %605
  %620 = fmul fast float %615, %606
  %621 = fmul fast float %618, %607
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %624 = fmul fast float %619, %623
  %625 = fmul fast float %620, %623
  %626 = fmul fast float %621, %623
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = lshr i32 %628, 22
  %630 = shl nuw nsw i32 %629, 5
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = fmul fast float %631, %624
  %633 = select i1 %139, float %632, float %624
  %634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  %636 = extractvalue %dx.types.ResRet.f32 %634, 1
  %637 = extractvalue %dx.types.ResRet.f32 %634, 2
  %638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %639 = extractvalue %dx.types.CBufRet.f32 %638, 1
  %640 = fmul fast float %633, %597
  %641 = fmul fast float %625, %598
  %642 = fmul fast float %626, %599
  %643 = call float @dx.op.dot3.f32(i32 55, float %640, float %641, float %642, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %644 = select i1 %139, float 0.000000e+00, float %640
  %645 = select i1 %139, float %643, float %641
  %646 = select i1 %139, float 0.000000e+00, float %642
  %647 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %238, i32 %239, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = lshr i32 %648, 18
  %650 = uitofp i32 %649 to float
  %651 = fmul fast float %650, 0x3F4C00EBA0000000
  %652 = call float @dx.op.unary.f32(i32 21, float %651)  ; Exp(value)
  %653 = fadd fast float %652, -1.000000e+00
  %654 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %655 = extractvalue %dx.types.Dimensions %654, 0
  %656 = sitofp i32 %655 to float
  %657 = extractvalue %dx.types.Dimensions %654, 1
  %658 = sitofp i32 %657 to float
  %659 = fcmp fast oge float %236, %656
  %660 = fcmp fast oge float %237, %658
  %661 = or i1 %659, %660
  %662 = select i1 %661, float 0x4197782600000000, float %653
  %663 = icmp eq i32 %155, 3
  %664 = fcmp fast ogt float %38, %662
  %665 = and i1 %262, %664
  %666 = or i1 %663, %665
  %667 = icmp eq i32 %155, 2
  %668 = fcmp fast ole float %38, %662
  %669 = and i1 %667, %668
  %670 = or i1 %669, %666
  %671 = fmul fast float %517, %31
  %672 = fmul fast float %671, %633
  %673 = fmul fast float %672, %635
  %674 = fmul fast float %673, %639
  %675 = fmul fast float %518, %31
  %676 = fmul fast float %675, %625
  %677 = fmul fast float %676, %636
  %678 = fmul fast float %677, %639
  %679 = fmul fast float %519, %31
  %680 = fmul fast float %679, %626
  %681 = fmul fast float %680, %637
  %682 = fmul fast float %681, %639
  %683 = fadd fast float %674, %644
  %684 = fadd fast float %645, %678
  %685 = fadd fast float %682, %646
  %686 = fmul fast float %683, %596
  %687 = fmul fast float %684, %596
  %688 = fmul fast float %685, %596
  %689 = and i32 %159, 1048576
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %782, label %691, !dx.controlflow.hints !64

; <label>:691                                     ; preds = %595
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 2
  %694 = extractvalue %dx.types.CBufRet.f32 %692, 3
  %695 = fmul fast float %693, %42
  %696 = fmul fast float %694, %43
  %697 = call float @dx.op.unary.f32(i32 7, float %695)  ; Saturate(value)
  %698 = call float @dx.op.unary.f32(i32 7, float %696)  ; Saturate(value)
  %699 = select i1 %670, i32 2, i32 0
  %700 = or i32 %699, 1
  %701 = uitofp i32 %700 to float
  %702 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %697, float %698, float %701, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %703 = extractvalue %dx.types.ResRet.f32 %702, 0
  %704 = extractvalue %dx.types.ResRet.f32 %702, 1
  %705 = extractvalue %dx.types.ResRet.f32 %702, 2
  %706 = extractvalue %dx.types.ResRet.f32 %702, 3
  %707 = add nuw nsw i32 %699, 2
  %708 = uitofp i32 %707 to float
  %709 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %697, float %698, float %708, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %710 = extractvalue %dx.types.ResRet.f32 %709, 0
  %711 = extractvalue %dx.types.ResRet.f32 %709, 1
  %712 = extractvalue %dx.types.ResRet.f32 %709, 2
  %713 = extractvalue %dx.types.ResRet.f32 %709, 3
  %714 = call float @dx.op.binary.f32(i32 35, float %704, float %705)  ; FMax(a,b)
  %715 = call float @dx.op.binary.f32(i32 35, float %703, float %714)  ; FMax(a,b)
  %716 = call float @dx.op.binary.f32(i32 35, float %715, float %706)  ; FMax(a,b)
  %717 = call float @dx.op.binary.f32(i32 36, float %711, float %712)  ; FMin(a,b)
  %718 = call float @dx.op.binary.f32(i32 36, float %710, float %717)  ; FMin(a,b)
  %719 = call float @dx.op.binary.f32(i32 36, float %718, float %713)  ; FMin(a,b)
  %720 = fmul fast float %716, 2.550000e+02
  %721 = fadd fast float %720, 0x3F70101020000000
  %722 = fptoui float %721 to i32
  %723 = fmul fast float %719, 2.550000e+02
  %724 = fadd fast float %723, 0x3F70101020000000
  %725 = fptoui float %724 to i32
  %726 = icmp ult i32 %722, %725
  br i1 %726, label %727, label %775

; <label>:727                                     ; preds = %691
  %728 = fcmp fast ogt float %37, 9.843750e-01
  %729 = fadd fast float %38, -4.000000e+00
  %730 = select i1 %728, float -4.000000e+00, float %729
  %731 = call float @dx.op.binary.f32(i32 35, float %730, float 0.000000e+00)  ; FMax(a,b)
  %732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %733 = extractvalue %dx.types.CBufRet.f32 %732, 0
  %734 = fadd fast float %733, %731
  %735 = extractvalue %dx.types.CBufRet.f32 %732, 2
  %736 = fmul fast float %734, %735
  %737 = call float @dx.op.unary.f32(i32 23, float %736)  ; Log(value)
  %738 = extractvalue %dx.types.CBufRet.f32 %732, 3
  %739 = fmul fast float %738, %737
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 2
  %742 = fmul fast float %739, %741
  %743 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  %744 = uitofp i32 %722 to float
  %745 = uitofp i32 %725 to float
  %746 = fadd fast float %744, 5.000000e-01
  %747 = fadd fast float %745, 5.000000e-01
  %748 = fmul fast float %741, %746
  %749 = fmul fast float %741, %747
  %750 = fadd fast float %748, 0x3F0FFB4800000000
  %751 = fadd fast float %749, 0xBF0FFB4800000000
  %752 = call float @dx.op.binary.f32(i32 35, float %743, float %750)  ; FMax(a,b)
  %753 = call float @dx.op.binary.f32(i32 36, float %752, float %751)  ; FMin(a,b)
  %754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %755 = extractvalue %dx.types.CBufRet.f32 %754, 1
  %756 = extractvalue %dx.types.CBufRet.f32 %754, 2
  %757 = extractvalue %dx.types.CBufRet.f32 %754, 0
  %758 = select i1 %670, float %757, float 0.000000e+00
  %759 = fmul fast float %755, %753
  %760 = fadd fast float %758, %759
  %761 = fadd fast float %758, %756
  %762 = fsub fast float %755, %756
  %763 = fadd fast float %762, %758
  %764 = call float @dx.op.binary.f32(i32 35, float %760, float %761)  ; FMax(a,b)
  %765 = call float @dx.op.binary.f32(i32 36, float %764, float %763)  ; FMin(a,b)
  %766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %697, float %698, float %765, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  %768 = extractvalue %dx.types.ResRet.f32 %766, 1
  %769 = extractvalue %dx.types.ResRet.f32 %766, 2
  %770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.f32 %770, 1
  %772 = fmul fast float %771, %767
  %773 = fmul fast float %771, %768
  %774 = fmul fast float %771, %769
  br label %775

; <label>:775                                     ; preds = %727, %691
  %776 = phi float [ %772, %727 ], [ 1.000000e+00, %691 ]
  %777 = phi float [ %773, %727 ], [ 1.000000e+00, %691 ]
  %778 = phi float [ %774, %727 ], [ 1.000000e+00, %691 ]
  %779 = fmul fast float %776, %686
  %780 = fmul fast float %777, %687
  %781 = fmul fast float %778, %688
  br label %782

; <label>:782                                     ; preds = %775, %595
  %783 = phi float [ %779, %775 ], [ %686, %595 ]
  %784 = phi float [ %780, %775 ], [ %687, %595 ]
  %785 = phi float [ %781, %775 ], [ %688, %595 ]
  %786 = and i32 %159, 2097152
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %792, label %788, !dx.controlflow.hints !65

; <label>:788                                     ; preds = %782
  %789 = add i32 %156, 192
  %790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %789, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  br label %795

; <label>:792                                     ; preds = %782
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 3
  br label %795

; <label>:795                                     ; preds = %792, %788
  %796 = phi float [ %791, %788 ], [ %794, %792 ]
  br i1 %665, label %797, label %881

; <label>:797                                     ; preds = %795
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 2
  %800 = extractvalue %dx.types.CBufRet.f32 %798, 3
  %801 = fmul fast float %799, %42
  %802 = fmul fast float %800, %43
  %803 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %804 = call float @dx.op.unary.f32(i32 7, float %802)  ; Saturate(value)
  %805 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %803, float %804, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = extractvalue %dx.types.ResRet.f32 %805, 1
  %808 = extractvalue %dx.types.ResRet.f32 %805, 2
  %809 = extractvalue %dx.types.ResRet.f32 %805, 3
  %810 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %803, float %804, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = extractvalue %dx.types.ResRet.f32 %810, 2
  %814 = extractvalue %dx.types.ResRet.f32 %810, 3
  %815 = call float @dx.op.binary.f32(i32 35, float %807, float %808)  ; FMax(a,b)
  %816 = call float @dx.op.binary.f32(i32 35, float %806, float %815)  ; FMax(a,b)
  %817 = call float @dx.op.binary.f32(i32 35, float %816, float %809)  ; FMax(a,b)
  %818 = call float @dx.op.binary.f32(i32 36, float %812, float %813)  ; FMin(a,b)
  %819 = call float @dx.op.binary.f32(i32 36, float %811, float %818)  ; FMin(a,b)
  %820 = call float @dx.op.binary.f32(i32 36, float %819, float %814)  ; FMin(a,b)
  %821 = fmul fast float %817, 2.550000e+02
  %822 = fadd fast float %821, 0x3F70101020000000
  %823 = fptoui float %822 to i32
  %824 = fmul fast float %820, 2.550000e+02
  %825 = fadd fast float %824, 0x3F70101020000000
  %826 = fptoui float %825 to i32
  %827 = icmp ult i32 %823, %826
  br i1 %827, label %828, label %870

; <label>:828                                     ; preds = %797
  %829 = fcmp fast ogt float %37, 9.843750e-01
  %830 = fadd fast float %38, -4.000000e+00
  %831 = select i1 %829, float -4.000000e+00, float %830
  %832 = call float @dx.op.binary.f32(i32 35, float %831, float 0.000000e+00)  ; FMax(a,b)
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 0
  %835 = fadd fast float %834, %832
  %836 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %837 = fmul fast float %835, %836
  %838 = call float @dx.op.unary.f32(i32 23, float %837)  ; Log(value)
  %839 = extractvalue %dx.types.CBufRet.f32 %833, 3
  %840 = fmul fast float %839, %838
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 2
  %843 = fmul fast float %840, %842
  %844 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  %845 = uitofp i32 %823 to float
  %846 = uitofp i32 %826 to float
  %847 = fadd fast float %845, 5.000000e-01
  %848 = fadd fast float %846, 5.000000e-01
  %849 = fmul fast float %842, %847
  %850 = fmul fast float %842, %848
  %851 = fadd fast float %849, 0x3F0FFB4800000000
  %852 = fadd fast float %850, 0xBF0FFB4800000000
  %853 = call float @dx.op.binary.f32(i32 35, float %844, float %851)  ; FMax(a,b)
  %854 = call float @dx.op.binary.f32(i32 36, float %853, float %852)  ; FMin(a,b)
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %858 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %859 = fmul fast float %856, %854
  %860 = fadd fast float %858, %859
  %861 = fadd fast float %858, %857
  %862 = fsub fast float %856, %857
  %863 = fadd fast float %862, %858
  %864 = call float @dx.op.binary.f32(i32 35, float %860, float %861)  ; FMax(a,b)
  %865 = call float @dx.op.binary.f32(i32 36, float %864, float %863)  ; FMin(a,b)
  %866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %803, float %804, float %865, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = extractvalue %dx.types.ResRet.f32 %866, 1
  %869 = extractvalue %dx.types.ResRet.f32 %866, 2
  br label %870

; <label>:870                                     ; preds = %828, %797
  %871 = phi float [ %867, %828 ], [ 1.000000e+00, %797 ]
  %872 = phi float [ %868, %828 ], [ 1.000000e+00, %797 ]
  %873 = phi float [ %869, %828 ], [ 1.000000e+00, %797 ]
  %874 = call float @dx.op.dot3.f32(i32 55, float %871, float %872, float %873, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %875 = select i1 %139, float %874, float %871
  %876 = select i1 %139, float %874, float %872
  %877 = select i1 %139, float 1.000000e+00, float %873
  %878 = fmul fast float %875, %783
  %879 = fmul fast float %876, %784
  %880 = fmul fast float %877, %785
  br label %881

; <label>:881                                     ; preds = %870, %795
  %882 = phi float [ %662, %870 ], [ %38, %795 ]
  %883 = phi float [ %878, %870 ], [ %783, %795 ]
  %884 = phi float [ %879, %870 ], [ %784, %795 ]
  %885 = phi float [ %880, %870 ], [ %785, %795 ]
  br i1 %670, label %1226, label %886

; <label>:886                                     ; preds = %881
  %887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %26, float %27, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 0
  %889 = extractvalue %dx.types.ResRet.f32 %887, 1
  %890 = extractvalue %dx.types.ResRet.f32 %887, 2
  %891 = call float @dx.op.dot3.f32(i32 55, float %888, float %889, float %890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %892 = select i1 %139, float %891, float %888
  %893 = select i1 %139, float %891, float %889
  %894 = select i1 %139, float 1.000000e+00, float %890
  %895 = fmul fast float %892, %883
  %896 = fmul fast float %893, %884
  %897 = fmul fast float %894, %885
  %898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.i32 %898, 0
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %1226, label %901, !dx.controlflow.hints !66

; <label>:901                                     ; preds = %886
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 2
  %904 = extractvalue %dx.types.CBufRet.f32 %902, 3
  %905 = fmul fast float %903, %42
  %906 = fmul fast float %904, %43
  %907 = fmul fast float %905, 2.000000e+00
  %908 = fmul fast float %906, 2.000000e+00
  %909 = fsub fast float 1.000000e+00, %907
  %910 = fsub fast float 1.000000e+00, %908
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %913 = extractvalue %dx.types.CBufRet.f32 %911, 1
  %914 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %915 = fmul fast float %909, %912
  %916 = fmul fast float %909, %913
  %917 = fmul fast float %909, %914
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 0
  %920 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %921 = extractvalue %dx.types.CBufRet.f32 %918, 2
  %922 = fmul fast float %910, %919
  %923 = fmul fast float %910, %920
  %924 = fmul fast float %910, %921
  %925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.f32 %925, 0
  %927 = extractvalue %dx.types.CBufRet.f32 %925, 1
  %928 = extractvalue %dx.types.CBufRet.f32 %925, 2
  %929 = fadd fast float %922, %926
  %930 = fadd fast float %929, %915
  %931 = fadd fast float %923, %927
  %932 = fadd fast float %931, %916
  %933 = fadd fast float %924, %928
  %934 = fadd fast float %933, %917
  %935 = fmul fast float %930, %882
  %936 = fmul fast float %932, %882
  %937 = fmul fast float %934, %882
  %938 = fmul fast float %935, %935
  %939 = fmul fast float %936, %936
  %940 = fadd fast float %938, %939
  %941 = fmul fast float %937, %937
  %942 = fadd fast float %940, %941
  %943 = call float @dx.op.unary.f32(i32 24, float %942)  ; Sqrt(value)
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 0
  %946 = fsub fast float %943, %945
  %947 = extractvalue %dx.types.CBufRet.f32 %944, 2
  %948 = fmul fast float %946, %947
  %949 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  %950 = fadd fast float %949, -5.000000e-01
  %951 = fmul fast float %950, 2.000000e+00
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 2
  %954 = call float @dx.op.binary.f32(i32 36, float %953, float %951)  ; FMin(a,b)
  %955 = fsub fast float -0.000000e+00, %953
  %956 = fcmp fast ogt float %954, %955
  br i1 %956, label %957, label %1226, !dx.controlflow.hints !67

; <label>:957                                     ; preds = %901
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 3
  %960 = fcmp fast ogt float %959, 0.000000e+00
  br i1 %960, label %961, label %1036, !dx.controlflow.hints !68

; <label>:961                                     ; preds = %957
  %962 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %963 = extractvalue %dx.types.Dimensions %962, 0
  %964 = sitofp i32 %963 to float
  %965 = extractvalue %dx.types.Dimensions %962, 1
  %966 = sitofp i32 %965 to float
  %967 = fmul fast float %905, %964
  %968 = fmul fast float %906, %966
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 1
  %971 = fsub fast float -0.000000e+00, %970
  %972 = fptoui float %971 to i32
  %973 = fptoui float %967 to i32
  %974 = fptoui float %968 to i32
  %975 = and i32 %972, 31
  %976 = lshr i32 %973, %975
  %977 = lshr i32 %974, %975
  %978 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %972, i32 %976, i32 %977, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %979 = extractvalue %dx.types.ResRet.f32 %978, 0
  %980 = fcmp fast olt float %979, -1.000000e+00
  %981 = fcmp fast ogt float %979, -1.000000e+00
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 1
  %984 = select i1 %981, float %983, float 1.000000e+00
  %985 = fadd fast float %979, 1.000000e+00
  %986 = fmul fast float %984, %985
  %987 = call float @dx.op.unary.f32(i32 6, float %986)  ; FAbs(value)
  %988 = extractvalue %dx.types.CBufRet.f32 %982, 3
  %989 = fcmp fast oge float %987, %988
  %990 = select i1 %989, float 0x4197782600000000, float %987
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %993 = extractvalue %dx.types.CBufRet.f32 %991, 1
  %994 = extractvalue %dx.types.CBufRet.f32 %991, 2
  %995 = select i1 %980, float %992, float %912
  %996 = select i1 %980, float %993, float %913
  %997 = select i1 %980, float %994, float %914
  %998 = fmul fast float %995, %909
  %999 = fmul fast float %996, %909
  %1000 = fmul fast float %997, %909
  %1001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1002 = extractvalue %dx.types.CBufRet.f32 %1001, 0
  %1003 = extractvalue %dx.types.CBufRet.f32 %1001, 1
  %1004 = extractvalue %dx.types.CBufRet.f32 %1001, 2
  %1005 = select i1 %980, float %1002, float %919
  %1006 = select i1 %980, float %1003, float %920
  %1007 = select i1 %980, float %1004, float %921
  %1008 = fmul fast float %1005, %910
  %1009 = fmul fast float %1006, %910
  %1010 = fmul fast float %1007, %910
  %1011 = fadd fast float %1008, %998
  %1012 = fadd fast float %1009, %999
  %1013 = fadd fast float %1010, %1000
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.CBufRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1018 = select i1 %980, float %1015, float %926
  %1019 = select i1 %980, float %1016, float %927
  %1020 = select i1 %980, float %1017, float %928
  %1021 = fadd fast float %1011, %1018
  %1022 = fadd fast float %1012, %1019
  %1023 = fadd fast float %1013, %1020
  %1024 = fmul fast float %1021, %990
  %1025 = fmul fast float %1022, %990
  %1026 = fmul fast float %1023, %990
  %1027 = fmul fast float %1024, %1024
  %1028 = fmul fast float %1025, %1025
  %1029 = fadd fast float %1027, %1028
  %1030 = fmul fast float %1026, %1026
  %1031 = fadd fast float %1029, %1030
  %1032 = call float @dx.op.unary.f32(i32 24, float %1031)  ; Sqrt(value)
  %1033 = fsub fast float %1032, %945
  %1034 = fmul fast float %1033, %947
  %1035 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  br label %1036

; <label>:1036                                    ; preds = %961, %957
  %1037 = phi float [ %1035, %961 ], [ 1.000000e+00, %957 ]
  %1038 = fmul fast float %954, 5.000000e-01
  %1039 = fadd fast float %1038, 5.000000e-01
  %1040 = call float @dx.op.unary.f32(i32 22, float %1039)  ; Frc(value)
  %1041 = call float @dx.op.unary.f32(i32 27, float %1040)  ; Round_ni(value)
  %1042 = call float @dx.op.unary.f32(i32 22, float %1040)  ; Frc(value)
  %1043 = fmul fast float %1042, 2.000000e+00
  %1044 = fadd fast float %1043, -1.000000e+00
  %1045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %905, float %906, float %1041, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.ResRet.f32 %1045, 2
  %1049 = extractvalue %dx.types.ResRet.f32 %1045, 3
  %1050 = fadd fast float %1046, -5.000000e-01
  %1051 = fadd fast float %1048, -5.000000e-01
  %1052 = fmul fast float %1050, 0xBFD5555560000000
  %1053 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1051, float %1052)  ; FMad(a,b,c)
  %1054 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1047, float 0.000000e+00)  ; FMad(a,b,c)
  %1055 = fadd fast float %1054, %1049
  %1056 = fmul fast float %1050, -7.500000e-01
  %1057 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1051, float %1056)  ; FMad(a,b,c)
  %1058 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1047, float 0.000000e+00)  ; FMad(a,b,c)
  %1059 = fadd fast float %1058, %1049
  %1060 = call float @dx.op.binary.f32(i32 35, float %1053, float -1.000000e+00)  ; FMax(a,b)
  %1061 = call float @dx.op.binary.f32(i32 35, float %1055, float -1.000000e+00)  ; FMax(a,b)
  %1062 = call float @dx.op.binary.f32(i32 35, float %1057, float -1.000000e+00)  ; FMax(a,b)
  %1063 = call float @dx.op.binary.f32(i32 35, float %1059, float -1.000000e+00)  ; FMax(a,b)
  %1064 = call float @dx.op.binary.f32(i32 36, float %1060, float 1.000000e+00)  ; FMin(a,b)
  %1065 = call float @dx.op.binary.f32(i32 36, float %1061, float 1.000000e+00)  ; FMin(a,b)
  %1066 = call float @dx.op.binary.f32(i32 36, float %1062, float 1.000000e+00)  ; FMin(a,b)
  %1067 = call float @dx.op.binary.f32(i32 36, float %1063, float 1.000000e+00)  ; FMin(a,b)
  %1068 = fcmp fast olt float %1064, 0x3FEFFF8020000000
  br i1 %1068, label %1069, label %1184, !dx.controlflow.hints !69

; <label>:1069                                    ; preds = %1036
  %1070 = extractvalue %dx.types.CBufRet.f32 %952, 3
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.CBufRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.CBufRet.f32 %1071, 2
  %1075 = extractvalue %dx.types.CBufRet.f32 %1071, 3
  %1076 = fsub fast float %1072, %1064
  %1077 = fsub fast float %1073, %1065
  %1078 = fsub fast float %1074, %1066
  %1079 = fsub fast float %1075, %1067
  %1080 = fmul fast float %1076, %1070
  %1081 = fmul fast float %1077, %1070
  %1082 = fmul fast float %1078, %1070
  %1083 = fmul fast float %1079, %1070
  %1084 = fadd fast float %1080, %1064
  %1085 = fadd fast float %1081, %1065
  %1086 = fsub fast float -0.000000e+00, %1085
  %1087 = fadd fast float %1082, %1066
  %1088 = fadd fast float %1083, %1067
  %1089 = fmul fast float %1084, %1084
  %1090 = fsub fast float %1085, %1089
  %1091 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1090)  ; FMax(a,b)
  %1092 = fdiv fast float 1.000000e+00, %1091
  %1093 = fmul fast float %1085, %1084
  %1094 = fsub fast float %1087, %1093
  %1095 = fsub fast float %1044, %1084
  %1096 = fmul fast float %1044, %1044
  %1097 = fsub fast float %1096, %1085
  %1098 = fmul fast float %1095, %1092
  %1099 = fmul fast float %1098, %1094
  %1100 = fsub fast float %1097, %1099
  %1101 = fmul fast float %1085, %1085
  %1102 = fsub fast float %1088, %1101
  %1103 = fmul fast float %1094, %1094
  %1104 = fmul fast float %1103, %1092
  %1105 = fsub fast float %1102, %1104
  %1106 = fdiv fast float %1100, %1105
  %1107 = fmul fast float %1094, %1106
  %1108 = fsub fast float %1095, %1107
  %1109 = fmul fast float %1108, %1092
  %1110 = fmul fast float %1109, %1084
  %1111 = fsub fast float 1.000000e+00, %1110
  %1112 = fmul fast float %1085, %1106
  %1113 = fsub fast float %1111, %1112
  %1114 = fmul fast float %1109, %1109
  %1115 = fmul fast float %1106, 4.000000e+00
  %1116 = fmul fast float %1115, %1113
  %1117 = fsub fast float %1114, %1116
  %1118 = call float @dx.op.unary.f32(i32 24, float %1117)  ; Sqrt(value)
  %1119 = fcmp fast oge float %1109, 0.000000e+00
  %1120 = fsub fast float -0.000000e+00, %1118
  %1121 = select i1 %1119, float %1120, float %1118
  %1122 = fsub fast float %1121, %1109
  %1123 = fdiv fast float %1122, %1106
  %1124 = fdiv fast float %1113, %1122
  %1125 = fmul fast float %1123, 5.000000e-01
  %1126 = fmul fast float %1124, 2.000000e+00
  %1127 = select i1 %1119, float %1125, float %1126
  %1128 = select i1 %1119, float %1126, float %1125
  %1129 = call float @dx.op.binary.f32(i32 35, float %1127, float %1128)  ; FMax(a,b)
  %1130 = call float @dx.op.binary.f32(i32 36, float %1127, float %1128)  ; FMin(a,b)
  %1131 = fcmp fast ogt float %1044, %1130
  br i1 %1131, label %1132, label %1142

; <label>:1132                                    ; preds = %1069
  %1133 = fsub fast float %1044, %1130
  %1134 = fsub fast float %1129, %1130
  %1135 = fmul fast float %1133, %1134
  %1136 = fmul fast float %1129, %1044
  %1137 = fadd fast float %1129, %1044
  %1138 = fmul fast float %1137, %1084
  %1139 = fadd fast float %1136, %1085
  %1140 = fsub fast float %1139, %1138
  %1141 = fdiv fast float %1140, %1135
  br label %1142

; <label>:1142                                    ; preds = %1132, %1069
  %1143 = phi float [ %1141, %1132 ], [ 0.000000e+00, %1069 ]
  %1144 = fcmp fast ogt float %1044, %1129
  %1145 = fsub fast float %1044, %1129
  br i1 %1144, label %1146, label %1156

; <label>:1146                                    ; preds = %1142
  %1147 = fsub fast float %1129, %1130
  %1148 = fmul fast float %1147, %1145
  %1149 = fmul fast float %1130, %1044
  %1150 = fadd fast float %1130, %1044
  %1151 = fmul fast float %1150, %1084
  %1152 = fsub fast float %1086, %1149
  %1153 = fadd fast float %1152, %1151
  %1154 = fdiv fast float %1153, %1148
  %1155 = fadd fast float %1154, %1143
  br label %1156

; <label>:1156                                    ; preds = %1146, %1142
  %1157 = phi float [ %1155, %1146 ], [ %1143, %1142 ]
  %1158 = fsub fast float %1044, %1130
  %1159 = fmul fast float %1158, %1145
  %1160 = fmul fast float %1130, %1129
  %1161 = fadd fast float %1130, %1129
  %1162 = fmul fast float %1161, %1084
  %1163 = fadd fast float %1160, %1085
  %1164 = fsub fast float %1163, %1162
  %1165 = fdiv fast float %1164, %1159
  %1166 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  %1167 = fcmp fast oeq float %796, 0.000000e+00
  %1168 = extractvalue %dx.types.CBufRet.f32 %952, 0
  %1169 = fcmp fast oeq float %1168, 0.000000e+00
  %1170 = or i1 %1167, %1169
  %1171 = fmul fast float %1168, 2.000000e+00
  %1172 = fadd fast float %953, %954
  %1173 = fdiv fast float %1172, %1171
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = fmul fast float %1174, 2.000000e+00
  %1176 = fsub fast float 3.000000e+00, %1175
  %1177 = fmul fast float %1174, %1174
  %1178 = fmul fast float %1177, %1176
  %1179 = select i1 %1170, float 1.000000e+00, float %1178
  %1180 = fmul fast float %1165, %796
  %1181 = fadd fast float %1166, %1180
  %1182 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  %1183 = fmul fast float %1179, %1182
  br label %1184

; <label>:1184                                    ; preds = %1156, %1036
  %1185 = phi float [ %1183, %1156 ], [ 0.000000e+00, %1036 ]
  %1186 = fsub fast float 1.000000e+00, %1185
  %1187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %905, float %906, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 0
  %1189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.i32 %1189, 2
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1197, label %1192

; <label>:1192                                    ; preds = %1184
  %1193 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  %1194 = fadd fast float %1188, -1.000000e+00
  %1195 = fmul fast float %1193, %1194
  %1196 = fadd fast float %1195, 1.000000e+00
  br label %1197

; <label>:1197                                    ; preds = %1192, %1184
  %1198 = phi float [ %1196, %1192 ], [ %1186, %1184 ]
  br i1 %960, label %1199, label %1217

; <label>:1199                                    ; preds = %1197
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1200, 1
  %1202 = fsub fast float %1037, %1201
  %1203 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1204 = fsub fast float %1037, %959
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = fsub fast float %1203, %1205
  %1207 = fsub fast float %1039, %1205
  %1208 = fdiv fast float %1207, %1206
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1210 = fmul fast float %1209, 2.000000e+00
  %1211 = fsub fast float 3.000000e+00, %1210
  %1212 = fsub fast float %1188, %1198
  %1213 = fmul fast float %1209, %1209
  %1214 = fmul fast float %1213, %1212
  %1215 = fmul fast float %1214, %1211
  %1216 = fadd fast float %1215, %1198
  br label %1217

; <label>:1217                                    ; preds = %1199, %1197
  %1218 = phi float [ %1216, %1199 ], [ %1198, %1197 ]
  %1219 = call float @dx.op.binary.f32(i32 35, float %1188, float %1218)  ; FMax(a,b)
  %1220 = call float @dx.op.dot3.f32(i32 55, float %1219, float %1219, float %1219, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1221 = select i1 %139, float %1220, float %1219
  %1222 = select i1 %139, float 1.000000e+00, float %1219
  %1223 = fmul fast float %1221, %895
  %1224 = fmul fast float %1221, %896
  %1225 = fmul fast float %1222, %897
  br label %1226

; <label>:1226                                    ; preds = %1217, %901, %886, %881
  %1227 = phi float [ %883, %881 ], [ %895, %886 ], [ %1223, %1217 ], [ %895, %901 ]
  %1228 = phi float [ %884, %881 ], [ %896, %886 ], [ %1224, %1217 ], [ %896, %901 ]
  %1229 = phi float [ %885, %881 ], [ %897, %886 ], [ %1225, %1217 ], [ %897, %901 ]
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 2
  %1232 = extractvalue %dx.types.CBufRet.f32 %1230, 3
  %1233 = fmul fast float %1231, %42
  %1234 = fmul fast float %1232, %43
  %1235 = call float @dx.op.unary.f32(i32 7, float %1233)  ; Saturate(value)
  %1236 = call float @dx.op.unary.f32(i32 7, float %1234)  ; Saturate(value)
  %1237 = select i1 %670, i32 2, i32 0
  %1238 = or i32 %1237, 1
  %1239 = uitofp i32 %1238 to float
  %1240 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1235, float %1236, float %1239, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  %1242 = extractvalue %dx.types.ResRet.f32 %1240, 1
  %1243 = extractvalue %dx.types.ResRet.f32 %1240, 2
  %1244 = extractvalue %dx.types.ResRet.f32 %1240, 3
  %1245 = add nuw nsw i32 %1237, 2
  %1246 = uitofp i32 %1245 to float
  %1247 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1235, float %1236, float %1246, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.ResRet.f32 %1247, 2
  %1251 = extractvalue %dx.types.ResRet.f32 %1247, 3
  %1252 = call float @dx.op.binary.f32(i32 35, float %1242, float %1243)  ; FMax(a,b)
  %1253 = call float @dx.op.binary.f32(i32 35, float %1241, float %1252)  ; FMax(a,b)
  %1254 = call float @dx.op.binary.f32(i32 35, float %1253, float %1244)  ; FMax(a,b)
  %1255 = call float @dx.op.binary.f32(i32 36, float %1249, float %1250)  ; FMin(a,b)
  %1256 = call float @dx.op.binary.f32(i32 36, float %1248, float %1255)  ; FMin(a,b)
  %1257 = call float @dx.op.binary.f32(i32 36, float %1256, float %1251)  ; FMin(a,b)
  %1258 = fmul fast float %1254, 2.550000e+02
  %1259 = fadd fast float %1258, 0x3F70101020000000
  %1260 = fptoui float %1259 to i32
  %1261 = fmul fast float %1257, 2.550000e+02
  %1262 = fadd fast float %1261, 0x3F70101020000000
  %1263 = fptoui float %1262 to i32
  %1264 = icmp ult i32 %1260, %1263
  br i1 %1264, label %1265, label %1308

; <label>:1265                                    ; preds = %1226
  %1266 = fcmp fast ogt float %37, 9.843750e-01
  %1267 = fadd fast float %882, -4.000000e+00
  %1268 = select i1 %1266, float -4.000000e+00, float %1267
  %1269 = call float @dx.op.binary.f32(i32 35, float %1268, float 0.000000e+00)  ; FMax(a,b)
  %1270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1271 = extractvalue %dx.types.CBufRet.f32 %1270, 0
  %1272 = fadd fast float %1271, %1269
  %1273 = extractvalue %dx.types.CBufRet.f32 %1270, 2
  %1274 = fmul fast float %1272, %1273
  %1275 = call float @dx.op.unary.f32(i32 23, float %1274)  ; Log(value)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1270, 3
  %1277 = fmul fast float %1276, %1275
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 2
  %1280 = fmul fast float %1277, %1279
  %1281 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1282 = uitofp i32 %1260 to float
  %1283 = uitofp i32 %1263 to float
  %1284 = fadd fast float %1282, 5.000000e-01
  %1285 = fadd fast float %1283, 5.000000e-01
  %1286 = fmul fast float %1279, %1284
  %1287 = fmul fast float %1279, %1285
  %1288 = fadd fast float %1286, 0x3F0FFB4800000000
  %1289 = fadd fast float %1287, 0xBF0FFB4800000000
  %1290 = call float @dx.op.binary.f32(i32 35, float %1281, float %1288)  ; FMax(a,b)
  %1291 = call float @dx.op.binary.f32(i32 36, float %1290, float %1289)  ; FMin(a,b)
  %1292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1293 = extractvalue %dx.types.CBufRet.f32 %1292, 1
  %1294 = extractvalue %dx.types.CBufRet.f32 %1292, 2
  %1295 = extractvalue %dx.types.CBufRet.f32 %1292, 0
  %1296 = select i1 %670, float %1295, float 0.000000e+00
  %1297 = fmul fast float %1293, %1291
  %1298 = fadd fast float %1296, %1297
  %1299 = fadd fast float %1296, %1294
  %1300 = fsub fast float %1293, %1294
  %1301 = fadd fast float %1300, %1296
  %1302 = call float @dx.op.binary.f32(i32 35, float %1298, float %1299)  ; FMax(a,b)
  %1303 = call float @dx.op.binary.f32(i32 36, float %1302, float %1301)  ; FMin(a,b)
  %1304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1235, float %1236, float %1303, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = extractvalue %dx.types.ResRet.f32 %1304, 1
  %1307 = extractvalue %dx.types.ResRet.f32 %1304, 2
  br label %1308

; <label>:1308                                    ; preds = %1265, %1226
  %1309 = phi float [ %1305, %1265 ], [ 1.000000e+00, %1226 ]
  %1310 = phi float [ %1306, %1265 ], [ 1.000000e+00, %1226 ]
  %1311 = phi float [ %1307, %1265 ], [ 1.000000e+00, %1226 ]
  %1312 = call float @dx.op.dot3.f32(i32 55, float %1309, float %1310, float %1311, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1313 = select i1 %139, float %1312, float %1309
  %1314 = select i1 %139, float %1312, float %1310
  %1315 = fmul fast float %1313, %1227
  %1316 = fmul fast float %1314, %1228
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  br i1 %139, label %1319, label %1322

; <label>:1319                                    ; preds = %1308
  %1320 = fadd fast float %1315, %1316
  %1321 = fmul fast float %1318, %1320
  br label %1332

; <label>:1322                                    ; preds = %1308
  %1323 = fmul fast float %1311, %1229
  %1324 = fmul fast float %1318, %1315
  %1325 = fmul fast float %1318, %1316
  %1326 = fmul fast float %1323, %1318
  %1327 = call float @dx.op.binary.f32(i32 35, float %1325, float %1326)  ; FMax(a,b)
  %1328 = call float @dx.op.binary.f32(i32 35, float %1324, float %1327)  ; FMax(a,b)
  %1329 = call float @dx.op.binary.f32(i32 35, float %1328, float 0.000000e+00)  ; FMax(a,b)
  %1330 = fcmp fast ugt float %1329, 0x3F10000000000000
  br i1 %1330, label %1332, label %1331

; <label>:1331                                    ; preds = %1322
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1332

; <label>:1332                                    ; preds = %1331, %1322, %1319
  %1333 = phi float [ %1321, %1319 ], [ %1324, %1331 ], [ %1324, %1322 ]
  %1334 = phi float [ 0.000000e+00, %1319 ], [ %1325, %1331 ], [ %1325, %1322 ]
  %1335 = phi float [ 0.000000e+00, %1319 ], [ %1326, %1331 ], [ %1326, %1322 ]
  %1336 = fadd fast float %536, 0x3FE3C6EF40000000
  %1337 = call float @dx.op.unary.f32(i32 22, float %1336)  ; Frc(value)
  %1338 = call float @dx.op.unary.f32(i32 23, float %1333)  ; Log(value)
  %1339 = fadd fast float %1338, -7.000000e+00
  %1340 = call float @dx.op.unary.f32(i32 21, float %1339)  ; Exp(value)
  %1341 = fmul fast float %1337, 2.000000e+00
  %1342 = fadd fast float %1341, -1.000000e+00
  %1343 = fmul fast float %1340, %1342
  %1344 = fcmp fast ogt float %1333, 0.000000e+00
  %1345 = select i1 %1344, float %1343, float 0.000000e+00
  %1346 = fadd fast float %1345, %1333
  %1347 = fadd fast float %536, 0x3FF3C6EF40000000
  %1348 = call float @dx.op.unary.f32(i32 22, float %1347)  ; Frc(value)
  %1349 = call float @dx.op.unary.f32(i32 23, float %1334)  ; Log(value)
  %1350 = fadd fast float %1349, -7.000000e+00
  %1351 = call float @dx.op.unary.f32(i32 21, float %1350)  ; Exp(value)
  %1352 = fmul fast float %1348, 2.000000e+00
  %1353 = fadd fast float %1352, -1.000000e+00
  %1354 = fmul fast float %1351, %1353
  %1355 = fcmp fast ogt float %1334, 0.000000e+00
  %1356 = select i1 %1355, float %1354, float 0.000000e+00
  %1357 = fadd fast float %1356, %1334
  %1358 = fadd fast float %536, 0x3FFDAA66E0000000
  %1359 = call float @dx.op.unary.f32(i32 22, float %1358)  ; Frc(value)
  %1360 = call float @dx.op.unary.f32(i32 23, float %1335)  ; Log(value)
  %1361 = fadd fast float %1360, -6.000000e+00
  %1362 = call float @dx.op.unary.f32(i32 21, float %1361)  ; Exp(value)
  %1363 = fmul fast float %1359, 2.000000e+00
  %1364 = fadd fast float %1363, -1.000000e+00
  %1365 = fmul fast float %1362, %1364
  %1366 = fcmp fast ogt float %1335, 0.000000e+00
  %1367 = select i1 %1366, float %1365, float 0.000000e+00
  %1368 = fadd fast float %1367, %1335
  %1369 = select i1 %139, float %1334, float %1357
  %1370 = select i1 %139, float %1335, float %1368
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1371 = call float @dx.op.binary.f32(i32 36, float %1346, float 3.225500e+04)  ; FMin(a,b)
  %1372 = call float @dx.op.binary.f32(i32 36, float %1369, float 3.225500e+04)  ; FMin(a,b)
  %1373 = call float @dx.op.binary.f32(i32 36, float %1370, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1371)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1372)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1373)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!33}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !20}
!20 = !{i32 0, i32 14}
!21 = !{i32 12, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!22 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i32 0, !7}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!24 = !{i32 15, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[30 x i32] [i32 28, i32 4, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !57}
!35 = !{!36, !55, null}
!36 = !{!37, !40, !42, !44, !46, !48, !50, !52, !54}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 8}
!42 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !45, i8 2, i32 1, i8 4, i32 3, i8 0, !39}
!45 = !{i32 3}
!46 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !47, i8 3, i32 1, i8 2, i32 4, i8 0, !43}
!47 = !{i32 5}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 4, i32 5, i8 0, !39}
!49 = !{i32 8}
!50 = !{i32 6, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 6, i8 0, !51}
!51 = !{i32 3, i32 1}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !53, i8 1, i32 1, i8 1, i32 6, i8 3, null}
!53 = !{i32 4}
!54 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!57 = !{i32 0, i64 24}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}

