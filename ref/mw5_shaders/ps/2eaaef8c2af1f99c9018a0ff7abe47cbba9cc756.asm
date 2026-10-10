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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 834cc031723e6d1610656e6210d8a14b
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
; Number of inputs: 28, outputs: 8
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
  %80 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %81 = extractvalue %dx.types.CBufRet.i32 %80, 3
  %82 = and i32 %81, 3
  %83 = icmp ne i32 %82, 0
  %84 = and i32 %81, 4
  %85 = icmp ne i32 %84, 0
  %86 = and i1 %83, %85
  br i1 %86, label %87, label %96

; <label>:87                                      ; preds = %0
  %88 = fmul fast float %46, %43
  %89 = fmul fast float %45, %42
  %90 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %89, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = fsub fast float 1.000000e+00, %91
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = fcmp fast olt float %92, %94
  br label %99

; <label>:96                                      ; preds = %0
  %97 = icmp eq i32 %84, 0
  %98 = and i1 %83, %97
  br label %99

; <label>:99                                      ; preds = %96, %87
  %100 = phi i1 [ %95, %87 ], [ %98, %96 ]
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %104 = fmul fast float %102, %42
  %105 = fmul fast float %103, %43
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = and i32 %107, 114688
  %109 = icmp ne i32 %108, 0
  %110 = select i1 %109, float %104, float 0.000000e+00
  %111 = select i1 %109, float %105, float 0.000000e+00
  %112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %110, float %111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = fmul fast float %113, 2.550000e+02
  %115 = fptoui float %114 to i32
  %116 = select i1 %109, i32 %115, i32 0
  %117 = mul i32 %21, 208
  %118 = add i32 %117, 188
  %119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %120 = extractvalue %dx.types.ResRet.i32 %119, 0
  %121 = and i32 %81, 114688
  %122 = and i32 %81, 8
  %123 = icmp ne i32 %122, 0
  %124 = or i1 %100, %123
  %125 = select i1 %124, i32 %121, i32 16384
  %126 = and i32 %125, %120
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

; <label>:128                                     ; preds = %99
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %129

; <label>:129                                     ; preds = %128, %99
  %130 = and i32 %120, 512
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %156, label %132

; <label>:132                                     ; preds = %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %136 = fmul fast float %134, %42
  %137 = fmul fast float %135, %43
  %138 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %140 = fdiv fast float %138, %139
  %141 = fcmp fast ogt float %140, 0x3FFC71C720000000
  br i1 %141, label %142, label %148

; <label>:142                                     ; preds = %132
  %143 = fdiv fast float 0x3FFC71C720000000, %140
  %144 = fmul fast float %143, %137
  %145 = fsub fast float 1.000000e+00, %143
  %146 = fmul fast float %145, 5.000000e-01
  %147 = fadd fast float %146, %144
  br label %156

; <label>:148                                     ; preds = %132
  %149 = fcmp fast olt float %140, 0x3FFC71C720000000
  br i1 %149, label %150, label %156

; <label>:150                                     ; preds = %148
  %151 = fmul fast float %136, 5.625000e-01
  %152 = fmul fast float %151, %140
  %153 = fmul fast float %140, 2.812500e-01
  %154 = fsub fast float 5.000000e-01, %153
  %155 = fadd fast float %154, %152
  br label %156

; <label>:156                                     ; preds = %150, %148, %142, %129
  %157 = phi float [ %32, %129 ], [ %136, %142 ], [ %155, %150 ], [ %136, %148 ]
  %158 = phi float [ %33, %129 ], [ %147, %142 ], [ %137, %150 ], [ %137, %148 ]
  %159 = and i32 %120, 16
  %160 = icmp ne i32 %159, 0
  %161 = select i1 %160, float 1.000000e+00, float %34
  %162 = icmp eq i32 %159, 0
  br i1 %162, label %182, label %163, !dx.controlflow.hints !60

; <label>:163                                     ; preds = %156
  %164 = add i32 %117, 64
  %165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = fadd fast float %166, 1.000000e+00
  %168 = fmul fast float %167, %34
  %169 = fsub fast float %168, %166
  %170 = fsub fast float %167, %169
  %171 = call float @dx.op.unary.f32(i32 7, float %170)  ; Saturate(value)
  %172 = fsub fast float 1.000000e+00, %168
  %173 = call float @dx.op.unary.f32(i32 7, float %172)  ; Saturate(value)
  %174 = fsub fast float %171, %173
  %175 = fsub fast float %161, %173
  %176 = fdiv fast float %175, %174
  %177 = call float @dx.op.unary.f32(i32 7, float %176)  ; Saturate(value)
  %178 = fmul fast float %177, 2.000000e+00
  %179 = fsub fast float 3.000000e+00, %178
  %180 = fmul fast float %177, %177
  %181 = fmul fast float %180, %179
  br label %182

; <label>:182                                     ; preds = %163, %156
  %183 = phi float [ %181, %163 ], [ %161, %156 ]
  %184 = fcmp fast ogt float %183, 0.000000e+00
  br i1 %184, label %186, label %185

; <label>:185                                     ; preds = %182
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %186

; <label>:186                                     ; preds = %185, %182
  %187 = call float @dx.op.unary.f32(i32 7, float %183)  ; Saturate(value)
  %188 = fmul fast float %42, 5.000000e-01
  %189 = fmul fast float %43, 5.000000e-01
  %190 = fptosi float %188 to i32
  %191 = fptosi float %189 to i32
  %192 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %190, i32 %191, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = lshr i32 %193, 18
  %195 = uitofp i32 %194 to float
  %196 = fmul fast float %195, 0x3F4C00EBA0000000
  %197 = call float @dx.op.unary.f32(i32 21, float %196)  ; Exp(value)
  %198 = fadd fast float %197, -1.000000e+00
  %199 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %200 = extractvalue %dx.types.Dimensions %199, 0
  %201 = sitofp i32 %200 to float
  %202 = extractvalue %dx.types.Dimensions %199, 1
  %203 = sitofp i32 %202 to float
  %204 = fcmp fast oge float %188, %201
  %205 = fcmp fast oge float %189, %203
  %206 = or i1 %204, %205
  %207 = select i1 %206, float 0x4197782600000000, float %198
  %208 = fsub fast float %207, %38
  %209 = fcmp fast ogt float %208, 0.000000e+00
  %210 = and i32 %116, -2
  %211 = icmp eq i32 %210, 2
  %212 = and i1 %211, %209
  %213 = xor i1 %209, true
  %214 = icmp eq i32 %116, 1
  %215 = and i1 %214, %213
  %216 = or i1 %212, %215
  %217 = and i32 %120, 262144
  %218 = icmp ne i32 %217, 0
  %219 = and i1 %218, %216
  %220 = xor i1 %216, true
  %221 = and i32 %120, 131072
  %222 = icmp ne i32 %221, 0
  %223 = and i1 %222, %220
  %224 = or i1 %219, %223
  br i1 %224, label %225, label %226

; <label>:225                                     ; preds = %186
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %226

; <label>:226                                     ; preds = %225, %186
  %227 = and i32 %120, 32
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %467, label %229, !dx.controlflow.hints !61

; <label>:229                                     ; preds = %226
  %230 = add i32 %117, 80
  %231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.f32 %231, 0
  %233 = extractvalue %dx.types.ResRet.f32 %231, 1
  %234 = extractvalue %dx.types.ResRet.f32 %231, 2
  %235 = extractvalue %dx.types.ResRet.f32 %231, 3
  %236 = add i32 %117, 96
  %237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = extractvalue %dx.types.ResRet.f32 %237, 1
  %240 = extractvalue %dx.types.ResRet.f32 %237, 2
  %241 = add i32 %117, 112
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = extractvalue %dx.types.ResRet.f32 %242, 1
  %245 = extractvalue %dx.types.ResRet.f32 %242, 2
  %246 = extractvalue %dx.types.ResRet.f32 %242, 3
  %247 = add i32 %117, 128
  %248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = extractvalue %dx.types.ResRet.f32 %248, 1
  %251 = extractvalue %dx.types.ResRet.f32 %248, 2
  %252 = extractvalue %dx.types.ResRet.f32 %248, 3
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %118, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 4096
  %256 = icmp ne i32 %255, 0
  %257 = fcmp fast une float %240, 0.000000e+00
  %258 = and i32 %254, 64
  %259 = icmp ne i32 %258, 0
  %260 = and i32 %254, 128
  %261 = icmp eq i32 %260, 0
  %262 = and i32 %254, 2048
  %263 = icmp eq i32 %262, 0
  %264 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %265 = extractvalue %dx.types.Dimensions %264, 0
  %266 = sitofp i32 %265 to float
  %267 = extractvalue %dx.types.Dimensions %264, 1
  %268 = sitofp i32 %267 to float
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %271 = extractvalue %dx.types.CBufRet.f32 %269, 3
  %272 = fmul fast float %270, %42
  %273 = fmul fast float %271, %43
  %274 = fmul fast float %272, %266
  %275 = fmul fast float %273, %268
  %276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %277 = extractvalue %dx.types.CBufRet.f32 %276, 1
  %278 = fsub fast float -0.000000e+00, %277
  %279 = fptoui float %278 to i32
  %280 = fptoui float %274 to i32
  %281 = fptoui float %275 to i32
  %282 = and i32 %279, 31
  %283 = lshr i32 %280, %282
  %284 = lshr i32 %281, %282
  %285 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %279, i32 %283, i32 %284, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = fcmp fast ogt float %286, -1.000000e+00
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 1
  %290 = select i1 %287, float %289, float 1.000000e+00
  %291 = fadd fast float %286, 1.000000e+00
  %292 = fmul fast float %290, %291
  %293 = call float @dx.op.unary.f32(i32 6, float %292)  ; FAbs(value)
  %294 = extractvalue %dx.types.CBufRet.f32 %288, 3
  %295 = fcmp fast oge float %293, %294
  %296 = select i1 %295, float 0x4197782600000000, float %293
  br i1 %263, label %367, label %297, !dx.controlflow.hints !62

; <label>:297                                     ; preds = %229
  %298 = fmul fast float %47, %270
  %299 = fmul fast float %49, %271
  %300 = fsub fast float 1.000000e+00, %298
  %301 = fsub fast float 1.000000e+00, %299
  %302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %303 = extractvalue %dx.types.CBufRet.f32 %302, 0
  %304 = extractvalue %dx.types.CBufRet.f32 %302, 1
  %305 = extractvalue %dx.types.CBufRet.f32 %302, 2
  %306 = fmul fast float %300, %303
  %307 = fmul fast float %300, %304
  %308 = fmul fast float %300, %305
  %309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %310 = extractvalue %dx.types.CBufRet.f32 %309, 0
  %311 = extractvalue %dx.types.CBufRet.f32 %309, 1
  %312 = extractvalue %dx.types.CBufRet.f32 %309, 2
  %313 = fmul fast float %301, %310
  %314 = fmul fast float %301, %311
  %315 = fmul fast float %301, %312
  %316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.f32 %316, 0
  %318 = extractvalue %dx.types.CBufRet.f32 %316, 1
  %319 = extractvalue %dx.types.CBufRet.f32 %316, 2
  %320 = fadd fast float %313, %317
  %321 = fadd fast float %320, %306
  %322 = fadd fast float %314, %318
  %323 = fadd fast float %322, %307
  %324 = fadd fast float %315, %319
  %325 = fadd fast float %324, %308
  %326 = fmul fast float %321, %296
  %327 = fmul fast float %323, %296
  %328 = fmul fast float %325, %296
  %329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.f32 %329, 0
  %331 = extractvalue %dx.types.CBufRet.f32 %329, 1
  %332 = extractvalue %dx.types.CBufRet.f32 %329, 2
  %333 = fadd fast float %326, %330
  %334 = fadd fast float %327, %331
  %335 = fadd fast float %328, %332
  %336 = call float @dx.op.dot3.f32(i32 55, float %333, float %334, float %335, float %333, float %334, float %335)  ; Dot3(ax,ay,az,bx,by,bz)
  %337 = fsub fast float 1.000000e+00, %336
  %338 = fcmp fast olt float %337, %239
  %339 = fcmp fast ogt float %337, %238
  %340 = or i1 %338, %339
  %341 = select i1 %340, float 0.000000e+00, float %337
  %342 = fsub fast float %238, %239
  %343 = fsub fast float %341, %239
  %344 = fdiv fast float %343, %342
  %345 = call float @dx.op.unary.f32(i32 7, float %344)  ; Saturate(value)
  %346 = fmul fast float %345, 2.000000e+00
  %347 = fsub fast float 3.000000e+00, %346
  %348 = fmul fast float %345, %345
  %349 = fmul fast float %348, %347
  %350 = fsub fast float %246, %252
  %351 = fmul fast float %349, %350
  %352 = fadd fast float %351, %252
  %353 = fmul fast float %243, %22
  %354 = fmul fast float %244, %23
  %355 = fmul fast float %245, %24
  %356 = fsub fast float %353, %249
  %357 = fsub fast float %354, %250
  %358 = fsub fast float %355, %251
  %359 = fmul fast float %349, %356
  %360 = fmul fast float %349, %357
  %361 = fmul fast float %349, %358
  %362 = fadd fast float %359, %249
  %363 = fadd fast float %360, %250
  %364 = fadd fast float %361, %251
  %365 = fmul fast float %232, %232
  %366 = fmul fast float %365, %341
  br label %458

; <label>:367                                     ; preds = %229
  %368 = and i32 %254, 256
  %369 = icmp eq i32 %368, 0
  %370 = fsub fast float %296, %38
  br i1 %369, label %419, label %371

; <label>:371                                     ; preds = %367
  %372 = fadd fast float %238, %38
  %373 = fcmp fast olt float %296, %38
  %374 = fcmp fast ogt float %296, %372
  %375 = or i1 %373, %374
  %376 = select i1 %375, float 0.000000e+00, float %370
  %377 = call float @dx.op.unary.f32(i32 83, float %296)  ; DerivCoarseX(value)
  %378 = call float @dx.op.unary.f32(i32 84, float %296)  ; DerivCoarseY(value)
  %379 = fmul fast float %377, %377
  %380 = fmul fast float %378, %378
  %381 = fadd fast float %380, %379
  %382 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %383 = extractvalue %dx.types.CBufRet.f32 %276, 2
  %384 = fmul fast float %383, %382
  %385 = call float @dx.op.unary.f32(i32 7, float %384)  ; Saturate(value)
  %386 = fmul fast float %385, %239
  %387 = fdiv fast float %370, %386
  %388 = call float @dx.op.unary.f32(i32 7, float %387)  ; Saturate(value)
  %389 = fmul fast float %388, 2.000000e+00
  %390 = fsub fast float 3.000000e+00, %389
  %391 = fmul fast float %388, %388
  %392 = fmul fast float %391, %390
  %393 = fsub fast float %296, %372
  %394 = fadd fast float %393, %386
  %395 = fdiv fast float %394, %386
  %396 = call float @dx.op.unary.f32(i32 7, float %395)  ; Saturate(value)
  %397 = fmul fast float %396, 2.000000e+00
  %398 = fsub fast float 3.000000e+00, %397
  %399 = fmul fast float %396, %396
  %400 = fmul fast float %399, %398
  %401 = fsub fast float %392, %400
  %402 = fsub fast float %246, %252
  %403 = fmul fast float %401, %402
  %404 = fadd fast float %403, %252
  %405 = fmul fast float %243, %22
  %406 = fmul fast float %244, %23
  %407 = fmul fast float %245, %24
  %408 = fsub fast float %405, %249
  %409 = fsub fast float %406, %250
  %410 = fsub fast float %407, %251
  %411 = fmul fast float %401, %408
  %412 = fmul fast float %401, %409
  %413 = fmul fast float %401, %410
  %414 = fadd fast float %411, %249
  %415 = fadd fast float %412, %250
  %416 = fadd fast float %413, %251
  %417 = fmul fast float %376, %232
  %418 = call float @dx.op.unary.f32(i32 6, float %417)  ; FAbs(value)
  br label %458

; <label>:419                                     ; preds = %367
  br i1 %257, label %420, label %431

; <label>:420                                     ; preds = %419
  %421 = select i1 %259, float 5.000000e+01, float 1.000000e+00
  %422 = fmul fast float %421, %232
  %423 = fmul fast float %32, 2.000000e+00
  %424 = fmul fast float %33, 2.000000e+00
  %425 = fadd fast float %423, -1.000000e+00
  %426 = fadd fast float %424, -1.000000e+00
  %427 = call float @dx.op.dot2.f32(i32 54, float %425, float %426, float %425, float %426)  ; Dot2(ax,ay,bx,by)
  %428 = fmul fast float %427, %240
  %429 = fsub fast float %370, %428
  %430 = fmul fast float %422, %429
  br label %458

; <label>:431                                     ; preds = %419
  br i1 %261, label %451, label %432

; <label>:432                                     ; preds = %431
  %433 = select i1 %259, float 0x3F947AE140000000, float 1.000000e+00
  %434 = fdiv fast float 1.000000e+00, %433
  %435 = fmul fast float %433, %233
  %436 = fmul fast float %433, %234
  %437 = fmul fast float %434, %235
  %438 = call float @dx.op.unary.f32(i32 6, float %370)  ; FAbs(value)
  %439 = fcmp fast olt float %438, %435
  br i1 %439, label %440, label %444, !dx.controlflow.hints !63

; <label>:440                                     ; preds = %432
  %441 = fmul fast float %434, %232
  %442 = fmul fast float %441, %438
  %443 = call float @dx.op.unary.f32(i32 6, float %442)  ; FAbs(value)
  br label %458

; <label>:444                                     ; preds = %432
  %445 = fcmp fast ogt float %438, %436
  br i1 %445, label %446, label %458

; <label>:446                                     ; preds = %444
  %447 = fsub fast float %438, %436
  %448 = fmul fast float %437, %447
  %449 = call float @dx.op.unary.f32(i32 6, float %448)  ; FAbs(value)
  %450 = fsub fast float 1.000000e+00, %449
  br label %458

; <label>:451                                     ; preds = %431
  %452 = select i1 %259, float 5.000000e+01, float 1.000000e+00
  %453 = fmul fast float %452, %232
  %454 = call float @dx.op.unary.f32(i32 6, float %208)  ; FAbs(value)
  %455 = select i1 %256, float %454, float 0x47EFFFFFE0000000
  %456 = call float @dx.op.binary.f32(i32 36, float %370, float %455)  ; FMin(a,b)
  %457 = fmul fast float %453, %456
  br label %458

; <label>:458                                     ; preds = %451, %446, %444, %440, %420, %371, %297
  %459 = phi float [ %366, %297 ], [ %418, %371 ], [ %430, %420 ], [ %457, %451 ], [ %443, %440 ], [ %450, %446 ], [ %438, %444 ]
  %460 = phi float [ %362, %297 ], [ %414, %371 ], [ %22, %420 ], [ %22, %451 ], [ %22, %440 ], [ %22, %446 ], [ %22, %444 ]
  %461 = phi float [ %363, %297 ], [ %415, %371 ], [ %23, %420 ], [ %23, %451 ], [ %23, %440 ], [ %23, %446 ], [ %23, %444 ]
  %462 = phi float [ %364, %297 ], [ %416, %371 ], [ %24, %420 ], [ %24, %451 ], [ %24, %440 ], [ %24, %446 ], [ %24, %444 ]
  %463 = phi float [ %352, %297 ], [ %404, %371 ], [ 1.000000e+00, %420 ], [ 1.000000e+00, %451 ], [ 1.000000e+00, %440 ], [ 1.000000e+00, %446 ], [ 1.000000e+00, %444 ]
  %464 = call float @dx.op.unary.f32(i32 7, float %459)  ; Saturate(value)
  %465 = fmul fast float %463, %187
  %466 = fmul fast float %465, %464
  br label %467

; <label>:467                                     ; preds = %458, %226
  %468 = phi float [ %466, %458 ], [ %187, %226 ]
  %469 = phi float [ %460, %458 ], [ %22, %226 ]
  %470 = phi float [ %461, %458 ], [ %23, %226 ]
  %471 = phi float [ %462, %458 ], [ %24, %226 ]
  %472 = fmul fast float %469, %25
  %473 = fmul fast float %470, %25
  %474 = fmul fast float %471, %25
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 2
  %477 = fptosi float %38 to i32
  %478 = sitofp i32 %477 to float
  %479 = fadd fast float %476, %478
  %480 = fmul fast float %479, 0x3FE3C6EF40000000
  %481 = frem fast float %42, 2.560000e+02
  %482 = frem fast float %43, 2.560000e+02
  %483 = fptoui float %481 to i32
  %484 = fptoui float %482 to i32
  %485 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %483, i32 %484, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = fadd fast float %486, %480
  %488 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %489 = and i32 %120, 1
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %547, label %491, !dx.controlflow.hints !64

; <label>:491                                     ; preds = %467
  %492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %117, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.f32 %492, 2
  %494 = extractvalue %dx.types.ResRet.f32 %492, 3
  %495 = add i32 %117, 16
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = add i32 %117, 32
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = extractvalue %dx.types.ResRet.f32 %501, 1
  %504 = extractvalue %dx.types.ResRet.f32 %501, 2
  %505 = and i32 %120, 2
  %506 = icmp eq i32 %505, 0
  %507 = call float @dx.op.dot3.f32(i32 55, float %28, float %29, float %30, float %28, float %29, float %30)  ; Dot3(ax,ay,az,bx,by,bz)
  %508 = call float @dx.op.unary.f32(i32 25, float %507)  ; Rsqrt(value)
  %509 = fmul fast float %508, %28
  %510 = fmul fast float %508, %29
  %511 = fmul fast float %508, %30
  %512 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %513 = call float @dx.op.unary.f32(i32 25, float %512)  ; Rsqrt(value)
  %514 = fmul fast float %513, %77
  %515 = fmul fast float %513, %78
  %516 = fmul fast float %513, %79
  %517 = call float @dx.op.dot3.f32(i32 55, float %514, float %515, float %516, float %509, float %510, float %511)  ; Dot3(ax,ay,az,bx,by,bz)
  %518 = fmul fast float %517, %517
  %519 = fmul fast float %518, %493
  %520 = fadd fast float %519, %494
  %521 = call float @dx.op.unary.f32(i32 7, float %520)  ; Saturate(value)
  br i1 %506, label %522, label %532, !dx.controlflow.hints !65

; <label>:522                                     ; preds = %491
  %523 = extractvalue %dx.types.ResRet.f32 %492, 1
  %524 = extractvalue %dx.types.ResRet.f32 %492, 0
  %525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.f32 %525, 3
  %527 = fmul fast float %526, %512
  %528 = fsub fast float %524, %527
  %529 = fmul fast float %528, %523
  %530 = call float @dx.op.unary.f32(i32 7, float %529)  ; Saturate(value)
  %531 = fmul fast float %530, %521
  br label %532

; <label>:532                                     ; preds = %522, %491
  %533 = phi float [ %531, %522 ], [ %521, %491 ]
  %534 = fsub fast float %497, %502
  %535 = fsub fast float %498, %503
  %536 = fsub fast float %499, %504
  %537 = fmul fast float %533, %534
  %538 = fmul fast float %533, %535
  %539 = fmul fast float %533, %536
  %540 = fadd fast float %537, %502
  %541 = fadd fast float %538, %503
  %542 = fadd fast float %539, %504
  %543 = fmul fast float %540, %472
  %544 = fmul fast float %541, %473
  %545 = fmul fast float %542, %474
  %546 = fmul fast float %533, %468
  br label %547

; <label>:547                                     ; preds = %532, %467
  %548 = phi float [ %546, %532 ], [ %468, %467 ]
  %549 = phi float [ %543, %532 ], [ %472, %467 ]
  %550 = phi float [ %544, %532 ], [ %473, %467 ]
  %551 = phi float [ %545, %532 ], [ %474, %467 ]
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = add i32 %553, 0
  %555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %555, %dx.types.Handle %39, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 2
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = shl i32 %561, 4
  %563 = and i32 %562, 32752
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = lshr i32 %561, 7
  %566 = and i32 %565, 32752
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = lshr i32 %561, 22
  %569 = shl nuw nsw i32 %568, 5
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = fmul fast float %564, %557
  %572 = fmul fast float %567, %558
  %573 = fmul fast float %570, %559
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %576 = fmul fast float %571, %575
  %577 = fmul fast float %572, %575
  %578 = fmul fast float %573, %575
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = lshr i32 %580, 22
  %582 = shl nuw nsw i32 %581, 5
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = fmul fast float %583, %576
  %585 = select i1 %100, float %584, float %576
  %586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %26, float %27, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  %588 = extractvalue %dx.types.ResRet.f32 %586, 1
  %589 = extractvalue %dx.types.ResRet.f32 %586, 2
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 1
  %592 = fmul fast float %585, %549
  %593 = fmul fast float %577, %550
  %594 = fmul fast float %578, %551
  %595 = call float @dx.op.dot3.f32(i32 55, float %592, float %593, float %594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %596 = select i1 %100, float 0.000000e+00, float %592
  %597 = select i1 %100, float %595, float %593
  %598 = select i1 %100, float 0.000000e+00, float %594
  %599 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %190, i32 %191, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = lshr i32 %600, 18
  %602 = uitofp i32 %601 to float
  %603 = fmul fast float %602, 0x3F4C00EBA0000000
  %604 = call float @dx.op.unary.f32(i32 21, float %603)  ; Exp(value)
  %605 = fadd fast float %604, -1.000000e+00
  %606 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %607 = extractvalue %dx.types.Dimensions %606, 0
  %608 = sitofp i32 %607 to float
  %609 = extractvalue %dx.types.Dimensions %606, 1
  %610 = sitofp i32 %609 to float
  %611 = fcmp fast oge float %188, %608
  %612 = fcmp fast oge float %189, %610
  %613 = or i1 %611, %612
  %614 = select i1 %613, float 0x4197782600000000, float %605
  %615 = icmp eq i32 %116, 3
  %616 = fcmp fast ogt float %38, %614
  %617 = and i1 %214, %616
  %618 = or i1 %615, %617
  %619 = icmp eq i32 %116, 2
  %620 = fcmp fast ole float %38, %614
  %621 = and i1 %619, %620
  %622 = or i1 %621, %618
  %623 = fmul fast float %469, %31
  %624 = fmul fast float %623, %585
  %625 = fmul fast float %624, %587
  %626 = fmul fast float %625, %591
  %627 = fmul fast float %470, %31
  %628 = fmul fast float %627, %577
  %629 = fmul fast float %628, %588
  %630 = fmul fast float %629, %591
  %631 = fmul fast float %471, %31
  %632 = fmul fast float %631, %578
  %633 = fmul fast float %632, %589
  %634 = fmul fast float %633, %591
  %635 = fadd fast float %626, %596
  %636 = fadd fast float %597, %630
  %637 = fadd fast float %634, %598
  %638 = fmul fast float %635, %548
  %639 = fmul fast float %636, %548
  %640 = fmul fast float %637, %548
  %641 = and i32 %120, 1048576
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %734, label %643, !dx.controlflow.hints !66

; <label>:643                                     ; preds = %547
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 2
  %646 = extractvalue %dx.types.CBufRet.f32 %644, 3
  %647 = fmul fast float %645, %42
  %648 = fmul fast float %646, %43
  %649 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %650 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %651 = select i1 %622, i32 2, i32 0
  %652 = or i32 %651, 1
  %653 = uitofp i32 %652 to float
  %654 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %649, float %650, float %653, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %655 = extractvalue %dx.types.ResRet.f32 %654, 0
  %656 = extractvalue %dx.types.ResRet.f32 %654, 1
  %657 = extractvalue %dx.types.ResRet.f32 %654, 2
  %658 = extractvalue %dx.types.ResRet.f32 %654, 3
  %659 = add nuw nsw i32 %651, 2
  %660 = uitofp i32 %659 to float
  %661 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %649, float %650, float %660, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = extractvalue %dx.types.ResRet.f32 %661, 1
  %664 = extractvalue %dx.types.ResRet.f32 %661, 2
  %665 = extractvalue %dx.types.ResRet.f32 %661, 3
  %666 = call float @dx.op.binary.f32(i32 35, float %656, float %657)  ; FMax(a,b)
  %667 = call float @dx.op.binary.f32(i32 35, float %655, float %666)  ; FMax(a,b)
  %668 = call float @dx.op.binary.f32(i32 35, float %667, float %658)  ; FMax(a,b)
  %669 = call float @dx.op.binary.f32(i32 36, float %663, float %664)  ; FMin(a,b)
  %670 = call float @dx.op.binary.f32(i32 36, float %662, float %669)  ; FMin(a,b)
  %671 = call float @dx.op.binary.f32(i32 36, float %670, float %665)  ; FMin(a,b)
  %672 = fmul fast float %668, 2.550000e+02
  %673 = fadd fast float %672, 0x3F70101020000000
  %674 = fptoui float %673 to i32
  %675 = fmul fast float %671, 2.550000e+02
  %676 = fadd fast float %675, 0x3F70101020000000
  %677 = fptoui float %676 to i32
  %678 = icmp ult i32 %674, %677
  br i1 %678, label %679, label %727

; <label>:679                                     ; preds = %643
  %680 = fcmp fast ogt float %37, 9.843750e-01
  %681 = fadd fast float %38, -4.000000e+00
  %682 = select i1 %680, float -4.000000e+00, float %681
  %683 = call float @dx.op.binary.f32(i32 35, float %682, float 0.000000e+00)  ; FMax(a,b)
  %684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %685 = extractvalue %dx.types.CBufRet.f32 %684, 0
  %686 = fadd fast float %685, %683
  %687 = extractvalue %dx.types.CBufRet.f32 %684, 2
  %688 = fmul fast float %686, %687
  %689 = call float @dx.op.unary.f32(i32 23, float %688)  ; Log(value)
  %690 = extractvalue %dx.types.CBufRet.f32 %684, 3
  %691 = fmul fast float %690, %689
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 2
  %694 = fmul fast float %691, %693
  %695 = call float @dx.op.unary.f32(i32 7, float %694)  ; Saturate(value)
  %696 = uitofp i32 %674 to float
  %697 = uitofp i32 %677 to float
  %698 = fadd fast float %696, 5.000000e-01
  %699 = fadd fast float %697, 5.000000e-01
  %700 = fmul fast float %693, %698
  %701 = fmul fast float %693, %699
  %702 = fadd fast float %700, 0x3F0FFB4800000000
  %703 = fadd fast float %701, 0xBF0FFB4800000000
  %704 = call float @dx.op.binary.f32(i32 35, float %695, float %702)  ; FMax(a,b)
  %705 = call float @dx.op.binary.f32(i32 36, float %704, float %703)  ; FMin(a,b)
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 1
  %708 = extractvalue %dx.types.CBufRet.f32 %706, 2
  %709 = extractvalue %dx.types.CBufRet.f32 %706, 0
  %710 = select i1 %622, float %709, float 0.000000e+00
  %711 = fmul fast float %707, %705
  %712 = fadd fast float %710, %711
  %713 = fadd fast float %710, %708
  %714 = fsub fast float %707, %708
  %715 = fadd fast float %714, %710
  %716 = call float @dx.op.binary.f32(i32 35, float %712, float %713)  ; FMax(a,b)
  %717 = call float @dx.op.binary.f32(i32 36, float %716, float %715)  ; FMin(a,b)
  %718 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %649, float %650, float %717, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %719 = extractvalue %dx.types.ResRet.f32 %718, 0
  %720 = extractvalue %dx.types.ResRet.f32 %718, 1
  %721 = extractvalue %dx.types.ResRet.f32 %718, 2
  %722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.f32 %722, 1
  %724 = fmul fast float %723, %719
  %725 = fmul fast float %723, %720
  %726 = fmul fast float %723, %721
  br label %727

; <label>:727                                     ; preds = %679, %643
  %728 = phi float [ %724, %679 ], [ 1.000000e+00, %643 ]
  %729 = phi float [ %725, %679 ], [ 1.000000e+00, %643 ]
  %730 = phi float [ %726, %679 ], [ 1.000000e+00, %643 ]
  %731 = fmul fast float %728, %638
  %732 = fmul fast float %729, %639
  %733 = fmul fast float %730, %640
  br label %734

; <label>:734                                     ; preds = %727, %547
  %735 = phi float [ %731, %727 ], [ %638, %547 ]
  %736 = phi float [ %732, %727 ], [ %639, %547 ]
  %737 = phi float [ %733, %727 ], [ %640, %547 ]
  %738 = and i32 %120, 2097152
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %744, label %740, !dx.controlflow.hints !67

; <label>:740                                     ; preds = %734
  %741 = add i32 %117, 192
  %742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  br label %747

; <label>:744                                     ; preds = %734
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 3
  br label %747

; <label>:747                                     ; preds = %744, %740
  %748 = phi float [ %743, %740 ], [ %746, %744 ]
  br i1 %617, label %749, label %833

; <label>:749                                     ; preds = %747
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 2
  %752 = extractvalue %dx.types.CBufRet.f32 %750, 3
  %753 = fmul fast float %751, %42
  %754 = fmul fast float %752, %43
  %755 = call float @dx.op.unary.f32(i32 7, float %753)  ; Saturate(value)
  %756 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  %757 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %755, float %756, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = extractvalue %dx.types.ResRet.f32 %757, 1
  %760 = extractvalue %dx.types.ResRet.f32 %757, 2
  %761 = extractvalue %dx.types.ResRet.f32 %757, 3
  %762 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %755, float %756, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %763 = extractvalue %dx.types.ResRet.f32 %762, 0
  %764 = extractvalue %dx.types.ResRet.f32 %762, 1
  %765 = extractvalue %dx.types.ResRet.f32 %762, 2
  %766 = extractvalue %dx.types.ResRet.f32 %762, 3
  %767 = call float @dx.op.binary.f32(i32 35, float %759, float %760)  ; FMax(a,b)
  %768 = call float @dx.op.binary.f32(i32 35, float %758, float %767)  ; FMax(a,b)
  %769 = call float @dx.op.binary.f32(i32 35, float %768, float %761)  ; FMax(a,b)
  %770 = call float @dx.op.binary.f32(i32 36, float %764, float %765)  ; FMin(a,b)
  %771 = call float @dx.op.binary.f32(i32 36, float %763, float %770)  ; FMin(a,b)
  %772 = call float @dx.op.binary.f32(i32 36, float %771, float %766)  ; FMin(a,b)
  %773 = fmul fast float %769, 2.550000e+02
  %774 = fadd fast float %773, 0x3F70101020000000
  %775 = fptoui float %774 to i32
  %776 = fmul fast float %772, 2.550000e+02
  %777 = fadd fast float %776, 0x3F70101020000000
  %778 = fptoui float %777 to i32
  %779 = icmp ult i32 %775, %778
  br i1 %779, label %780, label %822

; <label>:780                                     ; preds = %749
  %781 = fcmp fast ogt float %37, 9.843750e-01
  %782 = fadd fast float %38, -4.000000e+00
  %783 = select i1 %781, float -4.000000e+00, float %782
  %784 = call float @dx.op.binary.f32(i32 35, float %783, float 0.000000e+00)  ; FMax(a,b)
  %785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.f32 %785, 0
  %787 = fadd fast float %786, %784
  %788 = extractvalue %dx.types.CBufRet.f32 %785, 2
  %789 = fmul fast float %787, %788
  %790 = call float @dx.op.unary.f32(i32 23, float %789)  ; Log(value)
  %791 = extractvalue %dx.types.CBufRet.f32 %785, 3
  %792 = fmul fast float %791, %790
  %793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %794 = extractvalue %dx.types.CBufRet.f32 %793, 2
  %795 = fmul fast float %792, %794
  %796 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  %797 = uitofp i32 %775 to float
  %798 = uitofp i32 %778 to float
  %799 = fadd fast float %797, 5.000000e-01
  %800 = fadd fast float %798, 5.000000e-01
  %801 = fmul fast float %794, %799
  %802 = fmul fast float %794, %800
  %803 = fadd fast float %801, 0x3F0FFB4800000000
  %804 = fadd fast float %802, 0xBF0FFB4800000000
  %805 = call float @dx.op.binary.f32(i32 35, float %796, float %803)  ; FMax(a,b)
  %806 = call float @dx.op.binary.f32(i32 36, float %805, float %804)  ; FMin(a,b)
  %807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %808 = extractvalue %dx.types.CBufRet.f32 %807, 1
  %809 = extractvalue %dx.types.CBufRet.f32 %807, 2
  %810 = extractvalue %dx.types.CBufRet.f32 %807, 0
  %811 = fmul fast float %808, %806
  %812 = fadd fast float %810, %811
  %813 = fadd fast float %810, %809
  %814 = fsub fast float %808, %809
  %815 = fadd fast float %814, %810
  %816 = call float @dx.op.binary.f32(i32 35, float %812, float %813)  ; FMax(a,b)
  %817 = call float @dx.op.binary.f32(i32 36, float %816, float %815)  ; FMin(a,b)
  %818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %755, float %756, float %817, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = extractvalue %dx.types.ResRet.f32 %818, 1
  %821 = extractvalue %dx.types.ResRet.f32 %818, 2
  br label %822

; <label>:822                                     ; preds = %780, %749
  %823 = phi float [ %819, %780 ], [ 1.000000e+00, %749 ]
  %824 = phi float [ %820, %780 ], [ 1.000000e+00, %749 ]
  %825 = phi float [ %821, %780 ], [ 1.000000e+00, %749 ]
  %826 = call float @dx.op.dot3.f32(i32 55, float %823, float %824, float %825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %827 = select i1 %100, float %826, float %823
  %828 = select i1 %100, float %826, float %824
  %829 = select i1 %100, float 1.000000e+00, float %825
  %830 = fmul fast float %827, %735
  %831 = fmul fast float %828, %736
  %832 = fmul fast float %829, %737
  br label %833

; <label>:833                                     ; preds = %822, %747
  %834 = phi float [ %614, %822 ], [ %38, %747 ]
  %835 = phi float [ %830, %822 ], [ %735, %747 ]
  %836 = phi float [ %831, %822 ], [ %736, %747 ]
  %837 = phi float [ %832, %822 ], [ %737, %747 ]
  br i1 %622, label %1178, label %838

; <label>:838                                     ; preds = %833
  %839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %26, float %27, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 0
  %841 = extractvalue %dx.types.ResRet.f32 %839, 1
  %842 = extractvalue %dx.types.ResRet.f32 %839, 2
  %843 = call float @dx.op.dot3.f32(i32 55, float %840, float %841, float %842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %844 = select i1 %100, float %843, float %840
  %845 = select i1 %100, float %843, float %841
  %846 = select i1 %100, float 1.000000e+00, float %842
  %847 = fmul fast float %844, %835
  %848 = fmul fast float %845, %836
  %849 = fmul fast float %846, %837
  %850 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.i32 %850, 0
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %1178, label %853, !dx.controlflow.hints !68

; <label>:853                                     ; preds = %838
  %854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %855 = extractvalue %dx.types.CBufRet.f32 %854, 2
  %856 = extractvalue %dx.types.CBufRet.f32 %854, 3
  %857 = fmul fast float %855, %42
  %858 = fmul fast float %856, %43
  %859 = fmul fast float %857, 2.000000e+00
  %860 = fmul fast float %858, 2.000000e+00
  %861 = fsub fast float 1.000000e+00, %859
  %862 = fsub fast float 1.000000e+00, %860
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 0
  %865 = extractvalue %dx.types.CBufRet.f32 %863, 1
  %866 = extractvalue %dx.types.CBufRet.f32 %863, 2
  %867 = fmul fast float %861, %864
  %868 = fmul fast float %861, %865
  %869 = fmul fast float %861, %866
  %870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %871 = extractvalue %dx.types.CBufRet.f32 %870, 0
  %872 = extractvalue %dx.types.CBufRet.f32 %870, 1
  %873 = extractvalue %dx.types.CBufRet.f32 %870, 2
  %874 = fmul fast float %862, %871
  %875 = fmul fast float %862, %872
  %876 = fmul fast float %862, %873
  %877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %878 = extractvalue %dx.types.CBufRet.f32 %877, 0
  %879 = extractvalue %dx.types.CBufRet.f32 %877, 1
  %880 = extractvalue %dx.types.CBufRet.f32 %877, 2
  %881 = fadd fast float %874, %878
  %882 = fadd fast float %881, %867
  %883 = fadd fast float %875, %879
  %884 = fadd fast float %883, %868
  %885 = fadd fast float %876, %880
  %886 = fadd fast float %885, %869
  %887 = fmul fast float %882, %834
  %888 = fmul fast float %884, %834
  %889 = fmul fast float %886, %834
  %890 = fmul fast float %887, %887
  %891 = fmul fast float %888, %888
  %892 = fadd fast float %890, %891
  %893 = fmul fast float %889, %889
  %894 = fadd fast float %892, %893
  %895 = call float @dx.op.unary.f32(i32 24, float %894)  ; Sqrt(value)
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 0
  %898 = fsub fast float %895, %897
  %899 = extractvalue %dx.types.CBufRet.f32 %896, 2
  %900 = fmul fast float %898, %899
  %901 = call float @dx.op.unary.f32(i32 7, float %900)  ; Saturate(value)
  %902 = fadd fast float %901, -5.000000e-01
  %903 = fmul fast float %902, 2.000000e+00
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %906 = call float @dx.op.binary.f32(i32 36, float %905, float %903)  ; FMin(a,b)
  %907 = fsub fast float -0.000000e+00, %905
  %908 = fcmp fast ogt float %906, %907
  br i1 %908, label %909, label %1178, !dx.controlflow.hints !69

; <label>:909                                     ; preds = %853
  %910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.f32 %910, 3
  %912 = fcmp fast ogt float %911, 0.000000e+00
  br i1 %912, label %913, label %988, !dx.controlflow.hints !70

; <label>:913                                     ; preds = %909
  %914 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %915 = extractvalue %dx.types.Dimensions %914, 0
  %916 = sitofp i32 %915 to float
  %917 = extractvalue %dx.types.Dimensions %914, 1
  %918 = sitofp i32 %917 to float
  %919 = fmul fast float %857, %916
  %920 = fmul fast float %858, %918
  %921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %922 = extractvalue %dx.types.CBufRet.f32 %921, 1
  %923 = fsub fast float -0.000000e+00, %922
  %924 = fptoui float %923 to i32
  %925 = fptoui float %919 to i32
  %926 = fptoui float %920 to i32
  %927 = and i32 %924, 31
  %928 = lshr i32 %925, %927
  %929 = lshr i32 %926, %927
  %930 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %924, i32 %928, i32 %929, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %931 = extractvalue %dx.types.ResRet.f32 %930, 0
  %932 = fcmp fast olt float %931, -1.000000e+00
  %933 = fcmp fast ogt float %931, -1.000000e+00
  %934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %935 = extractvalue %dx.types.CBufRet.f32 %934, 1
  %936 = select i1 %933, float %935, float 1.000000e+00
  %937 = fadd fast float %931, 1.000000e+00
  %938 = fmul fast float %936, %937
  %939 = call float @dx.op.unary.f32(i32 6, float %938)  ; FAbs(value)
  %940 = extractvalue %dx.types.CBufRet.f32 %934, 3
  %941 = fcmp fast oge float %939, %940
  %942 = select i1 %941, float 0x4197782600000000, float %939
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 0
  %945 = extractvalue %dx.types.CBufRet.f32 %943, 1
  %946 = extractvalue %dx.types.CBufRet.f32 %943, 2
  %947 = select i1 %932, float %944, float %864
  %948 = select i1 %932, float %945, float %865
  %949 = select i1 %932, float %946, float %866
  %950 = fmul fast float %947, %861
  %951 = fmul fast float %948, %861
  %952 = fmul fast float %949, %861
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 0
  %955 = extractvalue %dx.types.CBufRet.f32 %953, 1
  %956 = extractvalue %dx.types.CBufRet.f32 %953, 2
  %957 = select i1 %932, float %954, float %871
  %958 = select i1 %932, float %955, float %872
  %959 = select i1 %932, float %956, float %873
  %960 = fmul fast float %957, %862
  %961 = fmul fast float %958, %862
  %962 = fmul fast float %959, %862
  %963 = fadd fast float %960, %950
  %964 = fadd fast float %961, %951
  %965 = fadd fast float %962, %952
  %966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.f32 %966, 0
  %968 = extractvalue %dx.types.CBufRet.f32 %966, 1
  %969 = extractvalue %dx.types.CBufRet.f32 %966, 2
  %970 = select i1 %932, float %967, float %878
  %971 = select i1 %932, float %968, float %879
  %972 = select i1 %932, float %969, float %880
  %973 = fadd fast float %963, %970
  %974 = fadd fast float %964, %971
  %975 = fadd fast float %965, %972
  %976 = fmul fast float %973, %942
  %977 = fmul fast float %974, %942
  %978 = fmul fast float %975, %942
  %979 = fmul fast float %976, %976
  %980 = fmul fast float %977, %977
  %981 = fadd fast float %979, %980
  %982 = fmul fast float %978, %978
  %983 = fadd fast float %981, %982
  %984 = call float @dx.op.unary.f32(i32 24, float %983)  ; Sqrt(value)
  %985 = fsub fast float %984, %897
  %986 = fmul fast float %985, %899
  %987 = call float @dx.op.unary.f32(i32 7, float %986)  ; Saturate(value)
  br label %988

; <label>:988                                     ; preds = %913, %909
  %989 = phi float [ %987, %913 ], [ 1.000000e+00, %909 ]
  %990 = fmul fast float %906, 5.000000e-01
  %991 = fadd fast float %990, 5.000000e-01
  %992 = call float @dx.op.unary.f32(i32 22, float %991)  ; Frc(value)
  %993 = call float @dx.op.unary.f32(i32 27, float %992)  ; Round_ni(value)
  %994 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %995 = fmul fast float %994, 2.000000e+00
  %996 = fadd fast float %995, -1.000000e+00
  %997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %857, float %858, float %993, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %998 = extractvalue %dx.types.ResRet.f32 %997, 0
  %999 = extractvalue %dx.types.ResRet.f32 %997, 1
  %1000 = extractvalue %dx.types.ResRet.f32 %997, 2
  %1001 = extractvalue %dx.types.ResRet.f32 %997, 3
  %1002 = fadd fast float %998, -5.000000e-01
  %1003 = fadd fast float %1000, -5.000000e-01
  %1004 = fmul fast float %1002, 0xBFD5555560000000
  %1005 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1003, float %1004)  ; FMad(a,b,c)
  %1006 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %999, float 0.000000e+00)  ; FMad(a,b,c)
  %1007 = fadd fast float %1006, %1001
  %1008 = fmul fast float %1002, -7.500000e-01
  %1009 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1003, float %1008)  ; FMad(a,b,c)
  %1010 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %999, float 0.000000e+00)  ; FMad(a,b,c)
  %1011 = fadd fast float %1010, %1001
  %1012 = call float @dx.op.binary.f32(i32 35, float %1005, float -1.000000e+00)  ; FMax(a,b)
  %1013 = call float @dx.op.binary.f32(i32 35, float %1007, float -1.000000e+00)  ; FMax(a,b)
  %1014 = call float @dx.op.binary.f32(i32 35, float %1009, float -1.000000e+00)  ; FMax(a,b)
  %1015 = call float @dx.op.binary.f32(i32 35, float %1011, float -1.000000e+00)  ; FMax(a,b)
  %1016 = call float @dx.op.binary.f32(i32 36, float %1012, float 1.000000e+00)  ; FMin(a,b)
  %1017 = call float @dx.op.binary.f32(i32 36, float %1013, float 1.000000e+00)  ; FMin(a,b)
  %1018 = call float @dx.op.binary.f32(i32 36, float %1014, float 1.000000e+00)  ; FMin(a,b)
  %1019 = call float @dx.op.binary.f32(i32 36, float %1015, float 1.000000e+00)  ; FMin(a,b)
  %1020 = fcmp fast olt float %1016, 0x3FEFFF8020000000
  br i1 %1020, label %1021, label %1136, !dx.controlflow.hints !71

; <label>:1021                                    ; preds = %988
  %1022 = extractvalue %dx.types.CBufRet.f32 %904, 3
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.CBufRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.CBufRet.f32 %1023, 2
  %1027 = extractvalue %dx.types.CBufRet.f32 %1023, 3
  %1028 = fsub fast float %1024, %1016
  %1029 = fsub fast float %1025, %1017
  %1030 = fsub fast float %1026, %1018
  %1031 = fsub fast float %1027, %1019
  %1032 = fmul fast float %1028, %1022
  %1033 = fmul fast float %1029, %1022
  %1034 = fmul fast float %1030, %1022
  %1035 = fmul fast float %1031, %1022
  %1036 = fadd fast float %1032, %1016
  %1037 = fadd fast float %1033, %1017
  %1038 = fsub fast float -0.000000e+00, %1037
  %1039 = fadd fast float %1034, %1018
  %1040 = fadd fast float %1035, %1019
  %1041 = fmul fast float %1036, %1036
  %1042 = fsub fast float %1037, %1041
  %1043 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1042)  ; FMax(a,b)
  %1044 = fdiv fast float 1.000000e+00, %1043
  %1045 = fmul fast float %1037, %1036
  %1046 = fsub fast float %1039, %1045
  %1047 = fsub fast float %996, %1036
  %1048 = fmul fast float %996, %996
  %1049 = fsub fast float %1048, %1037
  %1050 = fmul fast float %1047, %1044
  %1051 = fmul fast float %1050, %1046
  %1052 = fsub fast float %1049, %1051
  %1053 = fmul fast float %1037, %1037
  %1054 = fsub fast float %1040, %1053
  %1055 = fmul fast float %1046, %1046
  %1056 = fmul fast float %1055, %1044
  %1057 = fsub fast float %1054, %1056
  %1058 = fdiv fast float %1052, %1057
  %1059 = fmul fast float %1046, %1058
  %1060 = fsub fast float %1047, %1059
  %1061 = fmul fast float %1060, %1044
  %1062 = fmul fast float %1061, %1036
  %1063 = fsub fast float 1.000000e+00, %1062
  %1064 = fmul fast float %1037, %1058
  %1065 = fsub fast float %1063, %1064
  %1066 = fmul fast float %1061, %1061
  %1067 = fmul fast float %1058, 4.000000e+00
  %1068 = fmul fast float %1067, %1065
  %1069 = fsub fast float %1066, %1068
  %1070 = call float @dx.op.unary.f32(i32 24, float %1069)  ; Sqrt(value)
  %1071 = fcmp fast oge float %1061, 0.000000e+00
  %1072 = fsub fast float -0.000000e+00, %1070
  %1073 = select i1 %1071, float %1072, float %1070
  %1074 = fsub fast float %1073, %1061
  %1075 = fdiv fast float %1074, %1058
  %1076 = fdiv fast float %1065, %1074
  %1077 = fmul fast float %1075, 5.000000e-01
  %1078 = fmul fast float %1076, 2.000000e+00
  %1079 = select i1 %1071, float %1077, float %1078
  %1080 = select i1 %1071, float %1078, float %1077
  %1081 = call float @dx.op.binary.f32(i32 35, float %1079, float %1080)  ; FMax(a,b)
  %1082 = call float @dx.op.binary.f32(i32 36, float %1079, float %1080)  ; FMin(a,b)
  %1083 = fcmp fast ogt float %996, %1082
  br i1 %1083, label %1084, label %1094

; <label>:1084                                    ; preds = %1021
  %1085 = fsub fast float %996, %1082
  %1086 = fsub fast float %1081, %1082
  %1087 = fmul fast float %1085, %1086
  %1088 = fmul fast float %1081, %996
  %1089 = fadd fast float %1081, %996
  %1090 = fmul fast float %1089, %1036
  %1091 = fadd fast float %1088, %1037
  %1092 = fsub fast float %1091, %1090
  %1093 = fdiv fast float %1092, %1087
  br label %1094

; <label>:1094                                    ; preds = %1084, %1021
  %1095 = phi float [ %1093, %1084 ], [ 0.000000e+00, %1021 ]
  %1096 = fcmp fast ogt float %996, %1081
  %1097 = fsub fast float %996, %1081
  br i1 %1096, label %1098, label %1108

; <label>:1098                                    ; preds = %1094
  %1099 = fsub fast float %1081, %1082
  %1100 = fmul fast float %1099, %1097
  %1101 = fmul fast float %1082, %996
  %1102 = fadd fast float %1082, %996
  %1103 = fmul fast float %1102, %1036
  %1104 = fsub fast float %1038, %1101
  %1105 = fadd fast float %1104, %1103
  %1106 = fdiv fast float %1105, %1100
  %1107 = fadd fast float %1106, %1095
  br label %1108

; <label>:1108                                    ; preds = %1098, %1094
  %1109 = phi float [ %1107, %1098 ], [ %1095, %1094 ]
  %1110 = fsub fast float %996, %1082
  %1111 = fmul fast float %1110, %1097
  %1112 = fmul fast float %1082, %1081
  %1113 = fadd fast float %1082, %1081
  %1114 = fmul fast float %1113, %1036
  %1115 = fadd fast float %1112, %1037
  %1116 = fsub fast float %1115, %1114
  %1117 = fdiv fast float %1116, %1111
  %1118 = call float @dx.op.unary.f32(i32 7, float %1109)  ; Saturate(value)
  %1119 = fcmp fast oeq float %748, 0.000000e+00
  %1120 = extractvalue %dx.types.CBufRet.f32 %904, 0
  %1121 = fcmp fast oeq float %1120, 0.000000e+00
  %1122 = or i1 %1119, %1121
  %1123 = fmul fast float %1120, 2.000000e+00
  %1124 = fadd fast float %905, %906
  %1125 = fdiv fast float %1124, %1123
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1127 = fmul fast float %1126, 2.000000e+00
  %1128 = fsub fast float 3.000000e+00, %1127
  %1129 = fmul fast float %1126, %1126
  %1130 = fmul fast float %1129, %1128
  %1131 = select i1 %1122, float 1.000000e+00, float %1130
  %1132 = fmul fast float %1117, %748
  %1133 = fadd fast float %1118, %1132
  %1134 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1135 = fmul fast float %1131, %1134
  br label %1136

; <label>:1136                                    ; preds = %1108, %988
  %1137 = phi float [ %1135, %1108 ], [ 0.000000e+00, %988 ]
  %1138 = fsub fast float 1.000000e+00, %1137
  %1139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %857, float %858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1142 = extractvalue %dx.types.CBufRet.i32 %1141, 2
  %1143 = icmp eq i32 %1142, 0
  br i1 %1143, label %1149, label %1144

; <label>:1144                                    ; preds = %1136
  %1145 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1146 = fadd fast float %1140, -1.000000e+00
  %1147 = fmul fast float %1145, %1146
  %1148 = fadd fast float %1147, 1.000000e+00
  br label %1149

; <label>:1149                                    ; preds = %1144, %1136
  %1150 = phi float [ %1148, %1144 ], [ %1138, %1136 ]
  br i1 %912, label %1151, label %1169

; <label>:1151                                    ; preds = %1149
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 1
  %1154 = fsub fast float %989, %1153
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  %1156 = fsub fast float %989, %911
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1158 = fsub fast float %1155, %1157
  %1159 = fsub fast float %991, %1157
  %1160 = fdiv fast float %1159, %1158
  %1161 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1162 = fmul fast float %1161, 2.000000e+00
  %1163 = fsub fast float 3.000000e+00, %1162
  %1164 = fsub fast float %1140, %1150
  %1165 = fmul fast float %1161, %1161
  %1166 = fmul fast float %1165, %1164
  %1167 = fmul fast float %1166, %1163
  %1168 = fadd fast float %1167, %1150
  br label %1169

; <label>:1169                                    ; preds = %1151, %1149
  %1170 = phi float [ %1168, %1151 ], [ %1150, %1149 ]
  %1171 = call float @dx.op.binary.f32(i32 35, float %1140, float %1170)  ; FMax(a,b)
  %1172 = call float @dx.op.dot3.f32(i32 55, float %1171, float %1171, float %1171, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1173 = select i1 %100, float %1172, float %1171
  %1174 = select i1 %100, float 1.000000e+00, float %1171
  %1175 = fmul fast float %1173, %847
  %1176 = fmul fast float %1173, %848
  %1177 = fmul fast float %1174, %849
  br label %1178

; <label>:1178                                    ; preds = %1169, %853, %838, %833
  %1179 = phi float [ %835, %833 ], [ %847, %838 ], [ %1175, %1169 ], [ %847, %853 ]
  %1180 = phi float [ %836, %833 ], [ %848, %838 ], [ %1176, %1169 ], [ %848, %853 ]
  %1181 = phi float [ %837, %833 ], [ %849, %838 ], [ %1177, %1169 ], [ %849, %853 ]
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 2
  %1184 = extractvalue %dx.types.CBufRet.f32 %1182, 3
  %1185 = fmul fast float %1183, %42
  %1186 = fmul fast float %1184, %43
  %1187 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  %1188 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1189 = select i1 %622, i32 2, i32 0
  %1190 = or i32 %1189, 1
  %1191 = uitofp i32 %1190 to float
  %1192 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1187, float %1188, float %1191, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = extractvalue %dx.types.ResRet.f32 %1192, 1
  %1195 = extractvalue %dx.types.ResRet.f32 %1192, 2
  %1196 = extractvalue %dx.types.ResRet.f32 %1192, 3
  %1197 = add nuw nsw i32 %1189, 2
  %1198 = uitofp i32 %1197 to float
  %1199 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1187, float %1188, float %1198, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.ResRet.f32 %1199, 1
  %1202 = extractvalue %dx.types.ResRet.f32 %1199, 2
  %1203 = extractvalue %dx.types.ResRet.f32 %1199, 3
  %1204 = call float @dx.op.binary.f32(i32 35, float %1194, float %1195)  ; FMax(a,b)
  %1205 = call float @dx.op.binary.f32(i32 35, float %1193, float %1204)  ; FMax(a,b)
  %1206 = call float @dx.op.binary.f32(i32 35, float %1205, float %1196)  ; FMax(a,b)
  %1207 = call float @dx.op.binary.f32(i32 36, float %1201, float %1202)  ; FMin(a,b)
  %1208 = call float @dx.op.binary.f32(i32 36, float %1200, float %1207)  ; FMin(a,b)
  %1209 = call float @dx.op.binary.f32(i32 36, float %1208, float %1203)  ; FMin(a,b)
  %1210 = fmul fast float %1206, 2.550000e+02
  %1211 = fadd fast float %1210, 0x3F70101020000000
  %1212 = fptoui float %1211 to i32
  %1213 = fmul fast float %1209, 2.550000e+02
  %1214 = fadd fast float %1213, 0x3F70101020000000
  %1215 = fptoui float %1214 to i32
  %1216 = icmp ult i32 %1212, %1215
  br i1 %1216, label %1217, label %1260

; <label>:1217                                    ; preds = %1178
  %1218 = fcmp fast ogt float %37, 9.843750e-01
  %1219 = fadd fast float %834, -4.000000e+00
  %1220 = select i1 %1218, float -4.000000e+00, float %1219
  %1221 = call float @dx.op.binary.f32(i32 35, float %1220, float 0.000000e+00)  ; FMax(a,b)
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = fadd fast float %1223, %1221
  %1225 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1226 = fmul fast float %1224, %1225
  %1227 = call float @dx.op.unary.f32(i32 23, float %1226)  ; Log(value)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1222, 3
  %1229 = fmul fast float %1228, %1227
  %1230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1230, 2
  %1232 = fmul fast float %1229, %1231
  %1233 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1234 = uitofp i32 %1212 to float
  %1235 = uitofp i32 %1215 to float
  %1236 = fadd fast float %1234, 5.000000e-01
  %1237 = fadd fast float %1235, 5.000000e-01
  %1238 = fmul fast float %1231, %1236
  %1239 = fmul fast float %1231, %1237
  %1240 = fadd fast float %1238, 0x3F0FFB4800000000
  %1241 = fadd fast float %1239, 0xBF0FFB4800000000
  %1242 = call float @dx.op.binary.f32(i32 35, float %1233, float %1240)  ; FMax(a,b)
  %1243 = call float @dx.op.binary.f32(i32 36, float %1242, float %1241)  ; FMin(a,b)
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 1
  %1246 = extractvalue %dx.types.CBufRet.f32 %1244, 2
  %1247 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1248 = select i1 %622, float %1247, float 0.000000e+00
  %1249 = fmul fast float %1245, %1243
  %1250 = fadd fast float %1248, %1249
  %1251 = fadd fast float %1248, %1246
  %1252 = fsub fast float %1245, %1246
  %1253 = fadd fast float %1252, %1248
  %1254 = call float @dx.op.binary.f32(i32 35, float %1250, float %1251)  ; FMax(a,b)
  %1255 = call float @dx.op.binary.f32(i32 36, float %1254, float %1253)  ; FMin(a,b)
  %1256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1187, float %1188, float %1255, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1257 = extractvalue %dx.types.ResRet.f32 %1256, 0
  %1258 = extractvalue %dx.types.ResRet.f32 %1256, 1
  %1259 = extractvalue %dx.types.ResRet.f32 %1256, 2
  br label %1260

; <label>:1260                                    ; preds = %1217, %1178
  %1261 = phi float [ %1257, %1217 ], [ 1.000000e+00, %1178 ]
  %1262 = phi float [ %1258, %1217 ], [ 1.000000e+00, %1178 ]
  %1263 = phi float [ %1259, %1217 ], [ 1.000000e+00, %1178 ]
  %1264 = call float @dx.op.dot3.f32(i32 55, float %1261, float %1262, float %1263, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1265 = select i1 %100, float %1264, float %1261
  %1266 = select i1 %100, float %1264, float %1262
  %1267 = fmul fast float %1265, %1179
  %1268 = fmul fast float %1266, %1180
  %1269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1270 = extractvalue %dx.types.CBufRet.f32 %1269, 0
  br i1 %100, label %1271, label %1274

; <label>:1271                                    ; preds = %1260
  %1272 = fadd fast float %1267, %1268
  %1273 = fmul fast float %1270, %1272
  br label %1284

; <label>:1274                                    ; preds = %1260
  %1275 = fmul fast float %1263, %1181
  %1276 = fmul fast float %1270, %1267
  %1277 = fmul fast float %1270, %1268
  %1278 = fmul fast float %1275, %1270
  %1279 = call float @dx.op.binary.f32(i32 35, float %1277, float %1278)  ; FMax(a,b)
  %1280 = call float @dx.op.binary.f32(i32 35, float %1276, float %1279)  ; FMax(a,b)
  %1281 = call float @dx.op.binary.f32(i32 35, float %1280, float 0.000000e+00)  ; FMax(a,b)
  %1282 = fcmp fast ugt float %1281, 0x3F10000000000000
  br i1 %1282, label %1284, label %1283

; <label>:1283                                    ; preds = %1274
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1284

; <label>:1284                                    ; preds = %1283, %1274, %1271
  %1285 = phi float [ %1273, %1271 ], [ %1276, %1283 ], [ %1276, %1274 ]
  %1286 = phi float [ 0.000000e+00, %1271 ], [ %1277, %1283 ], [ %1277, %1274 ]
  %1287 = phi float [ 0.000000e+00, %1271 ], [ %1278, %1283 ], [ %1278, %1274 ]
  %1288 = fadd fast float %488, 0x3FE3C6EF40000000
  %1289 = call float @dx.op.unary.f32(i32 22, float %1288)  ; Frc(value)
  %1290 = call float @dx.op.unary.f32(i32 23, float %1285)  ; Log(value)
  %1291 = fadd fast float %1290, -7.000000e+00
  %1292 = call float @dx.op.unary.f32(i32 21, float %1291)  ; Exp(value)
  %1293 = fmul fast float %1289, 2.000000e+00
  %1294 = fadd fast float %1293, -1.000000e+00
  %1295 = fmul fast float %1292, %1294
  %1296 = fcmp fast ogt float %1285, 0.000000e+00
  %1297 = select i1 %1296, float %1295, float 0.000000e+00
  %1298 = fadd fast float %1297, %1285
  %1299 = fadd fast float %488, 0x3FF3C6EF40000000
  %1300 = call float @dx.op.unary.f32(i32 22, float %1299)  ; Frc(value)
  %1301 = call float @dx.op.unary.f32(i32 23, float %1286)  ; Log(value)
  %1302 = fadd fast float %1301, -7.000000e+00
  %1303 = call float @dx.op.unary.f32(i32 21, float %1302)  ; Exp(value)
  %1304 = fmul fast float %1300, 2.000000e+00
  %1305 = fadd fast float %1304, -1.000000e+00
  %1306 = fmul fast float %1303, %1305
  %1307 = fcmp fast ogt float %1286, 0.000000e+00
  %1308 = select i1 %1307, float %1306, float 0.000000e+00
  %1309 = fadd fast float %1308, %1286
  %1310 = fadd fast float %488, 0x3FFDAA66E0000000
  %1311 = call float @dx.op.unary.f32(i32 22, float %1310)  ; Frc(value)
  %1312 = call float @dx.op.unary.f32(i32 23, float %1287)  ; Log(value)
  %1313 = fadd fast float %1312, -6.000000e+00
  %1314 = call float @dx.op.unary.f32(i32 21, float %1313)  ; Exp(value)
  %1315 = fmul fast float %1311, 2.000000e+00
  %1316 = fadd fast float %1315, -1.000000e+00
  %1317 = fmul fast float %1314, %1316
  %1318 = fcmp fast ogt float %1287, 0.000000e+00
  %1319 = select i1 %1318, float %1317, float 0.000000e+00
  %1320 = fadd fast float %1319, %1287
  %1321 = select i1 %100, float %1286, float %1309
  %1322 = select i1 %100, float %1287, float %1320
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1323 = call float @dx.op.binary.f32(i32 36, float %1298, float 3.225500e+04)  ; FMin(a,b)
  %1324 = call float @dx.op.binary.f32(i32 36, float %1321, float 3.225500e+04)  ; FMin(a,b)
  %1325 = call float @dx.op.binary.f32(i32 36, float %1322, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1323)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1324)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1325)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[30 x i32] [i32 28, i32 8, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !59}
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
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}

