;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; COLOR                    0   xyzw        1     NONE   float   x   
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; ENTITY_IDS               0   xy          3     NONE    uint   x   
; PACKED_TRI_DATA          0   xyzw        4     NONE    uint   x   
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
; shader hash: ed3244a3d3bcc1d756f604379d81065c
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
; TEXCOORDS                0                 linear       
; ENTITY_IDS               0        nointerpolation       
; PACKED_TRI_DATA          0        nointerpolation       
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
;                                   texture    byte         r/o      T3     t22,space1     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture     f32          2d      T5             t0     1
;                                   texture     f32          2d      T6     t57,space2     1
;                                   texture    byte         r/o      T7     t69,space1     1
;                                   texture     u32          2d      T8     t56,space2     1
;                                   texture     f32          1d      T9     t30,space2     1
;                                   texture     f32          3d     T10     t44,space2     1
;                                   texture     f32          3d     T11     t45,space2     1
;                                   texture     f32     2darray     T12     t47,space2     1
;                                   textureunorm_f32     2darray     T13     t85,space2     1
;                                   texture     f32          2d     T14     t83,space2     1
;                                   texture     f32          2d     T15     t86,space2     1
;                                   texture    byte         r/o     T16             t1     1
;
;
; ViewId state:
;
; Number of inputs: 20, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 16 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 16 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 16 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 16 }
;   output 4 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 16 }
;   output 5 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 16 }
;   output 6 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 16 }
;   output 7 depends on inputs: { 0, 1, 2, 3, 4, 8, 9, 12, 16 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = alloca [3 x float], align 4
  %32 = alloca [3 x float], align 4
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 0
  %37 = fmul fast float %36, %27
  %38 = fmul fast float %36, %28
  %39 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.f32 %39, 2
  %41 = extractvalue %dx.types.CBufRet.f32 %39, 3
  %42 = fmul fast float %40, 2.000000e+00
  %43 = fmul fast float %42, %37
  %44 = fmul fast float %41, 2.000000e+00
  %45 = fmul fast float %44, %38
  %46 = fsub fast float 1.000000e+00, %43
  %47 = fsub fast float 1.000000e+00, %45
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %50 = extractvalue %dx.types.CBufRet.f32 %48, 1
  %51 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %52 = fmul fast float %46, %49
  %53 = fmul fast float %46, %50
  %54 = fmul fast float %46, %51
  %55 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %56 = extractvalue %dx.types.CBufRet.f32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.f32 %55, 1
  %58 = extractvalue %dx.types.CBufRet.f32 %55, 2
  %59 = fmul fast float %47, %56
  %60 = fmul fast float %47, %57
  %61 = fmul fast float %47, %58
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = extractvalue %dx.types.CBufRet.f32 %62, 1
  %65 = extractvalue %dx.types.CBufRet.f32 %62, 2
  %66 = fadd fast float %59, %63
  %67 = fadd fast float %66, %52
  %68 = fadd fast float %60, %64
  %69 = fadd fast float %68, %53
  %70 = fadd fast float %61, %65
  %71 = fadd fast float %70, %54
  %72 = fmul fast float %67, %30
  %73 = fmul fast float %69, %30
  %74 = fmul fast float %71, %30
  %75 = shl i32 %23, 5
  %76 = add i32 %75, 4194304
  %77 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %76, i32 undef)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.i32 %77, 0
  %79 = extractvalue %dx.types.ResRet.i32 %77, 1
  %80 = extractvalue %dx.types.ResRet.i32 %77, 2
  %81 = extractvalue %dx.types.ResRet.i32 %77, 3
  %82 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.i32 %82, 3
  %84 = and i32 %83, 3
  %85 = icmp ne i32 %84, 0
  %86 = and i32 %83, 4
  %87 = icmp ne i32 %86, 0
  %88 = and i1 %85, %87
  br i1 %88, label %89, label %98

; <label>:89                                      ; preds = %0
  %90 = fmul fast float %41, %38
  %91 = fmul fast float %40, %37
  %92 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %18, float %91, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = fsub fast float 1.000000e+00, %93
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = fcmp fast olt float %94, %96
  br label %106

; <label>:98                                      ; preds = %0
  %99 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.i32 %99, 3
  %101 = and i32 %100, 3
  %102 = icmp ne i32 %101, 0
  %103 = and i32 %100, 4
  %104 = icmp eq i32 %103, 0
  %105 = and i1 %102, %104
  br label %106

; <label>:106                                     ; preds = %98, %89
  %107 = phi i1 [ %97, %89 ], [ %105, %98 ]
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %111 = fmul fast float %109, %37
  %112 = fmul fast float %110, %38
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = and i32 %114, 114688
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %116, float %111, float 0.000000e+00
  %118 = select i1 %116, float %112, float 0.000000e+00
  %119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %19, float %117, float %118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = fmul fast float %120, 2.550000e+02
  %122 = fptoui float %121 to i32
  %123 = select i1 %116, i32 %122, i32 0
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = and i32 %78, 65535
  %127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %126)  ; LegacyF16ToF32(value)
  %128 = lshr i32 %78, 16
  %129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %128)  ; LegacyF16ToF32(value)
  %130 = and i32 %79, 65535
  %131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %130)  ; LegacyF16ToF32(value)
  %132 = lshr i32 %79, 16
  %133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %132)  ; LegacyF16ToF32(value)
  %134 = fmul fast float %133, %26
  %135 = and i32 %81, 65535
  %136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %135)  ; LegacyF16ToF32(value)
  %137 = shl i32 %80, 4
  %138 = and i32 %137, 32752
  %139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %138)  ; LegacyF16ToF32(value)
  %140 = lshr i32 %80, 7
  %141 = and i32 %140, 32752
  %142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %141)  ; LegacyF16ToF32(value)
  %143 = lshr i32 %80, 22
  %144 = shl nuw nsw i32 %143, 5
  %145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %144)  ; LegacyF16ToF32(value)
  %146 = fmul fast float %139, %136
  %147 = and i32 %125, 16
  %148 = icmp ne i32 %147, 0
  %149 = select i1 %148, float 1.000000e+00, float %134
  %150 = fcmp fast ogt float %149, 0.000000e+00
  br i1 %150, label %152, label %151

; <label>:151                                     ; preds = %106
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %152

; <label>:152                                     ; preds = %151, %106
  %153 = call float @dx.op.unary.f32(i32 7, float %149)  ; Saturate(value)
  %154 = fmul fast float %37, 5.000000e-01
  %155 = fmul fast float %38, 5.000000e-01
  %156 = fptosi float %154 to i32
  %157 = fptosi float %155 to i32
  %158 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %156, i32 %157, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = lshr i32 %159, 18
  %161 = uitofp i32 %160 to float
  %162 = fmul fast float %161, 0x3F4C00EBA0000000
  %163 = call float @dx.op.unary.f32(i32 21, float %162)  ; Exp(value)
  %164 = fadd fast float %163, -1.000000e+00
  %165 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %166 = extractvalue %dx.types.Dimensions %165, 0
  %167 = sitofp i32 %166 to float
  %168 = extractvalue %dx.types.Dimensions %165, 1
  %169 = sitofp i32 %168 to float
  %170 = fcmp fast oge float %154, %167
  %171 = fcmp fast oge float %155, %169
  %172 = or i1 %170, %171
  %173 = select i1 %172, float 0x4197782600000000, float %164
  %174 = fsub fast float %173, %30
  %175 = fcmp fast ogt float %174, 0.000000e+00
  %176 = and i32 %123, -2
  %177 = icmp eq i32 %176, 2
  %178 = and i1 %177, %175
  %179 = xor i1 %175, true
  %180 = icmp eq i32 %123, 1
  %181 = and i1 %180, %179
  %182 = or i1 %178, %181
  %183 = and i32 %125, 262144
  %184 = icmp ne i32 %183, 0
  %185 = and i1 %184, %182
  %186 = xor i1 %182, true
  %187 = and i32 %125, 131072
  %188 = icmp ne i32 %187, 0
  %189 = and i1 %188, %186
  %190 = or i1 %185, %189
  br i1 %190, label %191, label %192

; <label>:191                                     ; preds = %152
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %192

; <label>:192                                     ; preds = %191, %152
  %193 = add i32 %22, 104
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = extractvalue %dx.types.ResRet.i32 %194, 1
  %197 = extractvalue %dx.types.ResRet.i32 %194, 2
  %198 = extractvalue %dx.types.ResRet.i32 %194, 3
  %199 = bitcast i32 %195 to float
  %200 = bitcast i32 %196 to float
  %201 = bitcast i32 %197 to float
  %202 = bitcast i32 %198 to float
  %203 = add i32 %22, 120
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 2
  %206 = bitcast i32 %205 to float
  %207 = add i32 %22, 136
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = add i32 %22, 152
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = extractvalue %dx.types.ResRet.i32 %210, 1
  %213 = extractvalue %dx.types.ResRet.i32 %210, 2
  %214 = extractvalue %dx.types.ResRet.i32 %210, 3
  %215 = bitcast i32 %211 to float
  %216 = bitcast i32 %212 to float
  %217 = bitcast i32 %213 to float
  %218 = bitcast i32 %214 to float
  %219 = add i32 %22, 92
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 2
  %223 = icmp ne i32 %222, 0
  %224 = and i32 %221, 1
  %225 = icmp eq i32 %224, 0
  %226 = and i32 %221, 8
  %227 = icmp eq i32 %226, 0
  %228 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %229 = extractvalue %dx.types.Dimensions %228, 0
  %230 = sitofp i32 %229 to float
  %231 = extractvalue %dx.types.Dimensions %228, 1
  %232 = sitofp i32 %231 to float
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %235 = extractvalue %dx.types.CBufRet.f32 %233, 3
  %236 = fmul fast float %234, %37
  %237 = fmul fast float %235, %38
  %238 = fmul fast float %236, %230
  %239 = fmul fast float %237, %232
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %242 = fsub fast float -0.000000e+00, %241
  %243 = fptoui float %242 to i32
  %244 = fptoui float %238 to i32
  %245 = fptoui float %239 to i32
  %246 = and i32 %243, 31
  %247 = lshr i32 %244, %246
  %248 = lshr i32 %245, %246
  %249 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %243, i32 %247, i32 %248, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = fcmp fast ogt float %250, -1.000000e+00
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %254 = select i1 %251, float %253, float 1.000000e+00
  %255 = fadd fast float %250, 1.000000e+00
  %256 = fmul fast float %254, %255
  %257 = call float @dx.op.unary.f32(i32 6, float %256)  ; FAbs(value)
  %258 = extractvalue %dx.types.CBufRet.f32 %252, 3
  %259 = fcmp fast oge float %257, %258
  %260 = select i1 %259, float 0x4197782600000000, float %257
  %261 = fsub fast float %260, %30
  br i1 %227, label %323, label %262

; <label>:262                                     ; preds = %192
  %263 = extractvalue %dx.types.ResRet.i32 %204, 1
  %264 = bitcast i32 %263 to float
  %265 = extractvalue %dx.types.ResRet.i32 %208, 3
  %266 = bitcast i32 %265 to float
  %267 = extractvalue %dx.types.ResRet.i32 %208, 2
  %268 = bitcast i32 %267 to float
  %269 = extractvalue %dx.types.ResRet.i32 %208, 1
  %270 = bitcast i32 %269 to float
  %271 = extractvalue %dx.types.ResRet.i32 %208, 0
  %272 = bitcast i32 %271 to float
  %273 = extractvalue %dx.types.ResRet.i32 %204, 0
  %274 = bitcast i32 %273 to float
  %275 = fadd fast float %274, %30
  %276 = fcmp fast olt float %260, %30
  %277 = fcmp fast ogt float %260, %275
  %278 = or i1 %276, %277
  %279 = select i1 %278, float 0.000000e+00, float %261
  %280 = call float @dx.op.unary.f32(i32 83, float %260)  ; DerivCoarseX(value)
  %281 = call float @dx.op.unary.f32(i32 84, float %260)  ; DerivCoarseY(value)
  %282 = fmul fast float %280, %280
  %283 = fmul fast float %281, %281
  %284 = fadd fast float %283, %282
  %285 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %287 = extractvalue %dx.types.CBufRet.f32 %286, 2
  %288 = fmul fast float %287, %285
  %289 = call float @dx.op.unary.f32(i32 7, float %288)  ; Saturate(value)
  %290 = fmul fast float %289, %264
  %291 = fdiv fast float %261, %290
  %292 = call float @dx.op.unary.f32(i32 7, float %291)  ; Saturate(value)
  %293 = fmul fast float %292, 2.000000e+00
  %294 = fsub fast float 3.000000e+00, %293
  %295 = fmul fast float %292, %292
  %296 = fmul fast float %295, %294
  %297 = fsub fast float %260, %275
  %298 = fadd fast float %297, %290
  %299 = fdiv fast float %298, %290
  %300 = call float @dx.op.unary.f32(i32 7, float %299)  ; Saturate(value)
  %301 = fmul fast float %300, 2.000000e+00
  %302 = fsub fast float 3.000000e+00, %301
  %303 = fmul fast float %300, %300
  %304 = fmul fast float %303, %302
  %305 = fsub fast float %296, %304
  %306 = fmul fast float %272, %127
  %307 = fmul fast float %270, %129
  %308 = fmul fast float %268, %131
  %309 = fsub fast float %306, %215
  %310 = fsub fast float %307, %216
  %311 = fsub fast float %308, %217
  %312 = fsub fast float %266, %218
  %313 = fmul fast float %305, %309
  %314 = fmul fast float %305, %310
  %315 = fmul fast float %305, %311
  %316 = fmul fast float %305, %312
  %317 = fadd fast float %313, %215
  %318 = fadd fast float %314, %216
  %319 = fadd fast float %315, %217
  %320 = fadd fast float %316, %218
  %321 = fmul fast float %279, %199
  %322 = call float @dx.op.unary.f32(i32 6, float %321)  ; FAbs(value)
  br label %362

; <label>:323                                     ; preds = %192
  %324 = and i32 %221, 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %337, label %326

; <label>:326                                     ; preds = %323
  %327 = select i1 %223, float 5.000000e+01, float 1.000000e+00
  %328 = fmul fast float %327, %199
  %329 = fmul fast float %24, 2.000000e+00
  %330 = fmul fast float %25, 2.000000e+00
  %331 = fadd fast float %329, -1.000000e+00
  %332 = fadd fast float %330, -1.000000e+00
  %333 = call float @dx.op.dot2.f32(i32 54, float %331, float %332, float %331, float %332)  ; Dot2(ax,ay,bx,by)
  %334 = fmul fast float %333, %206
  %335 = fsub fast float %261, %334
  %336 = fmul fast float %328, %335
  br label %362

; <label>:337                                     ; preds = %323
  br i1 %225, label %357, label %338

; <label>:338                                     ; preds = %337
  %339 = select i1 %223, float 0x3F947AE140000000, float 1.000000e+00
  %340 = fdiv fast float 1.000000e+00, %339
  %341 = fmul fast float %339, %200
  %342 = fmul fast float %339, %201
  %343 = fmul fast float %340, %202
  %344 = call float @dx.op.unary.f32(i32 6, float %261)  ; FAbs(value)
  %345 = fcmp fast olt float %344, %341
  br i1 %345, label %346, label %350, !dx.controlflow.hints !53

; <label>:346                                     ; preds = %338
  %347 = fmul fast float %340, %199
  %348 = fmul fast float %347, %344
  %349 = call float @dx.op.unary.f32(i32 6, float %348)  ; FAbs(value)
  br label %362

; <label>:350                                     ; preds = %338
  %351 = fcmp fast ogt float %344, %342
  br i1 %351, label %352, label %362

; <label>:352                                     ; preds = %350
  %353 = fsub fast float %344, %342
  %354 = fmul fast float %343, %353
  %355 = call float @dx.op.unary.f32(i32 6, float %354)  ; FAbs(value)
  %356 = fsub fast float 1.000000e+00, %355
  br label %362

; <label>:357                                     ; preds = %337
  %358 = select i1 %223, float 5.000000e+01, float 1.000000e+00
  %359 = fmul fast float %358, %199
  %360 = call float @dx.op.binary.f32(i32 36, float %261, float 0x47EFFFFFE0000000)  ; FMin(a,b)
  %361 = fmul fast float %359, %360
  br label %362

; <label>:362                                     ; preds = %357, %352, %350, %346, %326, %262
  %363 = phi float [ %322, %262 ], [ %336, %326 ], [ %361, %357 ], [ %349, %346 ], [ %356, %352 ], [ %344, %350 ]
  %364 = phi float [ %317, %262 ], [ %127, %326 ], [ %127, %357 ], [ %127, %346 ], [ %127, %352 ], [ %127, %350 ]
  %365 = phi float [ %318, %262 ], [ %129, %326 ], [ %129, %357 ], [ %129, %346 ], [ %129, %352 ], [ %129, %350 ]
  %366 = phi float [ %319, %262 ], [ %131, %326 ], [ %131, %357 ], [ %131, %346 ], [ %131, %352 ], [ %131, %350 ]
  %367 = phi float [ %320, %262 ], [ 1.000000e+00, %326 ], [ 1.000000e+00, %357 ], [ 1.000000e+00, %346 ], [ 1.000000e+00, %352 ], [ 1.000000e+00, %350 ]
  %368 = call float @dx.op.unary.f32(i32 7, float %363)  ; Saturate(value)
  %369 = fmul fast float %367, %153
  %370 = fmul fast float %369, %368
  %371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.f32 %371, 2
  %373 = fptosi float %30 to i32
  %374 = sitofp i32 %373 to float
  %375 = fadd fast float %372, %374
  %376 = fmul fast float %375, 0x3FE3C6EF40000000
  %377 = frem fast float %37, 2.560000e+02
  %378 = frem fast float %38, 2.560000e+02
  %379 = fptoui float %377 to i32
  %380 = fptoui float %378 to i32
  %381 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %379, i32 %380, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %382 = extractvalue %dx.types.ResRet.f32 %381, 0
  %383 = fadd fast float %382, %376
  %384 = call float @dx.op.unary.f32(i32 22, float %383)  ; Frc(value)
  %385 = add i32 %22, 168
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = add i32 %387, 0
  %389 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %388, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %390 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %389, %dx.types.Handle %33, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %391 = extractvalue %dx.types.ResRet.f32 %390, 0
  %392 = extractvalue %dx.types.ResRet.f32 %390, 1
  %393 = extractvalue %dx.types.ResRet.f32 %390, 2
  %394 = add i32 %22, 56
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 255
  %398 = uitofp i32 %397 to float
  %399 = fmul fast float %398, 0x3F70101020000000
  %400 = lshr i32 %396, 8
  %401 = and i32 %400, 255
  %402 = uitofp i32 %401 to float
  %403 = fmul fast float %402, 0x3F70101020000000
  %404 = lshr i32 %396, 16
  %405 = and i32 %404, 255
  %406 = uitofp i32 %405 to float
  %407 = fmul fast float %406, 0x3F70101020000000
  %408 = add i32 %22, 172
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = add i32 %410, 0
  %412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %412, %dx.types.Handle %33, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = extractvalue %dx.types.ResRet.f32 %413, 1
  %416 = extractvalue %dx.types.ResRet.f32 %413, 2
  %417 = add i32 %22, 44
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = shl i32 %419, 4
  %421 = and i32 %420, 32752
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %419, 7
  %424 = and i32 %423, 32752
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %419, 22
  %427 = shl nuw nsw i32 %426, 5
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = fmul fast float %422, %414
  %430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %431 = extractvalue %dx.types.CBufRet.f32 %430, 0
  %432 = fmul fast float %429, %431
  %433 = add i32 %22, 48
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = lshr i32 %435, 22
  %437 = shl nuw nsw i32 %436, 5
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = fmul fast float %438, %432
  %440 = select i1 %107, float %439, float %432
  %441 = add i32 %22, 40
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 255
  %445 = uitofp i32 %444 to float
  %446 = fmul fast float %445, 0x3F70101020000000
  %447 = fmul fast float %446, %446
  %448 = add i32 %22, 176
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = add i32 %450, 0
  %452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %451, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %453 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %452, %dx.types.Handle %34, float %24, float %25, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = fmul fast float %447, %454
  %456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %457 = extractvalue %dx.types.CBufRet.f32 %456, 0
  %458 = fmul fast float %391, %364
  %459 = fmul fast float %399, %399
  %460 = fmul fast float %459, %458
  %461 = fmul fast float %460, %457
  %462 = fmul fast float %392, %365
  %463 = fmul fast float %403, %403
  %464 = fmul fast float %463, %462
  %465 = fmul fast float %464, %457
  %466 = fmul fast float %393, %366
  %467 = fmul fast float %407, %407
  %468 = fmul fast float %467, %466
  %469 = fmul fast float %468, %457
  %470 = fmul fast float %146, %440
  %471 = fmul fast float %142, %136
  %472 = fmul fast float %471, %415
  %473 = fmul fast float %472, %425
  %474 = fmul fast float %473, %431
  %475 = fmul fast float %145, %136
  %476 = fmul fast float %475, %416
  %477 = fmul fast float %476, %428
  %478 = fmul fast float %477, %431
  %479 = call float @dx.op.dot3.f32(i32 55, float %470, float %474, float %478, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %480 = select i1 %107, float 0.000000e+00, float %470
  %481 = select i1 %107, float %479, float %474
  %482 = select i1 %107, float 0.000000e+00, float %478
  %483 = call float @dx.op.dot3.f32(i32 55, float %461, float %465, float %469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %484 = add i32 %22, 32
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = and i32 %486, 255
  %488 = uitofp i32 %487 to float
  %489 = lshr i32 %486, 8
  %490 = and i32 %489, 255
  %491 = uitofp i32 %490 to float
  %492 = fmul fast float %491, %483
  %493 = fadd fast float %492, %488
  %494 = fmul fast float %493, 0x3F70101020000000
  %495 = call float @dx.op.unary.f32(i32 7, float %494)  ; Saturate(value)
  %496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %497 = extractvalue %dx.types.CBufRet.f32 %496, 0
  %498 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %9, i32 0, i32 %156, i32 %157, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = lshr i32 %499, 18
  %501 = uitofp i32 %500 to float
  %502 = fmul fast float %501, 0x3F4C00EBA0000000
  %503 = call float @dx.op.unary.f32(i32 21, float %502)  ; Exp(value)
  %504 = fadd fast float %503, -1.000000e+00
  %505 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %9, i32 0)  ; GetDimensions(handle,mipLevel)
  %506 = extractvalue %dx.types.Dimensions %505, 0
  %507 = sitofp i32 %506 to float
  %508 = extractvalue %dx.types.Dimensions %505, 1
  %509 = sitofp i32 %508 to float
  %510 = fcmp fast oge float %154, %507
  %511 = fcmp fast oge float %155, %509
  %512 = or i1 %510, %511
  %513 = select i1 %512, float 0x4197782600000000, float %504
  %514 = fmul fast float %480, %370
  %515 = fmul fast float %481, %370
  %516 = fmul fast float %482, %370
  %517 = fadd fast float %455, -1.000000e+00
  %518 = fmul fast float %517, %370
  %519 = fadd fast float %518, 1.000000e+00
  %520 = call float @dx.op.dot3.f32(i32 55, float %519, float %519, float %519, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = fsub fast float 1.000000e+00, %520
  %522 = fmul fast float %497, %495
  %523 = fsub fast float 1.000000e+00, %495
  %524 = call float @dx.op.unary.f32(i32 7, float %523)  ; Saturate(value)
  %525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.f32 %525, 3
  %527 = fmul fast float %526, %524
  %528 = fadd fast float %527, %522
  %529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %530 = extractvalue %dx.types.CBufRet.f32 %529, 3
  %531 = fmul fast float %461, %370
  %532 = fmul fast float %465, %370
  %533 = fmul fast float %469, %370
  %534 = icmp eq i32 %123, 3
  %535 = fcmp fast ogt float %30, %513
  %536 = and i1 %180, %535
  %537 = or i1 %534, %536
  %538 = icmp eq i32 %123, 2
  %539 = fcmp fast ole float %30, %513
  %540 = and i1 %538, %539
  %541 = or i1 %540, %537
  br i1 %536, label %542, label %684

; <label>:542                                     ; preds = %362
  %543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %544 = extractvalue %dx.types.CBufRet.f32 %543, 2
  %545 = extractvalue %dx.types.CBufRet.f32 %543, 3
  %546 = fmul fast float %544, %37
  %547 = fmul fast float %545, %38
  %548 = call float @dx.op.unary.f32(i32 7, float %546)  ; Saturate(value)
  %549 = call float @dx.op.unary.f32(i32 7, float %547)  ; Saturate(value)
  %550 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %18, float %548, float %549, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %551 = extractvalue %dx.types.ResRet.f32 %550, 0
  %552 = extractvalue %dx.types.ResRet.f32 %550, 1
  %553 = extractvalue %dx.types.ResRet.f32 %550, 2
  %554 = extractvalue %dx.types.ResRet.f32 %550, 3
  %555 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %18, float %548, float %549, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %556 = extractvalue %dx.types.ResRet.f32 %555, 0
  %557 = extractvalue %dx.types.ResRet.f32 %555, 1
  %558 = extractvalue %dx.types.ResRet.f32 %555, 2
  %559 = extractvalue %dx.types.ResRet.f32 %555, 3
  %560 = call float @dx.op.binary.f32(i32 35, float %552, float %553)  ; FMax(a,b)
  %561 = call float @dx.op.binary.f32(i32 35, float %551, float %560)  ; FMax(a,b)
  %562 = call float @dx.op.binary.f32(i32 35, float %561, float %554)  ; FMax(a,b)
  %563 = call float @dx.op.binary.f32(i32 36, float %557, float %558)  ; FMin(a,b)
  %564 = call float @dx.op.binary.f32(i32 36, float %556, float %563)  ; FMin(a,b)
  %565 = call float @dx.op.binary.f32(i32 36, float %564, float %559)  ; FMin(a,b)
  %566 = fmul fast float %562, 2.550000e+02
  %567 = fadd fast float %566, 0x3F70101020000000
  %568 = fptoui float %567 to i32
  %569 = fmul fast float %565, 2.550000e+02
  %570 = fadd fast float %569, 0x3F70101020000000
  %571 = fptoui float %570 to i32
  %572 = icmp ult i32 %568, %571
  br i1 %572, label %573, label %624

; <label>:573                                     ; preds = %542
  %574 = fcmp fast ogt float %29, 9.843750e-01
  %575 = fadd fast float %30, -4.000000e+00
  %576 = select i1 %574, float -4.000000e+00, float %575
  %577 = call float @dx.op.binary.f32(i32 35, float %576, float 0.000000e+00)  ; FMax(a,b)
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = fadd fast float %579, %577
  %581 = extractvalue %dx.types.CBufRet.f32 %578, 2
  %582 = fmul fast float %580, %581
  %583 = call float @dx.op.unary.f32(i32 23, float %582)  ; Log(value)
  %584 = extractvalue %dx.types.CBufRet.f32 %578, 3
  %585 = fmul fast float %584, %583
  %586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %587 = extractvalue %dx.types.CBufRet.f32 %586, 2
  %588 = fmul fast float %585, %587
  %589 = call float @dx.op.unary.f32(i32 7, float %588)  ; Saturate(value)
  %590 = uitofp i32 %568 to float
  %591 = uitofp i32 %571 to float
  %592 = fadd fast float %590, 5.000000e-01
  %593 = fadd fast float %591, 5.000000e-01
  %594 = fmul fast float %587, %592
  %595 = fmul fast float %587, %593
  %596 = fadd fast float %594, 0x3F0FFB4800000000
  %597 = fadd fast float %595, 0xBF0FFB4800000000
  %598 = call float @dx.op.binary.f32(i32 35, float %589, float %596)  ; FMax(a,b)
  %599 = call float @dx.op.binary.f32(i32 36, float %598, float %597)  ; FMin(a,b)
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %602 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %603 = extractvalue %dx.types.CBufRet.f32 %600, 0
  %604 = fmul fast float %601, %599
  %605 = fadd fast float %603, %604
  %606 = fadd fast float %603, %602
  %607 = fsub fast float %601, %602
  %608 = fadd fast float %607, %603
  %609 = call float @dx.op.binary.f32(i32 35, float %605, float %606)  ; FMax(a,b)
  %610 = call float @dx.op.binary.f32(i32 36, float %609, float %608)  ; FMin(a,b)
  %611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %17, float %548, float %549, float %610, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %548, float %549, float %610, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 1
  %621 = fmul fast float %620, %616
  %622 = fmul fast float %620, %617
  %623 = fmul fast float %620, %618
  br label %624

; <label>:624                                     ; preds = %573, %542
  %625 = phi float [ %612, %573 ], [ 1.000000e+00, %542 ]
  %626 = phi float [ %613, %573 ], [ 1.000000e+00, %542 ]
  %627 = phi float [ %614, %573 ], [ 1.000000e+00, %542 ]
  %628 = phi float [ %621, %573 ], [ 0.000000e+00, %542 ]
  %629 = phi float [ %622, %573 ], [ 0.000000e+00, %542 ]
  %630 = phi float [ %623, %573 ], [ 0.000000e+00, %542 ]
  %631 = fmul fast float %628, %521
  %632 = fmul fast float %629, %521
  %633 = fmul fast float %630, %521
  %634 = call float @dx.op.dot3.f32(i32 55, float %625, float %626, float %627, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %635 = call float @dx.op.dot3.f32(i32 55, float %631, float %632, float %633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %636 = select i1 %107, float %634, float %625
  %637 = select i1 %107, float %634, float %626
  %638 = select i1 %107, float 1.000000e+00, float %627
  %639 = select i1 %107, float %635, float %631
  %640 = select i1 %107, float 0.000000e+00, float %632
  %641 = select i1 %107, float 0.000000e+00, float %633
  %642 = fmul fast float %636, %531
  %643 = fmul fast float %637, %532
  %644 = fmul fast float %638, %533
  %645 = fadd fast float %642, %639
  %646 = fadd fast float %643, %640
  %647 = fadd fast float %641, %644
  %648 = fmul fast float %636, %514
  %649 = fmul fast float %637, %515
  %650 = fmul fast float %638, %516
  %651 = fmul fast float %37, 2.000000e+00
  %652 = fmul fast float %651, %544
  %653 = fmul fast float %38, 2.000000e+00
  %654 = fmul fast float %653, %545
  %655 = fsub fast float 1.000000e+00, %652
  %656 = fsub fast float 1.000000e+00, %654
  %657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %658 = extractvalue %dx.types.CBufRet.f32 %657, 0
  %659 = extractvalue %dx.types.CBufRet.f32 %657, 1
  %660 = extractvalue %dx.types.CBufRet.f32 %657, 2
  %661 = fmul fast float %655, %658
  %662 = fmul fast float %655, %659
  %663 = fmul fast float %655, %660
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 0
  %666 = extractvalue %dx.types.CBufRet.f32 %664, 1
  %667 = extractvalue %dx.types.CBufRet.f32 %664, 2
  %668 = fmul fast float %656, %665
  %669 = fmul fast float %656, %666
  %670 = fmul fast float %656, %667
  %671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %672 = extractvalue %dx.types.CBufRet.f32 %671, 0
  %673 = extractvalue %dx.types.CBufRet.f32 %671, 1
  %674 = extractvalue %dx.types.CBufRet.f32 %671, 2
  %675 = fadd fast float %668, %672
  %676 = fadd fast float %675, %661
  %677 = fadd fast float %669, %673
  %678 = fadd fast float %677, %662
  %679 = fadd fast float %670, %674
  %680 = fadd fast float %679, %663
  %681 = fmul fast float %676, %513
  %682 = fmul fast float %678, %513
  %683 = fmul fast float %680, %513
  br label %684

; <label>:684                                     ; preds = %624, %362
  %685 = phi float [ %681, %624 ], [ %72, %362 ]
  %686 = phi float [ %682, %624 ], [ %73, %362 ]
  %687 = phi float [ %683, %624 ], [ %74, %362 ]
  %688 = phi float [ %513, %624 ], [ %30, %362 ]
  %689 = phi float [ %645, %624 ], [ %531, %362 ]
  %690 = phi float [ %646, %624 ], [ %532, %362 ]
  %691 = phi float [ %647, %624 ], [ %533, %362 ]
  %692 = phi float [ %648, %624 ], [ %514, %362 ]
  %693 = phi float [ %649, %624 ], [ %515, %362 ]
  %694 = phi float [ %650, %624 ], [ %516, %362 ]
  %695 = phi float [ %625, %624 ], [ 1.000000e+00, %362 ]
  br i1 %541, label %1850, label %696

; <label>:696                                     ; preds = %684
  %697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.f32 %697, 0
  %699 = extractvalue %dx.types.CBufRet.f32 %697, 1
  %700 = extractvalue %dx.types.CBufRet.f32 %697, 2
  %701 = extractvalue %dx.types.CBufRet.f32 %697, 3
  %702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.f32 %702, 0
  %704 = extractvalue %dx.types.CBufRet.f32 %702, 1
  %705 = extractvalue %dx.types.CBufRet.f32 %702, 2
  %706 = extractvalue %dx.types.CBufRet.f32 %702, 3
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %709 = extractvalue %dx.types.CBufRet.f32 %707, 1
  %710 = extractvalue %dx.types.CBufRet.f32 %707, 2
  %711 = extractvalue %dx.types.CBufRet.f32 %707, 3
  %712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %713 = extractvalue %dx.types.CBufRet.f32 %712, 0
  %714 = extractvalue %dx.types.CBufRet.f32 %712, 1
  %715 = extractvalue %dx.types.CBufRet.f32 %712, 2
  %716 = extractvalue %dx.types.CBufRet.f32 %712, 3
  %717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.f32 %717, 3
  %719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %720 = extractvalue %dx.types.CBufRet.f32 %719, 3
  %721 = extractvalue %dx.types.CBufRet.f32 %719, 0
  %722 = extractvalue %dx.types.CBufRet.f32 %719, 1
  %723 = extractvalue %dx.types.CBufRet.f32 %719, 2
  %724 = fcmp fast olt float %723, -5.000000e-01
  %725 = call float @dx.op.dot3.f32(i32 55, float %685, float %686, float %687, float %685, float %686, float %687)  ; Dot3(ax,ay,az,bx,by,bz)
  %726 = call float @dx.op.unary.f32(i32 25, float %725)  ; Rsqrt(value)
  %727 = fmul fast float %726, %725
  %728 = fmul fast float %726, %685
  %729 = fmul fast float %726, %686
  %730 = fmul fast float %726, %687
  %731 = fadd fast float %727, %701
  %732 = call float @dx.op.dot3.f32(i32 55, float %728, float %729, float %730, float %698, float %699, float %700)  ; Dot3(ax,ay,az,bx,by,bz)
  %733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.i32 %733, 1
  %735 = and i32 %734, 1
  %736 = icmp ne i32 %735, 0
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 2
  %739 = fcmp fast ogt float %738, 0.000000e+00
  %740 = and i1 %736, %739
  br i1 %740, label %741, label %1147, !dx.controlflow.hints !54

; <label>:741                                     ; preds = %696
  %742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.f32 %742, 3
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 2
  %746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %747 = extractvalue %dx.types.CBufRet.f32 %746, 2
  %748 = fsub fast float %745, %747
  %749 = and i32 %734, 2
  %750 = extractvalue %dx.types.CBufRet.i32 %733, 0
  %751 = call i32 @dx.op.binary.i32(i32 40, i32 %750, i32 3)  ; UMin(a,b)
  %752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %753 = extractvalue %dx.types.CBufRet.f32 %752, 0
  %754 = extractvalue %dx.types.CBufRet.f32 %752, 1
  %755 = extractvalue %dx.types.CBufRet.f32 %746, 0
  %756 = extractvalue %dx.types.CBufRet.f32 %746, 1
  %757 = fsub fast float %753, %755
  %758 = fsub fast float %754, %756
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 0
  %761 = fcmp fast ogt float %760, 0.000000e+00
  %762 = fsub fast float -0.000000e+00, %757
  %763 = fsub fast float -0.000000e+00, %758
  %764 = call float @dx.op.dot2.f32(i32 54, float %728, float %729, float %728, float %729)  ; Dot2(ax,ay,bx,by)
  %765 = call float @dx.op.dot2.f32(i32 54, float %728, float %729, float %762, float %763)  ; Dot2(ax,ay,bx,by)
  %766 = fmul fast float %765, 2.000000e+00
  %767 = call float @dx.op.dot2.f32(i32 54, float %762, float %763, float %762, float %763)  ; Dot2(ax,ay,bx,by)
  %768 = fmul fast float %760, %760
  %769 = fsub fast float %767, %768
  %770 = fmul fast float %766, %766
  %771 = fmul fast float %764, 4.000000e+00
  %772 = fmul fast float %771, %769
  %773 = fsub fast float %770, %772
  %774 = fcmp fast ogt float %773, 0.000000e+00
  br i1 %774, label %775, label %790

; <label>:775                                     ; preds = %741
  %776 = fcmp fast ogt float %766, 0.000000e+00
  %777 = call float @dx.op.unary.f32(i32 24, float %773)  ; Sqrt(value)
  %778 = fsub fast float -0.000000e+00, %777
  %779 = select i1 %776, float %777, float %778
  %780 = fadd fast float %779, %766
  %781 = fmul float %780, -5.000000e-01
  %782 = fdiv fast float %781, %764
  %783 = call float @dx.op.binary.f32(i32 35, float %782, float 0.000000e+00)  ; FMax(a,b)
  %784 = call float @dx.op.binary.f32(i32 36, float %727, float %783)  ; FMin(a,b)
  %785 = fdiv fast float %769, %781
  %786 = call float @dx.op.binary.f32(i32 35, float %785, float 0.000000e+00)  ; FMax(a,b)
  %787 = call float @dx.op.binary.f32(i32 36, float %727, float %786)  ; FMin(a,b)
  %788 = call float @dx.op.binary.f32(i32 36, float %784, float %787)  ; FMin(a,b)
  %789 = call float @dx.op.binary.f32(i32 35, float %784, float %787)  ; FMax(a,b)
  br label %790

; <label>:790                                     ; preds = %775, %741
  %791 = phi float [ %789, %775 ], [ -1.000000e+00, %741 ]
  %792 = phi float [ %788, %775 ], [ -1.000000e+00, %741 ]
  %793 = phi i1 [ true, %775 ], [ false, %741 ]
  %794 = and i1 %761, %793
  br i1 %794, label %795, label %797

; <label>:795                                     ; preds = %790
  %796 = fcmp fast oeq float %792, %791
  br i1 %796, label %1100, label %798

; <label>:797                                     ; preds = %790
  br i1 %761, label %1100, label %798

; <label>:798                                     ; preds = %797, %795
  %799 = phi float [ %727, %797 ], [ %791, %795 ]
  %800 = phi float [ 0.000000e+00, %797 ], [ %792, %795 ]
  %801 = icmp ne i32 %749, 0
  %802 = fmul fast float %799, %730
  %803 = fadd fast float %802, %743
  %804 = fmul fast float %803, %799
  %805 = select i1 %801, float 0.000000e+00, float %804
  %806 = fcmp fast oeq float %730, 0.000000e+00
  %807 = fdiv fast float %748, %730
  %808 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %807)  ; FMax(a,b)
  %809 = select i1 %806, float %799, float %808
  %810 = call float @dx.op.binary.f32(i32 36, float %799, float %809)  ; FMin(a,b)
  %811 = fcmp fast ogt float %730, 0.000000e+00
  %812 = fcmp fast olt float %748, 0.000000e+00
  br i1 %811, label %813, label %870

; <label>:813                                     ; preds = %798
  %814 = icmp eq i32 %749, 0
  br i1 %812, label %815, label %859

; <label>:815                                     ; preds = %813
  %816 = select i1 %814, float %799, float 0.000000e+00
  %817 = fsub fast float -0.000000e+00, %816
  %818 = call float @dx.op.unary.f32(i32 6, float %817)  ; FAbs(value)
  %819 = fmul fast float %816, %730
  %820 = fadd fast float %819, %743
  %821 = fmul fast float %818, %820
  %822 = fsub fast float %805, %821
  %823 = fsub fast float %799, %818
  %824 = select i1 %814, float %823, float 0.000000e+00
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 0
  %827 = extractvalue %dx.types.CBufRet.f32 %825, 1
  %828 = extractvalue %dx.types.CBufRet.f32 %825, 2
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 0
  %831 = extractvalue %dx.types.CBufRet.f32 %829, 1
  %832 = extractvalue %dx.types.CBufRet.f32 %829, 2
  %833 = extractvalue %dx.types.CBufRet.f32 %829, 3
  %834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %835 = extractvalue %dx.types.CBufRet.f32 %834, 3
  %836 = call float @dx.op.binary.f32(i32 36, float %822, float %835)  ; FMin(a,b)
  %837 = fmul fast float %833, %824
  %838 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %839 = fsub fast float %830, %826
  %840 = fsub fast float %831, %827
  %841 = fsub fast float %832, %828
  %842 = fmul fast float %838, %839
  %843 = fmul fast float %838, %840
  %844 = fmul fast float %838, %841
  %845 = fadd fast float %842, %826
  %846 = fadd fast float %843, %827
  %847 = fadd fast float %844, %828
  %848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %849 = extractvalue %dx.types.CBufRet.f32 %848, 0
  %850 = extractvalue %dx.types.CBufRet.f32 %848, 1
  %851 = fadd fast float %850, %849
  %852 = call float @dx.op.unary.f32(i32 7, float %851)  ; Saturate(value)
  %853 = extractvalue %dx.types.CBufRet.f32 %848, 2
  %854 = extractvalue %dx.types.CBufRet.f32 %848, 3
  %855 = fadd fast float %854, %853
  %856 = call float @dx.op.unary.f32(i32 7, float %855)  ; Saturate(value)
  %857 = fmul fast float %852, %836
  %858 = fmul fast float %857, %856
  br label %1100

; <label>:859                                     ; preds = %813
  br i1 %814, label %860, label %881

; <label>:860                                     ; preds = %859
  %861 = call float @dx.op.binary.f32(i32 36, float %810, float %800)  ; FMin(a,b)
  %862 = fsub fast float %810, %861
  %863 = fsub fast float %862, %799
  %864 = call float @dx.op.unary.f32(i32 6, float %863)  ; FAbs(value)
  %865 = fadd fast float %862, %799
  %866 = fmul fast float %865, %730
  %867 = fadd fast float %866, %743
  %868 = fmul fast float %867, %864
  %869 = fsub fast float %805, %868
  br label %881

; <label>:870                                     ; preds = %798
  br i1 %812, label %871, label %881

; <label>:871                                     ; preds = %870
  %872 = call float @dx.op.binary.f32(i32 35, float %800, float %810)  ; FMax(a,b)
  %873 = icmp eq i32 %749, 0
  %874 = select i1 %873, float %810, float 0.000000e+00
  %875 = fsub fast float -0.000000e+00, %874
  %876 = call float @dx.op.unary.f32(i32 6, float %875)  ; FAbs(value)
  %877 = fmul fast float %874, %730
  %878 = fadd fast float %877, %743
  %879 = fmul fast float %876, %878
  %880 = fsub fast float %805, %879
  br label %881

; <label>:881                                     ; preds = %871, %870, %860, %859
  %882 = phi float [ %800, %859 ], [ %800, %860 ], [ %872, %871 ], [ %800, %870 ]
  %883 = phi float [ 0.000000e+00, %859 ], [ %864, %860 ], [ %876, %871 ], [ 0.000000e+00, %870 ]
  %884 = phi float [ %805, %859 ], [ %869, %860 ], [ %880, %871 ], [ %805, %870 ]
  %885 = phi float [ %810, %859 ], [ %810, %860 ], [ %799, %871 ], [ %799, %870 ]
  %886 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 0
  store float -1.000000e+00, float* %886, align 4, !tbaa !55, !noalias !59
  %887 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 1
  store float -1.000000e+00, float* %887, align 4, !tbaa !55, !noalias !59
  %888 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 2
  store float -1.000000e+00, float* %888, align 4, !tbaa !55, !noalias !59
  %889 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 0
  store float -1.000000e+00, float* %889, align 4, !tbaa !55, !noalias !59
  %890 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 1
  store float -1.000000e+00, float* %890, align 4, !tbaa !55, !noalias !59
  %891 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 2
  store float -1.000000e+00, float* %891, align 4, !tbaa !55, !noalias !59
  %892 = icmp sgt i32 %751, 0
  br i1 %892, label %893, label %954

; <label>:893                                     ; preds = %881
  br label %894

; <label>:894                                     ; preds = %943, %893
  %895 = phi i32 [ %944, %943 ], [ 0, %893 ]
  %896 = phi i32 [ %945, %943 ], [ 0, %893 ]
  %897 = add nuw i32 %896, 171
  %898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 %897)  ; CBufferLoadLegacy(handle,regIndex)
  %899 = extractvalue %dx.types.CBufRet.f32 %898, 0
  %900 = extractvalue %dx.types.CBufRet.f32 %898, 1
  %901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %902 = extractvalue %dx.types.CBufRet.f32 %901, 0
  %903 = extractvalue %dx.types.CBufRet.f32 %901, 1
  %904 = fsub fast float %899, %902
  %905 = fsub fast float %900, %903
  %906 = extractvalue %dx.types.CBufRet.f32 %898, 2
  %907 = fsub fast float -0.000000e+00, %904
  %908 = fsub fast float -0.000000e+00, %905
  %909 = call float @dx.op.dot2.f32(i32 54, float %728, float %729, float %907, float %908)  ; Dot2(ax,ay,bx,by)
  %910 = fmul fast float %909, 2.000000e+00
  %911 = call float @dx.op.dot2.f32(i32 54, float %907, float %908, float %907, float %908)  ; Dot2(ax,ay,bx,by)
  %912 = fmul fast float %906, %906
  %913 = fsub fast float %911, %912
  %914 = fmul fast float %910, %910
  %915 = fmul fast float %771, %913
  %916 = fsub fast float %914, %915
  %917 = fcmp fast ogt float %916, 0.000000e+00
  br i1 %917, label %918, label %933

; <label>:918                                     ; preds = %894
  %919 = fcmp fast ogt float %910, 0.000000e+00
  %920 = call float @dx.op.unary.f32(i32 24, float %916)  ; Sqrt(value)
  %921 = fsub fast float -0.000000e+00, %920
  %922 = select i1 %919, float %920, float %921
  %923 = fadd fast float %922, %910
  %924 = fmul float %923, -5.000000e-01
  %925 = fdiv fast float %924, %764
  %926 = call float @dx.op.binary.f32(i32 35, float %925, float 0.000000e+00)  ; FMax(a,b)
  %927 = call float @dx.op.binary.f32(i32 36, float %799, float %926)  ; FMin(a,b)
  %928 = fdiv fast float %913, %924
  %929 = call float @dx.op.binary.f32(i32 35, float %928, float 0.000000e+00)  ; FMax(a,b)
  %930 = call float @dx.op.binary.f32(i32 36, float %799, float %929)  ; FMin(a,b)
  %931 = call float @dx.op.binary.f32(i32 36, float %927, float %930)  ; FMin(a,b)
  %932 = call float @dx.op.binary.f32(i32 35, float %927, float %930)  ; FMax(a,b)
  br label %933

; <label>:933                                     ; preds = %918, %894
  %934 = phi float [ %932, %918 ], [ -1.000000e+00, %894 ]
  %935 = phi float [ %931, %918 ], [ -1.000000e+00, %894 ]
  %936 = phi i1 [ true, %918 ], [ false, %894 ]
  br i1 %936, label %937, label %943

; <label>:937                                     ; preds = %933
  %938 = call float @dx.op.binary.f32(i32 35, float %882, float %935)  ; FMax(a,b)
  %939 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %896
  store float %938, float* %939, align 4, !tbaa !55, !noalias !59
  %940 = call float @dx.op.binary.f32(i32 35, float %882, float %934)  ; FMax(a,b)
  %941 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %896
  store float %940, float* %941, align 4, !tbaa !55, !noalias !59
  %942 = add nsw i32 %895, 1
  br label %943

; <label>:943                                     ; preds = %937, %933
  %944 = phi i32 [ %942, %937 ], [ %895, %933 ]
  %945 = add nuw nsw i32 %896, 1
  %946 = icmp eq i32 %945, %751
  br i1 %946, label %947, label %894

; <label>:947                                     ; preds = %943
  %948 = load float, float* %888, align 4, !tbaa !55, !alias.scope !75, !noalias !78
  %949 = load float, float* %887, align 4, !tbaa !55, !alias.scope !81, !noalias !82
  %950 = load float, float* %886, align 4, !tbaa !55, !alias.scope !83, !noalias !84
  %951 = load float, float* %891, align 4, !tbaa !55, !alias.scope !85, !noalias !88
  %952 = load float, float* %890, align 4, !tbaa !55, !alias.scope !91, !noalias !92
  %953 = load float, float* %889, align 4, !tbaa !55, !alias.scope !93, !noalias !94
  br label %954

; <label>:954                                     ; preds = %947, %881
  %955 = phi float [ -1.000000e+00, %881 ], [ %953, %947 ]
  %956 = phi float [ -1.000000e+00, %881 ], [ %952, %947 ]
  %957 = phi float [ -1.000000e+00, %881 ], [ %951, %947 ]
  %958 = phi float [ -1.000000e+00, %881 ], [ %950, %947 ]
  %959 = phi float [ -1.000000e+00, %881 ], [ %949, %947 ]
  %960 = phi float [ -1.000000e+00, %881 ], [ %948, %947 ]
  %961 = phi i32 [ 0, %881 ], [ %944, %947 ]
  %962 = call float @dx.op.binary.f32(i32 36, float %959, float %960)  ; FMin(a,b)
  %963 = call float @dx.op.binary.f32(i32 36, float %958, float %962)  ; FMin(a,b)
  %964 = call float @dx.op.binary.f32(i32 35, float %958, float %959)  ; FMax(a,b)
  %965 = call float @dx.op.binary.f32(i32 36, float %964, float %960)  ; FMin(a,b)
  %966 = call float @dx.op.binary.f32(i32 36, float %958, float %959)  ; FMin(a,b)
  %967 = call float @dx.op.binary.f32(i32 35, float %966, float %965)  ; FMax(a,b)
  %968 = call float @dx.op.binary.f32(i32 35, float %959, float %960)  ; FMax(a,b)
  %969 = call float @dx.op.binary.f32(i32 35, float %958, float %968)  ; FMax(a,b)
  store float %963, float* %886, align 4, !tbaa !55, !alias.scope !83, !noalias !84
  store float %967, float* %887, align 4, !tbaa !55, !alias.scope !81, !noalias !82
  store float %969, float* %888, align 4, !tbaa !55, !alias.scope !75, !noalias !78
  %970 = call float @dx.op.binary.f32(i32 36, float %956, float %957)  ; FMin(a,b)
  %971 = call float @dx.op.binary.f32(i32 36, float %955, float %970)  ; FMin(a,b)
  %972 = call float @dx.op.binary.f32(i32 35, float %955, float %956)  ; FMax(a,b)
  %973 = call float @dx.op.binary.f32(i32 36, float %972, float %957)  ; FMin(a,b)
  %974 = call float @dx.op.binary.f32(i32 36, float %955, float %956)  ; FMin(a,b)
  %975 = call float @dx.op.binary.f32(i32 35, float %974, float %973)  ; FMax(a,b)
  %976 = call float @dx.op.binary.f32(i32 35, float %956, float %957)  ; FMax(a,b)
  %977 = call float @dx.op.binary.f32(i32 35, float %955, float %976)  ; FMax(a,b)
  store float %971, float* %889, align 4, !tbaa !55, !alias.scope !93, !noalias !94
  store float %975, float* %890, align 4, !tbaa !55, !alias.scope !91, !noalias !92
  store float %977, float* %891, align 4, !tbaa !55, !alias.scope !85, !noalias !88
  %978 = sub nsw i32 3, %961
  %979 = icmp sgt i32 %978, 2
  br i1 %979, label %980, label %1018

; <label>:980                                     ; preds = %954
  %981 = icmp eq i32 %749, 0
  %982 = fsub fast float %799, %883
  %983 = select i1 %981, float %982, float %883
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %986 = extractvalue %dx.types.CBufRet.f32 %984, 1
  %987 = extractvalue %dx.types.CBufRet.f32 %984, 2
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %990 = extractvalue %dx.types.CBufRet.f32 %988, 1
  %991 = extractvalue %dx.types.CBufRet.f32 %988, 2
  %992 = extractvalue %dx.types.CBufRet.f32 %988, 3
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 3
  %995 = call float @dx.op.binary.f32(i32 36, float %884, float %994)  ; FMin(a,b)
  %996 = fmul fast float %992, %983
  %997 = call float @dx.op.unary.f32(i32 7, float %996)  ; Saturate(value)
  %998 = fsub fast float %989, %985
  %999 = fsub fast float %990, %986
  %1000 = fsub fast float %991, %987
  %1001 = fmul fast float %997, %998
  %1002 = fmul fast float %997, %999
  %1003 = fmul fast float %997, %1000
  %1004 = fadd fast float %1001, %985
  %1005 = fadd fast float %1002, %986
  %1006 = fadd fast float %1003, %987
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.CBufRet.f32 %1007, 1
  %1010 = fadd fast float %1009, %1008
  %1011 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1007, 2
  %1013 = extractvalue %dx.types.CBufRet.f32 %1007, 3
  %1014 = fadd fast float %1013, %1012
  %1015 = call float @dx.op.unary.f32(i32 7, float %1014)  ; Saturate(value)
  %1016 = fmul fast float %1011, %995
  %1017 = fmul fast float %1016, %1015
  br label %1100

; <label>:1018                                    ; preds = %954
  %1019 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %978
  %1020 = load float, float* %1019, align 4, !tbaa !55, !noalias !59
  %1021 = fcmp fast olt float %1020, %885
  %1022 = icmp sgt i32 %961, 0
  %1023 = and i1 %1022, %1021
  br i1 %1023, label %1024, label %1061

; <label>:1024                                    ; preds = %1018
  br label %1025

; <label>:1025                                    ; preds = %1054, %1024
  %1026 = phi float [ %1055, %1054 ], [ %883, %1024 ]
  %1027 = phi float [ %1056, %1054 ], [ %884, %1024 ]
  %1028 = phi float [ %1036, %1054 ], [ %1020, %1024 ]
  %1029 = phi i32 [ %1033, %1054 ], [ %978, %1024 ]
  %1030 = getelementptr inbounds [3 x float], [3 x float]* %32, i32 0, i32 %1029
  %1031 = load float, float* %1030, align 4, !tbaa !55, !noalias !59
  %1032 = icmp slt i32 %1029, 2
  %1033 = add nsw i32 %1029, 1
  %1034 = getelementptr inbounds [3 x float], [3 x float]* %31, i32 0, i32 %1033
  %1035 = load float, float* %1034, align 4, !tbaa !55, !noalias !59
  %1036 = select i1 %1032, float %1035, float %799
  %1037 = call float @dx.op.binary.f32(i32 36, float %1036, float %1031)  ; FMin(a,b)
  %1038 = call float @dx.op.binary.f32(i32 36, float %885, float %1037)  ; FMin(a,b)
  %1039 = icmp eq i32 %749, 0
  %1040 = fadd fast float %1038, %1028
  %1041 = fmul fast float %1040, %730
  %1042 = fadd fast float %1041, %743
  br i1 %1039, label %1048, label %1043

; <label>:1043                                    ; preds = %1025
  %1044 = fsub fast float %1038, %1028
  %1045 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1044)  ; FMax(a,b)
  %1046 = fmul fast float %1045, %1042
  %1047 = fadd fast float %1046, %1027
  br label %1054

; <label>:1048                                    ; preds = %1025
  %1049 = fsub fast float %1028, %1038
  %1050 = call float @dx.op.unary.f32(i32 6, float %1049)  ; FAbs(value)
  %1051 = fadd fast float %1050, %1026
  %1052 = fmul fast float %1050, %1042
  %1053 = fsub fast float %1027, %1052
  br label %1054

; <label>:1054                                    ; preds = %1048, %1043
  %1055 = phi float [ %1045, %1043 ], [ %1051, %1048 ]
  %1056 = phi float [ %1047, %1043 ], [ %1053, %1048 ]
  %1057 = fcmp fast olt float %1036, %885
  %1058 = icmp slt i32 %1033, 3
  %1059 = and i1 %1058, %1057
  br i1 %1059, label %1025, label %1060

; <label>:1060                                    ; preds = %1054
  br label %1061

; <label>:1061                                    ; preds = %1060, %1018
  %1062 = phi float [ %883, %1018 ], [ %1055, %1060 ]
  %1063 = phi float [ %884, %1018 ], [ %1056, %1060 ]
  %1064 = fsub fast float %799, %1062
  %1065 = select i1 %801, float %1062, float %1064
  %1066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %1067 = extractvalue %dx.types.CBufRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.CBufRet.f32 %1066, 1
  %1069 = extractvalue %dx.types.CBufRet.f32 %1066, 2
  %1070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %1071 = extractvalue %dx.types.CBufRet.f32 %1070, 0
  %1072 = extractvalue %dx.types.CBufRet.f32 %1070, 1
  %1073 = extractvalue %dx.types.CBufRet.f32 %1070, 2
  %1074 = extractvalue %dx.types.CBufRet.f32 %1070, 3
  %1075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %1076 = extractvalue %dx.types.CBufRet.f32 %1075, 3
  %1077 = call float @dx.op.binary.f32(i32 36, float %1063, float %1076)  ; FMin(a,b)
  %1078 = fmul fast float %1074, %1065
  %1079 = call float @dx.op.unary.f32(i32 7, float %1078)  ; Saturate(value)
  %1080 = fsub fast float %1071, %1067
  %1081 = fsub fast float %1072, %1068
  %1082 = fsub fast float %1073, %1069
  %1083 = fmul fast float %1079, %1080
  %1084 = fmul fast float %1079, %1081
  %1085 = fmul fast float %1079, %1082
  %1086 = fadd fast float %1083, %1067
  %1087 = fadd fast float %1084, %1068
  %1088 = fadd fast float %1085, %1069
  %1089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %1090 = extractvalue %dx.types.CBufRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.CBufRet.f32 %1089, 1
  %1092 = fadd fast float %1091, %1090
  %1093 = call float @dx.op.unary.f32(i32 7, float %1092)  ; Saturate(value)
  %1094 = extractvalue %dx.types.CBufRet.f32 %1089, 2
  %1095 = extractvalue %dx.types.CBufRet.f32 %1089, 3
  %1096 = fadd fast float %1095, %1094
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1098 = fmul fast float %1093, %1077
  %1099 = fmul fast float %1098, %1097
  br label %1100

; <label>:1100                                    ; preds = %1061, %980, %815, %797, %795
  %1101 = phi float [ %824, %815 ], [ %983, %980 ], [ %1065, %1061 ], [ 0.000000e+00, %795 ], [ 0.000000e+00, %797 ]
  %1102 = phi float [ %858, %815 ], [ %1017, %980 ], [ %1099, %1061 ], [ 0.000000e+00, %795 ], [ 0.000000e+00, %797 ]
  %1103 = phi float [ %845, %815 ], [ %1004, %980 ], [ %1086, %1061 ], [ 0.000000e+00, %795 ], [ 0.000000e+00, %797 ]
  %1104 = phi float [ %846, %815 ], [ %1005, %980 ], [ %1087, %1061 ], [ 0.000000e+00, %795 ], [ 0.000000e+00, %797 ]
  %1105 = phi float [ %847, %815 ], [ %1006, %980 ], [ %1088, %1061 ], [ 0.000000e+00, %795 ], [ 0.000000e+00, %797 ]
  %1106 = fmul fast float %738, %1102
  %1107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.f32 %1107, 2
  %1109 = fsub fast float %745, %1108
  %1110 = fcmp fast olt float %1106, -2.000000e+01
  %1111 = call float @dx.op.unary.f32(i32 21, float %1106)  ; Exp(value)
  %1112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1113 = extractvalue %dx.types.CBufRet.f32 %1112, 2
  %1114 = extractvalue %dx.types.CBufRet.f32 %1112, 3
  %1115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %1116 = extractvalue %dx.types.CBufRet.f32 %1115, 2
  %1117 = fmul fast float %1114, %1109
  %1118 = call float @dx.op.unary.f32(i32 7, float %1117)  ; Saturate(value)
  %1119 = fsub fast float 1.000000e+00, %1118
  %1120 = fmul fast float %730, 5.000000e-01
  %1121 = fadd fast float %1120, 5.000000e-01
  %1122 = call float @dx.op.unary.f32(i32 7, float %1121)  ; Saturate(value)
  %1123 = fsub fast float 1.000000e+00, %1122
  %1124 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1119)  ; FMax(a,b)
  %1125 = fdiv fast float %1123, %1124
  %1126 = fsub fast float %1109, %687
  %1127 = call float @dx.op.unary.f32(i32 6, float %1126)  ; FAbs(value)
  %1128 = fmul fast float %1127, %1113
  %1129 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1130 = fsub fast float 1.000000e+00, %1128
  %1131 = fmul fast float %1130, %1129
  %1132 = fadd fast float %1131, %1128
  %1133 = fmul fast float %1116, %1109
  %1134 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1135 = fsub fast float 1.000000e+00, %1132
  %1136 = fmul fast float %1135, %1134
  %1137 = fadd fast float %1136, %1132
  %1138 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1139 = fadd fast float %1111, -1.000000e+00
  %1140 = select i1 %1110, float -1.000000e+00, float %1139
  %1141 = fmul fast float %1138, %1140
  %1142 = fadd fast float %1141, 1.000000e+00
  %1143 = fsub fast float -0.000000e+00, %1141
  %1144 = fmul fast float %1103, %1143
  %1145 = fmul fast float %1104, %1143
  %1146 = fmul fast float %1105, %1143
  br label %1147

; <label>:1147                                    ; preds = %1100, %696
  %1148 = phi float [ %1101, %1100 ], [ 0.000000e+00, %696 ]
  %1149 = phi float [ %1142, %1100 ], [ 1.000000e+00, %696 ]
  %1150 = phi float [ %1144, %1100 ], [ 0.000000e+00, %696 ]
  %1151 = phi float [ %1145, %1100 ], [ 0.000000e+00, %696 ]
  %1152 = phi float [ %1146, %1100 ], [ 0.000000e+00, %696 ]
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 1
  %1155 = fsub fast float 1.000000e+00, %1149
  %1156 = fmul fast float %1155, %731
  %1157 = fmul fast float %1156, %1154
  %1158 = fsub fast float %731, %1157
  br i1 %724, label %1159, label %1188, !dx.controlflow.hints !95

; <label>:1159                                    ; preds = %1147
  %1160 = fmul fast float %732, %721
  %1161 = fadd fast float %1160, %722
  %1162 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  %1163 = fmul fast float %703, %1158
  %1164 = fsub fast float -0.000000e+00, %1163
  %1165 = fmul fast float %704, %1158
  %1166 = fsub fast float -0.000000e+00, %1165
  %1167 = call float @dx.op.unary.f32(i32 21, float %1164)  ; Exp(value)
  %1168 = call float @dx.op.unary.f32(i32 21, float %1166)  ; Exp(value)
  %1169 = call float @dx.op.binary.f32(i32 35, float %711, float %1167)  ; FMax(a,b)
  %1170 = call float @dx.op.binary.f32(i32 35, float %711, float %1168)  ; FMax(a,b)
  %1171 = fsub fast float %1170, %1169
  %1172 = fmul fast float %1171, %1162
  %1173 = fadd fast float %1172, %1169
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1175 = fsub fast float %708, %713
  %1176 = fsub fast float %709, %714
  %1177 = fsub fast float %710, %715
  %1178 = fmul fast float %1162, %1175
  %1179 = fmul fast float %1162, %1176
  %1180 = fmul fast float %1162, %1177
  %1181 = fadd fast float %1178, %713
  %1182 = fadd fast float %1179, %714
  %1183 = fadd fast float %1180, %715
  %1184 = fsub fast float 1.000000e+00, %1174
  %1185 = fmul fast float %1184, %1181
  %1186 = fmul fast float %1184, %1182
  %1187 = fmul fast float %1184, %1183
  br label %1247

; <label>:1188                                    ; preds = %1147
  %1189 = fmul fast float %1158, %720
  %1190 = call float @dx.op.unary.f32(i32 7, float %1189)  ; Saturate(value)
  %1191 = fsub fast float 2.000000e+00, %1190
  %1192 = fmul fast float %1190, 9.921875e-01
  %1193 = fmul fast float %1192, %1191
  %1194 = fadd fast float %1193, 3.906250e-03
  %1195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %18, float %1194, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = fsub fast float %1190, %1196
  %1198 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1197)  ; FMax(a,b)
  %1199 = fmul fast float %706, %687
  %1200 = call float @dx.op.unary.f32(i32 6, float %1199)  ; FAbs(value)
  %1201 = fcmp fast ogt float %1200, 0x3EB0C6F7A0000000
  br i1 %1201, label %1202, label %1208, !dx.controlflow.hints !96

; <label>:1202                                    ; preds = %1188
  %1203 = fmul fast float %1199, 0xBFF7154760000000
  %1204 = call float @dx.op.unary.f32(i32 21, float %1203)  ; Exp(value)
  %1205 = fsub fast float 1.000000e+00, %1204
  %1206 = fdiv fast float %1205, %1199
  %1207 = fmul fast float %1206, %716
  br label %1208

; <label>:1208                                    ; preds = %1202, %1188
  %1209 = phi float [ %1207, %1202 ], [ %716, %1188 ]
  %1210 = fadd fast float %1209, %718
  %1211 = fmul fast float %1210, %1198
  %1212 = fmul fast float %703, %1211
  %1213 = fsub fast float -0.000000e+00, %1212
  %1214 = fmul fast float %704, %1211
  %1215 = fsub fast float -0.000000e+00, %1214
  %1216 = fmul fast float %705, %1211
  %1217 = fsub fast float -0.000000e+00, %1216
  %1218 = call float @dx.op.unary.f32(i32 21, float %1213)  ; Exp(value)
  %1219 = call float @dx.op.unary.f32(i32 21, float %1215)  ; Exp(value)
  %1220 = call float @dx.op.unary.f32(i32 21, float %1217)  ; Exp(value)
  %1221 = fmul fast float %732, %732
  %1222 = fadd fast float %1221, 1.000000e+00
  %1223 = fmul fast float %1222, 0x3FAE8EC8A0000000
  %1224 = fmul fast float %1223, %713
  %1225 = fmul fast float %1223, %714
  %1226 = fmul fast float %1223, %715
  %1227 = fmul fast float %732, %711
  %1228 = fsub fast float 1.000000e+00, %1227
  %1229 = fmul fast float %711, %711
  %1230 = fsub fast float 1.000000e+00, %1229
  %1231 = fmul fast float %1230, 0x3FB45F3060000000
  %1232 = fmul fast float %1228, %1228
  %1233 = fdiv fast float 1.000000e+00, %1232
  %1234 = fmul fast float %1231, %1233
  %1235 = fmul fast float %1234, %708
  %1236 = fmul fast float %1234, %709
  %1237 = fmul fast float %1234, %710
  %1238 = fadd fast float %1235, %1224
  %1239 = fadd fast float %1236, %1225
  %1240 = fadd fast float %1237, %1226
  %1241 = fsub fast float 1.000000e+00, %1218
  %1242 = fsub fast float 1.000000e+00, %1219
  %1243 = fsub fast float 1.000000e+00, %1220
  %1244 = fmul fast float %1238, %1241
  %1245 = fmul fast float %1239, %1242
  %1246 = fmul fast float %1240, %1243
  br label %1247

; <label>:1247                                    ; preds = %1208, %1159
  %1248 = phi float [ %1185, %1159 ], [ %1244, %1208 ]
  %1249 = phi float [ %1186, %1159 ], [ %1245, %1208 ]
  %1250 = phi float [ %1187, %1159 ], [ %1246, %1208 ]
  %1251 = phi float [ %1174, %1159 ], [ %1218, %1208 ]
  %1252 = phi float [ %1174, %1159 ], [ %1219, %1208 ]
  %1253 = phi float [ %1174, %1159 ], [ %1220, %1208 ]
  br i1 %740, label %1254, label %1452, !dx.controlflow.hints !97

; <label>:1254                                    ; preds = %1247
  %1255 = extractvalue %dx.types.CBufRet.f32 %1153, 0
  %1256 = fmul fast float %1255, %1155
  %1257 = fsub fast float %1150, %1248
  %1258 = fsub fast float %1151, %1249
  %1259 = fsub fast float %1152, %1250
  %1260 = fmul fast float %1256, %1257
  %1261 = fmul fast float %1256, %1258
  %1262 = fmul fast float %1256, %1259
  %1263 = fadd fast float %1260, %1248
  %1264 = fadd fast float %1261, %1249
  %1265 = fadd fast float %1262, %1250
  %1266 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1251)  ; FMax(a,b)
  %1267 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1252)  ; FMax(a,b)
  %1268 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1253)  ; FMax(a,b)
  %1269 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %1149)  ; FMax(a,b)
  %1270 = call float @dx.op.binary.f32(i32 35, float %1148, float %1158)  ; FMax(a,b)
  %1271 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %1270)  ; FMax(a,b)
  %1272 = fdiv fast float %1148, %1271
  %1273 = call float @dx.op.unary.f32(i32 7, float %1272)  ; Saturate(value)
  %1274 = fdiv fast float %1158, %1271
  %1275 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1276 = fcmp fast une float %1269, 1.000000e+00
  br i1 %1276, label %1277, label %1290, !dx.controlflow.hints !98

; <label>:1277                                    ; preds = %1254
  %1278 = call float @dx.op.unary.f32(i32 23, float %1269)  ; Log(value)
  %1279 = fmul fast float %1278, 0x3FE62E4300000000
  %1280 = fmul fast float %1150, %1279
  %1281 = fsub fast float -0.000000e+00, %1280
  %1282 = fmul fast float %1151, %1279
  %1283 = fsub fast float -0.000000e+00, %1282
  %1284 = fmul fast float %1152, %1279
  %1285 = fsub fast float -0.000000e+00, %1284
  %1286 = fsub fast float 1.000000e+00, %1269
  %1287 = fdiv fast float %1281, %1286
  %1288 = fdiv fast float %1283, %1286
  %1289 = fdiv fast float %1285, %1286
  br label %1290

; <label>:1290                                    ; preds = %1277, %1254
  %1291 = phi float [ %1287, %1277 ], [ %1150, %1254 ]
  %1292 = phi float [ %1288, %1277 ], [ %1151, %1254 ]
  %1293 = phi float [ %1289, %1277 ], [ %1152, %1254 ]
  %1294 = phi float [ %1279, %1277 ], [ 0.000000e+00, %1254 ]
  %1295 = fcmp fast une float %1266, 1.000000e+00
  br i1 %1295, label %1296, label %1303, !dx.controlflow.hints !99

; <label>:1296                                    ; preds = %1290
  %1297 = call float @dx.op.unary.f32(i32 23, float %1266)  ; Log(value)
  %1298 = fmul fast float %1297, 0x3FE62E4300000000
  %1299 = fmul fast float %1263, %1298
  %1300 = fsub fast float -0.000000e+00, %1299
  %1301 = fsub fast float 1.000000e+00, %1266
  %1302 = fdiv fast float %1300, %1301
  br label %1303

; <label>:1303                                    ; preds = %1296, %1290
  %1304 = phi float [ %1302, %1296 ], [ %1263, %1290 ]
  %1305 = phi float [ %1298, %1296 ], [ 0.000000e+00, %1290 ]
  %1306 = fcmp fast une float %1267, 1.000000e+00
  br i1 %1306, label %1307, label %1314, !dx.controlflow.hints !99

; <label>:1307                                    ; preds = %1303
  %1308 = call float @dx.op.unary.f32(i32 23, float %1267)  ; Log(value)
  %1309 = fmul fast float %1308, 0x3FE62E4300000000
  %1310 = fmul fast float %1264, %1309
  %1311 = fsub fast float -0.000000e+00, %1310
  %1312 = fsub fast float 1.000000e+00, %1267
  %1313 = fdiv fast float %1311, %1312
  br label %1314

; <label>:1314                                    ; preds = %1307, %1303
  %1315 = phi float [ %1313, %1307 ], [ %1264, %1303 ]
  %1316 = phi float [ %1309, %1307 ], [ 0.000000e+00, %1303 ]
  %1317 = fcmp fast une float %1268, 1.000000e+00
  br i1 %1317, label %1318, label %1325, !dx.controlflow.hints !99

; <label>:1318                                    ; preds = %1314
  %1319 = call float @dx.op.unary.f32(i32 23, float %1268)  ; Log(value)
  %1320 = fmul fast float %1319, 0x3FE62E4300000000
  %1321 = fmul fast float %1265, %1320
  %1322 = fsub fast float -0.000000e+00, %1321
  %1323 = fsub fast float 1.000000e+00, %1268
  %1324 = fdiv fast float %1322, %1323
  br label %1325

; <label>:1325                                    ; preds = %1318, %1314
  %1326 = phi float [ %1324, %1318 ], [ %1265, %1314 ]
  %1327 = phi float [ %1320, %1318 ], [ 0.000000e+00, %1314 ]
  %1328 = fmul fast float %1291, %1275
  %1329 = fmul fast float %1292, %1275
  %1330 = fmul fast float %1293, %1275
  %1331 = fmul fast float %1294, %1275
  %1332 = fmul fast float %1304, %1273
  %1333 = fmul fast float %1315, %1273
  %1334 = fmul fast float %1326, %1273
  %1335 = fmul fast float %1305, %1273
  %1336 = fmul fast float %1316, %1273
  %1337 = fmul fast float %1327, %1273
  %1338 = fadd fast float %1332, %1328
  %1339 = fadd fast float %1333, %1329
  %1340 = fadd fast float %1334, %1330
  %1341 = fadd fast float %1335, %1331
  %1342 = fadd fast float %1336, %1331
  %1343 = fadd fast float %1337, %1331
  %1344 = fcmp fast une float %1341, 0.000000e+00
  br i1 %1344, label %1345, label %1352, !dx.controlflow.hints !100

; <label>:1345                                    ; preds = %1325
  %1346 = fmul fast float %1341, 0x3FF7154760000000
  %1347 = call float @dx.op.unary.f32(i32 21, float %1346)  ; Exp(value)
  %1348 = fsub fast float 1.000000e+00, %1347
  %1349 = fmul fast float %1338, %1348
  %1350 = fsub fast float -0.000000e+00, %1349
  %1351 = fdiv fast float %1350, %1341
  br label %1352

; <label>:1352                                    ; preds = %1345, %1325
  %1353 = phi float [ %1347, %1345 ], [ 1.000000e+00, %1325 ]
  %1354 = phi float [ %1351, %1345 ], [ %1338, %1325 ]
  %1355 = fcmp fast une float %1342, 0.000000e+00
  br i1 %1355, label %1356, label %1363, !dx.controlflow.hints !100

; <label>:1356                                    ; preds = %1352
  %1357 = fmul fast float %1342, 0x3FF7154760000000
  %1358 = call float @dx.op.unary.f32(i32 21, float %1357)  ; Exp(value)
  %1359 = fsub fast float 1.000000e+00, %1358
  %1360 = fmul fast float %1339, %1359
  %1361 = fsub fast float -0.000000e+00, %1360
  %1362 = fdiv fast float %1361, %1342
  br label %1363

; <label>:1363                                    ; preds = %1356, %1352
  %1364 = phi float [ %1358, %1356 ], [ 1.000000e+00, %1352 ]
  %1365 = phi float [ %1362, %1356 ], [ %1339, %1352 ]
  %1366 = fcmp fast une float %1343, 0.000000e+00
  br i1 %1366, label %1367, label %1374, !dx.controlflow.hints !100

; <label>:1367                                    ; preds = %1363
  %1368 = fmul fast float %1343, 0x3FF7154760000000
  %1369 = call float @dx.op.unary.f32(i32 21, float %1368)  ; Exp(value)
  %1370 = fsub fast float 1.000000e+00, %1369
  %1371 = fmul fast float %1340, %1370
  %1372 = fsub fast float -0.000000e+00, %1371
  %1373 = fdiv fast float %1372, %1343
  br label %1374

; <label>:1374                                    ; preds = %1367, %1363
  %1375 = phi float [ %1369, %1367 ], [ 1.000000e+00, %1363 ]
  %1376 = phi float [ %1373, %1367 ], [ %1340, %1363 ]
  %1377 = fcmp fast ogt float %1273, %1275
  br i1 %1377, label %1378, label %1398

; <label>:1378                                    ; preds = %1374
  %1379 = fsub fast float 1.000000e+00, %1275
  %1380 = fmul fast float %1291, %1379
  %1381 = fmul fast float %1292, %1379
  %1382 = fmul fast float %1293, %1379
  %1383 = fmul fast float %1294, %1379
  %1384 = fcmp fast une float %1383, 0.000000e+00
  br i1 %1384, label %1385, label %1436, !dx.controlflow.hints !101

; <label>:1385                                    ; preds = %1378
  %1386 = fmul fast float %1383, 0x3FF7154760000000
  %1387 = call float @dx.op.unary.f32(i32 21, float %1386)  ; Exp(value)
  %1388 = fsub fast float 1.000000e+00, %1387
  %1389 = fmul fast float %1380, %1388
  %1390 = fsub fast float -0.000000e+00, %1389
  %1391 = fmul fast float %1381, %1388
  %1392 = fsub fast float -0.000000e+00, %1391
  %1393 = fmul fast float %1382, %1388
  %1394 = fsub fast float -0.000000e+00, %1393
  %1395 = fdiv fast float %1390, %1383
  %1396 = fdiv fast float %1392, %1383
  %1397 = fdiv fast float %1394, %1383
  br label %1436

; <label>:1398                                    ; preds = %1374
  %1399 = fsub fast float 1.000000e+00, %1273
  %1400 = fmul fast float %1304, %1399
  %1401 = fmul fast float %1315, %1399
  %1402 = fmul fast float %1326, %1399
  %1403 = fmul fast float %1305, %1399
  %1404 = fmul fast float %1316, %1399
  %1405 = fmul fast float %1327, %1399
  %1406 = fcmp fast une float %1403, 0.000000e+00
  br i1 %1406, label %1407, label %1414, !dx.controlflow.hints !100

; <label>:1407                                    ; preds = %1398
  %1408 = fmul fast float %1403, 0x3FF7154760000000
  %1409 = call float @dx.op.unary.f32(i32 21, float %1408)  ; Exp(value)
  %1410 = fsub fast float 1.000000e+00, %1409
  %1411 = fmul fast float %1400, %1410
  %1412 = fsub fast float -0.000000e+00, %1411
  %1413 = fdiv fast float %1412, %1403
  br label %1414

; <label>:1414                                    ; preds = %1407, %1398
  %1415 = phi float [ %1413, %1407 ], [ %1400, %1398 ]
  %1416 = phi float [ %1409, %1407 ], [ 1.000000e+00, %1398 ]
  %1417 = fcmp fast une float %1404, 0.000000e+00
  br i1 %1417, label %1418, label %1425, !dx.controlflow.hints !100

; <label>:1418                                    ; preds = %1414
  %1419 = fmul fast float %1404, 0x3FF7154760000000
  %1420 = call float @dx.op.unary.f32(i32 21, float %1419)  ; Exp(value)
  %1421 = fsub fast float 1.000000e+00, %1420
  %1422 = fmul fast float %1401, %1421
  %1423 = fsub fast float -0.000000e+00, %1422
  %1424 = fdiv fast float %1423, %1404
  br label %1425

; <label>:1425                                    ; preds = %1418, %1414
  %1426 = phi float [ %1424, %1418 ], [ %1401, %1414 ]
  %1427 = phi float [ %1420, %1418 ], [ 1.000000e+00, %1414 ]
  %1428 = fcmp fast une float %1405, 0.000000e+00
  br i1 %1428, label %1429, label %1436, !dx.controlflow.hints !100

; <label>:1429                                    ; preds = %1425
  %1430 = fmul fast float %1405, 0x3FF7154760000000
  %1431 = call float @dx.op.unary.f32(i32 21, float %1430)  ; Exp(value)
  %1432 = fsub fast float 1.000000e+00, %1431
  %1433 = fmul fast float %1402, %1432
  %1434 = fsub fast float -0.000000e+00, %1433
  %1435 = fdiv fast float %1434, %1405
  br label %1436

; <label>:1436                                    ; preds = %1429, %1425, %1385, %1378
  %1437 = phi float [ %1435, %1429 ], [ %1397, %1385 ], [ %1382, %1378 ], [ %1402, %1425 ]
  %1438 = phi float [ %1426, %1429 ], [ %1396, %1385 ], [ %1381, %1378 ], [ %1426, %1425 ]
  %1439 = phi float [ %1415, %1429 ], [ %1395, %1385 ], [ %1380, %1378 ], [ %1415, %1425 ]
  %1440 = phi float [ %1431, %1429 ], [ %1387, %1385 ], [ 1.000000e+00, %1378 ], [ 1.000000e+00, %1425 ]
  %1441 = phi float [ %1427, %1429 ], [ %1387, %1385 ], [ 1.000000e+00, %1378 ], [ %1427, %1425 ]
  %1442 = phi float [ %1416, %1429 ], [ %1387, %1385 ], [ 1.000000e+00, %1378 ], [ %1416, %1425 ]
  %1443 = fmul fast float %1442, %1354
  %1444 = fmul fast float %1441, %1365
  %1445 = fmul fast float %1440, %1376
  %1446 = fadd fast float %1443, %1439
  %1447 = fadd fast float %1444, %1438
  %1448 = fadd fast float %1445, %1437
  %1449 = fmul fast float %1442, %1353
  %1450 = fmul fast float %1441, %1364
  %1451 = fmul fast float %1440, %1375
  br label %1452

; <label>:1452                                    ; preds = %1436, %1247
  %1453 = phi float [ %1451, %1436 ], [ %1253, %1247 ]
  %1454 = phi float [ %1450, %1436 ], [ %1252, %1247 ]
  %1455 = phi float [ %1449, %1436 ], [ %1251, %1247 ]
  %1456 = phi float [ %1448, %1436 ], [ %1250, %1247 ]
  %1457 = phi float [ %1447, %1436 ], [ %1249, %1247 ]
  %1458 = phi float [ %1446, %1436 ], [ %1248, %1247 ]
  %1459 = fmul fast float %1458, %521
  %1460 = fmul fast float %1457, %521
  %1461 = fmul fast float %1456, %521
  %1462 = fmul fast float %1455, %695
  %1463 = call float @dx.op.dot3.f32(i32 55, float %1455, float %1454, float %1453, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1464 = call float @dx.op.dot3.f32(i32 55, float %1459, float %1460, float %1461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1465 = select i1 %107, float %1463, float %1455
  %1466 = select i1 %107, float %1463, float %1454
  %1467 = select i1 %107, float 1.000000e+00, float %1453
  %1468 = select i1 %107, float %1464, float %1459
  %1469 = select i1 %107, float 0.000000e+00, float %1460
  %1470 = select i1 %107, float 0.000000e+00, float %1461
  %1471 = fmul fast float %1465, %689
  %1472 = fmul fast float %1466, %690
  %1473 = fmul fast float %1467, %691
  %1474 = fadd fast float %1471, %1468
  %1475 = fadd fast float %1472, %1469
  %1476 = fadd fast float %1470, %1473
  %1477 = fmul fast float %1465, %692
  %1478 = fmul fast float %1466, %693
  %1479 = fmul fast float %1467, %694
  %1480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1481 = extractvalue %dx.types.CBufRet.i32 %1480, 0
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1850, label %1483, !dx.controlflow.hints !102

; <label>:1483                                    ; preds = %1452
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 2
  %1486 = extractvalue %dx.types.CBufRet.f32 %1484, 3
  %1487 = fmul fast float %1485, %37
  %1488 = fmul fast float %1486, %38
  %1489 = fmul fast float %1487, 2.000000e+00
  %1490 = fmul fast float %1488, 2.000000e+00
  %1491 = fsub fast float 1.000000e+00, %1489
  %1492 = fsub fast float 1.000000e+00, %1490
  %1493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1494 = extractvalue %dx.types.CBufRet.f32 %1493, 0
  %1495 = extractvalue %dx.types.CBufRet.f32 %1493, 1
  %1496 = extractvalue %dx.types.CBufRet.f32 %1493, 2
  %1497 = fmul fast float %1491, %1494
  %1498 = fmul fast float %1491, %1495
  %1499 = fmul fast float %1491, %1496
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 0
  %1502 = extractvalue %dx.types.CBufRet.f32 %1500, 1
  %1503 = extractvalue %dx.types.CBufRet.f32 %1500, 2
  %1504 = fmul fast float %1492, %1501
  %1505 = fmul fast float %1492, %1502
  %1506 = fmul fast float %1492, %1503
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.CBufRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.CBufRet.f32 %1507, 2
  %1511 = fadd fast float %1504, %1508
  %1512 = fadd fast float %1511, %1497
  %1513 = fadd fast float %1505, %1509
  %1514 = fadd fast float %1513, %1498
  %1515 = fadd fast float %1506, %1510
  %1516 = fadd fast float %1515, %1499
  %1517 = fmul fast float %1512, %688
  %1518 = fmul fast float %1514, %688
  %1519 = fmul fast float %1516, %688
  %1520 = fmul fast float %1517, %1517
  %1521 = fmul fast float %1518, %1518
  %1522 = fadd fast float %1520, %1521
  %1523 = fmul fast float %1519, %1519
  %1524 = fadd fast float %1522, %1523
  %1525 = call float @dx.op.unary.f32(i32 24, float %1524)  ; Sqrt(value)
  %1526 = extractvalue %dx.types.CBufRet.f32 %529, 0
  %1527 = fsub fast float %1525, %1526
  %1528 = extractvalue %dx.types.CBufRet.f32 %529, 2
  %1529 = fmul fast float %1527, %1528
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  %1531 = fadd fast float %1530, -5.000000e-01
  %1532 = fmul fast float %1531, 2.000000e+00
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 2
  %1535 = call float @dx.op.binary.f32(i32 36, float %1534, float %1532)  ; FMin(a,b)
  %1536 = fsub fast float -0.000000e+00, %1534
  %1537 = fcmp fast ogt float %1535, %1536
  br i1 %1537, label %1538, label %1850, !dx.controlflow.hints !103

; <label>:1538                                    ; preds = %1483
  %1539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.f32 %1539, 3
  %1541 = fcmp fast ogt float %1540, 0.000000e+00
  br i1 %1541, label %1542, label %1617, !dx.controlflow.hints !104

; <label>:1542                                    ; preds = %1538
  %1543 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %12, i32 0)  ; GetDimensions(handle,mipLevel)
  %1544 = extractvalue %dx.types.Dimensions %1543, 0
  %1545 = sitofp i32 %1544 to float
  %1546 = extractvalue %dx.types.Dimensions %1543, 1
  %1547 = sitofp i32 %1546 to float
  %1548 = fmul fast float %1487, %1545
  %1549 = fmul fast float %1488, %1547
  %1550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1551 = extractvalue %dx.types.CBufRet.f32 %1550, 1
  %1552 = fsub fast float -0.000000e+00, %1551
  %1553 = fptoui float %1552 to i32
  %1554 = fptoui float %1548 to i32
  %1555 = fptoui float %1549 to i32
  %1556 = and i32 %1553, 31
  %1557 = lshr i32 %1554, %1556
  %1558 = lshr i32 %1555, %1556
  %1559 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %12, i32 %1553, i32 %1557, i32 %1558, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1560 = extractvalue %dx.types.ResRet.f32 %1559, 0
  %1561 = fcmp fast olt float %1560, -1.000000e+00
  %1562 = fcmp fast ogt float %1560, -1.000000e+00
  %1563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1563, 1
  %1565 = select i1 %1562, float %1564, float 1.000000e+00
  %1566 = fadd fast float %1560, 1.000000e+00
  %1567 = fmul fast float %1565, %1566
  %1568 = call float @dx.op.unary.f32(i32 6, float %1567)  ; FAbs(value)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1563, 3
  %1570 = fcmp fast oge float %1568, %1569
  %1571 = select i1 %1570, float 0x4197782600000000, float %1568
  %1572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %1573 = extractvalue %dx.types.CBufRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.CBufRet.f32 %1572, 1
  %1575 = extractvalue %dx.types.CBufRet.f32 %1572, 2
  %1576 = select i1 %1561, float %1573, float %1494
  %1577 = select i1 %1561, float %1574, float %1495
  %1578 = select i1 %1561, float %1575, float %1496
  %1579 = fmul fast float %1576, %1491
  %1580 = fmul fast float %1577, %1491
  %1581 = fmul fast float %1578, %1491
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.CBufRet.f32 %1582, 1
  %1585 = extractvalue %dx.types.CBufRet.f32 %1582, 2
  %1586 = select i1 %1561, float %1583, float %1501
  %1587 = select i1 %1561, float %1584, float %1502
  %1588 = select i1 %1561, float %1585, float %1503
  %1589 = fmul fast float %1586, %1492
  %1590 = fmul fast float %1587, %1492
  %1591 = fmul fast float %1588, %1492
  %1592 = fadd fast float %1589, %1579
  %1593 = fadd fast float %1590, %1580
  %1594 = fadd fast float %1591, %1581
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 0
  %1597 = extractvalue %dx.types.CBufRet.f32 %1595, 1
  %1598 = extractvalue %dx.types.CBufRet.f32 %1595, 2
  %1599 = select i1 %1561, float %1596, float %1508
  %1600 = select i1 %1561, float %1597, float %1509
  %1601 = select i1 %1561, float %1598, float %1510
  %1602 = fadd fast float %1592, %1599
  %1603 = fadd fast float %1593, %1600
  %1604 = fadd fast float %1594, %1601
  %1605 = fmul fast float %1602, %1571
  %1606 = fmul fast float %1603, %1571
  %1607 = fmul fast float %1604, %1571
  %1608 = fmul fast float %1605, %1605
  %1609 = fmul fast float %1606, %1606
  %1610 = fadd fast float %1608, %1609
  %1611 = fmul fast float %1607, %1607
  %1612 = fadd fast float %1610, %1611
  %1613 = call float @dx.op.unary.f32(i32 24, float %1612)  ; Sqrt(value)
  %1614 = fsub fast float %1613, %1526
  %1615 = fmul fast float %1614, %1528
  %1616 = call float @dx.op.unary.f32(i32 7, float %1615)  ; Saturate(value)
  br label %1617

; <label>:1617                                    ; preds = %1542, %1538
  %1618 = phi float [ %1616, %1542 ], [ 1.000000e+00, %1538 ]
  %1619 = fmul fast float %1535, 5.000000e-01
  %1620 = fadd fast float %1619, 5.000000e-01
  %1621 = call float @dx.op.unary.f32(i32 22, float %1620)  ; Frc(value)
  %1622 = call float @dx.op.unary.f32(i32 27, float %1621)  ; Round_ni(value)
  %1623 = call float @dx.op.unary.f32(i32 22, float %1621)  ; Frc(value)
  %1624 = fmul fast float %1623, 2.000000e+00
  %1625 = fadd fast float %1624, -1.000000e+00
  %1626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %18, float %1487, float %1488, float %1622, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1627 = extractvalue %dx.types.ResRet.f32 %1626, 0
  %1628 = extractvalue %dx.types.ResRet.f32 %1626, 1
  %1629 = extractvalue %dx.types.ResRet.f32 %1626, 2
  %1630 = extractvalue %dx.types.ResRet.f32 %1626, 3
  %1631 = fadd fast float %1627, -5.000000e-01
  %1632 = fadd fast float %1629, -5.000000e-01
  %1633 = fmul fast float %1631, 0xBFD5555560000000
  %1634 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %1632, float %1633)  ; FMad(a,b,c)
  %1635 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %1628, float 0.000000e+00)  ; FMad(a,b,c)
  %1636 = fadd fast float %1635, %1630
  %1637 = fmul fast float %1631, -7.500000e-01
  %1638 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %1632, float %1637)  ; FMad(a,b,c)
  %1639 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %1628, float 0.000000e+00)  ; FMad(a,b,c)
  %1640 = fadd fast float %1639, %1630
  %1641 = call float @dx.op.binary.f32(i32 35, float %1634, float -1.000000e+00)  ; FMax(a,b)
  %1642 = call float @dx.op.binary.f32(i32 35, float %1636, float -1.000000e+00)  ; FMax(a,b)
  %1643 = call float @dx.op.binary.f32(i32 35, float %1638, float -1.000000e+00)  ; FMax(a,b)
  %1644 = call float @dx.op.binary.f32(i32 35, float %1640, float -1.000000e+00)  ; FMax(a,b)
  %1645 = call float @dx.op.binary.f32(i32 36, float %1641, float 1.000000e+00)  ; FMin(a,b)
  %1646 = call float @dx.op.binary.f32(i32 36, float %1642, float 1.000000e+00)  ; FMin(a,b)
  %1647 = call float @dx.op.binary.f32(i32 36, float %1643, float 1.000000e+00)  ; FMin(a,b)
  %1648 = call float @dx.op.binary.f32(i32 36, float %1644, float 1.000000e+00)  ; FMin(a,b)
  %1649 = fcmp fast olt float %1645, 0x3FEFFF8020000000
  br i1 %1649, label %1650, label %1765, !dx.controlflow.hints !105

; <label>:1650                                    ; preds = %1617
  %1651 = extractvalue %dx.types.CBufRet.f32 %1533, 3
  %1652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %1653 = extractvalue %dx.types.CBufRet.f32 %1652, 0
  %1654 = extractvalue %dx.types.CBufRet.f32 %1652, 1
  %1655 = extractvalue %dx.types.CBufRet.f32 %1652, 2
  %1656 = extractvalue %dx.types.CBufRet.f32 %1652, 3
  %1657 = fsub fast float %1653, %1645
  %1658 = fsub fast float %1654, %1646
  %1659 = fsub fast float %1655, %1647
  %1660 = fsub fast float %1656, %1648
  %1661 = fmul fast float %1657, %1651
  %1662 = fmul fast float %1658, %1651
  %1663 = fmul fast float %1659, %1651
  %1664 = fmul fast float %1660, %1651
  %1665 = fadd fast float %1661, %1645
  %1666 = fadd fast float %1662, %1646
  %1667 = fsub fast float -0.000000e+00, %1666
  %1668 = fadd fast float %1663, %1647
  %1669 = fadd fast float %1664, %1648
  %1670 = fmul fast float %1665, %1665
  %1671 = fsub fast float %1666, %1670
  %1672 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %1671)  ; FMax(a,b)
  %1673 = fdiv fast float 1.000000e+00, %1672
  %1674 = fmul fast float %1666, %1665
  %1675 = fsub fast float %1668, %1674
  %1676 = fsub fast float %1625, %1665
  %1677 = fmul fast float %1625, %1625
  %1678 = fsub fast float %1677, %1666
  %1679 = fmul fast float %1676, %1673
  %1680 = fmul fast float %1679, %1675
  %1681 = fsub fast float %1678, %1680
  %1682 = fmul fast float %1666, %1666
  %1683 = fsub fast float %1669, %1682
  %1684 = fmul fast float %1675, %1675
  %1685 = fmul fast float %1684, %1673
  %1686 = fsub fast float %1683, %1685
  %1687 = fdiv fast float %1681, %1686
  %1688 = fmul fast float %1675, %1687
  %1689 = fsub fast float %1676, %1688
  %1690 = fmul fast float %1689, %1673
  %1691 = fmul fast float %1690, %1665
  %1692 = fsub fast float 1.000000e+00, %1691
  %1693 = fmul fast float %1666, %1687
  %1694 = fsub fast float %1692, %1693
  %1695 = fmul fast float %1690, %1690
  %1696 = fmul fast float %1687, 4.000000e+00
  %1697 = fmul fast float %1696, %1694
  %1698 = fsub fast float %1695, %1697
  %1699 = call float @dx.op.unary.f32(i32 24, float %1698)  ; Sqrt(value)
  %1700 = fcmp fast oge float %1690, 0.000000e+00
  %1701 = fsub fast float -0.000000e+00, %1699
  %1702 = select i1 %1700, float %1701, float %1699
  %1703 = fsub fast float %1702, %1690
  %1704 = fdiv fast float %1703, %1687
  %1705 = fdiv fast float %1694, %1703
  %1706 = fmul fast float %1704, 5.000000e-01
  %1707 = fmul fast float %1705, 2.000000e+00
  %1708 = select i1 %1700, float %1706, float %1707
  %1709 = select i1 %1700, float %1707, float %1706
  %1710 = call float @dx.op.binary.f32(i32 35, float %1708, float %1709)  ; FMax(a,b)
  %1711 = call float @dx.op.binary.f32(i32 36, float %1708, float %1709)  ; FMin(a,b)
  %1712 = fcmp fast ogt float %1625, %1711
  br i1 %1712, label %1713, label %1723

; <label>:1713                                    ; preds = %1650
  %1714 = fsub fast float %1625, %1711
  %1715 = fsub fast float %1710, %1711
  %1716 = fmul fast float %1714, %1715
  %1717 = fmul fast float %1710, %1625
  %1718 = fadd fast float %1710, %1625
  %1719 = fmul fast float %1718, %1665
  %1720 = fadd fast float %1717, %1666
  %1721 = fsub fast float %1720, %1719
  %1722 = fdiv fast float %1721, %1716
  br label %1723

; <label>:1723                                    ; preds = %1713, %1650
  %1724 = phi float [ %1722, %1713 ], [ 0.000000e+00, %1650 ]
  %1725 = fcmp fast ogt float %1625, %1710
  %1726 = fsub fast float %1625, %1710
  br i1 %1725, label %1727, label %1737

; <label>:1727                                    ; preds = %1723
  %1728 = fsub fast float %1710, %1711
  %1729 = fmul fast float %1728, %1726
  %1730 = fmul fast float %1711, %1625
  %1731 = fadd fast float %1711, %1625
  %1732 = fmul fast float %1731, %1665
  %1733 = fsub fast float %1667, %1730
  %1734 = fadd fast float %1733, %1732
  %1735 = fdiv fast float %1734, %1729
  %1736 = fadd fast float %1735, %1724
  br label %1737

; <label>:1737                                    ; preds = %1727, %1723
  %1738 = phi float [ %1736, %1727 ], [ %1724, %1723 ]
  %1739 = fsub fast float %1625, %1711
  %1740 = fmul fast float %1739, %1726
  %1741 = fmul fast float %1711, %1710
  %1742 = fadd fast float %1711, %1710
  %1743 = fmul fast float %1742, %1665
  %1744 = fadd fast float %1741, %1666
  %1745 = fsub fast float %1744, %1743
  %1746 = fdiv fast float %1745, %1740
  %1747 = call float @dx.op.unary.f32(i32 7, float %1738)  ; Saturate(value)
  %1748 = fcmp fast oeq float %530, 0.000000e+00
  %1749 = extractvalue %dx.types.CBufRet.f32 %1533, 0
  %1750 = fcmp fast oeq float %1749, 0.000000e+00
  %1751 = or i1 %1748, %1750
  %1752 = fmul fast float %1749, 2.000000e+00
  %1753 = fadd fast float %1534, %1535
  %1754 = fdiv fast float %1753, %1752
  %1755 = call float @dx.op.unary.f32(i32 7, float %1754)  ; Saturate(value)
  %1756 = fmul fast float %1755, 2.000000e+00
  %1757 = fsub fast float 3.000000e+00, %1756
  %1758 = fmul fast float %1755, %1755
  %1759 = fmul fast float %1758, %1757
  %1760 = select i1 %1751, float 1.000000e+00, float %1759
  %1761 = fmul fast float %1746, %530
  %1762 = fadd fast float %1747, %1761
  %1763 = call float @dx.op.unary.f32(i32 7, float %1762)  ; Saturate(value)
  %1764 = fmul fast float %1760, %1763
  br label %1765

; <label>:1765                                    ; preds = %1737, %1617
  %1766 = phi float [ %1764, %1737 ], [ 0.000000e+00, %1617 ]
  %1767 = fsub fast float 1.000000e+00, %1766
  %1768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %18, float %1487, float %1488, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1769 = extractvalue %dx.types.ResRet.f32 %1768, 0
  %1770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.i32 %1770, 2
  %1772 = icmp eq i32 %1771, 0
  br i1 %1772, label %1778, label %1773

; <label>:1773                                    ; preds = %1765
  %1774 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1775 = fadd fast float %1769, -1.000000e+00
  %1776 = fmul fast float %1774, %1775
  %1777 = fadd fast float %1776, 1.000000e+00
  br label %1778

; <label>:1778                                    ; preds = %1773, %1765
  %1779 = phi float [ %1777, %1773 ], [ %1767, %1765 ]
  br i1 %1541, label %1780, label %1798

; <label>:1780                                    ; preds = %1778
  %1781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %1782 = extractvalue %dx.types.CBufRet.f32 %1781, 1
  %1783 = fsub fast float %1618, %1782
  %1784 = call float @dx.op.unary.f32(i32 7, float %1783)  ; Saturate(value)
  %1785 = fsub fast float %1618, %1540
  %1786 = call float @dx.op.unary.f32(i32 7, float %1785)  ; Saturate(value)
  %1787 = fsub fast float %1784, %1786
  %1788 = fsub fast float %1620, %1786
  %1789 = fdiv fast float %1788, %1787
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1791 = fmul fast float %1790, 2.000000e+00
  %1792 = fsub fast float 3.000000e+00, %1791
  %1793 = fsub fast float %1769, %1779
  %1794 = fmul fast float %1790, %1790
  %1795 = fmul fast float %1794, %1793
  %1796 = fmul fast float %1795, %1792
  %1797 = fadd fast float %1796, %1779
  br label %1798

; <label>:1798                                    ; preds = %1780, %1778
  %1799 = phi float [ %1797, %1780 ], [ %1779, %1778 ]
  %1800 = call float @dx.op.binary.f32(i32 35, float %1769, float %1799)  ; FMax(a,b)
  %1801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %1802 = extractvalue %dx.types.CBufRet.i32 %1801, 2
  %1803 = and i32 %1802, 1
  %1804 = icmp eq i32 %1803, 0
  %1805 = fcmp fast une float %1800, 1.000000e+00
  %1806 = and i1 %1805, %1804
  br i1 %1806, label %1807, label %1826

; <label>:1807                                    ; preds = %1798
  %1808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %18, float %1487, float %1488, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1809 = extractvalue %dx.types.ResRet.f32 %1808, 0
  %1810 = extractvalue %dx.types.ResRet.f32 %1808, 1
  %1811 = extractvalue %dx.types.ResRet.f32 %1808, 2
  %1812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1813 = extractvalue %dx.types.CBufRet.f32 %1812, 1
  %1814 = fmul fast float %1813, %1809
  %1815 = fmul fast float %1813, %1810
  %1816 = fmul fast float %1813, %1811
  %1817 = fcmp fast ogt float %1769, 0x3FEFFF2E40000000
  %1818 = fsub fast float 1.000000e+00, %1800
  %1819 = fsub fast float 1.000000e+00, %1769
  %1820 = fdiv fast float %1818, %1819
  %1821 = call float @dx.op.unary.f32(i32 7, float %1820)  ; Saturate(value)
  %1822 = select i1 %1817, float 0.000000e+00, float %1821
  %1823 = fmul fast float %1814, %1822
  %1824 = fmul fast float %1815, %1822
  %1825 = fmul fast float %1816, %1822
  br label %1826

; <label>:1826                                    ; preds = %1807, %1798
  %1827 = phi float [ 0.000000e+00, %1798 ], [ %1823, %1807 ]
  %1828 = phi float [ 0.000000e+00, %1798 ], [ %1824, %1807 ]
  %1829 = phi float [ 0.000000e+00, %1798 ], [ %1825, %1807 ]
  %1830 = fmul fast float %1827, %521
  %1831 = fmul fast float %1828, %521
  %1832 = fmul fast float %1829, %521
  %1833 = fmul fast float %1800, %1462
  %1834 = call float @dx.op.dot3.f32(i32 55, float %1800, float %1800, float %1800, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1835 = call float @dx.op.dot3.f32(i32 55, float %1830, float %1831, float %1832, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1836 = select i1 %107, float %1834, float %1800
  %1837 = select i1 %107, float 1.000000e+00, float %1800
  %1838 = select i1 %107, float %1835, float %1830
  %1839 = select i1 %107, float 0.000000e+00, float %1831
  %1840 = select i1 %107, float 0.000000e+00, float %1832
  %1841 = fmul fast float %1836, %1474
  %1842 = fmul fast float %1836, %1475
  %1843 = fmul fast float %1837, %1476
  %1844 = fadd fast float %1841, %1838
  %1845 = fadd fast float %1842, %1839
  %1846 = fadd fast float %1840, %1843
  %1847 = fmul fast float %1836, %1477
  %1848 = fmul fast float %1836, %1478
  %1849 = fmul fast float %1837, %1479
  br label %1850

; <label>:1850                                    ; preds = %1826, %1483, %1452, %684
  %1851 = phi float [ %689, %684 ], [ %1474, %1452 ], [ %1844, %1826 ], [ %1474, %1483 ]
  %1852 = phi float [ %690, %684 ], [ %1475, %1452 ], [ %1845, %1826 ], [ %1475, %1483 ]
  %1853 = phi float [ %691, %684 ], [ %1476, %1452 ], [ %1846, %1826 ], [ %1476, %1483 ]
  %1854 = phi float [ %692, %684 ], [ %1477, %1452 ], [ %1847, %1826 ], [ %1477, %1483 ]
  %1855 = phi float [ %693, %684 ], [ %1478, %1452 ], [ %1848, %1826 ], [ %1478, %1483 ]
  %1856 = phi float [ %694, %684 ], [ %1479, %1452 ], [ %1849, %1826 ], [ %1479, %1483 ]
  %1857 = phi float [ %695, %684 ], [ %1462, %1452 ], [ %1833, %1826 ], [ %1462, %1483 ]
  %1858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1859 = extractvalue %dx.types.CBufRet.f32 %1858, 2
  %1860 = extractvalue %dx.types.CBufRet.f32 %1858, 3
  %1861 = fmul fast float %1859, %37
  %1862 = fmul fast float %1860, %38
  %1863 = call float @dx.op.unary.f32(i32 7, float %1861)  ; Saturate(value)
  %1864 = call float @dx.op.unary.f32(i32 7, float %1862)  ; Saturate(value)
  %1865 = select i1 %541, i32 2, i32 0
  %1866 = or i32 %1865, 1
  %1867 = uitofp i32 %1866 to float
  %1868 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %18, float %1863, float %1864, float %1867, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1869 = extractvalue %dx.types.ResRet.f32 %1868, 0
  %1870 = extractvalue %dx.types.ResRet.f32 %1868, 1
  %1871 = extractvalue %dx.types.ResRet.f32 %1868, 2
  %1872 = extractvalue %dx.types.ResRet.f32 %1868, 3
  %1873 = add nuw nsw i32 %1865, 2
  %1874 = uitofp i32 %1873 to float
  %1875 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %18, float %1863, float %1864, float %1874, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.ResRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.ResRet.f32 %1875, 2
  %1879 = extractvalue %dx.types.ResRet.f32 %1875, 3
  %1880 = call float @dx.op.binary.f32(i32 35, float %1870, float %1871)  ; FMax(a,b)
  %1881 = call float @dx.op.binary.f32(i32 35, float %1869, float %1880)  ; FMax(a,b)
  %1882 = call float @dx.op.binary.f32(i32 35, float %1881, float %1872)  ; FMax(a,b)
  %1883 = call float @dx.op.binary.f32(i32 36, float %1877, float %1878)  ; FMin(a,b)
  %1884 = call float @dx.op.binary.f32(i32 36, float %1876, float %1883)  ; FMin(a,b)
  %1885 = call float @dx.op.binary.f32(i32 36, float %1884, float %1879)  ; FMin(a,b)
  %1886 = fmul fast float %1882, 2.550000e+02
  %1887 = fadd fast float %1886, 0x3F70101020000000
  %1888 = fptoui float %1887 to i32
  %1889 = fmul fast float %1885, 2.550000e+02
  %1890 = fadd fast float %1889, 0x3F70101020000000
  %1891 = fptoui float %1890 to i32
  %1892 = icmp ult i32 %1888, %1891
  br i1 %1892, label %1893, label %1945

; <label>:1893                                    ; preds = %1850
  %1894 = fcmp fast ogt float %29, 9.843750e-01
  %1895 = fadd fast float %688, -4.000000e+00
  %1896 = select i1 %1894, float -4.000000e+00, float %1895
  %1897 = call float @dx.op.binary.f32(i32 35, float %1896, float 0.000000e+00)  ; FMax(a,b)
  %1898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1899 = extractvalue %dx.types.CBufRet.f32 %1898, 0
  %1900 = fadd fast float %1899, %1897
  %1901 = extractvalue %dx.types.CBufRet.f32 %1898, 2
  %1902 = fmul fast float %1900, %1901
  %1903 = call float @dx.op.unary.f32(i32 23, float %1902)  ; Log(value)
  %1904 = extractvalue %dx.types.CBufRet.f32 %1898, 3
  %1905 = fmul fast float %1904, %1903
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 2
  %1908 = fmul fast float %1905, %1907
  %1909 = call float @dx.op.unary.f32(i32 7, float %1908)  ; Saturate(value)
  %1910 = uitofp i32 %1888 to float
  %1911 = uitofp i32 %1891 to float
  %1912 = fadd fast float %1910, 5.000000e-01
  %1913 = fadd fast float %1911, 5.000000e-01
  %1914 = fmul fast float %1907, %1912
  %1915 = fmul fast float %1907, %1913
  %1916 = fadd fast float %1914, 0x3F0FFB4800000000
  %1917 = fadd fast float %1915, 0xBF0FFB4800000000
  %1918 = call float @dx.op.binary.f32(i32 35, float %1909, float %1916)  ; FMax(a,b)
  %1919 = call float @dx.op.binary.f32(i32 36, float %1918, float %1917)  ; FMin(a,b)
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1920, 1
  %1922 = extractvalue %dx.types.CBufRet.f32 %1920, 2
  %1923 = extractvalue %dx.types.CBufRet.f32 %1920, 0
  %1924 = select i1 %541, float %1923, float 0.000000e+00
  %1925 = fmul fast float %1921, %1919
  %1926 = fadd fast float %1924, %1925
  %1927 = fadd fast float %1924, %1922
  %1928 = fsub fast float %1921, %1922
  %1929 = fadd fast float %1928, %1924
  %1930 = call float @dx.op.binary.f32(i32 35, float %1926, float %1927)  ; FMax(a,b)
  %1931 = call float @dx.op.binary.f32(i32 36, float %1930, float %1929)  ; FMin(a,b)
  %1932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %17, float %1863, float %1864, float %1931, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1933 = extractvalue %dx.types.ResRet.f32 %1932, 0
  %1934 = extractvalue %dx.types.ResRet.f32 %1932, 1
  %1935 = extractvalue %dx.types.ResRet.f32 %1932, 2
  %1936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %17, float %1863, float %1864, float %1931, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  %1938 = extractvalue %dx.types.ResRet.f32 %1936, 1
  %1939 = extractvalue %dx.types.ResRet.f32 %1936, 2
  %1940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1941 = extractvalue %dx.types.CBufRet.f32 %1940, 1
  %1942 = fmul fast float %1941, %1937
  %1943 = fmul fast float %1941, %1938
  %1944 = fmul fast float %1941, %1939
  br label %1945

; <label>:1945                                    ; preds = %1893, %1850
  %1946 = phi float [ %1933, %1893 ], [ 1.000000e+00, %1850 ]
  %1947 = phi float [ %1934, %1893 ], [ 1.000000e+00, %1850 ]
  %1948 = phi float [ %1935, %1893 ], [ 1.000000e+00, %1850 ]
  %1949 = phi float [ %1942, %1893 ], [ 0.000000e+00, %1850 ]
  %1950 = phi float [ %1943, %1893 ], [ 0.000000e+00, %1850 ]
  %1951 = phi float [ %1944, %1893 ], [ 0.000000e+00, %1850 ]
  %1952 = fmul fast float %1949, %521
  %1953 = fmul fast float %1950, %521
  %1954 = fmul fast float %1951, %521
  %1955 = fmul fast float %1946, %1857
  %1956 = call float @dx.op.dot3.f32(i32 55, float %1946, float %1947, float %1948, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1957 = call float @dx.op.dot3.f32(i32 55, float %1952, float %1953, float %1954, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1958 = select i1 %107, float %1956, float %1946
  %1959 = select i1 %107, float %1956, float %1947
  %1960 = select i1 %107, float 1.000000e+00, float %1948
  %1961 = select i1 %107, float %1957, float %1952
  %1962 = select i1 %107, float 0.000000e+00, float %1953
  %1963 = select i1 %107, float 0.000000e+00, float %1954
  %1964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %21, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1965 = extractvalue %dx.types.CBufRet.i32 %1964, 3
  %1966 = and i32 %1965, 3
  %1967 = icmp ne i32 %1966, 0
  %1968 = and i32 %1965, 4
  %1969 = icmp ne i32 %1968, 0
  %1970 = and i1 %1967, %1969
  %1971 = and i1 %107, %1970
  br i1 %1971, label %1972, label %1978

; <label>:1972                                    ; preds = %1945
  %1973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %1974 = extractvalue %dx.types.CBufRet.f32 %1973, 1
  %1975 = fadd fast float %1955, -1.000000e+00
  %1976 = fmul fast float %1974, %1975
  %1977 = fadd fast float %1976, 1.000000e+00
  br label %1978

; <label>:1978                                    ; preds = %1972, %1945
  %1979 = phi float [ %1977, %1972 ], [ %1955, %1945 ]
  %1980 = fadd fast float %1854, %1851
  %1981 = fmul fast float %1958, %1980
  %1982 = fadd fast float %1981, %1961
  %1983 = fadd fast float %1855, %1852
  %1984 = fmul fast float %1959, %1983
  %1985 = fadd fast float %1984, %1962
  %1986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1987 = extractvalue %dx.types.CBufRet.f32 %1986, 0
  br i1 %107, label %1988, label %2009

; <label>:1988                                    ; preds = %1978
  %1989 = fadd fast float %1982, %1985
  %1990 = fmul fast float %1987, %1989
  %1991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %1992 = extractvalue %dx.types.CBufRet.f32 %1991, 3
  %1993 = extractvalue %dx.types.CBufRet.f32 %525, 1
  %1994 = fsub fast float %528, %1993
  %1995 = extractvalue %dx.types.CBufRet.f32 %525, 2
  %1996 = fmul fast float %1994, %1995
  %1997 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %1998 = fsub fast float %1997, %1992
  %1999 = fmul fast float %1998, %1979
  %2000 = fadd fast float %1999, %1992
  %2001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %21, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2002 = extractvalue %dx.types.CBufRet.f32 %2001, 0
  %2003 = fsub fast float %2000, %2002
  %2004 = fmul fast float %2003, 1.000000e+01
  %2005 = call float @dx.op.unary.f32(i32 7, float %2004)  ; Saturate(value)
  %2006 = fmul fast float %2005, %521
  %2007 = fsub fast float %521, %2006
  %2008 = fmul fast float %2007, %2000
  br label %2021

; <label>:2009                                    ; preds = %1978
  %2010 = fadd fast float %1856, %1853
  %2011 = fmul fast float %1960, %2010
  %2012 = fadd fast float %2011, %1963
  %2013 = fmul fast float %1987, %1982
  %2014 = fmul fast float %1987, %1985
  %2015 = fmul fast float %1987, %2012
  %2016 = call float @dx.op.binary.f32(i32 35, float %2014, float %2015)  ; FMax(a,b)
  %2017 = call float @dx.op.binary.f32(i32 35, float %2013, float %2016)  ; FMax(a,b)
  %2018 = call float @dx.op.binary.f32(i32 35, float %2017, float %521)  ; FMax(a,b)
  %2019 = fcmp fast ugt float %2018, 0x3F10000000000000
  br i1 %2019, label %2021, label %2020

; <label>:2020                                    ; preds = %2009
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %2021

; <label>:2021                                    ; preds = %2020, %2009, %1988
  %2022 = phi float [ %1990, %1988 ], [ %2013, %2020 ], [ %2013, %2009 ]
  %2023 = phi float [ %2008, %1988 ], [ %2014, %2020 ], [ %2014, %2009 ]
  %2024 = phi float [ %2007, %1988 ], [ %2015, %2020 ], [ %2015, %2009 ]
  %2025 = phi float [ %2007, %1988 ], [ %521, %2020 ], [ %521, %2009 ]
  %2026 = fadd fast float %384, 0x3FE3C6EF40000000
  %2027 = call float @dx.op.unary.f32(i32 22, float %2026)  ; Frc(value)
  %2028 = call float @dx.op.unary.f32(i32 23, float %2022)  ; Log(value)
  %2029 = fadd fast float %2028, -7.000000e+00
  %2030 = call float @dx.op.unary.f32(i32 21, float %2029)  ; Exp(value)
  %2031 = fmul fast float %2027, 2.000000e+00
  %2032 = fadd fast float %2031, -1.000000e+00
  %2033 = fmul fast float %2030, %2032
  %2034 = fcmp fast ogt float %2022, 0.000000e+00
  %2035 = select i1 %2034, float %2033, float 0.000000e+00
  %2036 = fadd fast float %2035, %2022
  %2037 = fadd fast float %384, 0x3FF3C6EF40000000
  %2038 = call float @dx.op.unary.f32(i32 22, float %2037)  ; Frc(value)
  %2039 = call float @dx.op.unary.f32(i32 23, float %2023)  ; Log(value)
  %2040 = fadd fast float %2039, -7.000000e+00
  %2041 = call float @dx.op.unary.f32(i32 21, float %2040)  ; Exp(value)
  %2042 = fmul fast float %2038, 2.000000e+00
  %2043 = fadd fast float %2042, -1.000000e+00
  %2044 = fmul fast float %2041, %2043
  %2045 = fcmp fast ogt float %2023, 0.000000e+00
  %2046 = select i1 %2045, float %2044, float 0.000000e+00
  %2047 = fadd fast float %2046, %2023
  %2048 = fadd fast float %384, 0x3FFDAA66E0000000
  %2049 = call float @dx.op.unary.f32(i32 22, float %2048)  ; Frc(value)
  %2050 = call float @dx.op.unary.f32(i32 23, float %2024)  ; Log(value)
  %2051 = fadd fast float %2050, -6.000000e+00
  %2052 = call float @dx.op.unary.f32(i32 21, float %2051)  ; Exp(value)
  %2053 = fmul fast float %2049, 2.000000e+00
  %2054 = fadd fast float %2053, -1.000000e+00
  %2055 = fmul fast float %2052, %2054
  %2056 = fcmp fast ogt float %2024, 0.000000e+00
  %2057 = select i1 %2056, float %2055, float 0.000000e+00
  %2058 = fadd fast float %2057, %2024
  %2059 = select i1 %107, float %2023, float %2047
  %2060 = select i1 %107, float %2024, float %2058
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %2061 = call float @dx.op.binary.f32(i32 36, float %2036, float 3.225500e+04)  ; FMin(a,b)
  %2062 = call float @dx.op.binary.f32(i32 36, float %2059, float 3.225500e+04)  ; FMin(a,b)
  %2063 = call float @dx.op.binary.f32(i32 36, float %2060, float 3.225500e+04)  ; FMin(a,b)
  %2064 = call float @dx.op.binary.f32(i32 36, float %2025, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2061)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2062)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2063)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %2064)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %2025)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %2025)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %2025)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float %2025)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!34}
!dx.entryPoints = !{!35}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !26, !29}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !23, !24, !25}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 22, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!18 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !22}
!22 = !{i32 0, i32 14}
!23 = !{i32 14, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!24 = !{i32 15, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!25 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!26 = !{!27, !28}
!27 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!28 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!29 = !{!30, !31, !32, !33}
!30 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!31 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!32 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!33 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!34 = !{[22 x i32] [i32 20, i32 8, i32 255, i32 255, i32 255, i32 255, i32 255, i32 0, i32 0, i32 0, i32 255, i32 255, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0, i32 255, i32 0, i32 0, i32 0]}
!35 = !{void ()* @ps_main, !"ps_main", !36, !4, !52}
!36 = !{!37, !48, null}
!37 = !{!38, !41, !43, !45, !46, !47}
!38 = !{i32 0, !"SV_Position", i8 9, i8 3, !39, i8 4, i32 1, i8 4, i32 0, i8 0, !40}
!39 = !{i32 0}
!40 = !{i32 3, i32 15}
!41 = !{i32 1, !"COLOR", i8 9, i8 0, !39, i8 2, i32 1, i8 4, i32 1, i8 0, !42}
!42 = !{i32 3, i32 1}
!43 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !39, i8 2, i32 1, i8 4, i32 2, i8 0, !44}
!44 = !{i32 3, i32 3}
!45 = !{i32 3, !"ENTITY_IDS", i8 5, i8 0, !39, i8 1, i32 1, i8 2, i32 3, i8 0, !42}
!46 = !{i32 4, !"PACKED_TRI_DATA", i8 5, i8 0, !39, i8 1, i32 1, i8 4, i32 4, i8 0, !42}
!47 = !{i32 5, !"SV_SampleIndex", i8 5, i8 12, !39, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!48 = !{!49, !50}
!49 = !{i32 0, !"SV_Target", i8 9, i8 16, !39, i8 0, i32 1, i8 4, i32 0, i8 0, !40}
!50 = !{i32 1, !"SV_Target", i8 9, i8 16, !51, i8 0, i32 1, i8 4, i32 1, i8 0, !40}
!51 = !{i32 1}
!52 = !{i32 0, i64 24}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 1}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!60, !62, !64, !65, !67, !68, !69, !71, !72, !73}
!60 = distinct !{!60, !61, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!61 = distinct !{!61, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!62 = distinct !{!62, !63, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!63 = distinct !{!63, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!64 = distinct !{!64, !63, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!65 = distinct !{!65, !66, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!66 = distinct !{!66, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!67 = distinct !{!67, !66, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!68 = distinct !{!68, !66, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!69 = distinct !{!69, !70, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!70 = distinct !{!70, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!71 = distinct !{!71, !70, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!72 = distinct !{!72, !70, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!73 = distinct !{!73, !74, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!74 = distinct !{!74, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"\01?sort@@YAXAIAM00@Z: %c"}
!77 = distinct !{!77, !"\01?sort@@YAXAIAM00@Z"}
!78 = !{!79, !80, !60, !62, !64, !65, !67, !68, !69, !71, !72, !73}
!79 = distinct !{!79, !77, !"\01?sort@@YAXAIAM00@Z: %a"}
!80 = distinct !{!80, !77, !"\01?sort@@YAXAIAM00@Z: %b"}
!81 = !{!80}
!82 = !{!79, !76, !60, !62, !64, !65, !67, !68, !69, !71, !72, !73}
!83 = !{!79}
!84 = !{!80, !76, !60, !62, !64, !65, !67, !68, !69, !71, !72, !73}
!85 = !{!86}
!86 = distinct !{!86, !87, !"\01?sort@@YAXAIAM00@Z: %c"}
!87 = distinct !{!87, !"\01?sort@@YAXAIAM00@Z"}
!88 = !{!89, !90, !60, !62, !64, !65, !67, !68, !69, !71, !72, !73}
!89 = distinct !{!89, !87, !"\01?sort@@YAXAIAM00@Z: %a"}
!90 = distinct !{!90, !87, !"\01?sort@@YAXAIAM00@Z: %b"}
!91 = !{!90}
!92 = !{!89, !86, !60, !62, !64, !65, !67, !68, !69, !71, !72, !73}
!93 = !{!89}
!94 = !{!90, !86, !60, !62, !64, !65, !67, !68, !69, !71, !72, !73}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 2}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}

