;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 2   xyzw        3     NONE   float   xyz 
; TEXCOORD                 3   xyzw        4     NONE   float   xyz 
; TEXCOORD                 5   xyz         5     NONE   float   xyz 
; TEXCOORD                 8   xyzw        6     NONE   float       
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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 04bee978a8abcde7e6311005fa8180f4
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
; TEXCOORD                 2        nointerpolation       
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
; Number of inputs: 32, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 7, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 28 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 21, 28 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 22, 28 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 28 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 28 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 28 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 28 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 28 }
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
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = alloca [3 x float], align 4
  %42 = alloca [3 x float], align 4
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = fmul fast float %46, %37
  %48 = fmul fast float %46, %38
  %49 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %50 = extractvalue %dx.types.CBufRet.f32 %49, 2
  %51 = extractvalue %dx.types.CBufRet.f32 %49, 3
  %52 = fmul fast float %47, 2.000000e+00
  %53 = fmul fast float %52, %50
  %54 = fmul fast float %48, 2.000000e+00
  %55 = fmul fast float %54, %51
  %56 = fsub fast float 1.000000e+00, %53
  %57 = fsub fast float 1.000000e+00, %55
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %61 = extractvalue %dx.types.CBufRet.f32 %58, 2
  %62 = fmul fast float %56, %59
  %63 = fmul fast float %56, %60
  %64 = fmul fast float %56, %61
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = extractvalue %dx.types.CBufRet.f32 %65, 1
  %68 = extractvalue %dx.types.CBufRet.f32 %65, 2
  %69 = fmul fast float %57, %66
  %70 = fmul fast float %57, %67
  %71 = fmul fast float %57, %68
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 1
  %75 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %76 = fadd fast float %69, %73
  %77 = fadd fast float %76, %62
  %78 = fadd fast float %70, %74
  %79 = fadd fast float %78, %63
  %80 = fadd fast float %71, %75
  %81 = fadd fast float %80, %64
  %82 = fmul fast float %77, %40
  %83 = fmul fast float %79, %40
  %84 = fmul fast float %81, %40
  %85 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.i32 %85, 3
  %87 = and i32 %86, 3
  %88 = icmp ne i32 %87, 0
  %89 = and i32 %86, 4
  %90 = icmp ne i32 %89, 0
  %91 = and i1 %88, %90
  br i1 %91, label %92, label %101

; <label>:92                                      ; preds = %0
  %93 = fmul fast float %51, %48
  %94 = fmul fast float %50, %47
  %95 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %94, float %93, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = fsub fast float 1.000000e+00, %96
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = fcmp fast olt float %97, %99
  br label %104

; <label>:101                                     ; preds = %0
  %102 = icmp eq i32 %89, 0
  %103 = and i1 %88, %102
  br label %104

; <label>:104                                     ; preds = %101, %92
  %105 = phi i1 [ %100, %92 ], [ %103, %101 ]
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 3
  %109 = fmul fast float %107, %47
  %110 = fmul fast float %108, %48
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = and i32 %112, 114688
  %114 = icmp ne i32 %113, 0
  %115 = select i1 %114, float %109, float 0.000000e+00
  %116 = select i1 %114, float %110, float 0.000000e+00
  %117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %18, float %115, float %116, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fmul fast float %118, 2.550000e+02
  %120 = fptoui float %119 to i32
  %121 = select i1 %114, i32 %120, i32 0
  %122 = mul i32 %21, 208
  %123 = add i32 %122, 188
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = and i32 %86, 114688
  %127 = and i32 %86, 8
  %128 = icmp ne i32 %127, 0
  %129 = or i1 %105, %128
  %130 = select i1 %129, i32 %126, i32 16384
  %131 = and i32 %130, %125
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

; <label>:133                                     ; preds = %104
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %134

; <label>:134                                     ; preds = %133, %104
  %135 = and i32 %125, 512
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %161, label %137

; <label>:137                                     ; preds = %134
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %141 = fmul fast float %139, %47
  %142 = fmul fast float %140, %48
  %143 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %144 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %145 = fdiv fast float %143, %144
  %146 = fcmp fast ogt float %145, 0x3FFC71C720000000
  br i1 %146, label %147, label %153

; <label>:147                                     ; preds = %137
  %148 = fdiv fast float 0x3FFC71C720000000, %145
  %149 = fmul fast float %148, %142
  %150 = fsub fast float 1.000000e+00, %148
  %151 = fmul fast float %150, 5.000000e-01
  %152 = fadd fast float %151, %149
  br label %161

; <label>:153                                     ; preds = %137
  %154 = fcmp fast olt float %145, 0x3FFC71C720000000
  br i1 %154, label %155, label %161

; <label>:155                                     ; preds = %153
  %156 = fmul fast float %141, 5.625000e-01
  %157 = fmul fast float %156, %145
  %158 = fmul fast float %145, 2.812500e-01
  %159 = fsub fast float 5.000000e-01, %158
  %160 = fadd fast float %159, %157
  br label %161

; <label>:161                                     ; preds = %155, %153, %147, %134
  %162 = phi float [ %31, %134 ], [ %141, %147 ], [ %160, %155 ], [ %141, %153 ]
  %163 = phi float [ %32, %134 ], [ %152, %147 ], [ %142, %155 ], [ %142, %153 ]
  %164 = fadd fast float %31, %28
  %165 = fadd fast float %32, %29
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = extractvalue %dx.types.ResRet.i32 %166, 1
  %169 = bitcast i32 %167 to float
  %170 = bitcast i32 %168 to float
  %171 = fmul fast float %169, %31
  %172 = fmul fast float %170, %32
  %173 = call float @dx.op.unary.f32(i32 22, float %171)  ; Frc(value)
  %174 = call float @dx.op.unary.f32(i32 22, float %172)  ; Frc(value)
  %175 = and i32 %125, 16
  %176 = icmp ne i32 %175, 0
  %177 = select i1 %176, float 1.000000e+00, float %36
  %178 = icmp eq i32 %175, 0
  br i1 %178, label %198, label %179, !dx.controlflow.hints !62

; <label>:179                                     ; preds = %161
  %180 = add i32 %122, 64
  %181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = fadd fast float %182, 1.000000e+00
  %184 = fmul fast float %183, %36
  %185 = fsub fast float %184, %182
  %186 = fsub fast float %183, %185
  %187 = call float @dx.op.unary.f32(i32 7, float %186)  ; Saturate(value)
  %188 = fsub fast float 1.000000e+00, %184
  %189 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %190 = fsub fast float %187, %189
  %191 = fsub fast float %177, %189
  %192 = fdiv fast float %191, %190
  %193 = call float @dx.op.unary.f32(i32 7, float %192)  ; Saturate(value)
  %194 = fmul fast float %193, 2.000000e+00
  %195 = fsub fast float 3.000000e+00, %194
  %196 = fmul fast float %193, %193
  %197 = fmul fast float %196, %195
  br label %198

; <label>:198                                     ; preds = %179, %161
  %199 = phi float [ %197, %179 ], [ %177, %161 ]
  %200 = fcmp fast ogt float %199, 0.000000e+00
  br i1 %200, label %202, label %201

; <label>:201                                     ; preds = %198
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %202

; <label>:202                                     ; preds = %201, %198
  %203 = call float @dx.op.unary.f32(i32 7, float %199)  ; Saturate(value)
  %204 = fmul fast float %47, 5.000000e-01
  %205 = fmul fast float %48, 5.000000e-01
  %206 = fptosi float %204 to i32
  %207 = fptosi float %205 to i32
  %208 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = lshr i32 %209, 18
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F4C00EBA0000000
  %213 = call float @dx.op.unary.f32(i32 21, float %212)  ; Exp(value)
  %214 = fadd fast float %213, -1.000000e+00
  %215 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %216 = extractvalue %dx.types.Dimensions %215, 0
  %217 = sitofp i32 %216 to float
  %218 = extractvalue %dx.types.Dimensions %215, 1
  %219 = sitofp i32 %218 to float
  %220 = fcmp fast oge float %204, %217
  %221 = fcmp fast oge float %205, %219
  %222 = or i1 %220, %221
  %223 = select i1 %222, float 0x4197782600000000, float %214
  %224 = fsub fast float %223, %40
  %225 = fcmp fast ogt float %224, 0.000000e+00
  %226 = and i32 %121, -2
  %227 = icmp eq i32 %226, 2
  %228 = and i1 %227, %225
  %229 = xor i1 %225, true
  %230 = icmp eq i32 %121, 1
  %231 = and i1 %230, %229
  %232 = or i1 %228, %231
  %233 = and i32 %125, 262144
  %234 = icmp ne i32 %233, 0
  %235 = and i1 %234, %232
  %236 = xor i1 %232, true
  %237 = and i32 %125, 131072
  %238 = icmp ne i32 %237, 0
  %239 = and i1 %238, %236
  %240 = or i1 %235, %239
  br i1 %240, label %241, label %242

; <label>:241                                     ; preds = %202
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %242

; <label>:242                                     ; preds = %241, %202
  %243 = and i32 %125, 32
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %484, label %245, !dx.controlflow.hints !63

; <label>:245                                     ; preds = %242
  %246 = add i32 %122, 80
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = extractvalue %dx.types.ResRet.f32 %247, 1
  %250 = extractvalue %dx.types.ResRet.f32 %247, 2
  %251 = extractvalue %dx.types.ResRet.f32 %247, 3
  %252 = add i32 %122, 96
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = extractvalue %dx.types.ResRet.f32 %253, 1
  %256 = extractvalue %dx.types.ResRet.f32 %253, 2
  %257 = add i32 %122, 112
  %258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = extractvalue %dx.types.ResRet.f32 %258, 1
  %261 = extractvalue %dx.types.ResRet.f32 %258, 2
  %262 = extractvalue %dx.types.ResRet.f32 %258, 3
  %263 = add i32 %122, 128
  %264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = extractvalue %dx.types.ResRet.f32 %264, 1
  %267 = extractvalue %dx.types.ResRet.f32 %264, 2
  %268 = extractvalue %dx.types.ResRet.f32 %264, 3
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 4096
  %272 = icmp ne i32 %271, 0
  %273 = fcmp fast une float %256, 0.000000e+00
  %274 = and i32 %270, 64
  %275 = icmp ne i32 %274, 0
  %276 = and i32 %270, 128
  %277 = icmp eq i32 %276, 0
  %278 = and i32 %270, 2048
  %279 = icmp eq i32 %278, 0
  %280 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %281 = extractvalue %dx.types.Dimensions %280, 0
  %282 = sitofp i32 %281 to float
  %283 = extractvalue %dx.types.Dimensions %280, 1
  %284 = sitofp i32 %283 to float
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 2
  %287 = extractvalue %dx.types.CBufRet.f32 %285, 3
  %288 = fmul fast float %286, %47
  %289 = fmul fast float %287, %48
  %290 = fmul fast float %288, %282
  %291 = fmul fast float %289, %284
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %294 = fsub fast float -0.000000e+00, %293
  %295 = fptoui float %294 to i32
  %296 = fptoui float %290 to i32
  %297 = fptoui float %291 to i32
  %298 = and i32 %295, 31
  %299 = lshr i32 %296, %298
  %300 = lshr i32 %297, %298
  %301 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %295, i32 %299, i32 %300, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %302 = extractvalue %dx.types.ResRet.f32 %301, 0
  %303 = fcmp fast ogt float %302, -1.000000e+00
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %306 = select i1 %303, float %305, float 1.000000e+00
  %307 = fadd fast float %302, 1.000000e+00
  %308 = fmul fast float %306, %307
  %309 = call float @dx.op.unary.f32(i32 6, float %308)  ; FAbs(value)
  %310 = extractvalue %dx.types.CBufRet.f32 %304, 3
  %311 = fcmp fast oge float %309, %310
  %312 = select i1 %311, float 0x4197782600000000, float %309
  br i1 %279, label %383, label %313, !dx.controlflow.hints !64

; <label>:313                                     ; preds = %245
  %314 = fmul fast float %52, %286
  %315 = fmul fast float %54, %287
  %316 = fsub fast float 1.000000e+00, %314
  %317 = fsub fast float 1.000000e+00, %315
  %318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %319 = extractvalue %dx.types.CBufRet.f32 %318, 0
  %320 = extractvalue %dx.types.CBufRet.f32 %318, 1
  %321 = extractvalue %dx.types.CBufRet.f32 %318, 2
  %322 = fmul fast float %316, %319
  %323 = fmul fast float %316, %320
  %324 = fmul fast float %316, %321
  %325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.f32 %325, 0
  %327 = extractvalue %dx.types.CBufRet.f32 %325, 1
  %328 = extractvalue %dx.types.CBufRet.f32 %325, 2
  %329 = fmul fast float %317, %326
  %330 = fmul fast float %317, %327
  %331 = fmul fast float %317, %328
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 0
  %334 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %335 = extractvalue %dx.types.CBufRet.f32 %332, 2
  %336 = fadd fast float %329, %333
  %337 = fadd fast float %336, %322
  %338 = fadd fast float %330, %334
  %339 = fadd fast float %338, %323
  %340 = fadd fast float %331, %335
  %341 = fadd fast float %340, %324
  %342 = fmul fast float %337, %312
  %343 = fmul fast float %339, %312
  %344 = fmul fast float %341, %312
  %345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %346 = extractvalue %dx.types.CBufRet.f32 %345, 0
  %347 = extractvalue %dx.types.CBufRet.f32 %345, 1
  %348 = extractvalue %dx.types.CBufRet.f32 %345, 2
  %349 = fadd fast float %342, %346
  %350 = fadd fast float %343, %347
  %351 = fadd fast float %344, %348
  %352 = call float @dx.op.dot3.f32(i32 55, float %349, float %350, float %351, float %349, float %350, float %351)  ; Dot3(ax,ay,az,bx,by,bz)
  %353 = fsub fast float 1.000000e+00, %352
  %354 = fcmp fast olt float %353, %255
  %355 = fcmp fast ogt float %353, %254
  %356 = or i1 %354, %355
  %357 = select i1 %356, float 0.000000e+00, float %353
  %358 = fsub fast float %254, %255
  %359 = fsub fast float %357, %255
  %360 = fdiv fast float %359, %358
  %361 = call float @dx.op.unary.f32(i32 7, float %360)  ; Saturate(value)
  %362 = fmul fast float %361, 2.000000e+00
  %363 = fsub fast float 3.000000e+00, %362
  %364 = fmul fast float %361, %361
  %365 = fmul fast float %364, %363
  %366 = fmul fast float %259, %33
  %367 = fmul fast float %260, %34
  %368 = fmul fast float %261, %35
  %369 = fsub fast float %366, %265
  %370 = fsub fast float %367, %266
  %371 = fsub fast float %368, %267
  %372 = fsub fast float %262, %268
  %373 = fmul fast float %365, %369
  %374 = fmul fast float %365, %370
  %375 = fmul fast float %365, %371
  %376 = fmul fast float %365, %372
  %377 = fadd fast float %373, %265
  %378 = fadd fast float %374, %266
  %379 = fadd fast float %375, %267
  %380 = fadd fast float %376, %268
  %381 = fmul fast float %248, %248
  %382 = fmul fast float %381, %357
  br label %474

; <label>:383                                     ; preds = %245
  %384 = and i32 %270, 256
  %385 = icmp eq i32 %384, 0
  %386 = fsub fast float %312, %40
  br i1 %385, label %435, label %387

; <label>:387                                     ; preds = %383
  %388 = fadd fast float %254, %40
  %389 = fcmp fast olt float %312, %40
  %390 = fcmp fast ogt float %312, %388
  %391 = or i1 %389, %390
  %392 = select i1 %391, float 0.000000e+00, float %386
  %393 = call float @dx.op.unary.f32(i32 83, float %312)  ; DerivCoarseX(value)
  %394 = call float @dx.op.unary.f32(i32 84, float %312)  ; DerivCoarseY(value)
  %395 = fmul fast float %393, %393
  %396 = fmul fast float %394, %394
  %397 = fadd fast float %396, %395
  %398 = call float @dx.op.unary.f32(i32 24, float %397)  ; Sqrt(value)
  %399 = extractvalue %dx.types.CBufRet.f32 %292, 2
  %400 = fmul fast float %399, %398
  %401 = call float @dx.op.unary.f32(i32 7, float %400)  ; Saturate(value)
  %402 = fmul fast float %401, %255
  %403 = fdiv fast float %386, %402
  %404 = call float @dx.op.unary.f32(i32 7, float %403)  ; Saturate(value)
  %405 = fmul fast float %404, 2.000000e+00
  %406 = fsub fast float 3.000000e+00, %405
  %407 = fmul fast float %404, %404
  %408 = fmul fast float %407, %406
  %409 = fsub fast float %312, %388
  %410 = fadd fast float %409, %402
  %411 = fdiv fast float %410, %402
  %412 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %413 = fmul fast float %412, 2.000000e+00
  %414 = fsub fast float 3.000000e+00, %413
  %415 = fmul fast float %412, %412
  %416 = fmul fast float %415, %414
  %417 = fsub fast float %408, %416
  %418 = fmul fast float %259, %33
  %419 = fmul fast float %260, %34
  %420 = fmul fast float %261, %35
  %421 = fsub fast float %418, %265
  %422 = fsub fast float %419, %266
  %423 = fsub fast float %420, %267
  %424 = fsub fast float %262, %268
  %425 = fmul fast float %417, %421
  %426 = fmul fast float %417, %422
  %427 = fmul fast float %417, %423
  %428 = fmul fast float %417, %424
  %429 = fadd fast float %425, %265
  %430 = fadd fast float %426, %266
  %431 = fadd fast float %427, %267
  %432 = fadd fast float %428, %268
  %433 = fmul fast float %392, %248
  %434 = call float @dx.op.unary.f32(i32 6, float %433)  ; FAbs(value)
  br label %474

; <label>:435                                     ; preds = %383
  br i1 %273, label %436, label %447

; <label>:436                                     ; preds = %435
  %437 = select i1 %275, float 5.000000e+01, float 1.000000e+00
  %438 = fmul fast float %437, %248
  %439 = fmul fast float %173, 2.000000e+00
  %440 = fmul fast float %174, 2.000000e+00
  %441 = fadd fast float %439, -1.000000e+00
  %442 = fadd fast float %440, -1.000000e+00
  %443 = call float @dx.op.dot2.f32(i32 54, float %441, float %442, float %441, float %442)  ; Dot2(ax,ay,bx,by)
  %444 = fmul fast float %443, %256
  %445 = fsub fast float %386, %444
  %446 = fmul fast float %438, %445
  br label %474

; <label>:447                                     ; preds = %435
  br i1 %277, label %467, label %448

; <label>:448                                     ; preds = %447
  %449 = select i1 %275, float 0x3F947AE140000000, float 1.000000e+00
  %450 = fdiv fast float 1.000000e+00, %449
  %451 = fmul fast float %449, %249
  %452 = fmul fast float %449, %250
  %453 = fmul fast float %450, %251
  %454 = call float @dx.op.unary.f32(i32 6, float %386)  ; FAbs(value)
  %455 = fcmp fast olt float %454, %451
  br i1 %455, label %456, label %460, !dx.controlflow.hints !65

; <label>:456                                     ; preds = %448
  %457 = fmul fast float %450, %248
  %458 = fmul fast float %457, %454
  %459 = call float @dx.op.unary.f32(i32 6, float %458)  ; FAbs(value)
  br label %474

; <label>:460                                     ; preds = %448
  %461 = fcmp fast ogt float %454, %452
  br i1 %461, label %462, label %474

; <label>:462                                     ; preds = %460
  %463 = fsub fast float %454, %452
  %464 = fmul fast float %453, %463
  %465 = call float @dx.op.unary.f32(i32 6, float %464)  ; FAbs(value)
  %466 = fsub fast float 1.000000e+00, %465
  br label %474

; <label>:467                                     ; preds = %447
  %468 = select i1 %275, float 5.000000e+01, float 1.000000e+00
  %469 = fmul fast float %468, %248
  %470 = call float @dx.op.unary.f32(i32 6, float %224)  ; FAbs(value)
  %471 = select i1 %272, float %470, float 0x47EFFFFFE0000000
  %472 = call float @dx.op.binary.f32(i32 36, float %386, float %471)  ; FMin(a,b)
  %473 = fmul fast float %469, %472
  br label %474

; <label>:474                                     ; preds = %467, %462, %460, %456, %436, %387, %313
  %475 = phi float [ %382, %313 ], [ %434, %387 ], [ %446, %436 ], [ %473, %467 ], [ %459, %456 ], [ %466, %462 ], [ %454, %460 ]
  %476 = phi float [ %377, %313 ], [ %429, %387 ], [ %33, %436 ], [ %33, %467 ], [ %33, %456 ], [ %33, %462 ], [ %33, %460 ]
  %477 = phi float [ %378, %313 ], [ %430, %387 ], [ %34, %436 ], [ %34, %467 ], [ %34, %456 ], [ %34, %462 ], [ %34, %460 ]
  %478 = phi float [ %379, %313 ], [ %431, %387 ], [ %35, %436 ], [ %35, %467 ], [ %35, %456 ], [ %35, %462 ], [ %35, %460 ]
  %479 = phi float [ %380, %313 ], [ %432, %387 ], [ 1.000000e+00, %436 ], [ 1.000000e+00, %467 ], [ 1.000000e+00, %456 ], [ 1.000000e+00, %462 ], [ 1.000000e+00, %460 ]
  %480 = call float @dx.op.unary.f32(i32 7, float %475)  ; Saturate(value)
  %481 = fmul fast float %480, %36
  %482 = fmul fast float %479, %203
  %483 = fmul fast float %482, %480
  br label %484

; <label>:484                                     ; preds = %474, %242
  %485 = phi float [ %476, %474 ], [ %33, %242 ]
  %486 = phi float [ %477, %474 ], [ %34, %242 ]
  %487 = phi float [ %478, %474 ], [ %35, %242 ]
  %488 = phi float [ %483, %474 ], [ %203, %242 ]
  %489 = phi float [ %481, %474 ], [ %36, %242 ]
  %490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %491 = extractvalue %dx.types.CBufRet.f32 %490, 2
  %492 = fptosi float %40 to i32
  %493 = sitofp i32 %492 to float
  %494 = fadd fast float %491, %493
  %495 = fmul fast float %494, 0x3FE3C6EF40000000
  %496 = frem fast float %47, 2.560000e+02
  %497 = frem fast float %48, 2.560000e+02
  %498 = fptoui float %496 to i32
  %499 = fptoui float %497 to i32
  %500 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %498, i32 %499, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  %502 = fadd fast float %501, %495
  %503 = call float @dx.op.unary.f32(i32 22, float %502)  ; Frc(value)
  %504 = and i32 %125, 1
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %563, label %506, !dx.controlflow.hints !66

; <label>:506                                     ; preds = %484
  %507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 2
  %509 = extractvalue %dx.types.ResRet.f32 %507, 3
  %510 = add i32 %122, 16
  %511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = extractvalue %dx.types.ResRet.f32 %511, 1
  %514 = extractvalue %dx.types.ResRet.f32 %511, 2
  %515 = add i32 %122, 32
  %516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  %518 = extractvalue %dx.types.ResRet.f32 %516, 1
  %519 = extractvalue %dx.types.ResRet.f32 %516, 2
  %520 = and i32 %125, 2
  %521 = icmp eq i32 %520, 0
  %522 = call float @dx.op.dot3.f32(i32 55, float %25, float %26, float %27, float %25, float %26, float %27)  ; Dot3(ax,ay,az,bx,by,bz)
  %523 = call float @dx.op.unary.f32(i32 25, float %522)  ; Rsqrt(value)
  %524 = fmul fast float %523, %25
  %525 = fmul fast float %523, %26
  %526 = fmul fast float %523, %27
  %527 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %528 = call float @dx.op.unary.f32(i32 25, float %527)  ; Rsqrt(value)
  %529 = fmul fast float %528, %82
  %530 = fmul fast float %528, %83
  %531 = fmul fast float %528, %84
  %532 = call float @dx.op.dot3.f32(i32 55, float %529, float %530, float %531, float %524, float %525, float %526)  ; Dot3(ax,ay,az,bx,by,bz)
  %533 = fmul fast float %532, %532
  %534 = fmul fast float %533, %508
  %535 = fadd fast float %534, %509
  %536 = call float @dx.op.unary.f32(i32 7, float %535)  ; Saturate(value)
  br i1 %521, label %537, label %547, !dx.controlflow.hints !67

; <label>:537                                     ; preds = %506
  %538 = extractvalue %dx.types.ResRet.f32 %507, 1
  %539 = extractvalue %dx.types.ResRet.f32 %507, 0
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %542 = fmul fast float %541, %527
  %543 = fsub fast float %539, %542
  %544 = fmul fast float %543, %538
  %545 = call float @dx.op.unary.f32(i32 7, float %544)  ; Saturate(value)
  %546 = fmul fast float %545, %536
  br label %547

; <label>:547                                     ; preds = %537, %506
  %548 = phi float [ %546, %537 ], [ %536, %506 ]
  %549 = fsub fast float %512, %517
  %550 = fsub fast float %513, %518
  %551 = fsub fast float %514, %519
  %552 = fmul fast float %548, %549
  %553 = fmul fast float %548, %550
  %554 = fmul fast float %548, %551
  %555 = fadd fast float %552, %517
  %556 = fadd fast float %553, %518
  %557 = fadd fast float %554, %519
  %558 = fmul fast float %555, %485
  %559 = fmul fast float %556, %486
  %560 = fmul fast float %557, %487
  %561 = fmul fast float %548, %488
  %562 = fmul fast float %548, %489
  br label %563

; <label>:563                                     ; preds = %547, %484
  %564 = phi float [ %558, %547 ], [ %485, %484 ]
  %565 = phi float [ %559, %547 ], [ %486, %484 ]
  %566 = phi float [ %560, %547 ], [ %487, %484 ]
  %567 = phi float [ %561, %547 ], [ %488, %484 ]
  %568 = phi float [ %562, %547 ], [ %489, %484 ]
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = add i32 %570, 0
  %572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %571, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %573 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %572, %dx.types.Handle %43, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = extractvalue %dx.types.ResRet.f32 %573, 1
  %576 = extractvalue %dx.types.ResRet.f32 %573, 2
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 255
  %580 = uitofp i32 %579 to float
  %581 = fmul fast float %580, 0x3F70101020000000
  %582 = lshr i32 %578, 8
  %583 = and i32 %582, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = lshr i32 %578, 16
  %587 = and i32 %586, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = fmul fast float %581, %581
  %591 = fmul fast float %590, %574
  %592 = fmul fast float %585, %585
  %593 = fmul fast float %592, %575
  %594 = fmul fast float %589, %589
  %595 = fmul fast float %594, %576
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = add i32 %597, 0
  %599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %599, %dx.types.Handle %43, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = extractvalue %dx.types.ResRet.f32 %600, 2
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = and i32 %605, 255
  %607 = uitofp i32 %606 to float
  %608 = fmul fast float %607, 0x3F70101020000000
  %609 = lshr i32 %605, 8
  %610 = and i32 %609, 255
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %611, 0x3F70101020000000
  %613 = lshr i32 %605, 16
  %614 = and i32 %613, 255
  %615 = uitofp i32 %614 to float
  %616 = fmul fast float %615, 0x3F70101020000000
  %617 = fmul fast float %608, %608
  %618 = fmul fast float %617, %601
  %619 = fmul fast float %612, %612
  %620 = fmul fast float %619, %602
  %621 = fmul fast float %616, %616
  %622 = fmul fast float %621, %603
  %623 = fsub fast float %618, %591
  %624 = fsub fast float %620, %593
  %625 = fsub fast float %622, %595
  %626 = fmul fast float %623, %30
  %627 = fmul fast float %624, %30
  %628 = fmul fast float %625, %30
  %629 = fadd fast float %626, %591
  %630 = fadd fast float %627, %593
  %631 = fadd fast float %628, %595
  %632 = fmul fast float %629, %564
  %633 = fmul fast float %630, %565
  %634 = fmul fast float %631, %566
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = and i32 %636, 255
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %638, 0x3F70101020000000
  %640 = fmul fast float %639, %639
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = add i32 %642, 0
  %644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %644, %dx.types.Handle %44, float %162, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %646 = extractvalue %dx.types.ResRet.f32 %645, 0
  %647 = fmul fast float %640, %646
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = and i32 %649, 255
  %651 = uitofp i32 %650 to float
  %652 = fmul fast float %651, 0x3F70101020000000
  %653 = fmul fast float %652, %652
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = add i32 %655, 0
  %657 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %656, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %658 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %657, %dx.types.Handle %44, float %164, float %165, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  %660 = fmul fast float %653, %659
  %661 = fsub fast float %660, %647
  %662 = fmul fast float %661, %30
  %663 = fadd fast float %662, %647
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 0
  %666 = fmul fast float %632, %665
  %667 = fmul fast float %633, %665
  %668 = fmul fast float %634, %665
  %669 = call float @dx.op.dot3.f32(i32 55, float %666, float %667, float %668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = and i32 %671, 255
  %673 = uitofp i32 %672 to float
  %674 = lshr i32 %671, 8
  %675 = and i32 %674, 255
  %676 = uitofp i32 %675 to float
  %677 = fmul fast float %676, %669
  %678 = fadd fast float %677, %673
  %679 = fmul fast float %678, 0x3F70101020000000
  %680 = call float @dx.op.unary.f32(i32 7, float %679)  ; Saturate(value)
  %681 = and i32 %125, 8192
  %682 = icmp eq i32 %681, 0
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 0
  br i1 %682, label %691, label %685, !dx.controlflow.hints !68

; <label>:685                                     ; preds = %563
  %686 = add i32 %122, 176
  %687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.f32 %687, 0
  %689 = fcmp fast oge float %688, 0.000000e+00
  %690 = select i1 %689, float %688, float %684
  br label %697

; <label>:691                                     ; preds = %563
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = bitcast i32 %693 to float
  %695 = fcmp fast oge float %694, 0.000000e+00
  %696 = select i1 %695, float %694, float %684
  br label %697

; <label>:697                                     ; preds = %691, %685
  %698 = phi float [ %690, %685 ], [ %696, %691 ]
  %699 = fsub fast float 1.000000e+00, %663
  %700 = fmul fast float %699, %568
  %701 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %206, i32 %207, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %702 = extractvalue %dx.types.ResRet.i32 %701, 0
  %703 = lshr i32 %702, 18
  %704 = uitofp i32 %703 to float
  %705 = fmul fast float %704, 0x3F4C00EBA0000000
  %706 = call float @dx.op.unary.f32(i32 21, float %705)  ; Exp(value)
  %707 = fadd fast float %706, -1.000000e+00
  %708 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %709 = extractvalue %dx.types.Dimensions %708, 0
  %710 = sitofp i32 %709 to float
  %711 = extractvalue %dx.types.Dimensions %708, 1
  %712 = sitofp i32 %711 to float
  %713 = fcmp fast oge float %204, %710
  %714 = fcmp fast oge float %205, %712
  %715 = or i1 %713, %714
  %716 = select i1 %715, float 0x4197782600000000, float %707
  %717 = fmul fast float %567, %22
  %718 = fmul fast float %567, %23
  %719 = fmul fast float %567, %24
  %720 = fadd fast float %663, -1.000000e+00
  %721 = fmul fast float %720, %567
  %722 = fadd fast float %721, 1.000000e+00
  %723 = call float @dx.op.dot3.f32(i32 55, float %722, float %722, float %722, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %724 = fsub fast float 1.000000e+00, %723
  %725 = fmul fast float %698, %680
  %726 = fsub fast float 1.000000e+00, %680
  %727 = fsub fast float %726, %700
  %728 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  %729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.f32 %729, 3
  %731 = fmul fast float %730, %728
  %732 = fadd fast float %731, %725
  %733 = and i32 %125, 2097152
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %739, label %735, !dx.controlflow.hints !69

; <label>:735                                     ; preds = %697
  %736 = add i32 %122, 192
  %737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  br label %742

; <label>:739                                     ; preds = %697
  %740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.f32 %740, 3
  br label %742

; <label>:742                                     ; preds = %739, %735
  %743 = phi float [ %738, %735 ], [ %741, %739 ]
  %744 = fmul fast float %717, %666
  %745 = fmul fast float %718, %667
  %746 = fmul fast float %719, %668
  %747 = icmp eq i32 %121, 3
  %748 = fcmp fast ogt float %40, %716
  %749 = and i1 %230, %748
  %750 = or i1 %747, %749
  %751 = icmp eq i32 %121, 2
  %752 = fcmp fast ole float %40, %716
  %753 = and i1 %751, %752
  %754 = or i1 %753, %750
  br i1 %749, label %755, label %892

; <label>:755                                     ; preds = %742
  %756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %757 = extractvalue %dx.types.CBufRet.f32 %756, 2
  %758 = extractvalue %dx.types.CBufRet.f32 %756, 3
  %759 = fmul fast float %757, %47
  %760 = fmul fast float %758, %48
  %761 = call float @dx.op.unary.f32(i32 7, float %759)  ; Saturate(value)
  %762 = call float @dx.op.unary.f32(i32 7, float %760)  ; Saturate(value)
  %763 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %761, float %762, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %764 = extractvalue %dx.types.ResRet.f32 %763, 0
  %765 = extractvalue %dx.types.ResRet.f32 %763, 1
  %766 = extractvalue %dx.types.ResRet.f32 %763, 2
  %767 = extractvalue %dx.types.ResRet.f32 %763, 3
  %768 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %761, float %762, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = extractvalue %dx.types.ResRet.f32 %768, 1
  %771 = extractvalue %dx.types.ResRet.f32 %768, 2
  %772 = extractvalue %dx.types.ResRet.f32 %768, 3
  %773 = call float @dx.op.binary.f32(i32 35, float %765, float %766)  ; FMax(a,b)
  %774 = call float @dx.op.binary.f32(i32 35, float %764, float %773)  ; FMax(a,b)
  %775 = call float @dx.op.binary.f32(i32 35, float %774, float %767)  ; FMax(a,b)
  %776 = call float @dx.op.binary.f32(i32 36, float %770, float %771)  ; FMin(a,b)
  %777 = call float @dx.op.binary.f32(i32 36, float %769, float %776)  ; FMin(a,b)
  %778 = call float @dx.op.binary.f32(i32 36, float %777, float %772)  ; FMin(a,b)
  %779 = fmul fast float %775, 2.550000e+02
  %780 = fadd fast float %779, 0x3F70101020000000
  %781 = fptoui float %780 to i32
  %782 = fmul fast float %778, 2.550000e+02
  %783 = fadd fast float %782, 0x3F70101020000000
  %784 = fptoui float %783 to i32
  %785 = icmp ult i32 %781, %784
  br i1 %785, label %786, label %837

; <label>:786                                     ; preds = %755
  %787 = fcmp fast ogt float %39, 9.843750e-01
  %788 = fadd fast float %40, -4.000000e+00
  %789 = select i1 %787, float -4.000000e+00, float %788
  %790 = call float @dx.op.binary.f32(i32 35, float %789, float 0.000000e+00)  ; FMax(a,b)
  %791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %792 = extractvalue %dx.types.CBufRet.f32 %791, 0
  %793 = fadd fast float %792, %790
  %794 = extractvalue %dx.types.CBufRet.f32 %791, 2
  %795 = fmul fast float %793, %794
  %796 = call float @dx.op.unary.f32(i32 23, float %795)  ; Log(value)
  %797 = extractvalue %dx.types.CBufRet.f32 %791, 3
  %798 = fmul fast float %797, %796
  %799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.f32 %799, 2
  %801 = fmul fast float %798, %800
  %802 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %803 = uitofp i32 %781 to float
  %804 = uitofp i32 %784 to float
  %805 = fadd fast float %803, 5.000000e-01
  %806 = fadd fast float %804, 5.000000e-01
  %807 = fmul fast float %800, %805
  %808 = fmul fast float %800, %806
  %809 = fadd fast float %807, 0x3F0FFB4800000000
  %810 = fadd fast float %808, 0xBF0FFB4800000000
  %811 = call float @dx.op.binary.f32(i32 35, float %802, float %809)  ; FMax(a,b)
  %812 = call float @dx.op.binary.f32(i32 36, float %811, float %810)  ; FMin(a,b)
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 1
  %815 = extractvalue %dx.types.CBufRet.f32 %813, 2
  %816 = extractvalue %dx.types.CBufRet.f32 %813, 0
  %817 = fmul fast float %814, %812
  %818 = fadd fast float %816, %817
  %819 = fadd fast float %816, %815
  %820 = fsub fast float %814, %815
  %821 = fadd fast float %820, %816
  %822 = call float @dx.op.binary.f32(i32 35, float %818, float %819)  ; FMax(a,b)
  %823 = call float @dx.op.binary.f32(i32 36, float %822, float %821)  ; FMin(a,b)
  %824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %761, float %762, float %823, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %761, float %762, float %823, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  %830 = extractvalue %dx.types.ResRet.f32 %828, 1
  %831 = extractvalue %dx.types.ResRet.f32 %828, 2
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 1
  %834 = fmul fast float %833, %829
  %835 = fmul fast float %833, %830
  %836 = fmul fast float %833, %831
  br label %837

; <label>:837                                     ; preds = %786, %755
  %838 = phi float [ %825, %786 ], [ 1.000000e+00, %755 ]
  %839 = phi float [ %826, %786 ], [ 1.000000e+00, %755 ]
  %840 = phi float [ %827, %786 ], [ 1.000000e+00, %755 ]
  %841 = phi float [ %834, %786 ], [ 0.000000e+00, %755 ]
  %842 = phi float [ %835, %786 ], [ 0.000000e+00, %755 ]
  %843 = phi float [ %836, %786 ], [ 0.000000e+00, %755 ]
  %844 = fmul fast float %841, %724
  %845 = fmul fast float %842, %724
  %846 = fmul fast float %843, %724
  %847 = call float @dx.op.dot3.f32(i32 55, float %838, float %839, float %840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %848 = call float @dx.op.dot3.f32(i32 55, float %844, float %845, float %846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %849 = select i1 %105, float %847, float %838
  %850 = select i1 %105, float %847, float %839
  %851 = select i1 %105, float 1.000000e+00, float %840
  %852 = select i1 %105, float %848, float %844
  %853 = select i1 %105, float 0.000000e+00, float %845
  %854 = select i1 %105, float 0.000000e+00, float %846
  %855 = fmul fast float %849, %744
  %856 = fmul fast float %850, %745
  %857 = fmul fast float %851, %746
  %858 = fadd fast float %855, %852
  %859 = fadd fast float %856, %853
  %860 = fadd fast float %854, %857
  %861 = fmul fast float %52, %757
  %862 = fmul fast float %54, %758
  %863 = fsub fast float 1.000000e+00, %861
  %864 = fsub fast float 1.000000e+00, %862
  %865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %866 = extractvalue %dx.types.CBufRet.f32 %865, 0
  %867 = extractvalue %dx.types.CBufRet.f32 %865, 1
  %868 = extractvalue %dx.types.CBufRet.f32 %865, 2
  %869 = fmul fast float %863, %866
  %870 = fmul fast float %863, %867
  %871 = fmul fast float %863, %868
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 0
  %874 = extractvalue %dx.types.CBufRet.f32 %872, 1
  %875 = extractvalue %dx.types.CBufRet.f32 %872, 2
  %876 = fmul fast float %864, %873
  %877 = fmul fast float %864, %874
  %878 = fmul fast float %864, %875
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 0
  %881 = extractvalue %dx.types.CBufRet.f32 %879, 1
  %882 = extractvalue %dx.types.CBufRet.f32 %879, 2
  %883 = fadd fast float %876, %880
  %884 = fadd fast float %883, %869
  %885 = fadd fast float %877, %881
  %886 = fadd fast float %885, %870
  %887 = fadd fast float %878, %882
  %888 = fadd fast float %887, %871
  %889 = fmul fast float %884, %716
  %890 = fmul fast float %886, %716
  %891 = fmul fast float %888, %716
  br label %892

; <label>:892                                     ; preds = %837, %742
  %893 = phi float [ %889, %837 ], [ %82, %742 ]
  %894 = phi float [ %890, %837 ], [ %83, %742 ]
  %895 = phi float [ %891, %837 ], [ %84, %742 ]
  %896 = phi float [ %716, %837 ], [ %40, %742 ]
  %897 = phi float [ %858, %837 ], [ %744, %742 ]
  %898 = phi float [ %859, %837 ], [ %745, %742 ]
  %899 = phi float [ %860, %837 ], [ %746, %742 ]
  %900 = phi float [ %838, %837 ], [ 1.000000e+00, %742 ]
  br i1 %754, label %2050, label %901

; <label>:901                                     ; preds = %892
  %902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.f32 %902, 0
  %904 = extractvalue %dx.types.CBufRet.f32 %902, 1
  %905 = extractvalue %dx.types.CBufRet.f32 %902, 2
  %906 = extractvalue %dx.types.CBufRet.f32 %902, 3
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 0
  %909 = extractvalue %dx.types.CBufRet.f32 %907, 1
  %910 = extractvalue %dx.types.CBufRet.f32 %907, 2
  %911 = extractvalue %dx.types.CBufRet.f32 %907, 3
  %912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.f32 %912, 0
  %914 = extractvalue %dx.types.CBufRet.f32 %912, 1
  %915 = extractvalue %dx.types.CBufRet.f32 %912, 2
  %916 = extractvalue %dx.types.CBufRet.f32 %912, 3
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 0
  %919 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %920 = extractvalue %dx.types.CBufRet.f32 %917, 2
  %921 = extractvalue %dx.types.CBufRet.f32 %917, 3
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 3
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 3
  %926 = extractvalue %dx.types.CBufRet.f32 %924, 0
  %927 = extractvalue %dx.types.CBufRet.f32 %924, 1
  %928 = extractvalue %dx.types.CBufRet.f32 %924, 2
  %929 = fcmp fast olt float %928, -5.000000e-01
  %930 = call float @dx.op.dot3.f32(i32 55, float %893, float %894, float %895, float %893, float %894, float %895)  ; Dot3(ax,ay,az,bx,by,bz)
  %931 = call float @dx.op.unary.f32(i32 25, float %930)  ; Rsqrt(value)
  %932 = fmul fast float %931, %930
  %933 = fmul fast float %931, %893
  %934 = fmul fast float %931, %894
  %935 = fmul fast float %931, %895
  %936 = fadd fast float %932, %906
  %937 = call float @dx.op.dot3.f32(i32 55, float %933, float %934, float %935, float %903, float %904, float %905)  ; Dot3(ax,ay,az,bx,by,bz)
  %938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.i32 %938, 1
  %940 = and i32 %939, 1
  %941 = icmp ne i32 %940, 0
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 2
  %944 = fcmp fast ogt float %943, 0.000000e+00
  %945 = and i1 %941, %944
  br i1 %945, label %946, label %1352, !dx.controlflow.hints !70

; <label>:946                                     ; preds = %901
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 3
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 2
  %953 = fsub fast float %950, %952
  %954 = and i32 %939, 2
  %955 = extractvalue %dx.types.CBufRet.i32 %938, 0
  %956 = call i32 @dx.op.binary.i32(i32 40, i32 %955, i32 3)  ; UMin(a,b)
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %960 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %961 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %962 = fsub fast float %958, %960
  %963 = fsub fast float %959, %961
  %964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.f32 %964, 0
  %966 = fcmp fast ogt float %965, 0.000000e+00
  %967 = fsub fast float -0.000000e+00, %962
  %968 = fsub fast float -0.000000e+00, %963
  %969 = call float @dx.op.dot2.f32(i32 54, float %933, float %934, float %933, float %934)  ; Dot2(ax,ay,bx,by)
  %970 = call float @dx.op.dot2.f32(i32 54, float %933, float %934, float %967, float %968)  ; Dot2(ax,ay,bx,by)
  %971 = fmul fast float %970, 2.000000e+00
  %972 = call float @dx.op.dot2.f32(i32 54, float %967, float %968, float %967, float %968)  ; Dot2(ax,ay,bx,by)
  %973 = fmul fast float %965, %965
  %974 = fsub fast float %972, %973
  %975 = fmul fast float %971, %971
  %976 = fmul fast float %969, 4.000000e+00
  %977 = fmul fast float %976, %974
  %978 = fsub fast float %975, %977
  %979 = fcmp fast ogt float %978, 0.000000e+00
  br i1 %979, label %980, label %995

; <label>:980                                     ; preds = %946
  %981 = fcmp fast ogt float %971, 0.000000e+00
  %982 = call float @dx.op.unary.f32(i32 24, float %978)  ; Sqrt(value)
  %983 = fsub fast float -0.000000e+00, %982
  %984 = select i1 %981, float %982, float %983
  %985 = fadd fast float %984, %971
  %986 = fmul float %985, -5.000000e-01
  %987 = fdiv fast float %986, %969
  %988 = call float @dx.op.binary.f32(i32 35, float %987, float 0.000000e+00)  ; FMax(a,b)
  %989 = call float @dx.op.binary.f32(i32 36, float %932, float %988)  ; FMin(a,b)
  %990 = fdiv fast float %974, %986
  %991 = call float @dx.op.binary.f32(i32 35, float %990, float 0.000000e+00)  ; FMax(a,b)
  %992 = call float @dx.op.binary.f32(i32 36, float %932, float %991)  ; FMin(a,b)
  %993 = call float @dx.op.binary.f32(i32 36, float %989, float %992)  ; FMin(a,b)
  %994 = call float @dx.op.binary.f32(i32 35, float %989, float %992)  ; FMax(a,b)
  br label %995

; <label>:995                                     ; preds = %980, %946
  %996 = phi float [ %994, %980 ], [ -1.000000e+00, %946 ]
  %997 = phi float [ %993, %980 ], [ -1.000000e+00, %946 ]
  %998 = phi i1 [ true, %980 ], [ false, %946 ]
  %999 = and i1 %966, %998
  br i1 %999, label %1000, label %1002

; <label>:1000                                    ; preds = %995
  %1001 = fcmp fast oeq float %997, %996
  br i1 %1001, label %1305, label %1003

; <label>:1002                                    ; preds = %995
  br i1 %966, label %1305, label %1003

; <label>:1003                                    ; preds = %1002, %1000
  %1004 = phi float [ %932, %1002 ], [ %996, %1000 ]
  %1005 = phi float [ 0.000000e+00, %1002 ], [ %997, %1000 ]
  %1006 = icmp ne i32 %954, 0
  %1007 = fmul fast float %1004, %935
  %1008 = fadd fast float %1007, %948
  %1009 = fmul fast float %1008, %1004
  %1010 = select i1 %1006, float 0.000000e+00, float %1009
  %1011 = fcmp fast oeq float %935, 0.000000e+00
  %1012 = fdiv fast float %953, %935
  %1013 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1012)  ; FMax(a,b)
  %1014 = select i1 %1011, float %1004, float %1013
  %1015 = call float @dx.op.binary.f32(i32 36, float %1004, float %1014)  ; FMin(a,b)
  %1016 = fcmp fast ogt float %935, 0.000000e+00
  %1017 = fcmp fast olt float %953, 0.000000e+00
  br i1 %1016, label %1018, label %1075

; <label>:1018                                    ; preds = %1003
  %1019 = icmp eq i32 %954, 0
  br i1 %1017, label %1020, label %1064

; <label>:1020                                    ; preds = %1018
  %1021 = select i1 %1019, float %1004, float 0.000000e+00
  %1022 = fsub fast float -0.000000e+00, %1021
  %1023 = call float @dx.op.unary.f32(i32 6, float %1022)  ; FAbs(value)
  %1024 = fmul fast float %1021, %935
  %1025 = fadd fast float %1024, %948
  %1026 = fmul fast float %1023, %1025
  %1027 = fsub fast float %1010, %1026
  %1028 = fsub fast float %1004, %1023
  %1029 = select i1 %1019, float %1028, float 0.000000e+00
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.CBufRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.CBufRet.f32 %1030, 2
  %1034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1035 = extractvalue %dx.types.CBufRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.CBufRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.CBufRet.f32 %1034, 2
  %1038 = extractvalue %dx.types.CBufRet.f32 %1034, 3
  %1039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1040 = extractvalue %dx.types.CBufRet.f32 %1039, 3
  %1041 = call float @dx.op.binary.f32(i32 36, float %1027, float %1040)  ; FMin(a,b)
  %1042 = fmul fast float %1038, %1029
  %1043 = call float @dx.op.unary.f32(i32 7, float %1042)  ; Saturate(value)
  %1044 = fsub fast float %1035, %1031
  %1045 = fsub fast float %1036, %1032
  %1046 = fsub fast float %1037, %1033
  %1047 = fmul fast float %1043, %1044
  %1048 = fmul fast float %1043, %1045
  %1049 = fmul fast float %1043, %1046
  %1050 = fadd fast float %1047, %1031
  %1051 = fadd fast float %1048, %1032
  %1052 = fadd fast float %1049, %1033
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.CBufRet.f32 %1053, 1
  %1056 = fadd fast float %1055, %1054
  %1057 = call float @dx.op.unary.f32(i32 7, float %1056)  ; Saturate(value)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1053, 2
  %1059 = extractvalue %dx.types.CBufRet.f32 %1053, 3
  %1060 = fadd fast float %1059, %1058
  %1061 = call float @dx.op.unary.f32(i32 7, float %1060)  ; Saturate(value)
  %1062 = fmul fast float %1057, %1041
  %1063 = fmul fast float %1062, %1061
  br label %1305

; <label>:1064                                    ; preds = %1018
  br i1 %1019, label %1065, label %1086

; <label>:1065                                    ; preds = %1064
  %1066 = call float @dx.op.binary.f32(i32 36, float %1015, float %1005)  ; FMin(a,b)
  %1067 = fsub fast float %1015, %1066
  %1068 = fsub fast float %1067, %1004
  %1069 = call float @dx.op.unary.f32(i32 6, float %1068)  ; FAbs(value)
  %1070 = fadd fast float %1067, %1004
  %1071 = fmul fast float %1070, %935
  %1072 = fadd fast float %1071, %948
  %1073 = fmul fast float %1072, %1069
  %1074 = fsub fast float %1010, %1073
  br label %1086

; <label>:1075                                    ; preds = %1003
  br i1 %1017, label %1076, label %1086

; <label>:1076                                    ; preds = %1075
  %1077 = call float @dx.op.binary.f32(i32 35, float %1005, float %1015)  ; FMax(a,b)
  %1078 = icmp eq i32 %954, 0
  %1079 = select i1 %1078, float %1015, float 0.000000e+00
  %1080 = fsub fast float -0.000000e+00, %1079
  %1081 = call float @dx.op.unary.f32(i32 6, float %1080)  ; FAbs(value)
  %1082 = fmul fast float %1079, %935
  %1083 = fadd fast float %1082, %948
  %1084 = fmul fast float %1081, %1083
  %1085 = fsub fast float %1010, %1084
  br label %1086

; <label>:1086                                    ; preds = %1076, %1075, %1065, %1064
  %1087 = phi float [ %1005, %1064 ], [ %1005, %1065 ], [ %1077, %1076 ], [ %1005, %1075 ]
  %1088 = phi float [ 0.000000e+00, %1064 ], [ %1069, %1065 ], [ %1081, %1076 ], [ 0.000000e+00, %1075 ]
  %1089 = phi float [ %1010, %1064 ], [ %1074, %1065 ], [ %1085, %1076 ], [ %1010, %1075 ]
  %1090 = phi float [ %1015, %1064 ], [ %1015, %1065 ], [ %1004, %1076 ], [ %1004, %1075 ]
  %1091 = getelementptr inbounds [3 x float], [3 x float]* %41, i32 0, i32 0
  store float -1.000000e+00, float* %1091, align 4, !tbaa !71, !noalias !75
  %1092 = getelementptr inbounds [3 x float], [3 x float]* %41, i32 0, i32 1
  store float -1.000000e+00, float* %1092, align 4, !tbaa !71, !noalias !75
  %1093 = getelementptr inbounds [3 x float], [3 x float]* %41, i32 0, i32 2
  store float -1.000000e+00, float* %1093, align 4, !tbaa !71, !noalias !75
  %1094 = getelementptr inbounds [3 x float], [3 x float]* %42, i32 0, i32 0
  store float -1.000000e+00, float* %1094, align 4, !tbaa !71, !noalias !75
  %1095 = getelementptr inbounds [3 x float], [3 x float]* %42, i32 0, i32 1
  store float -1.000000e+00, float* %1095, align 4, !tbaa !71, !noalias !75
  %1096 = getelementptr inbounds [3 x float], [3 x float]* %42, i32 0, i32 2
  store float -1.000000e+00, float* %1096, align 4, !tbaa !71, !noalias !75
  %1097 = icmp sgt i32 %956, 0
  br i1 %1097, label %1098, label %1159

; <label>:1098                                    ; preds = %1086
  br label %1099

; <label>:1099                                    ; preds = %1148, %1098
  %1100 = phi i32 [ %1149, %1148 ], [ 0, %1098 ]
  %1101 = phi i32 [ %1150, %1148 ], [ 0, %1098 ]
  %1102 = add nuw i32 %1101, 171
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 %1102)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.CBufRet.f32 %1103, 1
  %1106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1107 = extractvalue %dx.types.CBufRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.CBufRet.f32 %1106, 1
  %1109 = fsub fast float %1104, %1107
  %1110 = fsub fast float %1105, %1108
  %1111 = extractvalue %dx.types.CBufRet.f32 %1103, 2
  %1112 = fsub fast float -0.000000e+00, %1109
  %1113 = fsub fast float -0.000000e+00, %1110
  %1114 = call float @dx.op.dot2.f32(i32 54, float %933, float %934, float %1112, float %1113)  ; Dot2(ax,ay,bx,by)
  %1115 = fmul fast float %1114, 2.000000e+00
  %1116 = call float @dx.op.dot2.f32(i32 54, float %1112, float %1113, float %1112, float %1113)  ; Dot2(ax,ay,bx,by)
  %1117 = fmul fast float %1111, %1111
  %1118 = fsub fast float %1116, %1117
  %1119 = fmul fast float %1115, %1115
  %1120 = fmul fast float %976, %1118
  %1121 = fsub fast float %1119, %1120
  %1122 = fcmp fast ogt float %1121, 0.000000e+00
  br i1 %1122, label %1123, label %1138

; <label>:1123                                    ; preds = %1099
  %1124 = fcmp fast ogt float %1115, 0.000000e+00
  %1125 = call float @dx.op.unary.f32(i32 24, float %1121)  ; Sqrt(value)
  %1126 = fsub fast float -0.000000e+00, %1125
  %1127 = select i1 %1124, float %1125, float %1126
  %1128 = fadd fast float %1127, %1115
  %1129 = fmul float %1128, -5.000000e-01
  %1130 = fdiv fast float %1129, %969
  %1131 = call float @dx.op.binary.f32(i32 35, float %1130, float 0.000000e+00)  ; FMax(a,b)
  %1132 = call float @dx.op.binary.f32(i32 36, float %1004, float %1131)  ; FMin(a,b)
  %1133 = fdiv fast float %1118, %1129
  %1134 = call float @dx.op.binary.f32(i32 35, float %1133, float 0.000000e+00)  ; FMax(a,b)
  %1135 = call float @dx.op.binary.f32(i32 36, float %1004, float %1134)  ; FMin(a,b)
  %1136 = call float @dx.op.binary.f32(i32 36, float %1132, float %1135)  ; FMin(a,b)
  %1137 = call float @dx.op.binary.f32(i32 35, float %1132, float %1135)  ; FMax(a,b)
  br label %1138

; <label>:1138                                    ; preds = %1123, %1099
  %1139 = phi float [ %1137, %1123 ], [ -1.000000e+00, %1099 ]
  %1140 = phi float [ %1136, %1123 ], [ -1.000000e+00, %1099 ]
  %1141 = phi i1 [ true, %1123 ], [ false, %1099 ]
  br i1 %1141, label %1142, label %1148

; <label>:1142                                    ; preds = %1138
  %1143 = call float @dx.op.binary.f32(i32 35, float %1087, float %1140)  ; FMax(a,b)
  %1144 = getelementptr inbounds [3 x float], [3 x float]* %41, i32 0, i32 %1101
  store float %1143, float* %1144, align 4, !tbaa !71, !noalias !75
  %1145 = call float @dx.op.binary.f32(i32 35, float %1087, float %1139)  ; FMax(a,b)
  %1146 = getelementptr inbounds [3 x float], [3 x float]* %42, i32 0, i32 %1101
  store float %1145, float* %1146, align 4, !tbaa !71, !noalias !75
  %1147 = add nsw i32 %1100, 1
  br label %1148

; <label>:1148                                    ; preds = %1142, %1138
  %1149 = phi i32 [ %1147, %1142 ], [ %1100, %1138 ]
  %1150 = add nuw nsw i32 %1101, 1
  %1151 = icmp eq i32 %1150, %956
  br i1 %1151, label %1152, label %1099

; <label>:1152                                    ; preds = %1148
  %1153 = load float, float* %1093, align 4, !tbaa !71, !alias.scope !91, !noalias !94
  %1154 = load float, float* %1092, align 4, !tbaa !71, !alias.scope !97, !noalias !98
  %1155 = load float, float* %1091, align 4, !tbaa !71, !alias.scope !99, !noalias !100
  %1156 = load float, float* %1096, align 4, !tbaa !71, !alias.scope !101, !noalias !104
  %1157 = load float, float* %1095, align 4, !tbaa !71, !alias.scope !107, !noalias !108
  %1158 = load float, float* %1094, align 4, !tbaa !71, !alias.scope !109, !noalias !110
  br label %1159

; <label>:1159                                    ; preds = %1152, %1086
  %1160 = phi float [ -1.000000e+00, %1086 ], [ %1158, %1152 ]
  %1161 = phi float [ -1.000000e+00, %1086 ], [ %1157, %1152 ]
  %1162 = phi float [ -1.000000e+00, %1086 ], [ %1156, %1152 ]
  %1163 = phi float [ -1.000000e+00, %1086 ], [ %1155, %1152 ]
  %1164 = phi float [ -1.000000e+00, %1086 ], [ %1154, %1152 ]
  %1165 = phi float [ -1.000000e+00, %1086 ], [ %1153, %1152 ]
  %1166 = phi i32 [ 0, %1086 ], [ %1149, %1152 ]
  %1167 = call float @dx.op.binary.f32(i32 36, float %1164, float %1165)  ; FMin(a,b)
  %1168 = call float @dx.op.binary.f32(i32 36, float %1163, float %1167)  ; FMin(a,b)
  %1169 = call float @dx.op.binary.f32(i32 35, float %1163, float %1164)  ; FMax(a,b)
  %1170 = call float @dx.op.binary.f32(i32 36, float %1169, float %1165)  ; FMin(a,b)
  %1171 = call float @dx.op.binary.f32(i32 36, float %1163, float %1164)  ; FMin(a,b)
  %1172 = call float @dx.op.binary.f32(i32 35, float %1171, float %1170)  ; FMax(a,b)
  %1173 = call float @dx.op.binary.f32(i32 35, float %1164, float %1165)  ; FMax(a,b)
  %1174 = call float @dx.op.binary.f32(i32 35, float %1163, float %1173)  ; FMax(a,b)
  store float %1168, float* %1091, align 4, !tbaa !71, !alias.scope !99, !noalias !100
  store float %1172, float* %1092, align 4, !tbaa !71, !alias.scope !97, !noalias !98
  store float %1174, float* %1093, align 4, !tbaa !71, !alias.scope !91, !noalias !94
  %1175 = call float @dx.op.binary.f32(i32 36, float %1161, float %1162)  ; FMin(a,b)
  %1176 = call float @dx.op.binary.f32(i32 36, float %1160, float %1175)  ; FMin(a,b)
  %1177 = call float @dx.op.binary.f32(i32 35, float %1160, float %1161)  ; FMax(a,b)
  %1178 = call float @dx.op.binary.f32(i32 36, float %1177, float %1162)  ; FMin(a,b)
  %1179 = call float @dx.op.binary.f32(i32 36, float %1160, float %1161)  ; FMin(a,b)
  %1180 = call float @dx.op.binary.f32(i32 35, float %1179, float %1178)  ; FMax(a,b)
  %1181 = call float @dx.op.binary.f32(i32 35, float %1161, float %1162)  ; FMax(a,b)
  %1182 = call float @dx.op.binary.f32(i32 35, float %1160, float %1181)  ; FMax(a,b)
  store float %1176, float* %1094, align 4, !tbaa !71, !alias.scope !109, !noalias !110
  store float %1180, float* %1095, align 4, !tbaa !71, !alias.scope !107, !noalias !108
  store float %1182, float* %1096, align 4, !tbaa !71, !alias.scope !101, !noalias !104
  %1183 = sub nsw i32 3, %1166
  %1184 = icmp sgt i32 %1183, 2
  br i1 %1184, label %1185, label %1223

; <label>:1185                                    ; preds = %1159
  %1186 = icmp eq i32 %954, 0
  %1187 = fsub fast float %1004, %1088
  %1188 = select i1 %1186, float %1187, float %1088
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 0
  %1191 = extractvalue %dx.types.CBufRet.f32 %1189, 1
  %1192 = extractvalue %dx.types.CBufRet.f32 %1189, 2
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.CBufRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.CBufRet.f32 %1193, 2
  %1197 = extractvalue %dx.types.CBufRet.f32 %1193, 3
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 3
  %1200 = call float @dx.op.binary.f32(i32 36, float %1089, float %1199)  ; FMin(a,b)
  %1201 = fmul fast float %1197, %1188
  %1202 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1203 = fsub fast float %1194, %1190
  %1204 = fsub fast float %1195, %1191
  %1205 = fsub fast float %1196, %1192
  %1206 = fmul fast float %1202, %1203
  %1207 = fmul fast float %1202, %1204
  %1208 = fmul fast float %1202, %1205
  %1209 = fadd fast float %1206, %1190
  %1210 = fadd fast float %1207, %1191
  %1211 = fadd fast float %1208, %1192
  %1212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1213 = extractvalue %dx.types.CBufRet.f32 %1212, 0
  %1214 = extractvalue %dx.types.CBufRet.f32 %1212, 1
  %1215 = fadd fast float %1214, %1213
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1212, 2
  %1218 = extractvalue %dx.types.CBufRet.f32 %1212, 3
  %1219 = fadd fast float %1218, %1217
  %1220 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1221 = fmul fast float %1216, %1200
  %1222 = fmul fast float %1221, %1220
  br label %1305

; <label>:1223                                    ; preds = %1159
  %1224 = getelementptr inbounds [3 x float], [3 x float]* %41, i32 0, i32 %1183
  %1225 = load float, float* %1224, align 4, !tbaa !71, !noalias !75
  %1226 = fcmp fast olt float %1225, %1090
  %1227 = icmp sgt i32 %1166, 0
  %1228 = and i1 %1227, %1226
  br i1 %1228, label %1229, label %1266

; <label>:1229                                    ; preds = %1223
  br label %1230

; <label>:1230                                    ; preds = %1259, %1229
  %1231 = phi float [ %1260, %1259 ], [ %1088, %1229 ]
  %1232 = phi float [ %1261, %1259 ], [ %1089, %1229 ]
  %1233 = phi float [ %1241, %1259 ], [ %1225, %1229 ]
  %1234 = phi i32 [ %1238, %1259 ], [ %1183, %1229 ]
  %1235 = getelementptr inbounds [3 x float], [3 x float]* %42, i32 0, i32 %1234
  %1236 = load float, float* %1235, align 4, !tbaa !71, !noalias !75
  %1237 = icmp slt i32 %1234, 2
  %1238 = add nsw i32 %1234, 1
  %1239 = getelementptr inbounds [3 x float], [3 x float]* %41, i32 0, i32 %1238
  %1240 = load float, float* %1239, align 4, !tbaa !71, !noalias !75
  %1241 = select i1 %1237, float %1240, float %1004
  %1242 = call float @dx.op.binary.f32(i32 36, float %1241, float %1236)  ; FMin(a,b)
  %1243 = call float @dx.op.binary.f32(i32 36, float %1090, float %1242)  ; FMin(a,b)
  %1244 = icmp eq i32 %954, 0
  %1245 = fadd fast float %1243, %1233
  %1246 = fmul fast float %1245, %935
  %1247 = fadd fast float %1246, %948
  br i1 %1244, label %1253, label %1248

; <label>:1248                                    ; preds = %1230
  %1249 = fsub fast float %1243, %1233
  %1250 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1249)  ; FMax(a,b)
  %1251 = fmul fast float %1250, %1247
  %1252 = fadd fast float %1251, %1232
  br label %1259

; <label>:1253                                    ; preds = %1230
  %1254 = fsub fast float %1233, %1243
  %1255 = call float @dx.op.unary.f32(i32 6, float %1254)  ; FAbs(value)
  %1256 = fadd fast float %1255, %1231
  %1257 = fmul fast float %1255, %1247
  %1258 = fsub fast float %1232, %1257
  br label %1259

; <label>:1259                                    ; preds = %1253, %1248
  %1260 = phi float [ %1250, %1248 ], [ %1256, %1253 ]
  %1261 = phi float [ %1252, %1248 ], [ %1258, %1253 ]
  %1262 = fcmp fast olt float %1241, %1090
  %1263 = icmp slt i32 %1238, 3
  %1264 = and i1 %1263, %1262
  br i1 %1264, label %1230, label %1265

; <label>:1265                                    ; preds = %1259
  br label %1266

; <label>:1266                                    ; preds = %1265, %1223
  %1267 = phi float [ %1088, %1223 ], [ %1260, %1265 ]
  %1268 = phi float [ %1089, %1223 ], [ %1261, %1265 ]
  %1269 = fsub fast float %1004, %1267
  %1270 = select i1 %1006, float %1267, float %1269
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1274 = extractvalue %dx.types.CBufRet.f32 %1271, 2
  %1275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1276 = extractvalue %dx.types.CBufRet.f32 %1275, 0
  %1277 = extractvalue %dx.types.CBufRet.f32 %1275, 1
  %1278 = extractvalue %dx.types.CBufRet.f32 %1275, 2
  %1279 = extractvalue %dx.types.CBufRet.f32 %1275, 3
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 3
  %1282 = call float @dx.op.binary.f32(i32 36, float %1268, float %1281)  ; FMin(a,b)
  %1283 = fmul fast float %1279, %1270
  %1284 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  %1285 = fsub fast float %1276, %1272
  %1286 = fsub fast float %1277, %1273
  %1287 = fsub fast float %1278, %1274
  %1288 = fmul fast float %1284, %1285
  %1289 = fmul fast float %1284, %1286
  %1290 = fmul fast float %1284, %1287
  %1291 = fadd fast float %1288, %1272
  %1292 = fadd fast float %1289, %1273
  %1293 = fadd fast float %1290, %1274
  %1294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1295 = extractvalue %dx.types.CBufRet.f32 %1294, 0
  %1296 = extractvalue %dx.types.CBufRet.f32 %1294, 1
  %1297 = fadd fast float %1296, %1295
  %1298 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1299 = extractvalue %dx.types.CBufRet.f32 %1294, 2
  %1300 = extractvalue %dx.types.CBufRet.f32 %1294, 3
  %1301 = fadd fast float %1300, %1299
  %1302 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1303 = fmul fast float %1298, %1282
  %1304 = fmul fast float %1303, %1302
  br label %1305

; <label>:1305                                    ; preds = %1266, %1185, %1020, %1002, %1000
  %1306 = phi float [ %1029, %1020 ], [ %1188, %1185 ], [ %1270, %1266 ], [ 0.000000e+00, %1000 ], [ 0.000000e+00, %1002 ]
  %1307 = phi float [ %1063, %1020 ], [ %1222, %1185 ], [ %1304, %1266 ], [ 0.000000e+00, %1000 ], [ 0.000000e+00, %1002 ]
  %1308 = phi float [ %1050, %1020 ], [ %1209, %1185 ], [ %1291, %1266 ], [ 0.000000e+00, %1000 ], [ 0.000000e+00, %1002 ]
  %1309 = phi float [ %1051, %1020 ], [ %1210, %1185 ], [ %1292, %1266 ], [ 0.000000e+00, %1000 ], [ 0.000000e+00, %1002 ]
  %1310 = phi float [ %1052, %1020 ], [ %1211, %1185 ], [ %1293, %1266 ], [ 0.000000e+00, %1000 ], [ 0.000000e+00, %1002 ]
  %1311 = fmul fast float %943, %1307
  %1312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1312, 2
  %1314 = fsub fast float %950, %1313
  %1315 = fcmp fast olt float %1311, -2.000000e+01
  %1316 = call float @dx.op.unary.f32(i32 21, float %1311)  ; Exp(value)
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 2
  %1319 = extractvalue %dx.types.CBufRet.f32 %1317, 3
  %1320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.f32 %1320, 2
  %1322 = fmul fast float %1319, %1314
  %1323 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1324 = fsub fast float 1.000000e+00, %1323
  %1325 = fmul fast float %935, 5.000000e-01
  %1326 = fadd fast float %1325, 5.000000e-01
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1328 = fsub fast float 1.000000e+00, %1327
  %1329 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1324)  ; FMax(a,b)
  %1330 = fdiv fast float %1328, %1329
  %1331 = fsub fast float %1314, %895
  %1332 = call float @dx.op.unary.f32(i32 6, float %1331)  ; FAbs(value)
  %1333 = fmul fast float %1332, %1318
  %1334 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1335 = fsub fast float 1.000000e+00, %1333
  %1336 = fmul fast float %1335, %1334
  %1337 = fadd fast float %1336, %1333
  %1338 = fmul fast float %1321, %1314
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1340 = fsub fast float 1.000000e+00, %1337
  %1341 = fmul fast float %1340, %1339
  %1342 = fadd fast float %1341, %1337
  %1343 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1344 = fadd fast float %1316, -1.000000e+00
  %1345 = select i1 %1315, float -1.000000e+00, float %1344
  %1346 = fmul fast float %1343, %1345
  %1347 = fadd fast float %1346, 1.000000e+00
  %1348 = fsub fast float -0.000000e+00, %1346
  %1349 = fmul fast float %1308, %1348
  %1350 = fmul fast float %1309, %1348
  %1351 = fmul fast float %1310, %1348
  br label %1352

; <label>:1352                                    ; preds = %1305, %901
  %1353 = phi float [ %1306, %1305 ], [ 0.000000e+00, %901 ]
  %1354 = phi float [ %1347, %1305 ], [ 1.000000e+00, %901 ]
  %1355 = phi float [ %1349, %1305 ], [ 0.000000e+00, %901 ]
  %1356 = phi float [ %1350, %1305 ], [ 0.000000e+00, %901 ]
  %1357 = phi float [ %1351, %1305 ], [ 0.000000e+00, %901 ]
  %1358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1359 = extractvalue %dx.types.CBufRet.f32 %1358, 1
  %1360 = fsub fast float 1.000000e+00, %1354
  %1361 = fmul fast float %1360, %936
  %1362 = fmul fast float %1361, %1359
  %1363 = fsub fast float %936, %1362
  br i1 %929, label %1364, label %1393, !dx.controlflow.hints !111

; <label>:1364                                    ; preds = %1352
  %1365 = fmul fast float %937, %926
  %1366 = fadd fast float %1365, %927
  %1367 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1368 = fmul fast float %908, %1363
  %1369 = fsub fast float -0.000000e+00, %1368
  %1370 = fmul fast float %909, %1363
  %1371 = fsub fast float -0.000000e+00, %1370
  %1372 = call float @dx.op.unary.f32(i32 21, float %1369)  ; Exp(value)
  %1373 = call float @dx.op.unary.f32(i32 21, float %1371)  ; Exp(value)
  %1374 = call float @dx.op.binary.f32(i32 35, float %916, float %1372)  ; FMax(a,b)
  %1375 = call float @dx.op.binary.f32(i32 35, float %916, float %1373)  ; FMax(a,b)
  %1376 = fsub fast float %1375, %1374
  %1377 = fmul fast float %1376, %1367
  %1378 = fadd fast float %1377, %1374
  %1379 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  %1380 = fsub fast float %913, %918
  %1381 = fsub fast float %914, %919
  %1382 = fsub fast float %915, %920
  %1383 = fmul fast float %1367, %1380
  %1384 = fmul fast float %1367, %1381
  %1385 = fmul fast float %1367, %1382
  %1386 = fadd fast float %1383, %918
  %1387 = fadd fast float %1384, %919
  %1388 = fadd fast float %1385, %920
  %1389 = fsub fast float 1.000000e+00, %1379
  %1390 = fmul fast float %1389, %1386
  %1391 = fmul fast float %1389, %1387
  %1392 = fmul fast float %1389, %1388
  br label %1452

; <label>:1393                                    ; preds = %1352
  %1394 = fmul fast float %1363, %925
  %1395 = call float @dx.op.unary.f32(i32 7, float %1394)  ; Saturate(value)
  %1396 = fsub fast float 2.000000e+00, %1395
  %1397 = fmul fast float %1395, 9.921875e-01
  %1398 = fmul fast float %1397, %1396
  %1399 = fadd fast float %1398, 3.906250e-03
  %1400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %17, float %1399, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = fsub fast float %1395, %1401
  %1403 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1402)  ; FMax(a,b)
  %1404 = fmul fast float %911, %895
  %1405 = call float @dx.op.unary.f32(i32 6, float %1404)  ; FAbs(value)
  %1406 = fcmp fast ogt float %1405, 0x3EB0C6F7A0000000
  br i1 %1406, label %1407, label %1413, !dx.controlflow.hints !112

; <label>:1407                                    ; preds = %1393
  %1408 = fmul fast float %1404, 0xBFF7154760000000
  %1409 = call float @dx.op.unary.f32(i32 21, float %1408)  ; Exp(value)
  %1410 = fsub fast float 1.000000e+00, %1409
  %1411 = fdiv fast float %1410, %1404
  %1412 = fmul fast float %1411, %921
  br label %1413

; <label>:1413                                    ; preds = %1407, %1393
  %1414 = phi float [ %1412, %1407 ], [ %921, %1393 ]
  %1415 = fadd fast float %1414, %923
  %1416 = fmul fast float %1415, %1403
  %1417 = fmul fast float %908, %1416
  %1418 = fsub fast float -0.000000e+00, %1417
  %1419 = fmul fast float %909, %1416
  %1420 = fsub fast float -0.000000e+00, %1419
  %1421 = fmul fast float %910, %1416
  %1422 = fsub fast float -0.000000e+00, %1421
  %1423 = call float @dx.op.unary.f32(i32 21, float %1418)  ; Exp(value)
  %1424 = call float @dx.op.unary.f32(i32 21, float %1420)  ; Exp(value)
  %1425 = call float @dx.op.unary.f32(i32 21, float %1422)  ; Exp(value)
  %1426 = fmul fast float %937, %937
  %1427 = fadd fast float %1426, 1.000000e+00
  %1428 = fmul fast float %1427, 0x3FAE8EC8A0000000
  %1429 = fmul fast float %1428, %918
  %1430 = fmul fast float %1428, %919
  %1431 = fmul fast float %1428, %920
  %1432 = fmul fast float %937, %916
  %1433 = fsub fast float 1.000000e+00, %1432
  %1434 = fmul fast float %916, %916
  %1435 = fsub fast float 1.000000e+00, %1434
  %1436 = fmul fast float %1435, 0x3FB45F3060000000
  %1437 = fmul fast float %1433, %1433
  %1438 = fdiv fast float 1.000000e+00, %1437
  %1439 = fmul fast float %1436, %1438
  %1440 = fmul fast float %1439, %913
  %1441 = fmul fast float %1439, %914
  %1442 = fmul fast float %1439, %915
  %1443 = fadd fast float %1440, %1429
  %1444 = fadd fast float %1441, %1430
  %1445 = fadd fast float %1442, %1431
  %1446 = fsub fast float 1.000000e+00, %1423
  %1447 = fsub fast float 1.000000e+00, %1424
  %1448 = fsub fast float 1.000000e+00, %1425
  %1449 = fmul fast float %1443, %1446
  %1450 = fmul fast float %1444, %1447
  %1451 = fmul fast float %1445, %1448
  br label %1452

; <label>:1452                                    ; preds = %1413, %1364
  %1453 = phi float [ %1390, %1364 ], [ %1449, %1413 ]
  %1454 = phi float [ %1391, %1364 ], [ %1450, %1413 ]
  %1455 = phi float [ %1392, %1364 ], [ %1451, %1413 ]
  %1456 = phi float [ %1379, %1364 ], [ %1423, %1413 ]
  %1457 = phi float [ %1379, %1364 ], [ %1424, %1413 ]
  %1458 = phi float [ %1379, %1364 ], [ %1425, %1413 ]
  br i1 %945, label %1459, label %1657, !dx.controlflow.hints !113

; <label>:1459                                    ; preds = %1452
  %1460 = extractvalue %dx.types.CBufRet.f32 %1358, 0
  %1461 = fmul fast float %1460, %1360
  %1462 = fsub fast float %1355, %1453
  %1463 = fsub fast float %1356, %1454
  %1464 = fsub fast float %1357, %1455
  %1465 = fmul fast float %1461, %1462
  %1466 = fmul fast float %1461, %1463
  %1467 = fmul fast float %1461, %1464
  %1468 = fadd fast float %1465, %1453
  %1469 = fadd fast float %1466, %1454
  %1470 = fadd fast float %1467, %1455
  %1471 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1456)  ; FMax(a,b)
  %1472 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1457)  ; FMax(a,b)
  %1473 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1458)  ; FMax(a,b)
  %1474 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1354)  ; FMax(a,b)
  %1475 = call float @dx.op.binary.f32(i32 35, float %1353, float %1363)  ; FMax(a,b)
  %1476 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1475)  ; FMax(a,b)
  %1477 = fdiv fast float %1353, %1476
  %1478 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1479 = fdiv fast float %1363, %1476
  %1480 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  %1481 = fcmp fast une float %1474, 1.000000e+00
  br i1 %1481, label %1482, label %1495, !dx.controlflow.hints !114

; <label>:1482                                    ; preds = %1459
  %1483 = call float @dx.op.unary.f32(i32 23, float %1474)  ; Log(value)
  %1484 = fmul fast float %1483, 0x3FE62E4300000000
  %1485 = fmul fast float %1355, %1484
  %1486 = fsub fast float -0.000000e+00, %1485
  %1487 = fmul fast float %1356, %1484
  %1488 = fsub fast float -0.000000e+00, %1487
  %1489 = fmul fast float %1357, %1484
  %1490 = fsub fast float -0.000000e+00, %1489
  %1491 = fsub fast float 1.000000e+00, %1474
  %1492 = fdiv fast float %1486, %1491
  %1493 = fdiv fast float %1488, %1491
  %1494 = fdiv fast float %1490, %1491
  br label %1495

; <label>:1495                                    ; preds = %1482, %1459
  %1496 = phi float [ %1492, %1482 ], [ %1355, %1459 ]
  %1497 = phi float [ %1493, %1482 ], [ %1356, %1459 ]
  %1498 = phi float [ %1494, %1482 ], [ %1357, %1459 ]
  %1499 = phi float [ %1484, %1482 ], [ 0.000000e+00, %1459 ]
  %1500 = fcmp fast une float %1471, 1.000000e+00
  br i1 %1500, label %1501, label %1508, !dx.controlflow.hints !115

; <label>:1501                                    ; preds = %1495
  %1502 = call float @dx.op.unary.f32(i32 23, float %1471)  ; Log(value)
  %1503 = fmul fast float %1502, 0x3FE62E4300000000
  %1504 = fmul fast float %1468, %1503
  %1505 = fsub fast float -0.000000e+00, %1504
  %1506 = fsub fast float 1.000000e+00, %1471
  %1507 = fdiv fast float %1505, %1506
  br label %1508

; <label>:1508                                    ; preds = %1501, %1495
  %1509 = phi float [ %1507, %1501 ], [ %1468, %1495 ]
  %1510 = phi float [ %1503, %1501 ], [ 0.000000e+00, %1495 ]
  %1511 = fcmp fast une float %1472, 1.000000e+00
  br i1 %1511, label %1512, label %1519, !dx.controlflow.hints !115

; <label>:1512                                    ; preds = %1508
  %1513 = call float @dx.op.unary.f32(i32 23, float %1472)  ; Log(value)
  %1514 = fmul fast float %1513, 0x3FE62E4300000000
  %1515 = fmul fast float %1469, %1514
  %1516 = fsub fast float -0.000000e+00, %1515
  %1517 = fsub fast float 1.000000e+00, %1472
  %1518 = fdiv fast float %1516, %1517
  br label %1519

; <label>:1519                                    ; preds = %1512, %1508
  %1520 = phi float [ %1518, %1512 ], [ %1469, %1508 ]
  %1521 = phi float [ %1514, %1512 ], [ 0.000000e+00, %1508 ]
  %1522 = fcmp fast une float %1473, 1.000000e+00
  br i1 %1522, label %1523, label %1530, !dx.controlflow.hints !115

; <label>:1523                                    ; preds = %1519
  %1524 = call float @dx.op.unary.f32(i32 23, float %1473)  ; Log(value)
  %1525 = fmul fast float %1524, 0x3FE62E4300000000
  %1526 = fmul fast float %1470, %1525
  %1527 = fsub fast float -0.000000e+00, %1526
  %1528 = fsub fast float 1.000000e+00, %1473
  %1529 = fdiv fast float %1527, %1528
  br label %1530

; <label>:1530                                    ; preds = %1523, %1519
  %1531 = phi float [ %1529, %1523 ], [ %1470, %1519 ]
  %1532 = phi float [ %1525, %1523 ], [ 0.000000e+00, %1519 ]
  %1533 = fmul fast float %1496, %1480
  %1534 = fmul fast float %1497, %1480
  %1535 = fmul fast float %1498, %1480
  %1536 = fmul fast float %1499, %1480
  %1537 = fmul fast float %1509, %1478
  %1538 = fmul fast float %1520, %1478
  %1539 = fmul fast float %1531, %1478
  %1540 = fmul fast float %1510, %1478
  %1541 = fmul fast float %1521, %1478
  %1542 = fmul fast float %1532, %1478
  %1543 = fadd fast float %1537, %1533
  %1544 = fadd fast float %1538, %1534
  %1545 = fadd fast float %1539, %1535
  %1546 = fadd fast float %1540, %1536
  %1547 = fadd fast float %1541, %1536
  %1548 = fadd fast float %1542, %1536
  %1549 = fcmp fast une float %1546, 0.000000e+00
  br i1 %1549, label %1550, label %1557, !dx.controlflow.hints !116

; <label>:1550                                    ; preds = %1530
  %1551 = fmul fast float %1546, 0x3FF7154760000000
  %1552 = call float @dx.op.unary.f32(i32 21, float %1551)  ; Exp(value)
  %1553 = fsub fast float 1.000000e+00, %1552
  %1554 = fmul fast float %1543, %1553
  %1555 = fsub fast float -0.000000e+00, %1554
  %1556 = fdiv fast float %1555, %1546
  br label %1557

; <label>:1557                                    ; preds = %1550, %1530
  %1558 = phi float [ %1552, %1550 ], [ 1.000000e+00, %1530 ]
  %1559 = phi float [ %1556, %1550 ], [ %1543, %1530 ]
  %1560 = fcmp fast une float %1547, 0.000000e+00
  br i1 %1560, label %1561, label %1568, !dx.controlflow.hints !116

; <label>:1561                                    ; preds = %1557
  %1562 = fmul fast float %1547, 0x3FF7154760000000
  %1563 = call float @dx.op.unary.f32(i32 21, float %1562)  ; Exp(value)
  %1564 = fsub fast float 1.000000e+00, %1563
  %1565 = fmul fast float %1544, %1564
  %1566 = fsub fast float -0.000000e+00, %1565
  %1567 = fdiv fast float %1566, %1547
  br label %1568

; <label>:1568                                    ; preds = %1561, %1557
  %1569 = phi float [ %1563, %1561 ], [ 1.000000e+00, %1557 ]
  %1570 = phi float [ %1567, %1561 ], [ %1544, %1557 ]
  %1571 = fcmp fast une float %1548, 0.000000e+00
  br i1 %1571, label %1572, label %1579, !dx.controlflow.hints !116

; <label>:1572                                    ; preds = %1568
  %1573 = fmul fast float %1548, 0x3FF7154760000000
  %1574 = call float @dx.op.unary.f32(i32 21, float %1573)  ; Exp(value)
  %1575 = fsub fast float 1.000000e+00, %1574
  %1576 = fmul fast float %1545, %1575
  %1577 = fsub fast float -0.000000e+00, %1576
  %1578 = fdiv fast float %1577, %1548
  br label %1579

; <label>:1579                                    ; preds = %1572, %1568
  %1580 = phi float [ %1574, %1572 ], [ 1.000000e+00, %1568 ]
  %1581 = phi float [ %1578, %1572 ], [ %1545, %1568 ]
  %1582 = fcmp fast ogt float %1478, %1480
  br i1 %1582, label %1583, label %1603

; <label>:1583                                    ; preds = %1579
  %1584 = fsub fast float 1.000000e+00, %1480
  %1585 = fmul fast float %1496, %1584
  %1586 = fmul fast float %1497, %1584
  %1587 = fmul fast float %1498, %1584
  %1588 = fmul fast float %1499, %1584
  %1589 = fcmp fast une float %1588, 0.000000e+00
  br i1 %1589, label %1590, label %1641, !dx.controlflow.hints !117

; <label>:1590                                    ; preds = %1583
  %1591 = fmul fast float %1588, 0x3FF7154760000000
  %1592 = call float @dx.op.unary.f32(i32 21, float %1591)  ; Exp(value)
  %1593 = fsub fast float 1.000000e+00, %1592
  %1594 = fmul fast float %1585, %1593
  %1595 = fsub fast float -0.000000e+00, %1594
  %1596 = fmul fast float %1586, %1593
  %1597 = fsub fast float -0.000000e+00, %1596
  %1598 = fmul fast float %1587, %1593
  %1599 = fsub fast float -0.000000e+00, %1598
  %1600 = fdiv fast float %1595, %1588
  %1601 = fdiv fast float %1597, %1588
  %1602 = fdiv fast float %1599, %1588
  br label %1641

; <label>:1603                                    ; preds = %1579
  %1604 = fsub fast float 1.000000e+00, %1478
  %1605 = fmul fast float %1509, %1604
  %1606 = fmul fast float %1520, %1604
  %1607 = fmul fast float %1531, %1604
  %1608 = fmul fast float %1510, %1604
  %1609 = fmul fast float %1521, %1604
  %1610 = fmul fast float %1532, %1604
  %1611 = fcmp fast une float %1608, 0.000000e+00
  br i1 %1611, label %1612, label %1619, !dx.controlflow.hints !116

; <label>:1612                                    ; preds = %1603
  %1613 = fmul fast float %1608, 0x3FF7154760000000
  %1614 = call float @dx.op.unary.f32(i32 21, float %1613)  ; Exp(value)
  %1615 = fsub fast float 1.000000e+00, %1614
  %1616 = fmul fast float %1605, %1615
  %1617 = fsub fast float -0.000000e+00, %1616
  %1618 = fdiv fast float %1617, %1608
  br label %1619

; <label>:1619                                    ; preds = %1612, %1603
  %1620 = phi float [ %1618, %1612 ], [ %1605, %1603 ]
  %1621 = phi float [ %1614, %1612 ], [ 1.000000e+00, %1603 ]
  %1622 = fcmp fast une float %1609, 0.000000e+00
  br i1 %1622, label %1623, label %1630, !dx.controlflow.hints !116

; <label>:1623                                    ; preds = %1619
  %1624 = fmul fast float %1609, 0x3FF7154760000000
  %1625 = call float @dx.op.unary.f32(i32 21, float %1624)  ; Exp(value)
  %1626 = fsub fast float 1.000000e+00, %1625
  %1627 = fmul fast float %1606, %1626
  %1628 = fsub fast float -0.000000e+00, %1627
  %1629 = fdiv fast float %1628, %1609
  br label %1630

; <label>:1630                                    ; preds = %1623, %1619
  %1631 = phi float [ %1629, %1623 ], [ %1606, %1619 ]
  %1632 = phi float [ %1625, %1623 ], [ 1.000000e+00, %1619 ]
  %1633 = fcmp fast une float %1610, 0.000000e+00
  br i1 %1633, label %1634, label %1641, !dx.controlflow.hints !116

; <label>:1634                                    ; preds = %1630
  %1635 = fmul fast float %1610, 0x3FF7154760000000
  %1636 = call float @dx.op.unary.f32(i32 21, float %1635)  ; Exp(value)
  %1637 = fsub fast float 1.000000e+00, %1636
  %1638 = fmul fast float %1607, %1637
  %1639 = fsub fast float -0.000000e+00, %1638
  %1640 = fdiv fast float %1639, %1610
  br label %1641

; <label>:1641                                    ; preds = %1634, %1630, %1590, %1583
  %1642 = phi float [ %1640, %1634 ], [ %1602, %1590 ], [ %1587, %1583 ], [ %1607, %1630 ]
  %1643 = phi float [ %1631, %1634 ], [ %1601, %1590 ], [ %1586, %1583 ], [ %1631, %1630 ]
  %1644 = phi float [ %1620, %1634 ], [ %1600, %1590 ], [ %1585, %1583 ], [ %1620, %1630 ]
  %1645 = phi float [ %1636, %1634 ], [ %1592, %1590 ], [ 1.000000e+00, %1583 ], [ 1.000000e+00, %1630 ]
  %1646 = phi float [ %1632, %1634 ], [ %1592, %1590 ], [ 1.000000e+00, %1583 ], [ %1632, %1630 ]
  %1647 = phi float [ %1621, %1634 ], [ %1592, %1590 ], [ 1.000000e+00, %1583 ], [ %1621, %1630 ]
  %1648 = fmul fast float %1647, %1559
  %1649 = fmul fast float %1646, %1570
  %1650 = fmul fast float %1645, %1581
  %1651 = fadd fast float %1648, %1644
  %1652 = fadd fast float %1649, %1643
  %1653 = fadd fast float %1650, %1642
  %1654 = fmul fast float %1647, %1558
  %1655 = fmul fast float %1646, %1569
  %1656 = fmul fast float %1645, %1580
  br label %1657

; <label>:1657                                    ; preds = %1641, %1452
  %1658 = phi float [ %1656, %1641 ], [ %1458, %1452 ]
  %1659 = phi float [ %1655, %1641 ], [ %1457, %1452 ]
  %1660 = phi float [ %1654, %1641 ], [ %1456, %1452 ]
  %1661 = phi float [ %1653, %1641 ], [ %1455, %1452 ]
  %1662 = phi float [ %1652, %1641 ], [ %1454, %1452 ]
  %1663 = phi float [ %1651, %1641 ], [ %1453, %1452 ]
  %1664 = fmul fast float %1663, %724
  %1665 = fmul fast float %1662, %724
  %1666 = fmul fast float %1661, %724
  %1667 = fmul fast float %1660, %900
  %1668 = call float @dx.op.dot3.f32(i32 55, float %1660, float %1659, float %1658, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1669 = call float @dx.op.dot3.f32(i32 55, float %1664, float %1665, float %1666, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1670 = select i1 %105, float %1668, float %1660
  %1671 = select i1 %105, float %1668, float %1659
  %1672 = select i1 %105, float 1.000000e+00, float %1658
  %1673 = select i1 %105, float %1669, float %1664
  %1674 = select i1 %105, float 0.000000e+00, float %1665
  %1675 = select i1 %105, float 0.000000e+00, float %1666
  %1676 = fmul fast float %1670, %897
  %1677 = fmul fast float %1671, %898
  %1678 = fmul fast float %1672, %899
  %1679 = fadd fast float %1676, %1673
  %1680 = fadd fast float %1677, %1674
  %1681 = fadd fast float %1675, %1678
  %1682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1683 = extractvalue %dx.types.CBufRet.i32 %1682, 0
  %1684 = icmp eq i32 %1683, 0
  br i1 %1684, label %2050, label %1685, !dx.controlflow.hints !118

; <label>:1685                                    ; preds = %1657
  %1686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1687 = extractvalue %dx.types.CBufRet.f32 %1686, 2
  %1688 = extractvalue %dx.types.CBufRet.f32 %1686, 3
  %1689 = fmul fast float %1687, %47
  %1690 = fmul fast float %1688, %48
  %1691 = fmul fast float %1689, 2.000000e+00
  %1692 = fmul fast float %1690, 2.000000e+00
  %1693 = fsub fast float 1.000000e+00, %1691
  %1694 = fsub fast float 1.000000e+00, %1692
  %1695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1696 = extractvalue %dx.types.CBufRet.f32 %1695, 0
  %1697 = extractvalue %dx.types.CBufRet.f32 %1695, 1
  %1698 = extractvalue %dx.types.CBufRet.f32 %1695, 2
  %1699 = fmul fast float %1693, %1696
  %1700 = fmul fast float %1693, %1697
  %1701 = fmul fast float %1693, %1698
  %1702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1703 = extractvalue %dx.types.CBufRet.f32 %1702, 0
  %1704 = extractvalue %dx.types.CBufRet.f32 %1702, 1
  %1705 = extractvalue %dx.types.CBufRet.f32 %1702, 2
  %1706 = fmul fast float %1694, %1703
  %1707 = fmul fast float %1694, %1704
  %1708 = fmul fast float %1694, %1705
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 0
  %1711 = extractvalue %dx.types.CBufRet.f32 %1709, 1
  %1712 = extractvalue %dx.types.CBufRet.f32 %1709, 2
  %1713 = fadd fast float %1706, %1710
  %1714 = fadd fast float %1713, %1699
  %1715 = fadd fast float %1707, %1711
  %1716 = fadd fast float %1715, %1700
  %1717 = fadd fast float %1708, %1712
  %1718 = fadd fast float %1717, %1701
  %1719 = fmul fast float %1714, %896
  %1720 = fmul fast float %1716, %896
  %1721 = fmul fast float %1718, %896
  %1722 = fmul fast float %1719, %1719
  %1723 = fmul fast float %1720, %1720
  %1724 = fadd fast float %1722, %1723
  %1725 = fmul fast float %1721, %1721
  %1726 = fadd fast float %1724, %1725
  %1727 = call float @dx.op.unary.f32(i32 24, float %1726)  ; Sqrt(value)
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = fsub fast float %1727, %1729
  %1731 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %1732 = fmul fast float %1730, %1731
  %1733 = call float @dx.op.unary.f32(i32 7, float %1732)  ; Saturate(value)
  %1734 = fadd fast float %1733, -5.000000e-01
  %1735 = fmul fast float %1734, 2.000000e+00
  %1736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1737 = extractvalue %dx.types.CBufRet.f32 %1736, 2
  %1738 = call float @dx.op.binary.f32(i32 36, float %1737, float %1735)  ; FMin(a,b)
  %1739 = fsub fast float -0.000000e+00, %1737
  %1740 = fcmp fast ogt float %1738, %1739
  br i1 %1740, label %1741, label %2050, !dx.controlflow.hints !119

; <label>:1741                                    ; preds = %1685
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 3
  %1744 = fcmp fast ogt float %1743, 0.000000e+00
  br i1 %1744, label %1745, label %1820, !dx.controlflow.hints !120

; <label>:1745                                    ; preds = %1741
  %1746 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %1747 = extractvalue %dx.types.Dimensions %1746, 0
  %1748 = sitofp i32 %1747 to float
  %1749 = extractvalue %dx.types.Dimensions %1746, 1
  %1750 = sitofp i32 %1749 to float
  %1751 = fmul fast float %1689, %1748
  %1752 = fmul fast float %1690, %1750
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 1
  %1755 = fsub fast float -0.000000e+00, %1754
  %1756 = fptoui float %1755 to i32
  %1757 = fptoui float %1751 to i32
  %1758 = fptoui float %1752 to i32
  %1759 = and i32 %1756, 31
  %1760 = lshr i32 %1757, %1759
  %1761 = lshr i32 %1758, %1759
  %1762 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1756, i32 %1760, i32 %1761, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1763 = extractvalue %dx.types.ResRet.f32 %1762, 0
  %1764 = fcmp fast olt float %1763, -1.000000e+00
  %1765 = fcmp fast ogt float %1763, -1.000000e+00
  %1766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1767 = extractvalue %dx.types.CBufRet.f32 %1766, 1
  %1768 = select i1 %1765, float %1767, float 1.000000e+00
  %1769 = fadd fast float %1763, 1.000000e+00
  %1770 = fmul fast float %1768, %1769
  %1771 = call float @dx.op.unary.f32(i32 6, float %1770)  ; FAbs(value)
  %1772 = extractvalue %dx.types.CBufRet.f32 %1766, 3
  %1773 = fcmp fast oge float %1771, %1772
  %1774 = select i1 %1773, float 0x4197782600000000, float %1771
  %1775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1776 = extractvalue %dx.types.CBufRet.f32 %1775, 0
  %1777 = extractvalue %dx.types.CBufRet.f32 %1775, 1
  %1778 = extractvalue %dx.types.CBufRet.f32 %1775, 2
  %1779 = select i1 %1764, float %1776, float %1696
  %1780 = select i1 %1764, float %1777, float %1697
  %1781 = select i1 %1764, float %1778, float %1698
  %1782 = fmul fast float %1779, %1693
  %1783 = fmul fast float %1780, %1693
  %1784 = fmul fast float %1781, %1693
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1787 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %1788 = extractvalue %dx.types.CBufRet.f32 %1785, 2
  %1789 = select i1 %1764, float %1786, float %1703
  %1790 = select i1 %1764, float %1787, float %1704
  %1791 = select i1 %1764, float %1788, float %1705
  %1792 = fmul fast float %1789, %1694
  %1793 = fmul fast float %1790, %1694
  %1794 = fmul fast float %1791, %1694
  %1795 = fadd fast float %1792, %1782
  %1796 = fadd fast float %1793, %1783
  %1797 = fadd fast float %1794, %1784
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = extractvalue %dx.types.CBufRet.f32 %1798, 1
  %1801 = extractvalue %dx.types.CBufRet.f32 %1798, 2
  %1802 = select i1 %1764, float %1799, float %1710
  %1803 = select i1 %1764, float %1800, float %1711
  %1804 = select i1 %1764, float %1801, float %1712
  %1805 = fadd fast float %1795, %1802
  %1806 = fadd fast float %1796, %1803
  %1807 = fadd fast float %1797, %1804
  %1808 = fmul fast float %1805, %1774
  %1809 = fmul fast float %1806, %1774
  %1810 = fmul fast float %1807, %1774
  %1811 = fmul fast float %1808, %1808
  %1812 = fmul fast float %1809, %1809
  %1813 = fadd fast float %1811, %1812
  %1814 = fmul fast float %1810, %1810
  %1815 = fadd fast float %1813, %1814
  %1816 = call float @dx.op.unary.f32(i32 24, float %1815)  ; Sqrt(value)
  %1817 = fsub fast float %1816, %1729
  %1818 = fmul fast float %1817, %1731
  %1819 = call float @dx.op.unary.f32(i32 7, float %1818)  ; Saturate(value)
  br label %1820

; <label>:1820                                    ; preds = %1745, %1741
  %1821 = phi float [ %1819, %1745 ], [ 1.000000e+00, %1741 ]
  %1822 = fmul fast float %1738, 5.000000e-01
  %1823 = fadd fast float %1822, 5.000000e-01
  %1824 = call float @dx.op.unary.f32(i32 22, float %1823)  ; Frc(value)
  %1825 = call float @dx.op.unary.f32(i32 27, float %1824)  ; Round_ni(value)
  %1826 = call float @dx.op.unary.f32(i32 22, float %1824)  ; Frc(value)
  %1827 = fmul fast float %1826, 2.000000e+00
  %1828 = fadd fast float %1827, -1.000000e+00
  %1829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %17, float %1689, float %1690, float %1825, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1830 = extractvalue %dx.types.ResRet.f32 %1829, 0
  %1831 = extractvalue %dx.types.ResRet.f32 %1829, 1
  %1832 = extractvalue %dx.types.ResRet.f32 %1829, 2
  %1833 = extractvalue %dx.types.ResRet.f32 %1829, 3
  %1834 = fadd fast float %1830, -5.000000e-01
  %1835 = fadd fast float %1832, -5.000000e-01
  %1836 = fmul fast float %1834, 0xBFD5555560000000
  %1837 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1835, float %1836)  ; FMad(a,b,c)
  %1838 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1831, float 0.000000e+00)  ; FMad(a,b,c)
  %1839 = fadd fast float %1838, %1833
  %1840 = fmul fast float %1834, -7.500000e-01
  %1841 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1835, float %1840)  ; FMad(a,b,c)
  %1842 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1831, float 0.000000e+00)  ; FMad(a,b,c)
  %1843 = fadd fast float %1842, %1833
  %1844 = call float @dx.op.binary.f32(i32 35, float %1837, float -1.000000e+00)  ; FMax(a,b)
  %1845 = call float @dx.op.binary.f32(i32 35, float %1839, float -1.000000e+00)  ; FMax(a,b)
  %1846 = call float @dx.op.binary.f32(i32 35, float %1841, float -1.000000e+00)  ; FMax(a,b)
  %1847 = call float @dx.op.binary.f32(i32 35, float %1843, float -1.000000e+00)  ; FMax(a,b)
  %1848 = call float @dx.op.binary.f32(i32 36, float %1844, float 1.000000e+00)  ; FMin(a,b)
  %1849 = call float @dx.op.binary.f32(i32 36, float %1845, float 1.000000e+00)  ; FMin(a,b)
  %1850 = call float @dx.op.binary.f32(i32 36, float %1846, float 1.000000e+00)  ; FMin(a,b)
  %1851 = call float @dx.op.binary.f32(i32 36, float %1847, float 1.000000e+00)  ; FMin(a,b)
  %1852 = fcmp fast olt float %1848, 0x3FEFFF8020000000
  br i1 %1852, label %1853, label %1968, !dx.controlflow.hints !121

; <label>:1853                                    ; preds = %1820
  %1854 = extractvalue %dx.types.CBufRet.f32 %1736, 3
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 0
  %1857 = extractvalue %dx.types.CBufRet.f32 %1855, 1
  %1858 = extractvalue %dx.types.CBufRet.f32 %1855, 2
  %1859 = extractvalue %dx.types.CBufRet.f32 %1855, 3
  %1860 = fsub fast float %1856, %1848
  %1861 = fsub fast float %1857, %1849
  %1862 = fsub fast float %1858, %1850
  %1863 = fsub fast float %1859, %1851
  %1864 = fmul fast float %1860, %1854
  %1865 = fmul fast float %1861, %1854
  %1866 = fmul fast float %1862, %1854
  %1867 = fmul fast float %1863, %1854
  %1868 = fadd fast float %1864, %1848
  %1869 = fadd fast float %1865, %1849
  %1870 = fsub fast float -0.000000e+00, %1869
  %1871 = fadd fast float %1866, %1850
  %1872 = fadd fast float %1867, %1851
  %1873 = fmul fast float %1868, %1868
  %1874 = fsub fast float %1869, %1873
  %1875 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1874)  ; FMax(a,b)
  %1876 = fdiv fast float 1.000000e+00, %1875
  %1877 = fmul fast float %1869, %1868
  %1878 = fsub fast float %1871, %1877
  %1879 = fsub fast float %1828, %1868
  %1880 = fmul fast float %1828, %1828
  %1881 = fsub fast float %1880, %1869
  %1882 = fmul fast float %1879, %1876
  %1883 = fmul fast float %1882, %1878
  %1884 = fsub fast float %1881, %1883
  %1885 = fmul fast float %1869, %1869
  %1886 = fsub fast float %1872, %1885
  %1887 = fmul fast float %1878, %1878
  %1888 = fmul fast float %1887, %1876
  %1889 = fsub fast float %1886, %1888
  %1890 = fdiv fast float %1884, %1889
  %1891 = fmul fast float %1878, %1890
  %1892 = fsub fast float %1879, %1891
  %1893 = fmul fast float %1892, %1876
  %1894 = fmul fast float %1893, %1868
  %1895 = fsub fast float 1.000000e+00, %1894
  %1896 = fmul fast float %1869, %1890
  %1897 = fsub fast float %1895, %1896
  %1898 = fmul fast float %1893, %1893
  %1899 = fmul fast float %1890, 4.000000e+00
  %1900 = fmul fast float %1899, %1897
  %1901 = fsub fast float %1898, %1900
  %1902 = call float @dx.op.unary.f32(i32 24, float %1901)  ; Sqrt(value)
  %1903 = fcmp fast oge float %1893, 0.000000e+00
  %1904 = fsub fast float -0.000000e+00, %1902
  %1905 = select i1 %1903, float %1904, float %1902
  %1906 = fsub fast float %1905, %1893
  %1907 = fdiv fast float %1906, %1890
  %1908 = fdiv fast float %1897, %1906
  %1909 = fmul fast float %1907, 5.000000e-01
  %1910 = fmul fast float %1908, 2.000000e+00
  %1911 = select i1 %1903, float %1909, float %1910
  %1912 = select i1 %1903, float %1910, float %1909
  %1913 = call float @dx.op.binary.f32(i32 35, float %1911, float %1912)  ; FMax(a,b)
  %1914 = call float @dx.op.binary.f32(i32 36, float %1911, float %1912)  ; FMin(a,b)
  %1915 = fcmp fast ogt float %1828, %1914
  br i1 %1915, label %1916, label %1926

; <label>:1916                                    ; preds = %1853
  %1917 = fsub fast float %1828, %1914
  %1918 = fsub fast float %1913, %1914
  %1919 = fmul fast float %1917, %1918
  %1920 = fmul fast float %1913, %1828
  %1921 = fadd fast float %1913, %1828
  %1922 = fmul fast float %1921, %1868
  %1923 = fadd fast float %1920, %1869
  %1924 = fsub fast float %1923, %1922
  %1925 = fdiv fast float %1924, %1919
  br label %1926

; <label>:1926                                    ; preds = %1916, %1853
  %1927 = phi float [ %1925, %1916 ], [ 0.000000e+00, %1853 ]
  %1928 = fcmp fast ogt float %1828, %1913
  %1929 = fsub fast float %1828, %1913
  br i1 %1928, label %1930, label %1940

; <label>:1930                                    ; preds = %1926
  %1931 = fsub fast float %1913, %1914
  %1932 = fmul fast float %1931, %1929
  %1933 = fmul fast float %1914, %1828
  %1934 = fadd fast float %1914, %1828
  %1935 = fmul fast float %1934, %1868
  %1936 = fsub fast float %1870, %1933
  %1937 = fadd fast float %1936, %1935
  %1938 = fdiv fast float %1937, %1932
  %1939 = fadd fast float %1938, %1927
  br label %1940

; <label>:1940                                    ; preds = %1930, %1926
  %1941 = phi float [ %1939, %1930 ], [ %1927, %1926 ]
  %1942 = fsub fast float %1828, %1914
  %1943 = fmul fast float %1942, %1929
  %1944 = fmul fast float %1914, %1913
  %1945 = fadd fast float %1914, %1913
  %1946 = fmul fast float %1945, %1868
  %1947 = fadd fast float %1944, %1869
  %1948 = fsub fast float %1947, %1946
  %1949 = fdiv fast float %1948, %1943
  %1950 = call float @dx.op.unary.f32(i32 7, float %1941)  ; Saturate(value)
  %1951 = fcmp fast oeq float %743, 0.000000e+00
  %1952 = extractvalue %dx.types.CBufRet.f32 %1736, 0
  %1953 = fcmp fast oeq float %1952, 0.000000e+00
  %1954 = or i1 %1951, %1953
  %1955 = fmul fast float %1952, 2.000000e+00
  %1956 = fadd fast float %1737, %1738
  %1957 = fdiv fast float %1956, %1955
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  %1959 = fmul fast float %1958, 2.000000e+00
  %1960 = fsub fast float 3.000000e+00, %1959
  %1961 = fmul fast float %1958, %1958
  %1962 = fmul fast float %1961, %1960
  %1963 = select i1 %1954, float 1.000000e+00, float %1962
  %1964 = fmul fast float %1949, %743
  %1965 = fadd fast float %1950, %1964
  %1966 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  %1967 = fmul fast float %1963, %1966
  br label %1968

; <label>:1968                                    ; preds = %1940, %1820
  %1969 = phi float [ %1967, %1940 ], [ 0.000000e+00, %1820 ]
  %1970 = fsub fast float 1.000000e+00, %1969
  %1971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %1689, float %1690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1974 = extractvalue %dx.types.CBufRet.i32 %1973, 2
  %1975 = icmp eq i32 %1974, 0
  br i1 %1975, label %1981, label %1976

; <label>:1976                                    ; preds = %1968
  %1977 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1978 = fadd fast float %1972, -1.000000e+00
  %1979 = fmul fast float %1977, %1978
  %1980 = fadd fast float %1979, 1.000000e+00
  br label %1981

; <label>:1981                                    ; preds = %1976, %1968
  %1982 = phi float [ %1980, %1976 ], [ %1970, %1968 ]
  br i1 %1744, label %1983, label %2001

; <label>:1983                                    ; preds = %1981
  %1984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1985 = extractvalue %dx.types.CBufRet.f32 %1984, 1
  %1986 = fsub fast float %1821, %1985
  %1987 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1988 = fsub fast float %1821, %1743
  %1989 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1990 = fsub fast float %1987, %1989
  %1991 = fsub fast float %1823, %1989
  %1992 = fdiv fast float %1991, %1990
  %1993 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1994 = fmul fast float %1993, 2.000000e+00
  %1995 = fsub fast float 3.000000e+00, %1994
  %1996 = fsub fast float %1972, %1982
  %1997 = fmul fast float %1993, %1993
  %1998 = fmul fast float %1997, %1996
  %1999 = fmul fast float %1998, %1995
  %2000 = fadd fast float %1999, %1982
  br label %2001

; <label>:2001                                    ; preds = %1983, %1981
  %2002 = phi float [ %2000, %1983 ], [ %1982, %1981 ]
  %2003 = call float @dx.op.binary.f32(i32 35, float %1972, float %2002)  ; FMax(a,b)
  %2004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %2005 = extractvalue %dx.types.CBufRet.i32 %2004, 2
  %2006 = and i32 %2005, 1
  %2007 = icmp eq i32 %2006, 0
  %2008 = fcmp fast une float %2003, 1.000000e+00
  %2009 = and i1 %2008, %2007
  br i1 %2009, label %2010, label %2029

; <label>:2010                                    ; preds = %2001
  %2011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %17, float %1689, float %1690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2012 = extractvalue %dx.types.ResRet.f32 %2011, 0
  %2013 = extractvalue %dx.types.ResRet.f32 %2011, 1
  %2014 = extractvalue %dx.types.ResRet.f32 %2011, 2
  %2015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2016 = extractvalue %dx.types.CBufRet.f32 %2015, 1
  %2017 = fmul fast float %2016, %2012
  %2018 = fmul fast float %2016, %2013
  %2019 = fmul fast float %2016, %2014
  %2020 = fcmp fast ogt float %1972, 0x3FEFFF2E40000000
  %2021 = fsub fast float 1.000000e+00, %2003
  %2022 = fsub fast float 1.000000e+00, %1972
  %2023 = fdiv fast float %2021, %2022
  %2024 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2025 = select i1 %2020, float 0.000000e+00, float %2024
  %2026 = fmul fast float %2017, %2025
  %2027 = fmul fast float %2018, %2025
  %2028 = fmul fast float %2019, %2025
  br label %2029

; <label>:2029                                    ; preds = %2010, %2001
  %2030 = phi float [ 0.000000e+00, %2001 ], [ %2026, %2010 ]
  %2031 = phi float [ 0.000000e+00, %2001 ], [ %2027, %2010 ]
  %2032 = phi float [ 0.000000e+00, %2001 ], [ %2028, %2010 ]
  %2033 = fmul fast float %2030, %724
  %2034 = fmul fast float %2031, %724
  %2035 = fmul fast float %2032, %724
  %2036 = fmul fast float %2003, %1667
  %2037 = call float @dx.op.dot3.f32(i32 55, float %2003, float %2003, float %2003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2038 = call float @dx.op.dot3.f32(i32 55, float %2033, float %2034, float %2035, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2039 = select i1 %105, float %2037, float %2003
  %2040 = select i1 %105, float 1.000000e+00, float %2003
  %2041 = select i1 %105, float %2038, float %2033
  %2042 = select i1 %105, float 0.000000e+00, float %2034
  %2043 = select i1 %105, float 0.000000e+00, float %2035
  %2044 = fmul fast float %2039, %1679
  %2045 = fmul fast float %2039, %1680
  %2046 = fmul fast float %2040, %1681
  %2047 = fadd fast float %2044, %2041
  %2048 = fadd fast float %2045, %2042
  %2049 = fadd fast float %2043, %2046
  br label %2050

; <label>:2050                                    ; preds = %2029, %1685, %1657, %892
  %2051 = phi float [ %897, %892 ], [ %1679, %1657 ], [ %2047, %2029 ], [ %1679, %1685 ]
  %2052 = phi float [ %898, %892 ], [ %1680, %1657 ], [ %2048, %2029 ], [ %1680, %1685 ]
  %2053 = phi float [ %899, %892 ], [ %1681, %1657 ], [ %2049, %2029 ], [ %1681, %1685 ]
  %2054 = phi float [ %900, %892 ], [ %1667, %1657 ], [ %2036, %2029 ], [ %1667, %1685 ]
  %2055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2056 = extractvalue %dx.types.CBufRet.f32 %2055, 2
  %2057 = extractvalue %dx.types.CBufRet.f32 %2055, 3
  %2058 = fmul fast float %2056, %47
  %2059 = fmul fast float %2057, %48
  %2060 = call float @dx.op.unary.f32(i32 7, float %2058)  ; Saturate(value)
  %2061 = call float @dx.op.unary.f32(i32 7, float %2059)  ; Saturate(value)
  %2062 = select i1 %754, i32 2, i32 0
  %2063 = or i32 %2062, 1
  %2064 = uitofp i32 %2063 to float
  %2065 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %2060, float %2061, float %2064, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  %2067 = extractvalue %dx.types.ResRet.f32 %2065, 1
  %2068 = extractvalue %dx.types.ResRet.f32 %2065, 2
  %2069 = extractvalue %dx.types.ResRet.f32 %2065, 3
  %2070 = add nuw nsw i32 %2062, 2
  %2071 = uitofp i32 %2070 to float
  %2072 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %17, float %2060, float %2061, float %2071, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.ResRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.ResRet.f32 %2072, 2
  %2076 = extractvalue %dx.types.ResRet.f32 %2072, 3
  %2077 = call float @dx.op.binary.f32(i32 35, float %2067, float %2068)  ; FMax(a,b)
  %2078 = call float @dx.op.binary.f32(i32 35, float %2066, float %2077)  ; FMax(a,b)
  %2079 = call float @dx.op.binary.f32(i32 35, float %2078, float %2069)  ; FMax(a,b)
  %2080 = call float @dx.op.binary.f32(i32 36, float %2074, float %2075)  ; FMin(a,b)
  %2081 = call float @dx.op.binary.f32(i32 36, float %2073, float %2080)  ; FMin(a,b)
  %2082 = call float @dx.op.binary.f32(i32 36, float %2081, float %2076)  ; FMin(a,b)
  %2083 = fmul fast float %2079, 2.550000e+02
  %2084 = fadd fast float %2083, 0x3F70101020000000
  %2085 = fptoui float %2084 to i32
  %2086 = fmul fast float %2082, 2.550000e+02
  %2087 = fadd fast float %2086, 0x3F70101020000000
  %2088 = fptoui float %2087 to i32
  %2089 = icmp ult i32 %2085, %2088
  br i1 %2089, label %2090, label %2142

; <label>:2090                                    ; preds = %2050
  %2091 = fcmp fast ogt float %39, 9.843750e-01
  %2092 = fadd fast float %896, -4.000000e+00
  %2093 = select i1 %2091, float -4.000000e+00, float %2092
  %2094 = call float @dx.op.binary.f32(i32 35, float %2093, float 0.000000e+00)  ; FMax(a,b)
  %2095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2096 = extractvalue %dx.types.CBufRet.f32 %2095, 0
  %2097 = fadd fast float %2096, %2094
  %2098 = extractvalue %dx.types.CBufRet.f32 %2095, 2
  %2099 = fmul fast float %2097, %2098
  %2100 = call float @dx.op.unary.f32(i32 23, float %2099)  ; Log(value)
  %2101 = extractvalue %dx.types.CBufRet.f32 %2095, 3
  %2102 = fmul fast float %2101, %2100
  %2103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2104 = extractvalue %dx.types.CBufRet.f32 %2103, 2
  %2105 = fmul fast float %2102, %2104
  %2106 = call float @dx.op.unary.f32(i32 7, float %2105)  ; Saturate(value)
  %2107 = uitofp i32 %2085 to float
  %2108 = uitofp i32 %2088 to float
  %2109 = fadd fast float %2107, 5.000000e-01
  %2110 = fadd fast float %2108, 5.000000e-01
  %2111 = fmul fast float %2104, %2109
  %2112 = fmul fast float %2104, %2110
  %2113 = fadd fast float %2111, 0x3F0FFB4800000000
  %2114 = fadd fast float %2112, 0xBF0FFB4800000000
  %2115 = call float @dx.op.binary.f32(i32 35, float %2106, float %2113)  ; FMax(a,b)
  %2116 = call float @dx.op.binary.f32(i32 36, float %2115, float %2114)  ; FMin(a,b)
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 1
  %2119 = extractvalue %dx.types.CBufRet.f32 %2117, 2
  %2120 = extractvalue %dx.types.CBufRet.f32 %2117, 0
  %2121 = select i1 %754, float %2120, float 0.000000e+00
  %2122 = fmul fast float %2118, %2116
  %2123 = fadd fast float %2121, %2122
  %2124 = fadd fast float %2121, %2119
  %2125 = fsub fast float %2118, %2119
  %2126 = fadd fast float %2125, %2121
  %2127 = call float @dx.op.binary.f32(i32 35, float %2123, float %2124)  ; FMax(a,b)
  %2128 = call float @dx.op.binary.f32(i32 36, float %2127, float %2126)  ; FMin(a,b)
  %2129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %16, float %2060, float %2061, float %2128, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2130 = extractvalue %dx.types.ResRet.f32 %2129, 0
  %2131 = extractvalue %dx.types.ResRet.f32 %2129, 1
  %2132 = extractvalue %dx.types.ResRet.f32 %2129, 2
  %2133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %16, float %2060, float %2061, float %2128, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2134 = extractvalue %dx.types.ResRet.f32 %2133, 0
  %2135 = extractvalue %dx.types.ResRet.f32 %2133, 1
  %2136 = extractvalue %dx.types.ResRet.f32 %2133, 2
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2139 = fmul fast float %2138, %2134
  %2140 = fmul fast float %2138, %2135
  %2141 = fmul fast float %2138, %2136
  br label %2142

; <label>:2142                                    ; preds = %2090, %2050
  %2143 = phi float [ %2130, %2090 ], [ 1.000000e+00, %2050 ]
  %2144 = phi float [ %2131, %2090 ], [ 1.000000e+00, %2050 ]
  %2145 = phi float [ %2132, %2090 ], [ 1.000000e+00, %2050 ]
  %2146 = phi float [ %2139, %2090 ], [ 0.000000e+00, %2050 ]
  %2147 = phi float [ %2140, %2090 ], [ 0.000000e+00, %2050 ]
  %2148 = phi float [ %2141, %2090 ], [ 0.000000e+00, %2050 ]
  %2149 = fmul fast float %2146, %724
  %2150 = fmul fast float %2147, %724
  %2151 = fmul fast float %2148, %724
  %2152 = fmul fast float %2143, %2054
  %2153 = call float @dx.op.dot3.f32(i32 55, float %2143, float %2144, float %2145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2154 = call float @dx.op.dot3.f32(i32 55, float %2149, float %2150, float %2151, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2155 = select i1 %105, float %2153, float %2143
  %2156 = select i1 %105, float %2153, float %2144
  %2157 = select i1 %105, float 1.000000e+00, float %2145
  %2158 = select i1 %105, float %2154, float %2149
  %2159 = select i1 %105, float 0.000000e+00, float %2150
  %2160 = select i1 %105, float 0.000000e+00, float %2151
  %2161 = fmul fast float %2155, %2051
  %2162 = fmul fast float %2156, %2052
  %2163 = fmul fast float %2157, %2053
  %2164 = fadd fast float %2161, %2158
  %2165 = fadd fast float %2162, %2159
  %2166 = fadd fast float %2160, %2163
  %2167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2168 = extractvalue %dx.types.CBufRet.i32 %2167, 3
  %2169 = and i32 %2168, 3
  %2170 = icmp ne i32 %2169, 0
  %2171 = and i32 %2168, 4
  %2172 = icmp ne i32 %2171, 0
  %2173 = and i1 %2170, %2172
  %2174 = and i1 %105, %2173
  br i1 %2174, label %2175, label %2181

; <label>:2175                                    ; preds = %2142
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 1
  %2178 = fadd fast float %2152, -1.000000e+00
  %2179 = fmul fast float %2177, %2178
  %2180 = fadd fast float %2179, 1.000000e+00
  br label %2181

; <label>:2181                                    ; preds = %2175, %2142
  %2182 = phi float [ %2180, %2175 ], [ %2152, %2142 ]
  %2183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2184 = extractvalue %dx.types.CBufRet.f32 %2183, 0
  br i1 %105, label %2185, label %2207

; <label>:2185                                    ; preds = %2181
  %2186 = fadd fast float %2164, %2165
  %2187 = fmul fast float %2184, %2186
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 3
  %2190 = extractvalue %dx.types.CBufRet.f32 %729, 1
  %2191 = fsub fast float %732, %2190
  %2192 = extractvalue %dx.types.CBufRet.f32 %729, 2
  %2193 = fmul fast float %2191, %2192
  %2194 = call float @dx.op.unary.f32(i32 7, float %2193)  ; Saturate(value)
  %2195 = fsub fast float %2194, %2189
  %2196 = fmul fast float %2195, %2182
  %2197 = fadd fast float %2196, %2189
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 0
  %2200 = fsub fast float %2197, %2199
  %2201 = fmul fast float %2200, 1.000000e+01
  %2202 = call float @dx.op.unary.f32(i32 7, float %2201)  ; Saturate(value)
  %2203 = fsub fast float %700, %724
  %2204 = fmul fast float %2202, %2203
  %2205 = fadd fast float %2204, %724
  %2206 = fmul fast float %2205, %2197
  br label %2216

; <label>:2207                                    ; preds = %2181
  %2208 = fmul fast float %2184, %2164
  %2209 = fmul fast float %2184, %2165
  %2210 = fmul fast float %2184, %2166
  %2211 = call float @dx.op.binary.f32(i32 35, float %2209, float %2210)  ; FMax(a,b)
  %2212 = call float @dx.op.binary.f32(i32 35, float %2208, float %2211)  ; FMax(a,b)
  %2213 = call float @dx.op.binary.f32(i32 35, float %2212, float %724)  ; FMax(a,b)
  %2214 = fcmp fast ugt float %2213, 0x3F10000000000000
  br i1 %2214, label %2216, label %2215

; <label>:2215                                    ; preds = %2207
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2216

; <label>:2216                                    ; preds = %2215, %2207, %2185
  %2217 = phi float [ %2187, %2185 ], [ %2208, %2215 ], [ %2208, %2207 ]
  %2218 = phi float [ %2206, %2185 ], [ %2209, %2215 ], [ %2209, %2207 ]
  %2219 = phi float [ %2205, %2185 ], [ %2210, %2215 ], [ %2210, %2207 ]
  %2220 = phi float [ %2205, %2185 ], [ %724, %2215 ], [ %724, %2207 ]
  %2221 = fadd fast float %503, 0x3FE3C6EF40000000
  %2222 = call float @dx.op.unary.f32(i32 22, float %2221)  ; Frc(value)
  %2223 = call float @dx.op.unary.f32(i32 23, float %2217)  ; Log(value)
  %2224 = fadd fast float %2223, -7.000000e+00
  %2225 = call float @dx.op.unary.f32(i32 21, float %2224)  ; Exp(value)
  %2226 = fmul fast float %2222, 2.000000e+00
  %2227 = fadd fast float %2226, -1.000000e+00
  %2228 = fmul fast float %2225, %2227
  %2229 = fcmp fast ogt float %2217, 0.000000e+00
  %2230 = select i1 %2229, float %2228, float 0.000000e+00
  %2231 = fadd fast float %2230, %2217
  %2232 = fadd fast float %503, 0x3FF3C6EF40000000
  %2233 = call float @dx.op.unary.f32(i32 22, float %2232)  ; Frc(value)
  %2234 = call float @dx.op.unary.f32(i32 23, float %2218)  ; Log(value)
  %2235 = fadd fast float %2234, -7.000000e+00
  %2236 = call float @dx.op.unary.f32(i32 21, float %2235)  ; Exp(value)
  %2237 = fmul fast float %2233, 2.000000e+00
  %2238 = fadd fast float %2237, -1.000000e+00
  %2239 = fmul fast float %2236, %2238
  %2240 = fcmp fast ogt float %2218, 0.000000e+00
  %2241 = select i1 %2240, float %2239, float 0.000000e+00
  %2242 = fadd fast float %2241, %2218
  %2243 = fadd fast float %503, 0x3FFDAA66E0000000
  %2244 = call float @dx.op.unary.f32(i32 22, float %2243)  ; Frc(value)
  %2245 = call float @dx.op.unary.f32(i32 23, float %2219)  ; Log(value)
  %2246 = fadd fast float %2245, -6.000000e+00
  %2247 = call float @dx.op.unary.f32(i32 21, float %2246)  ; Exp(value)
  %2248 = fmul fast float %2244, 2.000000e+00
  %2249 = fadd fast float %2248, -1.000000e+00
  %2250 = fmul fast float %2247, %2249
  %2251 = fcmp fast ogt float %2219, 0.000000e+00
  %2252 = select i1 %2251, float %2250, float 0.000000e+00
  %2253 = fadd fast float %2252, %2219
  %2254 = select i1 %105, float %2218, float %2242
  %2255 = select i1 %105, float %2219, float %2253
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2256 = call float @dx.op.binary.f32(i32 36, float %2231, float 3.225500e+04)  ; FMin(a,b)
  %2257 = call float @dx.op.binary.f32(i32 36, float %2254, float 3.225500e+04)  ; FMin(a,b)
  %2258 = call float @dx.op.binary.f32(i32 36, float %2255, float 3.225500e+04)  ; FMin(a,b)
  %2259 = call float @dx.op.binary.f32(i32 36, float %2220, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2256)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2257)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2258)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %2259)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2220)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2220)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2220)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2220)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[34 x i32] [i32 32, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 254, i32 255, i32 255, i32 255, i32 0, i32 0, i32 255, i32 255, i32 255, i32 0, i32 255, i32 255, i32 255, i32 0, i32 1, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !61}
!35 = !{!36, !57, null}
!36 = !{!37, !40, !41, !43, !46, !48, !50, !52, !54, !56}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 15}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !39}
!41 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 2, i8 0, !42}
!42 = !{i32 3, i32 3}
!43 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !44, i8 1, i32 1, i8 4, i32 3, i8 0, !45}
!44 = !{i32 2}
!45 = !{i32 3, i32 7}
!46 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 4, i8 0, !45}
!47 = !{i32 3}
!48 = !{i32 5, !"TEXCOORD", i8 9, i8 0, !49, i8 2, i32 1, i8 3, i32 5, i8 0, !45}
!49 = !{i32 5}
!50 = !{i32 6, !"TEXCOORD", i8 9, i8 0, !51, i8 2, i32 1, i8 4, i32 6, i8 0, null}
!51 = !{i32 8}
!52 = !{i32 7, !"COLOR", i8 5, i8 0, !47, i8 1, i32 1, i8 3, i32 7, i8 0, !53}
!53 = !{i32 3, i32 1}
!54 = !{i32 8, !"COLOR", i8 5, i8 0, !55, i8 1, i32 1, i8 1, i32 7, i8 3, null}
!55 = !{i32 4}
!56 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!57 = !{!58, !59}
!58 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !39}
!59 = !{i32 1, !"SV_Target", i8 9, i8 16, !60, i8 0, i32 1, i8 4, i32 1, i8 0, !39}
!60 = !{i32 1}
!61 = !{i32 0, i64 24}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
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

