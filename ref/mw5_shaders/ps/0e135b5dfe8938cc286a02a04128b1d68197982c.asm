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
; shader hash: 35cc33adc4f5a03d42b789292237572a
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
;                                   texture     f32          3d      T9     t45,space2     1
;                                   texture     f32     2darray     T10     t47,space2     1
;                                   textureunorm_f32     2darray     T11     t85,space2     1
;                                   texture     f32          2d     T12     t83,space2     1
;                                   texture     f32     2darray     T13             t1     1
;                                   texture    byte         r/o     T14             t2     1
;                                   texture     f32          3d     T15     t46,space2     1
;
;
; ViewId state:
;
; Number of inputs: 31, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 20, 21, 22, 23, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 7, 8, 9, 12, 13, 14, 15, 16, 17, 22, 23, 24, 25, 26, 27, 28, 30 }
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 77, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.f32 %46, 0
  %48 = fmul fast float %47, %40
  %49 = fmul fast float %47, %41
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 2
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %53 = fmul fast float %48, 2.000000e+00
  %54 = fmul fast float %53, %51
  %55 = fmul fast float %49, 2.000000e+00
  %56 = fmul fast float %55, %52
  %57 = fsub fast float 1.000000e+00, %54
  %58 = fsub fast float 1.000000e+00, %56
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 1
  %62 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %63 = fmul fast float %57, %60
  %64 = fmul fast float %57, %61
  %65 = fmul fast float %57, %62
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = extractvalue %dx.types.CBufRet.f32 %66, 1
  %69 = extractvalue %dx.types.CBufRet.f32 %66, 2
  %70 = fmul fast float %58, %67
  %71 = fmul fast float %58, %68
  %72 = fmul fast float %58, %69
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %77 = fadd fast float %70, %74
  %78 = fadd fast float %77, %63
  %79 = fadd fast float %71, %75
  %80 = fadd fast float %79, %64
  %81 = fadd fast float %72, %76
  %82 = fadd fast float %81, %65
  %83 = fmul fast float %78, %43
  %84 = fmul fast float %80, %43
  %85 = fmul fast float %82, %43
  %86 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.i32 %86, 3
  %88 = and i32 %87, 3
  %89 = icmp ne i32 %88, 0
  %90 = and i32 %87, 4
  %91 = icmp ne i32 %90, 0
  %92 = and i1 %89, %91
  br i1 %92, label %93, label %102

; <label>:93                                      ; preds = %0
  %94 = fmul fast float %52, %49
  %95 = fmul fast float %51, %48
  %96 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %17, float %95, float %94, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = fsub fast float 1.000000e+00, %97
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = fcmp fast olt float %98, %100
  br label %105

; <label>:102                                     ; preds = %0
  %103 = icmp eq i32 %90, 0
  %104 = and i1 %89, %103
  br label %105

; <label>:105                                     ; preds = %102, %93
  %106 = phi i1 [ %101, %93 ], [ %104, %102 ]
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %110 = fmul fast float %108, %48
  %111 = fmul fast float %109, %49
  %112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.i32 %112, 0
  %114 = and i32 %113, 114688
  %115 = icmp ne i32 %114, 0
  %116 = select i1 %115, float %110, float 0.000000e+00
  %117 = select i1 %115, float %111, float 0.000000e+00
  %118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %18, float %116, float %117, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = fmul fast float %119, 2.550000e+02
  %121 = fptoui float %120 to i32
  %122 = select i1 %115, i32 %121, i32 0
  %123 = mul i32 %21, 208
  %124 = add i32 %123, 188
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = and i32 %87, 114688
  %128 = and i32 %87, 8
  %129 = icmp ne i32 %128, 0
  %130 = or i1 %106, %129
  %131 = select i1 %130, i32 %127, i32 16384
  %132 = and i32 %131, %126
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

; <label>:134                                     ; preds = %105
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %135

; <label>:135                                     ; preds = %134, %105
  %136 = and i32 %126, 512
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %162, label %138

; <label>:138                                     ; preds = %135
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %142 = fmul fast float %140, %48
  %143 = fmul fast float %141, %49
  %144 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %146 = fdiv fast float %144, %145
  %147 = fcmp fast ogt float %146, 0x3FFC71C720000000
  br i1 %147, label %148, label %154

; <label>:148                                     ; preds = %138
  %149 = fdiv fast float 0x3FFC71C720000000, %146
  %150 = fmul fast float %149, %143
  %151 = fsub fast float 1.000000e+00, %149
  %152 = fmul fast float %151, 5.000000e-01
  %153 = fadd fast float %152, %150
  br label %162

; <label>:154                                     ; preds = %138
  %155 = fcmp fast olt float %146, 0x3FFC71C720000000
  br i1 %155, label %156, label %162

; <label>:156                                     ; preds = %154
  %157 = fmul fast float %142, 5.625000e-01
  %158 = fmul fast float %157, %146
  %159 = fmul fast float %146, 2.812500e-01
  %160 = fsub fast float 5.000000e-01, %159
  %161 = fadd fast float %160, %158
  br label %162

; <label>:162                                     ; preds = %156, %154, %148, %135
  %163 = phi float [ %37, %135 ], [ %142, %148 ], [ %161, %156 ], [ %142, %154 ]
  %164 = phi float [ %38, %135 ], [ %153, %148 ], [ %143, %156 ], [ %143, %154 ]
  %165 = add i32 %22, 88
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = bitcast i32 %167 to float
  %169 = add i32 %22, 72
  %170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.i32 %170, 0
  %172 = extractvalue %dx.types.ResRet.i32 %170, 1
  %173 = extractvalue %dx.types.ResRet.i32 %170, 2
  %174 = extractvalue %dx.types.ResRet.i32 %170, 3
  %175 = bitcast i32 %171 to float
  %176 = bitcast i32 %172 to float
  %177 = bitcast i32 %173 to float
  %178 = bitcast i32 %174 to float
  %179 = add i32 %22, 108
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %179, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = add i32 %181, 0
  %183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %182, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %184 = fmul fast float %177, %37
  %185 = fmul fast float %178, %38
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 3
  %188 = fmul fast float %187, %175
  %189 = fmul fast float %187, %176
  %190 = fadd fast float %188, %184
  %191 = fadd fast float %189, %185
  %192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %183, %dx.types.Handle %45, float %190, float %191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %193 = extractvalue %dx.types.ResRet.f32 %192, 0
  %194 = extractvalue %dx.types.ResRet.f32 %192, 1
  %195 = fmul fast float %193, 2.000000e+00
  %196 = fmul fast float %194, 2.000000e+00
  %197 = fadd fast float %195, -1.000000e+00
  %198 = fadd fast float %196, -1.000000e+00
  %199 = fmul fast float %197, %168
  %200 = fmul fast float %198, %168
  %201 = fadd fast float %199, %163
  %202 = fadd fast float %200, %164
  %203 = and i32 %126, 16
  %204 = icmp ne i32 %203, 0
  %205 = select i1 %204, float 1.000000e+00, float %39
  %206 = icmp eq i32 %203, 0
  br i1 %206, label %226, label %207, !dx.controlflow.hints !59

; <label>:207                                     ; preds = %162
  %208 = add i32 %123, 64
  %209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = fadd fast float %210, 1.000000e+00
  %212 = fmul fast float %211, %39
  %213 = fsub fast float %212, %210
  %214 = fsub fast float %211, %213
  %215 = call float @dx.op.unary.f32(i32 7, float %214)  ; Saturate(value)
  %216 = fsub fast float 1.000000e+00, %212
  %217 = call float @dx.op.unary.f32(i32 7, float %216)  ; Saturate(value)
  %218 = fsub fast float %215, %217
  %219 = fsub fast float %205, %217
  %220 = fdiv fast float %219, %218
  %221 = call float @dx.op.unary.f32(i32 7, float %220)  ; Saturate(value)
  %222 = fmul fast float %221, 2.000000e+00
  %223 = fsub fast float 3.000000e+00, %222
  %224 = fmul fast float %221, %221
  %225 = fmul fast float %224, %223
  br label %226

; <label>:226                                     ; preds = %207, %162
  %227 = phi float [ %225, %207 ], [ %205, %162 ]
  %228 = fcmp fast ogt float %227, 0.000000e+00
  br i1 %228, label %230, label %229

; <label>:229                                     ; preds = %226
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %230

; <label>:230                                     ; preds = %229, %226
  %231 = call float @dx.op.unary.f32(i32 7, float %227)  ; Saturate(value)
  %232 = fmul fast float %48, 5.000000e-01
  %233 = fmul fast float %49, 5.000000e-01
  %234 = fptosi float %232 to i32
  %235 = fptosi float %233 to i32
  %236 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %234, i32 %235, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = lshr i32 %237, 18
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F4C00EBA0000000
  %241 = call float @dx.op.unary.f32(i32 21, float %240)  ; Exp(value)
  %242 = fadd fast float %241, -1.000000e+00
  %243 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %244 = extractvalue %dx.types.Dimensions %243, 0
  %245 = sitofp i32 %244 to float
  %246 = extractvalue %dx.types.Dimensions %243, 1
  %247 = sitofp i32 %246 to float
  %248 = fcmp fast oge float %232, %245
  %249 = fcmp fast oge float %233, %247
  %250 = or i1 %248, %249
  %251 = select i1 %250, float 0x4197782600000000, float %242
  %252 = fsub fast float %251, %43
  %253 = fcmp fast ogt float %252, 0.000000e+00
  %254 = and i32 %122, -2
  %255 = icmp eq i32 %254, 2
  %256 = and i1 %255, %253
  %257 = xor i1 %253, true
  %258 = icmp eq i32 %122, 1
  %259 = and i1 %258, %257
  %260 = or i1 %256, %259
  %261 = and i32 %126, 262144
  %262 = icmp ne i32 %261, 0
  %263 = and i1 %262, %260
  %264 = xor i1 %260, true
  %265 = and i32 %126, 131072
  %266 = icmp ne i32 %265, 0
  %267 = and i1 %266, %264
  %268 = or i1 %263, %267
  br i1 %268, label %269, label %270

; <label>:269                                     ; preds = %230
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %270

; <label>:270                                     ; preds = %269, %230
  %271 = and i32 %126, 32
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %522, label %273, !dx.controlflow.hints !60

; <label>:273                                     ; preds = %270
  %274 = add i32 %123, 80
  %275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.f32 %275, 0
  %277 = extractvalue %dx.types.ResRet.f32 %275, 1
  %278 = extractvalue %dx.types.ResRet.f32 %275, 2
  %279 = extractvalue %dx.types.ResRet.f32 %275, 3
  %280 = add i32 %123, 96
  %281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = extractvalue %dx.types.ResRet.f32 %281, 1
  %284 = extractvalue %dx.types.ResRet.f32 %281, 2
  %285 = add i32 %123, 112
  %286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = extractvalue %dx.types.ResRet.f32 %286, 3
  %291 = add i32 %123, 128
  %292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = extractvalue %dx.types.ResRet.f32 %292, 1
  %295 = extractvalue %dx.types.ResRet.f32 %292, 2
  %296 = extractvalue %dx.types.ResRet.f32 %292, 3
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 4096
  %300 = icmp ne i32 %299, 0
  %301 = fcmp fast une float %284, 0.000000e+00
  %302 = and i32 %298, 64
  %303 = icmp ne i32 %302, 0
  %304 = and i32 %298, 128
  %305 = icmp eq i32 %304, 0
  %306 = and i32 %298, 2048
  %307 = icmp eq i32 %306, 0
  %308 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %11, i32 0)  ; GetDimensions(handle,mipLevel)
  %309 = extractvalue %dx.types.Dimensions %308, 0
  %310 = sitofp i32 %309 to float
  %311 = extractvalue %dx.types.Dimensions %308, 1
  %312 = sitofp i32 %311 to float
  %313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.f32 %313, 2
  %315 = extractvalue %dx.types.CBufRet.f32 %313, 3
  %316 = fmul fast float %314, %48
  %317 = fmul fast float %315, %49
  %318 = fmul fast float %316, %310
  %319 = fmul fast float %317, %312
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 1
  %322 = fsub fast float -0.000000e+00, %321
  %323 = fptoui float %322 to i32
  %324 = fptoui float %318 to i32
  %325 = fptoui float %319 to i32
  %326 = and i32 %323, 31
  %327 = lshr i32 %324, %326
  %328 = lshr i32 %325, %326
  %329 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 %323, i32 %327, i32 %328, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = fcmp fast ogt float %330, -1.000000e+00
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %334 = select i1 %331, float %333, float 1.000000e+00
  %335 = fadd fast float %330, 1.000000e+00
  %336 = fmul fast float %334, %335
  %337 = call float @dx.op.unary.f32(i32 6, float %336)  ; FAbs(value)
  %338 = extractvalue %dx.types.CBufRet.f32 %332, 3
  %339 = fcmp fast oge float %337, %338
  %340 = select i1 %339, float 0x4197782600000000, float %337
  br i1 %307, label %418, label %341, !dx.controlflow.hints !61

; <label>:341                                     ; preds = %273
  %342 = fmul fast float %53, %314
  %343 = fmul fast float %55, %315
  %344 = fsub fast float 1.000000e+00, %342
  %345 = fsub fast float 1.000000e+00, %343
  %346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %347 = extractvalue %dx.types.CBufRet.f32 %346, 0
  %348 = extractvalue %dx.types.CBufRet.f32 %346, 1
  %349 = extractvalue %dx.types.CBufRet.f32 %346, 2
  %350 = fmul fast float %344, %347
  %351 = fmul fast float %344, %348
  %352 = fmul fast float %344, %349
  %353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.f32 %353, 0
  %355 = extractvalue %dx.types.CBufRet.f32 %353, 1
  %356 = extractvalue %dx.types.CBufRet.f32 %353, 2
  %357 = fmul fast float %345, %354
  %358 = fmul fast float %345, %355
  %359 = fmul fast float %345, %356
  %360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.f32 %360, 0
  %362 = extractvalue %dx.types.CBufRet.f32 %360, 1
  %363 = extractvalue %dx.types.CBufRet.f32 %360, 2
  %364 = fadd fast float %357, %361
  %365 = fadd fast float %364, %350
  %366 = fadd fast float %358, %362
  %367 = fadd fast float %366, %351
  %368 = fadd fast float %359, %363
  %369 = fadd fast float %368, %352
  %370 = fmul fast float %365, %340
  %371 = fmul fast float %367, %340
  %372 = fmul fast float %369, %340
  %373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.f32 %373, 0
  %375 = extractvalue %dx.types.CBufRet.f32 %373, 1
  %376 = extractvalue %dx.types.CBufRet.f32 %373, 2
  %377 = fsub fast float %374, %23
  %378 = fadd fast float %377, %370
  %379 = fsub fast float %375, %24
  %380 = fadd fast float %379, %371
  %381 = fsub fast float %376, %25
  %382 = fadd fast float %381, %372
  %383 = fmul fast float %26, %26
  %384 = call float @dx.op.dot3.f32(i32 55, float %378, float %380, float %382, float %378, float %380, float %382)  ; Dot3(ax,ay,az,bx,by,bz)
  %385 = fsub fast float %383, %384
  %386 = fmul fast float %283, %383
  %387 = fmul fast float %282, %383
  %388 = fcmp fast olt float %385, %386
  %389 = fcmp fast ogt float %385, %387
  %390 = or i1 %388, %389
  %391 = select i1 %390, float 0.000000e+00, float %385
  %392 = fsub fast float %282, %283
  %393 = fmul fast float %392, %383
  %394 = fsub fast float %391, %386
  %395 = fdiv fast float %394, %393
  %396 = call float @dx.op.unary.f32(i32 7, float %395)  ; Saturate(value)
  %397 = fmul fast float %396, 2.000000e+00
  %398 = fsub fast float 3.000000e+00, %397
  %399 = fmul fast float %396, %396
  %400 = fmul fast float %399, %398
  %401 = fsub fast float %290, %296
  %402 = fmul fast float %400, %401
  %403 = fadd fast float %402, %296
  %404 = fmul fast float %287, %27
  %405 = fmul fast float %288, %28
  %406 = fmul fast float %289, %29
  %407 = fsub fast float %404, %293
  %408 = fsub fast float %405, %294
  %409 = fsub fast float %406, %295
  %410 = fmul fast float %400, %407
  %411 = fmul fast float %400, %408
  %412 = fmul fast float %400, %409
  %413 = fadd fast float %410, %293
  %414 = fadd fast float %411, %294
  %415 = fadd fast float %412, %295
  %416 = fmul fast float %276, %276
  %417 = fmul fast float %416, %391
  br label %513

; <label>:418                                     ; preds = %273
  %419 = and i32 %298, 256
  %420 = icmp eq i32 %419, 0
  %421 = fsub fast float %340, %43
  br i1 %420, label %470, label %422

; <label>:422                                     ; preds = %418
  %423 = fadd fast float %282, %43
  %424 = fcmp fast olt float %340, %43
  %425 = fcmp fast ogt float %340, %423
  %426 = or i1 %424, %425
  %427 = select i1 %426, float 0.000000e+00, float %421
  %428 = call float @dx.op.unary.f32(i32 83, float %340)  ; DerivCoarseX(value)
  %429 = call float @dx.op.unary.f32(i32 84, float %340)  ; DerivCoarseY(value)
  %430 = fmul fast float %428, %428
  %431 = fmul fast float %429, %429
  %432 = fadd fast float %431, %430
  %433 = call float @dx.op.unary.f32(i32 24, float %432)  ; Sqrt(value)
  %434 = extractvalue %dx.types.CBufRet.f32 %320, 2
  %435 = fmul fast float %434, %433
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = fmul fast float %436, %283
  %438 = fdiv fast float %421, %437
  %439 = call float @dx.op.unary.f32(i32 7, float %438)  ; Saturate(value)
  %440 = fmul fast float %439, 2.000000e+00
  %441 = fsub fast float 3.000000e+00, %440
  %442 = fmul fast float %439, %439
  %443 = fmul fast float %442, %441
  %444 = fsub fast float %340, %423
  %445 = fadd fast float %444, %437
  %446 = fdiv fast float %445, %437
  %447 = call float @dx.op.unary.f32(i32 7, float %446)  ; Saturate(value)
  %448 = fmul fast float %447, 2.000000e+00
  %449 = fsub fast float 3.000000e+00, %448
  %450 = fmul fast float %447, %447
  %451 = fmul fast float %450, %449
  %452 = fsub fast float %443, %451
  %453 = fsub fast float %290, %296
  %454 = fmul fast float %452, %453
  %455 = fadd fast float %454, %296
  %456 = fmul fast float %287, %27
  %457 = fmul fast float %288, %28
  %458 = fmul fast float %289, %29
  %459 = fsub fast float %456, %293
  %460 = fsub fast float %457, %294
  %461 = fsub fast float %458, %295
  %462 = fmul fast float %452, %459
  %463 = fmul fast float %452, %460
  %464 = fmul fast float %452, %461
  %465 = fadd fast float %462, %293
  %466 = fadd fast float %463, %294
  %467 = fadd fast float %464, %295
  %468 = fmul fast float %427, %276
  %469 = call float @dx.op.unary.f32(i32 6, float %468)  ; FAbs(value)
  br label %513

; <label>:470                                     ; preds = %418
  br i1 %301, label %471, label %484

; <label>:471                                     ; preds = %470
  %472 = fdiv fast float 5.000000e+01, %26
  %473 = select i1 %303, float %472, float 1.000000e+00
  %474 = fmul fast float %473, %276
  %475 = fmul fast float %37, 2.000000e+00
  %476 = fmul fast float %38, 2.000000e+00
  %477 = fadd fast float %475, -1.000000e+00
  %478 = fadd fast float %476, -1.000000e+00
  %479 = call float @dx.op.dot2.f32(i32 54, float %477, float %478, float %477, float %478)  ; Dot2(ax,ay,bx,by)
  %480 = fmul fast float %284, %26
  %481 = fmul fast float %480, %479
  %482 = fsub fast float %421, %481
  %483 = fmul fast float %474, %482
  br label %513

; <label>:484                                     ; preds = %470
  br i1 %305, label %505, label %485

; <label>:485                                     ; preds = %484
  %486 = fmul fast float %26, 0x3F947AE140000000
  %487 = select i1 %303, float %486, float 1.000000e+00
  %488 = fdiv fast float 1.000000e+00, %487
  %489 = fmul fast float %487, %277
  %490 = fmul fast float %487, %278
  %491 = fmul fast float %488, %279
  %492 = call float @dx.op.unary.f32(i32 6, float %421)  ; FAbs(value)
  %493 = fcmp fast olt float %492, %489
  br i1 %493, label %494, label %498, !dx.controlflow.hints !62

; <label>:494                                     ; preds = %485
  %495 = fmul fast float %488, %276
  %496 = fmul fast float %495, %492
  %497 = call float @dx.op.unary.f32(i32 6, float %496)  ; FAbs(value)
  br label %513

; <label>:498                                     ; preds = %485
  %499 = fcmp fast ogt float %492, %490
  br i1 %499, label %500, label %513

; <label>:500                                     ; preds = %498
  %501 = fsub fast float %492, %490
  %502 = fmul fast float %491, %501
  %503 = call float @dx.op.unary.f32(i32 6, float %502)  ; FAbs(value)
  %504 = fsub fast float 1.000000e+00, %503
  br label %513

; <label>:505                                     ; preds = %484
  %506 = fdiv fast float 5.000000e+01, %26
  %507 = select i1 %303, float %506, float 1.000000e+00
  %508 = fmul fast float %507, %276
  %509 = call float @dx.op.unary.f32(i32 6, float %252)  ; FAbs(value)
  %510 = select i1 %300, float %509, float 0x47EFFFFFE0000000
  %511 = call float @dx.op.binary.f32(i32 36, float %421, float %510)  ; FMin(a,b)
  %512 = fmul fast float %508, %511
  br label %513

; <label>:513                                     ; preds = %505, %500, %498, %494, %471, %422, %341
  %514 = phi float [ %417, %341 ], [ %469, %422 ], [ %483, %471 ], [ %512, %505 ], [ %497, %494 ], [ %504, %500 ], [ %492, %498 ]
  %515 = phi float [ %413, %341 ], [ %465, %422 ], [ %27, %471 ], [ %27, %505 ], [ %27, %494 ], [ %27, %500 ], [ %27, %498 ]
  %516 = phi float [ %414, %341 ], [ %466, %422 ], [ %28, %471 ], [ %28, %505 ], [ %28, %494 ], [ %28, %500 ], [ %28, %498 ]
  %517 = phi float [ %415, %341 ], [ %467, %422 ], [ %29, %471 ], [ %29, %505 ], [ %29, %494 ], [ %29, %500 ], [ %29, %498 ]
  %518 = phi float [ %403, %341 ], [ %455, %422 ], [ 1.000000e+00, %471 ], [ 1.000000e+00, %505 ], [ 1.000000e+00, %494 ], [ 1.000000e+00, %500 ], [ 1.000000e+00, %498 ]
  %519 = call float @dx.op.unary.f32(i32 7, float %514)  ; Saturate(value)
  %520 = fmul fast float %518, %231
  %521 = fmul fast float %520, %519
  br label %522

; <label>:522                                     ; preds = %513, %270
  %523 = phi float [ %521, %513 ], [ %231, %270 ]
  %524 = phi float [ %515, %513 ], [ %27, %270 ]
  %525 = phi float [ %516, %513 ], [ %28, %270 ]
  %526 = phi float [ %517, %513 ], [ %29, %270 ]
  %527 = fmul fast float %524, %30
  %528 = fmul fast float %525, %30
  %529 = fmul fast float %526, %30
  %530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.f32 %530, 2
  %532 = fptosi float %43 to i32
  %533 = sitofp i32 %532 to float
  %534 = fadd fast float %531, %533
  %535 = fmul fast float %534, 0x3FE3C6EF40000000
  %536 = frem fast float %48, 2.560000e+02
  %537 = frem fast float %49, 2.560000e+02
  %538 = fptoui float %536 to i32
  %539 = fptoui float %537 to i32
  %540 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %538, i32 %539, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = fadd fast float %541, %535
  %543 = call float @dx.op.unary.f32(i32 22, float %542)  ; Frc(value)
  %544 = and i32 %126, 1
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %602, label %546, !dx.controlflow.hints !63

; <label>:546                                     ; preds = %522
  %547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 2
  %549 = extractvalue %dx.types.ResRet.f32 %547, 3
  %550 = add i32 %123, 16
  %551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = extractvalue %dx.types.ResRet.f32 %551, 1
  %554 = extractvalue %dx.types.ResRet.f32 %551, 2
  %555 = add i32 %123, 32
  %556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.f32 %556, 0
  %558 = extractvalue %dx.types.ResRet.f32 %556, 1
  %559 = extractvalue %dx.types.ResRet.f32 %556, 2
  %560 = and i32 %126, 2
  %561 = icmp eq i32 %560, 0
  %562 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %563 = call float @dx.op.unary.f32(i32 25, float %562)  ; Rsqrt(value)
  %564 = fmul fast float %563, %33
  %565 = fmul fast float %563, %34
  %566 = fmul fast float %563, %35
  %567 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %568 = call float @dx.op.unary.f32(i32 25, float %567)  ; Rsqrt(value)
  %569 = fmul fast float %568, %83
  %570 = fmul fast float %568, %84
  %571 = fmul fast float %568, %85
  %572 = call float @dx.op.dot3.f32(i32 55, float %569, float %570, float %571, float %564, float %565, float %566)  ; Dot3(ax,ay,az,bx,by,bz)
  %573 = fmul fast float %572, %572
  %574 = fmul fast float %573, %548
  %575 = fadd fast float %574, %549
  %576 = call float @dx.op.unary.f32(i32 7, float %575)  ; Saturate(value)
  br i1 %561, label %577, label %587, !dx.controlflow.hints !64

; <label>:577                                     ; preds = %546
  %578 = extractvalue %dx.types.ResRet.f32 %547, 1
  %579 = extractvalue %dx.types.ResRet.f32 %547, 0
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 3
  %582 = fmul fast float %581, %567
  %583 = fsub fast float %579, %582
  %584 = fmul fast float %583, %578
  %585 = call float @dx.op.unary.f32(i32 7, float %584)  ; Saturate(value)
  %586 = fmul fast float %585, %576
  br label %587

; <label>:587                                     ; preds = %577, %546
  %588 = phi float [ %586, %577 ], [ %576, %546 ]
  %589 = fsub fast float %552, %557
  %590 = fsub fast float %553, %558
  %591 = fsub fast float %554, %559
  %592 = fmul fast float %588, %589
  %593 = fmul fast float %588, %590
  %594 = fmul fast float %588, %591
  %595 = fadd fast float %592, %557
  %596 = fadd fast float %593, %558
  %597 = fadd fast float %594, %559
  %598 = fmul fast float %595, %527
  %599 = fmul fast float %596, %528
  %600 = fmul fast float %597, %529
  %601 = fmul fast float %588, %523
  br label %602

; <label>:602                                     ; preds = %587, %522
  %603 = phi float [ %601, %587 ], [ %523, %522 ]
  %604 = phi float [ %598, %587 ], [ %527, %522 ]
  %605 = phi float [ %599, %587 ], [ %528, %522 ]
  %606 = phi float [ %600, %587 ], [ %529, %522 ]
  %607 = add i32 %22, 104
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = add i32 %609, 0
  %611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %611, %dx.types.Handle %44, float %201, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = add i32 %22, 44
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = shl i32 %618, 4
  %620 = and i32 %619, 32752
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = lshr i32 %618, 7
  %623 = and i32 %622, 32752
  %624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %623)  ; LegacyF16ToF32(value)
  %625 = lshr i32 %618, 22
  %626 = shl nuw nsw i32 %625, 5
  %627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %626)  ; LegacyF16ToF32(value)
  %628 = fmul fast float %621, %613
  %629 = fmul fast float %624, %614
  %630 = fmul fast float %627, %615
  %631 = add i32 %22, 48
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = lshr i32 %633, 22
  %635 = shl nuw nsw i32 %634, 5
  %636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %635)  ; LegacyF16ToF32(value)
  %637 = fmul fast float %636, %628
  %638 = select i1 %106, float %637, float %628
  %639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %31, float %32, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %644 = extractvalue %dx.types.CBufRet.f32 %643, 1
  %645 = fmul fast float %638, %604
  %646 = fmul fast float %629, %605
  %647 = fmul fast float %630, %606
  %648 = call float @dx.op.dot3.f32(i32 55, float %645, float %646, float %647, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %649 = select i1 %106, float 0.000000e+00, float %645
  %650 = select i1 %106, float %648, float %646
  %651 = select i1 %106, float 0.000000e+00, float %647
  %652 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %8, i32 0, i32 %234, i32 %235, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = lshr i32 %653, 18
  %655 = uitofp i32 %654 to float
  %656 = fmul fast float %655, 0x3F4C00EBA0000000
  %657 = call float @dx.op.unary.f32(i32 21, float %656)  ; Exp(value)
  %658 = fadd fast float %657, -1.000000e+00
  %659 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %8, i32 0)  ; GetDimensions(handle,mipLevel)
  %660 = extractvalue %dx.types.Dimensions %659, 0
  %661 = sitofp i32 %660 to float
  %662 = extractvalue %dx.types.Dimensions %659, 1
  %663 = sitofp i32 %662 to float
  %664 = fcmp fast oge float %232, %661
  %665 = fcmp fast oge float %233, %663
  %666 = or i1 %664, %665
  %667 = select i1 %666, float 0x4197782600000000, float %658
  %668 = icmp eq i32 %122, 3
  %669 = fcmp fast ogt float %43, %667
  %670 = and i1 %258, %669
  %671 = or i1 %668, %670
  %672 = icmp eq i32 %122, 2
  %673 = fcmp fast ole float %43, %667
  %674 = and i1 %672, %673
  %675 = or i1 %674, %671
  %676 = fmul fast float %524, %36
  %677 = fmul fast float %676, %638
  %678 = fmul fast float %677, %640
  %679 = fmul fast float %678, %644
  %680 = fmul fast float %525, %36
  %681 = fmul fast float %680, %629
  %682 = fmul fast float %681, %641
  %683 = fmul fast float %682, %644
  %684 = fmul fast float %526, %36
  %685 = fmul fast float %684, %630
  %686 = fmul fast float %685, %642
  %687 = fmul fast float %686, %644
  %688 = fadd fast float %679, %649
  %689 = fadd fast float %650, %683
  %690 = fadd fast float %687, %651
  %691 = fmul fast float %688, %603
  %692 = fmul fast float %689, %603
  %693 = fmul fast float %690, %603
  %694 = and i32 %126, 1048576
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %787, label %696, !dx.controlflow.hints !65

; <label>:696                                     ; preds = %602
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 2
  %699 = extractvalue %dx.types.CBufRet.f32 %697, 3
  %700 = fmul fast float %698, %48
  %701 = fmul fast float %699, %49
  %702 = call float @dx.op.unary.f32(i32 7, float %700)  ; Saturate(value)
  %703 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %704 = select i1 %675, i32 2, i32 0
  %705 = or i32 %704, 1
  %706 = uitofp i32 %705 to float
  %707 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %702, float %703, float %706, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %708 = extractvalue %dx.types.ResRet.f32 %707, 0
  %709 = extractvalue %dx.types.ResRet.f32 %707, 1
  %710 = extractvalue %dx.types.ResRet.f32 %707, 2
  %711 = extractvalue %dx.types.ResRet.f32 %707, 3
  %712 = add nuw nsw i32 %704, 2
  %713 = uitofp i32 %712 to float
  %714 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %702, float %703, float %713, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %715 = extractvalue %dx.types.ResRet.f32 %714, 0
  %716 = extractvalue %dx.types.ResRet.f32 %714, 1
  %717 = extractvalue %dx.types.ResRet.f32 %714, 2
  %718 = extractvalue %dx.types.ResRet.f32 %714, 3
  %719 = call float @dx.op.binary.f32(i32 35, float %709, float %710)  ; FMax(a,b)
  %720 = call float @dx.op.binary.f32(i32 35, float %708, float %719)  ; FMax(a,b)
  %721 = call float @dx.op.binary.f32(i32 35, float %720, float %711)  ; FMax(a,b)
  %722 = call float @dx.op.binary.f32(i32 36, float %716, float %717)  ; FMin(a,b)
  %723 = call float @dx.op.binary.f32(i32 36, float %715, float %722)  ; FMin(a,b)
  %724 = call float @dx.op.binary.f32(i32 36, float %723, float %718)  ; FMin(a,b)
  %725 = fmul fast float %721, 2.550000e+02
  %726 = fadd fast float %725, 0x3F70101020000000
  %727 = fptoui float %726 to i32
  %728 = fmul fast float %724, 2.550000e+02
  %729 = fadd fast float %728, 0x3F70101020000000
  %730 = fptoui float %729 to i32
  %731 = icmp ult i32 %727, %730
  br i1 %731, label %732, label %780

; <label>:732                                     ; preds = %696
  %733 = fcmp fast ogt float %42, 9.843750e-01
  %734 = fadd fast float %43, -4.000000e+00
  %735 = select i1 %733, float -4.000000e+00, float %734
  %736 = call float @dx.op.binary.f32(i32 35, float %735, float 0.000000e+00)  ; FMax(a,b)
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 0
  %739 = fadd fast float %738, %736
  %740 = extractvalue %dx.types.CBufRet.f32 %737, 2
  %741 = fmul fast float %739, %740
  %742 = call float @dx.op.unary.f32(i32 23, float %741)  ; Log(value)
  %743 = extractvalue %dx.types.CBufRet.f32 %737, 3
  %744 = fmul fast float %743, %742
  %745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %746 = extractvalue %dx.types.CBufRet.f32 %745, 2
  %747 = fmul fast float %744, %746
  %748 = call float @dx.op.unary.f32(i32 7, float %747)  ; Saturate(value)
  %749 = uitofp i32 %727 to float
  %750 = uitofp i32 %730 to float
  %751 = fadd fast float %749, 5.000000e-01
  %752 = fadd fast float %750, 5.000000e-01
  %753 = fmul fast float %746, %751
  %754 = fmul fast float %746, %752
  %755 = fadd fast float %753, 0x3F0FFB4800000000
  %756 = fadd fast float %754, 0xBF0FFB4800000000
  %757 = call float @dx.op.binary.f32(i32 35, float %748, float %755)  ; FMax(a,b)
  %758 = call float @dx.op.binary.f32(i32 36, float %757, float %756)  ; FMin(a,b)
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 1
  %761 = extractvalue %dx.types.CBufRet.f32 %759, 2
  %762 = extractvalue %dx.types.CBufRet.f32 %759, 0
  %763 = select i1 %675, float %762, float 0.000000e+00
  %764 = fmul fast float %760, %758
  %765 = fadd fast float %763, %764
  %766 = fadd fast float %763, %761
  %767 = fsub fast float %760, %761
  %768 = fadd fast float %767, %763
  %769 = call float @dx.op.binary.f32(i32 35, float %765, float %766)  ; FMax(a,b)
  %770 = call float @dx.op.binary.f32(i32 36, float %769, float %768)  ; FMin(a,b)
  %771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %16, float %702, float %703, float %770, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %776 = extractvalue %dx.types.CBufRet.f32 %775, 1
  %777 = fmul fast float %776, %772
  %778 = fmul fast float %776, %773
  %779 = fmul fast float %776, %774
  br label %780

; <label>:780                                     ; preds = %732, %696
  %781 = phi float [ %777, %732 ], [ 1.000000e+00, %696 ]
  %782 = phi float [ %778, %732 ], [ 1.000000e+00, %696 ]
  %783 = phi float [ %779, %732 ], [ 1.000000e+00, %696 ]
  %784 = fmul fast float %781, %691
  %785 = fmul fast float %782, %692
  %786 = fmul fast float %783, %693
  br label %787

; <label>:787                                     ; preds = %780, %602
  %788 = phi float [ %784, %780 ], [ %691, %602 ]
  %789 = phi float [ %785, %780 ], [ %692, %602 ]
  %790 = phi float [ %786, %780 ], [ %693, %602 ]
  %791 = and i32 %126, 2097152
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %797, label %793, !dx.controlflow.hints !66

; <label>:793                                     ; preds = %787
  %794 = add i32 %123, 192
  %795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %794, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  br label %800

; <label>:797                                     ; preds = %787
  %798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %799 = extractvalue %dx.types.CBufRet.f32 %798, 3
  br label %800

; <label>:800                                     ; preds = %797, %793
  %801 = phi float [ %796, %793 ], [ %799, %797 ]
  br i1 %670, label %802, label %886

; <label>:802                                     ; preds = %800
  %803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %804 = extractvalue %dx.types.CBufRet.f32 %803, 2
  %805 = extractvalue %dx.types.CBufRet.f32 %803, 3
  %806 = fmul fast float %804, %48
  %807 = fmul fast float %805, %49
  %808 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  %809 = call float @dx.op.unary.f32(i32 7, float %807)  ; Saturate(value)
  %810 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %808, float %809, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = extractvalue %dx.types.ResRet.f32 %810, 2
  %814 = extractvalue %dx.types.ResRet.f32 %810, 3
  %815 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %808, float %809, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = extractvalue %dx.types.ResRet.f32 %815, 1
  %818 = extractvalue %dx.types.ResRet.f32 %815, 2
  %819 = extractvalue %dx.types.ResRet.f32 %815, 3
  %820 = call float @dx.op.binary.f32(i32 35, float %812, float %813)  ; FMax(a,b)
  %821 = call float @dx.op.binary.f32(i32 35, float %811, float %820)  ; FMax(a,b)
  %822 = call float @dx.op.binary.f32(i32 35, float %821, float %814)  ; FMax(a,b)
  %823 = call float @dx.op.binary.f32(i32 36, float %817, float %818)  ; FMin(a,b)
  %824 = call float @dx.op.binary.f32(i32 36, float %816, float %823)  ; FMin(a,b)
  %825 = call float @dx.op.binary.f32(i32 36, float %824, float %819)  ; FMin(a,b)
  %826 = fmul fast float %822, 2.550000e+02
  %827 = fadd fast float %826, 0x3F70101020000000
  %828 = fptoui float %827 to i32
  %829 = fmul fast float %825, 2.550000e+02
  %830 = fadd fast float %829, 0x3F70101020000000
  %831 = fptoui float %830 to i32
  %832 = icmp ult i32 %828, %831
  br i1 %832, label %833, label %875

; <label>:833                                     ; preds = %802
  %834 = fcmp fast ogt float %42, 9.843750e-01
  %835 = fadd fast float %43, -4.000000e+00
  %836 = select i1 %834, float -4.000000e+00, float %835
  %837 = call float @dx.op.binary.f32(i32 35, float %836, float 0.000000e+00)  ; FMax(a,b)
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %840 = fadd fast float %839, %837
  %841 = extractvalue %dx.types.CBufRet.f32 %838, 2
  %842 = fmul fast float %840, %841
  %843 = call float @dx.op.unary.f32(i32 23, float %842)  ; Log(value)
  %844 = extractvalue %dx.types.CBufRet.f32 %838, 3
  %845 = fmul fast float %844, %843
  %846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %847 = extractvalue %dx.types.CBufRet.f32 %846, 2
  %848 = fmul fast float %845, %847
  %849 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %850 = uitofp i32 %828 to float
  %851 = uitofp i32 %831 to float
  %852 = fadd fast float %850, 5.000000e-01
  %853 = fadd fast float %851, 5.000000e-01
  %854 = fmul fast float %847, %852
  %855 = fmul fast float %847, %853
  %856 = fadd fast float %854, 0x3F0FFB4800000000
  %857 = fadd fast float %855, 0xBF0FFB4800000000
  %858 = call float @dx.op.binary.f32(i32 35, float %849, float %856)  ; FMax(a,b)
  %859 = call float @dx.op.binary.f32(i32 36, float %858, float %857)  ; FMin(a,b)
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 1
  %862 = extractvalue %dx.types.CBufRet.f32 %860, 2
  %863 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %864 = fmul fast float %861, %859
  %865 = fadd fast float %863, %864
  %866 = fadd fast float %863, %862
  %867 = fsub fast float %861, %862
  %868 = fadd fast float %867, %863
  %869 = call float @dx.op.binary.f32(i32 35, float %865, float %866)  ; FMax(a,b)
  %870 = call float @dx.op.binary.f32(i32 36, float %869, float %868)  ; FMin(a,b)
  %871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %808, float %809, float %870, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %872 = extractvalue %dx.types.ResRet.f32 %871, 0
  %873 = extractvalue %dx.types.ResRet.f32 %871, 1
  %874 = extractvalue %dx.types.ResRet.f32 %871, 2
  br label %875

; <label>:875                                     ; preds = %833, %802
  %876 = phi float [ %872, %833 ], [ 1.000000e+00, %802 ]
  %877 = phi float [ %873, %833 ], [ 1.000000e+00, %802 ]
  %878 = phi float [ %874, %833 ], [ 1.000000e+00, %802 ]
  %879 = call float @dx.op.dot3.f32(i32 55, float %876, float %877, float %878, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %880 = select i1 %106, float %879, float %876
  %881 = select i1 %106, float %879, float %877
  %882 = select i1 %106, float 1.000000e+00, float %878
  %883 = fmul fast float %880, %788
  %884 = fmul fast float %881, %789
  %885 = fmul fast float %882, %790
  br label %886

; <label>:886                                     ; preds = %875, %800
  %887 = phi float [ %667, %875 ], [ %43, %800 ]
  %888 = phi float [ %883, %875 ], [ %788, %800 ]
  %889 = phi float [ %884, %875 ], [ %789, %800 ]
  %890 = phi float [ %885, %875 ], [ %790, %800 ]
  br i1 %675, label %1131, label %891

; <label>:891                                     ; preds = %886
  %892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %31, float %32, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = extractvalue %dx.types.ResRet.f32 %892, 1
  %895 = extractvalue %dx.types.ResRet.f32 %892, 2
  %896 = call float @dx.op.dot3.f32(i32 55, float %893, float %894, float %895, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %897 = select i1 %106, float %896, float %893
  %898 = select i1 %106, float %896, float %894
  %899 = select i1 %106, float 1.000000e+00, float %895
  %900 = fmul fast float %897, %888
  %901 = fmul fast float %898, %889
  %902 = fmul fast float %899, %890
  %903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.i32 %903, 0
  %905 = icmp eq i32 %904, 0
  br i1 %905, label %1131, label %906, !dx.controlflow.hints !67

; <label>:906                                     ; preds = %891
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 2
  %909 = extractvalue %dx.types.CBufRet.f32 %907, 3
  %910 = fmul fast float %908, %48
  %911 = fmul fast float %909, %49
  %912 = fmul fast float %910, 2.000000e+00
  %913 = fmul fast float %911, 2.000000e+00
  %914 = fsub fast float 1.000000e+00, %912
  %915 = fsub fast float 1.000000e+00, %913
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 0
  %918 = extractvalue %dx.types.CBufRet.f32 %916, 1
  %919 = extractvalue %dx.types.CBufRet.f32 %916, 2
  %920 = fmul fast float %914, %917
  %921 = fmul fast float %914, %918
  %922 = fmul fast float %914, %919
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %925 = extractvalue %dx.types.CBufRet.f32 %923, 1
  %926 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %927 = fmul fast float %915, %924
  %928 = fmul fast float %915, %925
  %929 = fmul fast float %915, %926
  %930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %931 = extractvalue %dx.types.CBufRet.f32 %930, 0
  %932 = extractvalue %dx.types.CBufRet.f32 %930, 1
  %933 = extractvalue %dx.types.CBufRet.f32 %930, 2
  %934 = fadd fast float %927, %931
  %935 = fadd fast float %934, %920
  %936 = fadd fast float %928, %932
  %937 = fadd fast float %936, %921
  %938 = fadd fast float %929, %933
  %939 = fadd fast float %938, %922
  %940 = fmul fast float %935, %887
  %941 = fmul fast float %937, %887
  %942 = fmul fast float %939, %887
  %943 = fmul fast float %940, %940
  %944 = fmul fast float %941, %941
  %945 = fadd fast float %943, %944
  %946 = fmul fast float %942, %942
  %947 = fadd fast float %945, %946
  %948 = call float @dx.op.unary.f32(i32 24, float %947)  ; Sqrt(value)
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = fsub fast float %948, %950
  %952 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %953 = fmul fast float %951, %952
  %954 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  %955 = fadd fast float %954, -5.000000e-01
  %956 = fmul fast float %955, 2.000000e+00
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 2
  %959 = call float @dx.op.binary.f32(i32 36, float %958, float %956)  ; FMin(a,b)
  %960 = fsub fast float -0.000000e+00, %958
  %961 = fcmp fast ogt float %959, %960
  br i1 %961, label %962, label %1131, !dx.controlflow.hints !68

; <label>:962                                     ; preds = %906
  %963 = fmul fast float %959, 5.000000e-01
  %964 = fadd fast float %963, 5.000000e-01
  %965 = call float @dx.op.unary.f32(i32 22, float %964)  ; Frc(value)
  %966 = call float @dx.op.unary.f32(i32 27, float %965)  ; Round_ni(value)
  %967 = call float @dx.op.unary.f32(i32 22, float %965)  ; Frc(value)
  %968 = fmul fast float %967, 2.000000e+00
  %969 = fadd fast float %968, -1.000000e+00
  %970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %17, float %910, float %911, float %966, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 0
  %972 = extractvalue %dx.types.ResRet.f32 %970, 1
  %973 = extractvalue %dx.types.ResRet.f32 %970, 2
  %974 = extractvalue %dx.types.ResRet.f32 %970, 3
  %975 = fadd fast float %971, -5.000000e-01
  %976 = fadd fast float %973, -5.000000e-01
  %977 = fmul fast float %975, 0xBFD5555560000000
  %978 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %976, float %977)  ; FMad(a,b,c)
  %979 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %972, float 0.000000e+00)  ; FMad(a,b,c)
  %980 = fadd fast float %979, %974
  %981 = fmul fast float %975, -7.500000e-01
  %982 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %976, float %981)  ; FMad(a,b,c)
  %983 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %972, float 0.000000e+00)  ; FMad(a,b,c)
  %984 = fadd fast float %983, %974
  %985 = call float @dx.op.binary.f32(i32 35, float %978, float -1.000000e+00)  ; FMax(a,b)
  %986 = call float @dx.op.binary.f32(i32 35, float %980, float -1.000000e+00)  ; FMax(a,b)
  %987 = call float @dx.op.binary.f32(i32 35, float %982, float -1.000000e+00)  ; FMax(a,b)
  %988 = call float @dx.op.binary.f32(i32 35, float %984, float -1.000000e+00)  ; FMax(a,b)
  %989 = call float @dx.op.binary.f32(i32 36, float %985, float 1.000000e+00)  ; FMin(a,b)
  %990 = call float @dx.op.binary.f32(i32 36, float %986, float 1.000000e+00)  ; FMin(a,b)
  %991 = call float @dx.op.binary.f32(i32 36, float %987, float 1.000000e+00)  ; FMin(a,b)
  %992 = call float @dx.op.binary.f32(i32 36, float %988, float 1.000000e+00)  ; FMin(a,b)
  %993 = fcmp fast olt float %989, 0x3FEFFF8020000000
  br i1 %993, label %994, label %1109, !dx.controlflow.hints !69

; <label>:994                                     ; preds = %962
  %995 = extractvalue %dx.types.CBufRet.f32 %957, 3
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = extractvalue %dx.types.CBufRet.f32 %996, 1
  %999 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %1000 = extractvalue %dx.types.CBufRet.f32 %996, 3
  %1001 = fsub fast float %997, %989
  %1002 = fsub fast float %998, %990
  %1003 = fsub fast float %999, %991
  %1004 = fsub fast float %1000, %992
  %1005 = fmul fast float %1001, %995
  %1006 = fmul fast float %1002, %995
  %1007 = fmul fast float %1003, %995
  %1008 = fmul fast float %1004, %995
  %1009 = fadd fast float %1005, %989
  %1010 = fadd fast float %1006, %990
  %1011 = fsub fast float -0.000000e+00, %1010
  %1012 = fadd fast float %1007, %991
  %1013 = fadd fast float %1008, %992
  %1014 = fmul fast float %1009, %1009
  %1015 = fsub fast float %1010, %1014
  %1016 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1015)  ; FMax(a,b)
  %1017 = fdiv fast float 1.000000e+00, %1016
  %1018 = fmul fast float %1010, %1009
  %1019 = fsub fast float %1012, %1018
  %1020 = fsub fast float %969, %1009
  %1021 = fmul fast float %969, %969
  %1022 = fsub fast float %1021, %1010
  %1023 = fmul fast float %1020, %1017
  %1024 = fmul fast float %1023, %1019
  %1025 = fsub fast float %1022, %1024
  %1026 = fmul fast float %1010, %1010
  %1027 = fsub fast float %1013, %1026
  %1028 = fmul fast float %1019, %1019
  %1029 = fmul fast float %1028, %1017
  %1030 = fsub fast float %1027, %1029
  %1031 = fdiv fast float %1025, %1030
  %1032 = fmul fast float %1019, %1031
  %1033 = fsub fast float %1020, %1032
  %1034 = fmul fast float %1033, %1017
  %1035 = fmul fast float %1034, %1009
  %1036 = fsub fast float 1.000000e+00, %1035
  %1037 = fmul fast float %1010, %1031
  %1038 = fsub fast float %1036, %1037
  %1039 = fmul fast float %1034, %1034
  %1040 = fmul fast float %1031, 4.000000e+00
  %1041 = fmul fast float %1040, %1038
  %1042 = fsub fast float %1039, %1041
  %1043 = call float @dx.op.unary.f32(i32 24, float %1042)  ; Sqrt(value)
  %1044 = fcmp fast oge float %1034, 0.000000e+00
  %1045 = fsub fast float -0.000000e+00, %1043
  %1046 = select i1 %1044, float %1045, float %1043
  %1047 = fsub fast float %1046, %1034
  %1048 = fdiv fast float %1047, %1031
  %1049 = fdiv fast float %1038, %1047
  %1050 = fmul fast float %1048, 5.000000e-01
  %1051 = fmul fast float %1049, 2.000000e+00
  %1052 = select i1 %1044, float %1050, float %1051
  %1053 = select i1 %1044, float %1051, float %1050
  %1054 = call float @dx.op.binary.f32(i32 35, float %1052, float %1053)  ; FMax(a,b)
  %1055 = call float @dx.op.binary.f32(i32 36, float %1052, float %1053)  ; FMin(a,b)
  %1056 = fcmp fast ogt float %969, %1055
  br i1 %1056, label %1057, label %1067

; <label>:1057                                    ; preds = %994
  %1058 = fsub fast float %969, %1055
  %1059 = fsub fast float %1054, %1055
  %1060 = fmul fast float %1058, %1059
  %1061 = fmul fast float %1054, %969
  %1062 = fadd fast float %1054, %969
  %1063 = fmul fast float %1062, %1009
  %1064 = fadd fast float %1061, %1010
  %1065 = fsub fast float %1064, %1063
  %1066 = fdiv fast float %1065, %1060
  br label %1067

; <label>:1067                                    ; preds = %1057, %994
  %1068 = phi float [ %1066, %1057 ], [ 0.000000e+00, %994 ]
  %1069 = fcmp fast ogt float %969, %1054
  %1070 = fsub fast float %969, %1054
  br i1 %1069, label %1071, label %1081

; <label>:1071                                    ; preds = %1067
  %1072 = fsub fast float %1054, %1055
  %1073 = fmul fast float %1072, %1070
  %1074 = fmul fast float %1055, %969
  %1075 = fadd fast float %1055, %969
  %1076 = fmul fast float %1075, %1009
  %1077 = fsub fast float %1011, %1074
  %1078 = fadd fast float %1077, %1076
  %1079 = fdiv fast float %1078, %1073
  %1080 = fadd fast float %1079, %1068
  br label %1081

; <label>:1081                                    ; preds = %1071, %1067
  %1082 = phi float [ %1080, %1071 ], [ %1068, %1067 ]
  %1083 = fsub fast float %969, %1055
  %1084 = fmul fast float %1083, %1070
  %1085 = fmul fast float %1055, %1054
  %1086 = fadd fast float %1055, %1054
  %1087 = fmul fast float %1086, %1009
  %1088 = fadd fast float %1085, %1010
  %1089 = fsub fast float %1088, %1087
  %1090 = fdiv fast float %1089, %1084
  %1091 = call float @dx.op.unary.f32(i32 7, float %1082)  ; Saturate(value)
  %1092 = fcmp fast oeq float %801, 0.000000e+00
  %1093 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %1094 = fcmp fast oeq float %1093, 0.000000e+00
  %1095 = or i1 %1092, %1094
  %1096 = fmul fast float %1093, 2.000000e+00
  %1097 = fadd fast float %958, %959
  %1098 = fdiv fast float %1097, %1096
  %1099 = call float @dx.op.unary.f32(i32 7, float %1098)  ; Saturate(value)
  %1100 = fmul fast float %1099, 2.000000e+00
  %1101 = fsub fast float 3.000000e+00, %1100
  %1102 = fmul fast float %1099, %1099
  %1103 = fmul fast float %1102, %1101
  %1104 = select i1 %1095, float 1.000000e+00, float %1103
  %1105 = fmul fast float %1090, %801
  %1106 = fadd fast float %1091, %1105
  %1107 = call float @dx.op.unary.f32(i32 7, float %1106)  ; Saturate(value)
  %1108 = fmul fast float %1104, %1107
  br label %1109

; <label>:1109                                    ; preds = %1081, %962
  %1110 = phi float [ %1108, %1081 ], [ 0.000000e+00, %962 ]
  %1111 = fsub fast float 1.000000e+00, %1110
  %1112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %910, float %911, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.i32 %1114, 2
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1122, label %1117

; <label>:1117                                    ; preds = %1109
  %1118 = call float @dx.op.unary.f32(i32 7, float %1110)  ; Saturate(value)
  %1119 = fadd fast float %1113, -1.000000e+00
  %1120 = fmul fast float %1118, %1119
  %1121 = fadd fast float %1120, 1.000000e+00
  br label %1122

; <label>:1122                                    ; preds = %1117, %1109
  %1123 = phi float [ %1121, %1117 ], [ %1111, %1109 ]
  %1124 = call float @dx.op.binary.f32(i32 35, float %1113, float %1123)  ; FMax(a,b)
  %1125 = call float @dx.op.dot3.f32(i32 55, float %1124, float %1124, float %1124, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1126 = select i1 %106, float %1125, float %1124
  %1127 = select i1 %106, float 1.000000e+00, float %1124
  %1128 = fmul fast float %1126, %900
  %1129 = fmul fast float %1126, %901
  %1130 = fmul fast float %1127, %902
  br label %1131

; <label>:1131                                    ; preds = %1122, %906, %891, %886
  %1132 = phi float [ %888, %886 ], [ %900, %891 ], [ %1128, %1122 ], [ %900, %906 ]
  %1133 = phi float [ %889, %886 ], [ %901, %891 ], [ %1129, %1122 ], [ %901, %906 ]
  %1134 = phi float [ %890, %886 ], [ %902, %891 ], [ %1130, %1122 ], [ %902, %906 ]
  %1135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1136 = extractvalue %dx.types.CBufRet.f32 %1135, 2
  %1137 = extractvalue %dx.types.CBufRet.f32 %1135, 3
  %1138 = fmul fast float %1136, %48
  %1139 = fmul fast float %1137, %49
  %1140 = call float @dx.op.unary.f32(i32 7, float %1138)  ; Saturate(value)
  %1141 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1142 = select i1 %675, i32 2, i32 0
  %1143 = or i32 %1142, 1
  %1144 = uitofp i32 %1143 to float
  %1145 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1140, float %1141, float %1144, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 0
  %1147 = extractvalue %dx.types.ResRet.f32 %1145, 1
  %1148 = extractvalue %dx.types.ResRet.f32 %1145, 2
  %1149 = extractvalue %dx.types.ResRet.f32 %1145, 3
  %1150 = add nuw nsw i32 %1142, 2
  %1151 = uitofp i32 %1150 to float
  %1152 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %17, float %1140, float %1141, float %1151, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.ResRet.f32 %1152, 1
  %1155 = extractvalue %dx.types.ResRet.f32 %1152, 2
  %1156 = extractvalue %dx.types.ResRet.f32 %1152, 3
  %1157 = call float @dx.op.binary.f32(i32 35, float %1147, float %1148)  ; FMax(a,b)
  %1158 = call float @dx.op.binary.f32(i32 35, float %1146, float %1157)  ; FMax(a,b)
  %1159 = call float @dx.op.binary.f32(i32 35, float %1158, float %1149)  ; FMax(a,b)
  %1160 = call float @dx.op.binary.f32(i32 36, float %1154, float %1155)  ; FMin(a,b)
  %1161 = call float @dx.op.binary.f32(i32 36, float %1153, float %1160)  ; FMin(a,b)
  %1162 = call float @dx.op.binary.f32(i32 36, float %1161, float %1156)  ; FMin(a,b)
  %1163 = fmul fast float %1159, 2.550000e+02
  %1164 = fadd fast float %1163, 0x3F70101020000000
  %1165 = fptoui float %1164 to i32
  %1166 = fmul fast float %1162, 2.550000e+02
  %1167 = fadd fast float %1166, 0x3F70101020000000
  %1168 = fptoui float %1167 to i32
  %1169 = icmp ult i32 %1165, %1168
  br i1 %1169, label %1170, label %1213

; <label>:1170                                    ; preds = %1131
  %1171 = fcmp fast ogt float %42, 9.843750e-01
  %1172 = fadd fast float %887, -4.000000e+00
  %1173 = select i1 %1171, float -4.000000e+00, float %1172
  %1174 = call float @dx.op.binary.f32(i32 35, float %1173, float 0.000000e+00)  ; FMax(a,b)
  %1175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1176 = extractvalue %dx.types.CBufRet.f32 %1175, 0
  %1177 = fadd fast float %1176, %1174
  %1178 = extractvalue %dx.types.CBufRet.f32 %1175, 2
  %1179 = fmul fast float %1177, %1178
  %1180 = call float @dx.op.unary.f32(i32 23, float %1179)  ; Log(value)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1175, 3
  %1182 = fmul fast float %1181, %1180
  %1183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1184 = extractvalue %dx.types.CBufRet.f32 %1183, 2
  %1185 = fmul fast float %1182, %1184
  %1186 = call float @dx.op.unary.f32(i32 7, float %1185)  ; Saturate(value)
  %1187 = uitofp i32 %1165 to float
  %1188 = uitofp i32 %1168 to float
  %1189 = fadd fast float %1187, 5.000000e-01
  %1190 = fadd fast float %1188, 5.000000e-01
  %1191 = fmul fast float %1184, %1189
  %1192 = fmul fast float %1184, %1190
  %1193 = fadd fast float %1191, 0x3F0FFB4800000000
  %1194 = fadd fast float %1192, 0xBF0FFB4800000000
  %1195 = call float @dx.op.binary.f32(i32 35, float %1186, float %1193)  ; FMax(a,b)
  %1196 = call float @dx.op.binary.f32(i32 36, float %1195, float %1194)  ; FMin(a,b)
  %1197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1198 = extractvalue %dx.types.CBufRet.f32 %1197, 1
  %1199 = extractvalue %dx.types.CBufRet.f32 %1197, 2
  %1200 = extractvalue %dx.types.CBufRet.f32 %1197, 0
  %1201 = select i1 %675, float %1200, float 0.000000e+00
  %1202 = fmul fast float %1198, %1196
  %1203 = fadd fast float %1201, %1202
  %1204 = fadd fast float %1201, %1199
  %1205 = fsub fast float %1198, %1199
  %1206 = fadd fast float %1205, %1201
  %1207 = call float @dx.op.binary.f32(i32 35, float %1203, float %1204)  ; FMax(a,b)
  %1208 = call float @dx.op.binary.f32(i32 36, float %1207, float %1206)  ; FMin(a,b)
  %1209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %1140, float %1141, float %1208, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 2
  br label %1213

; <label>:1213                                    ; preds = %1170, %1131
  %1214 = phi float [ %1210, %1170 ], [ 1.000000e+00, %1131 ]
  %1215 = phi float [ %1211, %1170 ], [ 1.000000e+00, %1131 ]
  %1216 = phi float [ %1212, %1170 ], [ 1.000000e+00, %1131 ]
  %1217 = call float @dx.op.dot3.f32(i32 55, float %1214, float %1215, float %1216, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1218 = select i1 %106, float %1217, float %1214
  %1219 = select i1 %106, float %1217, float %1215
  %1220 = fmul fast float %1218, %1132
  %1221 = fmul fast float %1219, %1133
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  br i1 %106, label %1224, label %1227

; <label>:1224                                    ; preds = %1213
  %1225 = fadd fast float %1220, %1221
  %1226 = fmul fast float %1223, %1225
  br label %1237

; <label>:1227                                    ; preds = %1213
  %1228 = fmul fast float %1216, %1134
  %1229 = fmul fast float %1223, %1220
  %1230 = fmul fast float %1223, %1221
  %1231 = fmul fast float %1228, %1223
  %1232 = call float @dx.op.binary.f32(i32 35, float %1230, float %1231)  ; FMax(a,b)
  %1233 = call float @dx.op.binary.f32(i32 35, float %1229, float %1232)  ; FMax(a,b)
  %1234 = call float @dx.op.binary.f32(i32 35, float %1233, float 0.000000e+00)  ; FMax(a,b)
  %1235 = fcmp fast ugt float %1234, 0x3F10000000000000
  br i1 %1235, label %1237, label %1236

; <label>:1236                                    ; preds = %1227
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %1237

; <label>:1237                                    ; preds = %1236, %1227, %1224
  %1238 = phi float [ %1226, %1224 ], [ %1229, %1236 ], [ %1229, %1227 ]
  %1239 = phi float [ 0.000000e+00, %1224 ], [ %1230, %1236 ], [ %1230, %1227 ]
  %1240 = phi float [ 0.000000e+00, %1224 ], [ %1231, %1236 ], [ %1231, %1227 ]
  %1241 = fadd fast float %543, 0x3FE3C6EF40000000
  %1242 = call float @dx.op.unary.f32(i32 22, float %1241)  ; Frc(value)
  %1243 = call float @dx.op.unary.f32(i32 23, float %1238)  ; Log(value)
  %1244 = fadd fast float %1243, -7.000000e+00
  %1245 = call float @dx.op.unary.f32(i32 21, float %1244)  ; Exp(value)
  %1246 = fmul fast float %1242, 2.000000e+00
  %1247 = fadd fast float %1246, -1.000000e+00
  %1248 = fmul fast float %1245, %1247
  %1249 = fcmp fast ogt float %1238, 0.000000e+00
  %1250 = select i1 %1249, float %1248, float 0.000000e+00
  %1251 = fadd fast float %1250, %1238
  %1252 = fadd fast float %543, 0x3FF3C6EF40000000
  %1253 = call float @dx.op.unary.f32(i32 22, float %1252)  ; Frc(value)
  %1254 = call float @dx.op.unary.f32(i32 23, float %1239)  ; Log(value)
  %1255 = fadd fast float %1254, -7.000000e+00
  %1256 = call float @dx.op.unary.f32(i32 21, float %1255)  ; Exp(value)
  %1257 = fmul fast float %1253, 2.000000e+00
  %1258 = fadd fast float %1257, -1.000000e+00
  %1259 = fmul fast float %1256, %1258
  %1260 = fcmp fast ogt float %1239, 0.000000e+00
  %1261 = select i1 %1260, float %1259, float 0.000000e+00
  %1262 = fadd fast float %1261, %1239
  %1263 = fadd fast float %543, 0x3FFDAA66E0000000
  %1264 = call float @dx.op.unary.f32(i32 22, float %1263)  ; Frc(value)
  %1265 = call float @dx.op.unary.f32(i32 23, float %1240)  ; Log(value)
  %1266 = fadd fast float %1265, -6.000000e+00
  %1267 = call float @dx.op.unary.f32(i32 21, float %1266)  ; Exp(value)
  %1268 = fmul fast float %1264, 2.000000e+00
  %1269 = fadd fast float %1268, -1.000000e+00
  %1270 = fmul fast float %1267, %1269
  %1271 = fcmp fast ogt float %1240, 0.000000e+00
  %1272 = select i1 %1271, float %1270, float 0.000000e+00
  %1273 = fadd fast float %1272, %1240
  %1274 = select i1 %106, float %1239, float %1262
  %1275 = select i1 %106, float %1240, float %1273
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %1276 = call float @dx.op.binary.f32(i32 36, float %1251, float 3.225500e+04)  ; FMin(a,b)
  %1277 = call float @dx.op.binary.f32(i32 36, float %1274, float 3.225500e+04)  ; FMin(a,b)
  %1278 = call float @dx.op.binary.f32(i32 36, float %1275, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %1276)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %1277)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %1278)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 77, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !20}
!20 = !{i32 0, i32 14}
!21 = !{i32 12, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!22 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i32 0, !7}
!23 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!24 = !{i32 15, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 46, i32 1, i32 4, i32 0, !7}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!33 = !{[33 x i32] [i32 31, i32 8, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !58}
!35 = !{!36, !54, null}
!36 = !{!37, !40, !42, !44, !46, !48, !50, !51, !53}
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
!50 = !{i32 6, !"QUAD_POSITION", i8 9, i8 0, !38, i8 1, i32 1, i8 4, i32 6, i8 0, !39}
!51 = !{i32 7, !"COLOR", i8 5, i8 0, !45, i8 1, i32 1, i8 3, i32 7, i8 0, !52}
!52 = !{i32 3, i32 5}
!53 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!54 = !{!55, !56}
!55 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!56 = !{i32 1, !"SV_Target", i8 9, i8 16, !57, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!57 = !{i32 1}
!58 = !{i32 0, i64 24}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 1}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 1}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 1}

